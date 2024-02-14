-- chunkname: @/modules/game_transport/transport.lua

GameTransport = {}

function GameTransport:loadConfig()
	local func, error = loadfile("config.lua")

	if not func then
		g_logger.fatal(error)

		return false
	end

	func()

	local env = getfenv(0)

	env.cfg = {}

	setmetatable(env.cfg, {
		__index = env
	})
	setfenv(func, env.cfg)

	return true
end

function GameTransport:toggleMainTransportButtons()
	local panel = GameTransport.window.content.ship_panel.ship_content.button_panel

	for _, button in pairs(panel:getChildren()) do
		if not button.arrow then
			button:setOn(false)
		end
	end

	panel = GameTransport.window.content.mount_panel.mount_content.button_panel

	for _, button in pairs(panel:getChildren()) do
		button:setOn(false)
	end

	panel = GameTransport.window.content.wagon_panel.wagon_content.button_panel

	for _, button in pairs(panel:getChildren()) do
		button:setOn(false)
	end
end

function GameTransport:init()
	self:loadConfig()
	g_ui.importStyle("styles/attached_window.otui")
	g_ui.importStyle("styles/ship.otui")
	g_ui.importStyle("styles/mount.otui")
	g_ui.importStyle("styles/wagon.otui")
	g_ui.importStyle("styles/main.otui")
	connect(LocalPlayer, {
		onOutfitChange = GameTransport.onOutfitChange
	})
	connect(g_game, {
		onGameStart = GameTransport.onGameStart
	})

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.window = g_ui.createWidget("GameTransportWindow", HUDPanel)

	self.window:hide()

	self.attachedWindow = g_ui.createWidget("GameTransportAttachedWindow", HUDPanel)

	self.attachedWindow:setAttachedTo(self.window)

	self.attachedBondWindow = g_ui.createWidget("GameTransportBondAttachedWindow", HUDPanel)

	self.attachedBondWindow:setAttachedTo(self.window)

	self.cargo_popup_window = self.window:recursiveGetChildById("cargo_popup")

	g_keyboard.bindKeyDown("Y", self.toggle)
	connect(self.attachedWindow, {
		onVisibilityChange = GameTransport.toggleMainTransportButtons
	})
	connect(self.attachedBondWindow, {
		onVisibilityChange = GameTransport.onBondWindowVisibilityChange
	})
	ProtocolGame.registerExtendedOpcode(ExtendedIds.OutfitManagement, GameTransport.onOutfitManagementExtendedOpcode, "game_transport")

	if g_game.isOnline() then
		GameTransport.onGameStart()
		self:requestAttributes()
	end
end

function GameTransport:terminate()
	disconnect(self.attachedWindow, {
		onVisibilityChange = GameTransport.toggleMainTransportButtons
	})
	disconnect(self.attachedBondWindow, {
		onVisibilityChange = GameTransport.onBondWindowVisibilityChange
	})
	self.window:destroy()
	g_keyboard.unbindKeyDown("Y")
	disconnect(LocalPlayer, {
		onOutfitChange = GameTransport.onOutfitChange
	})
	disconnect(g_game, {
		onGameStart = GameTransport.onGameStart
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.OutfitManagement, "game_transport")

	GameTransport = nil
end

function GameTransport:hideAttachedWindow()
	self.attachedWindow:hide()
	self:toggleMainTransportButtons()
end

function GameTransport:attachedWindowIsVisible(subCategory)
	return self.attachedWindow:isVisible() and self.attachedWindow.subCategory == subCategory
end

function GameTransport:toggleAttachedWindow(mainCategory, subCategory, widget)
	if self.attachedBondWindow:isVisible() then
		self.attachedBondWindow:hide()
	end

	self:toggleMainTransportButtons()

	if self.attachedWindow:isVisible() and self.attachedWindow.subCategory == subCategory then
		self.attachedWindow:hide()
	else
		if signalcall(self.onCategoryChange, mainCategory, subCategory) then
			return
		end

		self.attachedWindow:show()
		self.attachedWindow:followParent()

		self.attachedWindow.category = mainCategory
		self.attachedWindow.subCategory = subCategory

		self:onAttachedWindowCategoryChange(mainCategory, subCategory)
		widget:setOn(true)
	end
end

function GameTransport.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameTransport.window:isVisible() then
		GameTransport.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameTransport.window:show()
		GameTransport.window:raise()
	end
end

function GameTransport:onAttachedWindowCategoryChange(category, subCategory)
	if signalcall(self.onCategoryChange, category, subCategory) then
		return
	end

	local text = subCategory:titleCase():gsub("_", " ")

	if text == "Cargo" then
		text = "Auxiliary"
	end

	self.attachedWindow.outfit_list:destroyChildren()
	self.attachedWindow:setTitle(text)
	self:requestOutfitList(category, subCategory)
end

function GameTransport:requestOutfitList(category, subCategory)
	self:sendOutfitManagementOpcode({
		action = "request_transport",
		category = category,
		subCategory = subCategory
	})
end

function GameTransport:requestAttributes()
	self:sendOutfitManagementOpcode({
		action = "request_attributes"
	})
end

function GameTransport:updateOutfitList(category, subCategory, partList)
	if self.attachedWindow.category ~= category or self.attachedWindow.subCategory ~= subCategory then
		return
	end

	local playerOutfit = g_game.getLocalPlayer():getOutfit()

	self.attachedWindow.outfit_list:destroyChildren()

	for _, outfit in pairs(partList) do
		outfit.category = ThingCategoryCreature

		if self.attachedWindow.category == "ship" or self.attachedWindow.category == "wagon" then
			for name in pairs(outfit) do
				outfit[name:gsub("Cosmetic", "")] = outfit[name]
			end
		end

		if outfit.shipBody then
			outfit.lookType = outfit.shipBody
		elseif outfit.mountBody then
			outfit.mount = outfit.mountBody
		elseif outfit.wagonBody then
			outfit.wagonActive = 1
			outfit.lookType = outfit.wagonBody
		end

		local styleName = "GameTransportAttachedWindowListButtonHolder"

		if self.attachedWindow.subCategory == "mount" then
			styleName = "GameTransportAttachedWindowListMountButtonHolder"
		end

		local outfitWidget = g_ui.createWidget(styleName, self.attachedWindow.outfit_list)
		local contentWidget = self.attachedWindow.subCategory == "mount" and outfitWidget.content or outfitWidget

		contentWidget.outfitId = outfit.id
		contentWidget.looktype = outfit.shipCargo

		contentWidget.outfit:setOutfit(outfit)

		if self.attachedWindow.subCategory == "mount" then
			local namePanel = outfitWidget.namePanel

			if namePanel then
				if outfit.mountName and string.len(outfit.mountName) > 0 then
					namePanel.nameLabel:setText(outfit.mountName)
					namePanel.nameLabel:setOn(true)
				else
					namePanel.nameLabel:setText("Unnamed")
					namePanel.nameLabel:setOn(false)
				end
			end

			local tierWidget = contentWidget.tierWidget

			if tierWidget then
				tierWidget.tierLabel:setText(outfit.mountTier)
			end

			local bondWidget = contentWidget.bondWidget

			if bondWidget then
				bondWidget.bondLabel:setText(outfit.mountBondLevel)
			end
		else
			local field = subCategoryToOutfitField[self.attachedWindow.subCategory]
			local cfg = field and outfit[field] and (ShipParts[outfit[field]] or MoaEquipment[outfit[field]] or WagonParts[outfit[field]])

			contentWidget.overlay_text:setText(cfg and cfg.name or "Unknown")
			contentWidget.overlay_text:setVisible(true)

			local textSize = contentWidget.overlay_text:getTextSize().width

			while textSize > 125 do
				contentWidget.overlay_text:setText(string.format("%s...", contentWidget.overlay_text:getText():sub(1, -5)))

				textSize = contentWidget.overlay_text:getTextSize().width
			end
		end

		if outfit.info then
			outfit.info.category = self.attachedWindow.category
			contentWidget.outfit.tooltipData = outfit.info
		end

		local field = cfg.subCategoryToOutfitField[self.attachedWindow.subCategory]

		contentWidget.outfit.outfitId = field and outfit[field] or nil

		if field then
			if outfit.selected ~= nil then
				contentWidget:setOn(outfit.selected)
			else
				local matching = false

				if type(field) == "table" then
					for _, f in pairs(field) do
						if outfit[f] == playerOutfit[f] and playerOutfit[f] ~= 0 then
							matching = true

							break
						end
					end

					if matching then
						contentWidget:setOn(true)
					else
						contentWidget:setOn(false)
					end
				elseif outfit[field] == playerOutfit[field] and playerOutfit[field] ~= 0 then
					contentWidget:setOn(true)
				else
					contentWidget:setOn(false)
				end
			end
		end
	end

	self:updateOutfitListText()
	self:updateOutfitListSelect()
	signalcall(self.onOutfitListUpdate, self.attachedWindow.category, self.attachedWindow.subCategory)
end

function GameTransport:selectTransport(widget)
	local cargoPanel = self.cargo_popup_window
	local category = self.attachedWindow.category
	local subCategory = self.attachedWindow.subCategory
	local outfitId = widget.outfitId
	local slotId

	if cargoPanel:isVisible() then
		local selected

		for _, child in ipairs(cargoPanel:getChildren()) do
			if child:isOn() then
				selected = child

				break
			end
		end

		if selected and selected.slotId > 1 then
			slotId = selected.slotId
		end
	end

	self:sendOutfitManagementOpcode({
		action = "select_transport",
		category = category,
		subCategory = subCategory,
		outfitId = outfitId,
		slotId = slotId
	})
end

function GameTransport:releaseMoa(widget)
	local mountId = widget.tooltipData.id

	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function yesCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil

		self:sendOutfitManagementOpcode({
			action = "release_moa",
			mountId = mountId
		})
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Release Moa"), "Are you sure you want to release this moa?\nYou will receive {2500, #FFA851} silver", {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, modules.game_interface.getRootPanel())
end

function GameTransport:changeMountName(name)
	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function yesCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil

		self:sendOutfitManagementOpcode({
			action = "change_moa_name",
			name = name
		})
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Moa name"), "Are you sure you want to rename this moa?", {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, modules.game_interface.getRootPanel())
end

function GameTransport.onOutfitManagementExtendedOpcode(protocol, opcode, buffer)
	if opcode == ExtendedIds.OutfitManagement then
		local data = g_game.unserializeTable(buffer)

		if not data or type(data) ~= "table" then
			return
		end

		if data.action == "request_transport" then
			GameTransport:updateOutfitList(data.category, data.subCategory, data.parts)
		elseif data.action == "transport_attributes" then
			GameTransport:updateTransportAttributes(data.category, data.subCategory, data.attributes, data.selected)
		elseif data.action == "ship_extra_cargo" then
			GameTransport:onUpdateShipCargo(data.slots, data.cargo)
		elseif data.action == "transport_notification" then
			signalcall(GameTransport.onUpdateTransport)
		end
	end
end

function GameTransport:sendOutfitManagementOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.OutfitManagement, g_game.serializeTable(data))
	end
end

function GameTransport.onOutfitChange(player, outfit)
	local preview = GameTransport.window.content.ship_panel.ship_content.ship_preview_panel.ship_preview

	if outfit.shipBody ~= 0 then
		preview.outfit:setOutfit({
			category = ThingCategoryCreature,
			lookType = outfit.shipBody,
			shipBody = outfit.shipBody,
			shipCabin = outfit.shipCabin,
			shipSail = outfit.shipSail,
			shipCargo = outfit.shipCargo,
			shipBodyCosmetic = outfit.shipBodyCosmetic,
			shipCabinCosmetic = outfit.shipCabinCosmetic,
			shipSailCosmetic = outfit.shipSailCosmetic,
			shipCargoCosmetic = outfit.shipCargoCosmetic
		})
		preview.outfit:show()
		preview.placeholder:hide()
	else
		preview.outfit:hide()
		preview.placeholder:show()
	end

	preview = GameTransport.window.content.mount_panel.mount_content.mount_preview_panel.mount_preview

	if outfit.mountBody ~= 0 then
		preview.outfit:setOutfit({
			category = ThingCategoryCreature,
			mount = outfit.mountBody,
			mountBody = outfit.mountBody,
			mountArmor = outfit.mountArmor,
			mountLightEffect = outfit.mountLightEffect,
			mountFirstOrnament = outfit.mountFirstOrnament,
			mountSecondOrnament = outfit.mountSecondOrnament,
			mountBodyCosmetic = outfit.mountBodyCosmetic,
			mountArmorCosmetic = outfit.mountArmorCosmetic,
			mountLightEffectCosmetic = outfit.mountLightEffectCosmetic,
			mountFirstOrnamentCosmetic = outfit.mountFirstOrnamentCosmetic,
			mountSecondOrnamentCosmetic = outfit.mountSecondOrnamentCosmetic
		})
		preview.outfit:show()
		preview.placeholder:hide()
	else
		preview.outfit:hide()
		preview.placeholder:show()
	end

	preview = GameTransport.window.content.wagon_panel.wagon_content.wagon_preview_panel.wagon_preview

	if outfit.wagonBody ~= 0 then
		preview.outfit:setOutfit({
			wagonActive = 1,
			category = ThingCategoryCreature,
			lookType = outfit.wagonBody,
			wagonBody = outfit.wagonBody,
			wagonLeftWheel = outfit.wagonLeftWheel,
			wagonRightWheel = outfit.wagonRightWheel,
			wagonLeftWheelCosmetic = outfit.wagonLeftWheelCosmetic,
			wagonRightWheelCosmetic = outfit.wagonRightWheelCosmetic,
			wagonBodyCosmetic = outfit.wagonBodyCosmetic
		})
		preview.outfit:show()
		preview.placeholder:hide()
	else
		preview.outfit:hide()
		preview.placeholder:show()
	end

	local panels = {
		GameTransport.window.content.ship_panel.ship_content.button_panel,
		GameTransport.window.content.mount_panel.mount_content.button_panel,
		GameTransport.window.content.wagon_panel.wagon_content.button_panel,
		GameTransport.cargo_popup_window
	}

	for _, panel in ipairs(panels) do
		for _, child in pairs(panel:getChildren()) do
			local childId = child:getId()
			local field = cfg.subCategoryToOutfitField[childId]
			local hasOutfit = false
			local extraCargoSlot = child.slotId and child.slotId ~= 1

			if field and not extraCargoSlot then
				local childOutfit = {
					category = ThingCategoryCreature
				}

				if type(field) == "table" then
					for _, f in pairs(field) do
						if outfit[f] ~= 0 then
							if childId:find("_cosmetic", 1, true) then
								local fields = cfg.cosmeticOutfitFields[childId]
								local count = 0

								for _, f in pairs(fields) do
									childOutfit[f.field] = outfit[f.field]

									if outfit[f.field] and outfit[f.field] ~= 0 then
										count = count + 1
									end

									if f.main then
										childOutfit.lookType = outfit[f.field]

										if childId == "mount_cosmetic" then
											childOutfit.mount = outfit.mountBody
											childOutfit.mountBody = outfit.mountBody
										elseif childId == "wagon_cosmetic" then
											childOutfit.wagonActive = 1
											childOutfit.wagonBody = outfit.wagonBodyCosmetic
											childOutfit.wagonLeftWheel = outfit.wagonLeftWheelCosmetic
											childOutfit.wagonRightWheel = outfit.wagonRightWheelCosmetic
										end
									end
								end

								hasOutfit = count > 0
							else
								childOutfit[f] = outfit[f]

								if f == "mountBody" then
									childOutfit.mount = outfit[f]
									hasOutfit = true
								elseif f == "wagonBody" then
									childOutfit.wagonActive = 1
									childOutfit.lookType = outfit[f]
									hasOutfit = true
								end
							end
						end
					end
				elseif outfit[field] ~= 0 then
					childOutfit.lookType = outfit[field]

					if childId:find("_cosmetic", 1, true) then
						local fields = cfg.cosmeticOutfitFields[childId]

						for _, f in pairs(fields) do
							childOutfit[f.field] = outfit[f.field]

							if f.main then
								childOutfit.lookType = outfit[f.field]
								childOutfit.mount = outfit[f.field]
								hasOutfit = true
							end
						end
					else
						hasOutfit = true
					end
				end

				if hasOutfit then
					child.outfit:setOutfit(childOutfit)
					child.outfit:show()
					child.placeholder:hide()
				else
					child.outfit:hide()
					child.placeholder:show()
				end
			elseif not extraCargoSlot then
				child.outfit:hide()
				child.placeholder:show()
			end
		end
	end

	GameTransport:updateOutfitListText()
	GameTransport:updateOutfitListSelect()
	signalcall(GameTransport.onUpdateOutfit, outfit)
end

function GameTransport:updateTransportAttributes(category, subcategory, attributes, selectedId)
	local panels = {
		ship = GameTransport.window.content.ship_panel.ship_content.ship_preview_panel.ship_attributes,
		mount = GameTransport.window.content.mount_panel.mount_content.mount_preview_panel.mount_attributes,
		wagon = GameTransport.window.content.wagon_panel.wagon_content.wagon_preview_panel.wagon_attributes
	}

	if category == "mount" and attributes then
		local preview = GameTransport.window.content.mount_panel.mount_content.mount_preview_panel.mount_preview

		preview.outfit.tooltipData = attributes
		attributes.category = category
		GameTransport.window.content.mount_panel.mount_content.button_panel.mount.outfit.tooltipData = attributes

		local player = g_game.getLocalPlayer()

		if player then
			player:setCurrentMountStamina(attributes.stamina)
			player:setCurrentMaxMountStamina(attributes.maxStamina)
			signalcall(LocalPlayer.onMountStaminaChange, player, attributes.stamina, attributes.maxStamina)
		end

		local bondPanel = GameTransport.window.content.mount_panel.mount_top_panel

		if bondPanel then
			bondPanel.bondLevel:setText(attributes.bond.level)

			local currLevelExp = self:getBondExpForLevel(attributes.bond.level)
			local nextLevelExp = self:getBondExpForLevel(attributes.bond.level + 1)
			local experience = attributes.bond.experience
			local progress = 0

			progress = nextLevelExp <= experience and 100 or math.floor((experience - currLevelExp) / (nextLevelExp - currLevelExp) * 100)

			bondPanel.bondExperience:setText(string.format(bondPanel.bondExperience.formatText, experience, nextLevelExp))
			bondPanel.progressWidget.progress:setPercent(progress)
		end

		local sex = attributes.sex

		if sex then
			GameTransport.window.content.mount_panel.mount_name_panel.genderIcon:setOn(sex == 1)
			GameTransport.window.content.mount_panel.mount_name_panel.genderIcon:setTooltip(sex == 0 and "Female" or "Male")
		end

		GameTransport.window.content.mount_panel.mount_name_panel.textEdit.currentName = attributes.name

		GameTransport.window.content.mount_panel.mount_name_panel.textEdit.button:setEnabled(false)
		GameTransport.window.content.mount_panel.mount_name_panel.textEdit:setText(attributes.name)
		AbilityBar.updateMountIcon(attributes.outfit.mountBody)
	end

	for _, child in pairs(panels[category]:getChildren()) do
		child.value:setText("0")

		if attributes then
			for attributeName, attribute in pairs(attributes) do
				attributeName = cfg.attributesToChildIds[attributeName] or attributeName

				if child:getId() == attributeName then
					if attributeName == "sex" then
						child.value:setText(attribute == 0 and "Female" or "Male")
					elseif attributeName == "breedLimit" then
						child.value:setText(string.format("%i/%i", attribute.current, attribute.total))
					elseif attributeName == "weight" then
						child.value:setText(string.format("%dkg", attribute))
					else
						child.value:setText(attribute)
					end

					child:setTooltip(child.tooltip or string.titleCase(attributeName))

					break
				end
			end
		end
	end

	if self.attachedWindow.category == category and self.attachedWindow.subCategory == subcategory then
		for _, child in pairs(self.attachedWindow.outfit_list:getChildren()) do
			if child.outfitId == selectedId then
				child:setOn(true)
			else
				child:setOn(false)
			end
		end
	end
end

function GameTransport.onGameStart()
	GameTransport.window:hide()
	GameTransport.onOutfitChange(g_game.getLocalPlayer(), g_game.getLocalPlayer():getOutfit())
end

function GameTransport:getBondExpForLevel(level)
	return cfg.bondLevelToExp[math.min(#cfg.bondLevelToExp, level)] or 0
end

function GameTransport:updateOutfitListText()
	local subCategory = self.attachedWindow.subCategory

	if not subCategory or subCategory ~= "cargo" then
		return
	end

	local selected = self:getSelectedCargoSlot()

	if not selected then
		return
	end

	local playerOutfit = g_game.getLocalPlayer():getOutfit()
	local usedIds, unavailableIds = {
		[playerOutfit.shipCargo] = true
	}, {}
	local cargoType = cfg.cargoTypes[playerOutfit.shipCargo]

	if cargoType then
		unavailableIds[cargoType] = 1
	end

	for _, cargo in pairs(self.shipExtraCargos or {}) do
		usedIds[cargo.looktype or 0] = true
	end

	for slot, cargo in pairs(self.shipExtraCargos or {}) do
		cargoType = cfg.cargoTypes[cargo.looktype or 0]

		if cargoType then
			unavailableIds[cargoType] = slot
		end
	end

	local panel = self.attachedWindow.outfit_list

	for _, child in ipairs(panel and panel:getChildren() or {}) do
		local childOutfitId = child.outfit:getOutfit().shipCargo

		if childOutfitId ~= 0 then
			local visible = true

			if usedIds[childOutfitId] then
				addEvent(function()
					child.check:setOn(not child.border:isVisible())
					child.check:setVisible(true)
				end)
			elseif cfg.cargoTypes[childOutfitId] and unavailableIds[cfg.cargoTypes[childOutfitId]] and unavailableIds[cfg.cargoTypes[childOutfitId]] ~= selected.slotId and not child.border:isVisible() then
				visible = false
			end

			child.outfit:setEnabled(not child.check:isVisible())
			child:setVisible(visible)
		end
	end
end

function GameTransport:updateOutfitListSelect()
	local selected = self:getSelectedCargoSlot()

	if not selected then
		return
	end

	local panel = self.attachedWindow.outfit_list
	local id = selected.outfit:isVisible() and selected.outfit:getOutfit().lookType or 0

	for _, child in ipairs(panel and panel:getChildren() or {}) do
		if id == child.outfit:getOutfit().shipCargo then
			panel:ensureChildVisible(child)
			child:setOn(true)
		else
			child:setOn(false)
		end
	end
end

function GameTransport:onUpdateShipCargo(slots, cargos)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local playerOutfit = player:getOutfit()
	local cargoPanel = self.cargo_popup_window

	if table.size(cargoPanel:getChildren()) ~= slots then
		cargoPanel:destroyChildren()

		for id = 1, slots do
			local widget = g_ui.createWidget("GameTransportShipPanelContentButtonPanelButtonSlot", self.cargo_popup_window)

			widget.slotId = id
		end
	end

	local count = 0
	local panel = GameTransport.cargo_popup_window

	for _, child in pairs(panel:getChildren()) do
		local childOutfit = {
			category = ThingCategoryCreature
		}

		if child.slotId == 1 then
			childOutfit.lookType = playerOutfit.shipCargo
		else
			local cargo = cargos[child.slotId]

			if cargo then
				childOutfit.lookType = cargo.looktype
			end
		end

		if childOutfit.lookType then
			child.outfit:setOutfit(childOutfit)
			child.outfit:show()
			child.placeholder:hide()

			count = count + 1
		else
			child.outfit:hide()
			child.placeholder:show()
		end
	end

	local panel = GameTransport.window.content.ship_panel.ship_content.button_panel.cargo

	if panel then
		panel.count:setText(string.format("%d/%d", count, slots))
	end

	GameTransport.shipExtraCargos = cargos

	GameTransport:updateOutfitListText()
	GameTransport:updateOutfitListSelect()
end

function GameTransport:updateAttachedBondWindow(level)
	local panel = self.attachedBondWindow and self.attachedBondWindow.perks_list

	if not panel then
		return
	end

	local bondLevel = level or 1

	for level, perk in ipairs(cfg.bondLevelPerks) do
		local widget = panel:getChildById("level_" .. level) or g_ui.createWidget("GameTransportBondEntryPanel", panel)

		widget:setId("level_" .. level)
		widget:setOn(level <= bondLevel)
		widget.level:setText("Level " .. level)
		widget:setText(perk)
	end
end

function GameTransport:toggleAttachedBondWindow(widget)
	if self.attachedWindow:isVisible() then
		self.attachedWindow:hide()
	end

	local window = self.attachedBondWindow

	if not window:isVisible() then
		window:show()
		window:followParent()
	else
		window:hide()
	end
end

function GameTransport.onBondWindowVisibilityChange(widget, visible)
	local bondPanel = GameTransport.window.content.mount_panel.mount_top_panel

	if bondPanel then
		bondPanel.information:setOn(visible)
	end
end

function GameTransport:getSelectedCargoSlot()
	local cargoPanel = self.cargo_popup_window

	if not cargoPanel:isVisible() then
		return nil
	end

	local selected

	for _, child in ipairs(cargoPanel:getChildren()) do
		if child:isOn() then
			selected = child

			break
		end
	end

	return selected
end

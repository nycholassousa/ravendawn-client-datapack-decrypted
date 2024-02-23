-- chunkname: @/modules/game_house/house.lua

GameHouse = {
	community_farm_quest = false,
	data = {},
	passives = {},
	current_menu = {
		submenu = {}
	},
	player_houses = {},
	landPlotsCenterPositions = {},
	communityHousesCenterPositions = {}
}

function GameHouse:loadConfig()
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

function GameHouse:init()
	if not self:loadConfig() then
		return false
	end

	self:parseWindows(cfg.houseData)
	self:parseLandPlots()
	dofile("util.lua")
	g_ui.importStyle("styles/top_panel.otui")
	g_ui.importStyle("styles/bottom_panel.otui")
	g_ui.importStyle("styles/farm_info_window.otui")
	g_ui.importStyle("styles/room_info_window.otui")
	g_ui.importStyle("styles/decoration_info_window.otui")
	g_ui.importStyle("styles/controls_info_window.otui")
	g_ui.importStyle("styles/invite_info_window.otui")
	g_ui.importStyle("styles/upgrade_info_window.otui")
	g_ui.importStyle("styles/land_info_window.otui")
	g_ui.importStyle("styles/land_tracker.otui")
	g_ui.importStyle("styles/house_information.otui")

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.top_panel = g_ui.createWidget("GameHouseMainTopPanel", HUDPanel)

	self.top_panel:hide()

	self.bottom_panel = g_ui.createWidget("GameHouseMainBottomPanel", HUDPanel)

	self.bottom_panel:hide()

	self.farm_info_window = g_ui.createWidget("GameHouseFarmInfoWindow", HUDPanel)

	self.farm_info_window:hide()

	self.room_info_window = g_ui.createWidget("GameHouseRoomInfoWindow", HUDPanel)

	self.room_info_window:hide()

	self.decoration_info_window = g_ui.createWidget("GameHouseDecorationInfoWindow", HUDPanel)

	self.decoration_info_window:hide()

	self.controls_info_window = g_ui.createWidget("GameHouseControlsInfoWindow", HUDPanel)

	self.controls_info_window:hide()

	self.invite_info_window = g_ui.createWidget("GameHouseInviteInfoWindow", HUDPanel)

	self.invite_info_window:hide()

	self.upgrade_info_window = g_ui.createWidget("GameHouseUpgradeInfoWindow", HUDPanel)

	self.upgrade_info_window:hide()

	self.information_window = g_ui.createWidget("GameHouseInformationWindow", HUDPanel)

	self.information_window:hide()

	self.land_tracker_window = g_ui.createWidget("GameHouseLandTrackerWindow", HUDPanel)
	self.land_tracker_window.onVisibilityChange = self.onLandTrackerVisibilityChange

	self.land_tracker_window:hide()
	connect(g_game, {
		onHouseModeChange = GameHouse.onHouseModeChange,
		onCoinBalance = GameHouse.onBalanceChange,
		onLogout = onGameEnd
	})
	connect(LocalPlayer, {
		onEffortChange = GameHouse.onEffortChange
	})
	connect(Container, {
		onOpen = GameHouse.refreshOwnedMaterials,
		onRemoveItem = GameHouse.refreshOwnedMaterials,
		onUpdateItem = GameHouse.refreshOwnedMaterials,
		onAddItem = GameHouse.refreshOwnedMaterials
	})
	connect(Tile, {
		onUpdateLandPlotTileDescription = GameHouse.onUpdateLandPlotTileDescription
	})
	connect(modules.game_questlog.GameQuestLog, {
		onTaskUpdate = GameHouse.onTaskUpdate
	})

	if not g_game.isRavenQuest() then
		g_keyboard.bindKeyDown("Delete", GameHouse.onDeleteProperty)
	else
		self.controls_info_window.content.delete:hide()
		self.controls_info_window:setHeight(self.controls_info_window:getHeight() - self.controls_info_window.content.delete:getHeight())
	end

	ProtocolGame.registerExtendedOpcode(ExtendedIds.House, GameHouse.onExtendedOpcode)

	if g_game.isOnline() then
		self:selectMenuWidget(self.bottom_panel.left_panel:getFirstChild())
	end
end

function GameHouse:terminate()
	self.top_panel:destroy()
	self.bottom_panel:destroy()
	self.farm_info_window:destroy()
	self.room_info_window:destroy()
	self.decoration_info_window:destroy()
	self.controls_info_window:destroy()
	self.invite_info_window:destroy()
	self.upgrade_info_window:destroy()

	if self.confirmation_box then
		self.confirmation_box:destroy()
	end

	disconnect(g_game, {
		onHouseModeChange = GameHouse.onHouseModeChange,
		onCoinBalance = GameHouse.onBalanceChange,
		onLogout = onGameEnd
	})
	disconnect(LocalPlayer, {
		onEffortChange = GameHouse.onEffortChange
	})
	disconnect(Container, {
		onOpen = GameHouse.refreshOwnedMaterials,
		onRemoveItem = GameHouse.refreshOwnedMaterials,
		onUpdateItem = GameHouse.refreshOwnedMaterials,
		onAddItem = GameHouse.refreshOwnedMaterials
	})
	disconnect(Tile, {
		onUpdateLandPlotTileDescription = GameHouse.onUpdateLandPlotTileDescription
	})
	disconnect(modules.game_questlog.GameQuestLog, {
		onTaskUpdate = GameHouse.onTaskUpdate
	})
	g_keyboard.unbindKeyDown("Delete")
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.House)

	GameHouse = nil
end

function onGameEnd()
	local window = GameHouse.land_tracker_window

	if window:isVisible() then
		window:hide()
	end

	if window.list then
		window.list:destroyChildren()
	end

	GameHouse.data.land_tracker = nil
	GameHouse.passives = {}
end

function GameHouse:onUpdateEditingFloor(floor)
	g_game.setHouseFloor(floor)
end

function GameHouse.onHouseModeChange(state)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local self = GameHouse

	if state then
		local HUDPanel = modules.game_interface.getHUDPanel()

		if HUDPanel.landInteractionPanel then
			HUDPanel.landInteractionPanel:destroyChildren()
			HUDPanel.landInteractionPanel:destroy()

			HUDPanel.landInteractionPanel = nil
		end

		g_game.stop()
		player:stopAutoWalk()
		self:selectMenuWidget(self.bottom_panel.left_panel:getFirstChild(), true)
		self:setupTopMenuBar()

		local houseFloor = state and player:getPosition().z or -1

		GameHouse:onUpdateEditingFloor(houseFloor)
		self:show()
		self.refreshOwnedMaterials()
		self.land_tracker_window:hide()
	else
		self:hide()
		modules.game_interface.releaseHouseMode()
	end
end

function GameHouse:show(enter)
	self.top_panel:show()
	self.bottom_panel:show()

	if enter then
		self:enterHouseMode()
	end
end

function GameHouse:hide(exit)
	self.top_panel:hide()
	self.bottom_panel:hide()

	if self.current_info_window then
		self.current_info_window:hide()
	end

	if exit then
		self:exitHouseMode()
	end

	if self.confirmation_box then
		self.confirmation_box:destroy()

		self.confirmation_box = nil
	end
end

function GameHouse:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.House, g_game.serializeTable(data))
	end
end

function GameHouse.onExtendedOpcode(protocol, opcode, buffer)
	if opcode == ExtendedIds.House then
		local data = g_game.unserializeTable(buffer)

		if data then
			GameHouse:handleOpcode(data)
		end
	end
end

function GameHouse:toggleHouseMode()
	if self.land_tracker_window:isVisible() then
		self.land_tracker_window:hide()

		return
	end

	self:sendOpcode({
		action = "house_mode"
	})
end

function GameHouse:enterHouseMode()
	if not g_game.isInHouseMode() then
		self:sendOpcode({
			action = "house_mode"
		})
	end
end

function GameHouse:exitHouseMode()
	if g_game.isInHouseMode() then
		self:sendOpcode({
			action = "house_mode"
		})
	end
end

function GameHouse:parseWindows(data)
	for _, value in pairs(data.windows) do
		if type(value.window_data) == "table" then
			if value.window_id == "rooms" then
				for _, room in pairs(value.window_data) do
					self.data[room.category] = self.data[room.category] or {}

					table.insert(self.data[room.category], room)
				end
			elseif value.window_id == "manage" then
				self.data[value.window_id] = value.window_data

				self:setupTopMenuBar()
			elseif value.window_id == "decoration" then
				self.data[value.window_id] = value.window_data

				for _, decor in pairs(self.data.decoration) do
					if decor.id == data.decorId then
						decor.placed = data.placed

						self:updateDecorWidgetState(decor)
					end
				end
			else
				self.data[value.window_id] = self.data[value.window_id] or value.window_data
				self.passives[value.window_id] = value.passives
			end
		else
			self.passives[value.window_id] = value.passives
		end
	end
end

function GameHouse:parseLandPlots()
	for _, regionData in pairs(LandPlots) do
		for _, landData in pairs(regionData) do
			if landData.pos then
				self.landPlotsCenterPositions[Position.generateHash(landData.pos)] = landData
			end
		end
	end

	if CommunityLandHouses then
		for _, communityHouseData in pairs(CommunityLandHouses) do
			if communityHouseData.pos then
				self.communityHousesCenterPositions[Position.generateHash(communityHouseData.pos)] = communityHouseData
			end
		end
	end
end

function GameHouse:handleOpcode(data)
	if data.action == "house_data" then
		self:parseWindows(data)

		if data.effort then
			local player = g_game.getLocalPlayer()

			player:setEffort(data.effort)
		end

		self:onTopMenuButtonClicked("upgrade", true)

		if self.current_menu.widget then
			self:selectMenuWidget(self.current_menu.widget, true)
		end
	elseif data.action == "house_mapmarks" then
		g_worldMap.loadHouseMarks(data.houses)

		self.player_houses = data.houses

		local player = g_game.getLocalPlayer()

		player.houseRooms = {}
		player.houseProfessionRooms = {}

		for _, house in ipairs(data.houses) do
			if house.rooms then
				player.houseRooms[house.id] = house.rooms

				for _, data in pairs(house.rooms) do
					if data.profession then
						player.houseProfessionRooms[data.profession] = player.houseProfessionRooms[data.profession] or {}

						table.insert(player.houseProfessionRooms[data.profession], data.area)
					end
				end
			end
		end

		if self.current_menu.widget then
			self:selectMenuWidget(self.current_menu.widget, true)
		end
	elseif data.action == "house_remove_mapmark" then
		g_worldMap.removeFlag(data.position, MAPMARK_HOUSE)
	elseif data.action == "decor_state" then
		for _, decor in pairs(self.data.decoration) do
			if decor.id == data.decorId then
				decor.placed = data.placed

				self:updateDecorWidgetState(decor)
			end
		end
	elseif data.action == "house_guests" then
		self.data.manage = data.data

		self:setupTopMenuBar()
		self:onTopMenuButtonClicked("invite", true)
	elseif data.action == "land_info" then
		g_worldMap.displayRegionLandInfo(data.region, data.lands)
	elseif data.action == "effort" then
		local player = g_game.getLocalPlayer()

		player:setEffort(data.effort)
	elseif data.action == "land_tracker_data" then
		self.data.land_tracker = data.data[1]
	elseif data.action == "land_tracker_close" then
		self:hideLandTracker()
	elseif data.action == "land_tracker" then
		self:showLandTracker()
	end
end

function GameHouse:getFirstSubMenuItemName(widget)
	local panel = self.bottom_panel.middle_panel.filter_panel
	local items = panel.modes[widget:getId()]

	if items then
		return items[1]
	end

	return nil
end

function GameHouse:selectMenuWidget(widget, force)
	if not force and self.current_menu.widget == widget then
		return
	end

	if signalcall(self.onSelectMenuWidget, self, widget) then
		return
	end

	if self.current_menu.widget then
		self.current_menu.widget:setOn(false)

		self.current_menu.widget = nil
	end

	if self.current_menu.selected_item then
		self.current_menu.selected_item:setOn(false)

		self.current_menu.selected_item = nil
	end

	self.current_menu.widget = widget

	widget:setOn(true)

	local submenu = self:getFirstSubMenuItemName(widget)

	if self.current_menu.submenu.widget then
		submenu = self.current_menu.submenu.widget:getId()
	end

	self:selectSubMenuWidget(widget, submenu)
	self:hideInfoPanel()
end

function GameHouse:selectSubMenuWidget(menu, submenu)
	if signalcall(self.onSelectSubMenuWidget, self, menu, submenu) then
		return
	end

	local panel = self.bottom_panel.middle_panel.filter_panel

	panel.mode = menu:getId()
	panel.subMenuMode = submenu

	panel:refresh()

	if self.current_menu.submenu.widget then
		self.current_menu.submenu.widget:setOn(false)

		self.current_menu.submenu.widget = nil
	end

	if menu:getId() == "decoration" then
		return self:populateWidgetList(menu:getId())
	end

	submenu = panel[submenu]
	submenu = submenu or panel[self:getFirstSubMenuItemName(menu)]
	self.current_menu.submenu.widget = submenu

	submenu:setOn(true)
	self:populateWidgetList(menu:getId(), submenu:getId())
end

function GameHouse:populateWidgetList(menu, id)
	id = id or menu

	if not self.data[id] then
		print("unable to find data for " .. id)

		return
	end

	local panel = self.bottom_panel.middle_panel.content

	panel:hideAllChildren()

	local data = self.data[id]

	if menu == "farm" and not data.sorted then
		for index, info in ipairs(data) do
			info.index = index
		end

		table.sort(data, function(a, b)
			return a.skillRequired[2] < b.skillRequired[2]
		end)

		data.sorted = true
	end

	local counter = 0

	for index, info in ipairs(data) do
		local childId = info.name

		if menu == "rooms" then
			childId = info.name .. "_" .. info.model
		end

		counter = counter + 1

		local widget = panel:getChildById(childId)

		if widget then
			widget:show()
		else
			widget = g_ui.createWidget("GameHouseMainBottomPanelMiddlePanelContentItem", panel)

			widget:setId(childId)
		end

		widget.skillRequired = info.skillRequired

		if type(info.clientId) == "number" then
			widget.preview:setItemId(info.clientId)
			widget.preview:setAnimate(false)
		elseif menu == "rooms" then
			widget.preview:setImageSource(string.format("/images/ui/windows/house/preview/rooms/%i", info.model))
			widget.preview:setChecked(true)
		end

		widget.name:setText(info.name)

		if g_game.isRavenQuest() then
			widget.effort:hide()
		end

		if info.price then
			local player = g_game.getLocalPlayer()
			local communityFarm = player and player:isInCommunityFarm()
			local isFree = info.name:lower() == "potato" and modules.game_questlog.getQuestEntry("The City of Ravencrest", 4)

			isFree = isFree or info.name:lower() == "small pig pen" and modules.game_questlog.getQuestEntry("The City of Ravencrest", 5)
			info.use_price = info.price

			if menu == "farm" and communityFarm and not isFree then
				info.use_price = math.round(info.use_price * cfg.communityLandFarmPriceMultiplier)
			end

			if menu == "farm" and g_game.isRavenQuest() and not communityFarm then
				info.use_price = info.use_price * self:getProductionTilesMultiplier()
			end

			widget.price.value:setText(isFree and "Free" or info.use_price == 0 and "Free" or info.use_price)

			if info.effort then
				if g_game.isRavenQuest() then
					widget.effort:setVisible(communityFarm)
				else
					widget.effort:setVisible(true)
				end

				widget.effort.value:setText(info.effort)

				if g_game.isRavenQuest() then
					local disconnects = connect(widget, {
						onVisibilityChange = function(widget, visible)
							if not visible then
								return
							end

							local player = g_game.getLocalPlayer()
							local communityFarm = player and player:isInCommunityFarm()

							widget.effort:setVisible(communityFarm)
						end
					})

					connect(widget, {
						onDestroy = function()
							for _, disconnect in pairs(disconnects) do
								disconnect()
							end
						end
					})
				end
			else
				widget.effort:setVisible(false)
			end
		elseif menu == "decoration" then
			widget.price.value:setText(info.unlocked and "Owned" or "Not owned")

			if widget.price.silver_icon then
				widget.price.silver_icon:destroy()
			end

			widget.price.value:setChecked(true)
			widget.effort:setVisible(false)
		end

		widget.data = info
		widget.hoverSound = true
		widget.clickSound = true

		function widget.onClick(widget)
			self:selectListWidget(menu, widget)
		end

		if self.current_selected_land and id == "storage" then
			local houseInfo = self:getHouseInfoByModel(self.current_selected_land.info.model)

			if houseInfo and menu == "rooms" and cfg.STORAGE_MODEL_TO_HOUSE_TIER[info.model] ~= houseInfo.tier then
				widget:hide()

				counter = counter - 1
			end
		end

		if counter == 1 then
			widget:setMarginLeft(15)
		end

		if id ~= "storage" and menu == "rooms" then
			self:setRoomWidgetUpgradeStatus(widget, info, id)
		end
	end
end

function GameHouse:setRoomWidgetUpgradeStatus(widget, info, id)
	if not self.current_selected_land then
		return
	end

	local houseInfo = self:getHouseInfoByModel(self.current_selected_land.info.model)
	local houseId = self.current_selected_land.info.id

	if not houseInfo or not houseInfo.size or not houseId then
		return
	end

	local categoriesByTier = cfg.availableRoomModelsByHouseSize[houseInfo.size]

	if not categoriesByTier then
		return
	end

	local modelsByCategory = categoriesByTier[id]

	if not modelsByCategory then
		return
	end

	local player = g_game.getLocalPlayer()
	local rooms = player.houseRooms[houseId]

	if not rooms then
		return
	end

	local visible = modelsByCategory[1] == info.model
	local playerRoom, upgradeIndex

	for _, room in ipairs(rooms) do
		if room.category == id then
			playerRoom = room

			break
		end
	end

	if playerRoom then
		visible = false

		local modelIndex = table.find(modelsByCategory, playerRoom.model)

		upgradeIndex = modelsByCategory[modelIndex + 1] == info.model
	end

	widget:setVisible(visible or upgradeIndex)

	widget.upgrade = upgradeIndex
	widget.upgradeFromModel = playerRoom and playerRoom.model

	widget:setMarginLeft(15)
end

function GameHouse:selectListWidget(menu, widget)
	if self.current_menu.selected_item == widget then
		return
	end

	if signalcall(self.onSelectListWidget, self, menu, widget) then
		return
	end

	if self.current_menu.selected_item then
		self.current_menu.selected_item:setOn(false)

		self.current_menu.selected_item = nil
	end

	self.current_menu.selected_item = widget

	widget:setOn(true)
	self:populateItemInfo(menu, widget)
end

function GameHouse:hideInfoPanel()
	if self.current_info_window then
		self.current_info_window:hide()

		self.current_info_window = nil
	end
end

function GameHouse:populateItemInfo(menu, widget)
	if self.current_info_window then
		self.current_info_window:hide()

		self.current_info_window = nil
	end

	if menu == "farm" then
		self.current_info_window = self.farm_info_window

		local window = self.farm_info_window

		if not window then
			return
		end

		local player = g_game.getLocalPlayer()

		if not player then
			return
		end

		window:show()

		function window.onVisibilityChange(window, visible)
			if not visible then
				widget:setOn(false)

				if widget == self.current_menu.selected_item then
					self.current_menu.selected_item = nil
				end
			end
		end

		local data = widget.data
		local panel = window.content.preview_panel

		panel.preview.item:setItemId(data.clientId)
		panel.info.name:setText(data.name)
		panel.info.size:setText(string.format("%im x %im", data.size.x, data.size.y))

		local isFree = data.name:lower() == "potato" and modules.game_questlog.getQuestEntry("The City of Ravencrest", 4)

		isFree = isFree or data.name:lower() == "small pig pen" and modules.game_questlog.getQuestEntry("The City of Ravencrest", 5)

		panel.info.price:setText(isFree and "Free" or data.use_price == 0 and "Free" or data.use_price)
		panel.info.level:setText(string.format("Level %i", data.skillRequired[2]))
		panel.info.effort:setText(string.format("%i", data.effort or 0))

		local isInCommunityFarm = g_game.getLocalPlayer():isInCommunityFarm()

		if g_game.isRavenQuest() then
			panel.info.effort:setVisible(isInCommunityFarm and data.effort)
		else
			panel.info.effort:setVisible(data.effort)
		end

		if not g_game.isRavenQuest() or isInCommunityFarm then
			panel.info:getFirstChild():setMarginTop(-5)
		else
			panel.info:getFirstChild():setMarginTop(7)
		end

		local message_panel = window.content.message_panel
		local message

		message_panel:setVisible(false)

		local requiredPassive, professionName
		local currentTab = self.bottom_panel.middle_panel.filter_panel.subMenuMode

		if data.passiveRequired then
			local passiveCfg = currentTab and passivesIndex[currentTab]

			if passiveCfg then
				professionName = ProfessionNames[passiveCfg.professionId]
				requiredPassive = passiveCfg[data.passiveRequired.index]
			end
		end

		local passivePanel = self.farm_info_window:recursiveGetChildById("passive_panel")

		passivePanel:setOn(requiredPassive ~= nil)

		if requiredPassive then
			local color = self.passives[professionName:lower()] and self.passives[professionName:lower()][data.passiveRequired.index] and "#36F991" or "#ff5151"

			passivePanel:setText(string.format("Requires: %s", requiredPassive))
			passivePanel:setColoredText(GetHighlightedText(string.format("{Requires:, #a6aab2} {%s, %s}", requiredPassive, color)))
			passivePanel:setTooltip(string.format("%s Passive.", professionName, requiredPassive))
		end

		panel = window.content.rewards_panel

		panel:destroyChildren()

		local panel_height = 0
		local rewards = {}
		local requiredItems = {}

		if data.itemsRequired then
			table.insert(requiredItems, {
				name = "materials",
				rewards = data.itemsRequired
			})
		end

		if data.gathering and data.gathering.rewards then
			table.insert(rewards, {
				name = "gathering",
				rewards = data.gathering.rewards
			})
		end

		if data.butchering and data.butchering.rewards then
			table.insert(rewards, {
				name = "butchering",
				rewards = data.butchering.rewards
			})

			message = cfg.messages.butchering

			message_panel:setVisible(true)
		end

		if #requiredItems > 0 then
			for _, info in ipairs(requiredItems) do
				local title = g_ui.createWidget("GameHouseFarmInfoWindowRewardsPanelCategoryTitle", panel)

				title:setText(info.name:titleCase())

				panel_height = panel_height + title:getHeight() + title:getMarginTop()

				for _, reward in ipairs(info.rewards) do
					local item = g_ui.createWidget("GameHouseFarmInfoWindowRequiredPanelItem", panel)

					if reward.clientId then
						item.item:setItemId(reward.clientId)
					else
						item.item:setImageSource(string.format("/images/ui/windows/house/%s", reward.name))
					end

					item.name:setText(reward.name:titleCase())

					function item.checkFunction(player)
						if reward.amount then
							local count = 0

							if reward.clientId then
								for quality = ItemQualityNormal, ItemQualityArtisan do
									count = count + player:getItemsCount(reward.clientId, quality)
								end
							end

							item.amount:setText(string.format("%i / %i", count, reward.amount))
							item.amount:setOn(count >= reward.amount)
						end
					end

					item.checkFunction(player)

					panel_height = panel_height + item:getHeight() + item:getMarginTop()
				end
			end
		end

		if #rewards > 0 then
			for _, info in ipairs(rewards) do
				local title = g_ui.createWidget("GameHouseFarmInfoWindowRewardsPanelCategoryTitle", panel)

				title:setText(info.name:titleCase())

				panel_height = panel_height + title:getHeight() + title:getMarginTop()

				for _, reward in ipairs(info.rewards) do
					local item = g_ui.createWidget("GameHouseFarmInfoWindowRewardsPanelItem", panel)

					if reward.clientId then
						item.item:setItemId(reward.clientId)
					else
						item.item:setImageSource(string.format("/images/ui/windows/house/%s", reward.name))
					end

					item.name:setText(reward.name:titleCase())
					item.time:setText(string.format("%s", data[info.name].timeToMature))

					if reward.amount then
						local multiplier = reward.clientId and self:getProductionTilesMultiplier() or 1

						if type(reward.amount) == "table" then
							item.item.amount:setText(string.format("%i-%i", reward.amount[1] * multiplier, reward.amount[2] * multiplier))
						else
							item.item.amount:setText(string.format("%i", reward.amount * multiplier))
						end
					end

					panel_height = panel_height + item:getHeight() + item:getMarginTop()
				end
			end
		end

		if message then
			message_panel:setText(message)
			message_panel:setVisible(true)
		else
			message_panel:setVisible(false)
		end

		function window.checkFunction(player)
			local skill = player:getProfessionLevel(ProfessionIds[data.skillRequired[1]])
			local hasSkill = skill >= data.skillRequired[2]

			if requiredPassive and (not self.passives[professionName:lower()] or not self.passives[professionName:lower()][data.passiveRequired.index]) then
				hasSkill = false
			end

			window.place_button:setEnabled(hasSkill and (isFree or player.silverBalance >= data.use_price or data.price) and (not g_game.isRavenQuest() or isInCommunityFarm and player:getEffort() >= (data.effort or 0)))
		end

		window.checkFunction(g_game.getLocalPlayer())
		panel:setHeight(panel_height + 15)
		window:setHeight(math.min(window.minHeight + panel:getHeight(), window.maxHeight))

		function window.place_button.onClick()
			modules.game_interface.startFarmPlacing(data)
		end
	elseif menu == "rooms" then
		self.current_info_window = self.room_info_window

		local window = self.room_info_window

		if not window then
			return
		end

		window:show()

		function window.onVisibilityChange(window, visible)
			if not visible then
				widget:setOn(false)

				if widget == self.current_menu.selected_item then
					self.current_menu.selected_item = nil
				end
			end
		end

		local data = widget.data

		window.data = data

		local panel = window.content.preview_panel

		if data.clientId and type(data.clientId) == "number" then
			panel.preview.image:setItemId(data.clientId)
			panel.preview.image:setImageSource(nil)
		else
			panel.preview.image:setItemId(0)
			panel.preview.image:setImageSource(string.format("/images/ui/windows/house/preview/rooms/%i", data.model))
		end

		panel.info.name:setText(data.name)
		panel.info.size:setText(string.format("%im x %im", data.size.x, data.size.y))
		panel.info.price:setText(data.price == 0 and "Free" or data.price)

		if data.category == "bedroom" then
			window.content.description:setText(string.format(data.description, cfg.roomExperienceBonusByTier[data.tier]))
		else
			window.content.description:setText(string.format(data.description, cfg.roomLaborBonusByTier[data.tier]))
		end

		panel = window.content.materials_panel

		panel:destroyChildren()

		local panel_height = 0

		if #data.materials > 0 then
			local title = g_ui.createWidget("GameHouseRoomInfoWindowMaterialsPanelCategoryTitle", panel)

			title:setText("Required Materials")

			panel_height = title:getHeight() + title:getMarginTop()
		else
			local player = g_game.getLocalPlayer()

			window.place_button:setEnabled(player.silverBalance >= data.price)
		end

		local materialsCheckList = {}

		for _, material in ipairs(data.materials) do
			local item = g_ui.createWidget("GameHouseRoomInfoWindowMaterialsPanelItem", panel)

			if material.clientId then
				item.item:setItemId(material.clientId)
			end

			item.name:setText(material.name:titleCase())
			item.amount:setText(string.format("%i / %i", 0, material.amount))

			panel_height = panel_height + item:getHeight() + item:getMarginTop()

			function item.checkFunction(player)
				local amount = player:getItemsCount(material.clientId)

				materialsCheckList[material.clientId] = {
					have = amount,
					needed = material.amount
				}

				item.amount:setText(string.format("%i / %i", amount, material.amount))
				item.amount:setOn(amount >= material.amount)

				local canPurchase = player.silverBalance >= data.price

				for _, material in pairs(materialsCheckList) do
					if material.have < material.needed then
						canPurchase = false
					end
				end

				window.place_button:setEnabled(canPurchase)
			end

			item.checkFunction(g_game.getLocalPlayer())
		end

		panel:setHeight(panel_height + 15)
		window:setHeight(math.min(window.minHeight + panel:getHeight(), window.maxHeight))

		function window.place_button.onClick()
			if widget.upgrade then
				self:onUpgradeRoomButtonClicked(self.current_selected_land.info.id, widget.upgradeFromModel)
			else
				modules.game_interface.startRoomPlacing(data)
			end
		end

		if widget.upgrade then
			window.place_button:setText("Upgrade")
		else
			window.place_button:setText("Place")
		end
	elseif menu == "decoration" then
		self.current_info_window = self.decoration_info_window

		local window = self.decoration_info_window

		if not window then
			return
		end

		window:show()

		function window.onVisibilityChange(window, visible)
			if not visible then
				widget:setOn(false)

				if widget == self.current_menu.selected_item then
					self.current_menu.selected_item = nil
				end
			end
		end

		local data = widget.data
		local panel = window.content.preview_panel

		panel.preview.item:setItemId(data.clientId)
		panel.preview.item:setAnimate(false)
		panel.info.name:setText(data.name)
		panel.info.size:setText(string.format("%im x %im", 1, 1))
		panel.info.level:setText("No Level Required")
		self:updateDecorWidgetState(data)

		function window.place_button.onClick()
			modules.game_interface.startDecorPlacing(data)
		end
	end
end

function GameHouse:canPlaceType(position, from1, to1, placeType)
	local from = {
		x = from1.x < to1.x and from1.x or to1.x,
		y = from1.y < to1.y and from1.y or to1.y,
		z = from1.z < to1.z and from1.z or to1.z
	}
	local to = {
		x = to1.x > from1.x and to1.x or from1.x,
		y = to1.y > from1.y and to1.y or from1.y,
		z = to1.z > from1.z and to1.z or from1.z
	}
	local plotFrom, plotTo

	for _, house in ipairs(self.player_houses) do
		if house.from and house.to and isInArea(position, house.from, house.to) then
			plotFrom = house.from
			plotTo = house.to

			break
		end
	end

	local communityLand

	if not plotFrom then
		for _, house in ipairs(COMMUNITY_LANDS) do
			if isInArea(position, house.from, house.to) then
				plotFrom = house.from
				plotTo = house.to
				communityLand = true

				break
			end
		end
	end

	if not plotFrom then
		return false
	end

	local plotFarms = {}
	local z = from.z

	for x = plotFrom.x, plotTo.x do
		for y = plotFrom.y, plotTo.y do
			local pos = {
				x = x,
				y = y,
				z = z
			}
			local tile = g_map.getTile(pos)

			if tile then
				local items = tile:getItems()

				if items then
					for _, item in pairs(items) do
						local stacking = INDEXED_STACKING_ITEMS[item:getId()]

						if stacking then
							local data = {
								type = stacking.type,
								size = stacking.size,
								verticalOnly = stacking.stackingVerticalyOnly,
								horizontalOnly = stacking.stackingHorizontalyOnly,
								from = {
									x = x - stacking.size.x + 1,
									y = y - stacking.size.y + 1,
									z = z
								},
								to = pos
							}

							table.insert(plotFarms, data)

							break
						end
					end
				end
			end
		end
	end

	for x = from.x, to.x do
		for y = from.y, to.y do
			local checkTile = g_map.getTile({
				x = x,
				y = y,
				z = z
			})

			if not checkTile then
				return false
			end

			local tileType = communityLand and TileType.CommunityPlot or TileType.None

			if checkTile:getProperty() ~= PropertyOwn or checkTile:getTileType() ~= tileType or checkTile:getTileType() == TileType.Room and checkTile:getTopUseThing():getId() ~= 41977 then
				return false
			end

			local items = checkTile:getItems()

			for _, item in ipairs(items) do
				local thingType = item:getThingType()

				if not thingType:isGround() and thingType:isNotWalkable() then
					return false
				end
			end
		end
	end

	if table.empty(plotFarms) then
		return true
	end

	for _, farm in pairs(plotFarms) do
		if isAreasOverlaping(from, to, farm.from, farm.to) then
			return false
		end

		local hasDiagonalFarm = isDiagonal(farm.from, farm.to, from, to)

		if placeType ~= farm.type and hasDiagonalFarm then
			return false
		end

		if placeType == farm.type and hasDiagonalFarm and farm.to.y ~= to.y and farm.to.x ~= to.x then
			return false
		end

		local isAroundFarm = isAround(farm.from, farm.to, from, to)

		if placeType ~= farm.type and isAroundFarm then
			return false
		end

		if placeType == farm.type and isAroundFarm then
			if farm.to.y ~= to.y and farm.to.x ~= to.x then
				return false
			end

			if farm.verticalOnly and farm.to.x ~= to.x then
				return false
			end

			if farm.horizontalOnly and farm.to.y ~= to.y then
				return false
			end

			local isStackingVerticaly, isStackingHorizontaly

			for _, otherFarm in pairs(plotFarms) do
				if farm ~= otherFarm and otherFarm.type == farm.type then
					local vertical = farm.to.x == otherFarm.to.x
					local horizontal = farm.to.y == otherFarm.to.y

					if (horizontal or vertical) and isAround(farm.from, farm.to, otherFarm.from, otherFarm.to) then
						isStackingHorizontaly = horizontal
						isStackingVerticaly = vertical

						break
					end
				end
			end

			if isStackingHorizontaly and farm.to.y ~= to.y then
				return false
			end

			if isStackingVerticaly and farm.to.x ~= to.x then
				return false
			end
		end
	end

	return true
end

function GameHouse:canRemoveItem(tile)
	if not tile or tile:getProperty() ~= PropertyOwn then
		return false
	end

	local topThing = tile:getTopUseThing()

	for _, decor in pairs(DECOR_MODELS) do
		if decor.directions then
			for __, dir in pairs(decor.directions) do
				if table.find(dir[1].items, topThing:getId()) then
					return true
				end
			end
		elseif table.find(decor[1].items, topThing:getId()) then
			return true
		end
	end

	return true
end

function GameHouse.refreshOwnedMaterials()
	if not GameHouse.bottom_panel:isVisible() then
		return
	end

	local self = GameHouse

	if self.current_info_window ~= self.room_info_window and self.current_info_window ~= self.farm_info_window then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local panel = self.current_info_window.content.materials_panel or self.current_info_window.content.rewards_panel

	for _, widget in ipairs(panel:getChildren()) do
		if widget.checkFunction then
			widget.checkFunction(player)
		end
	end
end

function GameHouse:canPlaceDecor(tile, hangableItem)
	if not tile then
		return false
	end

	if hangableItem then
		if tile:isWalkable(true, true) then
			return false
		end

		if tile:getProperty() ~= PropertyOwn or tile:getTileType() ~= TileType.House and tile:getTileType() ~= TileType.Room then
			return false
		end

		local items = tile:getItems()

		if #items > 2 then
			return false
		end

		local hookType = hangableItem:getThingType():isHookEast() and "east" or "south"

		for _, item in ipairs(items) do
			local thingType = item:getThingType()

			if thingType:isHookEast() and hookType == "east" then
				return true
			elseif thingType:isHookSouth() and hookType == "south" then
				return true
			end
		end

		return false
	else
		if not tile:isWalkable(true, true) or tile:getProperty() ~= PropertyOwn or tile:getTileType() ~= TileType.House and tile:getTileType() ~= TileType.Room then
			return false
		end

		local items = tile:getItems()

		for _, item in ipairs(items) do
			local thingType = item:getThingType()

			if not thingType:isGround() then
				return false
			end
		end
	end

	return true
end

function GameHouse:updateDecorWidgetState(data)
	local panel = self.decoration_info_window.content.preview_panel

	panel.info.ownership:setText(data.placed and "Already placed" or data.unlocked and "Owned" or "Not owned")
	self.decoration_info_window.place_button:setEnabled(data.unlocked and not data.placed)
end

function GameHouse.onBalanceChange(premium, balance)
	local self = GameHouse
	local panel = self.bottom_panel.left_panel.currency_holder.silver_amount

	panel.value:setText(string.format("%d", balance))
	panel:refresh()

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	if self.current_info_window == self.room_info_window then
		local panel = self.current_info_window.content.materials_panel
		local materials = 0

		for _, widget in ipairs(panel:getChildren()) do
			if widget.checkFunction then
				widget.checkFunction(player)

				materials = materials + 1
			end
		end

		if materials == 0 then
			local player = g_game.getLocalPlayer()
			local price = self.current_info_window.data.use_price or self.current_info_window.data.price or 0

			self.current_info_window.place_button:setEnabled(price <= player.silverBalance)
		end
	elseif self.current_info_window == self.farm_info_window then
		local panel = self.current_info_window

		if panel and panel.checkFunction then
			panel.checkFunction(player)
		end
	end
end

function GameHouse.onEffortChange(player, balance)
	local self = GameHouse
	local premiumEffortTooltip = {
		header = {
			text = "This resource is spent when placing an item on your Land.\nOpen World activities such as killing creatures and participating in quests will restore it.",
			complement = cfg.getCommunityEffortTooltip(true)
		}
	}
	local landSize = self:getSelectedLandSize()

	if landSize and not self:selectedLandIsCommunity() then
		premiumEffortTooltip.header.complement = cfg.getLandEffortTooltip(landSize, true)
	end

	local bottom_panel = self.land_tracker_window.bottom_panel

	if bottom_panel then
		bottom_panel.effort:setText(string.format("%d", balance))

		bottom_panel.effort.premiumEffortTooltip = premiumEffortTooltip
	end

	local panel = self.bottom_panel.left_panel.currency_holder.effort_amount

	panel.value:setText(string.format("%d", balance))
	panel:refresh()

	panel.premiumEffortTooltip = premiumEffortTooltip

	function panel.onHoverChange(panel, hovered)
		if hovered then
			g_gameTooltip.displayEffortPremiumTooltip(panel)
		end
	end

	if self.current_info_window == self.farm_info_window then
		local panel = self.current_info_window

		if panel and panel.checkFunction then
			panel.checkFunction(player)
		end
	end
end

function GameHouse:onTopMenuButtonClicked(buttonName, updateOnly)
	if not updateOnly and self.current_info_window then
		self.current_info_window:hide()

		self.current_info_window = nil
	end

	if buttonName == "info" then
		self.current_info_window = self.information_window

		self.information_window:show()

		local panel = self.information_window.content
		local current_house = panel.current

		current_house.bonuses:destroyChildren()

		if not self.current_selected_land then
			return
		end

		local data = self:getHouseInfoByModel(self.current_selected_land.info.model)

		if not data then
			return
		end

		current_house.image:setImageSource(string.format("/images/ui/windows/house/preview/houses/%i/%i", self.current_selected_land.info.model, 1))
		current_house.image:setMarginLeft((current_house.image:getParent():getWidth() - current_house.image:getWidth()) / 2)
		current_house.name:setText(self.current_selected_land.info.name)

		if data.house_rooms then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

			widget.text:setText(string.format("%i room%s", data.house_rooms, data.house_rooms > 1 and "s" or ""))
			widget:setIcon("/images/ui/windows/house/bonuses_icons/rooms")
		end

		if data.depot then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

			widget.text:setText(depotModelToName[data.depot])
			widget:setIcon("/images/ui/windows/house/bonuses_icons/depots")
		end

		if data.bonuses then
			for _, info in ipairs(data.bonuses) do
				local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

				widget.text:setText(info.text)
				widget:setIcon("/images/ui/windows/house/bonuses_icons/farming")

				if info.tooltip then
					widget:setTooltip(info.tooltip)
				end
			end
		end
	elseif buttonName == "claim" then
		modules.game_interface.startLandModify()
	elseif buttonName == "invite" then
		if not updateOnly then
			self.current_info_window = self.invite_info_window

			self.invite_info_window:show()
		end

		local panel = self.invite_info_window.content

		panel:destroyChildren()

		for _, player in ipairs(self.current_selected_land.guests) do
			local widget = g_ui.createWidget("GameHouseInviteInfoWindowItem", panel)

			widget.name:setText(player.name)
			widget.level:setText(string.format("Level: %i", player.level))
			widget.outfit:setOutfit(player.outfit)

			function widget.delete_button.onClick()
				self:onRemoveGuestButtonClicked(player)
			end
		end
	elseif buttonName == "upgrade" then
		if not updateOnly then
			self.current_info_window = self.upgrade_info_window

			self.upgrade_info_window:show()
		end

		local panel = self.upgrade_info_window.content
		local current_house = panel.current
		local upgrade_house = panel.upgrade

		current_house.bonuses:destroyChildren()
		upgrade_house.bonuses:destroyChildren()

		if not self.current_selected_land then
			return
		end

		local data = self:getHouseInfoByModel(self.current_selected_land.info.model)

		if not data then
			return
		end

		self.top_panel.button_panel.upgrade_button:setEnabled(data.house_upgrade)

		if self.upgrade_info_window:isVisible() then
			self.upgrade_info_window:setVisible(data.house_upgrade)
		end

		current_house.image:setImageSource(string.format("/images/ui/windows/house/preview/houses/%i/%i", self.current_selected_land.info.model, 1))
		current_house.image:setMarginLeft((current_house.image:getParent():getWidth() - current_house.image:getWidth()) / 2)
		current_house.name:setText(self.current_selected_land.info.name)

		if data.house_rooms then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

			widget.text:setText(string.format("%i room%s", data.house_rooms, data.house_rooms > 1 and "s" or ""))
			widget:setIcon("/images/ui/windows/house/bonuses_icons/rooms")
		end

		if data.depot then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

			widget.text:setText(depotModelToName[data.depot])
			widget:setIcon("/images/ui/windows/house/bonuses_icons/depots")
		end

		if data.bonuses then
			for _, info in ipairs(data.bonuses) do
				local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", current_house.bonuses)

				widget.text:setText(info.text)
				widget:setIcon("/images/ui/windows/house/bonuses_icons/farming")

				if info.tooltip then
					widget:setTooltip(info.tooltip)
				end
			end
		end

		data = self:getHouseInfoByModel(data.house_upgrade)

		if not data then
			return
		end

		local materials = data.materials

		upgrade_house.image:setImageSource(string.format("/images/ui/windows/house/preview/houses/%i/%i", data.house_model, 1))
		upgrade_house.image:setMarginLeft((upgrade_house.image:getParent():getWidth() - upgrade_house.image:getWidth()) / 2)
		upgrade_house.name:setText(data.name)
		panel.materials_panel:destroyChildren()

		local materials_panel_height = 0

		if data.house_rooms then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", upgrade_house.bonuses)

			widget.text:setText(string.format("%i room%s", data.house_rooms, data.house_rooms > 1 and "s" or ""))
			widget:setIcon("/images/ui/windows/house/bonuses_icons/rooms")
		end

		if data.depot then
			local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", upgrade_house.bonuses)

			widget.text:setText(depotModelToName[data.depot])
			widget:setIcon("/images/ui/windows/house/bonuses_icons/depots")
		end

		if data.bonuses then
			for _, info in ipairs(data.bonuses) do
				local widget = g_ui.createWidget("GameHouseUpgradeBonusItem", upgrade_house.bonuses)

				widget.text:setText(info.text)
				widget:setIcon("/images/ui/windows/house/bonuses_icons/farming")

				if info.tooltip then
					widget:setTooltip(info.tooltip)
				end
			end
		end

		local materialsCheckList = {}

		if data.price and data.price > 0 then
			local widget = g_ui.createWidget("GameHouseUpgradeInfoMaterialsPanelItem", panel.materials_panel)

			widget.name:setText("Silver")
			widget.icon:setImageSource("/images/ui/icons/silver_44")
			widget.amount:setText(string.format("%i", data.price))

			function widget.checkFunction(player)
				local amount = player.silverBalance

				materialsCheckList.silver = amount >= data.price

				widget.amount:setText(string.format("%i", data.price))
				widget.amount:setOn(amount >= data.price)

				local canPurchase = true

				for _, value in pairs(materialsCheckList) do
					if not value then
						canPurchase = false

						break
					end
				end

				panel.upgrade_button:setEnabled(canPurchase)
			end

			widget.checkFunction(g_game.getLocalPlayer())

			materials_panel_height = materials_panel_height + widget:getHeight()
		end

		if materials and #materials > 0 then
			for index, material in ipairs(materials) do
				local widget = g_ui.createWidget("GameHouseUpgradeInfoMaterialsPanelItem", panel.materials_panel)

				widget.name:setText(material.name:titleCase())
				widget.icon:setItemId(material.clientId)

				function widget.checkFunction(player)
					local amount = player:getItemsCount(material.clientId)

					materialsCheckList[material.clientId] = amount >= material.amount

					widget.amount:setText(string.format("%i / %i", amount, material.amount))
					widget.amount:setOn(amount >= material.amount)

					local canPurchase = true

					for _, value in pairs(materialsCheckList) do
						if not value then
							canPurchase = false

							break
						end
					end

					panel.upgrade_button:setEnabled(canPurchase)
				end

				widget.checkFunction(g_game.getLocalPlayer())

				if index % 2 == 0 then
					materials_panel_height = materials_panel_height + widget:getHeight()
				end
			end
		end

		local height = self.upgrade_info_window.minHeight

		self.upgrade_info_window:setHeight(height + materials_panel_height)

		function panel.upgrade_button.onClick()
			self:onUpgradeHouseButtonClicked(self.current_selected_land.info.id)
		end
	end
end

function GameHouse:getLandDataById(id)
	if not self.data.manage then
		return nil
	end

	for _, land in ipairs(self.data.manage) do
		if land.info.id == id then
			return land
		end
	end

	return nil
end

function GameHouse:setupTopMenuBar(landId)
	local data = self.data.manage
	local panel = self.top_panel

	if not panel then
		return
	end

	if not data or #data == 0 then
		self.current_selected_land = nil
	else
		self.current_selected_land = self:getLandDataById(landId) or self:getClosestLandData()
	end

	if not self.current_selected_land then
		panel.button_panel.claim_button:show()
		panel.button_panel.invite_button:hide()
		panel.button_panel.upgrade_button:hide()
		panel.house_title:hide()
		panel.house_icon:hide()
		panel.selection_button:hide()
		panel.button_panel:resize()
		panel:setWidth(panel.button_panel:getWidth() + 15)
	else
		panel.button_panel.claim_button:setVisible(g_game.getLocalPlayer():isGamemaster() or g_game.isRavenQuest())
		panel.button_panel.invite_button:setVisible(not self.current_selected_land.info.isCommunityHouse)
		panel.button_panel.upgrade_button:show()
		panel.house_title:show()
		panel.house_icon:show()
		panel.house_title.size_description:setText(self.current_selected_land.info.name)
		panel.house_title.house_description:setText(string.format("%s", self.current_selected_land.info.region))
		panel.button_panel:resize()
		panel:setWidth(panel.house_icon:getWidth() + panel.house_icon:getMarginLeft() + panel.house_title:getWidth() + panel.house_icon:getMarginLeft() + panel.button_panel:getWidth() + 15)
		panel:setWidth(panel:getWidth() + panel.selection_button:getWidth() + panel.selection_button:getMarginLeft())

		if panel.button_panel.claim_button:isVisible() then
			panel:setWidth(panel:getWidth() + panel.button_panel.claim_button:getWidth() + panel.button_panel.claim_button:getMarginLeft())
		end

		panel.selection_button:setVisible(#data > 1)
	end

	panel:setImageSize(string.format("%s %s", panel:getWidth() - 8, 90))
	self.bottom_panel.left_panel.rooms:setEnabled(self.current_selected_land)
	self.bottom_panel.left_panel.decoration:setEnabled(self.current_selected_land)
end

function GameHouse.onDeleteProperty()
	local self = GameHouse

	if not self.current_selected_land or not g_game.isInHouseMode() then
		return
	end

	if self.confirmation_box then
		self.confirmation_box:destroy()

		self.confirmation_box = nil
	end

	local function yesCallback()
		self.confirmation_box:destroy()

		self.confirmation_box = nil

		self:deleteProperty(self.current_selected_land.info.id)
	end

	local function noCallback()
		self.confirmation_box:destroy()

		self.confirmation_box = nil
	end

	self.confirmation_box = displayGeneralBox(tr("Delete Property"), "Property will be deleted permanently and 80% of the materials spent upgrading your land\nwill be refunded to your bank inbox.\nExcluding Land Deeds and Ravencrest Emblems spent which are always 100% refunded.\n\nDo you want to continue?", {
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

function GameHouse:deleteProperty(houseId)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local name = player:getName()
	local message = string.format("You are about to delete {%s, #e02a2a} property.\n{This action can't be undone., #e02a2a}\n\nIf you wish to proceed please confirm your character:", name)

	self.confirmation_box = displayTextInputBox("Delete Property", message, "#e02a2a", function(inputText)
		if inputText and inputText:lower() == name:lower() then
			self:sendOpcode({
				action = "house_delete_property",
				houseId = houseId
			})

			self.confirmation_box = nil
		end
	end, function()
		self.confirmation_box = nil
	end)

	if self.confirmation_box then
		self.confirmation_box:raise()
		self.confirmation_box.lineEdit:focus()
	end
end

function GameHouse:onRemoveGuestButtonClicked(player)
	local function yesCallback()
		self.confirmation_box:destroy()

		self.confirmation_box = nil

		self:sendOpcode({
			action = "house_remove_access",
			houseId = self.current_selected_land.info.id,
			name = player.name
		})
	end

	local function noCallback()
		self.confirmation_box:destroy()

		self.confirmation_box = nil
	end

	self.confirmation_box = displayGeneralBox(tr("Remove Guest"), tr("Are you sure you want to remove %s from guests list?", player.name), {
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

function GameHouse:onInviteButtonClicked()
	if not self.current_selected_land or not g_game.isInHouseMode() then
		return
	end

	local function yesCallback(inputText)
		self.confirmation_box = nil

		self:sendOpcode({
			action = "house_add_access",
			houseId = self.current_selected_land.info.id,
			name = inputText
		})
	end

	local function noCallback()
		self.confirmation_box = nil
	end

	self.confirmation_box = displayTextInputBox("Invite Player", "Enter name of the player you wish to invite to your house.", "", yesCallback, noCallback)

	if self.confirmation_box then
		self.confirmation_box:raise()
		self.confirmation_box.lineEdit:focus()
	end
end

function GameHouse:openHouseSelectionMenu()
	if not self.current_selected_land or not g_game.isInHouseMode() then
		return
	end

	local menu = g_ui.createWidget("PopupMenu")

	for _, land in ipairs(self.data.manage) do
		local item = menu:addOption(land.info.name, function()
			self:onChangeSelectedHouse(land)
		end)
	end

	local panel = self.top_panel.house_title
	local pos = panel:getPosition()

	pos.y = self.top_panel:getY() + self.top_panel:getHeight()

	menu:display(pos, false, panel)
end

function GameHouse:onChangeSelectedHouse(land)
	self:setupTopMenuBar(land.info.id)

	if self.current_info_window then
		self.current_info_window:hide()
	end

	self:onTopMenuButtonClicked("upgrade", true)
	self:populateWidgetList(self.current_menu.widget:getId(), self.current_menu.submenu.widget:getId())
end

function GameHouse:getClosestLandData()
	local player = g_game.getLocalPlayer()

	if not player then
		return self.data.manage[1]
	end

	local playerPos = player:getPosition()
	local closestLand
	local closestDistance = 999999

	for _, land in ipairs(self.data.manage) do
		local landPos = land.info.position
		local distance = math.max(math.abs(playerPos.x - landPos.x), math.abs(playerPos.y - landPos.y))

		if distance < closestDistance then
			closestLand = land
			closestDistance = distance
		end
	end

	return closestLand
end

function GameHouse:getHouseInfoByModel(id)
	for index, land in pairs(self.data.land or {}) do
		if land.house_model == id then
			return land
		end
	end

	return nil
end

function GameHouse:onUpgradeHouseButtonClicked(houseId)
	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function yesCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil

		self:sendOpcode({
			action = "house_upgrade_property",
			houseId = houseId
		})
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Upgrade Property"), "Property will be upgraded permanently.\nDo you want to continue?", {
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

function GameHouse:onUpgradeRoomButtonClicked(houseId, modelId)
	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function yesCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil

		self:sendOpcode({
			action = "house_upgrade_room",
			houseId = houseId,
			index = modelId
		})
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Upgrade Room"), "Room will be upgraded permanently.\nDo you want to continue?", {
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

function GameHouse.onTaskUpdate(data)
	local self = GameHouse

	if data.quests then
		data = data.quests[1]

		if data and data.name == "The City of Ravencrest" and self.current_menu.widget then
			self:populateWidgetList(self.current_menu.widget:getId(), self.current_menu.submenu.widget:getId())
			self:selectSubMenuWidget(self.current_menu.widget, self.current_menu.submenu.widget:getId())
		end
	end
end

function GameHouse:getListItemWidgetByName(name)
	local panel = self.bottom_panel.middle_panel.content

	for _, widget in ipairs(panel:getChildren()) do
		if widget:getId():lower() == name:lower() then
			return widget
		end
	end

	return nil
end

function GameHouse:getSelectedLandId()
	return self.current_selected_land and self.current_selected_land.info.land_id or nil
end

function GameHouse:getSelectedLandSize()
	return self.current_selected_land and self.current_selected_land.info.land_size or nil
end

function GameHouse:selectedLandIsCommunity()
	return self.current_selected_land and self.current_selected_land.info.isCommunityHouse or false
end

function GameHouse:getProductionTilesMultiplier()
	return g_game.isRavenQuest() and (cfg.productionTiles[self:getSelectedLandSize() or 0] or 1) or 1
end

function GameHouse.onUpdateLandPlotTileDescription(tile)
	local self = GameHouse
	local pos = tile:getPosition()

	if not pos then
		return
	end

	local hash = Position.generateHash(pos)
	local data = self.landPlotsCenterPositions[hash] or self.communityHousesCenterPositions[hash]

	if not data then
		return
	end

	local model = HouseModelsBySize[data.size]

	if not model then
		return
	end

	local windowStyle = cfg.houseModelToWindowStyle[model]

	if not windowStyle then
		return
	end

	local prevWindow = tile:getInteractionWidget()

	if prevWindow then
		prevWindow:destroy()
	end

	local property = tile:getProperty()

	if property == PropertyOwn or property == PropertyOccupied then
		return
	end

	local window = g_ui.createWidget(windowStyle)

	if not window then
		tile:setInteractionWidget(nil)

		return
	end

	tile:setInteractionWidget(window, 1)
end

function GameHouse:getLandCenterTile(tile, range)
	local centerPositions, isCommunityHouse

	if tile:isLandPlot() then
		centerPositions = self.landPlotsCenterPositions
	elseif tile:isHousePlot() then
		centerPositions = self.communityHousesCenterPositions
		isCommunityHouse = true
	end

	if not centerPositions then
		return nil
	end

	local range = math.ceil(cfg.maxLandSize / 2)
	local pos = tile:getPosition()

	for x = -range, range do
		for y = -range, range do
			local checkPos = {
				x = pos.x + x,
				y = pos.y + y,
				z = pos.z
			}
			local hash = Position.generateHash(checkPos)

			if centerPositions[hash] then
				return g_map.getTile(checkPos), isCommunityHouse
			end
		end
	end

	return nil
end

function GameHouse:checkLandPlotTileDescriptionClick(tile, mousePosition)
	if not tile then
		return false
	end

	if not g_game.isInHouseMode() then
		return false
	end

	if not self.top_panel.button_panel.claim_button:isVisible() then
		return false
	end

	local centerTile, isCommunityHouse = self:getLandCenterTile(tile, 4)

	if not centerTile then
		return false
	end

	local interactionWidget = centerTile:getInteractionWidget()

	if not interactionWidget then
		return false
	end

	if not interactionWidget:containsPoint(mousePosition) then
		return false
	end

	if isCommunityHouse then
		GameHouse:sendOpcode({
			isCommunityHouse = true,
			action = "house_claim_land",
			landPos = {
				x = centerTile:getPosition().x,
				y = centerTile:getPosition().y,
				z = centerTile:getPosition().z
			}
		})
	else
		modules.game_interface.startLandModify(true)
	end

	return true
end

local function getDistanceBetween(firstPosition, secondPosition)
	local xDif = math.abs(firstPosition.x - secondPosition.x)
	local yDif = math.abs(firstPosition.y - secondPosition.y)
	local posDif = math.max(xDif, yDif)

	if firstPosition.z ~= secondPosition.z then
		posDif = posDif + 15
	end

	return posDif
end

local function secondsToHours(seconds)
	local days = math.floor(seconds / 172800)
	local hours = math.floor((seconds - days * 172800) / 3600)
	local minutes = math.floor((seconds - days * 172800 - hours * 3600) / 60)
	local seconds = math.floor(seconds - days * 172800 - hours * 3600 - minutes * 60)

	if hours > 0 and minutes > 0 then
		return string.format("%dh%dm", hours, minutes)
	elseif hours > 0 then
		return string.format("%dh", hours)
	elseif minutes > 0 and seconds > 0 then
		return string.format("%dm%ds", minutes, seconds)
	elseif minutes > 0 then
		return string.format("%dm", minutes)
	else
		return string.format("%ds", seconds)
	end
end

function GameHouse:setupLandTrackerTopPanel()
	local data = self.data.land_tracker
	local player = g_game.getLocalPlayer()

	if not data or not player then
		return
	end

	local tpCooldown = math.max(0, data.teleportCooldown - os.time())
	local distance = getDistanceBetween(player:getPosition(), data.position)
	local widget = self.land_tracker_window.land_info_panel

	widget.icon:setImageSource(sizeToIcon[data.land_size])
	widget.size:setText(sizeToText[data.land_size])
	widget.distance:setText(string.format("%d %s away", distance, distance > 1 and "tiles" or "tile"))
	widget.region:setText(data.region)
	widget.teleport_button:setImageSource("/images/ui/windows/house/land_tracker/teleport_button_" .. (data.hasTeleport and (tpCooldown > 0 and 3 or 2) or 1))
	widget.teleport_button:setTooltip(tpCooldown > 0 and "Teleport Cooldown: " .. secondsToHours(tpCooldown) or data.hasTeleport and "Teleport Home" or "No Teleport")

	widget.teleport_button.hasTeleport = data.hasTeleport
	widget.teleport_button.tpCooldown = data.teleportCooldown

	if data.hasTeleport then
		function widget.teleport_button.onClick()
			self:sendOpcode({
				action = "house_teleport_home"
			})
		end
	end

	widget.land_position = data.position

	if data.position then
		function widget.map_button.onClick()
			self:centerMapOnHouse()
		end
	end
end

function GameHouse:populateLandTrackerList()
	local list = self.land_tracker_window.list

	list:destroyChildren()

	local crops = self.data.land_tracker.crops

	if table.empty(crops) then
		g_ui.createWidget("GameHouseLandTrackerEmptyListEntry", list)
		self.land_tracker_window:setOn(false)

		return
	else
		self.land_tracker_window:setOn(true)
	end

	for _, crop in ipairs(crops) do
		local widget = g_ui.createWidget("GameHouseLandTrackerListEntry", list)

		if crop.clientId then
			if type(crop.clientId) == "table" then
				widget.item:setMarginLeft(7)
				widget.item:setMarginBottom(10)
				widget.item:setSize({
					height = 48,
					width = 48
				})
				widget.item:setItemId(crop.clientId[1])
				widget.stable_right:setItemId(crop.clientId[2])
			else
				widget.item:setItemId(crop.clientId)
			end
		end

		local function createWidget(text, time)
			local hasPrevious = not table.empty(widget.list:getChildren())

			if hasPrevious then
				widget:setHeight(widget:getHeight() + 43)
				g_ui.createWidget("GameHouseLandTrackerHorizontalSeparator", widget.list)
			end

			local tmpWidget = g_ui.createWidget("GameHouseLandTrackerEntryPanel", widget.list)

			if text then
				tmpWidget.name:setText(text)
			end

			if time then
				local value, total = math.max(0, time.value - os.time()), time.total
				local percent = total > 0 and math.min(100, math.max(0, value / total * 100)) or 0

				tmpWidget.bar:setPercent(math.abs(percent - 100))
				tmpWidget.time:setText(percent == 0 and "" or secondsToHours(value))
				tmpWidget.time:setOn(percent == 0)

				tmpWidget.total = total
				tmpWidget.value = time.value
			else
				tmpWidget:disable()
			end
		end

		if crop.mounts then
			local male = crop.mounts.male

			if male then
				male.outfit.mount = male.outfit.mountBody

				widget.moa_male:setOutfit(male.outfit)
				widget.moa_male:setVisible(true)
			end

			local female = crop.mounts.female

			if female then
				female.outfit.mount = female.outfit.mountBody

				widget.moa_female:setOutfit(female.outfit)
				widget.moa_female:setVisible(true)
			end

			if crop.state == 0 then
				createWidget("Mating")
				createWidget("Hatching")
			elseif crop.state == 1 then
				createWidget("Mating", {
					value = crop.endTime,
					total = crop.endTime - crop.startTime
				})
				createWidget("Hatching")
			elseif crop.state == 2 then
				createWidget("Mating")
				createWidget("Hatching", {
					value = crop.endTime,
					total = crop.endTime - crop.startTime
				})
			elseif crop.state == 3 then
				local interaction = crop.interactions and crop.interactions[1]

				if interaction then
					createWidget(interaction.name, {
						value = crop.endTime,
						total = crop.endTime - crop.startTime
					})
				end
			end
		else
			if crop.gatheringTotal then
				createWidget("Gathering", {
					value = crop.gathering,
					total = crop.gatheringTotal
				})
			end

			if crop.butcheringTotal then
				createWidget("Butchering", {
					value = crop.butchering,
					total = crop.butcheringTotal
				})
			end
		end
	end
end

function GameHouse:updateLandTrackerWindow()
	local window = GameHouse.land_tracker_window

	if not window:isVisible() then
		return
	end

	local minimapWindow = modules.game_minimap.minimapWindow
	local windowSize = g_window.getSize()
	local landTrackerSize = window:getSize()
	local minimapSize = minimapWindow:getSize()
	local pos = minimapWindow:getPosition()

	if pos.x + landTrackerSize.width >= windowSize.width then
		pos.x = pos.x - landTrackerSize.width - 5
	elseif pos.x - landTrackerSize.width < 1 then
		pos.x = pos.x + minimapSize.width + 5
	else
		pos.x = pos.x - landTrackerSize.width - 5
	end

	if pos.y + landTrackerSize.height >= windowSize.height then
		pos.y = pos.y - (pos.y + landTrackerSize.height - windowSize.height) - 5
	end

	window:setPosition(pos)
end

function GameHouse:onLandTrackerVisibilityChange()
	local data = GameHouse.data.land_tracker
	local player = g_game.getLocalPlayer()

	if not data or not player then
		return
	end

	local window = GameHouse.land_tracker_window
	local visible = window:isVisible()
	local minimapWindow = modules.game_minimap.minimapWindow

	if visible then
		GameHouse:setupLandTrackerTopPanel()
		GameHouse:populateLandTrackerList()
		GameHouse:updateLandTrackerWindow()

		local widget = window.land_info_panel

		window.positionEvent = cycleEvent(function()
			local dist = getDistanceBetween(player:getPosition(), widget.land_position)

			widget.distance:setText(string.format("%d %s away", dist, dist > 1 and "tiles" or "tile"))
		end, 1000)
		window.listTimeEvent = cycleEvent(function()
			local list = window.list

			for _, child in ipairs(list:getChildren()) do
				if child.list then
					for _, widget in ipairs(child.list:getChildren()) do
						if widget.total then
							local total = widget.total
							local value = math.max(0, widget.value - os.time())
							local percent = total > 0 and math.min(100, math.max(0, value / total * 100)) or 0

							widget.bar:setPercent(math.abs(percent - 100))
							widget.time:setText(percent == 0 and "" or secondsToHours(value))
							widget.time:setOn(percent == 0)
						end
					end
				end
			end
		end, 1000)
		window.teleportButtonEvent = cycleEvent(function()
			local tpButton = widget.teleport_button
			local tpCooldown = math.max(0, tpButton.tpCooldown - os.time())

			tpButton:setImageSource("/images/ui/windows/house/land_tracker/teleport_button_" .. (tpButton.hasTeleport and (tpCooldown > 0 and 3 or 2) or 1))
			tpButton:setTooltip(tpCooldown > 0 and "Teleport Cooldown: " .. secondsToHours(tpCooldown) or tpButton.hasTeleport and "Teleport Home" or "No Teleport")
		end, 1000)
	else
		if window.positionEvent then
			removeEvent(window.positionEvent)

			window.positionEvent = nil
		end

		if window.listTimeEvent then
			removeEvent(window.listTimeEvent)

			window.listTimeEvent = nil
		end

		if window.teleportButtonEvent then
			removeEvent(window.teleportButtonEvent)

			window.teleportButtonEvent = nil
		end
	end

	local houseButton = minimapWindow:recursiveGetChildById("houseMakerButton")

	if houseButton then
		houseButton:setOn(visible)
	end
end

function GameHouse:showLandTracker()
	self.land_tracker_window:show()
	self.land_tracker_window:raise()
end

function GameHouse:hideLandTracker()
	self.land_tracker_window:hide()
end

function GameHouse:displayInformationTooltip(widget)
	local tooltip = self.controls_info_window

	if not tooltip then
		return
	end

	if widget:isHovered() then
		local pos = widget:getPosition()

		pos.x = pos.x + widget:getWidth() + 5
		pos.y = pos.y + widget:getHeight() + 5

		tooltip:setPosition(pos)
		tooltip:show()
		tooltip:raise()

		function tooltip:onGeometryChange()
			local pos = widget:getPosition()

			pos.x = pos.x + widget:getWidth() + 5
			pos.y = pos.y + widget:getHeight() + 5

			tooltip:setPosition(pos)
		end
	else
		tooltip:hide()
	end
end

function GameHouse:centerMapOnHouse()
	local data = self.data and self.data.land_tracker

	if not data then
		return
	end

	if not data.position then
		return
	end

	g_worldMap.window:show()
	g_worldMap.window:raise()
	g_worldMap.window:focus()
	g_worldMap.centerOnPosition(data.position, 5)
end

function GameHouse:playerHasHouseStorage()
	return self:getAnyHouseIdAndDepotId() ~= nil
end

function GameHouse:getAnyHouseIdAndDepotId()
	if not self.player_houses then
		return nil
	end

	for _, house in ipairs(self.player_houses) do
		if house.depotIds and #house.depotIds > 0 then
			return house.id, house.depotIds[1]
		end
	end

	return nil
end

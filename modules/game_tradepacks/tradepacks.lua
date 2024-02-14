-- chunkname: @/modules/game_tradepacks/tradepacks.lua

GameTradepacks = {
	sortDirection = "desc",
	sortOption = "demand",
	sort_buttons = {},
	sortedRecipes = {},
	indexedRecipes = {}
}

function GameTradepacks:loadConfig()
	local func, error = loadfile("config.lua")

	if not func then
		g_logger.fatal(error)

		return false
	end

	func()
	dofile("recipes.lua")

	local env = getfenv(0)

	env.cfg = {}

	setmetatable(env.cfg, {
		__index = env
	})
	setfenv(func, env.cfg)

	return true
end

function GameTradepacks:init()
	self:loadConfig()

	for category, recipes in pairs(cfg.recipes) do
		for __, recipe in ipairs(recipes) do
			if category ~= TRADEPACK_CATEGORY_QUEST then
				recipe.demand = 0
				recipe.category = category

				table.insert(self.sortedRecipes, recipe)

				self.indexedRecipes[recipe.itemid] = recipe
			end
		end
	end

	g_ui.importStyle("styles/left_window.otui")
	g_ui.importStyle("styles/tradepacks.otui")
	g_ui.importStyle("styles/right_window.otui")
	g_ui.importStyle("styles/main.otui")

	self.window = g_ui.createWidget("GameTradepacksWindow", modules.game_interface.getHUDPanel())

	self.window:hide()
	connect(self.window, {
		onVisibilityChange = GameTradepacks.updateDemand
	})

	self.sort_buttons.demand = self.window.content.top_panel.demand
	self.sort_buttons.name = self.window.content.top_panel.name
	self.list_panel = self.window.content.list_panel
	self.search_panel = self.window.content.top_panel.search_panel
	self.leftAttachedWindow = g_ui.createWidget("GameTradepacksWindowLeftWindow", modules.game_interface.getHUDPanel())

	self.leftAttachedWindow:setAttachedTo(self.window)
	self.leftAttachedWindow:hide()

	self.rightAttachedWindow = g_ui.createWidget("GameTradepacksWindowRightWindow", modules.game_interface.getHUDPanel())

	self.rightAttachedWindow:setAttachedTo(self.window)
	self.rightAttachedWindow:hide()
	connect(self.rightAttachedWindow, {
		onVisibilityChange = function(window, visible)
			if not visible then
				signalcall(self.onDeSelectTradepack, self.rightAttachedWindow.widget)
			end
		end
	})
	connect(self.leftAttachedWindow, {
		onVisibilityChange = function(window, visible)
			if not visible then
				signalcall(self.onCloseTradepackBags)
			end
		end
	})
	self:sort("demand")
	addEvent(function()
		self:populateList()
	end)
	connect(Container, {
		onOpen = GameTradepacks.refreshOwnedMaterials,
		onRemoveItem = GameTradepacks.refreshOwnedMaterials,
		onUpdateItem = GameTradepacks.refreshOwnedMaterials,
		onAddItem = GameTradepacks.refreshOwnedMaterials
	})
	connect(g_game, {
		onGameStart = GameTradepacks.onGameStart
	})
	connect(LocalPlayer, {
		onPositionChange = GameTradepacks.onPositionChange
	})
	g_keyboard.bindKeyDown("T", self.toggle)
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Tradepacks, GameTradepacks.onExtendedOpcode)

	if g_game.isOnline() then
		GameTradepacks.onGameStart()
	end
end

function GameTradepacks:terminate()
	disconnect(self.window, {
		onVisibilityChange = GameTradepacks.updateDemand
	})
	self.window:destroy()
	disconnect(Container, {
		onOpen = GameTradepacks.refreshOwnedMaterials,
		onRemoveItem = GameTradepacks.refreshOwnedMaterials,
		onUpdateItem = GameTradepacks.refreshOwnedMaterials,
		onAddItem = GameTradepacks.refreshOwnedMaterials
	})
	disconnect(g_game, {
		onGameStart = GameTradepacks.onGameStart
	})
	disconnect(LocalPlayer, {
		onPositionChange = GameTradepacks.onPositionChange
	})
	g_keyboard.unbindKeyDown("T", modules.game_interface.gameMapPanel)
	g_keyboard.unbindKeyDown("T", self.window)
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Tradepacks)

	GameTradepacks = nil
end

function GameTradepacks.updateDemand(window, visible)
	if visible and GameTradepacks:canUpdateGlobalDemand() then
		GameTradepacks.lastGlobalDemandRequest = os.time()

		GameTradepacks:requestGlobalDemand()
	end
end

function GameTradepacks.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameTradepacks.search_panel:isActive() then
		return
	end

	if GameTradepacks.window:isVisible() then
		GameTradepacks.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameTradepacks.window:show()
		GameTradepacks.window:raise()
		GameTradepacks.refreshOwnedMaterials()
	end
end

function GameTradepacks:sort(id, internal)
	local toggle = false

	if self.sort_buttons.current and not internal then
		if self.sort_buttons.current == self.sort_buttons[id] then
			toggle = true
		else
			self.sort_buttons.current:setChecked(false)
			self.sort_buttons.current:setOn(false)
		end
	end

	self.sort_buttons.current = self.sort_buttons[id]

	self.sort_buttons.current:setChecked(true)

	if toggle then
		self.sort_buttons.current:setOn(not self.sort_buttons.current:isOn())
	else
		self.sort_buttons.current:setOn(false)
	end

	self.sortOption = id
	self.sortDirection = self.sort_buttons.current:isOn() and "asc" or "desc"

	local children = self.list_panel:getChildren()

	if self.sortOption == "demand" then
		table.sort(children, function(a, b)
			if self.sortDirection == "asc" then
				return a.recipe.demand < b.recipe.demand
			else
				return a.recipe.demand > b.recipe.demand
			end
		end)
	elseif self.sortOption == "name" then
		table.sort(children, function(a, b)
			if self.sortDirection == "asc" then
				return a.recipe.name < b.recipe.name
			else
				return a.recipe.name > b.recipe.name
			end
		end)
	end

	self:populateList(children)
end

function GameTradepacks:onSearchTextChanged(text)
	for _, child in ipairs(self.list_panel:getChildren()) do
		if not text or #text == 0 or string.find(string.lower(child.recipe.name), string.lower(text)) then
			child:show()
		else
			child:hide()
		end
	end

	self:sort(self.sortOption, true)
end

function GameTradepacks:populateList(sort)
	local player = g_game.getLocalPlayer()

	if not sort then
		for _, recipe in ipairs(self.sortedRecipes) do
			local widget = g_ui.createWidget("GameTradepacksWindowListItem", self.list_panel)

			widget.recipe = recipe

			widget.name:setText(recipe.name)
			widget.item:setItemId(recipe.clientId)

			for ___, material in ipairs(recipe.materials) do
				local material_widget = g_ui.createWidget("GameTradepacksWindowListMaterialItem", widget.material_list)

				material_widget.item:setItemId(material.clientId)
				material_widget:setTooltip(string.format("%ix %s", material.amount, material.name:titleCase()))

				material_widget.recipe = material

				if player then
					material_widget:setOn(player:getItemsCount(material.clientId) >= material.amount)
				end

				widget.expand_button.clickSound = true
				widget.expand_button.hoverSound = true

				function widget.expand_button.onClick()
					self:toggleRightPanel(widget)
				end

				widget.clickSound = true
				widget.hoverSound = true
				widget.onClick = widget.expand_button.onClick
			end
		end
	else
		self.list_panel:reorderChildren(sort)

		for _, widget in ipairs(sort) do
			local isActive = self.indexedRecipes[widget.recipe.itemid].active

			widget.demand:setText(isActive and self.indexedRecipes[widget.recipe.itemid].demand or "Inactive")
			widget.demand:setTooltip(isActive and "" or "This tradepack is not available to be crafted yet, it will unlock soon")
		end
	end
end

function GameTradepacks:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Tradepacks, g_game.serializeTable(data))
	end
end

function GameTradepacks.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Tradepacks or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "parse_global_demand" and data.demand then
		GameTradepacks:parseGlobalDemand(data)
		Tradepost:parseGlobalDemand(data)

		if data.packs then
			GameTradepacks:parseTradepackSlots(data.packs)
		end
	elseif data.action == "parse_post_demand" and data.demand then
		modules.game_worldmap.parsePostDemand(data.demand)
	elseif data.action == "parse_slots" then
		GameTradepacks:parseTradepackSlots(data.packs)
	elseif data.action == "parse_pack_demand" and data.demand then
		GameTradepacks:parsePackDemand(data)
	end
end

function GameTradepacks:parseGlobalDemand(data)
	for _, recipe in ipairs(self.sortedRecipes) do
		for itemid, demand in pairs(data.demand) do
			if recipe.itemid == itemid then
				recipe.demand = demand
				recipe.active = data.active[itemid]
				self.indexedRecipes[itemid].demand = demand
				self.indexedRecipes[itemid].active = data.active[itemid]
			end
		end
	end

	self:sort(self.sortOption, true)
end

function GameTradepacks.refreshOwnedMaterials()
	local self = GameTradepacks

	if not self.window:isVisible() then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	for _, widget in ipairs(self.list_panel:getChildren()) do
		for _, material in ipairs(widget.material_list:getChildren()) do
			local count = player:getItemsCount(material.recipe.clientId)

			material:setOn(count >= material.recipe.amount)
		end
	end

	if self.rightAttachedWindow:isVisible() then
		for _, material in ipairs(self.rightAttachedWindow.materials:getChildren()) do
			local count = player:getItemsCount(material.recipe.clientId)

			material.amount:setText(string.format("%i / %i", count, material.recipe.amount))
			material.amount:setOn(count >= material.recipe.amount)
		end
	end
end

function GameTradepacks.onGameStart()
	GameTradepacks.lastGlobalDemandRequest = os.time()

	GameTradepacks:requestGlobalDemand()
end

function GameTradepacks:toggleLeftPanel(toggle)
	if toggle == nil then
		toggle = not self.leftAttachedWindow:isVisible()
	end

	self.leftAttachedWindow:setVisible(toggle)
	self.leftAttachedWindow:followParent()
	self.window:recursiveGetChildById("bagButton"):setOn(toggle)
	GameNpc.window.topPanel:recursiveGetChildById("bagButton"):setOn(toggle)

	if toggle then
		signalcall(self.onOpenTradepackBags)
	else
		signalcall(self.onCloseTradepackBags)
	end
end

function GameTradepacks:parseTradepackSlots(packs)
	for storage = TRADEPACK_STORAGE_FIRST, TRADEPACK_STORAGE_LAST do
		local id = cfg.slots[storage]
		local data = packs[storage]

		if data and id then
			local total = data.total
			local panel = self.leftAttachedWindow[id]

			if not panel then
				return
			end

			for index, child in ipairs(panel:getChildren()) do
				child:setOn(false)
				child:setOn(index <= total)

				local packData = data.occupied[index]

				if packData then
					child:setItemId(packData.clientId)
					child:setTradepack(packData)

					function child.onClick()
						local menu = g_ui.createWidget("PopupMenu", panel)

						menu:addOption(tr("Drop tradepack"), function()
							self:sendOpcode({
								action = "drop_tradepack",
								packId = packData.uid
							})
						end)
						menu:display({
							x = child:getPosition().x + child:getWidth() + 5,
							y = child:getPosition().y
						}, false)
					end
				else
					child:setItemId(0)
					child:setTradepack(nil)
				end
			end
		end
	end
end

function GameTradepacks:toggleRightPanel(widget)
	local recipe = widget.recipe

	if self.rightAttachedWindow:isVisible() and self.rightAttachedWindow.recipe.itemid == recipe.itemid then
		self.rightAttachedWindow:setVisible(false)
		widget:setOn(false)

		return
	end

	self.rightAttachedWindow.recipe = recipe

	if self.rightAttachedWindow.widget then
		self.rightAttachedWindow.widget:setOn(false)
	end

	self.rightAttachedWindow.widget = widget

	widget:setOn(true)
	self.rightAttachedWindow:setVisible(true)
	self.rightAttachedWindow:followParent()

	local list_item = self.rightAttachedWindow.panel_top

	list_item.item:setItemId(recipe.clientId)
	list_item.name:setText(recipe.name)
	list_item.demand:setText(recipe.active and recipe.demand or "Inactive")
	list_item.demand:setTooltip(recipe.active and "" or "This tradepack is not available to be crafted yet, it will unlock soon")

	local materials_list = self.rightAttachedWindow.materials
	local player = g_game.getLocalPlayer()

	for index, material in ipairs(recipe.materials) do
		local material_widget = materials_list:getChildByIndex(index) or g_ui.createWidget("GameTradepacksWindowRightWindowListItem", materials_list)

		material_widget:show()
		material_widget.item:setItemId(material.clientId)
		material_widget.name:setText(material.name:titleCase())

		material_widget.recipe = material

		if player then
			local count = player:getItemsCount(material.clientId)

			material_widget.amount:setText(string.format("%i / %i", count, material.amount))
			material_widget.amount:setOn(count >= material.amount)
		end
	end

	for index = #recipe.materials + 1, #materials_list:getChildren() do
		materials_list:getChildByIndex(index):hide()
	end

	self:requestTradepack(recipe.itemid)
	signalcall(self.onSelectTradepack, widget)
end

function GameTradepacks.onPositionChange(player, position)
	local self = GameTradepacks

	if self.rightAttachedWindow:isVisible() then
		for _, demand in ipairs(self.rightAttachedWindow["Tradepost Location and Demand"]:getChildren()) do
			local dist = Position.greaterDistance(position, demand.tradepost.pos)

			demand.distance:setText(string.format("%i %s", dist, dist > 1 and "tiles" or "tile"))
		end
	end

	if Tradepost.craftWindow:isVisible() then
		for _, demand in ipairs(self.rightAttachedWindow["Tradepost Location and Demand"]:getChildren()) do
			if demand.extended then
				local dist = Position.greaterDistance(position, demand.tradepost.pos)

				demand.extended.distance:setText(string.format("%i %s", dist, dist > 1 and "tiles" or "tile"))
			end
		end
	end
end

function GameTradepacks:parsePackDemand(data)
	local list = self.rightAttachedWindow["Tradepost Location and Demand"]

	for index, tradepost in ipairs(data.demand) do
		local demand_widget = list:getChildByIndex(tradepost.id)

		if demand_widget then
			self.rightAttachedWindow:setOn(tradepost.active)
			demand_widget.demand:setText(data.active[tradepost.id] and tradepost.demand or "Inactive")
			demand_widget.demand:setTooltip(data.active[tradepost.id] and "" or "This tradepost is not available to be used yet, it will unlock soon")

			if demand_widget.extended then
				demand_widget.extended.demand:setText(data.active[tradepost.id] and tradepost.demand or "Inactive")
				demand_widget.extended.demand:setTooltip(data.active[tradepost.id] and "" or "This tradepost is not available to be used yet, it will unlock soon")
			end
		end
	end
end

function GameTradepacks:locateTradepost(id)
	local tradepost = Tradeposts[id]

	if tradepost then
		g_worldMap.iconSettings.showTradepost = true

		g_worldMap.updateIconFilter("showTradepost")
		g_worldMap.updateVisibleMarks(true)

		g_worldMap.zoom = 10

		addEvent(function()
			g_worldMap.window:show()
			g_worldMap.window:raise()
			g_worldMap.updateMap()
			g_worldMap.centerOnPosition(tradepost.pos)

			local flag = g_worldMap.getFlag(tradepost.pos, MAPMARK_TRADEPOST)

			if flag then
				g_effects.startBlink(flag, 15000, 500, true)
			end
		end)
	end
end

function GameTradepacks:requestTradepack(packId)
	local player = g_game.getLocalPlayer()

	if player then
		GameTradepacks.onPositionChange(player, player:getPosition())
		self:sendOpcode({
			action = "request_pack_demand",
			itemid = packId
		})
	end
end

function GameTradepacks:requestGlobalDemand()
	self:sendOpcode({
		action = "request_global_demand"
	})
end

function GameTradepacks:canUpdateGlobalDemand()
	local time = self.lastGlobalDemandRequest + cfg.tradepacks.globalDemandRefreshTime

	return time < os.time()
end

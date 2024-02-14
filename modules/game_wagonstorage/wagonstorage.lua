-- chunkname: @/modules/game_wagonstorage/wagonstorage.lua

GameWagonStorage = GameWagonStorage or {}

function GameWagonStorage:init()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Trading, GameWagonStorage.onTrading)
	g_ui.importStyle("styles/styles")
	g_ui.importStyle("styles/wagonstorage")
	g_ui.importStyle("styles/wagoninspect")

	GameWagonStorage.window = g_ui.createWidget("WagonStorageWindow", modules.game_interface.getHUDPanel())
	GameWagonStorage.window.size = GameWagonStorage.window:getSize()
	GameWagonStorage.window.marginRect = GameWagonStorage.window:getMarginRect()

	GameWagonStorage.window:hide()

	GameWagonStorage.playerPanel = GameWagonStorage.window:recursiveGetChildById("playerPanel")
	GameWagonStorage.storagePanel = GameWagonStorage.window:recursiveGetChildById("storagePanel")
	GameWagonStorage.playerItems = GameWagonStorage.window:recursiveGetChildById("playerItems")
	GameWagonStorage.storageItems = GameWagonStorage.window:recursiveGetChildById("storageItems")
	GameWagonStorage.window.top_panel.close_button.clickSound = true

	GameWagonStorage.window.top_panel.close_button:setChecked(true)

	GameWagonStorage.window.onEscape = GameWagonStorage.close
	GameWagonStorage.inspect = g_ui.createWidget("WagonInspectWindow", modules.game_interface.getHUDPanel())
	GameWagonStorage.inspect.size = GameWagonStorage.inspect:getSize()
	GameWagonStorage.inspect.marginRect = GameWagonStorage.inspect:getMarginRect()

	GameWagonStorage.inspect:hide()

	GameWagonStorage.inspectPanel = GameWagonStorage.inspect:recursiveGetChildById("inspectPanel")
	GameWagonStorage.inspectItems = GameWagonStorage.inspect:recursiveGetChildById("inspectItems")
	GameWagonStorage.inspect.top_panel.close_button.clickSound = true

	GameWagonStorage.inspect.top_panel.close_button:setChecked(true)

	GameWagonStorage.inspect.onEscape = GameWagonStorage.close
end

function GameWagonStorage:terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Trading)
	self:hide()
	GameWagonStorage.window:destroy()
	GameWagonStorage.inspect:destroy()
end

function GameWagonStorage:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Trading, g_game.serializeTable(data))
	end
end

function GameWagonStorage.onTrading(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Trading then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "wagon" then
		if data.subaction == "update" then
			GameWagonStorage.show(data)
		elseif data.subaction == "inspect" then
			GameWagonStorage.showInspect(data)
		elseif data.subaction == "close" then
			GameWagonStorage.hide()
		end
	end
end

function GameWagonStorage.resetInfo()
	if not table.empty(GameWagonStorage.playerItems:getChildren()) then
		GameWagonStorage.playerItems:destroyChildren()
	end

	if not table.empty(GameWagonStorage.storageItems:getChildren()) then
		GameWagonStorage.storageItems:destroyChildren()
	end

	if not table.empty(GameWagonStorage.inspectItems:getChildren()) then
		GameWagonStorage.inspectItems:destroyChildren()
	end
end

function GameWagonStorage.hide()
	if GameWagonStorage.window:isVisible() then
		g_layout.onCloseWindow(GameWagonStorage.window)
		GameWagonStorage.window:hide()
		g_mouse.popCursor()
	end

	if GameWagonStorage.inspect:isVisible() then
		g_layout.onCloseWindow(GameWagonStorage.inspect)
		GameWagonStorage.inspect:hide()
		g_mouse.popCursor()
	end

	GameWagonStorage.resetInfo()
end

function GameWagonStorage.close()
	GameWagonStorage:sendOpcode({
		action = "close",
		storageType = GameWagonStorage.storageType
	})
	GameWagonStorage.hide()
end

function GameWagonStorage.show(data)
	local player = g_game.getLocalPlayer()
	local player, tradepacks = player, data and data.tradepacks

	if not player or not tradepacks then
		return
	end

	GameWagonStorage.resetInfo()

	GameWagonStorage.storageType = tradepacks.storage.storageType

	GameWagonStorage.playerPanel.name:setText(player:getName())
	GameWagonStorage.playerPanel.outfit:setOutfit(player:getOutfit())

	local wagon = g_map.getCreatureById(tradepacks.wagonId)

	if wagon then
		GameWagonStorage.storagePanel.name:setText("Wagon")
		GameWagonStorage.storagePanel.outfit:setOutfit(wagon:getOutfit())
	end

	local function onDragDropCallback(self, widget)
		local item = widget and widget:isItem() and widget:getItem()
		local droppedWidget = self:getItem()

		if item and droppedWidget then
			GameWagonStorage:sendOpcode({
				action = "switch",
				storageType = GameWagonStorage.storageType,
				pack = {
					uid = item.tooltipInfo.uid,
					targetUid = droppedWidget.tooltipInfo.uid
				}
			})
		elseif droppedWidget and widget and widget:isItem() then
			self.onClick()
		end
	end

	for index, pack in ipairs(tradepacks.player.packs) do
		local widget = g_ui.createWidget("WarehouseItem", GameWagonStorage.playerItems)

		widget:setTradepack(pack)

		widget.onDragDrop = onDragDropCallback
		widget.clickSound = true

		function widget.onClick()
			GameWagonStorage:sendOpcode({
				action = "deposit",
				storageType = GameWagonStorage.storageType,
				pack = {
					uid = pack.uid
				}
			})
		end
	end

	for index, pack in ipairs(tradepacks.storage.packs) do
		local widget = g_ui.createWidget("WarehouseItem", GameWagonStorage.storageItems)

		widget:setTradepack(pack)

		widget.onDragDrop = onDragDropCallback
		widget.clickSound = true

		function widget.onClick()
			GameWagonStorage:sendOpcode({
				action = "collect",
				storageType = GameWagonStorage.storageType,
				pack = {
					uid = pack.uid
				}
			})
		end
	end

	local maxCap = math.max(tradepacks.player.maxCapacity, tradepacks.storage.maxCapacity)
	local minSize = math.max(2, maxCap + maxCap % 2)

	for p = 1, 2 do
		local panel = p == 1 and GameWagonStorage.playerItems or GameWagonStorage.storageItems
		local size = #panel:getChildren()
		local size, maxCapacity = size, p == 1 and tradepacks.player.maxCapacity or tradepacks.storage.maxCapacity

		if size < minSize then
			for i = 1, minSize - size do
				g_ui.createWidget("WarehouseItem", panel)
			end
		end

		local children = panel:getChildren()

		for i = 1, #children do
			children[i]:setEnabled(i <= maxCapacity)
			children[i].icon:setVisible(not children[i]:getItem() and i <= maxCapacity)
			children[i].icon:setImageSource("/images/ui/windows/dialogue/" .. (p == 1 and "char" or GameWagonStorage.storageType == TRADEPACK_STORAGE_WAGON and "wagon" or "ship"))
		end
	end

	local layout = GameWagonStorage.playerItems:getLayout()
	local slotHeight = layout:getCellSize().height
	local slotSpacing = layout:getCellSpacing().width
	local numRows = math.floor(maxCap / layout:getNumColumns()) + 1
	local itemsHeight = slotHeight * numRows + slotSpacing * (numRows - 1)

	GameWagonStorage.window:setHeight(GameWagonStorage.window.size.height + itemsHeight)
	GameWagonStorage.playerItems:setHeight(itemsHeight)
	GameWagonStorage.storageItems:setHeight(itemsHeight)

	if not GameWagonStorage.window:isVisible() then
		g_layout.onOpenWindow(GameWagonStorage.window, 100)
	end
end

function GameWagonStorage.showInspect(data)
	local tradepacks = data.tradepacks

	if not tradepacks then
		return
	end

	GameWagonStorage.resetInfo()

	GameWagonStorage.storageType = tradepacks.storage.storageType

	local wagon = g_map.getCreatureById(tradepacks.wagonId)

	if wagon then
		GameWagonStorage.inspectPanel.name:setText(wagon:getName())
		GameWagonStorage.inspectPanel.outfit:setOutfit(wagon:getOutfit())
	end

	for _, pack in ipairs(tradepacks.storage.packs) do
		local widget = g_ui.createWidget("WarehouseItem", GameWagonStorage.inspectItems)

		widget:setTradepack(pack)

		widget.canDragItem = nil
	end

	local panel = GameWagonStorage.inspectItems
	local size = #panel:getChildren()
	local maxCap = tradepacks.storage.maxCapacity
	local minSize = math.max(4, 4 * math.ceil(maxCap / 4))

	if size < minSize then
		for i = 1, minSize - size do
			g_ui.createWidget("WarehouseItem", panel)
		end
	end

	local children = panel:getChildren()

	for i = 1, #children do
		children[i]:setEnabled(i <= maxCap)
		children[i].icon:setVisible(not children[i]:getItem() and i <= maxCap)
		children[i].icon:setImageSource("/images/ui/windows/dialogue/" .. (GameWagonStorage.storageType == TRADEPACK_STORAGE_WAGON and "wagon" or "ship"))
	end

	local layout = GameWagonStorage.inspectItems:getLayout()
	local slotHeight = layout:getCellSize().height
	local slotSpacing = layout:getCellSpacing().width
	local numRows = math.floor(maxCap / layout:getNumColumns()) + 1
	local itemsHeight = slotHeight * numRows + slotSpacing * (numRows - 1)

	GameWagonStorage.inspect:setHeight(GameWagonStorage.inspect.size.height + itemsHeight)
	GameWagonStorage.inspectItems:setHeight(itemsHeight)

	if not GameWagonStorage.inspect:isVisible() then
		g_layout.onOpenWindow(GameWagonStorage.inspect, 100)
	end
end

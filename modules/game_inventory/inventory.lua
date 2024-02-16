-- chunkname: @/modules/game_inventory/inventory.lua

GameInventory = {
	slotsPerRow = 6,
	currentFilterType = "all",
	inventoryInitialSize = 48,
	maxSlots = 120
}

function GameInventory:loadConfig()
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

function GameInventory:init()
	self:loadConfig()
	g_ui.importStyle("styles/inventory.otui")
	g_ui.importStyle("styles/main.otui")

	self.window = g_ui.createWidget("GameInventoryWindow", modules.game_interface.getHUDPanel())

	self.window:hide()

	self.window.uiopensoundid = UI_INVENTORY_WINDOW_OPEN
	self.window.uiclosesoundid = UI_INVENTORY_WINDOW_CLOSE
	self.normalPanelHolder = g_ui.createWidget("GameInventoryPanelHolder", self.window.content)
	self.normalPanel = g_ui.createWidget("GameInventoryPanel", self.normalPanelHolder)
	self.unlockPanel = g_ui.createWidget("GameInventoryUnlockPanel", self.normalPanelHolder)

	self.unlockPanel:hide()

	self.questPanelHolder = g_ui.createWidget("GameInventoryPanelHolder", self.window.content)
	self.questPanel = g_ui.createWidget("GameInventoryPanel", self.questPanelHolder)

	self.questPanelHolder:hide()

	self.selectionPanel = self.window:recursiveGetChildById("selection_panel")

	self.selectionPanel.normal:setOn(true)

	self.selectionPanel.normal.uiclicksoundid = UI_INVENTORY_NORMAL_BUTTON
	self.selectionPanel.quest.uiclicksoundid = UI_INVENTORY_QUEST_BUTTON
	self.filterPanel = self.window:recursiveGetChildById("filter_panel")

	self:resetFilterPanel()

	self.bottomPanel = self.window:recursiveGetChildById("bottom_panel")

	connect(Container, {
		onOpen = GameInventory.onContainerOpen,
		onRemoveItem = GameInventory.onContainerRemoveItem,
		onUpdateItem = GameInventory.onContainerUpdateItem,
		onAddItem = GameInventory.onContainerAddItem
	})
	connect(g_game, {
		onGameStart = GameInventory.onGameStart,
		onCoinBalance = GameInventory.onBalanceChange,
		onGoldChange = GameInventory.onGoldChange
	})
	connect(LocalPlayer, {
		onLevelChange = GameInventory.onLevelChange
	})

	if g_game.isOnline() then
		GameInventory.onGameStart()
	end

	if not g_game.isRavenQuest() then
		self.bottomPanel.currency.gold:destroy()
	end

	g_keyboard.bindKeyDown("I", self.toggle)
end

function GameInventory:terminate()
	self.window:destroy()
	g_keyboard.unbindKeyDown("I", modules.game_interface.gameMapPanel)
	g_keyboard.unbindKeyDown("I", self.window)
	disconnect(Container, {
		onOpen = GameInventory.onContainerOpen,
		onRemoveItem = GameInventory.onContainerRemoveItem,
		onUpdateItem = GameInventory.onContainerUpdateItem,
		onAddItem = GameInventory.onContainerAddItem
	})
	disconnect(g_game, {
		onGameStart = GameInventory.onGameStart,
		onCoinBalance = GameInventory.onBalanceChange,
		onGoldChange = GameInventory.onGoldChange
	})
	disconnect(LocalPlayer, {
		onLevelChange = GameInventory.onLevelChange
	})

	GameInventory = nil
end

function GameInventory.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameInventory.window:isVisible() then
		GameInventory.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameInventory.window:show()
		GameInventory.window:raise()
	end
end

function GameInventory.show()
	GameInventory.window:show()
	GameInventory.window:raise()
end

function GameInventory.onGameStart()
	GameInventory.normalPanel.container = g_game.getContainerByType(CONTAINER_TYPE_INVENTORY)
	GameInventory.questPanel.container = g_game.getContainerByType(CONTAINER_TYPE_QUEST)

	GameInventory.questPanelHolder:hide()
	GameInventory.normalPanelHolder:show()

	GameInventory.currentPanel = GameInventory.normalPanel

	GameInventory:resetHighlightedItems(GameInventory.normalPanel)
	GameInventory:resetHighlightedItems(GameInventory.questPanel)
	GameInventory:selectInventoryType("normal")

	local player = g_game.getLocalPlayer()

	if player then
		GameInventory.onLevelChange(player, player:getLevel())
	end
end

function GameInventory.onContainerOpen(container)
	if container:getType() == CONTAINER_TYPE_INVENTORY then
		GameInventory.normalPanel.container = container

		if GameInventory.currentPanel == GameInventory.normalPanel then
			GameInventory.questPanelHolder:hide()
			GameInventory.normalPanelHolder:show()
			GameInventory.refreshContainerItems(container)
		end
	elseif container:getType() == CONTAINER_TYPE_QUEST then
		GameInventory.questPanel.container = container

		if GameInventory.currentPanel == GameInventory.questPanel then
			GameInventory.refreshContainerItems(container)
		end
	end

	GameInventory:resetFilterPanel()
	GameInventory:updateCapacityLabel()
	GameInventory:applyInventoryFilter(GameInventory.currentFilterType)
end

function GameInventory.refreshContainerItems(container)
	if not container then
		return
	end

	for slot = 0, math.max(container:getSize(), container:getCapacity()) - 1 do
		local itemWidget = GameInventory.currentPanel:getChildByIndex(slot + 1) or g_ui.createWidget("InventoryItem", GameInventory.currentPanel)

		itemWidget.position = container:getSlotPosition(slot)

		local item = container:getInventoryItem(slot)

		if item then
			itemWidget:setItem(item)
		else
			itemWidget:setItem(nil)
		end

		itemWidget:getChildById("lock"):setVisible(false)
		itemWidget:show()
	end

	if container:getCapacity() < GameInventory.maxSlots and container:getType() == CONTAINER_TYPE_INVENTORY then
		GameInventory.unlockPanel:setVisible(true)

		for i = 1, GameInventory.slotsPerRow do
			local itemWidget = GameInventory.unlockPanel.slots:getChildByIndex(i) or g_ui.createWidget("InventoryItem", GameInventory.unlockPanel.slots)

			itemWidget:show()
			itemWidget:setItem(nil)
			itemWidget:getChildById("lock"):setVisible(true)
			itemWidget:disable()
		end

		local rows = math.floor((math.max(container:getCapacity(), container:getLastItemIndex()) - GameInventory.inventoryInitialSize) / GameInventory.slotsPerRow)
		local cost = cfg.inventory.baseSilverUnlockCost[rows + 1] or cfg.inventory.baseRavencoinCost
		local prefix = cfg.inventory.baseSilverUnlockCost[rows + 1] and "Silver" or "RavenCoins"

		GameInventory.unlockPanel.unlock_button:setText(FormatCommaNumber(cost))
		GameInventory.unlockPanel.unlock_button:changeIcon(string.format("/images/ui/windows/inventory/%s", prefix == "Silver" and "icon_silver" or "icon_ravencoin"))
	else
		GameInventory.unlockPanel:setVisible(false)
	end

	GameInventory:updateCapacityLabel()
	signalcall(g_game.onRefreshItems, container)
end

function GameInventory.onContainerUpdateItem(container, slot, item, oldItem)
	if container:getType() == CONTAINER_TYPE_INVENTORY then
		local widget = GameInventory.normalPanel:getChildByIndex(slot + 1)

		if widget then
			widget:setItem(item)

			widget.position = container:getSlotPosition(slot)

			if item:getId() == oldItem:getId() and item:getCount() > oldItem:getCount() then
				widget.hover:setOn(GameInventory:canHighlightItem(item))
			end
		end
	elseif container:getType() == CONTAINER_TYPE_QUEST then
		local widget = GameInventory.questPanel:getChildByIndex(slot + 1)

		if widget then
			widget:setItem(item)

			widget.position = container:getSlotPosition(slot)

			if item:getId() == oldItem:getId() and item:getCount() > oldItem:getCount() then
				widget.hover:setOn(GameInventory:canHighlightItem(item))
			end
		end
	end

	GameInventory:updateCapacityLabel()
	GameInventory:applyInventoryFilter(GameInventory.currentFilterType)
	signalcall(g_game.onUpdateItem, container, slot, item, oldItem)

	GameInventory.lastUpdatedItem = item

	addEvent(function()
		GameInventory.lastUpdatedItem = nil
	end)
end

function GameInventory.onContainerRemoveItem(container, slot, item)
	if container:getType() == CONTAINER_TYPE_INVENTORY then
		local widget = GameInventory.normalPanel:getChildByIndex(slot + 1)

		if widget then
			widget:setItem(nil)
			widget:setHovered(false)
			widget.hover:setOn(false)
		end
	elseif container:getType() == CONTAINER_TYPE_QUEST then
		local widget = GameInventory.questPanel:getChildByIndex(slot + 1)

		if widget then
			widget:setItem(nil)
			widget:setHovered(false)
			widget.hover:setOn(false)
		end
	end

	GameInventory:updateCapacityLabel()
	GameInventory:applyInventoryFilter(GameInventory.currentFilterType)
	signalcall(g_game.onRemoveItem, container, slot, item)

	GameInventory.lastRemovedItem = item

	addEvent(function()
		GameInventory.lastRemovedItem = nil
	end)
end

function GameInventory.onContainerAddItem(container, slot, item)
	if container:getType() == CONTAINER_TYPE_INVENTORY then
		local widget = GameInventory.normalPanel:getChildByIndex(slot + 1) or g_ui.createWidget("InventoryItem", GameInventory.normalPanel)

		if widget then
			widget:setItem(item)

			widget.position = container:getSlotPosition(slot)

			widget.hover:setOn(GameInventory:canHighlightItem(item))
		end
	elseif container:getType() == CONTAINER_TYPE_QUEST then
		local widget = GameInventory.questPanel:getChildByIndex(slot + 1) or g_ui.createWidget("InventoryItem", GameInventory.questPanel)

		if widget then
			widget:setItem(item)

			widget.position = container:getSlotPosition(slot)

			widget.hover:setOn(GameInventory:canHighlightItem(item))
		end
	end

	GameInventory:updateCapacityLabel()
	GameInventory:applyInventoryFilter(GameInventory.currentFilterType)
	signalcall(g_game.onAddItem, container, slot, item)

	GameInventory.lastAddedItem = item

	addEvent(function()
		GameInventory.lastAddedItem = nil
	end)
end

function GameInventory:selectInventoryType(id)
	if id == "normal" then
		self.normalPanelHolder:show()
		self.questPanelHolder:hide()

		self.currentPanel = self.normalPanel

		GameInventory.refreshContainerItems(self.normalPanel.container)
	elseif id == "quest" then
		self.questPanelHolder:show()
		self.normalPanelHolder:hide()

		self.currentPanel = self.questPanel

		GameInventory.refreshContainerItems(self.questPanel.container)
	end

	self.selectionPanel.normal:setOn(id == "normal")
	self.selectionPanel.quest:setOn(id == "quest")
	self:resetFilterPanel()
	self:updateCapacityLabel()
	self:applyInventoryFilter("all")
end

function GameInventory:resetFilterPanel()
	for _, child in ipairs(self.filterPanel:getChildren()) do
		child:setOn(false)
	end
end

function GameInventory:updateCapacityLabel()
	local container = self.currentPanel.container

	if container then
		self.filterPanel:setText(container:getSize() .. " / " .. container:getCapacity())

		for i = math.max(container:getSize(), container:getCapacity()) + 1, GameInventory.currentPanel:getChildCount() do
			local itemWidget = GameInventory.currentPanel:getChildByIndex(i)

			if itemWidget and not itemWidget:getChildById("lock"):isVisible() then
				itemWidget:hide()
			end
		end
	else
		self.filterPanel:setText("0 / 0")
	end
end

function GameInventory:applyInventoryFilter(id)
	for _, child in ipairs(self.currentPanel:getChildren()) do
		if id == "all" then
			child:setEnabled(true)
		else
			local item = child:getItem()
			local filter = cfg.filter[id]

			if item and filter then
				child:setEnabled(filter(item))
			end
		end
	end

	for _, child in ipairs(self.filterPanel:getChildren()) do
		child:setOn(child:getId() == id)
	end

	self.currentFilterType = id
end

function GameInventory.onBalanceChange(premium, balance)
	local player = g_game.getLocalPlayer()

	player.silverBalance = balance

	GameInventory.bottomPanel.currency.silver:setText(balance)
end

function GameInventory.onGoldChange(balance)
	local player = g_game.getLocalPlayer()

	player.goldBalance = balance

	GameInventory.bottomPanel.currency.gold:setText(balance)
end

function GameInventory:findItemWidgetByItemType(panel, itemType)
	for _, child in ipairs(self[panel]:getChildren()) do
		local item = child:getItem()
		local filter = cfg.filter[itemType]

		if item and filter and filter(item) then
			return child
		end
	end

	return nil
end

function GameInventory:findItemWidgetByName(panel, itemName)
	for _, child in ipairs(self[panel]:getChildren()) do
		local item = child:getItem()

		if item and item:getName():lower() == itemName:lower() then
			return child
		end
	end

	return nil
end

function GameInventory:canHighlightItem(item)
	local highlightItem = true

	if GameInventory.lastAddedItem and GameInventory.lastAddedItem:getId() == item:getId() then
		highlightItem = false
	end

	if highlightItem and GameInventory.lastRemovedItem and GameInventory.lastRemovedItem:getId() == item:getId() then
		highlightItem = false
	end

	if highlightItem and GameInventory.lastUpdatedItem and GameInventory.lastUpdatedItem:getId() == item:getId() then
		highlightItem = false
	end

	return highlightItem
end

function GameInventory:resetHighlightedItems(panel)
	for _, child in ipairs(panel:getChildren()) do
		if child.hover then
			child.hover:setOn(false)
		end
	end
end

function GameInventory.onLevelChange(localPlayer, level)
	local infusionButton = GameInventory.bottomPanel.button_panel.infusion

	if level >= 7 then
		infusionButton:setDisabled(false)
		infusionButton:setTooltip("Infusion")
	else
		infusionButton:setDisabled(true)
		infusionButton:setTooltip("This option will be unlocked at legacy level 7")
	end
end

function GameInventory:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Inventory, g_game.serializeTable(data))
	end
end

function GameInventory:unlockInventorySlotsRow()
	if self.confirmationBox then
		self.confirmationBox:raise()
		self.confirmationBox:shake(4, 3)

		return
	end

	local container = GameInventory.normalPanel.container

	if not container or container:getType() ~= CONTAINER_TYPE_INVENTORY then
		return
	end

	local function yesCallback()
		if not GameInventory.normalPanel.container then
			return
		end

		modules.game_npcs.GameBank:sendOpcode({
			action = "unlock_inventory_row",
			containerId = GameInventory.normalPanel.container:getId()
		})
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local rows = math.floor((math.max(container:getCapacity(), container:getLastItemIndex()) - self.inventoryInitialSize) / self.slotsPerRow)
	local cost = cfg.inventory.baseSilverUnlockCost[rows + 1] or cfg.inventory.baseRavencoinCost
	local prefix = cfg.inventory.baseSilverUnlockCost[rows + 1] and "Silver" or "RavenCoins"

	self.confirmationBox = displayGeneralBox(tr("Confirm choice"), string.format("You are purchasing %d inventory slots for %d %s.\nDo you want to continue?", self.slotsPerRow * cfg.inventory.rowsPerUnlock, cost, prefix), {
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

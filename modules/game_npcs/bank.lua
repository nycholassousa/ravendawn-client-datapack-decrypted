-- chunkname: @/modules/game_npcs/bank.lua

GameBank = {
	inboxDepotInitialSize = 100,
	bankDepotInitialSize = 35,
	maxSlots = 140,
	slotsPerRow = 7,
	defaultNpcName = "Munk Keeper",
	currentFilterType = "all",
	types = {
		[CONTAINER_TYPE_DEPOT] = true,
		[CONTAINER_TYPE_HOUSE_DEPOT] = true,
		[CONTAINER_TYPE_INBOX] = true
	},
	defaultNpcPreview = {
		lookType = 4822,
		category = ThingCategoryCreature
	}
}

function GameBank:init()
	self.window = GameNpc.panels[windowTypes.bank]

	self.window:hide()

	self.normalPanelHolder = g_ui.createWidget("GameBankItemsPanelHolder", self.window)
	self.normalPanel = g_ui.createWidget("GameBankItemsPanel", self.normalPanelHolder)
	self.unlockPanel = g_ui.createWidget("GameBankUnlockPanel", self.normalPanelHolder)

	self.unlockPanel:hide()

	self.filterPanel = self.window:recursiveGetChildById("filter_panel")

	self:resetFilterPanel()

	self.bottomPanel = self.window:recursiveGetChildById("bottom_panel")

	connect(Container, {
		onOpen = GameBank.onContainerOpen,
		onRemoveItem = GameBank.onContainerRemoveItem,
		onUpdateItem = GameBank.onContainerUpdateItem,
		onAddItem = GameBank.onContainerAddItem
	})
	connect(g_game, {
		onGameStart = GameBank.onGameStart,
		onGameEnd = GameBank.onGameEnd,
		onCoinBalance = GameBank.onBalanceChange
	})
	connect(GameBank.window, {
		onVisibilityChange = GameBank.onVisibilityChange
	})

	if g_game.isOnline() then
		GameBank.onGameStart()
	end
end

function GameBank:terminate()
	self.window:destroy()
	disconnect(Container, {
		onOpen = GameBank.onContainerOpen,
		onRemoveItem = GameBank.onContainerRemoveItem,
		onUpdateItem = GameBank.onContainerUpdateItem,
		onAddItem = GameBank.onContainerAddItem
	})
	disconnect(g_game, {
		onGameStart = GameBank.onGameStart,
		onGameEnd = GameBank.onGameEnd,
		onCoinBalance = GameBank.onBalanceChange
	})
	disconnect(LocalPlayer, {
		onPositionChange = GameBank.onPositionChange
	})

	GameBank = nil
end

function GameBank.show()
	GameNpc:show()
	GameBank.window:show()
	GameBank.window:raise()
	GameNpc:setPanel("bank")
end

function GameBank.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameBank.window:isVisible() then
		GameBank.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameBank.window:show()
		GameBank.window:raise()
	end
end

function GameBank.onVisibilityChange(widget, visible)
	if visible then
		return
	end

	local container = GameBank.normalPanel.container

	if not container then
		return
	end

	if not GameBank.types[container:getType()] then
		return
	end

	g_game.close(container)

	GameBank.normalPanel.container = nil
end

function GameBank.onContainerOpen(container)
	local containerType = container:getType()

	if not GameBank.types[containerType] then
		return
	end

	if not GameBank.window:isVisible() and containerType == CONTAINER_TYPE_DEPOT then
		GameBank.show()
	end

	GameBank:updateStorageSelectionPanel(containerType)
	GameNpc:setPanel("bank")

	local npcNameLabel = GameNpc.window.topPanel:recursiveGetChildById("npcName")
	local npcPreview = GameNpc.window.topPanel:recursiveGetChildById("npcPreview")

	if containerType == CONTAINER_TYPE_HOUSE_DEPOT then
		npcNameLabel:setText("Storage Chest")
		npcNameLabel:setOn(true)
		npcPreview:resetOutfit()
		npcPreview:setImageSource(nil)
	elseif npcNameLabel:getText() == "Storage Chest" then
		npcNameLabel:setText(GameBank.defaultNpcName)
		npcPreview:setAutoResize(true)
		npcPreview:setScale(1.5)
		npcPreview:setOutfit(GameBank.defaultNpcPreview)
	end

	GameBank.normalPanel.container = container

	if GameBank.currentPanel == GameBank.normalPanel then
		GameBank.normalPanel:show()
		GameBank.refreshContainerItems(container)
	end

	GameBank:resetFilterPanel()
	GameBank:updateCapacityLabel()
	GameBank:applyBankFilter(GameBank.currentFilterType)

	if not hasConnect(LocalPlayer, "onPositionChange", GameBank.onPlayerPositionChange) then
		connect(LocalPlayer, {
			onPositionChange = GameBank.onPlayerPositionChange
		})
	end
end

function GameBank.refreshContainerItems(container)
	if not container then
		return
	end

	local maxSlots = math.max(container:getCapacity() - 1, container:getLastItemIndex())

	for slot = 0, maxSlots do
		local itemWidget = GameBank.currentPanel:getChildByIndex(slot + 1) or g_ui.createWidget("BankItem", GameBank.currentPanel)

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

	if container:getCapacity() < GameBank.maxSlots and container:getType() == CONTAINER_TYPE_DEPOT then
		GameBank.unlockPanel:setVisible(true)

		for i = 1, GameBank.slotsPerRow do
			local itemWidget = GameBank.unlockPanel.slots:getChildByIndex(i) or g_ui.createWidget("BankItem", GameBank.unlockPanel.slots)

			itemWidget:show()
			itemWidget:setItem(nil)
			itemWidget:getChildById("lock"):setVisible(true)
			itemWidget:disable()
		end

		local rows = math.floor((math.max(container:getCapacity(), container:getLastItemIndex()) - GameBank.bankDepotInitialSize) / GameBank.slotsPerRow)
		local cost = cfg.bank.baseSilverUnlockCost[rows + 1] or cfg.bank.baseRavencoinCost
		local prefix = cfg.bank.baseSilverUnlockCost[rows + 1] and "Silver" or "RavenCoins"

		GameBank.unlockPanel.unlock_button:setText(FormatCommaNumber(cost))
		GameBank.unlockPanel.unlock_button:changeIcon(string.format("/images/ui/windows/inventory/%s", prefix == "Silver" and "icon_silver" or "icon_ravencoin"))
	else
		GameBank.unlockPanel:setVisible(false)
	end

	for i = math.max(container:getCapacity(), container:getLastItemIndex() + 1) + 1, GameBank.currentPanel:getChildCount() do
		local itemWidget = GameBank.currentPanel:getChildByIndex(i)

		if itemWidget then
			itemWidget:hide()
		end
	end
end

function GameBank.onContainerUpdateItem(container, slot, item, oldItem)
	if not GameBank.types[container:getType()] then
		return
	end

	local widget = GameBank.normalPanel:getChildByIndex(slot + 1)

	if widget then
		widget:setItem(item)

		widget.position = container:getSlotPosition(slot)
	end

	GameBank:updateCapacityLabel()
	GameBank:applyBankFilter(GameBank.currentFilterType)
end

function GameBank.onContainerRemoveItem(container, slot, item)
	if not GameBank.types[container:getType()] then
		return
	end

	local widget = GameBank.normalPanel:getChildByIndex(slot + 1)

	if widget then
		widget:setItem(nil)
		widget:setHovered(false)
	end

	modules.game_inventory.GameInventory.lastAddedItem = item

	addEvent(function()
		modules.game_inventory.GameInventory.lastAddedItem = nil
	end)
	GameBank:updateCapacityLabel()
	GameBank:applyBankFilter(GameBank.currentFilterType)
end

function GameBank.onGameStart()
	if #g_game.getContainers() > 0 then
		GameBank.normalPanel.container = g_game.getContainerByType(CONTAINER_TYPE_DEPOT)
	end

	GameBank.normalPanel:show()

	GameBank.currentPanel = GameBank.normalPanel

	GameBank:selectInventoryType("normal")
end

function GameBank.onGameEnd()
	disconnect(LocalPlayer, {
		onPositionChange = GameBank.onPlayerPositionChange
	})
end

function GameBank.onPlayerPositionChange()
	if not GameBank.normalPanel:isVisible() then
		return
	end

	GameBank:closeCurrentContainer()
	GameNpc:onClose()
end

function GameBank:closeCurrentContainer()
	if not self.normalPanel then
		return
	end

	g_game.close(self.normalPanel.container)

	self.normalPanel.container = nil

	self.normalPanel:hide()
end

function GameBank.onContainerAddItem(container, slot, item)
	if not GameBank.types[container:getType()] then
		return
	end

	local widget = GameBank.normalPanel:getChildByIndex(slot + 1)

	if widget then
		widget:setItem(item)

		widget.position = container:getSlotPosition(slot)
	end

	GameBank:updateCapacityLabel()
	GameBank:applyBankFilter(GameBank.currentFilterType)
end

function GameBank:selectInventoryType(id)
	if id == "normal" then
		self.normalPanel:show()

		self.currentPanel = self.normalPanel

		GameBank.refreshContainerItems(self.normalPanel.container)
	end

	self:resetFilterPanel()
	self:updateCapacityLabel()
	self:applyBankFilter("all")
end

function GameBank:resetFilterPanel()
	for _, child in ipairs(self.filterPanel:getChildren()) do
		child:setOn(false)
	end
end

function GameBank:updateCapacityLabel()
	local container = self.currentPanel.container

	if not container then
		self.filterPanel:setText("0 / 0")

		return
	end

	if container:getType() == CONTAINER_TYPE_INBOX then
		self.filterPanel:setText(container:getSize() .. " / " .. container:getLastItemIndex() + 1)

		return
	end

	self.filterPanel:setText(container:getSize() .. " / " .. container:getCapacity())
end

function GameBank:applyBankFilter(id)
	for _, child in ipairs(self.currentPanel:getChildren()) do
		if id == "all" then
			child:setEnabled(true)
		else
			local item = child:getItem()
			local filter = modules.game_inventory.cfg.filter[id]

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

function GameBank.onBalanceChange(premium, balance)
	local player = g_game.getLocalPlayer()

	player.silverBalance = balance

	GameBank.bottomPanel.currency.silver:setText(balance)
end

function GameBank:unlockBankSlotsRow()
	if self.confirmationBox then
		self.confirmationBox:raise()
		self.confirmationBox:shake(4, 3)

		return
	end

	local container = GameBank.normalPanel.container

	if not container then
		return
	end

	local function yesCallback()
		if not GameBank.normalPanel.container then
			return
		end

		self:sendOpcode({
			action = "unlock_bank_row",
			containerId = GameBank.normalPanel.container:getId()
		})
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local rows = math.floor((math.max(container:getCapacity(), container:getLastItemIndex()) - self.bankDepotInitialSize) / self.slotsPerRow)
	local cost = cfg.bank.baseSilverUnlockCost[rows + 1] or cfg.bank.baseRavencoinCost
	local prefix = cfg.bank.baseSilverUnlockCost[rows + 1] and "Silver" or "RavenCoins"

	self.confirmationBox = displayGeneralBox(tr("Confirm choice"), string.format("You are purchasing %d bank slots for %d %s.\nDo you want to continue?", self.slotsPerRow * cfg.bank.rowsPerUnlock, cost, prefix), {
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

function GameBank:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Bank, g_game.serializeTable(data))
	end
end

function GameBank:updateStorageSelectionPanel(containerType)
	if containerType then
		local storageSelectionPanel = GameNpc.window:recursiveGetChildById("storage_selection_panel")

		if not storageSelectionPanel then
			return
		end

		if containerType == CONTAINER_TYPE_DEPOT or containerType == CONTAINER_TYPE_HOUSE_DEPOT then
			storageSelectionPanel:setVisible(true)
			storageSelectionPanel.left_option:setOn(containerType == CONTAINER_TYPE_DEPOT)
			storageSelectionPanel.right_option:setOn(containerType == CONTAINER_TYPE_HOUSE_DEPOT)

			if containerType == CONTAINER_TYPE_HOUSE_DEPOT or GameHouse:playerHasHouseStorage() then
				storageSelectionPanel.right_option.disabled = nil

				storageSelectionPanel.right_option:setTooltip("")
			else
				storageSelectionPanel.right_option.disabled = true

				storageSelectionPanel.right_option:setTooltip("You need to own a house with storage to access this tab.")
			end
		else
			storageSelectionPanel:setVisible(false)
		end

		self.filterPanel.sort:setVisible(containerType ~= CONTAINER_TYPE_INBOX)
	end
end

function GameBank:onChangeStorageSelection()
	local storageSelectionPanel = GameNpc.window:recursiveGetChildById("storage_selection_panel")

	if not storageSelectionPanel then
		return
	end

	local storageType = storageSelectionPanel.left_option:isOn() and "bank" or "house"

	if storageType == "bank" then
		GameBank.unlockPanel:show()
	else
		GameBank.unlockPanel:hide()
	end

	GameBank:closeCurrentContainer()
	self:sendOpcode({
		action = "change_storage_selection",
		storageType = storageType
	})
end

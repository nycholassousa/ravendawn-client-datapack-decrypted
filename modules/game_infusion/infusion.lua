-- chunkname: @/modules/game_infusion/infusion.lua

GameInfusion = {
	currentFilterType = "all"
}

function GameInfusion:loadConfig()
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

function GameInfusion:resetFilterPanel()
	for _, child in ipairs(self.inventory_filter_panel:getChildren()) do
		child:setOn(self.inventory_filter_panel:getChildIndex(child) == 1)
	end
end

function GameInfusion:applyInfusionFilter(id)
	for _, child in ipairs(self.inventory_items_panel.item_holder:getChildren()) do
		local item = child:getItem()

		if id == "all" then
			child:setEnabled(not self:isItemAddedToSlot(item))
		else
			local filter = cfg.filter[id]

			if item and filter then
				child:setEnabled(filter(item) and not self:isItemAddedToSlot(item))
			end
		end
	end

	for _, child in ipairs(self.inventory_filter_panel:getChildren()) do
		child:setOn(child:getId() == id)
	end

	self.currentFilterType = id
end

function GameInfusion:updateSelectedItems()
	for _, child in ipairs(self.equipped_items_panel.item_holder:getChildren()) do
		local item = child:getItem()

		child:setEnabled(not item or not self:isItemAddedToSlot(item))
	end

	for _, child in ipairs(self.inventory_items_panel.item_holder:getChildren()) do
		local item = child:getItem()

		child:setEnabled(not item or not self:isItemAddedToSlot(item))
	end
end

function GameInfusion:updateCapacityLabel(text)
	self.inventory_items_panel.filter_panel:setText(text or "0 / 0")
end

function GameInfusion:onInventoryItemChange(player)
	local player = player or g_game.getLocalPlayer()

	if not player then
		return
	end

	local panel = self.equipped_items_panel.item_holder
	local infusionItems = {}

	for _, slot in ipairs(equipSlots) do
		local name = equipSlotToName[slot]
		local itemWidget = panel:getChildById(name) or g_ui.createWidget("GameInfusionEquipmentPanelSlot", panel)

		itemWidget:setId(name)
		itemWidget.placeholder:setImageSource(string.format("/images/ui/windows/character/%s", itemWidget:getId()))

		local textureSize = {
			width = itemWidget.placeholder:getImageTextureWidth(),
			height = itemWidget.placeholder:getImageTextureHeight()
		}

		itemWidget.placeholder:setSize(textureSize)
		itemWidget:setItem(nil)
		itemWidget:show()

		local item = player:getInventoryItem(slot)

		if item and item:isInfusionMaterial() then
			table.insert(infusionItems, {
				item = item,
				slot = slot,
				type = item:getItemType()
			})
		end
	end

	for _, item in ipairs(infusionItems) do
		local id = equipSlotToName[item.slot]
		local itemWidget = id and panel:getChildById(id)

		if itemWidget then
			itemWidget.slot = item.slot

			itemWidget:setItem(item.item)
		end
	end
end

function GameInfusion:onInventoryRefreshItems(container)
	if not container then
		return
	end

	local panel = self.inventory_items_panel.item_holder
	local infusionItems = {}

	for slot = 0, math.max(container:getSize(), container:getCapacity()) - 1 do
		local itemWidget = panel:getChildByIndex(slot + 1) or g_ui.createWidget("GameInfusionInventoryItem", panel)

		itemWidget:setItem(nil)
		itemWidget:show()

		local item = container:getInventoryItem(slot)

		if item and item:isInfusionMaterial() then
			table.insert(infusionItems, {
				item = item,
				slot = slot,
				type = item:getItemType()
			})
		end
	end

	local lastInfusionSlot = 0

	for _, item in ipairs(infusionItems) do
		local itemWidget = panel:getChildByIndex(lastInfusionSlot + 1)

		if itemWidget then
			itemWidget.slot = item.slot

			itemWidget:setItem(item.item)

			lastInfusionSlot = lastInfusionSlot + 1
		end
	end

	self.lastInfusionSlot = lastInfusionSlot

	self:updateCapacityLabel(string.format("%d / %d", self.lastInfusionSlot, container:getCapacity()))
	self:applyInfusionFilter(self.currentFilterType)
	self:updateSelectedItems()
end

function GameInfusion:onInventoryUpdateItem(container, slot, item, oldItem)
	self:onInventoryRefreshItems(container)
end

function GameInfusion:onInventoryAddItem(container, slot, item)
	self:onInventoryRefreshItems(container)
end

function GameInfusion:onInventoryRemoveItem(container, slot, item)
	self:onInventoryRefreshItems(container)
end

function GameInfusion:init()
	self:loadConfig()
	g_ui.importStyle("styles/infusion.otui")
	g_ui.importStyle("styles/main.otui")

	self.window = g_ui.createWidget("GameInfusionWindow", modules.game_interface.getHUDPanel())

	self.window:hide()
	connect(self.window, {
		onVisibilityChange = function(self)
			local inventory = modules.game_inventory.GameInventory

			inventory.selectionPanel.quest:setEnabled(not self:isVisible())

			if self:isVisible() then
				inventory:selectInventoryType("normal")
			end
		end
	})

	self.item_slot = self.window.content.right_panel.preview_panel.item
	self.preview_slot = self.window.content.right_panel.preview_panel.preview
	self.info_panel = self.window.content.right_panel.preview_panel.info
	self.slot_panel = self.window.content.right_panel.slot_panel
	self.bottom_panel = self.window.content.bottom_panel
	self.infuse_button = self.bottom_panel.infuse_button
	self.item_stats_panel = self.window.content.right_panel.item_stats_panel
	self.preview_stats_panel = self.window.content.right_panel.preview_stats_panel
	self.item_stats_background = self.window.content.right_panel.item_stats_background
	self.equipped_items_panel = self.window.content.left_panel.equipped_items_panel
	self.inventory_items_panel = self.window.content.left_panel.inventory_items_panel
	self.inventory_filter_panel = self.window.content.left_panel:recursiveGetChildById("filter_panel")

	self:resetFilterPanel()
	g_keyboard.bindKeyDown("U", self.toggle)
	connect(Container, {
		onOpen = GameInfusion.onUpdateInfusionItem,
		onRemoveItem = GameInfusion.onContainerRemoveItem,
		onUpdateItem = GameInfusion.onContainerUpdateItem
	})
	connect(g_game, {
		onProtocolItem = GameInfusion.onUpdatePreviewItem,
		onGameEnd = GameInfusion.offline,
		onRefreshItems = function(container)
			self:onInventoryRefreshItems(container)
		end,
		onUpdateItem = function(container, slot, item, oldItem)
			self:onInventoryUpdateItem(container, slot, item, oldItem)
		end,
		onAddItem = function(container, slot, item)
			self:onInventoryAddItem(container, slot, item)
		end,
		onRemoveItem = function(container, slot, item)
			self:onInventoryRemoveItem(container, slot, item)
		end,
		onEquippedItems = function(player)
			self:onInventoryItemChange(player)
		end
	})
	GameInfusion:setupDragAndDrop()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Infusion, GameInfusion.onExtendedOpcode, "game_infusion")
end

function GameInfusion:terminate()
	self.window:destroy()
	g_keyboard.unbindKeyDown("U")
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Infusion, "game_infusion")
	disconnect(Container, {
		onOpen = GameInfusion.onUpdateInfusionItem,
		onRemoveItem = GameInfusion.onContainerRemoveItem,
		onUpdateItem = GameInfusion.onContainerUpdateItem
	})
	disconnect(g_game, {
		onProtocolItem = GameInfusion.onUpdatePreviewItem,
		onGameEnd = GameInfusion.offline,
		onRefreshItems = function(container)
			self:onInventoryRefreshItems(container)
		end,
		onUpdateItem = function(container, slot, item, oldItem)
			self:onInventoryUpdateItem(container, slot, item, oldItem)
		end,
		onAddItem = function(container, slot, item)
			self:onInventoryAddItem(container, slot, item)
		end,
		onRemoveItem = function(container, slot, item)
			self:onInventoryRemoveItem(container, slot, item)
		end,
		onEquippedItems = function(player)
			self:onInventoryItemChange(player)
		end
	})

	GameInfusion = nil
end

function GameInfusion.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameInfusion.window:isVisible() then
		GameInfusion.hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameInfusion:updateSelectedItems()
		GameInfusion.show()
	end
end

function GameInfusion.hide()
	GameInfusion.window:hide()
	GameInfusion:resetSlots()
end

function GameInfusion.show()
	GameInfusion.window:show()
	GameInfusion.window:raise()
end

function GameInfusion.isVisible()
	return GameInfusion.window:isVisible()
end

function GameInfusion.offline()
	GameInfusion:resetSlots()
	GameInfusion.window:hide()
end

function GameInfusion:setupDragAndDrop()
	local function canDrop(widget, droppedWidget)
		local item_slot = self.item_slot.item:getItem()
		local preview_slot = self.preview_slot.item:getItem()

		if not droppedWidget or droppedWidget:getClassName() ~= "UIItem" then
			return false
		end

		local droppedItem = droppedWidget:getItem()

		if not (not item_slot and not preview_slot) and item_slot == droppedItem or preview_slot == droppedItem or not droppedItem:canInfuse() then
			return false
		end

		for _, child in ipairs(self.slot_panel:getChildren()) do
			local childItem = child.item:getItem()

			if childItem and childItem == droppedItem then
				return false
			end
		end

		return true
	end

	local function onSlotDrop(widget, droppedWidget)
		local droppedItem = droppedWidget:getItem()

		if not droppedItem then
			return false
		end

		local sourceItem = self.item_slot.item:getItem()

		if sourceItem and droppedItem:getUUID() == sourceItem:getUUID() or not droppedItem:isInfusionMaterial() then
			return false
		end

		for _, child in ipairs(self.slot_panel:getChildren()) do
			local childItem = child.item:getItem()

			if childItem then
				if childItem:getUUID() == droppedItem:getUUID() then
					return false
				elseif not g_game.getLocalPlayer():getItemByUUID(childItem:getUUID()) then
					child.item:setItem(nil)
					child:setOn(false)
				end
			end
		end

		local widget = widget:isItem() and widget or widget.item

		if not widget then
			return
		end

		widget:setItem(droppedItem)

		local parent = widget:getParent()

		parent:setOn(true)
		self:requestInfusion(true)
		signalcall(self.onSlotItemDrop, droppedItem)
		self:updateSelectedItems()

		return true
	end

	local function onDrop(widget, droppedWidget, mousePos)
		if not canDrop(widget, droppedWidget) then
			return false
		end

		local droppedItem = droppedWidget:getItem()

		if droppedItem then
			widget.item:setItem(droppedItem)
		end

		self:updateStats(droppedItem, widget)
		self:updateTopPanel()
		self:requestInfusion(true)
		signalcall(self.onItemDrop, droppedItem)
		self:updateSelectedItems()
	end

	local function onMousePress(widget)
		GameInfusion:removeItemFromSlot(widget)
	end

	connect(self.item_slot, {
		onDrop = onDrop
	})
	connect(self.item_slot.item, {
		onMousePress = onMousePress
	})

	for _, child in ipairs(self.slot_panel:getChildren()) do
		connect(child, {
			onDrop = onSlotDrop,
			onMousePress = onMousePress
		})
		connect(child.item, {
			onDrop = onSlotDrop,
			onMousePress = onMousePress
		})
	end
end

function GameInfusion:removeItemFromSlot(widget)
	local widget = widget:isItem() and widget or widget.item

	if not widget then
		return
	end

	local item = widget:getItem()

	if item then
		widget:setItem(nil)

		local parent = widget:getParent()

		parent:setOn(false)
		self:updateStats(nil, parent)
		self:updateTopPanel()
		self:requestInfusion(true)
		signalcall(self.onRemoveItem, widget)

		if parent:getParent() == self.slot_panel then
			self:updateStats(nil, self.preview_slot)
			self.preview_slot.item:setItem(nil)
			self:updateTopPanel({})
		end

		self:applyInfusionFilter(self.currentFilterType)
		self:updateSelectedItems()
	end
end

function GameInfusion.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Infusion then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if not data or type(data) ~= "table" then
		return
	end

	if data.success == false then
		GameInfusion:updateTopPanel()
	end

	if data.success == true then
		g_game.refreshContainer(g_game.getContainer(0))
		GameInfusion:updateSlots()
		GameInfusion:updateTopPanel({})
	elseif data.action == "preview" then
		GameInfusion.awaitingUUID = data.preview_uuid

		if data.resources then
			GameInfusion:updateSlots(data.resources)
			GameInfusion:updateTopPanel(data.resources)
		end
	end
end

function GameInfusion.sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Infusion, g_game.serializeTable(data))
	end
end

function GameInfusion:requestInfusion(preview)
	local item = self.item_slot.item:getItem()

	if not item then
		self.infuse_button:setEnabled(false)

		return
	end

	local resources = {}

	for _, child in ipairs(self.slot_panel:getChildren()) do
		local childItem = child.item:getItem()

		if childItem then
			table.insert(resources, {
				uuid = childItem:getUUID(),
				count = childItem:getCount(),
				slot = child:getId()
			})
		end
	end

	self.infuse_button:setEnabled(#resources > 0)
	GameInfusion.sendOpcode({
		action = preview and "preview" or "infuse",
		itemSource = item:getUUID(),
		resources = resources
	})
end

function GameInfusion:updateTopPanel(data)
	local panel = self.info_panel
	local item = self.item_slot.item:getItem()

	if item then
		local exp = item:getExperience()
		local requiredExp = item:getRequiredExperience()

		self.item_slot.progress:setPercentage(exp / requiredExp * 100)
	else
		self.item_slot.progress:setPercentage(0)
	end

	if data then
		local xpValue = data and data.totalExp or 0
		local silverValue = data and data.totalCost or 0

		self.bottom_panel.xp_button:setText(string.format("%s%s", xpValue > 0 and "+" or "", xpValue))
		self.bottom_panel.silver_button:setText(string.format("%s%s", silverValue > 0 and "-" or "", silverValue))
		panel.arrow:setOn(self.bottom_panel.xp_button:getText() ~= "0")
	else
		local preview = self.preview_slot.item:getItem()

		if preview then
			local exp = preview:getExperience()
			local requiredExp = preview:getRequiredExperience()

			self.preview_slot.progress:setPercentage(exp / requiredExp * 100)
		else
			self.preview_slot.progress:setPercentage(0)
		end
	end
end

function GameInfusion:updateSlots(data)
	local player = g_game.getLocalPlayer()

	for _, child in ipairs(self.slot_panel:getChildren()) do
		child.item:setItem(nil)
		child:setOn(false)
	end

	if not data then
		return
	end

	for _, resource in ipairs(data) do
		local slot = self.slot_panel:getChildById(resource.slot)

		if slot then
			slot.item:setItem(player:getItemByUUID(resource.uuid))
			slot:setOn(true)
			slot.exp:setText(resource.exp)
			slot.cost:setText(resource.cost)
		end
	end
end

function GameInfusion:updateStats(item, widget)
	local height = 20
	local background = self.item_stats_background
	local panel = widget == self.item_slot and self.item_stats_panel or widget == self.preview_slot and self.preview_stats_panel or nil

	if panel then
		panel.itemStats = {}

		panel:setVisible(item ~= nil)
		panel:destroyChildren()

		if item then
			local function getDiffValue(stat1, stat2)
				local diffValue = 0

				if panel == self.preview_stats_panel then
					diffValue = math.max(0, stat2 - self.item_stats_panel.itemStats[stat1])
				else
					panel.itemStats[stat1] = stat2
				end

				return diffValue
			end

			local tier = item:getTier()
			local grade = item:getGrade()
			local itemTypeRaw = item:getItemType()
			local isFishingRod = itemTypeRaw == "fishing rod"
			local isFishingHook = itemTypeRaw == "fishing hook"
			local fishingDurability = isFishingRod and FishingStats.durabilityTable[tier][grade + 1] or 0
			local baseAttributes = {
				{
					"Attack",
					item:getAttack(),
					"#5DA4FB"
				},
				{
					"Defense",
					item:getDefense(),
					"#5DA4FB"
				},
				{
					"Healing Power",
					item:getHealing(),
					"#5DA4FB"
				},
				{
					"Labor",
					item:getLabor(),
					"#FFA851"
				},
				{
					"Durability",
					fishingDurability,
					"#FFA851"
				}
			}
			local showDiff = panel == self.preview_stats_panel

			for _, stat in ipairs(baseAttributes) do
				if stat[2] > 0 then
					local diffValue = getDiffValue(stat[1], stat[2])
					local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

					child:setColoredText(GetHighlightedText(string.format("%s [%i] {%s, %s}", stat[1], stat[2], diffValue > 0 and string.format("+%d", diffValue) or "", stat[3])))
					child:setImageColor(stat[3])

					height = height + panel:getLayout():getSpacing() + child:getHeight()
				end
			end

			for _, stat in ipairs(item:getPrimaryStats()) do
				local diffValue = getDiffValue(stats[stat[1]], stat[2])
				local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

				child:setColoredText(GetHighlightedText(string.format("%s [%i] {%s, #77D463}", stats[stat[1]], stat[2], diffValue > 0 and string.format("+%d", diffValue) or "")))

				height = height + panel:getLayout():getSpacing() + child:getHeight()
			end

			for _, stat in ipairs(item:getSecondaryStats()) do
				local diffValue = getDiffValue(stats[stat[1]], stat[2])
				local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

				child:setColoredText(GetHighlightedText(string.format("%s [%i] {%s, #77D463}", stats[stat[1]], stat[2], diffValue > 0 and string.format("+%d", diffValue) or "")))

				height = height + panel:getLayout():getSpacing() + child:getHeight()
			end

			for _, stat in ipairs(item:getCraftingStats()) do
				local diffValue = getDiffValue(stats[stat[1]], stat[2])
				local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

				child:setColoredText(GetHighlightedText(string.format("%s [%i] {%s, #77D463}", craftingStats[stat[1]], stat[2], diffValue > 0 and string.format("+%d", diffValue) or "")))

				height = height + panel:getLayout():getSpacing() + child:getHeight()
			end

			local fishingAbilityBonus = not (not isFishingHook and not isFishingRod) and FishingStats.abilityBonusTable[tier][grade + 1] or 0

			if fishingAbilityBonus > 0 then
				local diffValue = getDiffValue("Ability Bonus", fishingAbilityBonus)
				local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

				child:setColoredText(GetHighlightedText(string.format("%s [%i] {%s, #77D463}", "Ability Bonus", fishingAbilityBonus, diffValue > 0 and string.format("+%d", diffValue) or "")))

				height = height + panel:getLayout():getSpacing() + child:getHeight()
			end

			if table.empty(panel:getChildren()) then
				local child = g_ui.createWidget("GameInfusionStatsPanelItem", panel)

				child:setText("No attributes")
				child:disable()
			end

			background:setHeight(height)
		end
	end

	self.item_stats_background:setOn(self.item_stats_panel:isVisible() or self.preview_stats_panel:isVisible())

	if widget == self.item_slot then
		self.preview_slot.item:setItem(nil)
		self.preview_stats_panel:setOn(false)
		self:updateStats(nil, self.preview_slot)
	end
end

function GameInfusion.onUpdateInfusionItem(container, slot, item, oldItem)
	if not GameInfusion.window:isVisible() then
		return
	end

	local selectedItem = GameInfusion.item_slot.item:getItem()

	if not selectedItem then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local item = player:getItemByUUID(selectedItem:getUUID())

	if item then
		GameInfusion.item_slot.item:setItem(item)
		GameInfusion:updateStats(item, GameInfusion.item_slot)
		GameInfusion:requestInfusion(true)
		GameInfusion:updateTopPanel()
	end
end

function GameInfusion.onUpdatePreviewItem(item)
	if not item or item:getUUID() ~= GameInfusion.awaitingUUID then
		return
	end

	GameInfusion.preview_slot.item:setItem(item)
	GameInfusion:updateStats(item, GameInfusion.preview_slot)
	GameInfusion:updateTopPanel()
end

function GameInfusion.onContainerRemoveItem(container, slot, item)
	GameInfusion:onContainerItemChange(container, slot, item)
end

function GameInfusion.onContainerUpdateItem(container, slot, item, oldItem)
	GameInfusion:onContainerItemChange(container, slot, item, true)
end

function GameInfusion:onContainerItemChange(container, slot, item, ignoreMainSlot)
	if not GameInfusion.isVisible() then
		return
	end

	local itemUUID = item:getUUID()

	if not ignoreMainSlot then
		local slotItem = self.item_slot.item:getItem(item)

		if slotItem and slotItem:getUUID() == itemUUID then
			self:removeItemFromSlot(self.item_slot.item)

			return
		end
	end

	for _, child in ipairs(self.slot_panel:getChildren()) do
		local slotItem = child.item and child.item:getItem()

		if slotItem and slotItem:getUUID() == itemUUID then
			self:removeItemFromSlot(child.item)

			return
		end
	end
end

function GameInfusion:resetSlots()
	for _, child in ipairs(self.slot_panel:getChildren()) do
		child.item:setItem(nil)
		child:setOn(false)
	end

	self.item_slot.item:setItem(nil)
	self.item_slot:setOn(false)
	self:updateStats(nil, self.item_slot)
	self:updateTopPanel()
	self.preview_slot.item:setItem(nil)
	self:updateTopPanel({})
	self.infuse_button:setEnabled(false)
end

function GameInfusion:getFirstEmptySlot()
	local slot = self.item_slot.item

	if not slot:getItem() then
		return slot:getParent()
	end

	for _, child in ipairs(self.slot_panel:getChildren()) do
		slot = child.item

		if not slot:getItem() then
			return slot
		end
	end

	return nil
end

function GameInfusion:isItemAddedToSlot(item)
	if not item then
		return false
	end

	local slotItem = self.item_slot.item:getItem()

	if slotItem and slotItem:getUUID() == item:getUUID() then
		return true
	end

	for _, child in ipairs(self.slot_panel:getChildren()) do
		local childItem = child.item:getItem()

		if childItem and childItem:getUUID() == item:getUUID() then
			return true
		end
	end

	return false
end

-- chunkname: @/modules/game_npcs/tradepost.lua

Tradepost = {
	sortOption = "demand",
	sortDirection = "desc",
	primingTradepack = false,
	sort_buttons = {},
	sortedRecipes = {},
	indexedRecipes = {}
}

function Tradepost:loadConfig()
	dofile("/modules/game_tradepacks/recipes.lua")

	for category, recipes in pairs(cfg.recipes) do
		for _, recipe in ipairs(recipes) do
			recipe.demand = 0
			recipe.category = category

			table.insert(self.sortedRecipes, recipe)

			self.indexedRecipes[recipe.itemid] = recipe
		end
	end

	return true
end

function Tradepost:isVisible()
	return self.window and self.window:isVisible()
end

function Tradepost:init()
	self:loadConfig()
	connect(Container, {
		onOpen = Tradepost.refreshOwnedMaterials,
		onRemoveItem = Tradepost.refreshOwnedMaterials,
		onUpdateItem = Tradepost.refreshOwnedMaterials,
		onAddItem = Tradepost.refreshOwnedMaterials
	})

	self.craftWindow = GameNpc.panels[windowTypes.tradepost_craft]

	self.craftWindow:setVisible(false)

	self.craftWindow.onVisibilityChange = Tradepost.onVisibilityChange
	self.sellWindow = GameNpc.panels[windowTypes.tradepost_sell]

	self.sellWindow:setVisible(false)

	self.sort_buttons.demand = self.craftWindow.top_panel.demand
	self.sort_buttons.name = self.craftWindow.top_panel.name
	self.list_panel = self.craftWindow.list_panel
	self.search_panel = self.craftWindow.top_panel.search_panel
	self.bottom_panel = self.craftWindow.bottom_panel
	self.sell_list_panel = self.sellWindow.list_panel
	self.sell_bottom_panel = self.sellWindow.bottom_panel

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.demand_panel = g_ui.createWidget("GameTradepostDemandPanel", HUDPanel)

	self:sort("demand")
	addEvent(function()
		self:populateList()
	end)
end

function Tradepost:terminate()
	self.craftWindow:destroy()
	self.sellWindow:destroy()

	if self.confirmWindow then
		self.confirmWindow:destroy()
	end

	disconnect(Container, {
		onOpen = Tradepost.refreshOwnedMaterials,
		onRemoveItem = Tradepost.refreshOwnedMaterials,
		onUpdateItem = Tradepost.refreshOwnedMaterials,
		onAddItem = Tradepost.refreshOwnedMaterials
	})

	Tradepost = nil
end

function Tradepost:onClose()
	self.sell_bottom_panel.widget = nil

	self.sell_list_panel:destroyChildren()

	if self.confirmWindow then
		self.confirmWindow:destroy()
	end
end

function Tradepost:onResize()
	if not self.craftWindow or not self.sellWindow then
		return
	end
end

function Tradepost:onOpenCraft(data)
	local npcNameLabel = GameNpc.window.topPanel:recursiveGetChildById("npcName")

	npcNameLabel:setText(data.tradepost)
	GameNpc:setPanel("tradepost_craft")

	self.quest = data.quest

	self:onSearchTextChanged()

	if self.bottom_panel.recipe then
		local recipe = self.bottom_panel.recipe

		self.bottom_panel.panel_top.demand:setText(recipe.active and recipe.demand or "Inactive")
		self.bottom_panel.panel_top.demand:setTooltip(recipe.active and "" or "This tradepack is not available to be crafted yet, it will unlock soon")
	end

	if g_game.isRavenQuest() then
		local primeTradepackAmount = data.primeTradepackAmount and math.max(0, data.primeTradepackAmount)

		self.bottom_panel.primeTradepackToggle.tooltip = tr("Tradepack Priming Charges: %d\nPriming increases the amount of gold you receive from delivering a tradepack by 100%%.", primeTradepackAmount)

		self.bottom_panel.primeTradepackLabel:setTooltip(self.bottom_panel.primeTradepackToggle.tooltip)

		if primeTradepackAmount == 0 then
			self:togglePrimeTradepack(false)
			self:enablePrimeTradepack(false)
		else
			self:enablePrimeTradepack(true)
		end
	else
		self.bottom_panel.primeTradepackToggle:setVisible(false)
		self.bottom_panel.primeTradepackLabel:setVisible(false)
	end

	signalcall(GameNpc.onOpenTradepostCraft)
	self.refreshOwnedMaterials()
end

function Tradepost:onOpenSell(data)
	self.refreshOwnedMaterials()

	local npcNameLabel = GameNpc.window.topPanel:recursiveGetChildById("npcName")

	npcNameLabel:setText(data.tradepost)
	GameNpc:setPanel("tradepost_sell")
	self:populateTradepacks(data)
	signalcall(GameNpc.onOpenTradepostSell)
end

function Tradepost.onVisibilityChange(window, visible)
	local self = Tradepost
	local tmpVisible = GameTradepacks.leftAttachedWindow:isVisible()

	if not visible then
		if not GameTradepacks.window:isVisible() then
			tmpVisible = false
		end

		if self.demand_panel:isVisible() then
			self.demand_panel:setVisible(false)
		end
	elseif GameTradepacks:canUpdateGlobalDemand() then
		GameTradepacks.lastGlobalDemandRequest = os.time()

		GameTradepacks:requestGlobalDemand()
	end

	GameTradepacks.leftAttachedWindow:setAttachedTo(visible and GameNpc.window or GameTradepacks.window)
	GameTradepacks.leftAttachedWindow:setOn(visible)
	GameNpc.window:recursiveGetChildById("bagButton"):setVisible(visible)
	addEvent(function()
		GameTradepacks:toggleLeftPanel(tmpVisible)
	end)
end

function Tradepost:sort(id, internal)
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

function Tradepost:onSearchTextChanged(text)
	for _, child in ipairs(self.list_panel:getChildren()) do
		if self.quest and child.recipe.category == TRADEPACK_CATEGORY_QUEST or not self.quest and child.recipe.category ~= TRADEPACK_CATEGORY_QUEST and (not text or #text == 0 or string.find(string.lower(child.recipe.name), string.lower(text))) then
			child:show()
		else
			child:hide()
		end
	end

	self:sort(self.sortOption, true)
end

function Tradepost:populateList(sort)
	local player = g_game.getLocalPlayer()

	if not sort then
		for _, recipe in ipairs(self.sortedRecipes) do
			local widget = g_ui.createWidget("GameTradepacksWindowListItem", self.list_panel)

			widget.recipe = recipe

			widget.name:setText(recipe.name)
			widget.item:setItemId(recipe.clientId)
			widget:setId(recipe.name:lower())

			for ___, material in ipairs(recipe.materials) do
				local material_widget = g_ui.createWidget("GameTradepacksWindowListMaterialItem", widget.material_list)

				material_widget.item:setItemId(material.clientId)
				material_widget:setTooltip(string.format("%ix %s", material.amount, material.name:titleCase()))

				material_widget.recipe = material

				if player then
					material_widget:setOn(player:getItemsCount(material.clientId) >= material.amount)
				end

				widget.expand_button:setVisible(false)

				widget.clickSound = true
				widget.hoverSound = true

				function widget.onClick()
					self:toggleBottomPanel(widget)
				end
			end
		end
	else
		self.list_panel:reorderChildren(sort)

		for _, widget in ipairs(sort) do
			widget.demand:setText(self.indexedRecipes[widget.recipe.itemid].active and self.indexedRecipes[widget.recipe.itemid].demand or "Inactive")
			widget.demand:setTooltip(self.indexedRecipes[widget.recipe.itemid].active and "" or "This tradepack is not available to be crafted yet, it will unlock soon")
		end
	end

	for _, child in ipairs(self.list_panel:getChildren()) do
		if child:isVisible() then
			self:toggleBottomPanel(child)

			return
		end
	end
end

function Tradepost:parseGlobalDemand(data)
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

function Tradepost.refreshOwnedMaterials()
	local self = Tradepost

	if not self.craftWindow:isVisible() and not self.sellWindow:isVisible() then
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

	local hasAllMaterials = true

	if self.bottom_panel:isVisible() then
		for _, material in ipairs(self.bottom_panel.materials:getChildren()) do
			local count = player:getItemsCount(material.recipe.clientId)

			material.amount:setText(string.format("%i / %i", count, material.recipe.amount))
			material.amount:setOn(count >= material.recipe.amount)

			if count < material.recipe.amount then
				hasAllMaterials = false
			end
		end
	end

	local canUseCertificate = player:getItemsCount(38523) > 0

	self.bottom_panel.useCertificateButton:setVisible(canUseCertificate)
	self.bottom_panel.craftButton:setChecked(canUseCertificate)
	self.bottom_panel.craftButton:setHovered(false)
	self.bottom_panel.craftButton:setEnabled(hasAllMaterials)
end

function Tradepost:toggleBottomPanel(widget)
	local recipe = widget.recipe

	if self.bottom_panel:isVisible() and self.bottom_panel.recipe and self.bottom_panel.recipe.itemid == recipe.itemid then
		self.bottom_panel:setVisible(false)
		widget:setOn(false)

		return
	end

	self.bottom_panel.recipe = recipe

	if self.bottom_panel.widget then
		self.bottom_panel.widget:setOn(false)
	end

	self.bottom_panel.widget = widget

	widget:setOn(true)
	self.bottom_panel:setVisible(true)

	local list_item = self.bottom_panel.panel_top

	list_item.item:setItemId(recipe.clientId)
	list_item.name:setText(recipe.name)
	list_item.demand:setText(recipe.active and recipe.demand or "Inactive")
	list_item.demand:setTooltip(recipe.active and "" or "This tradepack is not available to be crafted yet, it will unlock soon")

	local materials_list = self.bottom_panel.materials
	local player = g_game.getLocalPlayer()
	local hasAllMaterials = true

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

			if count < material.amount then
				hasAllMaterials = false
			end
		end
	end

	local canUseCertificate = player:getItemsCount(38523) > 0

	self.bottom_panel.useCertificateButton:setVisible(canUseCertificate and recipe.active)
	self.bottom_panel.craftButton:setChecked(canUseCertificate and recipe.active)
	self.bottom_panel.craftButton:setHovered(false)
	self.bottom_panel.craftButton:setEnabled(hasAllMaterials and recipe.active)

	for index = #recipe.materials + 1, #materials_list:getChildren() do
		materials_list:getChildByIndex(index):hide()
	end

	GameTradepacks:requestTradepack(recipe.itemid)
end

function Tradepost:onSetupCraftWindow(window)
	local name = window:recursiveGetChildById("name")
	local demand = window:recursiveGetChildById("demand")

	function self.search_panel.onTextChange()
		self:onSearchTextChanged(self.search_panel:getText())
	end

	function name.onClick()
		self:sort(name:getId())
	end

	function demand.onClick()
		self:sort(demand:getId())
	end
end

function Tradepost:getCurrentPack()
	local pack = {}
	local widget = self.sell_bottom_panel.widget

	if widget then
		pack = {
			uid = widget.uid
		}
	end

	local bottomPanel = self.bottom_panel

	if bottomPanel and bottomPanel:isVisible() then
		pack = {
			category = bottomPanel.recipe.category,
			id = bottomPanel.recipe.id
		}
	end

	return pack
end

function Tradepost:populateTradepacks(data)
	self.sell_bottom_panel.widget = nil

	self.sell_list_panel:destroyChildren()

	for _, tradepack in ipairs(data.tradepacks) do
		local widget = g_ui.createWidget("GameTradepostSellItem", self.sell_list_panel)

		widget.item:setTradepack(tradepack.pack)
		widget.name:setText(tradepack.pack.name)
		widget.price:setText(tradepack.turninPrice)

		widget.clientId = tradepack.pack.clientId
		widget.uid = tradepack.pack.uid
		widget.turninPrice = tradepack.turninPrice
		widget.clickSound = true

		function widget.onClick()
			self:populateSellInfo(widget)
		end

		if not self.sell_bottom_panel.widget then
			self:populateSellInfo(widget)
		end
	end
end

function Tradepost:populateSellInfo(widget)
	local bottomPanel = self.sell_bottom_panel

	if widget and widget ~= bottomPanel.widget then
		if bottomPanel.widget then
			bottomPanel.widget:setOn(false)
		end

		widget:setOn(true)
	else
		return
	end

	local tradepack = bottomPanel.tradepack

	tradepack.item:setItemId(widget.clientId)
	tradepack.name:setText(widget.name:getText())
	tradepack.price:setText(widget.price:getText())

	self.sell_bottom_panel.widget = widget
end

function Tradepost:onTogglePrimeTradepack(widget)
	self.primingTradepack = widget:isOn()
end

function Tradepost:togglePrimeTradepack(state)
	local widget = self.bottom_panel.primeTradepackToggle

	if widget:isOn() ~= state then
		widget:onClick()
	end
end

function Tradepost:enablePrimeTradepack(state)
	local widget = self.bottom_panel.primeTradepackToggle

	widget:setEnabled(state)
end

function Tradepost:isPrimingTradepack()
	return self.primingTradepack
end

function Tradepost:requestCraftTradepack(useCertificate)
	if self.confirmWindow then
		self.confirmWindow:destroy()

		self.confirmWindow = nil
	end

	local function yesCallback()
		GameNpc:sendOpcode({
			action = "dialogue",
			option = "tradepost_craft_pack",
			dialogueId = GameNpc.dialogueId,
			npcName = GameNpc.npcName,
			pack = Tradepost:getCurrentPack(),
			primeTradepack = Tradepost:isPrimingTradepack(),
			useCertificate = useCertificate
		})

		if not self.confirmWindow then
			return
		end

		self.confirmWindow:destroy()

		self.confirmWindow = nil
	end

	local player = g_game.getLocalPlayer()

	if player:getLevel() < cfg.protectionLevel then
		local function noCallback()
			self.confirmWindow:destroy()

			self.confirmWindow = nil
		end

		self.confirmWindow = displayGeneralBox("Confirm", "Once crafted, the Tradepack will disable PvP protection as long as you are holding it. If you die when carrying a Tradepack, the Tradepack is dropped and anyone is able to pick up the Tradepack.\nAre you sure you want to perform this action?", {
			{
				text = tr("Yes"),
				callback = yesCallback
			},
			{
				text = tr("No"),
				callback = noCallback
			},
			anchor = AnchorHorizontalCenter
		}, yesCallback, noCallback, nil)

		self.confirmWindow:setDraggable(false)

		function self.confirmWindow:onVisibilityChange(visible)
			if not visible then
				noCallback()
			end
		end

		return
	end

	yesCallback()
end

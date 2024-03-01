-- chunkname: @/modules/game_npcs/rangers_company_shop.lua

RangersCompanyShop = {}

function RangersCompanyShop.onGameEnd()
	return
end

function RangersCompanyShop:isVisible()
	return self.window and self.window:isVisible()
end

function RangersCompanyShop:init()
	connect(g_game, {
		onGameEnd = self.onGameEnd,
		onCoinBalance = self.onBalanceChange,
		onProtocolItem = self.onProtocolItem
	})
	connect(LocalPlayer, {
		onBountyMarksChange = self.onBountyMarksChange
	})

	self.window = GameNpc.panels[windowTypes.rangers_company_shop]

	self.window:setVisible(false)
end

function RangersCompanyShop:terminate()
	self.window:destroy()
	disconnect(g_game, {
		onGameStart = self.onGameStart,
		onOpenNpcTrade = self.onOpenNpcTrade,
		onCoinBalance = self.onBalanceChange,
		onProtocolItem = self.onProtocolItem
	})
	disconnect(LocalPlayer, {
		onBountyMarksChange = self.onBountyMarksChange
	})

	RangersCompanyShop = nil
end

function RangersCompanyShop:onTradeItem(widget)
	local bottomPanel = self.window:recursiveGetChildById("bottomPanel")

	if bottomPanel and bottomPanel:isOn() then
		local buy_button = bottomPanel:getChildById("buyButton")
		local item = bottomPanel:getChildById("shopItemInfo")
		local value = RangersCompanyShop.window:recursiveGetChildById("cost")
		local count = RangersCompanyShop.window:recursiveGetChildById("count")
		local minus = RangersCompanyShop.window:recursiveGetChildById("minus")
		local plus = RangersCompanyShop.window:recursiveGetChildById("plus")

		item.item:setItem(widget.item:getItem())
		item.name:setText(widget.name:getText())
		item.silver_price:setText(widget.silver_price:getText())
		item.bounty_price:setText(widget.bounty_price:getText())

		if widget.type == "cosmetic" then
			widget.realCount = 1

			count:hide()
			minus:hide()
			plus:hide()
		else
			count:show()
			minus:show()
			plus:show()
		end

		item.realCount = widget.realCount

		value.silver_price:setText(widget.silver_price)
		value.bounty_price:setText(widget.bounty_price)
		count:setText(widget.realCount or 1)
		self.onItemCountChange(count, count:getText())
		buy_button:show()

		function buy_button.onClick()
			GameNpc:sendOpcode({
				action = "dialogue",
				option = "npc_rangerscompany_shop_buy",
				dialogueId = GameNpc.dialogueId,
				npcName = GameNpc.npcName,
				name = widget.name:getText(),
				amount = tonumber(count:getText()) or 1
			})
		end
	end
end

function RangersCompanyShop:onOpenNpcTrade(data)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	RangersCompanyShop.window:recursiveGetChildById("silver").bounty_price:setText(player:getBountyMarks())

	local itemsPanel = RangersCompanyShop.window:recursiveGetChildById("itemsPanel")

	GameNpc:setTopPanelOn(true)

	local bottomPanel = RangersCompanyShop.window:recursiveGetChildById("bottomPanel")

	bottomPanel:setChecked(false)
	bottomPanel:setOn(false)

	local itemQuality = RangersCompanyShop.window:recursiveGetChildById("itemQuality")

	itemQuality:setOn(false)

	for rankId, items in ipairs(data.items) do
		local rankPanel = itemsPanel:getChildById("rankPanel" .. rankId) or g_ui.createWidget("RangersCompanyShopRankPanel", itemsPanel)

		rankPanel:setId("rankPanel" .. rankId)
		rankPanel.name:setText(tr("Rank %i - %s", rankId, modules.game_rangerscompany.cfg.rankToName[rankId]))

		local isLocked = rankId > data.rank

		for index, item in ipairs(items) do
			local itemWidget = rankPanel.list:getChildById("item" .. index) or g_ui.createWidget("RangersCompanyShopItem", rankPanel.list)

			itemWidget:setId("item" .. index)

			if item.clientId then
				itemWidget.item:setItemId(item.clientId)
				itemWidget.item:setCanHoverWhenDisabled(true)
			end

			itemWidget.name:setText(item.name)
			itemWidget.silver_price:setText(item.cost.silver or 0)
			itemWidget.bounty_price:setText(item.cost.bounty_marks or 0)

			itemWidget.category = rankId
			itemWidget.type = item.type

			itemWidget:setEnabled(not isLocked)

			function itemWidget.onClick(widget)
				if RangersCompanyShop.lastItem then
					RangersCompanyShop.lastItem:setOn(false)
				end

				RangersCompanyShop.lastItem = widget

				widget:setOn(true)
				bottomPanel:setOn(true)
				RangersCompanyShop:onTradeItem(itemWidget)
			end
		end

		rankPanel.list:update()
		rankPanel.name:setOn(not isLocked)
		rankPanel.lock_icon:setVisible(isLocked)

		if not isLocked and not rankPanel.expanded then
			rankPanel:onClick()
		elseif isLocked and rankPanel.expanded then
			rankPanel:onClick()
		end
	end

	GameNpc:setPanel("rangers_company_shop")
	self.window:show()
	self.window:raise()
	self.window:focus()
end

function RangersCompanyShop:buyItem()
	local bottomPanel = RangersCompanyShop.window:recursiveGetChildById("bottomPanel")

	if bottomPanel and bottomPanel:isOn() then
		g_game.buyItem(bottomPanel:recursiveGetChildById("item"):getItem(), bottomPanel:recursiveGetChildById("count"):getText(), true, false)
	end
end

function RangersCompanyShop:onSearchFilter(widget)
	local text = widget:getText()

	widget.placeholder:setVisible(text:len() == 0)

	for rankId, rankPanel in ipairs(RangersCompanyShop.window.itemsPanel:getChildren()) do
		local showRank = false

		for _, item in ipairs(rankPanel.list:getChildren()) do
			local name = item.name:getText():lower()
			local found = name:find(text:lower(), 1, true) ~= nil

			item:setVisible(found)

			item.hidden = not found

			if found then
				showRank = true
			end
		end

		local isLocked = rankPanel.lock_icon:isVisible()

		rankPanel:setVisible(showRank)
		rankPanel.list:update()
		rankPanel:setHeight(isLocked and rankPanel.shrinkedHeight or rankPanel.expandedHeight)

		if not rankPanel.expanded and showRank then
			rankPanel:onClick()
		elseif rankPanel.expanded and isLocked and (not showRank or text == "") then
			rankPanel:onClick()
		end
	end
end

function RangersCompanyShop.onBalanceChange(premium, balance)
	RangersCompanyShop.window:recursiveGetChildById("silver").silver_price:setText(balance)
end

function RangersCompanyShop.onItemCountChange(widget, text)
	local count = math.clamp(tonumber(text) or 0, 0, 1000)
	local price = tonumber(widget:getParent().silver_price:getText())

	RangersCompanyShop.window:recursiveGetChildById("cost").silver_price:setText(price * count)

	price = tonumber(widget:getParent().bounty_price:getText())

	RangersCompanyShop.window:recursiveGetChildById("cost").bounty_price:setText(price * count)
	widget:setText(count, true)
end

function RangersCompanyShop.onClose()
	if RangersCompanyShop.lastItem then
		RangersCompanyShop.lastItem:setOn(false)
	end

	RangersCompanyShop.lastItem = nil

	local bottomPanel = RangersCompanyShop.window:recursiveGetChildById("bottomPanel")

	if bottomPanel:isOn() then
		bottomPanel:setOn(false)
	end

	local search = RangersCompanyShop.window:recursiveGetChildById("textEdit")

	search:setText("")
end

function RangersCompanyShop.onBountyMarksChange(player, bountyMarks)
	RangersCompanyShop.window:recursiveGetChildById("silver").bounty_price:setText(bountyMarks)
end

function RangersCompanyShop.onProtocolItem(item)
	local self = RangersCompanyShop
	local panel = self.window.itemsPanel

	for _, rankPanel in ipairs(panel:getChildren()) do
		for _, itemWidget in ipairs(rankPanel.list:getChildren()) do
			if itemWidget.item:getItem():getId() == item:getId() then
				itemWidget.item:setItem(item)

				break
			end
		end
	end
end

-- chunkname: @/modules/game_premium_store/premium_store.lua

GamePremiumStore = {
	lastRequestTime = 0,
	max_items_per_row = 4,
	panels = {},
	gridCategories = {
		Cosmetics = true
	}
}

function GamePremiumStore:init()
	g_ui.importStyle("styles/main.otui")
	g_ui.importStyle("styles/ravencoins.otui")
	g_ui.importStyle("styles/limited_edition_bundles.otui")
	g_ui.importStyle("styles/premium.otui")
	g_ui.importStyle("styles/ravenpacks.otui")
	g_ui.importStyle("styles/services.otui")
	g_ui.importStyle("styles/cosmetics.otui")

	self.window = g_ui.createWidget("GamePremiumStoreWindow", modules.game_interface.getHUDPanel())

	self.window:hide()

	function rootWidget.onGeometryChange()
		addEvent(function()
			self.window:raise()
		end)
	end

	ProtocolGame.registerExtendedOpcode(ExtendedIds.PremiumStore, GamePremiumStore.onExtendedOpcode)
	connect(g_game, {
		onGameEnd = GamePremiumStore.onGameEnd
	})
end

function GamePremiumStore:terminate()
	self.window:destroy()

	self.window = nil

	if self.requestPurchaseEvent then
		self.requestPurchaseEvent:cancel()
	end

	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.PremiumStore)
	disconnect(g_game, {
		onGameEnd = GamePremiumStore.onGameEnd
	})

	GamePremiumStore = nil
end

function GamePremiumStore.onGameEnd()
	GamePremiumStore:close()
end

function GamePremiumStore.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.PremiumStore then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "open" then
		GamePremiumStore:setup(data)
		GamePremiumStore.window:show()
		GamePremiumStore.window:raise()
	elseif data.action == "purchase_url" then
		g_platform.openUrl(data.url)
	elseif data.action == "update_premium_days_left" then
		GamePremiumStore:setupPremiumDaysLeft(data.premium_days_left)
	elseif data.action == "update_ravencoins_balance" then
		GamePremiumStore:setupRavencoins(data.ravencoins)
	elseif data.action == "update_dawn_essence_amount" then
		GamePremiumStore:setupDawnEssence(data.dawn_essence)
	elseif data.action == "reconnect_characterlist" then
		CharacterList.reconnectOnGameEnd = true
	end
end

function GamePremiumStore:sendOpcode(data)
	local timeSinceLastRequest = g_clock.millis() - self.lastRequestTime

	if timeSinceLastRequest < 1000 then
		return
	end

	self.lastRequestTime = g_clock.millis()

	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.PremiumStore, g_game.serializeTable(data))
	end
end

function GamePremiumStore:setup(data)
	if not data.categories or table.empty(data.categories) then
		return
	end

	if not data.items or table.empty(data.items) then
		return
	end

	local categories = data.categories

	self:setupCategories(categories)
	self.window.left_panel.raven_coin_balance:hide()

	local items = data.items

	self:setupItems(items)

	local ravencoins = data.ravencoins

	self:setupRavencoins(ravencoins)

	local premium_days_left = data.premium_days_left

	self:setupPremiumDaysLeft(premium_days_left)

	local dawn_essence = data.dawn_essence

	self:setupDawnEssence(dawn_essence)
end

function GamePremiumStore:open()
	self:sendOpcode({
		action = "open"
	})
end

function GamePremiumStore:toggle()
	if self.window:isVisible() then
		self:close()
	else
		self:open()
	end
end

function GamePremiumStore:setupCategories(categories)
	local panel = self.window.left_panel.select_category.content

	panel:destroyChildren()

	for _, category in ipairs(categories) do
		local widget = g_ui.createWidget("GamePremiumStoreSelectCategoryWidget", panel)

		widget.button.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", category.icon))
		widget.text:setText(category.name)
		widget:setId(category.name)

		function widget.onClick()
			self:selectCategory(category.name)
		end

		local style = self.gridCategories[category.name] and "GamePremiumStoreWindowContentPanelGrid" or "GamePremiumStoreWindowContentPanel"
		local panel = g_ui.createWidget(style, self.window)

		panel:hide()
		panel:setId(category.name)

		if self.panels[category.name] then
			self.panels[category.name]:destroyChildren()
			self.panels[category.name]:destroy()
		end

		self.panels[category.name] = panel
	end

	self:selectCategory(categories[1].name)
end

function GamePremiumStore:setupItems(items)
	for category, items in pairs(items) do
		if category == "RavenCoins" then
			self:setupRavencoinsPanel(items)
			self.window.left_panel.raven_coin_balance:show()
		elseif category == "Patron" then
			self:setupPremiumPanel(items)
		elseif category == "Limited Edition Bundles" then
			self:setupLimitedEditionBundles(items)
		elseif category == "RavenPacks" then
			self:setupRavenpacksPanel(items)
		elseif category == "Services" then
			self:setupServicesPanel(items)
		elseif category == "Cosmetics" then
			self:setupCosmeticsPanel(items)
		end
	end
end

function GamePremiumStore:setupRavenpacksPanel(items)
	local panel = self.panels.RavenPacks

	for index, item in ipairs(items) do
		local widget = g_ui.createWidget("GamePremiumStoreRavenpacksItemWidget", panel.content.item_holder)

		widget.box.subtitle:setText(item.subtitle)
		widget.box.amount.text:setText(item.title)
		widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

		local purchase_button = widget.box.purchase_button

		if item.currency then
			if item.currency == "$" then
				purchase_button:setText(string.format("$ %s", item.price))
			elseif item.currency == "ravencoins" then
				purchase_button.icon:setChecked(true)
				purchase_button:onStyleApply(purchase_button:getStyleName(), {
					["&textAlign"] = "left",
					["&iconAlign"] = "left",
					["&textMarginLeft"] = "45",
					["&iconOffset"] = "20 0",
					["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.currency)
				})
				purchase_button:setText(item.price)
				addEvent(function()
					purchase_button:setWidth(purchase_button.text:getTextSize().width + 20 + 45)
				end)
			end

			function purchase_button.onClick()
				self:requestPurchase("RavenPacks", item)
			end
		else
			purchase_button:hide()
		end

		local purchase_button2 = widget.box.purchase_button2

		if item.additionalCurrency then
			purchase_button2.icon:setChecked(true)
			purchase_button2:onStyleApply(purchase_button2:getStyleName(), {
				["&textAlign"] = "left",
				["&iconAlign"] = "left",
				["&textMarginLeft"] = "45",
				["&iconOffset"] = "20 0",
				["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.additionalCurrency)
			})
			purchase_button2:setText(item.additionalPrice)
			addEvent(function()
				purchase_button2:setWidth(purchase_button2.text:getTextSize().width + 20 + 45)
				purchase_button2:show()
			end)

			function purchase_button2.onClick()
				self:requestPurchase("RavenPacks", item, item.additionalCurrency)
			end
		else
			purchase_button2:hide()
		end

		if item.bow then
			widget.box.bow.text:setText(item.bow.title)
			widget.box.bow:setImageColor(item.bow.color)
			widget.box.bow:show()
		end

		if item.box_background then
			widget.box:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.box_background))
		end

		if item.bonus then
			local bonusWidget = widget.bonus_panel:getFirstChild()

			if item.bonus.icon then
				bonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.bonus.icon))
				bonusWidget.icon:show()
			else
				bonusWidget.icon:hide()
			end

			bonusWidget:setText(item.bonus.text)
			bonusWidget:show()
		end
	end
end

function GamePremiumStore:setupRavencoinsPanel(items)
	local panel = self.panels.RavenCoins

	for index, item in ipairs(items) do
		local widget = g_ui.createWidget("GamePremiumStoreRavencoinsItemWidget", panel.content.item_holder)

		widget.box.amount.text:setText(FormatCommaNumber(item.amount))
		widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))
		widget.box.purchase_button:setText(string.format("$ %s", item.price))
		widget.box.subtitle:setText(item.name)

		if item.bow then
			widget.box.bow.text:setText(item.bow.title)
			widget.box.bow:setImageColor(item.bow.color)
			widget.box.bow:show()
		end

		if item.box_background then
			widget.box:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.box_background))
		end

		if item.bonus then
			local bonusWidget = widget.bonus_panel:getFirstChild()

			if item.bonus.icon then
				bonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.bonus.icon))
				bonusWidget.icon:show()
			else
				bonusWidget.icon:hide()
			end

			bonusWidget:setText(item.bonus.text)
			bonusWidget:show()
		end

		function widget.box.purchase_button.onClick()
			self:requestPurchase("RavenCoins", item)
		end
	end

	local market_button = g_ui.createWidget("GamePremiumStoreRavencoinsMarketButton", panel)

	market_button:setup()
	market_button.icon:setChecked(true)
	market_button:hide()
end

function GamePremiumStore:setupLimitedEditionBundles(items)
	local panel = self.panels["Limited Edition Bundles"]

	panel:setHeight(700)
	panel.content:setHeight(700)
	panel.content:setMarginBottom(110)

	for index, item in ipairs(items) do
		if not item.hidden then
			local widget = g_ui.createWidget("GamePremiumStoreLimitedEditionBundlesItemWidget", panel.content.item_holder)

			widget.box.title:setText(item.title)
			widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

			local purchase_button = widget.box.purchase_button

			if item.currency == "$" then
				purchase_button:setText(string.format("$ %s", item.price))
			else
				purchase_button.icon:setChecked(true)
				purchase_button:onStyleApply(purchase_button:getStyleName(), {
					["&textAlign"] = "left",
					["&iconAlign"] = "left",
					["&textMarginLeft"] = "45",
					["&iconOffset"] = "20 0",
					["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.currency)
				})
				purchase_button:setText(item.price)
				addEvent(function()
					purchase_button:setWidth(purchase_button.text:getTextSize().width + 20 + 45)
				end)
			end

			if item.box_background then
				widget.box:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.box_background))
			end

			if item.bonus then
				local bonusWidget = widget.bonus_panel:getFirstChild()

				if item.bonus.icon then
					bonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.bonus.icon))
					bonusWidget.icon:show()
				else
					bonusWidget.icon:hide()
				end

				bonusWidget:setText(item.bonus.text)
				bonusWidget:show()
			end

			if item.additional then
				local additionalBonusWidget = widget.bonus_panel:getLastChild()

				if item.additional.icon then
					additionalBonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.additional.icon))

					if item.additional.icon_size then
						additionalBonusWidget.icon:setSize(item.additional.icon_size)
					end

					additionalBonusWidget.icon:show()
				else
					additionalBonusWidget.icon:hide()
				end

				additionalBonusWidget:setText(item.additional.button)
				additionalBonusWidget:setTextColor(item.additional.button_color)
				additionalBonusWidget:show()

				local tooltip = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltip", panel)

				tooltip.title:setText(item.additional.title)

				if item.additional.subtitle then
					tooltip.subtitle:setText(item.additional.subtitle)
				else
					tooltip.content:setMarginTop(tooltip.content:getMarginTop() - 15)
				end

				for _, item in ipairs(item.additional.items) do
					local widget = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltipItem", tooltip.content)

					if item.icon then
						local iconSize = widget.icon:getSize()

						widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

						local imageTextureSize = widget.icon:getImageTextureSize()

						if imageTextureSize.height ~= iconSize.height or imageTextureSize.width ~= iconSize.width then
							widget.icon:setSize(imageTextureSize)

							if iconSize.height > imageTextureSize.height then
								widget.icon:setMarginTop(widget.icon:getMarginTop() + (iconSize.height - imageTextureSize.height) / 2)
							end
						end
					elseif item.itemId then
						widget.icon:setItemId(item.itemId)
					end

					widget.text:setText(item.name)
				end

				tooltip:setPhantom(true)

				function additionalBonusWidget.onHoverChange(additionalBonusWidget, hovered)
					tooltip:setPosition({
						x = panel.content:getX() + panel.content:getWidth() / 2 - tooltip:getWidth() / 2,
						y = additionalBonusWidget:getY() + additionalBonusWidget:getHeight() + 10
					})
					tooltip:setVisible(hovered)
				end
			end

			function widget.box.purchase_button.onClick()
				self:requestPurchase("Limited Edition Bundles", item)
			end
		end
	end
end

function GamePremiumStore:setupPremiumPanel(items)
	local panel = self.panels.Patron

	panel:setHeight(630)
	panel.content:setHeight(630)
	panel.content:setMarginBottom(110)

	for index, item in ipairs(items) do
		local widget = g_ui.createWidget("GamePremiumStorePremiumItemWidget", panel.content.item_holder)

		widget.box.subtitle:setText(item.subtitle)
		widget.box.amount.text:setText(item.title)
		self:animateWidget(widget.icon, "/images/ui/windows/premium_store/premium_token_animation/tag_%03d.png", 0, 239, 12)

		local purchase_button = widget.box.purchase_button

		if item.currency == "$" then
			purchase_button:setText(string.format("$ %s", item.price))
		else
			purchase_button.icon:setChecked(true)
			purchase_button:onStyleApply(purchase_button:getStyleName(), {
				["&textAlign"] = "left",
				["&iconAlign"] = "left",
				["&textMarginLeft"] = "45",
				["&iconOffset"] = "20 0",
				["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.currency)
			})
			purchase_button:setText(item.price)
			addEvent(function()
				purchase_button:setWidth(purchase_button.text:getTextSize().width + 20 + 45)
			end)
		end

		if item.bow then
			widget.box.bow.text:setText(item.bow.title)
			widget.box.bow:setImageColor(item.bow.color)
			widget.box.bow:show()
		end

		if item.box_background then
			widget.box:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.box_background))
		end

		if item.bonus then
			local bonusWidget = widget.bonus_panel:getFirstChild()

			if item.bonus.icon then
				bonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.bonus.icon))
				bonusWidget.icon:show()
			else
				bonusWidget.icon:hide()
			end

			bonusWidget:setText(item.bonus.text)
			bonusWidget:show()
		end

		if item.additional then
			local additionalBonusWidget = widget.bonus_panel:getLastChild()

			if item.additional.icon then
				additionalBonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.additional.icon))

				if item.additional.icon_size then
					additionalBonusWidget.icon:setSize(item.additional.icon_size)
				end

				additionalBonusWidget.icon:show()
			else
				additionalBonusWidget.icon:hide()
			end

			additionalBonusWidget:setText(item.additional.button)
			additionalBonusWidget:setTextColor(item.additional.button_color)
			additionalBonusWidget:show()

			local tooltip = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltip", panel.content)

			tooltip.title:setText(item.additional.title)
			tooltip.subtitle:setText(item.additional.subtitle)

			for _, item in ipairs(item.additional.items) do
				local widget = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltipItem", tooltip.content)

				if item.icon then
					widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))
				elseif item.itemId then
					widget.icon:setItemId(item.itemId)
				end

				widget.text:setText(item.name)
			end

			function additionalBonusWidget.onHoverChange(additionalBonusWidget, hovered)
				tooltip:setPosition({
					x = additionalBonusWidget:getX() - tooltip:getWidth() - 10,
					y = additionalBonusWidget:getY() + additionalBonusWidget:getHeight() / 2 - tooltip:getHeight() / 2
				})
				tooltip:setVisible(hovered)
			end
		end

		function purchase_button.onClick()
			self:requestPurchase("Patron", item)
		end
	end

	if items.premium_benefits then
		panel.footer:show()

		for _, item in ipairs(items.premium_benefits) do
			local benefitWidget = g_ui.createWidget("GamePremiumStorePremiumBenefitItem", panel.footer.content)

			benefitWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))
			benefitWidget.text:setText(item.name)
			benefitWidget:setTooltip(item.tooltip)

			if item.custom_tooltip then
				local tooltipPanel = g_ui.createWidget("GamePremiumStorePremiumBenefitCustomTooltip", panel.content)

				for _, tooltipData in ipairs(item.custom_tooltip) do
					local tooltip = g_ui.createWidget("GamePremiumStorePremiumBenefitCustomTooltipItem", tooltipPanel.content)

					tooltip.text:setText(tooltipData.text)
					tooltip.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", tooltipData.icon))
				end

				function benefitWidget.onHoverChange(benefitWidget, hovered)
					tooltipPanel:setPosition({
						x = benefitWidget:getX() + benefitWidget:getWidth() / 2 - tooltipPanel:getWidth() / 2,
						y = benefitWidget:getY() - tooltipPanel:getHeight() - 10
					})
					tooltipPanel:setVisible(hovered)
				end
			end
		end
	end
end

function GamePremiumStore:setupServicesPanel(items)
	local panel = self.panels.Services

	for index, item in ipairs(items) do
		if not item.hidden then
			local widget = g_ui.createWidget(string.format("GamePremiumStoreServicesItemWidget", category), panel.content.item_holder)

			widget.box.title:setText(item.title)
			widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

			if item.tooltip then
				widget.box:setTooltip(item.tooltip)
			end

			local purchase_button = widget.box.purchase_button

			if item.currency == "$" then
				purchase_button:setText(string.format("$ %s", item.price))
			else
				purchase_button.icon:setChecked(true)
				purchase_button:onStyleApply(purchase_button:getStyleName(), {
					["&textAlign"] = "left",
					["&iconAlign"] = "left",
					["&textMarginLeft"] = "45",
					["&iconOffset"] = "20 0",
					["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.currency)
				})
				purchase_button:setText(item.price)
				addEvent(function()
					purchase_button:setWidth(purchase_button.text:getTextSize().width + 20 + 45)
				end)
			end

			function widget.box.purchase_button.onClick()
				self:requestPurchase("Services", item)
			end
		end
	end
end

function GamePremiumStore:setupCosmeticsPanel(items)
	local panel = self.panels.Cosmetics
	local count = 0

	for index, item in ipairs(items) do
		if not item.hidden then
			count = count + 1

			local style = not item.isBundle and "GamePremiumStoreCosmeticsItemWidget" or "GamePremiumStoreCosmeticsItemBundleWidget"
			local widget = g_ui.createWidget(style, panel.content.item_holder)

			widget.box.title:setText(item.title)
			widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

			if item.tooltip then
				widget.box:setTooltip(item.tooltip)
			end

			local purchase_button = widget.box.purchase_button

			if item.currency == "$" then
				purchase_button:setText(string.format("$ %s", item.price))
			else
				purchase_button.icon:setChecked(true)
				purchase_button:onStyleApply(purchase_button:getStyleName(), {
					["&textAlign"] = "left",
					["&iconAlign"] = "left",
					["&textMarginLeft"] = "45",
					["&iconOffset"] = "20 0",
					["&iconPath"] = string.format("/images/ui/windows/premium_store/icon_purchase_%s", item.currency)
				})
				purchase_button:setText(item.price)
				addEvent(function()
					purchase_button:setWidth(purchase_button.text:getTextSize().width + 20 + 45)
				end)
			end

			if item.bonus then
				local bonusWidget = widget.bonus_panel:getFirstChild()

				if item.bonus.icon then
					bonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.bonus.icon))
					bonusWidget.icon:show()
				else
					bonusWidget.icon:hide()
				end

				bonusWidget:setText(item.bonus.text)
				bonusWidget:show()
			end

			if item.additional then
				local additionalBonusWidget = widget.bonus_panel:getLastChild()

				if item.additional.icon then
					additionalBonusWidget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.additional.icon))

					if item.additional.icon_size then
						additionalBonusWidget.icon:setSize(item.additional.icon_size)
					end

					additionalBonusWidget.icon:show()
				else
					additionalBonusWidget.icon:hide()
				end

				additionalBonusWidget:setText(item.additional.button)
				additionalBonusWidget:setTextColor(item.additional.button_color)
				additionalBonusWidget:show()

				local tooltip = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltip", panel)

				tooltip.title:setText(item.additional.title)

				if item.additional.subtitle then
					tooltip.subtitle:setText(item.additional.subtitle)
				else
					tooltip.content:setMarginTop(tooltip.content:getMarginTop() - 15)
				end

				for _, item in ipairs(item.additional.items) do
					local widget = g_ui.createWidget("GamePremiumStorePremiumAdditionalTooltipItem", tooltip.content)

					if item.icon then
						local iconSize = widget.icon:getSize()

						widget.icon:setImageSource(string.format("/images/ui/windows/premium_store/%s", item.icon))

						local imageTextureSize = widget.icon:getImageTextureSize()

						if imageTextureSize.height ~= iconSize.height or imageTextureSize.width ~= iconSize.width then
							widget.icon:setSize(imageTextureSize)

							if iconSize.height > imageTextureSize.height then
								widget.icon:setMarginTop(widget.icon:getMarginTop() + (iconSize.height - imageTextureSize.height) / 2)
							end
						end
					elseif item.itemId then
						widget.icon:setItemId(item.itemId)
					end

					widget.text:setText(item.name)
				end

				tooltip:setPhantom(true)

				function additionalBonusWidget.onHoverChange(additionalBonusWidget, hovered)
					tooltip:setPosition({
						x = panel.content:getX() + panel.content:getWidth() / 2 - tooltip:getWidth() / 2,
						y = additionalBonusWidget:getY() + additionalBonusWidget:getHeight() + 10
					})
					tooltip:setVisible(hovered)
				end
			end

			function widget.box.purchase_button.onClick()
				self:requestPurchase("Cosmetics", item)
			end
		end
	end

	local numLines = math.ceil(count / self.max_items_per_row)

	if numLines > 1 then
		panel.content:setHeight(panel.content:getHeight() + 220)
	end
end

function GamePremiumStore:selectCategory(name)
	local panel = self.panels[name]

	if not panel then
		return
	end

	for _, panel in pairs(self.panels) do
		panel:hide()
	end

	panel:show()

	for _, button in ipairs(self.window.left_panel.select_category.content:getChildren()) do
		button:setOn(false)
	end

	local button = self.window.left_panel.select_category.content:getChildById(name)

	if button then
		button:setOn(true)
	end
end

function GamePremiumStore:setupRavencoins(ravencoins)
	local panel = self.window.left_panel.raven_coin_balance.value

	panel:setText(FormatCommaNumber(ravencoins))
	signalcall(g_game.onRavencoinsBalanceChange, ravencoins)
end

function GamePremiumStore:setupPremiumDaysLeft(premium_days_left)
	local panel = self.window.left_panel.premium_days_balance.value

	if type(premium_days_left) == "string" then
		panel:setText(premium_days_left)

		return
	end

	panel:setText(string.format("%s day%s", premium_days_left, not (not (premium_days_left > 1) and premium_days_left ~= 0) and "s" or ""))
end

function GamePremiumStore:setupDawnEssence(dawn_essence)
	local panel = self.window.left_panel.dawn_essence_balance.value

	panel:setText(FormatCommaNumber(dawn_essence))
	signalcall(g_game.onDawnEssenceBalanceChange, dawn_essence)
end

function GamePremiumStore:close()
	self.window:hide()

	if self.confirm_box then
		self.confirm_box:destroy()

		self.confirm_box = nil
	end
end

function GamePremiumStore:animateWidget(widget, animationPath, startFrame, endFrame, FPS)
	local currentFrame = widget.currentAnimationFrame or 0

	if endFrame < currentFrame then
		currentFrame = startFrame
	end

	local prevImageSource = widget:getImageSource()

	widget:setImageSource(string.format(animationPath, currentFrame))

	widget.currentAnimationFrame = currentFrame + 1

	if prevImageSource ~= string.format(animationPath, currentFrame) then
		g_textures.unload(prevImageSource)
	end

	widget.animationEvent = scheduleEvent(function()
		self:animateWidget(widget, animationPath, startFrame, endFrame, FPS)
	end, 1000 / FPS)

	function widget.onVisibilityChange(widget, visible)
		if not visible then
			removeEvent(widget.animationEvent)
		else
			self:animateWidget(widget, animationPath, startFrame, endFrame, FPS)
		end
	end

	function widget.onDestroy(widget)
		removeEvent(widget.animationEvent)
	end
end

function GamePremiumStore:displayNameChangeBox(item)
	local function yesCallback(inputText)
		self.confirm_box:destroy()

		self.confirm_box = nil

		self:sendOpcode({
			category = "services",
			action = "name_change",
			website_id = item.website_id,
			name = inputText
		})
	end

	local function noCallback()
		self.confirm_box:destroy()

		self.confirm_box = nil
	end

	self.confirm_box = displayTextInputBox("Name Change", "Please enter the new name you want to use.", "", yesCallback, noCallback)

	self.window:blockInputPanel(true)

	function self.confirm_box.onDestroy()
		self.window:blockInputPanel(false)
	end

	self.confirm_box:raise()
end

function GamePremiumStore:requestPurchase(category, item, additionalCurrency)
	if self.requestPurchaseEvent then
		self.confirm_box_info = displayInfoBox(tr("RavenStore"), tr("Please wait a moment while your purchase request is being processed..."))

		function self.confirm_box_info.onOk()
			self.confirm_box_info = nil
		end

		return
	end

	if additionalCurrency then
		if self.confirm_box then
			return
		end

		local function yesCallback()
			self.confirm_box:destroy()

			self.confirm_box = nil

			if self.requestPurchaseEvent then
				self.requestPurchaseEvent:cancel()
			end

			self.requestPurchaseEvent = scheduleEvent(function()
				self.requestPurchaseEvent = nil

				self:sendOpcode({
					action = "request_purchase",
					category = category,
					website_id = item.website_id,
					additional_currency = additionalCurrency
				})
			end, 1000)
		end

		local function noCallback()
			self.confirm_box:destroy()

			self.confirm_box = nil
		end

		local confirmMessage = string.format("Are you sure you want to purchase %s for %d %s?", item.name or item.title, item.additionalPrice, additionalCurrency:gsub("_", " "):titleCase())

		if item.extraConfirmMessage then
			confirmMessage = string.format("%s\n%s", confirmMessage, item.extraConfirmMessage)
		end

		self.confirm_box = displayGeneralBox(tr("Confirm Purchase"), confirmMessage, {
			{
				text = tr("Confirm"),
				callback = yesCallback
			},
			{
				text = tr("Cancel"),
				callback = noCallback
			},
			anchor = AnchorHorizontalCenter
		}, yesCallback, noCallback, nil, self.window)

		self.window:blockInputPanel(true)

		function self.confirm_box.onDestroy()
			self.window:blockInputPanel(false)
		end

		self.confirm_box:raise()
	end

	if item.currency == "$" then
		self:sendOpcode({
			action = "request_purchase",
			category = category,
			website_id = item.website_id
		})

		return
	end

	if self.confirm_box then
		return
	end

	local function yesCallback()
		self.confirm_box:destroy()

		self.confirm_box = nil

		if item.website_id == "namechange" then
			self:displayNameChangeBox(item)

			return
		end

		if self.requestPurchaseEvent then
			self.requestPurchaseEvent:cancel()
		end

		self.requestPurchaseEvent = scheduleEvent(function()
			self.requestPurchaseEvent = nil

			self:sendOpcode({
				action = "request_purchase",
				category = category,
				website_id = item.website_id
			})
		end, 1000)
	end

	local function noCallback()
		self.confirm_box:destroy()

		self.confirm_box = nil
	end

	local confirmMessage = string.format("Are you sure you want to purchase %s for %d RavenCoins?", item.name or item.title, item.price)

	if item.extraConfirmMessage then
		confirmMessage = string.format("%s\n%s", confirmMessage, item.extraConfirmMessage)
	end

	self.confirm_box = displayGeneralBox(tr("Confirm Purchase"), confirmMessage, {
		{
			text = tr("Confirm"),
			callback = yesCallback
		},
		{
			text = tr("Cancel"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, self.window)

	self.window:blockInputPanel(true)

	function self.confirm_box.onDestroy()
		self.window:blockInputPanel(false)
	end

	self.confirm_box:raise()
end

function GamePremiumStore:onUsePremiumTokenPressed()
	if self.confirm_box then
		return
	end

	local function yesCallback()
		self.confirm_box:destroy()

		self.confirm_box = nil

		self:sendOpcode({
			action = "use_premium_token"
		})
	end

	local function noCallback()
		self.confirm_box:destroy()

		self.confirm_box = nil
	end

	self.confirm_box = displayGeneralBox(tr("Use Patron Token"), "Are you sure you want to use\n1 Patron Token? It will give you 30\ndays of premium account.", {
		{
			text = tr("Confirm"),
			callback = yesCallback
		},
		{
			text = tr("Cancel"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, self.window)

	self.window:blockInputPanel(true)

	function self.confirm_box.onDestroy()
		self.window:blockInputPanel(false)
	end

	self.confirm_box:raise()
end

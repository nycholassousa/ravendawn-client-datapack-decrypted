-- chunkname: @/modules/game_trade/trade.lua

GameTrade = {
	isSetText = false,
	isTrading = false,
	slots = {},
	panels = {},
	overlays = {},
	buttons = {}
}

function GameTrade:init()
	g_ui.importStyle("styles/trade")

	GameTrade.window = g_ui.createWidget("TradeWindow", modules.game_interface.getHUDPanel())

	GameTrade.window:hide()

	GameTrade.slots.player = GameTrade.window.content.player_content.playerItems
	GameTrade.slots.partner = GameTrade.window.content.partner_content.partnerItems
	GameTrade.panels.player = GameTrade.window.content.player_content.playerPanel
	GameTrade.panels.partner = GameTrade.window.content.partner_content.partnerPanel
	GameTrade.overlays.player = GameTrade.window.content.player_content.overlay
	GameTrade.overlays.partner = GameTrade.window.content.partner_content.overlay
	GameTrade.buttons.player = GameTrade.window.content.player_content.playerBottomPanel.accept_button
	GameTrade.buttons.partner = GameTrade.window.content.partner_content.partnerBottomPanel.accept_button

	connect(g_game, {
		onTradeRequest = GameTrade.onGameOpenTrade,
		onTradeItems = GameTrade.onGameUpdateTradeItems,
		onTradeSilver = GameTrade.onGameUpdateTradeSilver,
		onTradeState = GameTrade.onGameUpdateTradeState,
		onTradeClose = GameTrade.onGameCloseTrade,
		onCoinBalance = GameTrade.onBalanceChange,
		onGameEnd = GameTrade.onGameCloseTrade
	})

	for _, slot in pairs(GameTrade.slots.player:getChildren()) do
		slot.onDrop = GameTrade.onDropTradeItem

		connect(slot.item, {
			onItemChange = GameTrade.onItemChange
		})

		function slot.remove_button.onClick()
			local player = g_game.getLocalPlayer()
			local item = slot.item:getItem()

			if not item or not player then
				return
			end

			local inventoryItem = player:getItemByUUID(item:getUUID())

			g_game.itemTrade(inventoryItem)
		end
	end

	for _, slot in pairs(GameTrade.slots.partner:getChildren()) do
		connect(slot.item, {
			onItemChange = GameTrade.onItemChange
		})
	end

	self.playerTextEdit = GameTrade.window.content.player_content.textEditPanel.playerTextEdit
	self.playerTextEdit.onTextChange = GameTrade.onGameSilverChanged

	self.playerTextEdit:setValidCharacters("0123456789")

	self.partnerTextEdit = GameTrade.window.content.partner_content.textEditPanel.partnerTextEdit

	self.partnerTextEdit:setValidCharacters("0123456789")
end

function GameTrade:terminate()
	disconnect(g_game, {
		onTradeRequest = GameTrade.onGameOpenTrade,
		onTradeItems = GameTrade.onGameUpdateTradeItems,
		onTradeSilver = GameTrade.onGameUpdateTradeSilver,
		onTradeState = GameTrade.onGameUpdateTradeState,
		onTradeClose = GameTrade.onGameCloseTrade,
		onCoinBalance = GameTrade.onBalanceChange,
		onGameEnd = GameTrade.onGameCloseTrade
	})
	self:hide()
	GameTrade.window:destroy()
end

function GameTrade.resetInfo()
	for _, slot in pairs(GameTrade.slots.player:getChildren()) do
		slot.item:setItem(nil)
	end

	for _, slot in pairs(GameTrade.slots.partner:getChildren()) do
		slot.item:setItem(nil)
	end

	GameTrade.isSetText = false
	GameTrade.isTrading = false

	GameTrade.overlays.player:setOn(false)
	GameTrade.overlays.partner:setOn(false)
	GameTrade.buttons.player:setEnabled(true)
	GameTrade.buttons.partner:setChecked(false)
	GameTrade.playerTextEdit:setEditable(true)

	if GameTrade.silverEvent then
		removeEvent(GameTrade.silverEvent)
	end

	GameTrade.playerTextEdit:setText("0")
	GameTrade.partnerTextEdit:setText("0")

	for _, slot in pairs(GameTrade.slots.player:getChildren()) do
		slot.item:setItem(nil)
	end

	for _, slot in pairs(GameTrade.slots.partner:getChildren()) do
		slot.item:setItem(nil)
	end
end

function GameTrade.hide()
	if GameTrade.window:isVisible() then
		g_layout.onCloseWindow(GameTrade.window)
		GameTrade.window:hide()
		g_mouse.popCursor()
	end

	g_game.rejectTrade()
	GameTrade.resetInfo()
end

function GameTrade.close()
	GameTrade.hide()
end

function GameTrade.show()
	GameTrade.window:show()
	GameTrade.window:raise()
	GameTrade.window:focus()
end

function GameTrade.acceptTrade(button)
	button:setEnabled(false)
	GameTrade.playerTextEdit:setEditable(false)
	scheduleEvent(function()
		g_game.acceptTrade()
	end, 1000)
end

function GameTrade:onDropTradeItem(widget, mousePos)
	local item = widget:isItem() and widget:getItem() or nil

	if item ~= nil then
		g_game.itemTrade(item)
	end
end

function GameTrade.onGameUpdateTradeItems(playerItems, partnerItems)
	for index, slot in pairs(GameTrade.slots.player:getChildren()) do
		slot.item:setItem(playerItems[index])
	end

	for index, slot in pairs(GameTrade.slots.partner:getChildren()) do
		slot.item:setItem(partnerItems[index])
	end
end

function GameTrade.onItemChange(widget)
	local parent = widget:getParent()
	local item = widget:getItem()

	if GameTrade.slots.player:hasChild(parent) then
		parent.remove_button:setVisible(item)
	end

	parent.name:setText(item and item:getName())
end

function GameTrade.onGameOpenTrade(tradePartner)
	local player = g_game.getLocalPlayer()

	if not player or not tradePartner then
		g_game.rejectTrade()

		return
	end

	local playerNameLabel = GameTrade.panels.player.name
	local playerOutfit = GameTrade.panels.player.outfit
	local traderNameLabel = GameTrade.panels.partner.name
	local traderOutfit = GameTrade.panels.partner.outfit

	playerNameLabel:setText(player:getName())
	traderNameLabel:setText(tradePartner:getName())
	playerOutfit:setOutfit(player:getOutfit())
	traderOutfit:setOutfit(tradePartner:getOutfit())
	GameTrade.show()

	GameTrade.isTrading = true
end

function GameTrade.onGameUpdateTradeState(playerState, traderState)
	local button = GameTrade.buttons.player

	if button then
		button:setEnabled(playerState ~= TradeState.Accept)
	end

	GameTrade.playerTextEdit:setEditable(playerState ~= TradeState.Accept)
	GameTrade.buttons.partner:setChecked(traderState == TradeState.Accept)
	GameTrade.slots.player:setOn(playerState == TradeState.Accept)
	GameTrade.slots.partner:setOn(traderState == TradeState.Accept)
	GameTrade.overlays.player:setOn(playerState == TradeState.Accept)
	GameTrade.overlays.partner:setOn(traderState == TradeState.Accept)
end

function GameTrade.onGameCloseTrade()
	GameTrade.close()
end

function GameTrade.onBalanceChange(premium, amount)
	GameTrade.balance = amount
end

function GameTrade.onGameUpdateTradeSilver(playerSilver, traderSilver)
	GameTrade.isSetText = true

	GameTrade.playerTextEdit:setText(playerSilver)
	GameTrade.partnerTextEdit:setText(traderSilver)

	GameTrade.isSetText = nil
end

function GameTrade.onGameSilverChanged(widget, amount, oldAmount)
	amount, oldAmount, value = tonumber(amount), tonumber(oldAmount), 0

	if not widget:isEditable() or not GameTrade.isTrading or GameTrade.isSetText or amount == oldAmount then
		return
	end

	if GameTrade.silverEvent then
		removeEvent(GameTrade.silverEvent)
	end

	GameTrade.isSetText = true

	if amount and type(amount) == "number" then
		value = math.max(0, math.min(amount, GameTrade.balance or g_game.getLocalPlayer().silverBalance or 0))
	end

	widget:setText(value ~= 0 and value or "")
	widget:setCursorPos(#widget:getText())

	GameTrade.silverEvent = scheduleEvent(function()
		if GameTrade.isTrading then
			local silver = tonumber(GameTrade.playerTextEdit:getText())

			if silver then
				g_game.silverTrade(silver)
			end
		end
	end, 500)
	GameTrade.isSetText = nil
end

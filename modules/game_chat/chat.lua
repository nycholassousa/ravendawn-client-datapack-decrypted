-- chunkname: @/modules/game_chat/chat.lua

GameChat = {
	currentTalkType = "Say",
	messageHistoryPos = 0,
	enabled = false,
	messageQueueSize = 0,
	privateTabs = {},
	messageHistory = {},
	currentTab = {
		name = "general",
		messageBuffer = {},
		hiddenMessageBuffer = {}
	},
	messageBufferPanels = {
		looking_for_group = 0,
		guild = 0,
		party = 0,
		action_log = 0,
		server_log = 0,
		global_spa = 0,
		global_pl = 0,
		global_br = 0,
		global_en = 0,
		general = 0
	},
	messageBuffers = {
		general = {},
		global_en = {},
		global_br = {},
		global_pl = {},
		global_spa = {},
		server_log = {},
		action_log = {},
		party = {},
		guild = {},
		looking_for_group = {}
	},
	reusableWidgets = {},
	hotkeyDisconnects = {},
	events = {}
}

function GameChat:loadConfig()
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

function GameChat:init()
	if not self:loadConfig() then
		return false
	end

	g_ui.importStyle("styles/main.otui")

	self.window = g_ui.createWidget("GameChatWindow", modules.game_interface.getHUDPanel())

	self.window:hide()
	self.window:setAutoRepeatDelay(500)

	self.globalChatSelectionWidget = g_ui.createWidget("GameChatListOptionSelection", self.window.content)

	table.insert(self.hotkeyDisconnects, g_keyboard.bindKeyDown("Enter", function()
		GameChat:sendMessage()
	end))
	table.insert(self.hotkeyDisconnects, g_keyboard.bindKeyDown("Tab", function()
		GameChat:selectNextTab()
	end))
	table.insert(self.hotkeyDisconnects, g_keyboard.bindKeyUp("Shift+Up", function()
		GameChat:navigateMessageHistory(1)
	end))
	table.insert(self.hotkeyDisconnects, g_keyboard.bindKeyUp("Shift+Down", function()
		GameChat:navigateMessageHistory(-1)
	end))

	local textEdit = self.window.content.textEditPanel.textEdit

	g_keyboard.bindKeyPress("Ctrl+C", function()
		GameChat:copyCorrectSelectionToClipboard()
	end, textEdit)
	self:setupButtonList()
	self:setupMessageBuffers()

	for _ in pairs(self.messageBufferPanels) do
		for __ = 1, cfg.messageBufferSize do
			local widget = g_ui.createWidget("GameChatMessage")

			widget:hide()
			table.insert(self.reusableWidgets, widget)
		end
	end

	connect(g_game, {
		onTalk = GameChat.onTalk,
		onTextMessage = GameChat.onTextMessage,
		onGameStart = GameChat.onGameStart,
		onGameEnd = GameChat.onGameEnd,
		onReplaceChatMessage = GameChat.onReplaceChatMessage
	})
	connect(self.window, {
		onPositionChange = GameChat.onPositionChange
	})
	self.window.content.textEditPanel.textEdit:setAutoRepeatDelay(500)
	connect(self.window.content.textEditPanel.textEdit, {
		onKeyPress = GameChat.onTextInputKeyPress
	})
	addEvent(function()
		self:shrink()
	end)

	if g_game.isOnline() then
		self:onGameStart()
	end
end

function GameChat:terminate()
	if self.windowChangeEvent then
		removeEvent(self.windowChangeEvent)
	end

	disconnect(g_game, {
		onTalk = GameChat.onTalk,
		onTextMessage = GameChat.onTextMessage,
		onGameStart = GameChat.onGameStart,
		onGameEnd = GameChat.onGameEnd
	})
	disconnect(self.window, {
		onPositionChange = GameChat.onPositionChange
	})
	disconnect(self.window.privateMessagesPanel.privateMessages, {
		onTabChange = GameChat.onPrivateTabChange,
		onAddTab = GameChat.onPrivateTabAdd,
		onRemoveTab = GameChat.onPrivateTabRemove
	})
	disconnect(self.window.content.textEditPanel.textEdit, {
		onKeyPress = GameChat.onTextInputKeyPress
	})

	for _, hotkey in pairs(self.hotkeyDisconnects) do
		for _, disconnect in pairs(hotkey) do
			disconnect()
		end
	end

	for _, privateTab in pairs(GameChat.privateTabs) do
		privateTab.widget:destroy()
	end

	if self.window then
		self.window:destroy()

		self.window = nil
	end

	for _, widget in pairs(self.reusableWidgets) do
		widget:destroy()
	end

	GameChat = nil
end

function GameChat:isEnabled()
	return self.enabled
end

function GameChat.onTalk(name, level, mode, text, channelId, pos, senderId, hash, senderPremium, tabName)
	local config = cfg.talkModeSettings[mode]

	if not config then
		print("unhandled message mode: " .. mode, text)

		return
	end

	local social = modules.game_social.GameSocial

	if social:isIgnored(name) then
		return
	end

	name = name and name:lower()

	local tab

	for _, info in pairs(buttonList) do
		if info.selection then
			for _, selection in pairs(info.selection) do
				if selection.channelId and selection.channelId == channelId then
					tab = selection.buffer
					config.channelId = channelId

					break
				end
			end
		end

		if info.channelId and info.channelId == channelId then
			tab = info.name
			config.channelId = channelId

			break
		end
	end

	tab = tab or config.tab

	if not tab and config.private then
		tab = tabName or name

		local player = g_game.getLocalPlayer()

		if player and player:getName():lower() == tab then
			return
		end

		if not GameChat.privateTabs[tab] then
			GameChat:addPrivateMessageWidget(tab:titleCase(), true)
		end
	end

	local nlevel = tonumber(string.match(level, "%[(%d+)%]"))

	if not nlevel or nlevel <= 0 then
		text = tr(text)
	end

	local customTextColor

	if mode == TalkTypes.TalkTypeSay then
		local creature = g_map.getCreatureById(senderId)

		if creature then
			local speechBubble = g_ui.createWidget("SpeechBubble")

			speechBubble:setValue(text)
			speechBubble:setHash(hash)
			speechBubble:setOwner(creature)
			speechBubble:display(creature)

			if creature:isNpc() then
				customTextColor = cfg.npcTextColor
			end

			if senderPremium then
				local player = g_game.getLocalPlayer()
				local isMessageSent = player and player:getName():lower() == name:lower()
				local textColor = isMessageSent and cfg.premiumTextColor.send or cfg.premiumTextColor.receive

				speechBubble.text:setTextColor(textColor)
			end
		end
	end

	GameChat:addMessageWidget(name:titleCase(), text, tab, config, senderId, customTextColor, senderPremium, nil, name)
end

function GameChat.onTextMessage(mode, text)
	if #text == 0 then
		if mode == TextTypes.TextTypeScreenBox or mode == TextTypes.TextTypeScreenBoxNoDuration then
			GameScreenMessage:hide()
		end

		return
	end

	local config = cfg.textModeSettings[mode]

	if not config then
		print("unhandled message mode: " .. mode, text)

		return
	end

	local tab = config.tab or "general"

	if mode == TextTypes.TextTypeSpeechBubble then
		local player = g_game.getLocalPlayer()

		if player then
			local speechBubble = g_ui.createWidget("SpeechBubble")

			speechBubble:setValue(text)

			local textColor = config.color

			if player:isPremium() then
				textColor = cfg.premiumTextColor.send
			end

			speechBubble:display(player, textColor, true)
		end
	end

	if mode == TextTypes.TextTypeScreenBox or mode == TextTypes.TextTypeScreenBoxNoDuration then
		GameScreenMessage:display(text, mode == TextTypes.TextTypeScreenBoxNoDuration and -1 or nil)

		return
	end

	if mode == TextTypes.TextTypeScreenError then
		GameNotification:displayScreenMessage(text)

		return
	end

	if tab ~= "action_log" and config.type then
		GameNotification:display(config.type, nil, text)
	end

	text = tr(text)
	GameChat.messageQueueSize = GameChat.messageQueueSize + 1
	GameChat.events[GameChat.messageQueueSize] = scheduleEvent(function()
		GameChat:addMessageWidget(text, nil, tab, config, nil, config.color)
	end, math.max(100, GameChat.messageQueueSize * 100))
end

function GameChat:setupButtonList()
	local widget = self.window.content.buttonList
	local content = widget.content

	for _, info in ipairs(cfg.buttonList) do
		local button = g_ui.createWidget("GameChatListOptionButton", content)

		if info.selection then
			local defaultGlobalChat = g_settings.getString("defaultGlobalChat", "english")
			local selection = info.selection[defaultGlobalChat]

			button.icon:setImageSource(string.format("%s/%s", button.imagePath, string.format("icon_%s", selection.buffer)))
			button:setId(selection.buffer)

			if selection.tooltip then
				button.icon:setTooltip(selection.tooltip)
			end

			if selection.notification then
				button.hasNotification = true
			end

			if selection.splitter then
				button.splitter:show()
			end

			button.selection:show()
			button.selection:addItems(info.selection)

			self.currentGlobalChatChannelId = selection.channelId
		else
			button:setId(info.name)
			button.icon:setImageSource(string.format("%s/%s", button.imagePath, string.format("icon_%s", info.name)))

			if info.notification then
				button.hasNotification = true
			end

			if info.tooltip then
				button.icon:setTooltip(info.tooltip)
			end

			if info.splitter then
				button.splitter:show()
			end
		end

		button.icon:update()
	end
end

function GameChat:getTabWidgetByName(name)
	return self.window.content.buttonList.content:getChildById(name)
end

function GameChat:changeCurrentTab(tabName, private)
	tabName = tabName:lower()

	local config = cfg.indexedButtonList[tabName]

	if not private and (not config or not config.isTab) then
		return
	end

	if self.currentTab.hiddenBufferPanel then
		for _, child in ipairs(self.currentTab.hiddenBufferPanel:getChildren()) do
			if child.fadeOut then
				removeEvent(child.fadeOut)

				child.fadeOut = nil
			end

			if child.fadeEvent then
				removeEvent(child.fadeEvent)

				child.fadeEvent = nil

				if child.fadeOutCallback then
					child.fadeOutCallback = nil
				end

				child:setOpacity(1)
			end

			self.currentTab.hiddenBufferPanel:removeChild(child)
			child:setOn(false)

			if private then
				self.privateTabs[tabName].messageBufferPanel:addChild(child)
			else
				self.messageBufferPanels[tabName]:addChild(child)
			end
		end
	end

	self.window.content.textEditPanel.talkType:setVisible(tabName == "general")
	self.window.content.textEditPanel.textEdit:setTextPreview("")

	local scrollBar

	if self.currentTab.messageBufferPanel then
		self.currentTab.messageBufferPanel:hide()
		self.currentTab.messageBufferPanel:updateScrollBars()
	end

	if self.currentTab.widget then
		self.currentTab.widget:setOn(false)
		self.currentTab.widget.icon:setOn(false)
	end

	self.currentTab.name = tabName
	self.currentTab.widget = self:getTabWidgetByName(tabName)

	if not private then
		self.currentTab.widget:setOn(true)
		self.currentTab.widget.icon:setOn(true)

		self.currentTab.private = false
	else
		local tab = self.privateTabs[tabName]

		if not tab then
			self:changeCurrentTab("general")

			return
		end

		tab.widget:getParent():selectTab(tab.widget, true)

		self.currentTab.private = true
	end

	self.currentTab.messageBufferPanel = private and self.privateTabs[tabName].messageBufferPanel or self.messageBufferPanels[tabName]

	if self.currentTab.messageBufferPanel then
		self.currentTab.messageBufferPanel:show()
		self.currentTab.messageBufferPanel:updateScrollBars()

		scrollBar = self.currentTab.messageBufferPanel.verticalScrollBar

		if scrollBar then
			scrollBar:increment(999999)
		end
	end

	self:clearNotifications(self.currentTab.name, self.currentTab.private)

	local textEditActive = false

	if not private then
		for _, tab in pairs(self.privateTabs) do
			tab.widget:setChecked(false)
			tab.widget.closeButton:setStyle("GameChatPrivateMessageNotificationButton")
		end
	else
		textEditActive = true
	end

	if config then
		self.currentTab.channelId = config.channelId
		textEditActive = not config.internal
	end

	self.window.content.textEditPanel.textEdit:setOn(textEditActive)

	if textEditActive then
		self.window.content.textEditPanel.textEdit:recursiveFocus(ActiveFocusReason)
	end

	self:resetTextInputPrefix()

	if tabName == "party" then
		local player = g_game.getLocalPlayer()

		if not player then
			return
		end

		local isPartyMember = player:isPartyMember()

		self.window.content.party_upper_panel:setOn(isPartyMember)
		self.window.content.textEditPanel.textEdit:setOn(isPartyMember)
		self.window.content.party_upper_panel:show()

		if not isPartyMember then
			self:resetMessageBuffer("party")
		end
	else
		self.window.content.party_upper_panel:hide()
	end

	self:hideGlobalChatSelectionWindow(not self.enabled)
end

function GameChat:chatMessageGetSelection(focusedChild)
	local widget = focusedChild:getFocusedChild()

	if not widget then
		return false
	end

	if widget.hasSelection and widget:hasSelection() then
		return widget:getSelection()
	end

	return false
end

function GameChat:copyCorrectSelectionToClipboard()
	local textEdit = self.window.content.textEditPanel.textEdit

	if textEdit:hasSelection() then
		return false
	end

	local currentBuffer = self.currentTab.messageBufferPanel

	if not currentBuffer then
		return false
	end

	local focusedChild = currentBuffer:getFocusedChild()

	if not focusedChild then
		return false
	end

	local selection = self:chatMessageGetSelection(focusedChild)

	if selection then
		g_window.setClipboardText(selection)

		return true
	end

	return false
end

function GameChat:sendMessage()
	if not self.enabled then
		if not IsTextEditActive() then
			self:enable()
		end

		return
	end

	local textEdit = self.window.content.textEditPanel.textEdit
	local message = textEdit:getText()

	if not message or #message == 0 then
		self:disable()

		return
	end

	if not textEdit:isEnabled() then
		return
	end

	local player = g_game.getLocalPlayer()
	local prefix = textEdit:getParent().textEditPrefix

	if prefix and prefix.name or self.currentTab.private then
		local name = prefix and prefix.name and prefix.name:lower() or self.currentTab.name

		g_game.talkPrivate(TalkTypes.TalkTypePrivateTo, name, message)
		GameChat.onTalk(player:getName(), player:getLevel(), TalkTypes.TalkTypePrivateTo, message, nil, player:getPosition(), player:getId(), nil, player:isPremium(), name)
		GameChat:changeCurrentTab(name, true)
	elseif message:sub(1, 5) == "/lua " then
		local code = message:sub(6)

		g_game.talkChannel(TalkTypes.TalkTypeChannelWhite, cfg.LuaChannelId, code)
	elseif self.currentTab.name == "global_en" or self.currentTab.name == "global_br" or self.currentTab.name == "global_pl" or self.currentTab.name == "global_spa" or self.currentTalkType:lower() == "global" then
		g_game.talkChannel(TalkTypes.TalkTypeChannelWhite, self.currentGlobalChatChannelId, message)
	elseif self.currentTab.name == "party" or self.currentTab.name == "general" and self.currentTalkType:lower() == "party" then
		local config = cfg.indexedButtonList.party

		g_game.talkChannel(TalkTypes.TalkTypeChannelYellow, config.channelId, message)
	elseif self.currentTab.name == "guild" or self.currentTab.name == "general" and self.currentTalkType:lower() == "guild" then
		local config = cfg.indexedButtonList.guild

		g_game.talkChannel(TalkTypes.TalkTypeChannelYellow, config.channelId, message)
	elseif self.currentTab.name == "looking_for_group" or self.currentTab.name == "general" and self.currentTalkType:lower() == "looking_for_group" then
		local config = cfg.indexedButtonList.looking_for_group

		g_game.talkChannel(TalkTypes.TalkTypeChannelYellow, config.channelId, message)
	elseif self.currentTab.private then
		g_game.talkPrivate(TalkTypes.TalkTypePrivateTo, self.currentTab.name, message)
		GameChat.onTalk(player:getName(), player:getLevel(), TalkTypes.TalkTypeGameMasterPrivateFrom, message, nil, player:getPosition(), player:getId(), player:isPremium(), self.currentTab.name)
	elseif self.currentTab.name == "general" then
		g_game.talk(message)
	end

	self:addToMessageHistory(message)
	textEdit:setText(nil)
	self:resetTextInputPrefix()
	self:resetMessageHistoryPos()
end

function GameChat:addToMessageHistory(message)
	local history = self.messageHistory

	table.insert(history, 1, message)

	if #history > cfg.messageHistorySize then
		table.remove(history)
	end
end

function GameChat:navigateMessageHistory(direction)
	local history = self.messageHistory

	if #history == 0 then
		return
	end

	if not self.window.content.textEditPanel.textEdit:isOn() then
		return
	end

	self.messageHistoryPos = self.messageHistoryPos + direction

	if self.messageHistoryPos > #history then
		self.messageHistoryPos = #history
	end

	if self.messageHistoryPos < 1 then
		self.window.content.textEditPanel.textEdit:setText(nil)

		self.messageHistoryPos = 0

		return
	end

	self.window.content.textEditPanel.textEdit:setText(history[self.messageHistoryPos])
end

function GameChat:resetMessageHistoryPos()
	self.messageHistoryPos = 0
end

function GameChat:resetMessageBuffer(tab)
	self.messageBuffers[tab] = {}

	local bufferPanel = tab and self.messageBufferPanels[tab] or self.currentTab.messageBufferPanel

	for _, widget in ipairs(bufferPanel:getChildren()) do
		bufferPanel:removeChild(widget)

		self.reusableWidgets[#self.reusableWidgets + 1] = widget
	end
end

function GameChat:resetAllMessageBuffers()
	for name in pairs(self.messageBuffers) do
		self:resetMessageBuffer(name)
	end

	self:clearAllNotifications()
end

function GameChat:addToMessageBuffer(widget, tab, limit, private)
	local buffer = self.messageBuffers[tab] or private and self.privateTabs[tab].messageBuffer

	if not buffer then
		return
	end

	table.insert(buffer, widget)

	if limit <= #buffer then
		local messageWidget = table.remove(buffer, 1)

		removeEvent(messageWidget.fadeOut)
		removeEvent(messageWidget.fadeOutEvent)
		messageWidget:setOn(false)
		messageWidget:getParent():removeChild(messageWidget)
		table.insert(self.reusableWidgets, messageWidget)
	end
end

function GameChat:setupMessageBuffers()
	for name in pairs(self.messageBufferPanels) do
		self.messageBufferPanels[name] = self.window.content:getChildById(string.format("%s_buffer", name))
	end

	self.currentTab.hiddenBufferPanel = self.window.hiddenMessagesPanel
end

function GameChat:getOrCreateMessageWidget(parent)
	if #self.reusableWidgets == 0 then
		return g_ui.createWidget("GameChatMessage", parent)
	end

	local widget = table.remove(self.reusableWidgets, #self.reusableWidgets)

	widget:show()
	widget.text:show()
	parent:addChild(widget)

	return widget
end

function GameChat:addGeneralChatWidget(originalWidget)
	local buffer = self.messageBufferPanels.general
	local widget = self:getOrCreateMessageWidget(buffer)

	widget.title:setText(originalWidget.title:getText())
	widget.title:setColor(originalWidget.title:getColor())
	widget.title.time:setText(originalWidget.title.time:getText())
	widget.text:setText(originalWidget.text:getText())
	widget.text:setColor(originalWidget.text:getColor())
	widget.text:setVisible(originalWidget.text:getText() ~= "")

	widget.onMousePress = originalWidget.onMousePress

	if not self.enabled and self.currentTab.name == "general" then
		widget:setOn(true)
		self.currentTab.hiddenBufferPanel:addChild(widget)

		widget.fadeOut = scheduleEvent(function()
			g_effects.fadeOut(widget, 1000, nil, false, function()
				widget.fadeOutEvent = nil

				self.currentTab.hiddenBufferPanel:removeChild(widget)
				widget:setOn(false)
				buffer:addChild(widget)
				widget:setOpacity(1)
			end)

			widget.fadeOut = nil
		end, 5000)
	end

	self:addToMessageBuffer(widget, "general", cfg.messageBufferSize)
end

function GameChat:addMessageWidget(title, text, tab, config, senderId, customTextColor, isPremium, internalGeneralChatMessage, name)
	if not text then
		self.messageQueueSize = self.messageQueueSize - 1
	end

	tab = tab:lower()

	local buffer = tab and (config.private and self.privateTabs[tab].messageBufferPanel or self.messageBufferPanels[tab]) or self.currentTab.messageBufferPanel
	local widget = self:getOrCreateMessageWidget(buffer)

	widget.text:setText(text)
	widget.title.time:setText(os.date("%I:%M %p"))

	local channelPrefix = cfg.chatMessageTitlePrefix[tab] or cfg.chatMessageTitlePrefix[config.private and "private" or ""] or ""

	if config.private then
		local player = g_game.getLocalPlayer()

		if senderId and (senderId == 0 or senderId ~= player:getId()) then
			g_sound.play(cfg.RECEIVE_WHISPER_SFX)
		else
			g_sound.play(cfg.SEND_WHISPER_SFX)
		end
	else
		local player = g_game.getLocalPlayer()

		if senderId and senderId > 0 and senderId == player:getId() then
			g_sound.play(cfg.SEND_MESSAGE_SFX)
		end
	end

	function widget.onMousePress(widget, mousePos, mouseButton)
		if mouseButton == MouseRightButton then
			local menu = g_ui.createWidget("PopupMenu")
			local player = g_game.getLocalPlayer()

			if senderId and senderId > 0 and senderId ~= player:getId() then
				if self:isPlayerId(senderId) then
					menu:addOption(tr("Whisper"), function()
						self:whisperPlayer(title)
					end)

					if name then
						local social = modules.game_social.GameSocial

						if not social:isIgnored(name:titleCase()) then
							menu:addOption(tr("Ignore Player"), function()
								social:addIgnored(name:titleCase())
							end)
						else
							menu:addOption(tr("Remove from Ignored List"), function()
								social:removeIgnored(name:titleCase())
							end)
						end
					end

					menu:addOption(tr("Report Player"), function()
						modules.game_player_report.GamePlayerReport:requestReportWindow(title)
					end)
					menu:addSeparator()
				end

				menu:addOption(tr("Copy Name"), function()
					g_window.setClipboardText(widget.title:getText())
				end)
			end

			menu:addOption(tr("Copy Message"), function()
				local w = widget.text:isVisible() and widget.text or widget.title

				g_window.setClipboardText(w:getText())
			end)

			local selection = self:chatMessageGetSelection(widget)

			if selection then
				menu:addOption(tr("Copy selection"), function()
					g_window.setClipboardText(selection)

					return true
				end)
			end

			menu:display(mousePos)

			return true
		end
	end

	local player = g_game.getLocalPlayer()
	local isMessageSent = player and player:getName():lower() == title:lower()
	local textColor = customTextColor or isMessageSent and config.color.send or config.color.receive

	if tab == "party" then
		textColor = isMessageSent and cfg.partyTextColor.send or cfg.partyTextColor.receive
	elseif tab == "guild" then
		textColor = isMessageSent and cfg.guildTextColor.send or cfg.guildTextColor.receive
	elseif tab == "looking_for_group" then
		if isPremium then
			textColor = isMessageSent and cfg.premiumTextColor.send or cfg.premiumTextColor.receive
		else
			textColor = isMessageSent and cfg.LFGTextColor.send or cfg.LFGTextColor.receive
		end
	elseif config.tab == "global" and isPremium then
		textColor = isMessageSent and cfg.premiumTextColor.send or cfg.premiumTextColor.receive
	elseif tab == "general" and isPremium then
		textColor = isMessageSent and cfg.premiumTextColor.send or cfg.premiumTextColor.receive
	end

	if isMessageSent then
		title = "You"
	end

	widget.text:setVisible(text ~= nil)
	widget.title:setColor(textColor)
	widget.text:setColor(textColor)
	widget.title.premium_icon:setVisible(isPremium)

	if not self.enabled and self.currentTab.name == tab then
		widget:setOn(true)
		buffer:removeChild(widget)
		self.currentTab.hiddenBufferPanel:addChild(widget)

		widget.fadeOut = scheduleEvent(function()
			g_effects.fadeOut(widget, 1000, nil, false, function()
				if not widget then
					return
				end

				widget.fadeOutEvent = nil

				self.currentTab.hiddenBufferPanel:removeChild(widget)
				widget:setOn(false)
				buffer:addChild(widget)
				widget:setOpacity(1)
			end)

			widget.fadeOut = nil
		end, 5000)
	end

	if channelPrefix ~= "" then
		channelPrefix = string.format("%s ", channelPrefix)
	end

	widget.title:setText(string.format("%s%s", channelPrefix, title or ""))
	self:addToMessageBuffer(widget, tab, config.bufferSize or cfg.messageBufferSize, config.private)
	self:addNotification(tab, config.private, textColor)

	if title == "" and tab == "guild" then
		widget.title:setText(text)
		widget.title:setColor("#FCBE7F")
		widget.text:setVisible(false)

		return
	end

	if (config.tab ~= "global" or config.channelId == self.currentGlobalChatChannelId and modules.game_settings.getOption("showGlobalChatInGeneralChat") or config.channelId == cfg.PartyChannelId or config.channelId == cfg.GuildChannelId or config.channelId == cfg.LFGChannelId and modules.game_settings.getOption("showLFGChatInGeneralChat")) and tab ~= "server_log" and tab ~= "action_log" and tab ~= "general" and not internalGeneralChatMessage then
		GameChat:addGeneralChatWidget(widget)
	end
end

function GameChat:addNotification(tab, private, textColor)
	if self.currentTab.name == tab then
		return
	end

	if not private then
		local widget = self:getTabWidgetByName(tab)

		if widget and widget.notification then
			widget.notification.count = (widget.notification.count or 0) + 1

			widget.notification:setImageColor(textColor)
			widget.notification:setText(string.format("%s", widget.notification.count <= 99 and widget.notification.count or "..."))
			widget.notification:show()
		end
	end

	if private then
		local tab = self.privateTabs[tab]

		if tab then
			tab.widget.closeButton.count = (tab.widget.closeButton.count or 0) + 1

			tab.widget.closeButton:setText(string.format("%s", tab.widget.closeButton.count <= 99 and tab.widget.closeButton.count or "..."))
			tab.widget:getParent():blinkTab(tab.widget)
		end
	end
end

function GameChat:clearNotifications(tab, private)
	local widget = self:getTabWidgetByName(tab)

	if not private and widget and widget.notification then
		widget.notification.count = 0

		widget.notification:hide()
	end

	if private then
		local tab = self.privateTabs[tab]

		if tab then
			tab.widget.closeButton.count = 0
		end
	end
end

function GameChat:clearAllNotifications()
	for name in pairs(self.messageBufferPanels) do
		self:clearNotifications(name)
	end

	for name in pairs(self.privateTabs) do
		self:clearNotifications(name, true)
	end
end

function GameChat.onGameStart()
	local player = g_game.getLocalPlayer()

	if player and player:getName() ~= GameChat.lastCharacterName then
		GameChat:resetAllMessageBuffers()
	end

	GameChat.lastCharacterName = player:getName()

	GameChat:display()
end

function GameChat.onGameEnd()
	GameChat.window:hide()

	for _, privateTab in pairs(GameChat.privateTabs) do
		privateTab.widget:destroy()
	end

	for _, event in pairs(GameChat.events) do
		removeEvent(event)
	end

	GameChat.events = {}
end

function GameChat:display()
	self.window:show()
	self:changeCurrentTab(self.currentTab.name)
	self:shrink()
end

function GameChat:expand(instant)
	if self.enabled then
		return
	end

	self.sizeEventType = "expand"

	if self.windowChangeEvent then
		return
	end

	self.window.content:setPhantom(true)

	if self.currentTab.messageBufferPanel then
		self:changeCurrentTab(self.currentTab.name, self.currentTab.private)
		self.currentTab.messageBufferPanel:hide()
	end

	if not instant then
		self.windowChangeEvent = cycleEvent(function()
			self.window.content:setWidth(math.min(self.window.expandWidth, self.window.content:getWidth() + 50))

			if self.window.content:getWidth() == self.window.expandWidth then
				removeEvent(self.windowChangeEvent)

				self.windowChangeEvent = nil

				self.window.content.textEditPanel:show()
				self.window.content:setOn(true)

				if self.currentTab.messageBufferPanel then
					self.currentTab.messageBufferPanel:show()
					self:changeCurrentTab(self.currentTab.name, self.currentTab.private)
				end

				local tabBar

				for _, privateTab in pairs(GameChat.privateTabs) do
					local widget = privateTab.widget

					tabBar = tabBar or widget.tabBar

					if table.find(tabBar.tabs, widget) then
						widget:show()
					end

					local currentTabBar = widget.tabBar.currentTab

					if currentTabBar:getText():lower() == GameChat.currentTab.name:lower() then
						currentTabBar.closeButton:show()
					end
				end

				self.enabled = true

				if tabBar and (#tabBar.preTabs > 0 or #tabBar.postTabs > 0) then
					GameChat:showPrivateMessageNavigationButtons(tabBar)
				end

				addEvent(function()
					modules.game_interface.focusHUDPanel()
					self.window.content.textEditPanel.textEdit:recursiveFocus(ActiveFocusReason)
				end)
				self.window:setPhantom(false)
			end
		end, 33.333333333333336)
	else
		for _, widget in ipairs(self.window.content.buttonList.content:getChildren()) do
			widget:show()
		end

		self.windowChangeEvent = nil

		self.window.content.textEditPanel:show()
		self.window.content:setOn(true)

		if self.currentTab.messageBufferPanel then
			self.currentTab.messageBufferPanel:show()
			self:changeCurrentTab(self.currentTab.name, self.currentTab.private)
		end

		local tabBar

		for _, privateTab in pairs(GameChat.privateTabs) do
			local widget = privateTab.widget

			tabBar = tabBar or widget.tabBar

			if table.find(tabBar.tabs, widget) then
				widget:show()
			end

			local currentTabBar = widget.tabBar.currentTab

			if currentTabBar:getText():lower() == GameChat.currentTab.name:lower() then
				currentTabBar.closeButton:show()
			end
		end

		self.enabled = true

		if tabBar and (#tabBar.preTabs > 0 or #tabBar.postTabs > 0) then
			GameChat:showPrivateMessageNavigationButtons(tabBar)
		end

		addEvent(function()
			modules.game_interface.focusHUDPanel()
			self.window.content.textEditPanel.textEdit:recursiveFocus(ActiveFocusReason)
		end)
		self.window:setPhantom(false)
	end
end

function GameChat:shrink(instant, force)
	if not force and not self.enabled then
		return
	end

	self.window.content:setPhantom(false)

	if self.windowChangeEvent then
		removeEvent(self.windowChangeEvent)
	end

	self.sizeEventType = "shrink"
	self.enabled = false

	if self.currentTab.messageBufferPanel then
		self.currentTab.messageBufferPanel:hide()
	end

	self.window.content.textEditPanel:hide()
	self.window.content:breakAnchors()
	self.window.content:setOn(false)

	if instant then
		removeEvent(self.windowChangeEvent)

		self.windowChangeEvent = nil

		self.window.content:setWidth(self.window.shrinkWidth)
		self.window:setPhantom(true)
		modules.game_interface.resetHUDPanelFocus()
	else
		self.windowChangeEvent = cycleEvent(function()
			self.window.content:setWidth(math.max(self.window.shrinkWidth, self.window.content:getWidth() - 30))

			if self.window.content:getWidth() == self.window.shrinkWidth then
				removeEvent(self.windowChangeEvent)

				self.windowChangeEvent = nil
				self.enabled = false

				self.window:setPhantom(true)
				modules.game_interface.resetHUDPanelFocus()
			end
		end, 10)
	end

	for _, privateTab in pairs(self.privateTabs) do
		local widget = privateTab.widget

		widget:hide()
		widget.closeButton:hide()
		self:hidePrivateMessageNavigationButtons()
	end
end

function GameChat.onPositionChange(widget, position)
	if GameChat.window:containsPoint(g_window.getMousePosition()) then
		GameChat:expand(true)
	else
		GameChat:expand(true)
		GameChat:shrink(true, true)
	end
end

function GameChat.onMousePress(widget, position, button)
	if not GameChat.window:containsPoint(position) then
		GameChat:disable()
	end
end

function GameChat:enable()
	connect(rootWidget, {
		onMousePress = GameChat.onMousePress
	})
	self:expand(true)
	self:hideGlobalChatSelectionWindow(false)
	self.window.content.buttonList.toggleButton:setState(true)
end

function GameChat:disable()
	if not self.enabled then
		return
	end

	disconnect(rootWidget, {
		onMousePress = GameChat.onMousePress
	})
	self:shrink()
	self:hideGlobalChatSelectionWindow(true)
	self.window.content.buttonList.toggleButton:setState(false)
	modules.game_interface.resetHUDPanelFocus()
end

function GameChat:addPrivateMessageWidget(name, dontOpen)
	name = name:lower()

	local panel = self.window.privateMessagesPanel.privateMessages

	self.privateTabs[name] = {
		widget = panel:addTab(name:titleCase(), g_ui.createWidget("GameChatWindowMessagesPanel", self.window.content), nil, "GameChatPrivateMessageCloseButton", "GameChatPrivateMessageNotificationButton")
	}

	connect(self.privateTabs[name].widget, {
		onDestroy = function()
			panel:removeTab(self.privateTabs[name].widget)
			self:removePrivateMessageWidget(name)
		end
	})
	self:setupPrivateMessageBuffer(self.privateTabs[name])

	if not dontOpen then
		self:changeCurrentTab(name, true)
	else
		local closeButton = self.privateTabs[name].widget.closeButton

		closeButton:setStyle("GameChatPrivateMessageNotificationButton")
		self.privateTabs[name].widget:setChecked(false)
		addEvent(function()
			if self.privateTabs[name].widget:isVisible() then
				closeButton:show()
				closeButton:raise()
			end
		end)
	end

	if not self.privateMessagesConnected then
		self.privateMessagesConnected = true

		connect(self.window.privateMessagesPanel.privateMessages, {
			onTabChange = GameChat.onPrivateTabChange,
			onAddTab = GameChat.onPrivateTabAdd,
			onRemoveTab = GameChat.onPrivateTabRemove
		})
	end
end

function GameChat:removePrivateMessageWidget(name)
	if self.currentTab.name:lower() == name:lower() then
		self:changeCurrentTab("general")
	end

	for _, widget in ipairs(self.privateTabs[name:lower()].messageBuffer) do
		self.privateTabs[name:lower()].messageBufferPanel:removeChild(widget)

		self.reusableWidgets[#self.reusableWidgets + 1] = widget
	end

	self.privateTabs[name:lower()].messageBufferPanel:destroy()

	self.privateTabs[name:lower()] = nil
end

function GameChat.onPrivateTabChange(parent, tab, internal)
	if not internal then
		GameChat:changeCurrentTab(tab:getText():lower(), true)
	end

	local panel = GameChat.window.privateMessagesPanel
	local next = panel.tabNext
	local margin = 10

	for _, tab in ipairs(parent.tabs) do
		if tab:isVisible() then
			margin = margin + tab:getWidth() + tab:getPaddingLeft() + tab:getPaddingRight() + parent.tabSpacing
		end
	end

	next:setMarginLeft(margin)
end

function GameChat:showPrivateMessageNavigationButtons(tabBar)
	if not self.enabled then
		return
	end

	local panel = GameChat.window.privateMessagesPanel
	local prev = panel.tabPrev
	local next = panel.tabNext

	prev:show()
	next:show()

	if tabBar then
		local margin = 10

		for _, tab in ipairs(tabBar.tabs) do
			if tab:isVisible() then
				margin = margin + tab:getWidth() + tab:getPaddingLeft() + tab:getPaddingRight() + tabBar.tabSpacing
			end
		end

		next:setMarginLeft(margin)
	end
end

function GameChat:hidePrivateMessageNavigationButtons()
	local panel = GameChat.window.privateMessagesPanel
	local prev = panel.tabPrev
	local next = panel.tabNext

	prev:hide()
	next:hide()
end

function GameChat.onPrivateTabAdd(parent, tab, force)
	if force or #parent.postTabs > 0 or #parent.preTabs > 0 then
		GameChat.onPrivateTabChange(parent, tab, true)
		GameChat:showPrivateMessageNavigationButtons(parent)
	end
end

function GameChat.onPrivateTabRemove(parent, tab, force)
	if force or #parent.postTabs == 0 and #parent.preTabs == 0 then
		GameChat:hidePrivateMessageNavigationButtons()
	end
end

function GameChat:setupPrivateMessageBuffer(tab)
	local panel = g_ui.createWidget("GameChatWindowMessagesPanel", GameChat.window.content)

	panel:setId(tab.widget:getText() .. "_buffer")
	panel:hide()

	local scrollbar = g_ui.createWidget("GameChatWindowMessagesScrollBar", GameChat.window.content)

	panel:setVerticalScrollBar(scrollbar)

	local disconnect = connect(panel, {
		onDestroy = function()
			scrollbar:destroy()
		end
	})

	self.privateTabs[tab.widget:getText():lower()].messageBufferPanel = panel
	self.privateTabs[tab.widget:getText():lower()].messageBuffer = {}
end

function GameChat:onTextInputChange(textInputWidget, text)
	local command = string.match(text, "^/([%w]+)")

	if command then
		local command = string.lower(command)

		text = string.sub(text, #command + 3)

		if command == "w" or command == "whisper" then
			local name = string.match(text, "^\"([^\"]+)\" ")

			if not name and not text:find("\"", 1, true) then
				name = string.match(text, "^([^%s]+) ")
			end

			if name and #name <= 20 then
				GameChat:setTextInputPrefix(name)
			end
		end
	end

	g_sound.play(cfg.TYPING_SFX)
end

function GameChat.onTextInputKeyPress(textInputWidget, keyCode, modifiers)
	if keyCode == KeyBackspace and textInputWidget:getText():len() == 0 then
		GameChat:resetTextInputPrefix()
	end

	GameChat:enable()
end

function GameChat:setTextInputPrefix(name)
	local prefix = self.window.content.textEditPanel.textEditPrefix

	prefix:setText("@To \"" .. name .. "\": ")
	prefix:setOn(true)

	prefix.name = name

	self.window.content.textEditPanel.textEdit:setText(nil)
	self.window.content.textEditPanel.talkType:setVisible(false)
	self.window.content.textEditPanel.textEdit:setTextPreview("")
end

function GameChat:resetTextInputPrefix()
	local prefix = self.window.content.textEditPanel.textEditPrefix

	prefix:setText(nil)
	prefix:setOn(false)

	prefix.name = nil

	self.window.content.textEditPanel.talkType:setVisible(self.currentTab.name == "general")
	self:onChangeTalkType(self.currentTalkType, cfg.talkTypesColor[self.currentTalkType])
end

function GameChat:showNextPrivateTab()
	local tab = self.window.privateMessagesPanel.privateMessages

	if tab then
		tab:selectNextTab()
	end
end

function GameChat:showPreviousPrivateTab()
	local tab = self.window.privateMessagesPanel.privateMessages

	if tab then
		tab:selectPrevTab()
	end
end

function GameChat:whisperPlayer(name)
	name = name:lower()

	if not self.privateTabs[name] then
		self:addPrivateMessageWidget(name)
	end

	self:changeCurrentTab(name, true)
	self:enable()
end

function GameChat:isPlayerId(id)
	return id >= 268435456 and id <= 1073741824
end

function GameChat:isNpcId(id)
	return id >= 2147483648
end

function GameChat:getGlobalChatSelectionWidget()
	return self.globalChatSelectionWidget
end

function GameChat:getGlobalChatConfig(name)
	for _, data in ipairs(cfg.buttonList) do
		if data.name == "global" then
			return data.selection[name]
		end
	end

	return nil
end

function GameChat:changeCurrentGlobalChat(info)
	g_settings.set("defaultGlobalChat", info.name)

	local panel = self.window.content.buttonList
	local button = panel.content:getChildByIndex(2)

	button.icon:setImageSource(string.format("%s/%s", button.imagePath, string.format("icon_%s", info.buffer)))
	button:setId(info.buffer)

	if info.tooltip then
		button.icon:setTooltip(info.tooltip)
	end

	if info.notification then
		button.hasNotification = true
	end

	if info.splitter then
		button.splitter:show()
	end

	self:changeCurrentTab(info.buffer)

	self.currentGlobalChatChannelId = info.channelId
end

function GameChat:hideGlobalChatSelectionWindow(hideButton)
	local globalChatSelectionWidget = self.globalChatSelectionWidget

	if globalChatSelectionWidget then
		globalChatSelectionWidget:setOn(false)
		globalChatSelectionWidget:hide()
	end

	local panel = self.window.content.buttonList
	local button = panel.content:getChildByIndex(2)

	button.selection:setVisible(not hideButton)
end

function GameChat:changeTalkType(widget)
	local menu = g_ui.createWidget("ChatPopupMenu")

	for _, talkType in ipairs(cfg.talkTypes) do
		local add = true

		if talkType.name == "Party" then
			local player = g_game.getLocalPlayer()

			if not player or not player:isPartyMember() then
				add = false
			end
		end

		if add then
			local option = menu:addOption(talkType.name, function()
				self:onChangeTalkType(talkType.name, talkType.color)
			end)

			if option then
				option:setTextColor(talkType.color)
			end
		end
	end

	menu:setGameMenu(true)
	addEvent(function()
		local pos = widget:getPosition()

		pos.y = pos.y - menu:getHeight() - widget:getHeight()

		menu:display(pos)
	end)
end

function GameChat:onChangeTalkType(talkType, color)
	self.currentTalkType = talkType

	self.window.content.textEditPanel.talkType:setText(talkType)
	self.window.content.textEditPanel.talkType:setTextColor(color)
	self.window.content.textEditPanel.textEdit:recursiveFocus(ActiveFocusReason)
	self.window.content.textEditPanel.textEdit:setTextPreview("")

	if not self.window.content.textEditPanel.talkType:isVisible() then
		return
	end

	if talkType == "Whisper" then
		self.window.content.textEditPanel.textEdit:setTextPreview("/w \"Name\"")
	end
end

function GameChat:selectNextTab()
	if not self.enabled then
		return
	end

	local hasPrivateTabSelected = false

	for _, privateTab in pairs(self.privateTabs) do
		if privateTab.widget:isChecked() then
			hasPrivateTabSelected = true

			break
		end
	end

	if not hasPrivateTabSelected then
		local buttonList = self.window.content.buttonList
		local currentTab = buttonList.content:getChildById(self.currentTab.name)
		local nextTab = buttonList.content:getChildByIndex(buttonList.content:getChildIndex(currentTab) + 1)

		nextTab = nextTab or buttonList.content:getFirstChild()

		if nextTab then
			self:changeCurrentTab(nextTab:getId())
		end
	else
		self:showNextPrivateTab()
	end
end

function GameChat.onReplaceChatMessage(from, channelId, originalMessage, newMessage, receiver)
	local self = GameChat
	local buffer = self.messageBufferPanels.general

	for _, widget in ipairs(buffer:getChildren()) do
		if widget.text:getText() == originalMessage then
			widget.text:setText(newMessage)

			break
		end
	end

	local buffer = self.currentTab.hiddenBufferPanel

	for _, widget in ipairs(buffer:getChildren()) do
		if widget.text:getText() == originalMessage then
			widget.text:setText(newMessage)

			break
		end
	end

	if receiver and #receiver > 0 then
		local receiver = receiver:lower()

		if not self.privateTabs[receiver] then
			receiver = from:lower()

			if not self.privateTabs[receiver] then
				return
			end
		end

		local buffer = self.privateTabs[receiver].messageBufferPanel

		for _, widget in ipairs(buffer:getChildren()) do
			if widget.text:getText() == originalMessage then
				widget.text:setText(newMessage)

				break
			end
		end
	end

	local tab = cfg.channelIdToBufferName[channelId]

	if not tab then
		return
	end

	tab = tab:lower()

	if not self.messageBuffers[tab] then
		return
	end

	local buffer = self.messageBufferPanels[tab]

	for _, widget in ipairs(buffer:getChildren()) do
		if widget.text:getText() == originalMessage then
			widget.text:setText(newMessage)

			break
		end
	end
end

-- chunkname: @/modules/client_entergame/characterlist.lua

CharacterList = {}

local charactersWindow, loadBox, characterList, errorBox, waitingWindow, updateWaitEvent, resendWaitEvent, loginEvent
local lastLogout = 0
local deathLogin, timeoutEvent, gameAuthProtocolLogin, _onRecvPlayerAuth, _onRecvPlayerAuthError, characterName, characterNameError, maleBox, femaleBox

CharacterList.inputBox = nil

local characterPanel, currentLoginService

CharacterList.reconnectOnGameEnd = false

local connectEvent
local archetypes = {
	[ArchetypeFlags.Warfare] = "warfare",
	[ArchetypeFlags.Archery] = "archery",
	[ArchetypeFlags.Shadow] = "shadow",
	[ArchetypeFlags.Protection] = "protection",
	[ArchetypeFlags.Wizardry] = "wizardry",
	[ArchetypeFlags.Holy] = "holy",
	[ArchetypeFlags.Spiritual] = "spiritual",
	[ArchetypeFlags.Witchcraft] = "witchcraft"
}

local function getWorldIndex(worldId)
	for index, world in ipairs(G.worlds) do
		if world.id == worldId then
			return index
		end
	end

	return 1
end

local function getChannelIndex(channelId)
	for index, channel in ipairs(G.channels) do
		if channel.id == channelId then
			return index
		end
	end

	return 1
end

local function getSelectedChannelId()
	local selectedWidget

	for index, widget in ipairs(characterList:getChildren()) do
		if widget:isOn() then
			selectedWidget = widget

			break
		end
	end

	if not selectedWidget or not selectedWidget:getChildById("channelSelector").channelId then
		return nil
	end

	return selectedWidget:getChildById("channelSelector").channelId
end

local function tryLogin(charName, channelId, authKey, isReconnect, tries)
	local authKey = authKey and authKey or ""

	tries = tries or 1

	local channel = G.channels[getChannelIndex(channelId)]

	if channel == nil then
		return
	end

	if tries > 50 then
		return
	end

	if g_game.isOnline() then
		if tries == 1 then
			g_game.logout()
		end

		loginEvent = scheduleEvent(function()
			tryLogin(charName, channelId, authKey, isReconnect, tries + 1)
		end, 100)

		return
	end

	CharacterList.hide()

	if not loadBox then
		loadBox = displayCancelBox(tr("Please wait"), tr("Connecting to game server..."))

		connect(loadBox, {
			onCancel = function()
				if connectEvent then
					removeEvent(connectEvent)

					connectEvent = nil
				end

				loadBox = nil

				g_game.cancelLogin()
				CharacterList.showCharacters()
			end
		})

		if timeoutEvent then
			removeEvent(timeoutEvent)

			timeoutEvent = nil
		end

		function loadBox.onDestroy()
			if timeoutEvent then
				removeEvent(timeoutEvent)

				timeoutEvent = nil
			end
		end

		timeoutEvent = scheduleEvent(function()
			if loadBox then
				loadBox:destroy()

				loadBox = nil

				tryLogin(charName, channelId, authKey, isReconnect, tries + 1)
			end
		end, 5000)
	end

	local channelInfo = G.channels[getChannelIndex(channelId)]

	if channelInfo then
		G.currentChannel = channelInfo.name
		G.currentChannelId = channelId

		channelInfo:setLowestPingConnectionInfo()
		g_game.loginGameServer(G.account, G.password, G.worlds[getWorldIndex(channelInfo.worldId)].name, channelInfo.name, channelInfo.host, channelInfo.port, charName, G.authenticatorToken, G.sessionKey, authKey, EnterGame.getLocale(true))
	end

	g_settings.set("last-used-character", charName)
end

function onChangeChannel(characterName, worldId, channelId, authKey, isReconnect)
	if worldId ~= G.selectedWorldId then
		return
	end

	if G.currentChannel == channelId or G.channels == nil or G.channels[getChannelIndex(channelId)] == nil then
		errorBox = displayErrorBox(tr("Login Error"), "Something went wrong. Try to reconnect again.")

		function errorBox.onOk()
			errorBox = nil
		end

		return
	end

	g_game.setChangingChannel(true)

	G.character = characterName
	G.lastChannel = G.currentChannel
	G.nextChannel = true

	CharacterList.hide()

	if loadBox then
		CharacterList.destroyLoadBox()
	end

	loadBox = displayInfoBox(tr("Please wait"), tr(not isReconnect and "Changing game instance..." or "Reconnecting to game instance..."), nil, nil, true)
	loadBox.event = scheduleEvent(function()
		if not g_game.isOnline() and loadBox and not errorBox then
			CharacterList.destroyLoadBox()

			errorBox = displayErrorBox(tr("Error"), tr("Something went wrong. Try to reconnect again."))

			function errorBox.onOk()
				errorBox = nil

				CharacterList.showCharacters()
			end
		end
	end, 10000)

	if loginEvent then
		removeEvent(loginEvent)

		loginEvent = nil
	end

	loginEvent = scheduleEvent(function()
		tryLogin(characterName, channelId, authKey, isReconnect)
	end, 1000)
end

local function onCharacterCreated(protocol, opcode, charName)
	CharacterCreation:reset()
	CharacterCreation:hide()
	CharacterList.hide()
	EnterGame.reconnect(charName)
end

local function onSpawnPointSelected(protocol, opcode)
	CharacterList.doLogin(true)
end

local function onCharacterDeleted(protocol, opcode)
	CharacterList.hide()
	EnterGame.reconnect()
end

local function onCharacterError(protocol, message, errorCode)
	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	if CharacterCreation:isVisible() then
		CharacterCreation:error(message)
	elseif characterList:isVisible() then
		EnterGame.displayInfoMessage(message, "top", true)
	end
end

local function updateWait(timeStart, timeEnd)
	if waitingWindow then
		local time = g_clock.seconds()

		if time <= timeEnd then
			local percent = (time - timeStart) / (timeEnd - timeStart) * 100
			local timeStr = string.format("%.0f", timeEnd - time)
			local progressBar = waitingWindow:getChildById("progressBar")

			progressBar:setPercent(percent)

			local label = waitingWindow:getChildById("timeLabel")

			label:setText(tr("Updating Queue position in %d seconds.", timeStr))

			updateWaitEvent = scheduleEvent(function()
				updateWait(timeStart, timeEnd)
			end, 1000 * progressBar:getPercentPixels() / 100 * (timeEnd - timeStart))

			return true
		end
	end

	if updateWaitEvent then
		updateWaitEvent:cancel()

		updateWaitEvent = nil
	end
end

local function resendWait(channelId)
	if waitingWindow then
		waitingWindow:destroy()

		waitingWindow = nil

		if updateWaitEvent then
			updateWaitEvent:cancel()

			updateWaitEvent = nil
		end

		if charactersWindow then
			local selected = characterList:getFocusedChild()

			if selected then
				tryLogin(selected.characterName, channelId, G.authKey)
			end
		end
	end
end

local function onGameStart()
	local localPlayer = g_game.getLocalPlayer()

	G.character = localPlayer:getName()

	CharacterList.destroyLoadBox()

	deathLogin = nil

	g_game.setChangingChannel(false)
end

local function onLoginWait(currentPos, time, channelId)
	CharacterList.destroyLoadBox()

	waitingWindow = g_ui.createWidget("WaitingListWindow", rootWidget)

	local outfitPanel = CharacterList.selected:getChildById("creature")

	waitingWindow:getChildById("creature"):setOutfit(outfitPanel:getOutfit())

	local label = waitingWindow:getChildById("infoLabel")

	label:setText(tr("This world is currently at max capacity.\nYou are currently #%d in the login Queue.\nPatron Accounts advance to the top of the Queue.", currentPos))

	updateWaitEvent = scheduleEvent(function()
		updateWait(g_clock.seconds(), g_clock.seconds() + time)
	end, 0)
	resendWaitEvent = scheduleEvent(function()
		resendWait(channelId)
	end, time * 1000)
end

function onGameLoginError(message)
	CharacterList.destroyLoadBox()

	if string.find(message, "newer version", 1, true) and g_resources.isLoadedFromArchive() and g_modules.getModule("updater") and Updater then
		CharacterList.hide()
		Updater.check()
	else
		errorBox = displayErrorBox(tr("Login Error"), message)

		function errorBox.onOk()
			errorBox = nil

			CharacterList.showCharacters()
		end
	end
end

function onGameLoginToken(unknown)
	CharacterList.destroyLoadBox()

	errorBox = displayErrorBox(tr("Two-Factor authentication"), "A new authentication token is required.\nPlease login again.")

	function errorBox.onOk()
		errorBox = nil

		EnterGame.show()
	end
end

function onSelectSpawnPointError(message)
	CharacterList.destroyLoadBox()

	errorBox = displayErrorBox(tr("Spawn Point Error"), message)

	function errorBox.onOk()
		errorBox = nil

		CharacterList.doLogin(true)
	end
end

function onGameConnectionError(message, code)
	CharacterList.destroyLoadBox()

	local text = translateNetworkError(code, g_game.getProtocolGame() and g_game.getProtocolGame():isConnecting(), message)

	errorBox = displayErrorBox(tr("Connection Error"), text)

	function errorBox.onOk()
		errorBox = nil

		CharacterList.showCharacters()
	end
end

function onGameUpdateNeeded(signature)
	CharacterList.destroyLoadBox()

	errorBox = displayErrorBox(tr("Update needed"), tr("Enter with your account again to update your client."))

	function errorBox.onOk()
		errorBox = nil

		CharacterList.showCharacters()
	end
end

function onGameEnd()
	if CharacterList.reconnectOnGameEnd then
		CharacterList.reconnectOnGameEnd = false

		CharacterList.hide()
		EnterGame.reconnect()
	end

	if not deathLogin and not g_game.isChangingChannel() then
		CharacterList.showCharacters()
	end
end

function onLogout()
	return
end

function CharacterList.init()
	g_ui.importStyle("styles/characters.otui")
	g_ui.importStyle("styles/waitinglist.otui")
	connect(g_game, {
		onLoginError = onGameLoginError
	})
	connect(g_game, {
		onLoginToken = onGameLoginToken
	})
	connect(g_game, {
		onUpdateNeeded = onGameUpdateNeeded
	})
	connect(g_game, {
		onConnectionError = onGameConnectionError
	})
	connect(g_game, {
		onGameStart = onGameStart
	})
	connect(g_game, {
		onLoginWait = onLoginWait
	})
	connect(g_game, {
		onGameEnd = onGameEnd
	})
	connect(g_game, {
		onChangeChannel = onChangeChannel
	})

	if G.characters then
		CharacterList.create(G.characters, G.characterAccount, G.channels)
	end
end

function CharacterList.terminate()
	disconnect(g_game, {
		onLoginError = onGameLoginError
	})
	disconnect(g_game, {
		onLoginToken = onGameLoginToken
	})
	disconnect(g_game, {
		onUpdateNeeded = onGameUpdateNeeded
	})
	disconnect(g_game, {
		onConnectionError = onGameConnectionError
	})
	disconnect(g_game, {
		onGameStart = onGameStart
	})
	disconnect(g_game, {
		onLoginWait = onLoginWait
	})
	disconnect(g_game, {
		onGameEnd = onGameEnd
	})
	disconnect(g_game, {
		onChangeChannel = onChangeChannel
	})

	if charactersWindow then
		characterList = nil

		charactersWindow:destroy()

		charactersWindow = nil
	end

	if loadBox then
		if connectEvent then
			removeEvent(connectEvent)

			connectEvent = nil
		end

		g_game.cancelLogin()
		loadBox:destroy()

		loadBox = nil
	end

	if waitingWindow then
		waitingWindow:destroy()

		waitingWindow = nil
	end

	if updateWaitEvent then
		removeEvent(updateWaitEvent)

		updateWaitEvent = nil
	end

	if resendWaitEvent then
		removeEvent(resendWaitEvent)

		resendWaitEvent = nil
	end

	if loginEvent then
		removeEvent(loginEvent)

		loginEvent = nil
	end

	CharacterList = nil
end

function CharacterList.create(characters, channels, account, charName)
	if charactersWindow then
		charactersWindow:destroy()

		charactersWindow = nil
	end

	charactersWindow = g_ui.createWidget("CharactersListWindow", rootWidget)
	characterList = charactersWindow:getChildById("characters_list")
	G.channels = channels
	G.characters = characters
	G.characterAccount = account
	CharacterList.selected = nil

	for index, characterInfo in ipairs(characters) do
		local name = characterInfo.name
		local outfit = characterInfo.outfit
		local level = characterInfo.level
		local flags = characterInfo.archetypes
		local widget = g_ui.createWidget("CharacterSlot", characterList)
		local nameLabel = widget:getChildById("name")
		local archetypeClassLabel = widget:getChildById("archetype_name")
		local levelLabel = widget:recursiveGetChildById("level_label")
		local outfitPanel = widget:getChildById("creature")

		nameLabel:setText(name)
		levelLabel:setText(level)
		outfitPanel:setOutfit(outfit)

		local archetypeIndex = 1

		for k, v in pairs(archetypes) do
			if Bit.hasBit(flags, k) then
				widget["archetype" .. archetypeIndex] = v
				archetypeIndex = archetypeIndex + 1
			end
		end

		local totalArchetypes = archetypeIndex - 1
		local archetypeClass = ""

		if totalArchetypes == 1 then
			archetypeClass = "Apprentice"
		elseif totalArchetypes == 2 then
			archetypeClass = "Novice"
		elseif totalArchetypes == 3 then
			archetypeClass = "Expert"
		end

		archetypeClassLabel:setText(archetypeClass)

		widget.characterName = name

		widget:onSetup()

		if name == charName then
			CharacterList:selectCharacter(widget)
		end

		connect(widget, {
			onDoubleClick = function(widget)
				CharacterList:selectCharacter(widget)
				CharacterList.doLogin()

				return true
			end
		})
	end

	if #characters < 4 then
		for i = 1, 4 - #characters do
			g_ui.createWidget("CharacterEmptySlot", characterList)
		end
	end

	if not CharacterList.selected and #characters > 0 then
		CharacterList:selectCharacter(characterList:getFirstChild())
	end

	if charName then
		print("[CharacterList.create] Prevented from auto-login! " .. charName)
	end
end

function CharacterList:selectCharacter(widget)
	if self.selected then
		self.selected:setOn(false)
	end

	self.selected = widget

	self.selected:setOn(true)
end

function CharacterList.destroy()
	CharacterList.hide(true)

	if charactersWindow then
		characterList = nil

		charactersWindow:destroy()

		charactersWindow = nil
	end
end

function CharacterList.hide(showLogin)
	if errorBox then
		errorBox:destroy()

		errorBox = nil
	end

	showLogin = showLogin or false

	if charactersWindow then
		charactersWindow:hide()
	end

	if showLogin and EnterGame and not g_game.isOnline() then
		EnterGame.show()
	end
end

function CharacterList.showCharacters()
	if DEMO_VERSION and DemoScreen then
		EnterGame.hide()
		DemoScreen:hide()
	end

	if g_game.isOnline() or loadBox or errorBox or not charactersWindow then
		return
	end

	CharacterList.hide(false)
	charactersWindow:show()
	charactersWindow:raise()
	charactersWindow:focus()
	CharacterCreation.createButton:setEnabled(true)
end

function CharacterList.showCreation()
	if loadBox or errorBox or not CharacterCreation then
		return
	end

	CharacterList.hide(false)
	CharacterCreation:show()
end

function CharacterList.isVisible()
	if charactersWindow and charactersWindow:isVisible() then
		return true
	end

	return false
end

function CharacterList.destroyLoadBox()
	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	EnterGame.destroyInfoMessage()
end

function CharacterList.cancelWait()
	if waitingWindow then
		waitingWindow:destroy()

		waitingWindow = nil
	end

	if updateWaitEvent then
		removeEvent(updateWaitEvent)

		updateWaitEvent = nil
	end

	if resendWaitEvent then
		removeEvent(resendWaitEvent)

		resendWaitEvent = nil
	end

	CharacterList.destroyLoadBox()
	CharacterList.showCharacters()
end

function CharacterList.doLogin(isDeath)
	deathLogin = isDeath

	local selected = CharacterList.selected

	if selected then
		charactersWindow:hide()

		if loginEvent then
			removeEvent(loginEvent)

			loginEvent = nil
		end

		gameAuthProtocolLogin = ProtocolLogin.create()
		gameAuthProtocolLogin.onRecvPlayerAuth = _onRecvPlayerAuth
		gameAuthProtocolLogin.onLoginError = _onRecvPlayerAuthError
		currentLoginService = EnterGame.getLoginService()
		G.host = currentLoginService.ip
		G.port = currentLoginService.port
		G.characterName = selected.characterName

		gameAuthProtocolLogin:enterCharacter(G.host, G.port, G.selectedWorldId, G.sessionKey, G.characterName)

		if not loadBox then
			loadBox = displayCancelBox(tr("Please wait"), tr("Connecting to game server..."))

			connect(loadBox, {
				onCancel = function()
					if connectEvent then
						removeEvent(connectEvent)

						connectEvent = nil
					end

					loadBox = nil

					g_game.cancelLogin()
					CharacterList.showCharacters()
				end
			})
		end
	else
		displayErrorBox(tr("Error"), tr("You must select a character to login!"))
	end
end

function _onRecvPlayerAuth(protocol, worldId, channelId, authKey)
	local channelInfo = G.channels[getChannelIndex(channelId)]

	if channelInfo then
		G.currentChannel = channelInfo.name
		G.currentChannelId = channelId
		G.authKey = authKey
		connectEvent = scheduleEvent(function()
			channelInfo:setLowestPingConnectionInfo()
			g_game.loginGameServer(G.account, G.password, G.worlds[getWorldIndex(channelInfo.worldId)].name, channelInfo.name, channelInfo.host, channelInfo.port, G.characterName, G.authenticatorToken, G.sessionKey, authKey, EnterGame.getLocale(true))
		end, 1000)
	end
end

function _onRecvPlayerAuthError(protocol, message, errorCode)
	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	EnterGame.displayInfoMessage(message, "top", true)
	CharacterList.showCharacters()
end

function CharacterList.setSelectedChannelTo(widget, channelId)
	local channelIndex = getChannelIndex(channelId)
	local channelInfo = G.channels[channelIndex]

	widget:setText(channelInfo.name)

	widget.channelIndex = channelIndex
	widget.channelId = channelId
end

function CharacterList.selectChannel(widget)
	local menu = g_ui.createWidget("PopupMenu", charactersWindow)

	for _, channel in ipairs(G.channels) do
		if channel.isPublic then
			menu:addOption(channel.name, function()
				CharacterList.setSelectedChannelTo(widget, channel.id)
			end)
		end
	end

	menu:display()
	addEvent(function()
		menu:raise()
		menu:focus()
	end)
end

function CharacterList.doCharacter(name, archetype, sex)
	if protocolLogin then
		protocolLogin:disconnect()
	end

	protocolLogin = ProtocolLogin.create()
	protocolLogin.onLoginError = onCharacterError
	protocolLogin.onCharacterCreated = onCharacterCreated
	currentLoginService = EnterGame.getLoginService()
	G.host = currentLoginService.ip
	G.port = currentLoginService.port

	protocolLogin:createNewCharacter(G.host, G.port, G.selectedWorldId, G.account, name, archetype, sex)
end

function CharacterList.deleteCharacterInput(name)
	local message = string.format("You are about to delete {%s, #e02a2a}.\n{This action can't be undone., #e02a2a}\n\nIf you wish to proceed please enter your password:", name)
	local bg = g_ui.createWidget("UIWidget", g_ui.getRootWidget())

	bg:addAnchor(AnchorTop, "parent", AnchorTop)
	bg:addAnchor(AnchorBottom, "parent", AnchorBottom)
	bg:addAnchor(AnchorLeft, "parent", AnchorLeft)
	bg:addAnchor(AnchorRight, "parent", AnchorRight)

	CharacterList.inputBox = displayHiddenTextInputBox("Delete Character", message, "#e02a2a", function(inputText)
		CharacterList.deleteCharacter(inputText, name)

		CharacterList.inputBox = nil

		bg:destroy()
	end, function()
		CharacterList.inputBox = nil

		bg:destroy()
	end)

	CharacterList.inputBox:raise()
	CharacterList.inputBox.lineEdit:focus()

	function bg.onClick()
		if CharacterList and CharacterList.inputBox then
			CharacterList.inputBox:raise()
			CharacterList.inputBox:focus()
			CharacterList.inputBox.lineEdit:focus()
			CharacterList.inputBox:shake(4, 3)

			return
		end
	end
end

function CharacterList.selectSpawnPoint(spawnPoint)
	if protocolLogin then
		protocolLogin:disconnect()
	end

	if charactersWindow then
		charactersWindow:hide()
	end

	protocolLogin = ProtocolLogin.create()
	protocolLogin.onLoginError = onSelectSpawnPointError
	protocolLogin.onSpawnPointSelected = onSpawnPointSelected

	protocolLogin:selectSpawnPoint(G.host, G.port, G.selectedWorldId, G.account, G.password, G.character, spawnPoint)
end

function CharacterList.deleteCharacter(password, name)
	if protocolLogin then
		protocolLogin:disconnect()
	end

	protocolLogin = ProtocolLogin.create()
	protocolLogin.onLoginError = onCharacterError
	protocolLogin.onCharacterDeleted = onCharacterDeleted

	protocolLogin:deleteCharacter(G.host, G.port, G.selectedWorldId, G.account, password, name)
end

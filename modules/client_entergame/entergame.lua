-- chunkname: @/modules/client_entergame/entergame.lua

EnterGame = {}

local window, logo, loginButton, regionsPanel, loadingRegionsPanel, loadBox, motdWindow, protocolLogin
local motdEnabled = true
local infoMessage, accountNameTextEdit, accountPasswordTextEdit, authTokenTextEdit, currentLoginService, rememberPasswordBox, _onRefreshWorldsList, localePanel, localeSelectConfirmBox
local WorldsShortName = {
	["South America"] = "SA",
	Europe = "EU",
	["North America"] = "NA",
	Asia = "SEA"
}

local function onError(protocol, message, errorCode)
	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	CharacterList.hide()

	if string.find(message, "newer version", 1, true) and g_resources.isLoadedFromArchive() and g_modules.getModule("updater") and Updater then
		Updater.check()
	else
		EnterGame.show()
		EnterGame.displayInfoMessage(message, "top", true)

		if message:lower() == "invalid account name." or message:lower() == "invalid e-mail." then
			accountNameTextEdit:clearFocus()
			accountNameTextEdit:setOn(true)
		elseif message:lower() == "invalid password." then
			accountPasswordTextEdit:clearFocus()
			accountPasswordTextEdit:setOn(true)
		elseif message:lower() == "account name or password is not correct." or message:lower() == "e-mail or password is not correct." then
			accountNameTextEdit:clearFocus()
			accountPasswordTextEdit:clearFocus()
			accountNameTextEdit:setOn(true)
			accountPasswordTextEdit:setOn(true)
		elseif message:lower() == "invalid authentication token." then
			authTokenTextEdit:clearFocus()
			accountNameTextEdit:clearFocus()
			accountPasswordTextEdit:clearFocus()
			authTokenTextEdit:setOn(true)
		end
	end

	loginButton:setEnabled(true)
end

function _onRefreshWorldsList(protocol, worlds)
	G.worlds = worlds

	local prevWorldId = EnterGame.lastRegionWidget and EnterGame.lastRegionWidget.worldId or nil

	EnterGame.lastRegionWidget = nil

	regionsPanel:destroyChildren()
	loadingRegionsPanel:hide()

	local widgetToSelect

	for _, world in ipairs(worlds) do
		local worldWidget = g_ui.createWidget("RegionButtonPanel", regionsPanel)

		worldWidget.worldId = world.id
		worldWidget.world = world

		worldWidget.iconNew:setVisible(world.icon and world.icon == "new")
		worldWidget.button:setText(WorldsShortName[world.name] or world.name)

		if prevWorldId and prevWorldId == world.id then
			widgetToSelect = worldWidget
		end
	end

	if widgetToSelect then
		EnterGame.setLoginRegion(widgetToSelect, widgetToSelect:getId())
	end

	if protocolLogin then
		protocolLogin:disconnect()

		protocolLogin = nil
	end
end

local function onSessionKey(protocol, sessionKey)
	G.sessionKey = sessionKey
end

local function onCharacterList(protocol, characters, channels, account, charName)
	EnterGame.destroyInfoMessage()
	accountNameTextEdit:setOn(false)
	accountPasswordTextEdit:setOn(false)
	authTokenTextEdit:setOn(false)
	authTokenTextEdit:clearText()

	if rememberPasswordBox:isChecked() then
		local account = g_crypt.encrypt(G.account)
		local password = g_crypt.encrypt(G.password)

		g_settings.set("account", account)
		g_settings.set("password", password)
	else
		EnterGame.clearAccountFields()
	end

	EnterGame.hide()

	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	currentLoginService = nil

	CharacterList.create(characters, channels, account, charName)
	CharacterList.showCharacters()

	if motdEnabled then
		local lastMotdNumber = g_settings.getNumber("motd")

		if G.motdNumber and G.motdNumber ~= lastMotdNumber then
			g_settings.set("motd", G.motdNumber)

			motdWindow = displayInfoBox(tr("Message of the day"), G.motdMessage)

			connect(motdWindow, {
				onOk = function()
					CharacterList.showCharacters()

					motdWindow = nil
				end
			})
			CharacterList.hide()
		end
	end
end

local function onUpdateNeeded(protocol, signature)
	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	if EnterGame.updateFunc then
		local continueFunc = EnterGame.show
		local cancelFunc = EnterGame.show

		EnterGame.updateFunc(signature, continueFunc, cancelFunc)
	else
		local errorBox = displayErrorBox(tr("Update needed"), tr("Your client needs updating, try redownloading it."))

		connect(errorBox, {
			onOk = EnterGame.show
		})
	end
end

function EnterGame.getWindow()
	return window
end

function EnterGame.init()
	g_ui.importStyle("styles/login.otui")

	window = g_ui.createWidget("LoginInterface", rootWidget)
	accountNameTextEdit = window:recursiveGetChildById("panel_email").input_field
	accountPasswordTextEdit = window:recursiveGetChildById("panel_password").input_field
	authTokenTextEdit = window:recursiveGetChildById("panel_2fa").input_field
	loginButton = window:recursiveGetChildById("loggin_button")
	regionsPanel = window:recursiveGetChildById("region_options_panel")
	loadingRegionsPanel = window:recursiveGetChildById("region_loading_panel")
	rememberPasswordBox = window:recursiveGetChildById("rememberPasswordBox")

	accountNameTextEdit:recursiveFocus()

	localePanel = window:recursiveGetChildById("language_select_panel")
	protocolLogin = ProtocolLogin.create()
	protocolLogin.onRefreshWorldsList = _onRefreshWorldsList
	currentLoginService = EnterGame.getLoginService()
	G.host = currentLoginService.ip
	G.port = currentLoginService.port

	protocolLogin:requestWorldsList(G.host, G.port)

	EnterGame.refreshWorldsEvent = cycleEvent(function()
		if not g_game.isOnline() and window:isVisible() then
			local protocolLogin = ProtocolLogin.create()

			protocolLogin.onRefreshWorldsList = _onRefreshWorldsList

			local loginService = EnterGame.getLoginService()

			protocolLogin:requestWorldsList(loginService.ip, loginService.port)
		end
	end, 30000)

	connect(accountNameTextEdit, {
		onKeyPress = function(self, keyCode)
			if keyCode == KeyTab then
				accountPasswordTextEdit:recursiveFocus()

				return true
			end
		end
	})
	connect(accountPasswordTextEdit, {
		onKeyPress = function(self, keyCode)
			if keyCode == KeyTab then
				authTokenTextEdit:recursiveFocus()

				return true
			end
		end
	})
	connect(authTokenTextEdit, {
		onKeyPress = function(self, keyCode)
			if keyCode == KeyTab then
				accountNameTextEdit:recursiveFocus()

				return true
			end
		end
	})
	window:show()
	EnterGame.setDefault()
end

function EnterGame.terminate()
	if accountNameTextEdit then
		g_settings.set("hideAcc", accountNameTextEdit:isTextHidden())
	end

	window:destroy()

	window = nil

	if motdWindow then
		motdWindow:destroy()

		motdWindow = nil
	end

	if loadBox then
		loadBox:destroy()

		loadBox = nil
	end

	if protocolLogin then
		protocolLogin:cancelLogin()

		protocolLogin = nil
	end

	if EnterGame.refreshWorldsEvent then
		removeEvent(EnterGame.refreshWorldsEvent)
	end

	G.selectedWorldId = nil
	EnterGame = nil
end

function EnterGame.show()
	if loadBox or g_game.isOnline() then
		return
	end

	if DEMO_VERSION and DemoScreen then
		DemoScreen:show()

		return
	end

	window:show()
	window:raise()
	window:focus()

	if not currentLoginService then
		currentLoginService = EnterGame.getLoginService()
		G.host = currentLoginService.ip
		G.port = currentLoginService.port
	end

	modules.game_settings.GameSettings.window:setParent(modules.game_interface.getHUDPanel())
	disconnect(modules.game_settings.GameSettings.window, {
		onVisibilityChange = EnterGame.show
	})
end

function EnterGame.hide()
	loginButton:setEnabled(true)
	window:hide()
end

function EnterGame.firstShow(show)
	if not show then
		EnterGame.show()
	end

	if show then
		EnterGame.setDefault()
	end

	function authTokenTextEdit.onDestroy()
		g_effects.cancelFade(authTokenTextEdit)
	end

	addEvent(function()
		accountNameTextEdit:focus()
		accountPasswordTextEdit:focus()
		authTokenTextEdit:focus()

		if not window then
			return
		end

		g_effects.fadeIn(window, 1000)
	end)
	scheduleEvent(function()
		accountNameTextEdit:recursiveFocus()
	end, 100)

	local size = g_window.getSize()
	local widthScale = size.width / 1920
	local heightScale = size.height / 1080

	if g_window.isMaximized() and (widthScale == 1 or heightScale == 1) then
		g_app.scale(1)

		return
	end

	local scale = math.min(1.35, math.min(widthScale, heightScale))

	scale = math.max(0.65, math.ceil(scale * 20) / 20)

	local platform = g_app.getOs()

	if platform ~= "mac" and platform ~= "linux" then
		g_app.scale(scale)
	end
end

function EnterGame.openWindow()
	if g_game.isOnline() then
		CharacterList.showCharacters()
	elseif not g_game.isLogging() and not CharacterList.isVisible() then
		EnterGame.show()
	end
end

function EnterGame.setAccountName(account)
	local account = g_crypt.decrypt(account)

	accountNameTextEdit:setText(account)
	rememberPasswordBox:setChecked(#account > 0)
end

function EnterGame.setPassword(password)
	local password = g_crypt.decrypt(password)

	accountPasswordTextEdit:setText(password)
end

function EnterGame.clearAccountFields()
	accountNameTextEdit:clearText()
	accountPasswordTextEdit:clearText()
	authTokenTextEdit:clearText()
	accountNameTextEdit:focus()
	g_settings.remove("account")
	g_settings.remove("password")
end

function EnterGame.setDefault()
	local account = g_settings.get("account")
	local password = g_settings.get("password")
	local hideAcc = toboolean(g_settings.get("hideAcc"))

	if hideAcc then
		local parent = accountNameTextEdit:getParent()

		if parent then
			local iconTextHidden = parent.iconTextHidden

			if iconTextHidden then
				iconTextHidden:setOn(hideAcc)
			end
		end
	end

	EnterGame.setAccountName(account)
	EnterGame.setPassword(password)
end

function EnterGame.doLogin(reconnect, character)
	if not reconnect then
		G.account = accountNameTextEdit:getText()
		G.password = accountPasswordTextEdit:getText()
		G.authenticatorToken = authTokenTextEdit:getText()
		G.stayLogged = true
	end

	local clientVersion = APP_PROTOCOL_VERSION

	if BGS_DEMO and not EnterGame.regionSet then
		return onError(nil, "Please select a region first.")
	end

	if g_game.isOnline() then
		local errorBox = displayErrorBox(tr("Login Error"), tr("Cannot login while already in game."), nil, nil, true)

		connect(errorBox, {
			onOk = EnterGame.show
		})

		return
	end

	if not G.selectedWorldId then
		local errorBox = displayErrorBox(tr("Login Error"), tr("You must select a game world in order to login."), nil, nil, true)

		connect(errorBox, {
			onOk = EnterGame.show
		})

		return
	end

	g_settings.set("host", G.host)
	g_settings.set("port", G.port)
	g_settings.set("worldId", G.selectedWorldId)
	g_settings.set("client-version", clientVersion)

	protocolLogin = ProtocolLogin.create()
	protocolLogin.onLoginError = onError
	protocolLogin.onSessionKey = onSessionKey
	protocolLogin.onCharacterList = onCharacterList
	protocolLogin.onUpdateNeeded = onUpdateNeeded
	protocolLogin.characterName = character

	loginButton:setEnabled(false)
	g_game.chooseRsa(G.host)

	if modules.game_things.isLoaded() then
		protocolLogin:login(G.host, G.port, G.selectedWorldId, G.account, G.password, G.authenticatorToken, G.stayLogged)
	else
		if loadBox then
			loadBox:destroy()

			loadBox = nil
		end

		EnterGame.show()
	end
end

function EnterGame.displayMotd()
	if not motdWindow then
		motdWindow = displayInfoBox(tr("Message of the day"), G.motdMessage)

		function motdWindow.onOk()
			motdWindow = nil
		end
	end
end

function EnterGame.disableMotd()
	motdEnabled = false
end

function EnterGame.reconnect(character)
	if protocolLogin then
		protocolLogin:cancelLogin()
	end

	EnterGame.displayInfoMessage("Connecting to login server...")
	EnterGame.doLogin(true, character)
end

function EnterGame.displayInfoMessage(message, anchor, fade, callback)
	if not message or message == "" then
		return
	end

	if infoMessage then
		EnterGame.destroyInfoMessage()
	end

	local label = "InfoMessageLabelCenter"

	if anchor == "top" then
		label = "InfoMessageLabelTop"
	elseif anchor == "bottom" then
		label = "InfoMessageLabelBottom"
	end

	infoMessage = g_ui.createWidget(label, rootWidget)
	infoMessage.onDestroyCallback = callback

	infoMessage:setText(message)

	if fade then
		infoMessage.event = scheduleEvent(function()
			EnterGame.destroyInfoMessage(true)
		end, message:len() * 100)

		g_effects.fadeIn(infoMessage, 500)
	end
end

function EnterGame.destroyInfoMessage(fade)
	if not infoMessage then
		return
	end

	if infoMessage.event then
		removeEvent(infoMessage.event)
	end

	local delay = fade and 2000 or 0

	if delay > 0 then
		g_effects.fadeOut(infoMessage, delay)

		infoMessage.event = scheduleEvent(function()
			EnterGame.destroyInfoMessage()
		end, delay)

		return
	end

	if infoMessage.onDestroyCallback then
		infoMessage.onDestroyCallback()
	end

	infoMessage:destroy()

	infoMessage = nil
end

function EnterGame.openSettings()
	modules.game_settings.GameSettings.window:setParent(rootWidget)
	modules.game_settings.GameSettings.window:show()
	modules.game_settings.GameSettings.window:raise()
	EnterGame.hide()
	connect(modules.game_settings.GameSettings.window, {
		onVisibilityChange = EnterGame.show
	})
end

function EnterGame.setLoginRegion(widget, region)
	local ips = {
		europe = "3.250.128.128",
		usa = "44.234.32.107",
		brazil = "18.230.198.212",
		sea = "18.141.143.79"
	}

	APP_LOGIN_IP_ADDRESS = ips[region] or APP_LOGIN_IP_ADDRESS

	if EnterGame.lastRegionWidget then
		EnterGame.lastRegionWidget:setOn(false)
	end

	G.selectedWorldId = widget.worldId
	EnterGame.lastRegionWidget = widget

	widget:setOn(true)

	EnterGame.regionSet = true
end

function EnterGame.getLoginService(otherService)
	if not APP_USE_LOGIN_SERVICES or not g_resources.isLoadedFromArchive() then
		return {
			ip = APP_LOGIN_IP_ADDRESS,
			port = APP_LOGIN_PORT
		}
	end

	if not otherService then
		local rnd = g_clock.realMillis() % #APP_LOGIN_SERVICES
		local service = APP_LOGIN_SERVICES[rnd + 1]

		return service
	end

	local services = table.copy(APP_LOGIN_SERVICES)

	for i, service in pairs(services) do
		if service.ip == otherService.ip and service.port == otherService.port then
			table.remove(services, i)

			break
		end
	end

	return services[math.random(1, #services)]
end

function EnterGame.updateSelectedLanguage()
	local locale = EnterGame.getLocale()

	if not locale or #locale == 0 then
		locale = "en-GB"

		addEvent(function()
			EnterGame.toggleLanguageSelect()
		end)
	else
		modules.game_settings.GameSettings:setScreenOption("locale", table.find(modules.game_settings.LanguageAppearOrder, locale), true)
	end

	localePanel.content:destroyChildren()

	local widget = g_ui.createWidget("LanguageSelectButton", localePanel.content)

	widget:setImageSource(string.format("/images/ui/windows/entergame/login/language_selector/flag_%s", locale))

	function widget.onClick()
		EnterGame.toggleLanguageSelect()
	end

	localePanel:setOn(false)
end

function EnterGame.getLocale(allowDefault)
	local locale = g_settings.get("locale")

	if allowDefault and (not locale or #locale == 0) then
		locale = "en-GB"
	end

	return locale
end

function EnterGame.setLocale(locale)
	local globalChat = modules.game_chat.GameChat:getGlobalChatConfig(locale ~= "pt-BR" and "english" or "portuguese")

	if globalChat then
		modules.game_chat.GameChat:changeCurrentGlobalChat(globalChat)
	end

	g_settings.set("locale", locale)
	g_settings.save()
	EnterGame.updateSelectedLanguage()
	modules.game_settings.GameSettings:setScreenOption("locale", table.find(modules.game_settings.LanguageAppearOrder, locale), true)
	signalcall(EnterGame.onLanguageChange, locale)
end

function EnterGame.confirmPTBRLocale(locale, oldValue)
	local function yesCallback()
		localeSelectConfirmBox:destroy()
		EnterGame.setLocale(locale, true)
		localePanel:setOn(false)

		localeSelectConfirmBox = nil

		modules.game_settings.GameSettings:setScreenOption("locale", table.find(modules.game_settings.LanguageAppearOrder, EnterGame.getLocale()), true)
	end

	local function noCallback()
		localeSelectConfirmBox:destroy()

		localeSelectConfirmBox = nil

		modules.game_settings.GameSettings:setOption("locale", table.find(modules.game_settings.LanguageAppearOrder, EnterGame.getLocale()), true)
		modules.game_settings.GameSettings:setScreenOption("locale", table.find(modules.game_settings.LanguageAppearOrder, EnterGame.getLocale()), true)
	end

	localeSelectConfirmBox = displayGeneralBox(tr("Confirmar"), "Por enquanto, nossa tradu\xE7\xE3o para o portugu\xEAs est\xE1 em andamento. Portanto, \xE9 poss\xEDvel que voc\xEA encontre conte\xFAdos ainda n\xE3o traduzidos enquanto trabalhamos para adicion\xE1-los. Agradecemos pela compreens\xE3o.", {
		{
			text = tr("Confirmar"),
			callback = yesCallback
		},
		{
			text = tr("Cancelar"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, rootWidget)

	rootWidget:blockInputPanel(true)

	function localeSelectConfirmBox.onDestroy()
		rootWidget:blockInputPanel(false)
	end

	localeSelectConfirmBox:raise()
end

function EnterGame.toggleLanguageSelect()
	localePanel:setOn(not localePanel:isOn())
	localePanel.content:destroyChildren()

	for locale, name in pairs(LanguageLocaleToString) do
		local widget = g_ui.createWidget("LanguageSelectButton", localePanel.content)

		widget:setColoredTooltip(GetHighlightedText(string.format("Language: {%s, #36F991}", name)))
		widget:setImageSource(string.format("/images/ui/windows/entergame/login/language_selector/flag_%s", locale))

		function widget.onClick()
			if locale == "pt-BR" then
				return EnterGame.confirmPTBRLocale(locale)
			else
				EnterGame.setLocale(locale)
				localePanel:setOn(false)
			end
		end
	end
end

-- chunkname: @/modules/game_settings/settings.lua

local localeSetConfirmBox

GameSettings = GameSettings or {}
LanguageAppearOrder = {
	"en-GB",
	"pt-BR"
}
LanguageSelectOrder = {
	"English",
	"Portugu\xEAs (Brasil)"
}
GameSettings.settingsWidgets = {
	slider = {},
	trueFalseSelect = {},
	comboBox = {}
}
GameSettings.defaultOptions = {
	displayOwnCastBar = 4,
	displayOtherAuras = true,
	displayOtherIcons = true,
	displayOtherManas = true,
	displayOtherHealths = true,
	displayOtherNames = true,
	displayOtherHUD = true,
	displayAura = true,
	displayIcons = true,
	displayMana = true,
	displayHealth = true,
	displayName = true,
	displayOwnHUD = true,
	displayArcs = false,
	displayBars = true,
	displayMiscMissiles = true,
	displayMonsterMissiles = true,
	displayPlayerMissiles = true,
	displayOwnMissiles = true,
	displayMissiles = true,
	displayMiscEffects = true,
	displayMonsterEffects = true,
	displayPlayerEffects = true,
	displayOwnEffects = true,
	displayEffects = true,
	displayText = true,
	showCasino = true,
	showMinimap = true,
	showVip = true,
	showInventory = true,
	showHome = true,
	showQuestLog = true,
	showStore = true,
	showSpells = true,
	showBattle = true,
	showPlayerInfo = true,
	showFeedback = true,
	showLeaderboard = true,
	showAutoLoot = true,
	showHotkeys = true,
	showLogout = true,
	showActionMessagesOfOthersInConsole = true,
	showActionMessagesInConsole = true,
	showActionsOfOthersOnScreen = false,
	showActionsOnScreen = false,
	showSpellsOfOthersOnScreen = true,
	showSpellsOnScreen = true,
	showPrivateMessagesOnScreen = true,
	showPrivateMessagesInConsole = true,
	showLevelsInConsole = true,
	showTimestampsInConsole = true,
	showInfoMessagesInConsole = true,
	showEventMessagesInConsole = true,
	showStatusMessagesInConsole = true,
	volumeVoice = 50,
	volumeUI = 50,
	volumeSFX = 50,
	volumeMusic = 50,
	volumeAmbiance = 50,
	volumeMaster = 50,
	walkCtrlTurnDelay = 0,
	walkTeleportDelay = 100,
	walkStairsDelay = 100,
	walkTurnDelay = 0,
	walkFirstStepDelay = 0,
	wasdWalking = false,
	ignoreServerDirection = true,
	walkQEZC = false,
	keyboardDelay = 80,
	hotkeyDelay = 30,
	hideCurrentChannel = false,
	quickLooting = false,
	quickTargetRange = 5,
	quickTargetKey = "Tab",
	quickTarget = true,
	UIScale = 50,
	antiAliasing = false,
	floorFading = 500,
	ambientLight = 0,
	optimizationLevel = 1,
	backgroundFrameRate = 200,
	screenshotMode = false,
	enableLights = true,
	autoChaseOverride = true,
	dash = true,
	fasterWalkAnimation = false,
	slowWalk = false,
	smartWalk = true,
	classicControl = false,
	fullscreen = true,
	showPing = false,
	showFps = false,
	vsync = true,
	enableMapClick = false,
	spellBatchingInterval = 500,
	lifeManaBarType = 1,
	lifeManaBarSize = 1,
	showMessage = true,
	hideInterface = false,
	showFort = true,
	showStronghold = true,
	showLargeEstate = true,
	showMediumEstate = true,
	showSmallEstate = true,
	displayWeatherEffects = true,
	showSeaport = true,
	showHouse = true,
	showTradepost = true,
	showCraftingStation = true,
	showLevelBrackets = true,
	showZoneNames = true,
	showMissionAvailable = true,
	showMissionComplete = true,
	actionKeyOpacity = 80,
	showActionKey = true,
	chatBubbleFadeTime = "Normal",
	chatBubbleOpacity = 80,
	showLFGChatInGeneralChat = false,
	showGlobalChatInGeneralChat = false,
	showChatBubble = true,
	showQuestTracker = true,
	screenShake = true,
	drawManaBars = true,
	drawHealthBars = true,
	drawTitles = true,
	drawNames = true,
	layoutEditMode = false,
	numBarsCrafting = 0,
	numBarsSpell = 2,
	displayBarHeaders = true,
	hideOthersDamage = false,
	damageView = 2,
	lookMessageWindow = false,
	smallUI = false,
	showCopyWarning = true,
	dragStackControl = true,
	effectsSpeed = 75,
	arcsTransparency = 100,
	otherWindowTransparancy = 100,
	mapWindowTransparancy = 100,
	inventoryWindowTransparancy = 100,
	healthWindowTransparancy = 100,
	chatWindowTransparancy = 100,
	displayOtherCastBar = true
}
GameSettings.loadOnOnline = {
	layoutEditMode = false,
	hideInterface = false
}
GameSettings.options = {}
GameSettings.extraOptions = {}
GameSettings.order = {
	"Graphics",
	"Audio & Language",
	"Windows",
	"Misc"
}
GameSettings.settings = {
	["Audio & Language"] = {
		{
			suffix = "%",
			text = "Master volume",
			type = "SettingsSliderOption",
			id = "volumeMaster",
			max = 100,
			min = 0
		},
		{
			suffix = "%",
			text = "Ambience volume",
			type = "SettingsSliderOption",
			id = "volumeAmbiance",
			max = 100,
			min = 0
		},
		{
			suffix = "%",
			text = "Music volume",
			type = "SettingsSliderOption",
			id = "volumeMusic",
			max = 100,
			min = 0
		},
		{
			suffix = "%",
			text = "SFX volume",
			type = "SettingsSliderOption",
			id = "volumeSFX",
			max = 100,
			min = 0
		},
		{
			suffix = "%",
			text = "UI volume",
			type = "SettingsSliderOption",
			id = "volumeUI",
			max = 100,
			min = 0
		},
		{
			suffix = "%",
			text = "Voice volume",
			type = "SettingsSliderOption",
			id = "volumeVoice",
			max = 100,
			min = 0
		},
		{
			text = "Select your language",
			type = "GameSettingsComboBoxOption",
			id = "locale",
			requireRestart = true,
			values = LanguageSelectOrder
		}
	},
	Graphics = {
		{
			id = "fullscreen",
			text = "Fullscreen",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "antiAliasing",
			text = "Anti-aliasing",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "vsync",
			text = "Vertical-sync",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "displayWeatherEffects",
			text = "Display weather effects",
			type = "GameSettingsTrueFalseOption"
		},
		{
			suffix = " ms",
			text = "Floor fading",
			type = "SettingsSliderOption",
			id = "floorFading",
			max = 1000,
			min = 0
		},
		{
			suffix = " fps",
			text = "Framerate limit",
			type = "SettingsSliderOption",
			id = "backgroundFrameRate",
			max = 200,
			min = 10
		},
		{
			suffix = " %",
			applyValueChange = true,
			text = "UI Scale",
			type = "SettingsSliderOption",
			max = 100,
			min = 0,
			width = 100,
			id = "UIScale",
			displayFormat = function(value)
				return (0.75 + value / 100 * 0.5) * 100
			end
		},
		{
			id = "drawNames",
			text = "Draw names",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "drawTitles",
			text = "Draw titles",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "drawHealthBars",
			text = "Draw health bars",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "drawManaBars",
			text = "Draw mana bars",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "screenShake",
			text = "Screen shake",
			type = "GameSettingsTrueFalseOption"
		}
	},
	Windows = {
		{
			id = "numBarsSpell",
			text = "Ability bars",
			type = "GameSettingsComboBoxOption",
			values = {
				0,
				1,
				2,
				3,
				4,
				5,
				6
			}
		},
		{
			id = "layoutEditMode",
			text = "Edit UI",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "showQuestTracker",
			text = "Show quest tracker",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "showActionKey",
			text = "Show action key",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "showChatBubble",
			text = "Show chat bubbles",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "showGlobalChatInGeneralChat",
			text = "Show global chat messages in general chat",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "showLFGChatInGeneralChat",
			text = "Show LFG chat messages",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "lifeManaBarSize",
			text = "Life/mana bar size",
			type = "GameSettingsComboBoxOption",
			values = {
				"Large",
				"Small"
			}
		},
		{
			id = "lifeManaBarType",
			text = "Life/mana bar type",
			type = "GameSettingsComboBoxOption",
			values = {
				"Horizontal",
				"Vertical"
			}
		},
		{
			suffix = " %",
			text = "Action key opacity",
			type = "SettingsSliderOption",
			id = "actionKeyOpacity",
			max = 100,
			min = 0
		},
		{
			suffix = " %",
			text = "Chat bubble opacity",
			type = "SettingsSliderOption",
			id = "chatBubbleOpacity",
			max = 100,
			min = 0
		},
		{
			id = "chatBubbleFadeTime",
			text = "Chat bubble fading",
			type = "GameSettingsComboBoxOption",
			values = {
				"Slow",
				"Normal",
				"Fast"
			}
		},
		{
			id = "hideInterface",
			text = "Hide interface elements",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "screenshotMode",
			text = "Screenshot mode",
			type = "GameSettingsTrueFalseOption"
		}
	},
	Misc = {
		{
			id = "quickTarget",
			text = "Quick targeting",
			type = "GameSettingsTrueFalseOption"
		},
		{
			suffix = "  tiles",
			text = "Targeting detect range",
			type = "GameSettingsComboBoxOption",
			id = "quickTargetRange",
			values = {
				1,
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				9,
				10
			}
		},
		{
			id = "enableMapClick",
			text = "Click to move",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "smartWalk",
			text = "Smart walking",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "walkQEZC",
			text = "QEZC diagonal walk",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "dragStackControl",
			text = "CTRL to drag full stacks",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "displayOtherCastBar",
			text = "Show others cast bar",
			type = "GameSettingsTrueFalseOption"
		},
		{
			id = "displayOwnCastBar",
			text = "Show own cast bar",
			type = "GameSettingsComboBoxOption",
			values = {
				"None",
				"Small",
				"Big",
				"Both"
			}
		},
		{
			id = "hideCurrentChannel",
			text = "Hide current channel",
			type = "GameSettingsTrueFalseOption"
		},
		{
			suffix = " ms",
			text = "Spell batching interval",
			type = "SettingsSliderOption",
			id = "spellBatchingInterval",
			max = 1500,
			min = 100
		}
	}
}

function GameSettings.init()
	g_ui.importStyle("styles/left_panel.otui")
	g_ui.importStyle("styles/right_panel.otui")
	g_ui.importStyle("styles/main.otui")

	GameSettings.window = g_ui.createWidget("GameSettingsWindow", modules.game_interface.getHUDPanel())

	GameSettings.window:hide()

	GameSettings.content = GameSettings.window:recursiveGetChildById("content")
	GameSettings.leftPanel = GameSettings.window:recursiveGetChildById("leftPanel")
	GameSettings.rightPanel = nil
	GameSettings.resetButton = GameSettings.window:recursiveGetChildById("resetButton")

	function GameSettings.resetButton.onClick()
		local function destroyWindow()
			if GameSettings.resetWindow ~= nil then
				GameSettings.resetWindow:destroy()

				GameSettings.resetWindow = nil
			end
		end

		local function resetAllSettings()
			GameSettings:resetSettings()
			destroyWindow()
		end

		destroyWindow()

		GameSettings.resetWindow = displayGeneralBox(tr("Reset Settings"), tr("Are you sure you want to reset all settings?"), {
			{
				text = tr("Yes"),
				callback = resetAllSettings
			},
			{
				text = tr("No"),
				callback = destroyWindow
			},
			anchor = AnchorHorizontalCenter
		}, resetAllSettings, destroyWindow)
	end

	for k, v in pairs(GameSettings.defaultOptions) do
		g_settings.setDefault(k, v)

		GameSettings.options[k] = v
	end

	for _, v in ipairs(g_extras.getAll()) do
		GameSettings.extraOptions[v] = g_extras.get(v)

		g_settings.setDefault("extras_" .. v, GameSettings.extraOptions[v])
	end

	GameSettings:setup()
	GameSettings:populateSettings()
	g_keyboard.bindKeyDown("O", GameSettings.toggle)
	connect(g_game, {
		onGameStart = GameSettings.onGameStart,
		onGameEnd = GameSettings.onGameEnd
	})
end

function GameSettings.terminate()
	g_keyboard.unbindKeyDown("O")

	for _, tab in ipairs(GameSettings.tabs) do
		tab.panel:destroy()
	end

	GameSettings.window:destroy()

	if GameSettings.resetWindow then
		GameSettings.resetWindow:destroy()
	end
end

function GameSettings:show()
	self.window:show()
	self.window:raise()
	self.window:focus()
end

function GameSettings:hide()
	self.window:hide()
end

function GameSettings.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if not GameSettings.window then
		GameSettings.init()

		return
	end

	if GameSettings.window:isVisible() then
		GameSettings:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameSettings:show()
	end
end

function GameSettings.onGameStart()
	GameSettings:loadOnOnlineSettings()
end

function GameSettings:loadOnOnlineSettings()
	for k, v in pairs(GameSettings.loadOnOnline) do
		if type(v) == "boolean" then
			GameSettings:setOption(k, v, true)
			GameSettings:setScreenOption(k, v, true)
		elseif type(v) == "number" then
			GameSettings:setOption(k, v, true)
			GameSettings:setScreenOption(k, v, true)
		end
	end
end

function GameSettings.onGameEnd()
	GameSettings:hide()
end

function GameSettings:setup()
	for k, v in pairs(GameSettings.defaultOptions) do
		if type(v) == "boolean" then
			self:setOption(k, g_settings.getBoolean(k), true)
		elseif type(v) == "number" then
			self:setOption(k, g_settings.getNumber(k), true)
		elseif type(v) == "string" then
			self:setOption(k, g_settings.getString(k), true)
		end
	end

	if g_game.isOnline() then
		self:onGameStart()
	end
end

function GameSettings:selectTab(id)
	if type(id) == "string" then
		id = tonumber(id)
	end

	if self.currentTab == id then
		return
	end

	if self.currentTab and self.currentTab > 0 and self.currentTab <= #self.tabs then
		self.tabs[self.currentTab].button:setOn(false)
		self.tabs[self.currentTab].button.text:setOn(false)
		self.tabs[self.currentTab].button.icon:setOn(false)
	end

	if self.rightPanel then
		self.rightPanel.verticalScrollBar:hide()
		self.content:removeChild(self.rightPanel)
	end

	self.tabs[id].button:setOn(true)
	self.tabs[id].button.text:setOn(true)
	self.tabs[id].button.icon:setOn(true)

	self.currentTab = id
	self.rightPanel = self.tabs[id].panel

	self.content:addChild(self.rightPanel)
	self.rightPanel:fill("parent")
	self.rightPanel:addAnchor(AnchorLeft, "prev", AnchorRight)
	self.rightPanel.verticalScrollBar:show()
end

function GameSettings:getOption(key)
	return self.options[key]
end

function GameSettings:setOption(key, value, force)
	if self.extraOptions[key] ~= nil then
		g_extras.set(key, value)
		g_settings.set("extras_" .. key, value)

		if key == "debugProxy" and modules.game_proxy then
			if value then
				modules.game_proxy.show()
			else
				modules.game_proxy.hide()
			end
		end

		return
	end

	if modules.game_interface == nil then
		return
	end

	if not force and self.options[key] == value then
		return
	end

	local gameMapPanel = modules.game_interface.getMapPanel()
	local rootPanel = modules.game_interface.getRootPanel()
	local oldValue = self.options[key]

	self.options[key] = value

	if key == "vsync" then
		g_window.setVerticalSync(value)
	elseif key == "showFps" then
		-- block empty
	elseif key == "showPing" then
		-- block empty
	elseif key == "fullscreen" then
		g_window.setFullscreen(value)
	elseif key == "volumeSFX" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_SFX, value)
		end
	elseif key == "volumeUI" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_UI, value)
		end
	elseif key == "volumeVoice" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_VOICE, value)
		end
	elseif key == "volumeMaster" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_MASTER, value)
		end
	elseif key == "volumeMusic" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_MUSIC, value)
		end
	elseif key == "volumeAmbiance" then
		if g_sound ~= nil then
			g_sound.setVolume(VOLUME_AMBIANCE, value)
		end
	elseif key == "locale" then
		local locale = LanguageAppearOrder[tonumber(value)]

		if locale == "pt-BR" then
			return EnterGame.confirmPTBRLocale(locale, oldValue)
		end

		EnterGame.setLocale(locale)

		return
	elseif key == "backgroundFrameRate" then
		local text, v = value, value

		if value <= 0 or value >= 201 then
			text = "Unlimited"
			v = 0
		end

		g_app.setMaxFps(v)
	elseif key == "UIScale" then
		local scale = 0.75 + value / 100 * 0.5
		local menu = modules.game_menu.Menu

		menu.scaleMultiplier = scale

		menu.onResize(true)
	elseif key == "enableLights" then
		gameMapPanel:setDrawLights(value and self.defaultOptions.ambientLight < 100)
	elseif key == "floorFading" then
		gameMapPanel:setFloorFading(value)
	elseif key == "ambientLight" then
		gameMapPanel:setMinimumAmbientLight(value / 100)
		gameMapPanel:setDrawLights(self.defaultOptions.enableLights and value < 100)
	elseif key == "drawNames" then
		gameMapPanel:setDrawNames(value)
	elseif key == "drawTitles" then
		gameMapPanel:setDrawTitles(value)
	elseif key == "drawHealthBars" then
		gameMapPanel:setDrawHealthBars(value)
	elseif key == "drawManaBars" then
		gameMapPanel:setDrawManaBars(value)
	elseif key == "optimizationLevel" then
		g_adaptiveRenderer.setLevel(value)
	elseif key == "chatWindowTransparancy" then
		local miniWindow

		miniWindow = rootPanel:recursiveGetChildById("gameChatPanel")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end
	elseif key == "healthWindowTransparancy" then
		local miniWindow

		miniWindow = rootPanel:recursiveGetChildById("healthInfoWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end
	elseif key == "inventoryWindowTransparancy" then
		local miniWindow

		miniWindow = rootPanel:recursiveGetChildById("inventoryWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end
	elseif key == "mapWindowTransparancy" then
		local miniWindow

		miniWindow = rootPanel:recursiveGetChildById("minimapWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end
	elseif key == "otherWindowTransparancy" then
		local miniWindow

		miniWindow = rootPanel:recursiveGetChildById("professionWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		miniWindow = rootPanel:recursiveGetChildById("vipWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		miniWindow = rootPanel:recursiveGetChildById("battleWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		miniWindow = rootPanel:recursiveGetChildById("skillWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		miniWindow = rootPanel:recursiveGetChildById("spelllistWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		miniWindow = rootPanel:recursiveGetChildById("badgeWindow")

		if miniWindow then
			miniWindow:setOpacity(value / 100)
		end

		for _, child in pairs(rootPanel:getChildren()) do
			if child:getId():startswith("container") then
				child:setOpacity(value / 100)
			end
		end

		for _, child in pairs(rootPanel:getChildById("gameLeftPanel"):getChildren()) do
			if child:getId():startswith("container") then
				child:setOpacity(value / 100)
			end
		end

		for _, child in pairs(rootPanel:getChildById("gameRightPanel"):getChildren()) do
			if child:getId():startswith("container") then
				child:setOpacity(value / 100)
			end
		end
	elseif key == "arcsTransparency" then
		-- block empty
	elseif key == "displayBars" then
		self:enableBars(value)

		if value then
			self:enableArcs(false)
		else
			self:enableArcs(true)
		end
	elseif key == "displayArcs" then
		self:enableArcs(value)

		if value then
			self:enableBars(false)
		else
			self:enableBars(true)
		end
	elseif key == "displayOwnHUD" then
		self:setOption("displayName", value)
		self:setOption("displayHealth", value)
		self:setOption("displayMana", value)
		self:setOption("displayIcons", value)
		self:setOption("displayAura", value)
	elseif key == "displayName" then
		g_game.setDrawOwnName(value)
	elseif key == "displayIcons" then
		g_game.setDrawOwnIcons(value)
	elseif key == "displayHealth" then
		if self:getOption("displayArcs") then
			-- block empty
		else
			g_game.setDrawOwnHealth(value)
		end
	elseif key == "displayMana" then
		if self:getOption("displayArcs") then
			-- block empty
		else
			g_game.setDrawOwnMana(value)
		end
	elseif key == "displayAura" then
		g_game.setDrawOwnAura(value)
	elseif key == "displayOwnCastBar" then
		if not g_game.getFeature(GameHideOwnCastBar) and (value == 1 or value == 3) then
			g_game.enableFeature(GameHideOwnCastBar)
		elseif g_game.getFeature(GameHideOwnCastBar) and (value == 2 or value == 4) then
			g_game.disableFeature(GameHideOwnCastBar)
		end
	elseif key == "displayOtherCastBar" then
		if g_game.getFeature(GameHideOthersCastBar) and value then
			g_game.disableFeature(GameHideOthersCastBar)
		else
			g_game.enableFeature(GameHideOthersCastBar)
		end
	elseif key == "hideCurrentChannel" then
		modules.game_minimap.updateChannelInfo()
	elseif key == "lifeManaBarSize" then
		modules.game_healthinfo.setLifeManaBarSize(value == 1 and "large" or "small")
	elseif key == "lifeManaBarType" then
		modules.game_healthinfo.setLifeManaBarType(value == 1 and "horizontal" or "vertical")
	elseif key == "displayOtherHUD" then
		self:setOption("displayOtherNames", value)
		self:setOption("displayOtherHealths", value)
		self:setOption("displayOtherManas", value)
		self:setOption("displayOtherIcons", value)
		self:setOption("displayOtherAuras", value)
	elseif key == "displayOtherNames" then
		g_game.setDrawOtherNames(value)
	elseif key == "displayOtherIcons" then
		g_game.setDrawOtherIcons(value)
	elseif key == "displayOtherHealths" then
		g_game.setDrawOtherHealths(value)
	elseif key == "displayOtherManas" then
		g_game.setDrawOtherManas(value)
	elseif key == "displayOtherAuras" then
		g_game.setDrawOtherAuras(value)
	elseif key == "displayText" then
		gameMapPanel:setDrawTexts(value)
	elseif key == "displayEffects" then
		g_game.setDrawEffects(value)
	elseif key == "displayOwnEffects" then
		g_game.setDrawOwnEffects(value)
	elseif key == "displayPlayerEffects" then
		g_game.setDrawPlayerEffects(value)
	elseif key == "displayMonsterEffects" then
		g_game.setDrawMonsterEffects(value)
	elseif key == "displayMiscEffects" then
		g_game.setDrawMiscEffects(value)
	elseif key == "displayMissiles" then
		g_game.setDrawMissiles(value)
	elseif key == "displayOwnMissiles" then
		g_game.setDrawOwnMissiles(value)
	elseif key == "displayPlayerMissiles" then
		g_game.setDrawPlayerMissiles(value)
	elseif key == "displayMonsterMissiles" then
		g_game.setDrawMonsterMissiles(value)
	elseif key == "displayMiscMissiles" then
		g_game.setDrawMiscMissiles(value)
	elseif key == "effectsSpeed" then
		g_game.setEffectDuration(value)
	elseif key == "screenshotMode" then
		addEvent(function()
			modules.game_interface.setScreenshotMode(value)
		end)
	elseif key == "dash" then
		if value then
			g_game.setMaxPreWalkingSteps(2)
		else
			g_game.setMaxPreWalkingSteps(1)
		end
	elseif key == "slowWalk" then
		if value then
			g_game.enableFeature(GameSlowerManualWalking)
		else
			g_game.disableFeature(GameSlowerManualWalking)
		end
	elseif key == "fasterWalkAnimation" then
		if value then
			g_game.enableFeature(GameFasterAnimations)
		else
			g_game.disableFeature(GameFasterAnimations)
		end
	elseif key == "antiAliasing" then
		g_app.setMapSmooth(value)
	elseif key == "damageView" then
		local newValue = value - 1

		g_game.setDamageView(newValue)
	elseif key == "hideOthersDamage" then
		g_game.hideOthersDamage(value)
	elseif key:startswith("numBars") then
		if not AbilityBar then
			return
		end

		if key == "numBarsSpell" then
			AbilityBar.setNumBarsVisible(AbilityBarCategorySpell, value)
			AbilityBar.setNumBarsVisible(AbilityBarCategoryCrafting, value)
		end
	elseif key == "layoutEditMode" then
		g_layout.setEditMode(value)
	elseif key == "showQuestTracker" then
		modules.game_minimap.toggleMinimapButton("questTrackerButton", value)
		modules.game_questlog.toggleQuestTracker(value)
	elseif key == "hideInterface" then
		modules.game_menu.Menu.toggleInterface(value)
	elseif key == "walkQEZC" then
		modules.game_interface.bindOptionalWalkKeys(value)
	elseif key == "displayWeatherEffects" then
		if not value then
			modules.game_interface.getMapPanel():setShader(0)
		else
			modules.game_interface.onShaderChange({
				shader = modules.game_interface.cachedShader
			}, true)
		end
	elseif key == "showActionKey" then
		if not value then
			modules.game_interface.g_actionKey.hide()
		else
			modules.game_interface.g_actionKey.show()
		end
	elseif key == "actionKeyOpacity" then
		modules.game_interface.g_actionKey.setOpacity(value)
	elseif key == "spellBatchingInterval" then
		AbilityBar.setSpellBatchingInterval(value)
	end

	g_settings.set(key, value)
	g_settings.save()
end

function GameSettings:enableBars(value)
	if value then
		g_game.setDrawOwnMana(self:getOption("displayMana"))
		g_game.setDrawOwnHealth(self:getOption("displayHealth"))
	else
		g_game.setDrawOwnMana(false)
		g_game.setDrawOwnHealth(false)
	end
end

function GameSettings:enableArcs(value)
	return
end

function GameSettings:resetSettings()
	for k, v in pairs(self.defaultOptions) do
		if self.options[k] ~= v and not self:setScreenOption(k, v) then
			self.options[k] = v

			g_settings.set(k, v)
		end
	end

	g_layout.load(true)
end

function GameSettings:setScreenOption(k, v, dontSignal)
	if self.settingsWidgets.trueFalseSelect[k] then
		if self.settingsWidgets.trueFalseSelect[k]:isOn() ~= v then
			self.settingsWidgets.trueFalseSelect[k]:onClick()
		end
	elseif self.settingsWidgets.slider[k] then
		self.settingsWidgets.slider[k]:setValue(v)
	elseif self.settingsWidgets.comboBox[k] then
		if type(v) == "string" then
			self.settingsWidgets.comboBox[k]:setOption(v)
		elseif type(v) == "number" and self.settingsWidgets.comboBox[k].currentIndex ~= v then
			self.settingsWidgets.comboBox[k]:setCurrentIndex(v, dontSignal)
		end
	else
		return false
	end

	return true
end

function GameSettings:populateSettings()
	self.leftPanel:clearChildren()

	self.tabs = {}

	for i = 1, #self.order do
		local tabButton = g_ui.createWidget("SelectButton", self.leftPanel)
		local name = self.order[i]

		tabButton:setId(i)
		tabButton:setText(name)

		function tabButton.onClick(widget)
			GameSettings:selectTab(widget:getId())
		end

		local tabPanel = g_ui.createWidget("GameSettingsRightPanel")
		local scrollBar = g_ui.createWidget("GameSettingsRightPanelScrollBar", self.window)

		tabPanel:setVerticalScrollBar(scrollBar)

		for index, setting in ipairs(self.settings[name]) do
			local widget = g_ui.createWidget(setting.type, tabPanel)
			local styleName = widget:getStyleName()

			if styleName == "GameSettingsTrueFalseOption" then
				widget:recursiveGetChildById("description"):setText(setting.text)
				widget:setId(setting.id)

				local trueFalseSelect = widget:recursiveGetChildById("trueFalseSelect")

				if self:getOption(setting.id) then
					trueFalseSelect:onClick()
				end

				function trueFalseSelect.onStateChange(widget, value)
					GameSettings:setOption(setting.id, value)
				end

				self.settingsWidgets.trueFalseSelect[setting.id] = trueFalseSelect
			elseif styleName == "SettingsSliderOption" then
				widget:recursiveGetChildById("description"):setText(setting.text)
				widget:setId(setting.id)

				local slider = widget:recursiveGetChildById("slider")

				if setting.width then
					slider:setWidth(setting.width)
				end

				slider:setMinimum(setting.min or 0)
				slider:setMaximum(setting.max or 100)
				slider:setSymbol(setting.suffix or nil)
				slider:setValue(self:getOption(setting.id) or slider:getMinimum())

				slider.displayFormat = setting.displayFormat

				if not setting.applyValueChange then
					function slider.onValueChange(widget, value)
						GameSettings:setOption(setting.id, value)
					end
				else
					local applyButton = g_ui.createWidget("SuccessButton", widget)

					applyButton:setText("Apply")

					applyButton.resizeText = true

					applyButton:addAnchor(AnchorRight, "parent", AnchorRight)
					applyButton:addAnchor(AnchorVerticalCenter, "parent", AnchorVerticalCenter)

					function applyButton.onClick()
						GameSettings:setOption(setting.id, slider:getValue())
					end
				end

				self.settingsWidgets.slider[setting.id] = slider
			elseif styleName == "GameSettingsComboBoxOption" then
				widget:recursiveGetChildById("description"):setText(setting.text)
				widget:setId(setting.id)

				local comboBox = widget:recursiveGetChildById("comboBox")
				local sufix = setting.suffix or ""

				for _, option in ipairs(setting.values) do
					comboBox:addOption(option .. sufix, nil, true)
				end

				self.settingsWidgets.comboBox[setting.id] = comboBox

				self:setScreenOption(setting.id, self:getOption(setting.id))

				local settingsOption = widget

				function comboBox.onOptionChange(widget, value)
					GameSettings:setOption(setting.id, widget:getOption(value))

					if settingsOption.restartBtn then
						settingsOption.restartBtn:setVisible(true)
					end
				end

				if setting.requireRestart then
					local restartBtn = g_ui.createWidget("DangerButton", widget)

					restartBtn:setFont("poppins-12")
					restartBtn:setText("Restart")
					restartBtn:setWidth(86)
					restartBtn:setHeight(40)
					restartBtn:addAnchor(AnchorLeft, "prev", AnchorRight)
					restartBtn:addAnchor(AnchorVerticalCenter, "parent", AnchorVerticalCenter)
					restartBtn:setMarginLeft(5)

					function restartBtn.onClick()
						local function yesCallback()
							if g_game.isOnline() then
								local isInPz = g_game.getLocalPlayer():hasStatusIcon(StatusIcons.SafeZone)

								if not isInPz then
									displayErrorBox(tr("Error"), tr("You must be on a safe zone in order to restart the client."), nil, nil, true)
									localeSetConfirmBox:destroy()

									localeSetConfirmBox = nil

									return
								end

								g_game.logout()
							end

							scheduleEvent(function()
								g_app.restart()
							end, 300)
							localeSetConfirmBox:destroy()

							localeSetConfirmBox = nil
						end

						local function noCallback()
							localeSetConfirmBox:destroy()

							localeSetConfirmBox = nil
						end

						localeSetConfirmBox = displayGeneralBox(tr("Game Restart Pending"), tr("In order for the locale change to be applied in full, it is required to restart the game client.\nDo you want to restart it now?"), {
							{
								text = tr("Yes"),
								callback = yesCallback
							},
							{
								text = tr("No"),
								callback = noCallback
							},
							anchor = AnchorHorizontalCenter
						}, yesCallback, noCallback, nil, rootWidget)

						rootWidget:blockInputPanel(true)

						function localeSetConfirmBox.onDestroy()
							rootWidget:blockInputPanel(false)
						end

						localeSetConfirmBox:raise()
					end

					restartBtn:setVisible(false)

					widget.restartBtn = restartBtn
				end
			elseif styleName == "GameSettingsButtonOption" then
				widget:setId(setting.id)

				local button = widget:recursiveGetChildById("button")

				button:setText(setting.text)

				function button.onClick(widget)
					GameSettings:setOption(setting.id, true, true)
				end
			end
		end

		table.insert(self.tabs, {
			button = tabButton,
			panel = tabPanel
		})
	end

	self:selectTab(1)
end

function getOption(key)
	return GameSettings:getOption(key)
end

function toggleOption(key)
	GameSettings:setScreenOption(key, not GameSettings.options[key])
end

function resizeToResolution(self)
	return
end

function showEscapeButton(self, value)
	return
end

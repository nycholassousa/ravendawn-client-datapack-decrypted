-- chunkname: @/modules/game_player_report/player_report.lua

GamePlayerReport = {
	currentReportData = {}
}

function GamePlayerReport:loadConfig()
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

function GamePlayerReport:init()
	if not self:loadConfig() then
		return
	end

	g_ui.importStyle("styles/main.otui")

	self.window = g_ui.createWidget("GamePlayerReportWindow", modules.game_interface.getHUDPanel())

	self.window:hide()

	local categories = cfg.categories
	local categoryList = self.window.content.category_panel.categories

	for _, category in ipairs(categories) do
		local categoryWidget = g_ui.createWidget("GamePlayerReportWindowCategoryPanelItem", categoryList)

		categoryWidget.category = category.name

		categoryWidget.label:setText(category.name)
		categoryWidget.info_button:setTooltip(category.description)
	end

	ProtocolGame.registerExtendedOpcode(ExtendedIds.PlayerReport, self.onExtendedOpcode)
	connect(g_game, {
		onGameEnd = self.hide
	})
end

function GamePlayerReport:terminate()
	if self.window then
		self.window:destroy()

		self.window = nil
	end

	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.PlayerReport)
	disconnect(g_game, {
		onGameEnd = self.hide
	})

	self = nil
end

function GamePlayerReport:show(name, level, outfit, guid, accountId)
	if not self.window then
		return
	end

	self.window.content.player_panel.inner_panel.player_name:setColoredText(GetHighlightedText(string.format("{[%d], #36F991} %s", level, name), "#CED2D9"))
	self.window.content.player_panel.inner_panel.player_outfit:setOutfit(outfit)
	self:selectCategory(cfg.categories[1].name)

	self.currentReportData.name = name
	self.currentReportData.level = level
	self.currentReportData.outfit = outfit
	self.currentReportData.guid = guid
	self.currentReportData.accountId = accountId

	self.window:show()
	self.window:raise()
end

function GamePlayerReport:hide()
	self = self or GamePlayerReport

	if not self.window then
		return
	end

	self.currentReportData = {}

	self.window.content.bottom_panel.text_input_panel.text_input:setText()
	self.window:hide()
end

function GamePlayerReport:selectCategory(category)
	local categoryList = self.window.content.category_panel.categories

	for _, categoryWidget in ipairs(categoryList:getChildren()) do
		local isOn = categoryWidget.category == category

		categoryWidget.radio_button:setOn(isOn)

		if isOn then
			self.currentReportData.category = category
		end
	end
end

function GamePlayerReport.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.PlayerReport then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if not data or type(data) ~= "table" then
		return
	end

	local action = data.action

	if not action then
		return
	end

	if action == "open" then
		GamePlayerReport:show(data.playerName, data.playerLevel, data.playerOutfit, data.playerGuid, data.playerAccountId)
	end
end

function GamePlayerReport:sendOpcode(data)
	local protocol = g_game.getProtocolGame()

	if not protocol then
		return
	end

	local buffer = g_game.serializeTable(data)

	if not buffer then
		return
	end

	protocol:sendExtendedOpcode(ExtendedIds.PlayerReport, buffer)
end

function GamePlayerReport:requestReportWindow(name)
	self:sendOpcode({
		action = "open",
		playerName = name
	})
end

function GamePlayerReport:sendReport()
	self:sendOpcode({
		action = "report",
		playerName = self.currentReportData.name,
		category = self.currentReportData.category,
		comment = self.currentReportData.comment,
		playerGuid = self.currentReportData.guid,
		playerAccountId = self.currentReportData.accountId
	})
	self:hide()
end

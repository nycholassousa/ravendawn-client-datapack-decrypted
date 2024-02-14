-- chunkname: @/modules/game_arena/arena.lua

local arenaWindow, arenaConfirmWindow, waitingForPlayersWindow, arenaScoreboardWindow, arenaModesRadioGroup, arenaTypesRadioGroup, modeDuoCheckBox, modeTrioCheckBox, typeNormalCheckBox, typeRankedCheckBox, searchQueuePanel, startQueueButton, searchQueueTimer, arenaScoreboardTable, arenaScoreboardBattleStatus
local scoreboardSortMode = "teamId"
local scoreboardSortASC = false
local scoreboardHeadersColumns, scoreboardData, loadoutWindow

ARENA_TYPE_2V2 = 1
ARENA_TYPE_3V3 = 2
ARENA_TYPE_1V1 = 3
ARENA_MODE_QUICK_MATCH = 1

local arenaTypeToName = {
	[ARENA_TYPE_2V2] = "2v2",
	[ARENA_TYPE_3V3] = "3v3",
	[ARENA_TYPE_1V1] = "1v1"
}
local arenaModeToName = {
	[ARENA_MODE_QUICK_MATCH] = "Quick Match"
}
local currentArenaType = ARENA_TYPE_2V2
local currentArenaMode = ARENA_MODE_QUICK_MATCH
local onArenaTypeSelectionChange, onArenaModeSelectionChange

function init()
	dofile("loadout.lua")
	g_ui.importStyle("arena")
	g_ui.importStyle("scoreboard")
	g_ui.importStyle("loadout")
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Arena, onExtendedOpcode)

	arenaWindow = g_ui.createWidget("ArenaWindow", modules.game_interface.getHUDPanel())

	function arenaWindow:onVisibilityChange(visible)
		if not visible then
			GameNpc:ungreet()
		end
	end

	arenaConfirmWindow = g_ui.createWidget("ArenaConfirmWindow", modules.game_interface.getHUDPanel())
	waitingForPlayersWindow = g_ui.createWidget("WaitingForPlayersWindow", modules.game_interface.getHUDPanel())
	arenaScoreboardWindow = g_ui.createWidget("ArenaScoreboardWindow", modules.game_interface.getHUDPanel())
	modeDuoCheckBox = arenaWindow:recursiveGetChildById("modeDuo")
	modeTrioCheckBox = arenaWindow:recursiveGetChildById("modeTrio")
	typeNormalCheckBox = arenaWindow:recursiveGetChildById("typeNormal")
	typeRankedCheckBox = arenaWindow:recursiveGetChildById("typeRanked")
	searchQueuePanel = arenaWindow:recursiveGetChildById("searchQueuePanel")
	startQueueButton = arenaWindow:recursiveGetChildById("startQueueButton")
	searchQueueTimer = arenaWindow:recursiveGetChildById("searchQueueTimer")
	arenaScoreboardTable = arenaScoreboardWindow:recursiveGetChildById("arenaScoreboardTable")
	arenaScoreboardBattleStatus = arenaScoreboardWindow:recursiveGetChildById("battleStatus")
	arenaModesRadioGroup = UIRadioGroup.create()

	arenaModesRadioGroup:addWidget(modeDuoCheckBox)
	arenaModesRadioGroup:addWidget(modeTrioCheckBox)
	arenaModesRadioGroup:selectWidget(modeDuoCheckBox)
	connect(arenaModesRadioGroup, "onSelectionChange", onArenaModeSelectionChange)

	arenaTypesRadioGroup = UIRadioGroup.create()

	arenaTypesRadioGroup:addWidget(typeNormalCheckBox)
	arenaTypesRadioGroup:addWidget(typeRankedCheckBox)
	connect(arenaTypesRadioGroup, "onSelectionChange", onArenaTypeSelectionChange)
	arenaTypesRadioGroup:selectWidget(typeNormalCheckBox)

	scoreboardHeadersColumns = arenaScoreboardWindow:recursiveGetChildById("header"):getChildren()

	initLoadoutWindow()

	if g_game.isOnline() then
		requestStats(currentArenaType, currentArenaMode)
	end

	connect(g_game, {
		onGameEnd = close,
		onArenaModeChange = onArenaModeChange
	})
end

function terminate()
	if searchQueueTimer.event then
		removeEvent(searchQueueTimer.event)

		searchQueueTimer.event = nil
	end

	hideConfirmWindow()
	arenaWindow:destroy()
	arenaConfirmWindow:destroy()
	arenaScoreboardWindow:destroy()
	terminateLoadoutWindow()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Arena)
	disconnect(g_game, {
		onGameEnd = close,
		onArenaModeChange = onArenaModeChange
	})
end

function toggle()
	return
end

function show()
	requestStats(currentArenaType, currentArenaMode)
	arenaWindow:show()
	GameNpc:hide()
end

function hide()
	arenaWindow:hide()
	arenaConfirmWindow:hide()
	waitingForPlayersWindow:hide()
end

function close(internal)
	cancelQueue(true, true)
	hide()

	if not internal then
		GameNpc:ungreet()
	end
end

function requestStats(arenaType, arenaMode)
	sendOpcode({
		action = "arena_stats",
		arenaMode = arenaMode,
		arenaType = arenaType
	})
end

function onArenaTypeSelectionChange(widget, selectedWidget, previousSelectedWidget)
	if selectedWidget then
		local icon = selectedWidget:getChildById("icon")

		if icon then
			icon:setChecked(true)
		end

		currentArenaType = selectedWidget.arenaType
		currentArenaTypeWidget = selectedWidget

		requestStats(currentArenaType, currentArenaMode)
	end

	if previousSelectedWidget then
		local icon = previousSelectedWidget:getChildById("icon")

		if icon then
			icon:setChecked(false)
		end
	end
end

function onArenaModeSelectionChange(widget, selectedWidget, previousSelectedWidget)
	if selectedWidget then
		currentArenaMode = selectedWidget.arenaMode

		requestStats(currentArenaType, currentArenaMode)
	end
end

function onStartQueue(data)
	local queue = data.queue

	if not queue.startTime then
		return
	end

	startQueueButton:hide()

	searchQueueTimer.startTime = queue.startTime

	searchQueueTimer:setText(SecondsToClock(os.time() - searchQueueTimer.startTime))

	searchQueueTimer.event = cycleEvent(function()
		if not searchQueueTimer.startTime then
			return
		end

		searchQueueTimer:setText(SecondsToClock(os.time() - searchQueueTimer.startTime))
	end, 1000)

	searchQueuePanel.searchInfo:show()
end

function startQueue()
	sendOpcode({
		action = "join_queue",
		arenaType = currentArenaMode,
		arenaMode = currentArenaType
	})
end

function cancelQueue(internal, dontHide)
	searchQueuePanel.searchInfo:hide()
	startQueueButton:show()

	if searchQueueTimer.event then
		removeEvent(searchQueueTimer.event)

		searchQueueTimer.event = nil
	end

	searchQueueTimer:setText("00:00:00")

	if not internal then
		sendOpcode({
			action = "leave_all_queues"
		})
	elseif not dontHide then
		close(internal)
	end
end

function confirmArenaEntry(matchId, confirmed)
	hideConfirmWindow()
	sendOpcode({
		action = "confirm_arena",
		matchId = matchId,
		confirmed = confirmed
	})
end

function onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Arena or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "match_found" then
		cancelQueue(true)
		displayConfirmWindow(data)
	elseif data.action == "close_confirmation_window" then
		hideConfirmWindow()
	elseif data.action == "arena_stats" then
		updateStats(data)
	elseif data.action == "arena_scoreboard" then
		updateScoreboard(data.data)
	elseif data.action == "close_scoreboard_window" then
		arenaScoreboardWindow:hide()
	elseif data.action == "joined_queue" then
		if waitingForPlayersWindow:isVisible() then
			waitingForPlayersWindow:hide()
			arenaWindow:show()
		end

		onStartQueue(data)
	elseif data.action == "left_queue" then
		cancelQueue(true, true)
	elseif data.action == "waiting_for_players" then
		displayWaitingForPlayersWindow(data)
	elseif data.action == "close" then
		close()
	end
end

function sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Arena, g_game.serializeTable(data))
	end
end

function displayWaitingForPlayersWindow(data)
	local window = waitingForPlayersWindow

	window:show()
end

function displayConfirmWindow(data)
	local window = arenaConfirmWindow
	local timer = window.content.timer

	window:show()
	window.content.matchTypeLabel:setText(string.format("%s (%s)", arenaModeToName[data.arenaMode], arenaTypeToName[data.arenaType]))

	function window.onEscape()
		confirmArenaEntry(data.matchId, false)
		close()
	end

	function window.content.confirmButton.onClick()
		confirmArenaEntry(data.matchId, true)
		close()
	end

	timer.endTime = data.pendingSince * 1000 + data.timeout

	if timer.event then
		removeEvent(timer.event)
	end

	timer.event = cycleEvent(function()
		local percent = (timer.endTime - g_clock.realMillis()) / data.timeout * 100

		if percent <= 0 then
			confirmArenaEntry(data.matchId, false)
			removeEvent(timer.event)

			timer.event = nil

			close()
			window.content.timer.progress:setPercent(100)
		end

		timer.progress:setPercent(percent)
	end, 100)
end

function hideConfirmWindow()
	local window = arenaConfirmWindow
	local timer = window.content.timer

	if timer.event then
		removeEvent(timer.event)

		timer.event = nil
	end

	arenaConfirmWindow:hide()
	cancelQueue(true, true)
	close()
end

function updateStats(data)
	if currentArenaTypeWidget then
		local stats = currentArenaTypeWidget:recursiveGetChildById("stats")

		stats:setColoredText(GetHighlightedText(string.format("{%i, #50e639} - {%i, #c74242}", data.stats.wins, data.stats.loses)), "white")
	end

	if data.queue then
		onStartQueue(data)
	end
end

function sortScoreboardFunc(a, b)
	if scoreboardSortASC then
		return a[scoreboardSortMode] > b[scoreboardSortMode] or a[scoreboardSortMode] == b[scoreboardSortMode] and a.name < b.name
	else
		return a[scoreboardSortMode] < b[scoreboardSortMode] or a[scoreboardSortMode] == b[scoreboardSortMode] and a.name < b.name
	end
end

function updateScoreboard(data)
	if not data or not data.players then
		return
	end

	arenaScoreboardTable:destroyChildren()
	table.sort(data.players, sortScoreboardFunc)
	arenaScoreboardWindow:setHeight(230 + #data.players * 35)

	local isWinner = false

	for _, player in ipairs(data.players) do
		local row = g_ui.createWidget("ArenaScoreboardTeamRow", arenaScoreboardTable)
		local scoreInfo = row:recursiveGetChildById("scoreInfo")
		local teamColor = row:recursiveGetChildById("teamColor")
		local playerName = row:recursiveGetChildById("playerName")
		local damageDealt = row:recursiveGetChildById("damageDealt")
		local damageReceived = row:recursiveGetChildById("damageReceived")
		local healDealt = row:recursiveGetChildById("healDealt")
		local healReceived = row:recursiveGetChildById("healReceived")
		local winner = player.teamId == data.teamWinner

		if player.name == g_game.getLocalPlayer():getName() then
			isWinner = winner
		end

		scoreInfo:setOn(winner)
		teamColor:setOn(player.teamId == 1)
		playerName:setText(player.name)
		damageDealt:setText(player.damageDealt)
		damageReceived:setText(player.damageReceived)
		healDealt:setText(player.healingDealt)
		healReceived:setText(player.healingReceived)
	end

	arenaScoreboardBattleStatus:setOn(isWinner)

	scoreboardData = data

	arenaScoreboardWindow:show()
end

function setScoreboardSortMode(widget)
	local mode = widget.sortBy

	if mode == scoreboardSortMode then
		scoreboardSortASC = not scoreboardSortASC
	else
		scoreboardSortASC = false
		scoreboardSortMode = mode
	end

	for _, headerColumn in ipairs(scoreboardHeadersColumns) do
		headerColumn:setChecked(headerColumn.sortBy == mode)
	end

	updateScoreboard(scoreboardData)
end

function leaveArena()
	sendOpcode({
		action = "arena_leave"
	})
	arenaScoreboardWindow:hide()
end

function onArenaModeChange(value)
	if value then
		modules.game_minimap.hide()
	else
		modules.game_minimap.show()
	end

	modules.game_questlog.toggleQuestTracker(not value)
end

-- chunkname: @/modules/game_thingstats/thingstats.lua

local isReceivingStats, thingInformationWindow, textInfo, playerName, creatureId

function init()
	g_ui.importStyle("thingstats")
	ProtocolGame.registerExtendedOpcode(ExtendedIds.ThingCheckInformation, onExtendedOpcode)

	thingInformationWindow = g_ui.createWidget("ThingInformationWindow", modules.game_interface.getRootPanel())
	textInfo = thingInformationWindow:recursiveGetChildById("text")
	playerName = thingInformationWindow:recursiveGetChildById("playerName")
	creatureId = thingInformationWindow:recursiveGetChildById("creatureId")

	g_keyboard.bindKeyDown("Ctrl+Alt+1", toggle)

	if g_game.isOnline() then
		requestStats()
	end

	connect(g_game, {
		onGameEnd = close
	})
end

function terminate()
	thingInformationWindow:destroy()
	cancelStats()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.ThingCheckInformation)
	disconnect(g_game, {
		onGameEnd = close
	})
	g_keyboard.unbindKeyDown("Ctrl+Alt+1")
end

function toggle()
	local localPlayer = g_game.getLocalPlayer()

	if not localPlayer or not localPlayer:isGamemaster() then
		return
	end

	if thingInformationWindow:isVisible() then
		hide()
	else
		show()
	end
end

function show()
	requestStats()
	thingInformationWindow:show()
end

function hide()
	thingInformationWindow:hide()
	cancelStats()
end

function close()
	hide()
end

function onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.ThingCheckInformation or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "stats" then
		onReceiveStats(data.data)
	elseif data.action == "stopped" then
		onReceiveStatsStopped()
	elseif data.action == "clean" then
		onCleanCreature()
	end
end

function sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.ThingCheckInformation, g_game.serializeTable(data))
	end
end

function requestStats()
	local localPlayer = g_game.getLocalPlayer()

	if not localPlayer or not localPlayer:isGamemaster() then
		return
	end

	textInfo:setText()

	local cid = creatureId:getText()
	local name = playerName:getText()
	local attacking = g_game.getAttackingCreature()

	if attacking and cid == "" then
		cid = attacking:getId()

		creatureId:setText(cid)
	end

	if name == "" and cid == "" then
		name = localPlayer:getName()

		playerName:setText(name)
	end

	sendOpcode({
		action = "request_stats",
		data = {
			creatureId = cid,
			playerName = name ~= "" and name or nil
		}
	})
end

function cancelStats()
	if isReceivingStats then
		sendOpcode({
			action = "cancel_stats"
		})
	end
end

function onReceiveStats(info)
	isReceivingStats = true

	textInfo:setText(info.text)
end

function onReceiveStatsStopped()
	isReceivingStats = false

	textInfo:setText()
end

function onCleanCreature()
	local cid = creatureId:getText()
	local name = playerName:getText()

	if name ~= "" then
		playerName:setText()
	elseif cid ~= "" then
		creatureId:setText()
	end

	textInfo:setText()
end

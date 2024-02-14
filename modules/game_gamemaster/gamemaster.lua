-- chunkname: @/modules/game_gamemaster/gamemaster.lua

local goUp, goDown, goTemple, binded

function init()
	if g_game.isOnline() then
		local localPlayer = g_game.getLocalPlayer()

		onGamemasterChange(localPlayer, localPlayer:isGamemaster())
	end

	connect(LocalPlayer, {
		onGamemasterChange = onGamemasterChange
	})
end

function terminate()
	disconnect(LocalPlayer, {
		onGamemasterChange = onGamemasterChange
	})
	unbindHotkey()
end

function bindHotkey()
	if binded then
		return
	end

	g_keyboard.bindKeyDown("PageUp", goUp)
	g_keyboard.bindKeyDown("PageDown", goDown)
	g_keyboard.bindKeyDown("Home", goTemple)

	binded = true
end

function unbindHotkey()
	if not binded then
		return
	end

	g_keyboard.unbindKeyDown("PageUp", goUp)
	g_keyboard.unbindKeyDown("PageDown", goDown)
	g_keyboard.unbindKeyDown("Home", goTemple)

	binded = false
end

function onGamemasterChange(player, gamemaster)
	if gamemaster then
		bindHotkey()
	else
		unbindHotkey()
	end
end

function goUp()
	g_game.talk("/up")
end

function goDown()
	g_game.talk("/down")
end

function goTemple()
	g_game.talk("/t")
end

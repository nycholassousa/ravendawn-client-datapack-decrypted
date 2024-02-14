-- chunkname: @/modules/game_mapview/mapview.lua

g_mapView = {}

if not g_mapViewData then
	g_mapViewData = {}
end

local function onManageRequest(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.MapViewManager then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "manageShader" then
		if data.subAction == "apply" then
			if not data.name or not type(data.name) == "string" then
				print("[MapView] > Unable to apply shader")

				return
			end

			g_mapView.shader.apply(data.name)
		elseif data.subAction == "remove" then
			g_mapView.shader.remove()
		end
	elseif data.action == "manageCamera" then
		if data.subAction == "showPos" then
			local pos = data.pos

			if not pos or type(pos) ~= "table" then
				print("[MapView] > Invalid position to be shown")

				return
			end

			if not pos.x or not pos.y or not pos.z then
				print("[MapView] > Invalid position format")

				return
			end

			local timerInMilliseconds

			if data.timer and tonumber(data.timer) then
				timerInMilliseconds = data.timer
			end

			g_mapView.camera.showPos(pos, timerInMilliseconds, data.customParams)
		elseif data.subAction == "followCreature" then
			local cid = data.cid

			if not cid or type(cid) ~= "number" then
				print("[MapView] > Invalid creature id")

				return
			end

			g_mapView.camera.followCreature(cid)
		elseif data.subAction == "screenFadeIn" then
			local duration = data.duration

			if not duration or type(duration) ~= "number" then
				print("[MapView] > Invalid screen fade duration")

				return
			end

			g_mapView.camera.screenFadeIn(duration)
		elseif data.subAction == "screenFadeOut" then
			local duration = data.duration

			if not duration or type(duration) ~= "number" then
				print("[MapView] > Invalid screen fade duration")

				return
			end

			g_mapView.camera.screenFadeOut(duration)
		elseif data.subAction == "screenFade" then
			local fadeInDuration = data.fadeInDuration
			local fadeOutDuration = data.fadeOutDuration
			local intervalDuration = data.intervalDuration

			if not fadeInDuration or type(fadeInDuration) ~= "number" then
				print("[MapView] > Invalid screen fade duration")

				return
			end

			if not fadeOutDuration or type(fadeOutDuration) ~= "number" then
				print("[MapView] > Invalid screen fade duration")

				return
			end

			if not intervalDuration or type(intervalDuration) ~= "number" then
				print("[MapView] > Invalid screen fade duration")

				return
			end

			g_mapView.camera.screenFade(fadeInDuration, fadeOutDuration, intervalDuration)
		elseif data.subAction == "abortTransitionEffect" then
			g_mapView.camera.followCreature(g_game.getLocalPlayer():getId())
			g_mapView.camera.cancelFade()
		elseif data.subAction == "screenMessage" then
			modules.game_interface.showCenterLabel(data.text, data.delay)
		elseif data.subAction == "screenShader" then
			modules.game_interface.getMapPanel():setShader(data.shader)
		elseif data.subAction == "removeScreenShader" then
			modules.game_interface.onShaderChange({
				shader = modules.game_interface.cachedShader
			}, true)
		elseif data.subAction == "countdown" then
			modules.game_interface.showArenaCountdown(data.count)
		elseif data.subAction == "video" then
			g_game.setForceCutsceneMode(true)

			local fadePanel = modules.game_interface.gameFadePanel

			fadePanel:setOpacity(1)
			fadePanel:show()
			fadePanel:setPhantom(false)

			local panel = modules.game_interface.getRootPanel().overlay

			panel:setImageSource(string.format("/videos/%s.mp4", data.clientFileName))

			if data.clientFileName == "animated_trailer" then
				local locale = EnterGame.getLocale(true)

				if locale == "pt-BR" then
					g_sound.play(665737983)
				else
					g_sound.play(1430882199)
				end
			end

			panel:setImageAnimationRepeated(false)
			panel:setImagePlaying(true)
			panel:setPhantom(false)
			panel:show()
			panel:raise()
		end
	elseif data.action == "manageConfig" then
		if data.subAction == "applyDarkness" then
			local percent = data.percent

			if not percent or type(percent) ~= "number" then
				percent = 0
			end

			g_mapView.config.applyDarkness(percent)
		elseif data.subAction == "removeDarkness" then
			g_mapView.config.removeDarkness()
		elseif data.subAction == "setMinimapPlace" then
			g_mapView.config.setMinimapPlace(data.place, data.customAction)
		end
	end
end

function init()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.MapViewManager, onManageRequest)
	connect(g_game, {
		onGameStart = g_mapView.onGameStart,
		onGameEnd = g_mapView.onGameEnd,
		onCutsceneModeChange = g_mapView.onCutsceneModeChange,
		onPlayingVideoFinished = g_mapView.onPlayingVideoFinished
	})
end

function terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.MapViewManager)
	disconnect(g_game, {
		onGameStart = g_mapView.onGameStart,
		onGameEnd = g_mapView.onGameEnd,
		onCutsceneModeChange = g_mapView.onCutsceneModeChange,
		onPlayingVideoFinished = g_mapView.onPlayingVideoFinished
	})
end

function g_mapView.onGameEnd()
	g_mapView.config.removeDarkness(true)
	g_mapView.onPlayingVideoFinished(true)
	g_game.setForceCutsceneMode(false)
end

g_mapView.camera = {
	events = {}
}

function g_mapView.camera.showPos(pos, ms, params)
	local mapPanel = modules.game_interface.gameMapPanel
	local followingCreature = mapPanel:getFollowingCreature()
	local cid = followingCreature:getId()
	local params = params or {
		intervalDuration = 500,
		fadeOutDuration = 500,
		fadeInDuration = 500
	}

	if ms then
		g_mapView.camera.screenFade(params.fadeInDuration, params.fadeOutDuration, params.intervalDuration)

		g_mapView.camera.events.start = scheduleEvent(function()
			mapPanel:setCameraPosition(pos)

			g_mapView.camera.events.start = nil
		end, params.fadeInDuration + params.intervalDuration / 2)
		g_mapView.camera.events.middle = scheduleEvent(function()
			g_mapView.camera.screenFade(params.fadeInDuration, params.fadeOutDuration, params.intervalDuration)

			g_mapView.camera.events.middle = nil
		end, params.fadeInDuration + params.intervalDuration + params.fadeOutDuration + ms)
		g_mapView.camera.events.final = scheduleEvent(function()
			local creature = g_map.getCreatureById(cid)

			if creature then
				mapPanel:followCreature(creature)
			end

			g_mapView.camera.events.final = nil
		end, 2 * params.fadeInDuration + params.intervalDuration + params.fadeOutDuration + ms)
	else
		mapPanel:setCameraPosition(pos)
	end
end

function g_mapView.camera.followCreature(cid)
	local mapPanel = modules.game_interface.gameMapPanel
	local creature = g_map.getCreatureById(cid)

	if creature then
		mapPanel:followCreature(creature)
	end
end

function g_mapView.camera.screenFadeIn(duration)
	modules.game_interface.showFadePanel(duration)
end

function g_mapView.camera.screenFadeOut(duration)
	modules.game_interface.hideFadePanel(duration)
end

function g_mapView.camera.screenFade(fadeInDuration, fadeOutDuration, intervalDuration)
	modules.game_interface.onScreenFade(fadeInDuration, fadeOutDuration, intervalDuration)
end

function g_mapView.camera.cancelFade()
	for index, info in pairs(g_mapView.camera.events) do
		removeEvent(info)

		g_mapView.camera.events[index] = nil
	end

	modules.game_interface.cancelFade()
	g_mapView.camera.screenFadeOut(500)
end

g_mapView.shader = {}

function g_mapView.shader.apply(name)
	local mapPanel = modules.game_interface.gameMapPanel

	mapPanel:setShader(name)
end

function g_mapView.shader.remove()
	local mapPanel = modules.game_interface.gameMapPanel

	mapPanel:setShader("map_default")
end

g_mapView.config = {}

function g_mapView.config.applyDarkness(percent)
	if g_mapViewData.darkness then
		print("[MapView] > Darkness was already applied")

		return
	end

	local darkness = {
		ambientLight = modules.client_options.getOption("ambientLight"),
		enableLights = modules.client_options.getOption("enableLights")
	}

	modules.client_options.setOption("ambientLight", percent, nil, true)
	modules.client_options.setOption("enableLights", true, nil, true)

	g_mapViewData.darkness = darkness
end

function g_mapView.config.removeDarkness(suppressWarnings)
	if not g_mapViewData.darkness then
		if not suppressWarnings then
			print("[MapView] > There is no darkness effect to be removed")
		end

		return
	end

	local ambientLight = g_mapViewData.darkness.ambientLight
	local enableLights = g_mapViewData.darkness.enableLights

	g_mapViewData.darkness = nil

	modules.client_options.setOption("ambientLight", ambientLight, nil, true)
	modules.client_options.setOption("enableLights", enableLights, nil, true)
end

function g_mapView.config.callbackOnSetOption(key, value)
	if g_mapViewData.darkness then
		return false
	end

	return true
end

function g_mapView.config.setMinimapPlace(place, action)
	local player = g_game.getLocalPlayer()
	local minimap = modules.game_minimap.minimapWidget
	local minimapWindow = modules.game_minimap.minimapWindow
	local worldName = "Unknown"

	if not place then
		minimapWindow:recursiveGetChildById("title"):hide()
		minimap:setMarginTop(0)
		g_window.setTitle(tr("%s - %s [%s]", APP_TITLE, player:getName(), worldName))
	end

	if type(place) == "string" then
		local titleWidget = minimapWindow:recursiveGetChildById("title")

		titleWidget:setText(place)
		titleWidget:show()

		if string.len(place) > 22 then
			titleWidget:setFont("poppins-semibold-12")
			minimap:setMarginTop(26)
		else
			titleWidget:setFont("poppins-semibold-14")
			minimap:setMarginTop(29)
		end

		g_window.setTitle(tr("%s - %s [%s] - %s", APP_TITLE, player:getName(), worldName, place))

		local func

		if action and type(action) == "table" then
			local actionType = action.type

			if actionType == "link" then
				titleWidget.url = action.url

				function titleWidget.onClick(widget)
					g_platform.openUrl(widget.url)
				end
			elseif actionType == "talkaction" then
				titleWidget.words = action.words

				function titleWidget.onClick(widget)
					g_game.talk(widget.words)
				end
			end
		end
	end
end

function g_mapView.onCutsceneModeChange(value)
	modules.game_questlog.toggleQuestTracker(not value)

	if value then
		modules.game_interface.releaseHouseMode()
	end
end

function g_mapView.onPlayingVideoFinished(dontFade)
	if not dontFade then
		g_game.setForceCutsceneMode(false)
		modules.game_interface.hideFadePanel(5000)
	end

	g_sound.play(3555716837)

	local panel = modules.game_interface.getRootPanel().overlay

	panel:setPhantom(true)
	panel:hide()

	local oldSource = panel:getImageSource()

	panel:setImageSource("")
	addEvent(function()
		g_textures.unload(oldSource)
	end)

	return true
end

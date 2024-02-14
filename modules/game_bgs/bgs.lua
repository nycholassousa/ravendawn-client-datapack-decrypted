-- chunkname: @/modules/game_bgs/bgs.lua

local onWorldLightChange

function init()
	if BGS_DEMO then
		connect(g_game, {
			onWorldLightChange = onWorldLightChange,
			onMapKnown = onWorldLightChange
		})
	end
end

function terminate()
	if BGS_DEMO then
		disconnect(g_game, {
			onWorldLightChange = onWorldLightChange,
			onMapKnown = onWorldLightChange
		})
	end
end

function onWorldLightChange(intensity, color)
	g_map.setLightData(40, 215)

	return true
end

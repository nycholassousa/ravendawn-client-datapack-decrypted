-- chunkname: @/modules/game_things/things.lua

filename = nil
loaded = false

local hud = {
	"/things/otml/hud.otml"
}
local otmls = {
	"/things/otml/bottom_effects.otml",
	"/things/otml/effects.otml",
	"/things/otml/ground.otml",
	"/things/otml/house.otml",
	"/things/otml/items.otml",
	"/things/otml/main_hands.otml",
	"/things/otml/missiles.otml",
	"/things/otml/npcs.otml",
	"/things/otml/off_hands.otml",
	"/things/otml/outfit.otml",
	"/things/otml/ships.otml",
	"/things/otml/sound.otml",
	"/things/otml/water.otml",
	"/things/otml/weapons.otml",
	"/things/otml/wheels.otml",
	"/things/otml/wagons.otml",
	"/things/otml/farm.otml",
	"/things/otml/moa.otml",
	"/things/otml/monsters/demons.otml",
	"/things/otml/monsters/dragons.otml",
	"/things/otml/monsters/dwarves.otml",
	"/things/otml/monsters/elves.otml",
	"/things/otml/monsters/foulotus.otml",
	"/things/otml/monsters/goblins.otml",
	"/things/otml/monsters/bears.otml",
	"/things/otml/monsters/foxes.otml",
	"/things/otml/monsters/mushrooms.otml",
	"/things/otml/monsters/spider.otml",
	"/things/otml/monsters/toads.otml",
	"/things/otml/monsters/warhogs.otml",
	"/things/otml/monsters/wolves.otml",
	"/things/otml/monsters/trunks.otml",
	"/things/otml/monsters/pummeldillos.otml",
	"/things/otml/monsters/misc.otml",
	"/things/otml/monsters/trolls.otml",
	"/things/otml/monsters/sharks.otml",
	"/things/otml/monsters/orcs.otml",
	"/things/otml/monsters/rats.otml",
	"/things/otml/monsters/hookmasks.otml",
	"/things/otml/monsters/skeletons.otml",
	"/things/otml/monsters/ghosts.otml",
	"/things/otml/monsters/boars.otml",
	"/things/otml/monsters/frolls.otml",
	"/things/otml/monsters/yetis.otml",
	"/things/otml/monsters/lizardmens.otml",
	"/things/otml/monsters/wurms.otml",
	"/things/otml/monsters/minotaurs.otml",
	"/things/otml/monsters/bosses.otml",
	"/things/otml/monsters/kaimans.otml",
	"/things/otml/monsters/zorians.otml",
	"/things/otml/monsters/sporewalkers.otml",
	"/things/otml/monsters/sea.otml",
	"/things/otml/monsters/turtles.otml",
	"/things/otml/monsters/gazers.otml",
	"/things/otml/monsters/drakes.otml",
	"/things/otml/monsters/vampires.otml",
	"/things/otml/monsters/pirates.otml",
	"/things/otml/monsters/djinns.otml",
	"/things/otml/monsters/crowmaidens.otml",
	"/things/otml/monsters/morningstars.otml",
	"/things/otml/monsters/jackals.otml",
	"/things/otml/monsters/stonelings.otml",
	"/things/otml/npcs/ravenguards.otml",
	"/things/otml/npcs/tradeposts.otml",
	"/things/otml/npcs/general.otml",
	"/things/otml/npcs/bards.otml",
	"/things/otml/attack_animations.otml",
	"/things/otml/channeling_animations.otml"
}

function setFileName(name)
	filename = name
end

function isLoaded()
	return loaded
end

function reloadOtmls()
	for i = 1, #otmls do
		g_things.loadOtml(otmls[i])
	end
end

function reloadHud()
	for i = 1, #hud do
		g_hud.loadOtml(hud[i])
	end

	local localPlayer = g_game.getLocalPlayer()

	if localPlayer then
		local spectators = g_map.getSpectators(localPlayer:getPosition(), true)

		for _, creature in pairs(spectators) do
			creature:setName(creature:getName())
			creature:setHealthPercent(creature:getHealthPercent())
			creature:setManaPercent(creature:getManaPercent())
			creature:setOutfit(creature:getOutfit())
		end
	end
end

function reloadDatSpr()
	local datPath = resolvepath("/things/Ravendawn")
	local errorMessage = ""

	if not g_things.loadDat(datPath) then
		errorMessage = errorMessage .. tr("Unable to load dat file, please place a valid dat in '%s'", datPath) .. "\n"
	end

	if not g_sprites.loadSpr(datPath) then
		errorMessage = errorMessage .. tr("Unable to load spr file, please place a valid spr in '%s'", datPath) .. "\n"
	end

	if #errorMessage > 0 then
		print(errorMessage)
	else
		reloadOtmls()
		print("Successfully reload DAT & SPR")
	end
end

function load()
	local version = g_game.getClientVersion()
	local datPath

	if filename then
		datPath = resolvepath("/things/" .. filename)
	else
		datPath = resolvepath("/things/Ravendawn")
	end

	local errorMessage = ""

	if not g_things.isDatLoaded() and not g_things.loadDat(datPath) then
		errorMessage = errorMessage .. tr("Unable to load dat file, please place a valid dat in '%s'", datPath) .. "\n"
	end

	if not g_sprites.isLoaded() and not g_sprites.loadSpr(datPath) then
		errorMessage = errorMessage .. tr("Unable to load spr file, please place a valid spr in '%s'", datPath) .. "\n"
	end

	loaded = #errorMessage == 0

	if loaded then
		if #otmls > 0 then
			for i = 1, #otmls do
				g_things.loadOtml(otmls[i])
			end
		end

		if #hud > 0 then
			for i = 1, #hud do
				g_hud.loadOtml(hud[i])
			end
		end
	end

	if #errorMessage > 0 then
		local messageBox = displayErrorBox(tr("Error"), errorMessage)

		addEvent(function()
			messageBox:raise()
			messageBox:focus()
		end)
		g_game.setClientVersion(0)
		g_game.setProtocolVersion(0)
	end
end

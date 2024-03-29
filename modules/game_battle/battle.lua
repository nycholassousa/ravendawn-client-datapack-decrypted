﻿-- chunkname: @/modules/game_battle/battle.lua

enemyWidget = nil
friendlyWidget = nil
updateEvent = nil
hoveredCreature = nil
newHoveredCreature = nil
prevCreature = nil
hoveredHealingCreature = nil
newHoveredHealingCreature = nil
prevHealingCreature = nil
lastHealedCreature = nil
lastKeyAction = 0
creatures = {}

local lastAttackedCreatureIndex = 0
local targetSet = {}
local lastHealCreatureIndex = 0
local friendSet = {}

function init()
	enemyWidget = g_ui.createWidget("UIWidget")
	friendlyWidget = g_ui.createWidget("UIWidget")

	updateBattleList()
	connect(LocalPlayer, {
		onPositionChange = onPlayerPositionChange,
		onEffectiveLevelChange = onEffectiveLevelChange
	})
	connect(Creature, {
		onAppear = updateSquare,
		onDisappear = updateSquare
	})
	connect(g_game, {
		onAttackingCreatureChange = updateSquare,
		onFollowingCreatureChange = updateSquare,
		onHealingCreatureChange = updateHealingSquare,
		onAttackCreature = onAttackCreature
	})
	g_keyboard.bindKeyDown("Tab", function()
		attackNextTarget()
	end)
	g_keyboard.bindKeyDown("Ctrl+Tab", function()
		healNextTarget()
	end)
	g_keyboard.bindKeyDown("Shift+Tab", function()
		attackNextPlayer()
	end)
	g_keyboard.bindKeyUp("Space", function()
		healSwitchTarget()
	end)
	g_keyboard.bindKeyDown("Space", function()
		healSwitchTarget()
	end)
end

function terminate()
	g_keyboard.unbindKeyDown("Tab")
	g_keyboard.unbindKeyDown("Ctrl+Tab")
	g_keyboard.unbindKeyDown("Shift+Tab")
	g_keyboard.unbindKeyUp("Space", function()
		healSwitchTarget()
	end)
	g_keyboard.unbindKeyDown("Space", function()
		healSwitchTarget()
	end)

	if enemyWidget then
		enemyWidget:destroy()

		enemyWidget = nil
	end

	if friendlyWidget then
		friendlyWidget:destroy()

		friendlyWidget = nil
	end

	disconnect(LocalPlayer, {
		onPositionChange = onPlayerPositionChange,
		onEffectiveLevelChange = onEffectiveLevelChange
	})
	disconnect(Creature, {
		onAppear = updateSquare,
		onDisappear = updateSquare
	})
	disconnect(g_game, {
		onAttackingCreatureChange = updateSquare,
		onFollowingCreatureChange = updateSquare,
		onHealingCreatureChange = updateHealingSquare,
		onAttackCreature = onAttackCreature
	})
	removeEvent(updateEvent)

	lastHealedCreature = nil
end

function updateBattleList()
	removeEvent(updateEvent)

	updateEvent = scheduleEvent(updateBattleList, 100)

	checkCreatures()
end

function sortCreatures(a, b)
	local player = g_game.getLocalPlayer()
	local playerPos = player:getPosition()
	local distA = Position.distance(playerPos, a:getPosition())
	local distB = Position.distance(playerPos, b:getPosition())

	if distA == distB then
		return a:getId() < b:getId()
	else
		return distA < distB
	end
end

function checkCreatures()
	if not g_game.isOnline() then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local dimension = modules.game_interface.getMapPanel():getVisibleDimension()

	creatures = g_map.getSpectatorsInRangeEx(player:getPosition(), false, math.floor(dimension.width / 2), math.floor(dimension.width / 2), math.floor(dimension.height / 2), math.floor(dimension.height / 2))

	table.sort(creatures, sortCreatures)
	updateSquare()
	updateHealingSquare()
end

local function getDistanceBetween(p1, p2)
	if not p1 or not p2 then
		return 100
	end

	return p1.z ~= p2.z and 15 or 0 + math.max(math.abs(p1.x - p2.x), math.abs(p1.y - p2.y))
end

function onPlayerPositionChange(creature, newPos, oldPos)
	addEvent(checkCreatures)
end

function onEffectiveLevelChange()
	for _, creature in ipairs(creatures) do
		if creature:isMonster() then
			creature:updateNameColor()
		end
	end
end

function updateSquare()
	local following = g_game.getFollowingCreature()
	local attacking = g_game.getAttackingCreature()

	if newHoveredCreature == nil then
		if hoveredCreature ~= nil then
			hoveredCreature:setEnemyWidget(nil)

			hoveredCreature = nil
		end
	else
		if hoveredCreature ~= nil then
			hoveredCreature:setEnemyWidget(nil)
		end

		hoveredCreature = newHoveredCreature
	end

	local creature

	if attacking then
		creature = attacking
	elseif following then
		creature = following
	end

	if prevCreature ~= creature then
		if prevCreature ~= nil then
			prevCreature:setEnemyWidget(nil)
		end

		prevCreature = creature
	end

	if not creature then
		return
	end

	updateEnemyWidget(creature, following ~= nil)
	creature:setEnemyWidget(enemyWidget)
end

function updateHealingSquare()
	local healingCreature = g_game.getHealingCreature()

	if newHoveredHealingCreature == nil then
		if hoveredHealingCreature ~= nil then
			hoveredHealingCreature:setFriendlyWidget(nil)

			hoveredHealingCreature = nil
		end
	else
		if hoveredHealingCreature ~= nil then
			hoveredHealingCreature:setFriendlyWidget(nil)
		end

		hoveredHealingCreature = newHoveredHealingCreature
	end

	local creature

	if healingCreature then
		creature = healingCreature
	end

	if prevHealingCreature ~= creature then
		if prevHealingCreature ~= nil then
			prevHealingCreature:setFriendlyWidget(nil)
		end

		prevHealingCreature = creature
	end

	if not creature then
		return
	end

	updateFriendlyWidget(creature)
	creature:setFriendlyWidget(friendlyWidget)

	lastHealedCreature = nil
end

function updateEnemyWidget(creature, following)
	local size = math.max(1, creature:getThingType():getWidth())
	local newSize = TILE_SIZE * size
	local imageColor = following and "#009700" or "#c60002"
	local imageSource = "/images/game/targetselector/white" .. newSize

	enemyWidget:setImageColor(imageColor)
	enemyWidget:setImageSource(imageSource)
end

function updateFriendlyWidget(creature)
	local size = math.max(1, math.ceil(creature:getThingType():getExactSize() / TILE_SIZE))
	local newSize = (TILE_SIZE - 8) * size
	local imageSource = "/images/game/targetselector/white" .. size * TILE_SIZE

	friendlyWidget:setImageColor("#007082")
	friendlyWidget:setImageSource(imageSource)
	friendlyWidget:setSize({
		height = newSize,
		width = newSize
	})
	friendlyWidget:setImageSize({
		height = newSize,
		width = newSize
	})

	if size == 1 then
		friendlyWidget:setImageRect({
			x = 9,
			y = 11,
			height = newSize,
			width = newSize
		})
	else
		friendlyWidget:setImageRect({
			x = 8,
			y = 8,
			height = newSize,
			width = newSize
		})
	end
end

function isViableTarget(target)
	if g_game.isInCutsceneMode() then
		return false
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return false
	end

	if not tonumber(target:getId()) then
		return false
	end

	local range = modules.game_settings.getOption("quickTargetRange")

	if target:isMonster() and target ~= g_game.getAttackingCreature() and target:getType() ~= CreatureTypeWagonOwn and target:getType() ~= CreatureTypeWagonOther and target:getType() ~= CreatureTypeSummonOwn and target:getType() ~= CreatureTypeSummonOther and not target:isInvisible() and not target:isHidden() and range >= getDistanceBetween(player:getPosition(), target:getPosition()) then
		return true
	elseif target:isPlayer() then
		if target:isPartyMember() or target:getGuildId() ~= 0 and player:getGuildId() == target:getGuildId() then
			return false
		end

		local pvpMode = g_game.getPVPMode()

		if pvpMode == PvpPeaceful or pvpMode == PvpDefensive and target:getSkull() == SkullNone then
			return false
		end

		return true
	elseif target:isNpc() then
		return false
	else
		return false
	end
end

function isViableHeal(target)
	if not target or not tonumber(target:getId()) then
		return false
	end

	local range = modules.game_settings.getOption("quickTargetRange")

	if target:isMonster() or target:isNpc() then
		return false
	end

	if target:isPlayer() and target:isPartyMember() and range >= getDistanceBetween(g_game.getLocalPlayer():getPosition(), target:getPosition()) then
		return true
	end

	return false
end

function isPvpTarget(target)
	if not target or not tonumber(target:getId()) then
		return false
	end

	local range = modules.game_settings.getOption("quickTargetRange")

	if target:isMonster() or target:isNpc() then
		return false
	end

	if target:isPlayer() and not target:isLocalPlayer() and range >= getDistanceBetween(g_game.getLocalPlayer():getPosition(), target:getPosition()) then
		local pvpMode = g_game.getPVPMode()

		if pvpMode == PvpOffensive or pvpMode == PvpDefensive and target:getSkull() > SkullNone then
			return true
		end
	end

	return false
end

function attackNextTarget(force)
	if g_game.isInShip() or IsTextEditActive() then
		return
	end

	if not force and lastKeyAction > g_clock.millis() then
		return
	end

	if modules.game_chat.GameChat:isEnabled() or not modules.game_settings.getOption("quickTarget") then
		return true
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return false
	end

	if #creatures == 0 then
		return false
	end

	lastKeyAction = g_clock.millis() + 50

	for i = 1, #creatures do
		local index = (lastAttackedCreatureIndex + i) % #creatures + 1
		local creature = creatures[index]

		if isViableTarget(creature) and creature ~= player and not targetSet[creature:getId()] then
			targetSet[creature:getId()] = true

			g_game.attack(creature)

			lastAttackedCreatureIndex = index

			return true
		end
	end

	targetSet = {}
	lastAttackedCreatureIndex = 0

	if not force then
		return attackNextTarget(true)
	end

	return false
end

function healNextTarget(force)
	if g_game.isInShip() or IsTextEditActive() then
		return
	end

	if not force and lastKeyAction > g_clock.millis() then
		return
	end

	if modules.game_chat.GameChat:isEnabled() or not modules.game_settings.getOption("quickTarget") then
		return true
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return false
	end

	if #creatures == 0 then
		return false
	end

	lastKeyAction = g_clock.millis() + 50

	for i = 1, #creatures do
		local index = (lastHealCreatureIndex + i) % #creatures + 1
		local creature = creatures[index]

		if isViableHeal(creature) and creature ~= player and not friendSet[creature:getId()] then
			friendSet[creature:getId()] = true

			g_game.heal(creature)

			lastHealCreatureIndex = index

			return true
		end
	end

	friendSet = {}
	lastHealCreatureIndex = 0

	if not force then
		return healNextTarget(true)
	end

	return false
end

function healSwitchTarget()
	if IsTextEditActive() then
		return
	end

	if lastKeyAction > g_clock.millis() then
		return
	end

	local healTarget = g_game.getHealingCreature()

	if not healTarget and lastHealedCreature then
		g_game.heal(lastHealedCreature)
	elseif healTarget then
		lastHealedCreature = healTarget

		g_game.heal()
	end

	lastKeyAction = g_clock.millis() + 50
end

function selectHealTarget(widget, name)
	for _, creature in ipairs(creatures) do
		if creature:getName() == name then
			g_game.heal(creature)

			return
		end
	end
end

function attackNextPlayer(followUp)
	if lastKeyAction > g_clock.millis() then
		return
	end

	if modules.game_chat.GameChat:isEnabled() or IsTextEditActive() or not modules.game_settings.getOption("quickTarget") then
		return true
	end

	if g_game.isInShip() then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player or table.empty(creatures) then
		return
	end

	local playerPos = player:getPosition()

	table.sort(creatures, function(a, b)
		return getDistanceBetween(playerPos, a:getPosition()) < getDistanceBetween(playerPos, b:getPosition())
	end)

	if not g_game.getAttackingCreature() then
		lastAttackedCreatureIndex = 0
	end

	repeat
		lastAttackedCreatureIndex = lastAttackedCreatureIndex + 1
	until lastAttackedCreatureIndex > #creatures or isPvpTarget(creatures[lastAttackedCreatureIndex])

	if lastAttackedCreatureIndex > #creatures then
		if not followUp then
			lastAttackedCreatureIndex = 0

			attackNextPlayer(true)

			return
		end

		lastAttackedCreatureIndex = 1
	end

	if g_game.getAttackingCreature() ~= creatures[lastAttackedCreatureIndex] and isPvpTarget(creatures[lastAttackedCreatureIndex]) then
		g_game.attack(creatures[lastAttackedCreatureIndex])
	end

	lastKeyAction = g_clock.millis() + 50
end

function onAttackCreature(creature)
	if g_game.isInShip() then
		return false
	end

	if creature and creature:isPlayer() then
		local pvpMode = g_game.getPVPMode()

		if pvpMode == PvpPeaceful or pvpMode == PvpDefensive and creature:getSkull() == SkullNone then
			return false
		end
	end

	return true
end

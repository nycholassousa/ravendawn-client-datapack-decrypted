-- chunkname: @/modules/game_highlight_sparkles/highlight_sparkles.lua

if not GameHighlightSparkles then
	GameHighlightSparkles = {
		positionsData = {},
		questToData = {},
		mapRewardsPositionsCache = {}
	}
end

function GameHighlightSparkles:loadConfig()
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

function GameHighlightSparkles:init()
	self:loadConfig()

	for _, key in ipairs({
		"actionIds",
		"uniqueIds"
	}) do
		for id, data in pairs(cfg[key]) do
			if data.quest then
				if not GameHighlightSparkles.questToData[data.quest] then
					GameHighlightSparkles.questToData[data.quest] = {
						actionIds = {},
						uniqueIds = {}
					}
				end

				GameHighlightSparkles.questToData[data.quest][key][id] = true
			end
		end
	end

	connect(Tile, {
		onCheckHighlight = self.onCheckHighlight,
		onHighlightableClean = self.onHighlightableClean
	})
	connect(modules.game_questlog.GameQuestLog, {
		onQuestsUpdate = GameHighlightSparkles.onQuestsUpdate,
		onTaskUpdate = GameHighlightSparkles.onTaskUpdate
	})
	connect(g_game, {
		onGameStart = GameHighlightSparkles.online
	})
	ProtocolGame.registerExtendedOpcode(ExtendedIds.MapRewards, GameHighlightSparkles.onExtendedOpcode)
end

function GameHighlightSparkles:terminate()
	disconnect(Tile, {
		onCheckHighlight = self.onCheckHighlight,
		onHighlightableClean = self.onHighlightableClean
	})
	disconnect(modules.game_questlog.GameQuestLog, {
		onQuestsUpdate = GameHighlightSparkles.onQuestsUpdate,
		onTaskUpdate = GameHighlightSparkles.onTaskUpdate
	})
	disconnect(g_game, {
		onGameStart = GameHighlightSparkles.online
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.MapRewards)
end

function GameHighlightSparkles.online()
	GameHighlightSparkles.positionsData = {}
	GameHighlightSparkles.mapRewardsPositionsCache = {}
end

function GameHighlightSparkles.getPositionData(pos)
	if not pos then
		return nil
	end

	local index = Position.generateHash(pos)

	if not GameHighlightSparkles.positionsData[index] then
		local tile = g_map.getTile(pos)

		if not tile then
			return nil
		end

		tile:setHighlightable(true)

		GameHighlightSparkles.positionsData[index] = {
			hasHighlight = false,
			position = pos,
			currentHightlight = {},
			actionIds = {},
			uniqueIds = {}
		}
	end

	return GameHighlightSparkles.positionsData[index]
end

function GameHighlightSparkles.removePositionData(pos)
	if not pos then
		return
	end

	local index = Position.generateHash(pos)

	if GameHighlightSparkles.positionsData[index] then
		GameHighlightSparkles.positionsData[index] = nil
	end
end

function GameHighlightSparkles.onHighlightableClean(tile)
	local pos = tile:getPosition()

	if not pos then
		return
	end

	GameHighlightSparkles.removePositionData(pos)
end

function GameHighlightSparkles.onCheckHighlight(tile, item, removed, hasEffect)
	local pos = tile:getPosition()

	if not pos then
		return
	end

	local actionId = item:getActionId()
	local uniqueId = item:getUniqueId()

	if not cfg.actionIds[actionId] and not cfg.uniqueIds[uniqueId] then
		if not removed then
			item:setCheckHighlight(false)
		end

		return
	end

	local positionData = GameHighlightSparkles.getPositionData(pos)

	if not positionData then
		return
	end

	if not removed then
		GameHighlightSparkles.addToPositionData(positionData, actionId, uniqueId, hasEffect)
	else
		GameHighlightSparkles.removeFromPositionData(positionData, actionId, uniqueId)
	end
end

function GameHighlightSparkles.addToPositionData(positionData, actionId, uniqueId, hasEffect)
	if not positionData then
		return
	end

	if actionId and cfg.actionIds[actionId] and not table.contains(positionData.actionIds, actionId) then
		table.insert(positionData.actionIds, actionId)
	end

	if uniqueId and cfg.uniqueIds[uniqueId] and not table.contains(positionData.uniqueIds, uniqueId) then
		table.insert(positionData.uniqueIds, uniqueId)
	end

	if not positionData.hasHighlight then
		GameHighlightSparkles.updatePositionDataHighlight(positionData)
	elseif not hasEffect then
		positionData.hasHighlight = false
		positionData.currentHightlight.actionId = nil
		positionData.currentHightlight.uniqueId = nil

		GameHighlightSparkles.updatePositionDataHighlight(positionData)
	end
end

function GameHighlightSparkles.removeFromPositionData(positionData, actionId, uniqueId)
	if not positionData then
		return
	end

	if table.contains(positionData.actionIds, actionId) then
		table.removevalue(positionData.actionIds, actionId)

		if positionData.hasHighlight and positionData.currentHightlight.actionId and positionData.currentHightlight.actionId == actionId then
			positionData.currentHightlight.actionId = nil

			GameHighlightSparkles.updatePositionDataHighlight(positionData)
		end
	end

	if table.contains(positionData.uniqueIds, uniqueId) then
		table.removevalue(positionData.uniqueIds, uniqueId)

		if positionData.hasHighlight and positionData.currentHightlight.uniqueId and positionData.currentHightlight.uniqueId == uniqueId then
			positionData.currentHightlight.uniqueId = nil

			GameHighlightSparkles.updatePositionDataHighlight(positionData)
		end
	end

	if table.empty(positionData.actionIds) and table.empty(positionData.uniqueIds) then
		local tile = g_map.getTile(positionData.position)

		if tile then
			tile:setHighlightable(false)
		end

		GameHighlightSparkles.removePositionData(positionData.position)
	end
end

function GameHighlightSparkles.onQuestsUpdate(data)
	if not data or not data.quests then
		return
	end

	scheduleEvent(GameHighlightSparkles.updateAllQuests, 1000)
end

function GameHighlightSparkles.onTaskUpdate(data)
	if not data or not data.quests then
		return
	end

	for _, quest in ipairs(data.quests) do
		GameHighlightSparkles.updateQuest(quest.name)
	end
end

function GameHighlightSparkles.updateAllQuests(name)
	if not g_game.isOnline() then
		return
	end

	for questName in pairs(GameHighlightSparkles.questToData) do
		GameHighlightSparkles.updateQuest(questName)
	end
end

function GameHighlightSparkles.updateQuest(name)
	local questData = GameHighlightSparkles.questToData[name]

	if not questData then
		return
	end

	local positionsDataToUpdate = {}

	for actionId in pairs(questData.actionIds) do
		for index, positionData in pairs(GameHighlightSparkles.positionsData) do
			if not positionsDataToUpdate[index] and table.contains(positionData.actionIds, actionId) then
				positionsDataToUpdate[index] = positionData
			end
		end
	end

	for uniqueId in pairs(questData.uniqueIds) do
		for index, positionData in pairs(GameHighlightSparkles.positionsData) do
			if not positionsDataToUpdate[index] and table.contains(positionData.uniqueIds, uniqueId) then
				positionsDataToUpdate[index] = positionData
			end
		end
	end

	for _, positionData in pairs(positionsDataToUpdate) do
		GameHighlightSparkles.updatePositionDataHighlight(positionData)
	end
end

function GameHighlightSparkles.updatePositionDataHighlight(positionData)
	if not positionData then
		return
	end

	if positionData.hasHighlight then
		if positionData.currentHightlight.actionId and GameHighlightSparkles.checkActionId(positionData.currentHightlight.actionId, positionData.position) then
			return
		end

		if positionData.currentHightlight.uniqueId and GameHighlightSparkles.checkUniqueId(positionData.currentHightlight.uniqueId, positionData.position) then
			return
		end
	end

	for _, actionId in ipairs(positionData.actionIds) do
		if GameHighlightSparkles.checkActionId(actionId, positionData.position) then
			positionData.hasHighlight = true
			positionData.currentHightlight.actionId = actionId

			local tile = g_map.getTile(positionData.position)

			if tile then
				tile:setHighlightEffect(cfg.defaultHighlightEffectId)
			else
				GameHighlightSparkles.removePositionData(positionData.position)
			end

			return
		end
	end

	for _, uniqueId in ipairs(positionData.uniqueIds) do
		if GameHighlightSparkles.checkUniqueId(uniqueId, positionData.position) then
			positionData.hasHighlight = true
			positionData.currentHightlight.uniqueId = uniqueId

			local tile = g_map.getTile(positionData.position)

			if tile then
				tile:setHighlightEffect(cfg.defaultHighlightEffectId)
			else
				GameHighlightSparkles.removePositionData(positionData.position)
			end

			return
		end
	end

	if positionData.hasHighlight then
		local tile = g_map.getTile(positionData.position)

		if not tile then
			GameHighlightSparkles.removePositionData(positionData.position)

			return
		end

		tile:removeHighlightEffect()

		positionData.hasHighlight = false
		positionData.currentHightlight.actionId = nil
		positionData.currentHightlight.uniqueId = nil
	end
end

function GameHighlightSparkles.checkActionId(actionId, pos)
	local data = cfg.actionIds[actionId]

	if not data then
		return false
	end

	return GameHighlightSparkles.checkData(data, pos)
end

function GameHighlightSparkles.checkUniqueId(uniqueId, pos)
	local data = cfg.uniqueIds[uniqueId]

	if not data then
		return false
	end

	return GameHighlightSparkles.checkData(data, pos)
end

function GameHighlightSparkles.checkData(data, pos)
	if not data then
		return false
	end

	if data.artifact then
		return GameHighlightSparkles.checkArtifact(pos)
	end

	if data.mapReward then
		return GameHighlightSparkles.checkMapReward(pos)
	end

	if not data.quest or not data.taskId then
		return false
	end

	return modules.game_questlog.GameQuestLog:isQuestTasksActive(data.quest, data.taskId)
end

function GameHighlightSparkles.checkArtifact(pos, aid, uid)
	return true
end

function GameHighlightSparkles.checkMapReward(pos)
	local posHash = Position.generateHash(pos)

	if GameHighlightSparkles.mapRewardsPositionsCache[posHash] ~= nil then
		return GameHighlightSparkles.mapRewardsPositionsCache[posHash]
	end

	GameHighlightSparkles.mapRewardsPositionsCache[posHash] = false

	GameHighlightSparkles.sendOpcode({
		action = "checkMapReward",
		position = pos
	})
end

function GameHighlightSparkles.isMapRewardActionId(actionId)
	return cfg.actionIds[actionId] and cfg.actionIds[actionId].mapReward
end

function GameHighlightSparkles.sendOpcode(data)
	local protocol = g_game.getProtocolGame()

	if protocol then
		protocol:sendExtendedOpcode(ExtendedIds.MapRewards, g_game.serializeTable(data))
	end
end

function GameHighlightSparkles.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.MapRewards then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if not data or type(data) ~= "table" then
		return
	end

	if data.action == "updateMapReward" then
		local position = data.position

		if not position then
			return
		end

		if data.hasHighlight then
			GameHighlightSparkles.mapRewardsPositionsCache[Position.generateHash(position)] = true
		else
			GameHighlightSparkles.mapRewardsPositionsCache[Position.generateHash(position)] = false
		end

		local positionData = GameHighlightSparkles.getPositionData(position)

		if positionData then
			GameHighlightSparkles.updatePositionDataHighlight(positionData)
		end
	end
end

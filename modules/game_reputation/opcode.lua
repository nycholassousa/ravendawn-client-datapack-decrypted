-- chunkname: @/modules/game_reputation/opcode.lua

GameReputation = GameReputation or {}

function GameReputation.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Reputation or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "passives" then
		GameReputation.playerPassives = data.passives
		GameReputation.playerPoints = data.exp

		GameReputation:parsePassiveTree(data)

		if data.exp then
			GameReputation:parseExperiencePoints(data.exp)
		end
	elseif data.action == "refresh_experience" then
		GameReputation.playerPoints = data.exp

		GameReputation:parseExperiencePoints(data.exp)
	end
end

function GameReputation:sendExtendedOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Reputation, g_game.serializeTable(data))
	end
end

function GameReputation:parsePassiveTree(data)
	local totalExp = data.exp.total

	self:updateRows()
end

function GameReputation:parseExperiencePoints(data)
	local allPoints = 0
	local reputationPointsTooltip = {
		header = {
			text = "This is the total amount of reputation points you have earned so far, below you can see the details:"
		},
		points = data
	}

	for reputation = REPUTATION_ORDER, REPUTATION_CRIMINAL do
		allPoints = allPoints + data[reputation]
	end

	self.window.contentPanel.info.tooltipEnabled = true
	self.window.contentPanel.info.reputationPointsTooltip = reputationPointsTooltip

	local oldPoints = self.window.contentPanel.availablePoints.total or -1

	self.window.contentPanel.availablePoints.total = data.total

	signalcall(self.onUpdateReputationPoints, oldPoints, data.total)
	self.window.contentPanel.allPoints:setText(allPoints)
	self.window.contentPanel.availablePoints:setText(data.total)

	self.totalPoints = allPoints
	self.availablePoints = data.total

	self:updateResetPointsButtonAmount()
	self:updateRows()
end

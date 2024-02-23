-- chunkname: @/modules/game_reputation/reputation.lua

GameReputation = GameReputation or {
	availablePoints = 0,
	totalPoints = 0
}

function GameReputation:loadConfig()
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

function GameReputation:show()
	GameReputation:sendExtendedOpcode({
		action = "passives"
	})
	self.window:show()
	self.window:raise()
	self.window:focus()
end

function GameReputation:hide()
	self.window:hide()
end

function GameReputation.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameReputation.window:isVisible() then
		GameReputation:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameReputation:show()
	end
end

function GameReputation.init()
	local self = GameReputation

	self:loadConfig()
	dofile("opcode.lua")
	connect(g_game, {
		onGameEnd = GameReputation.onGameEnd
	})
	g_ui.importStyle("main.otui")

	self.window = g_ui.createWidget("ReputationWindow", modules.game_interface.getHUDPanel())
	self.passivesRows = self.window:recursiveGetChildById("passivesRows")

	self:fillPassivesRows()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Reputation, self.onExtendedOpcode)
	g_keyboard.bindKeyDown("H", self.toggle)
end

function GameReputation.terminate()
	disconnect(g_game, {
		onGameEnd = GameReputation.onGameEnd
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Reputation)
	g_keyboard.unbindKeyDown("H")
	GameReputation.window:destroy()
end

function GameReputation.onGameEnd()
	local self = GameReputation

	self.totalPoints = 0
	self.availablePoints = 0
	self.playerPassives = nil
	self.playerPoints = nil

	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self:hide()
end

function GameReputation:fillPassivesRows()
	for rowId, row in ipairs(cfg.passives) do
		local rowWidget = g_ui.createWidget("ReputationPassiveRow", self.passivesRows)

		rowWidget:setId("row_" .. rowId)

		if rowId % 2 == 0 then
			rowWidget:setImageSource("/images/ui/windows/reputation/row_even")
		end

		rowWidget.rowPoints.points:setText(cfg.experienceTable[rowId])

		rowWidget.rowId = rowId
		rowWidget.requiredPoints = cfg.experienceTable[rowId]

		for _, passive in ipairs(row) do
			local id = passive.id
			local widget = g_ui.createWidget("ReputationPassiveIcon", rowWidget.passives)
			local imagePath = string.format("/images/ui/windows/reputation/passives/T%s/%s", rowId, id)

			widget:setImageSource(imagePath)
			widget:setId("passive_" .. id)

			widget.tooltipEnabled = true
			widget.reputationPassiveTooltip = {
				header = {
					subtitle = "Passive",
					title = passive.name,
					image = imagePath
				},
				cost = cfg.experienceTable[rowId],
				description = passive.description
			}
			widget.passive = passive
		end
	end
end

function GameReputation:canUnlockRowPassive(rowId)
	if rowId == 1 then
		return true, self:hasEnoughtPointsForRow(rowId)
	end

	local rowUnlockedPassives = self.playerPassives[rowId] or {}
	local rowUnlockedPassivesCount = table.size(rowUnlockedPassives)
	local previousRow = rowId - 1
	local previousRowUnlockedPassives = self.playerPassives[previousRow] or {}
	local previousRowUnlockedPassivesCount = table.size(previousRowUnlockedPassives)

	return rowUnlockedPassivesCount < previousRowUnlockedPassivesCount, self:hasEnoughtPointsForRow(rowId)
end

function GameReputation:hasEnoughtPointsForRow(rowId)
	return cfg.experienceTable[rowId] <= self.playerPoints.total
end

function GameReputation:updateRows()
	if not self.playerPoints or not self.playerPassives then
		return
	end

	for rowId, row in ipairs(cfg.passives) do
		local rowWidget = self.passivesRows:getChildById("row_" .. rowId)
		local unlocked, hasEnoughtPoints = self:canUnlockRowPassive(rowId)
		local canPurchaseFromRow = unlocked and hasEnoughtPoints

		rowWidget.rowHightlight:setVisible(canPurchaseFromRow)
		rowWidget.rowPoints.points:setOn(canPurchaseFromRow)
		rowWidget.rowPoints.points:setChecked(unlocked)

		for _, passiveIcon in ipairs(rowWidget.passives:getChildren()) do
			passiveIcon:setChecked(canPurchaseFromRow)
			passiveIcon:setOn(self.playerPassives[rowId] and self.playerPassives[rowId][passiveIcon.passive.id])
		end
	end
end

function GameReputation:onPassiveNodeClicked(widget)
	local passive = widget.passive

	if not passive then
		return
	end

	if not widget:isChecked() then
		return
	end

	if widget:isOn() then
		return
	end

	local passiveId = passive.id

	if self.confirmationBox then
		self.confirmationBox:raise()
		self.confirmationBox:shake(4, 3)

		return
	end

	local function yesCallback()
		self:sendExtendedOpcode({
			action = "learn_passive",
			passiveId = passiveId
		})
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Confirm choice"), string.format("You are unlocking %s. Reputation passives are allocated permanently.\nDo you want to continue?", passive.name), {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, self.window:getParent())
end

function GameReputation:onResetPointsClicked()
	if self.confirmationBox then
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local resetButton = self.window.contentPanel.resetPointsButton
	local ravenCoinsCost = cfg.resetCost.ravencoins * math.ceil((self.totalPoints - self.availablePoints) / cfg.resetCost.points)

	local function yesCallback()
		self:sendExtendedOpcode({
			action = "reset_points"
		})
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	local function noCallback()
		self.confirmationBox:destroy()

		self.confirmationBox = nil
	end

	self.confirmationBox = displayGeneralBox(tr("Confirm reset"), string.format("You are about to reset your reputation passives. This will cost you %s RavenCoins.\nDo you want to continue?", ravenCoinsCost), {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, self.window:getParent())
end

function GameReputation:updateResetPointsButtonAmount()
	local totalPoints = self.totalPoints
	local availablePoints = self.availablePoints
	local resetButton = self.window.contentPanel.resetPointsButton
	local spentPoints = totalPoints - availablePoints
	local ravenCoinsCost = cfg.resetCost.ravencoins * math.ceil(spentPoints / cfg.resetCost.points)

	resetButton:setText(ravenCoinsCost)
	resetButton:setEnabled(ravenCoinsCost > 0)
end

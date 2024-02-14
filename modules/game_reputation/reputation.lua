-- chunkname: @/modules/game_reputation/reputation.lua

GameReputation = GameReputation or {}
GameReputation.experienceTable = {
	500,
	750,
	1000,
	1250,
	1500,
	2250,
	3000
}
GameReputation.passives = {
	{
		{
			description = "Increases the stats from Rings by 5%.",
			name = "Ring Mastery I",
			id = 1
		},
		{
			description = "Increases the stats from your Amulet by 10%.",
			name = "Amulet Mastery I",
			id = 2
		},
		{
			description = "Increases the Speed of your Moa by 5%.",
			name = "Swift Rider I",
			id = 3
		},
		{
			description = "Increases experience received from Creatures by 2%.",
			name = "Monster Slayer I",
			id = 4
		},
		{
			description = "Increases experience received from Gathering by 3%.",
			name = "Gathering Proficiency I",
			id = 5
		},
		{
			description = "Increases experience received from Crafting by 3%.",
			name = "Crafting Proficiency I",
			id = 6
		},
		{
			description = "Increases the drop rate of Items from Creatures by 3%.",
			name = "Scavenger I",
			id = 7
		},
		{
			description = "Increases Silver dropped from Creatures by 3%.",
			name = "Prosperity I",
			id = 8
		},
		{
			description = "Increases the chance at finding Rare Materials when Gathering by 3%.",
			name = "Good Fortune I",
			id = 9
		}
	},
	{
		{
			description = "Increases the damage of your Ship Cannons by 5%.",
			name = "Improved Gunpowder I",
			id = 10
		},
		{
			description = "Reduces the cooldown of your Trinket by 10%.",
			name = "Gadgeteer I",
			id = 11
		},
		{
			description = "Increases the Speed of your Ship by 5%.",
			name = "Seadog I",
			id = 12
		},
		{
			description = "Increases Speed while pulling a Wagon by 5%.",
			name = "Caravaneer I",
			id = 13
		},
		{
			description = "Increases the Bond Experience received by your Moa by 5%.",
			name = "Rider's Bond I",
			id = 14
		},
		{
			description = "Increases the Duration of Food Consumables by 7%.",
			name = "Nourished I",
			id = 15
		},
		{
			description = "Increases the Effectiveness of Potions by 5%",
			name = "Proficient Alchemy I",
			id = 16
		},
		{
			description = "Increases the number of Prestige Points received from Rangers Company tasks by 7%",
			name = "Ranger's Valor I",
			id = 17
		},
		{
			description = "Your first Touch action has a 10% chance to double the Quality given during crafting.",
			name = "Artisan's Touch I",
			id = 18
		}
	},
	{
		{
			description = "Increases the Reload Speed of your Ship Cannons by 5%.",
			name = "Swift Artillery I",
			id = 19
		},
		{
			description = "Increases the Health of your Ship by 5%.",
			name = "Reinforced Hull I",
			id = 20
		},
		{
			description = "Increases the Speed of your ship by 5% when carrying tradepacks",
			name = "Seatrader I",
			id = 21
		},
		{
			description = "Increases the Strength of your Moa by 7%.",
			name = "Moa's Vigor I",
			id = 22
		},
		{
			description = "Reduces the Cooldown of your Moa's abilities by 10%.",
			name = "Moa Proficiency I",
			id = 23
		},
		{
			description = "Increases the value of Tradepacks by 5%.",
			name = "Bartering I",
			id = 24
		},
		{
			description = "Increases the value of Fish by 5%.",
			name = "Fisherman's Luck I",
			id = 25
		},
		{
			description = "Increases the value of Creature Products by 5%.",
			name = "Skilled Salesman I",
			id = 26
		},
		{
			description = "Increases the number of Bounty Marks earned from Rangers Company Tasks by 10%.",
			name = "Sellsword I",
			id = 27
		}
	},
	{
		{
			description = "Increases damage dealt to Murderers by 5%, and recovers 30% of your maximum health when you kill a Murderer. Not available to those with active Murderer status.",
			name = "Retributioner",
			id = 28
		},
		{
			description = "Increases damage dealt to Innocent players by 2%, and recovers 15% of your maximum health when you kill an innocent player. ",
			name = "Insidious",
			id = 29
		},
		{
			description = "Increases the stats from your Main & Off Hand equipment by 5%.",
			name = "Weapon Mastery",
			id = 30
		},
		{
			description = "Increases movement speed by 15% when carrying a tradepack stolen from a killed player.",
			name = "Looter's Haste",
			id = 31
		},
		{
			description = "Increases movement speed by 10% when carrying a tradepack on foot.",
			name = "Trader's Agility",
			id = 32
		},
		{
			description = "Decreases the chance of being dismounted when first struck by another player by 50%.",
			name = "Skilled Rider",
			id = 33
		},
		{
			description = "Creatures from the Dwarven, Elven and Goblin Families will not attack you unless you attack them first or gather resources near them.",
			name = "Diplomatic Exaltation",
			id = 34
		},
		{
			description = "When first attacked by a player while riding a Wagon, receives a shield equal to 25% of your max health for 10 seconds. 2 Minute Cooldown.",
			name = "Fortified Convoy",
			id = 35
		},
		{
			description = "When first attacked by a player while carrying a Tradepack on your Ship, receives a shield equal to 25% of your max health for 10 seconds. 2 Minute Cooldown.",
			name = "Trader's Safeguard",
			id = 36
		}
	},
	{
		{
			description = "Increases the stats from Rings by 10%.",
			name = "Ring Mastery II",
			id = 37
		},
		{
			description = "Increase the stats from your Amulet by 20%.",
			name = "Amulet Mastery II",
			id = 38
		},
		{
			description = "Increases the Speed of your Moa by 10%.",
			name = "Swift Rider II",
			id = 39
		},
		{
			description = "Increases experience received from creatures by 4%.",
			name = "Monster Slayer II",
			id = 40
		},
		{
			description = "Increases experience received from Gathering by 7%.",
			name = "Gathering Proficiency II",
			id = 41
		},
		{
			description = "Increases experience received from Crafting by 7%.",
			name = "Crafting Proficiency II",
			id = 42
		},
		{
			description = "Increases the drop rate of Items from Creatures by 7%.",
			name = "Scavenger II",
			id = 43
		},
		{
			description = "Increases Silver dropped from Creatures by 7%.",
			name = "Prosperity II",
			id = 44
		},
		{
			description = "Increases the chance at finding Rare Materials when Gathering by 7%.",
			name = "Good Fortune II",
			id = 45
		}
	},
	{
		{
			description = "Increases the damage of your Ship Cannons by 10%.",
			name = "Improved Gunpowder II",
			id = 46
		},
		{
			description = "Reduces the cooldown of your Trinket by 20%.",
			name = "Gadgeteer II",
			id = 47
		},
		{
			description = "Increases the Speed of your ship by 10%.",
			name = "Seadog II",
			id = 48
		},
		{
			description = "Increases Speed while pulling a Wagon by 10%.",
			name = "Caravaneer II",
			id = 49
		},
		{
			description = "Increases the Bond Experience received by your Moa by 10%.",
			name = "Rider's Bond II",
			id = 50
		},
		{
			description = "Increases the Duration of Food Consumables by 15%.",
			name = "Nourished II",
			id = 51
		},
		{
			description = "Increases the Effectiveness of Potions by 10%.",
			name = "Proficient Alchemy II",
			id = 52
		},
		{
			description = "Increases the number of Prestige Points received from Rangers Company tasks by 15%.",
			name = "Ranger's Valor II",
			id = 53
		},
		{
			description = "Your first Touch action has a 20% chance to double the Quality given during crafting.",
			name = "Artisan's Touch II",
			id = 54
		}
	},
	{
		{
			description = "Increases the Reload Speed of your Ship Cannons by 10%.",
			name = "Swift Artillery II",
			id = 55
		},
		{
			description = "Increases the health of your Ship by 10%.",
			name = "Reinforced Hull II",
			id = 56
		},
		{
			description = "Increases the Speed of your ship by 10% when carrying tradepacks",
			name = "Seatrader II",
			id = 57
		},
		{
			description = "Increases the Strength of your Moa by 15%.",
			name = "Moa's Vigor II",
			id = 58
		},
		{
			description = "Reduces the cooldown of your Moa's abilities by 20%.",
			name = "Moa Proficiency II",
			id = 59
		},
		{
			description = "Increases the value of Tradepacks by 10%.",
			name = "Bartering II",
			id = 60
		},
		{
			description = "Increases the value of Fish by 10%.",
			name = "Fisherman's Luck II",
			id = 61
		},
		{
			description = "Increases the value of Creature Products by 10%.",
			name = "Skilled Salesman II",
			id = 62
		},
		{
			description = "Increases the number of Bounty Marks earned from Rangers Company Tasks by 20%.",
			name = "Sellsword II",
			id = 63
		}
	}
}

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
	dofile("opcode.lua")
	connect(g_game, {
		onGameStart = GameReputation.onGameStart,
		onGameEnd = GameReputation.onGameEnd
	})
	g_ui.importStyle("main.otui")

	GameReputation.window = g_ui.createWidget("ReputationWindow", modules.game_interface.getHUDPanel())
	GameReputation.passivesRows = GameReputation.window:recursiveGetChildById("passivesRows")

	GameReputation:fillPassivesRows()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Reputation, GameReputation.onExtendedOpcode)
	g_keyboard.bindKeyDown("H", GameReputation.toggle)
end

function GameReputation.terminate()
	disconnect(g_game, {
		onGameStart = GameReputation.onGameStart,
		onGameEnd = GameReputation.onGameEnd
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Reputation)
	g_keyboard.unbindKeyDown("H")
	GameReputation.window:destroy()
end

function GameReputation.onGameStart()
	return
end

function GameReputation.onGameEnd()
	GameReputation:hide()
end

function GameReputation:fillPassivesRows()
	for rowId, row in ipairs(self.passives) do
		local rowWidget = g_ui.createWidget("ReputationPassiveRow", self.passivesRows)

		rowWidget:setId("row_" .. rowId)

		if rowId % 2 == 0 then
			rowWidget:setImageSource("/images/ui/windows/reputation/row_even")
		end

		rowWidget.rowPoints.points:setText(self.experienceTable[rowId])

		rowWidget.rowId = rowId
		rowWidget.requiredPoints = self.experienceTable[rowId]

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
				cost = self.experienceTable[rowId],
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
	return self.experienceTable[rowId] <= self.playerPoints.total
end

function GameReputation:updateRows()
	if not self.playerPoints or not self.playerPassives then
		return
	end

	for rowId, row in ipairs(self.passives) do
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

function GameReputation:onCanLearnPassive(reputationId, rowId, pathId)
	return
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

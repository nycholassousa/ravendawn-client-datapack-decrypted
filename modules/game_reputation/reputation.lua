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
			id = 1,
			name = "Ring Mastery I"
		},
		{
			description = "Increases the stats from your Amulet by 10%.",
			id = 2,
			name = "Amulet Mastery I"
		},
		{
			description = "Increases the Speed of your Moa by 5%.",
			id = 3,
			name = "Swift Rider I"
		},
		{
			description = "Increases experience received from Creatures by 2%.",
			id = 4,
			name = "Monster Slayer I"
		},
		{
			description = "Increases experience received from Gathering by 3%.",
			id = 5,
			name = "Gathering Proficiency I"
		},
		{
			description = "Increases experience received from Crafting by 3%.",
			id = 6,
			name = "Crafting Proficiency I"
		},
		{
			description = "Increases the drop rate of Items from Creatures by 3%.",
			id = 7,
			name = "Scavenger I"
		},
		{
			description = "Increases Silver dropped from Creatures by 3%.",
			id = 8,
			name = "Prosperity I"
		},
		{
			description = "Increases the chance at finding Rare Materials when Gathering by 3%.",
			id = 9,
			name = "Good Fortune I"
		}
	},
	{
		{
			description = "Increases the damage of your Ship Cannons by 5%.",
			id = 10,
			name = "Improved Gunpowder I"
		},
		{
			description = "Reduces the cooldown of your Trinket by 10%.",
			id = 11,
			name = "Gadgeteer I"
		},
		{
			description = "Increases the Speed of your Ship by 5%.",
			id = 12,
			name = "Seadog I"
		},
		{
			description = "Increases Speed while pulling a Wagon by 5%.",
			id = 13,
			name = "Caravaneer I"
		},
		{
			description = "Increases the Bond Experience received by your Moa by 5%.",
			id = 14,
			name = "Rider's Bond I"
		},
		{
			description = "Increases the Duration of Food Consumables by 7%.",
			id = 15,
			name = "Nourished I"
		},
		{
			description = "Increases the Effectiveness of Potions by 5%",
			id = 16,
			name = "Proficient Alchemy I"
		},
		{
			description = "Increases the number of Prestige Points received from Rangers Company tasks by 7%",
			id = 17,
			name = "Ranger's Valor I"
		},
		{
			description = "Your first Touch action has a 10% chance to double the Quality given during crafting.",
			id = 18,
			name = "Artisan's Touch I"
		}
	},
	{
		{
			description = "Increases the Reload Speed of your Ship Cannons by 5%.",
			id = 19,
			name = "Swift Artillery I"
		},
		{
			description = "Increases the Health of your Ship by 5%.",
			id = 20,
			name = "Reinforced Hull I"
		},
		{
			description = "Increases the Speed of your ship by 5% when carrying tradepacks",
			id = 21,
			name = "Seatrader I"
		},
		{
			description = "Increases the Strength of your Moa by 7%.",
			id = 22,
			name = "Moa's Vigor I"
		},
		{
			description = "Reduces the Cooldown of your Moa's abilities by 10%.",
			id = 23,
			name = "Moa Proficiency I"
		},
		{
			description = "Increases the value of Tradepacks by 5%.",
			id = 24,
			name = "Bartering I"
		},
		{
			description = "Increases the value of Fish by 5%.",
			id = 25,
			name = "Fisherman's Luck I"
		},
		{
			description = "Increases the value of Creature Products by 5%.",
			id = 26,
			name = "Skilled Salesman I"
		},
		{
			description = "Increases the number of Bounty Marks earned from Rangers Company Tasks by 10%.",
			id = 27,
			name = "Sellsword I"
		}
	},
	{
		{
			description = "Increases damage dealt to Murderers by 5%, and recovers 30% of your maximum health when you kill a Murderer. Not available to those with active Murderer status.",
			id = 28,
			name = "Retributioner"
		},
		{
			description = "Increases damage dealt to Innocent players by 2%, and recovers 15% of your maximum health when you kill an innocent player. ",
			id = 29,
			name = "Insidious"
		},
		{
			description = "Increases the stats from your Main & Off Hand equipment by 5%.",
			id = 30,
			name = "Weapon Mastery"
		},
		{
			description = "Increases movement speed by 15% when carrying a tradepack stolen from a killed player.",
			id = 31,
			name = "Looter's Haste"
		},
		{
			description = "Increases movement speed by 10% when carrying a tradepack on foot.",
			id = 32,
			name = "Trader's Agility"
		},
		{
			description = "Decreases the chance of being dismounted when first struck by another player by 50%.",
			id = 33,
			name = "Skilled Rider"
		},
		{
			description = "Creatures from the Dwarven, Elven and Goblin Families will not attack you unless you attack them first or gather resources near them.",
			id = 34,
			name = "Diplomatic Exaltation"
		},
		{
			description = "When first attacked by a player while riding a Wagon, receives a shield equal to 25% of your max health for 10 seconds. 2 Minute Cooldown.",
			id = 35,
			name = "Fortified Convoy"
		},
		{
			description = "When first attacked by a player while carrying a Tradepack on your Ship, receives a shield equal to 25% of your max health for 10 seconds. 2 Minute Cooldown.",
			id = 36,
			name = "Trader's Safeguard"
		}
	},
	{
		{
			description = "Increases the stats from Rings by 10%.",
			id = 37,
			name = "Ring Mastery II"
		},
		{
			description = "Increase the stats from your Amulet by 20%.",
			id = 38,
			name = "Amulet Mastery II"
		},
		{
			description = "Increases the Speed of your Moa by 10%.",
			id = 39,
			name = "Swift Rider II"
		},
		{
			description = "Increases experience received from creatures by 4%.",
			id = 40,
			name = "Monster Slayer II"
		},
		{
			description = "Increases experience received from Gathering by 7%.",
			id = 41,
			name = "Gathering Proficiency II"
		},
		{
			description = "Increases experience received from Crafting by 7%.",
			id = 42,
			name = "Crafting Proficiency II"
		},
		{
			description = "Increases the drop rate of Items from Creatures by 7%.",
			id = 43,
			name = "Scavenger II"
		},
		{
			description = "Increases Silver dropped from Creatures by 7%.",
			id = 44,
			name = "Prosperity II"
		},
		{
			description = "Increases the chance at finding Rare Materials when Gathering by 7%.",
			id = 45,
			name = "Good Fortune II"
		}
	},
	{
		{
			description = "Increases the damage of your Ship Cannons by 10%.",
			id = 46,
			name = "Improved Gunpowder II"
		},
		{
			description = "Reduces the cooldown of your Trinket by 20%.",
			id = 47,
			name = "Gadgeteer II"
		},
		{
			description = "Increases the Speed of your ship by 10%.",
			id = 48,
			name = "Seadog II"
		},
		{
			description = "Increases Speed while pulling a Wagon by 10%.",
			id = 49,
			name = "Caravaneer II"
		},
		{
			description = "Increases the Bond Experience received by your Moa by 10%.",
			id = 50,
			name = "Rider's Bond II"
		},
		{
			description = "Increases the Duration of Food Consumables by 15%.",
			id = 51,
			name = "Nourished II"
		},
		{
			description = "Increases the Effectiveness of Potions by 10%.",
			id = 52,
			name = "Proficient Alchemy II"
		},
		{
			description = "Increases the number of Prestige Points received from Rangers Company tasks by 15%.",
			id = 53,
			name = "Ranger's Valor II"
		},
		{
			description = "Your first Touch action has a 20% chance to double the Quality given during crafting.",
			id = 54,
			name = "Artisan's Touch II"
		}
	},
	{
		{
			description = "Increases the Reload Speed of your Ship Cannons by 10%.",
			id = 55,
			name = "Swift Artillery II"
		},
		{
			description = "Increases the health of your Ship by 10%.",
			id = 56,
			name = "Reinforced Hull II"
		},
		{
			description = "Increases the Speed of your ship by 10% when carrying tradepacks",
			id = 57,
			name = "Seatrader II"
		},
		{
			description = "Increases the Strength of your Moa by 15%.",
			id = 58,
			name = "Moa's Vigor II"
		},
		{
			description = "Reduces the cooldown of your Moa's abilities by 20%.",
			id = 59,
			name = "Moa Proficiency II"
		},
		{
			description = "Increases the value of Tradepacks by 10%.",
			id = 60,
			name = "Bartering II"
		},
		{
			description = "Increases the value of Fish by 10%.",
			id = 61,
			name = "Fisherman's Luck II"
		},
		{
			description = "Increases the value of Creature Products by 10%.",
			id = 62,
			name = "Skilled Salesman II"
		},
		{
			description = "Increases the number of Bounty Marks earned from Rangers Company Tasks by 20%.",
			id = 63,
			name = "Sellsword II"
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

﻿-- chunkname: @/modules/gamelib/ui/uicreaturebutton.lua

UICreatureButton = extends(UIWidget, "UICreatureButton")

local CreatureButtonColors = {
	onIdle = {
		notHovered = "#888888",
		hovered = "#FFFFFF"
	},
	onTargeted = {
		notHovered = "#FF0000",
		hovered = "#FF8888"
	},
	onFollowed = {
		notHovered = "#4CBBFF",
		hovered = "#93D6FF"
	}
}
local FightStanceColors = {
	[FightOffensive] = {
		notHovered = "#FF0000",
		hovered = "#FF8888"
	},
	[FightBalanced] = {
		notHovered = "#FFFF00",
		hovered = "#FFFF8B"
	},
	[FightDefensive] = {
		notHovered = "#00FF00",
		hovered = "#88FF88"
	}
}
local LifeBarColors = {}

table.insert(LifeBarColors, {
	color = "#00BC00",
	percentAbove = 92
})
table.insert(LifeBarColors, {
	color = "#50A150",
	percentAbove = 60
})
table.insert(LifeBarColors, {
	color = "#A1A100",
	percentAbove = 30
})
table.insert(LifeBarColors, {
	color = "#BF0A0A",
	percentAbove = 8
})
table.insert(LifeBarColors, {
	color = "#910F0F",
	percentAbove = 3
})
table.insert(LifeBarColors, {
	color = "#850C0C",
	percentAbove = -1
})

function UICreatureButton.create()
	local button = UICreatureButton.internalCreate()

	button:setFocusable(false)

	button.creature = nil
	button.creatureName = ""
	button.isHovered = false
	button.healthPercent = 0
	button.manaPercent = 0
	button.threatPercent = 0
	button.manaBar = false
	button.threatBar = false

	return button
end

function UICreatureButton:setCreature(creature)
	self.creature = creature
end

function UICreatureButton:getCreature()
	return self.creature
end

function UICreatureButton:getCreatureId()
	return self.creature:getId()
end

function UICreatureButton:setup(creature, id)
	self.lifeBarWidget = self:getChildById("lifeBar")
	self.manaBarWidget = self:getChildById("manaBar")
	self.creatureWidget = self:getChildById("creature")
	self.labelWidget = self:getChildById("label")
	self.skullWidget = self:getChildById("skull")
	self.emblemWidget = self:getChildById("emblem")
	self.summonWidget = self:getChildById("summon")
	self.shieldWidget = self:getChildById("shield")
end

function UICreatureButton:update()
	if self.creature == g_game.getHealingCreature() then
		self.creatureWidget:setImageColor("yellow")
	else
		self.creatureWidget:setImageColor("white")
	end
end

function UICreatureButton:creatureSetup(creature)
	if self.creature ~= creature then
		self.creature = creature

		self.creatureWidget:setCreature(creature)

		if self.creatureName ~= creature:getName() then
			self.creatureName = creature:getName()

			self.labelWidget:setText(creature:getName())
		end

		if self.manaBar then
			self.manaBar = false
			self.manaPercent = 0

			self.manaBarWidget:setPercent(0)
			self.manaBarWidget:setVisible(false)
		end

		if self.creature:isPlayer() then
			self:setHeight(25)

			self.manaBar = true
			self.manaPercent = 0

			self.manaBarWidget:setPercent(0)
			self.manaBarWidget:setVisible(true)
		else
			self:setHeight(20)
		end
	end

	self:updateLifeBarPercent()
	self:updateManaBarPercent()
	self:updateSkull()
	self:updateEmblem()
	self:updateSummon()
	self:updateShield()
	self:update()
end

function UICreatureButton:updateSkull()
	if not self.creature then
		return
	end

	local skullId = self.creature:getSkull()

	if skullId == self.skullId then
		return
	end

	self.skullId = skullId

	if skullId ~= SkullNone then
		-- block empty
	else
		self.skullWidget:setWidth(0)
	end
end

function UICreatureButton:updateLifeBarPercent()
	if not self.creature then
		return
	end

	local percent = self.creature:getHealthPercent()

	if self.healthPercent == percent then
		return
	end

	self.healthPercent = percent

	self.lifeBarWidget:setPercent(percent)

	local color

	for i, v in pairs(LifeBarColors) do
		if percent > v.percentAbove then
			color = v.color

			break
		end
	end

	self.lifeBarWidget:setBackgroundColor(color)
end

function UICreatureButton:updateManaBarPercent()
	if not self.creature or not self.manaBar then
		return
	end

	local percent = self.creature:getManaPercent()

	if self.manaPercent == percent then
		return
	end

	self.manaPercent = percent

	self.manaBarWidget:setPercent(percent)
	self.manaBarWidget:setBackgroundColor("#ba55d3")
end

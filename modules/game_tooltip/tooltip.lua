-- chunkname: @/modules/game_tooltip/tooltip.lua

g_gameTooltip = {}

local baseEquipmentExp = {
	[0] = 10,
	75,
	150,
	375,
	750,
	1500,
	3500
}
local infusion = {
	[26554] = {
		exp = 10
	},
	[33858] = {
		exp = 20
	},
	[33859] = {
		exp = 40
	},
	[43981] = {
		exp = 60
	},
	[43980] = {
		exp = 75
	},
	[43982] = {
		exp = 90
	}
}
local enchantStats = {
	attackPower = " Attack Power",
	["customDescription:"] = "",
	criticalDamage = " Impact",
	criticalChance = " Precision",
	maxHealth = " Maximum Health",
	maxMana = " Maximum Mana",
	haste = " Haste",
	wisdom = " Wisdom",
	might = " Might",
	dexterity = " Dexterity",
	intelligence = " Intelligence",
	vitality = " Vitality",
	healingPower = " Healing Power",
	defensePower = " Defense Power"
}
local stats = {
	[STAT_MAXHITPOINTS] = "Maximum Health",
	[STAT_MAXMANAPOINTS] = "Maximum Mana",
	[STAT_ATTACKSPEED] = "Attack Speed",
	[STAT_ATTACK] = "Attack",
	[STAT_PHYSICALATTACK] = "Weapon Power",
	[STAT_MAGICATTACK] = "Spell Power",
	[STAT_DEFENSE] = "Defense",
	[STAT_PHYSICALDEFENSE] = "Weapon Defense",
	[STAT_MAGICDEFENSE] = "Spell Defense",
	[STAT_MIGHT] = "Might",
	[STAT_DEXTERITY] = "Dexterity",
	[STAT_HASTE] = "Haste",
	[STAT_INTELLIGENCE] = "Intelligence",
	[STAT_WISDOM] = "Wisdom",
	[STAT_SPELLCOOLDOWN] = "Spell cooldown",
	[STAT_RANGEBONUS] = "Range bonus",
	[STAT_SPEED] = "Movement Speed",
	[STAT_HEAL] = "Heal Power",
	[STAT_MANA_REGENERATION] = "Mana Regeneration",
	[STAT_HEALTH_REGENERATION] = "Health Regeneration",
	[STAT_CRITICAL_CHANCE] = "Precision",
	[STAT_CRITICAL_DAMAGE] = "Impact",
	[STAT_VITALITY] = "Vitality"
}
local craftStats = {
	[CRAFTING_STAT_MEND] = "Mend",
	[CRAFTING_STAT_TOUCH] = "Touch",
	[CRAFTING_STAT_SYNTHESIS] = "Synthesis",
	[CRAFTING_STAT_CONDITION] = "Condition"
}

local function getBaseMoaStats(sex)
	local outfits = {
		3541,
		3535
	}
	local info = {
		stamina = 1000,
		bondExperience = 0,
		bondLevel = 1,
		breedLimit = 2,
		trait = 0,
		weight = 50,
		height = 130,
		strength = 40,
		tier = 1,
		speed = 310,
		sex = sex,
		abilities = {},
		outfit = {
			mountBody = outfits[math.random(#outfits)]
		}
	}

	return info
end

local function getArchetypeExtraPoints(level)
	local totalPoints = 0

	if level >= 5 and level <= 20 then
		totalPoints = math.floor((level - 1) / 4)
	elseif level >= 21 and level <= 40 then
		totalPoints = math.floor((level - 21) / 3) + 5
	elseif level >= 41 and level <= 60 then
		totalPoints = math.floor((level - 41) / 2) + 11
	elseif level >= 61 then
		totalPoints = level - 60 + 20
	end

	return totalPoints
end

local function getDistanceBetween(p1, p2)
	return math.pow(p1.x - p2.x, 2) + math.pow(p1.y - p2.y, 2)
end

local function getInfusionPercent(grade, exp, requiredExp)
	if grade == ITEM_GRADE_LAST then
		return " (Max)"
	elseif requiredExp > 0 then
		return " (" .. math.min(100, math.floor(exp / requiredExp * 100)) .. "%)"
	end

	return ""
end

function g_gameTooltip.move(first)
	if not first and (not g_gameTooltip.window:isVisible() or g_gameTooltip.window:getOpacity() < 0.1) then
		return
	end

	if not first and g_gameTooltip.disappearOnMove then
		local pos = g_window.getMousePosition()
		local windowPos = g_gameTooltip.window:getPosition()

		if getDistanceBetween(pos, windowPos) > 20 then
			g_gameTooltip.hide()

			g_gameTooltip.disappearOnMove = false
		end

		return
	end

	local pos = g_window.getMousePosition()
	local windowSize = g_window.getSize()
	local tooltipSize = g_gameTooltip.window:getSize()
	local UIScale = 0.75 + modules.game_settings.getOption("UIScale") / 100 * 0.5

	if UIScale > 1 then
		windowSize.width = windowSize.width * (1 - (UIScale - 1))
		windowSize.height = windowSize.height * (1 - (UIScale - 1))
	end

	pos.x = pos.x + 1
	pos.y = pos.y + 1

	if windowSize.width - (pos.x + tooltipSize.width) < 10 then
		pos.x = pos.x - tooltipSize.width - 3
	else
		pos.x = pos.x + 10
	end

	local remaining = windowSize.height - (pos.y + tooltipSize.height)

	if remaining < 10 then
		pos.y = pos.y + remaining - 10
	end

	g_gameTooltip.window:setPosition(pos)

	if g_gameTooltip._disconnects then
		for _, event in pairs(g_gameTooltip._disconnects) do
			event()
		end
	end

	local disconnects = connect(rootWidget, {
		onMouseMove = function(widget, mousePos)
			if not g_gameTooltip.currentWidget or not g_gameTooltip.currentWidget:isHovered() then
				g_gameTooltip.hide()
			end
		end
	})

	g_gameTooltip._disconnects = disconnects

	function g_gameTooltip.onDestroy()
		for _, event in pairs(disconnects) do
			event()
		end
	end
end

function g_gameTooltip.onHoverCreature(widget, hovered)
	if g_gameTooltip.disableTooltip then
		g_gameTooltip.hide()

		return
	end

	local widget = widget or g_ui.getHoveredWidget()

	if not widget or not widget.tooltipEnabled or widget:getClassName() ~= "UICreature" then
		g_gameTooltip.hide()

		return
	end

	if hovered == nil then
		hovered = true
	end

	local outfit = widget:getOutfit()
	local outfitId = outfit.lookType

	if widget.outfitId then
		outfitId = widget.outfitId
	end

	if outfit and hovered then
		g_gameTooltip.displayCreature(outfit, outfitId, widget.tooltipData)

		g_gameTooltip.currentWidget = widget
	elseif widget == g_gameTooltip.currentWidget then
		g_gameTooltip.hide()

		g_gameTooltip.currentWidget = nil
	end
end

function g_gameTooltip.onHoverItem(widget, hovered)
	if g_gameTooltip.disableTooltip then
		g_gameTooltip.hide()

		return
	end

	local widget = widget or g_ui.getHoveredWidget()

	if not widget or widget:getClassName() ~= "UIItem" or not widget:hasTooltip() then
		g_gameTooltip.hide()

		return
	end

	if hovered == nil then
		hovered = true
	end

	local item = widget:getItem()

	if item and item:hasTooltip() and hovered then
		g_gameTooltip.displayItem(item)

		g_gameTooltip.currentWidget = widget
	elseif widget == g_gameTooltip.currentWidget then
		g_gameTooltip.hide()

		g_gameTooltip.currentWidget = nil
	end
end

function g_gameTooltip.onHoverWidget(widget, hovered)
	if g_gameTooltip.disableTooltip then
		g_gameTooltip.hide()

		return
	end

	local widget = widget or g_ui.getHoveredWidget()

	if not widget or not widget.tooltipEnabled then
		g_gameTooltip.hide()

		return
	end

	if hovered == nil then
		hovered = true
	end

	if hovered then
		if widget.reputationPassiveTooltip then
			g_gameTooltip.displayReputationPassive(widget)

			g_gameTooltip.currentWidget = widget
		end

		if widget.reputationPointsTooltip then
			g_gameTooltip.displayReputationPoints(widget)

			g_gameTooltip.currentWidget = widget
		end

		if widget.attributesPointsTooltip then
			g_gameTooltip.displayAttributesPoints(widget)

			g_gameTooltip.currentWidget = widget
		end

		if widget.premiumEffortTooltip then
			g_gameTooltip.displayEffortPremiumTooltip(widget)

			g_gameTooltip.currentWidget = widget
		end

		if widget.experienceTooltip then
			g_gameTooltip.displayExperienceTooltip(widget)

			g_gameTooltip.currentWidget = widget
		end
	elseif widget == g_gameTooltip.currentWidget then
		g_gameTooltip.hide()

		g_gameTooltip.currentWidget = nil
	end
end

function g_gameTooltip.init()
	dofile("enchants.lua")
	g_ui.importStyle("styles/shared.otui")
	g_ui.importStyle("styles/attributes.otui")
	g_ui.importStyle("styles/reputation.otui")
	g_ui.importStyle("styles/premium.otui")
	g_ui.importStyle("tooltip.otui")
	connect(UIItem, {
		onHoverChange = g_gameTooltip.onHoverItem
	})
	connect(UICreature, {
		onHoverChange = g_gameTooltip.onHoverCreature
	})
	connect(UIWidget, {
		onHoverChange = g_gameTooltip.onHoverWidget
	})
	addEvent(function()
		g_gameTooltip.window = g_ui.createWidget("GameTooltipWindow", modules.game_interface.getHUDPanel())

		g_gameTooltip.window:setId("gameTooltip")
		g_gameTooltip.window:hide()

		function g_gameTooltip.window.onMouseMove()
			g_gameTooltip.move()
		end
	end)
end

function g_gameTooltip.terminate()
	disconnect(UIItem, {
		onHoverChange = g_gameTooltip.onHoverItem
	})
	disconnect(UICreature, {
		onHoverChange = g_gameTooltip.onHoverCreature
	})
	disconnect(UIWidget, {
		onHoverChange = g_gameTooltip.onHoverWidget
	})

	g_gameTooltip.currentWidget = nil

	if g_gameTooltip.window then
		g_gameTooltip.window:destroy()

		g_gameTooltip.window = nil
	end
end

function g_gameTooltip.displayItemFromOtherWidget(item, widget)
	if not item or not widget then
		return
	end

	g_gameTooltip.currentWidget = widget

	g_gameTooltip.displayItem(item, false)
end

function g_gameTooltip.addAttributesList(attributes)
	if table.empty(attributes) then
		return
	end

	for _, attribute in ipairs(attributes) do
		if attribute.condition then
			local label = attribute.widget

			if not label then
				local widget = g_ui.createWidget(attribute.style or "GameTooltipAttribute", attribute.list)

				if attribute.format then
					label = widget:recursiveGetChildById("value") or widget

					local text = GetHighlightedText(string.format(attribute.format, unpack(attribute.values)))

					label:setColoredText(text)

					if attribute.font then
						label:setFont(attribute.font)
					end
				end

				if attribute.callback then
					attribute.callback(widget)
				end
			end
		end
	end
end

function g_gameTooltip.reset(window)
	window = window or g_gameTooltip.window

	if not window then
		return
	end

	window:setWidth(325)

	local header = window.header

	for _, child in ipairs(header:getChildren()) do
		child:setVisible(false)
	end

	local body = window.body

	for _, child in ipairs(body:getChildren()) do
		if child.list then
			child.list:destroyChildren()
		end
	end

	local bottom = window.bottom

	for _, child in ipairs(bottom:getChildren()) do
		if child.list then
			child.list:destroyChildren()
		end
	end

	bottom:setOn(false)
end

function g_gameTooltip.getEquipmentItemGroupCount()
	local player = g_game.getLocalPlayer()

	if not player then
		return {}
	end

	local groups = {}

	for slot = InventorySlotHead, InventorySlotFeet do
		local item = player:getInventoryItem(slot)

		if item then
			local itemTypeRaw = item:getItemType()
			local group = EquipmentTypesToBonus[itemTypeRaw]

			if group then
				groups[group] = (groups[group] or 0) + 1
			end
		end
	end

	return groups
end

local function hasQualityName(type)
	return type ~= "trinket" and type ~= "necklace" and type ~= "ring"
end

function g_gameTooltip.displayItem(item, disappearOnMove, window)
	local player = g_game.getLocalPlayer()
	local isCustomWindow = window ~= nil

	window = window or g_gameTooltip.window

	if not window or not item or not player then
		return
	end

	local additionalAttributes = item:getAdditionalAttributes()

	additionalAttributes = additionalAttributes ~= "" and json.decode(additionalAttributes) or {}

	if item:getServerId() == 41620 and not additionalAttributes.mount then
		additionalAttributes.mount = getBaseMoaStats(1)
		additionalAttributes.mount.outfit.mountBody = 0
	elseif item:getServerId() == 41669 and not additionalAttributes.mount then
		additionalAttributes.mount = getBaseMoaStats(0)
		additionalAttributes.mount.outfit.mountBody = 0
	end

	if additionalAttributes.mount then
		additionalAttributes.mount.category = "mount"

		if not additionalAttributes.mount.abilities then
			additionalAttributes.mount.abilities = {}
		end

		local outfit = {
			category = 1,
			lookType = additionalAttributes.mount.outfit.mountBody
		}

		if additionalAttributes.mount.outfit.mountBody == 0 then
			outfit = {
				category = 0,
				auxType = item:getId()
			}
		end

		g_gameTooltip.displayCreature(outfit, additionalAttributes.mount.outfit.mountBody, additionalAttributes.mount)

		return
	end

	local weight = 0
	local isFish = additionalAttributes.attribute == "fish"

	if isFish then
		weight = additionalAttributes.weight
	end

	local itemName = item:getName()
	local itemTypeRaw = item:getItemType()
	local itemGroupType = EquipmentTypesToBonus[itemTypeRaw] or "none"
	local equipmentSetBonus = EquipmentSetBonus[itemGroupType]
	local tier = item:getTier()
	local grade = item:getGrade()
	local exp = item:getExperience()
	local requiredExp = item:getRequiredExperience()
	local baseExp = baseEquipmentExp[tier] or 0
	local soulOwner = item:getSoulOwner()
	local profession = item:getProfession()
	local attack = item:getAttack()
	local defense = item:getDefense()
	local healing = item:getHealing()
	local labor = item:getLabor()
	local itemPrimaryStats = item:getPrimaryStats()
	local itemSecondaryStats = item:getSecondaryStats()
	local craftingStats = item:getCraftingStats()
	local durability = item:getDurability()
	local requiredLevel = item:getMinReqLevel()
	local requiredLegacyLevel = item:getMinReqLegacyLevel()
	local isFishingRod = itemTypeRaw == "fishing rod"
	local isFishingHook = itemTypeRaw == "fishing hook"
	local qualityName = item:getQualityName()
	local quality = item:getQuality()
	local color = ItemQualityColors[qualityName] or ItemQualityColors[quality]
	local basePrice = ItemPrices[item:getId()]
	local hasPrice = basePrice and quality >= ITEM_QUALITY_NORMAL
	local fishingAbilityBonus = not (not isFishingHook and not isFishingRod) and FishingStats.abilityBonusTable[tier][grade + 1] or 0
	local fishingDurability = isFishingRod and FishingStats.durabilityTable[tier][grade + 1] or 0
	local hasProfession = profession and profession ~= ProfessionNone
	local professionName = hasProfession and ProfessionNames[profession] or ""
	local professionLevel = hasProfession and player:getProfessionLevel(profession) or 0
	local whetstone = additionalAttributes.whetstone
	local effectiveLevel = player:getEffectiveLevel()
	local descriptionFormat = item:getFormatDescription()
	local legacyLevel = player:getLevel()
	local itemQualityPrimaryStats = item:getQualityPrimaryStats()
	local itemQualitySecondaryStats = item:getQualitySecondaryStats()
	local qualityRolls = item:getQualityRolls()
	local qualityMaxRolls = item:getMaxQualityRolls()
	local itemType = itemTypeRaw:titleCase()

	itemType = professionName ~= "" and professionName .. " " .. itemType or itemType

	if not hasQualityName(itemTypeRaw) then
		local typeName = itemTypeRaw

		if typeName == "necklace" then
			typeName = "amulet"
		end

		qualityName = typeName:titleCase()
	end

	local description = item:getDescription()
	local qualityFormatted = false

	if string.find(descriptionFormat, "quality", 1, true) then
		local multiplier = QUALITY_EFFECTIVENESS_BY_TYPE[descriptionFormat] and QUALITY_EFFECTIVENESS_BY_TYPE[descriptionFormat][quality] or QUALITY_EFFECTIVENESS[quality]
		local pattern = "{([^}]+)}"
		local from, to = string.find(description, pattern, 1)

		if from ~= nil then
			local value = description:sub(from + 1, to - 1)

			if value:find(",") then
				value = value:split(",")
				value = tonumber(value[1])
			else
				value = tonumber(value)
			end

			if value then
				value = math.floor(value * multiplier)
				description = description:gsub(pattern, string.format("{%d, #77D463}", value))
			else
				local value = description:sub(from + 1, to - 1)

				if value:find("%%") then
					value = value:gsub("%%", "")
					value = tonumber(value)

					if value then
						value = string.format("%d%%", math.floor(value * multiplier))
						description = description:gsub(pattern, string.format("{%s%%, #77D463}", value))
					end
				end
			end
		end

		qualityFormatted = true
	end

	description = not qualityFormatted and g_spells:getGenericSpellDescription(itemName:lower()) or description

	local infusionValue = infusion[item:getId()] or {
		exp = 0
	}

	if infusionValue.exp > 0 then
		description = string.format("Provides %d Experience to a piece of Equipment when Infused into it. Infusion Experience is not lost when changing to a new Weapon or Armor, your current Infused Weapon or Armor can be Infused into a new Weapon or Armor for free.", infusionValue.exp)
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset(window)

	local header = window.header.itemHeader
	local info = header.info

	header:setVisible(true)
	header.item:setItem(item)
	info.name:setText(itemName:titleCase())

	if qualityName == "Quest Item" then
		info.name:setColor("#CED2D9")
	else
		info.name:setColor(ItemNameOverlayColors[qualityName] or color)
	end

	info.quality:setText(string.format("%s%s", qualityName, getInfusionPercent(grade, exp, requiredExp)))
	info.quality:setColor(ItemNameOverlayColors[qualityName] or color)

	if soulOwner ~= "" then
		if qualityName == "Quest Item" then
			if soulOwner ~= " " then
				if soulOwner == "Reward" then
					info.quality:setText("Reward")
				else
					description = description .. string.format("%sRequired for %s.", #description > 0 and "\n" or "", soulOwner)
				end
			end
		else
			info.quality:setText("Soulbound")
		end
	end

	info.tier:setText(string.format("[T%d] %s", tier, itemType))
	info.tier:setVisible(tier >= 0)

	local attributes = {
		{
			format = "{%s Attack, #CED2D9}",
			font = "poppins-16",
			list = body.base.list,
			values = {
				attack
			},
			condition = attack > 0 and hasQualityName(itemTypeRaw)
		},
		{
			format = "{%s Defense, #CED2D9}",
			font = "poppins-16",
			list = body.base.list,
			values = {
				defense
			},
			condition = defense > 0 and hasQualityName(itemTypeRaw)
		},
		{
			format = "{%s Healing, #CED2D9}",
			font = "poppins-16",
			list = body.base.list,
			values = {
				healing
			},
			condition = healing > 0 and hasQualityName(itemTypeRaw)
		},
		{
			format = "{%s Labor, #CED2D9}",
			font = "poppins-16",
			list = body.base.list,
			values = {
				labor
			},
			condition = labor > 0 and hasQualityName(itemTypeRaw)
		},
		{
			format = "{%s Durability, #CED2D9}",
			font = "poppins-16",
			list = body.base.list,
			values = {
				fishingDurability
			},
			condition = isFishingRod and fishingDurability > 0
		},
		{
			format = "%s",
			list = body.description.list,
			values = {
				description
			},
			condition = description ~= "" and not isFish
		},
		{
			format = "{Infusion: %d/%d, #CED2D9}",
			list = body.details.list,
			values = {
				exp,
				requiredExp
			},
			condition = grade < ITEM_GRADE_LAST and requiredExp > 0
		},
		{
			format = "Provides %d Experience to a piece of Equipment when Infused into it. Infusion Experience is not lost when changing to a new Weapon or Armor, your current Infused Weapon or Armor can be Infused into a new Weapon or Armor for free.",
			list = body.details.list,
			values = {
				exp + baseExp
			},
			condition = grade < ITEM_GRADE_LAST and baseExp > 0 and requiredExp > 0 and modules.game_infusion.GameInfusion.isVisible()
		},
		{
			format = "{+%s%% Ability bonus, #77D463}",
			list = body.attributes.list,
			values = {
				fishingAbilityBonus
			},
			condition = isFishingRod and fishingAbilityBonus > 0
		},
		{
			format = "{+%s%% Ability bonus, #77D463}",
			list = body.attributes.list,
			values = {
				fishingAbilityBonus
			},
			condition = isFishingHook and fishingAbilityBonus > 0
		},
		{
			format = "Weight: {%.2fkg, #77D463}",
			list = body.attributes.list,
			values = {
				weight
			},
			condition = weight > 0
		},
		{
			list = body.attribute_rolls.list,
			values = {
				qualityRolls,
				qualityMaxRolls
			},
			condition = not isFishingHook and not isFishingRod and qualityMaxRolls > 0,
			callback = function(widget)
				local panel = g_ui.createWidget("GameTooltipAttributeRollPanel", widget)

				for i = 1, qualityMaxRolls do
					local shard = g_ui.createWidget("GameTooltipAttributeRoll", panel)

					if i <= qualityRolls then
						shard:setOn(true)
					end
				end
			end
		},
		{
			format = "Whetstone: {+%d attack [%s], #77D463}",
			list = body.buff.list,
			values = {
				whetstone and whetstone.AP or 0,
				SecondsToClock(((whetstone and whetstone.time or 0) - g_clock.realMillis()) / 1000)
			},
			condition = whetstone and whetstone.AP > 0 and whetstone.time > g_clock.realMillis()
		},
		{
			format = "%s",
			list = bottom.description.list,
			values = {
				description
			},
			condition = description ~= "" and isFish
		},
		{
			format = "{%s, #CED2D9}",
			style = "GameTooltipAttributePrice",
			list = bottom.price.list,
			values = {
				hasPrice and math.floor(basePrice.sell * PriceMultiplierByQuality[quality]) or 0
			},
			condition = hasPrice
		},
		{
			format = "{Requires: %s level %i, %s}",
			list = bottom.levelRequirement.list,
			values = {
				professionName,
				requiredLevel,
				professionLevel < requiredLevel and "#FF5151" or "#77D463"
			},
			condition = requiredLevel > 0 and professionName ~= ""
		},
		{
			format = "{Requires: Effective level %i, %s}",
			list = bottom.levelRequirement.list,
			values = {
				requiredLevel,
				effectiveLevel < requiredLevel and "#FF5151" or "#77D463"
			},
			condition = requiredLevel > 0 and professionName == ""
		},
		{
			format = "{Requires: Legacy level %i, %s}",
			list = bottom.levelRequirement.list,
			values = {
				requiredLegacyLevel,
				legacyLevel < requiredLegacyLevel and "#FF5151" or "#77D463"
			},
			condition = requiredLegacyLevel > 0
		}
	}
	local mergedQualityPrimaryStats = {}

	for _, stat in ipairs(itemPrimaryStats) do
		local hasQualityStat = false

		for _, qualityStat in ipairs(itemQualityPrimaryStats) do
			if stat[1] == qualityStat[1] then
				hasQualityStat = qualityStat
				mergedQualityPrimaryStats[qualityStat[1]] = true

				break
			end
		end

		local attr

		if hasQualityStat then
			attr = {
				format = "{+%d %s, #FFA851} {[+%s], #A556FF}",
				list = body.primary.list,
				values = {
					stat[2],
					stats[stat[1]],
					hasQualityStat[2]
				},
				condition = not isFishingRod and not isFishingHook
			}
		else
			attr = {
				format = "{+%d %s, #FFA851}",
				list = body.primary.list,
				values = {
					stat[2],
					stats[stat[1]]
				},
				condition = not isFishingRod and not isFishingHook
			}
		end

		table.insert(attributes, attr)
	end

	for _, stat in ipairs(itemQualityPrimaryStats) do
		if not mergedQualityPrimaryStats[stat[1]] then
			local attr = {
				format = "{+%d %s, #A556FF}",
				list = body.primary.list,
				values = {
					stat[2],
					stats[stat[1]]
				},
				condition = not isFishingRod and not isFishingHook
			}

			table.insert(attributes, attr)
		end
	end

	local mergedQualitySecondaryStats = {}

	for _, stat in ipairs(itemSecondaryStats) do
		local hasQualityStat = false

		for _, qualityStat in ipairs(itemQualitySecondaryStats) do
			if stat[1] == qualityStat[1] then
				hasQualityStat = qualityStat
				mergedQualitySecondaryStats[qualityStat[1]] = true

				break
			end
		end

		local attr

		if hasQualityStat then
			attr = {
				format = "{+%d %s, #77D463} {[+%d], #A556FF}",
				list = body.secondary.list,
				values = {
					stat[2],
					stats[stat[1]],
					hasQualityStat[2]
				},
				condition = not isFishingRod and not isFishingHook
			}
		else
			attr = {
				format = "{+%d %s, #77D463}",
				list = body.secondary.list,
				values = {
					stat[2],
					stats[stat[1]]
				},
				condition = not isFishingRod and not isFishingHook
			}
		end

		table.insert(attributes, attr)
	end

	for _, stat in ipairs(itemQualitySecondaryStats) do
		if not mergedQualitySecondaryStats[stat[1]] then
			local attr = {
				format = "{+%d %s, #A556FF}",
				list = body.secondary.list,
				values = {
					stat[2],
					stats[stat[1]]
				},
				condition = not isFishingRod and not isFishingHook
			}

			table.insert(attributes, attr)
		end
	end

	for _, stat in ipairs(craftingStats) do
		local attr = {
			format = "{+%d %s, #77D463}",
			list = body.primary.list,
			values = {
				stat[2],
				craftStats[stat[1]]
			},
			condition = not isFishingRod and not isFishingHook
		}

		table.insert(attributes, attr)
	end

	local enchantment = additionalAttributes.enchantment and enchants[additionalAttributes.enchantment.itemId]

	if enchantment then
		local enchantmentName = enchantment.name

		if enchantmentName then
			enchantmentName = enchantmentName:titleCase()

			table.insert(attributes, {
				format = "{%s%s%s, #5DA4FB}",
				list = body.enchantment.list,
				values = {
					"",
					enchantmentName,
					enchantStats.name or ""
				},
				condition = enchantmentName ~= 0 and enchantmentName ~= ""
			})
		end

		for enchantmentAttribute, value in pairs(enchantment) do
			if enchantmentAttribute ~= "name" and enchantmentAttribute ~= "customDescription" then
				table.insert(attributes, {
					format = "{%s%s%s, #5DA4FB}",
					list = body.enchantment.list,
					values = {
						value > 0 and "+" or "-",
						value,
						enchantStats[enchantmentAttribute] or ""
					},
					condition = value ~= 0 and value ~= ""
				})
			end
		end

		local enchantmentCustomDescription = enchantment.customDescription

		if enchantmentCustomDescription then
			table.insert(attributes, {
				format = "{%s%s%s, #5DA4FB}",
				list = body.enchantment.list,
				values = {
					"",
					enchantmentCustomDescription,
					enchantStats.customDescription or ""
				},
				condition = enchantmentCustomDescription ~= 0 and enchantmentCustomDescription ~= ""
			})
		end
	end

	if item.isRecipe and not isFishingRod and not isFishingHook then
		local totalPrimary = 0
		local totalSecondary = 0

		if labor <= 0 then
			if tier >= 2 then
				totalPrimary = totalPrimary + 1
			end

			if tier >= 4 then
				totalPrimary = totalPrimary + 1
			end

			if tier >= 3 then
				totalSecondary = totalSecondary + 1
			end

			if tier >= 5 then
				totalSecondary = totalSecondary + 1
			end

			if tier >= 6 then
				totalSecondary = totalSecondary + 1
			end
		else
			if tier >= 2 then
				totalPrimary = totalPrimary + 1
			end

			if tier >= 3 then
				totalPrimary = totalPrimary + 1
			end
		end

		local attr = {
			format = "{%dx Random Attribute, #FFA851}",
			list = body.primary.list,
			values = {
				totalPrimary
			},
			condition = totalPrimary > 0
		}

		table.insert(attributes, attr)

		attr = {
			format = "{%dx Random Attribute, #77D463}",
			list = body.secondary.list,
			values = {
				totalSecondary
			},
			condition = totalSecondary > 0
		}

		table.insert(attributes, attr)
	end

	if equipmentSetBonus then
		local itemGroupCount = g_gameTooltip.getEquipmentItemGroupCount()

		for i = #equipmentSetBonus, 1, -1 do
			local bonusList = equipmentSetBonus[i]
			local count = itemGroupCount[itemGroupType] or 0
			local color = count >= bonusList.count and "#77D463" or "#7E828B"
			local attributePanel = i == 1 and bottom.bonusParcial or bottom.bonusTotal

			attributePanel.title:setText(string.format("Set Bonus - %s (%d/%d)", itemGroupType:titleCase(), math.min(count, bonusList.count), bonusList.count))
			attributePanel.title:setTextColor(color)
			attributePanel.title:setVisible(true)

			for _, value in ipairs(bonusList.list) do
				local attr = {
					condition = true,
					format = "{%s, %s}",
					list = attributePanel.list,
					values = {
						value,
						color
					}
				}

				table.insert(attributes, attr)
			end

			if count >= bonusList.count then
				break
			end
		end
	end

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove, isCustomWindow)
end

function g_gameTooltip.displayCreature(outfit, outfitId, extraData, disappearOnMove)
	local player = g_game.getLocalPlayer()
	local window = g_gameTooltip.window

	if not window or not outfit or not player then
		return
	end

	local name = ""
	local health = 0
	local speed = 0
	local weight = 0
	local packcapacity = 0
	local cargoslots = 0
	local description = ""
	local subtitle = ""
	local color = "#FBFB79"
	local direction = South
	local strength = 0
	local height = 0
	local trait = {}
	local abilities = {}
	local breedLimit = {
		total = 0,
		current = 0
	}
	local ship = ShipParts[outfitId]

	if ship then
		name = ship.name or ""
		health = ship.health or 0
		speed = ship.speed or 0
		weight = ship.weight or 0
		packcapacity = ship.packcapacity or 0
		cargoslots = ship.cargoslots or 0
		description = ship.description or ""
		subtitle = ship.type or ""
		direction = ship.direction or South
	end

	local wagon = WagonParts[outfitId]

	if wagon then
		name = wagon.name or ""
		health = wagon.health or 0
		weight = wagon.weight or 0
		packcapacity = wagon.capacity or 0
		description = wagon.description or ""
		subtitle = string.format("T%s Wagon", wagon.tier or "")
		direction = wagon.direction or South
	end

	local moaEquipment = MoaEquipment[outfitId]

	if moaEquipment then
		name = moaEquipment.name or ""
		description = moaEquipment.description or ""
		subtitle = moaEquipment.type or ""
	end

	if not moaEquipment and extraData and extraData.category == "mount" then
		local moa = extraData

		name = moa.sex == 0 and "Female Moa" or "Male Moa"
		health = moa.health or 0
		speed = moa.speed or 0
		weight = moa.weight or 0
		strength = moa.strength or 0
		height = moa.height or 0
		subtitle = moa.tier and string.format("T%s Moa", moa.tier) or ""
		direction = moa.direction or South
		trait = extraData.trait and MoaTraits[extraData.trait] or {}
		abilities = extraData.abilities or {}

		if moa.breedLimit then
			breedLimit = moa.breedLimit

			if type(breedLimit) == "number" then
				breedLimit = {
					current = 0,
					total = breedLimit
				}
			end
		end
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.creatureHeader
	local info = header.info

	header:setVisible(true)
	header.creature:setOutfit(outfit)
	header.creature:setDirection(direction)
	info.name:setText(name)

	if subtitle ~= "" then
		info.subtitle:setText(subtitle:titleCase())
		info.subtitle:setColor(color)
	end

	local attributes = {
		{
			format = "Height: {%scm, #77D463}",
			list = body.attributes.list,
			values = {
				height
			},
			condition = height > 0
		},
		{
			format = "Weight: {%skg, #77D463}",
			list = body.attributes.list,
			values = {
				weight
			},
			condition = weight > 0
		},
		{
			format = "Health: {%s, #77D463}",
			list = body.attributes.list,
			values = {
				health
			},
			condition = health > 0
		},
		{
			format = "Strength: {%s, #77D463}",
			list = body.attributes.list,
			values = {
				strength
			},
			condition = strength > 0
		},
		{
			format = "Speed: {%s, #77D463}",
			list = body.attributes.list,
			values = {
				speed
			},
			condition = speed > 0
		},
		{
			format = "Breed limit: {%d, #77D463}/{%d, #77D463}",
			list = body.attributes.list,
			values = {
				breedLimit.current,
				breedLimit.total
			},
			condition = breedLimit.total > 0
		},
		{
			format = "Capacity: {%s, #77D463}",
			list = body.attributes.list,
			values = {
				packcapacity
			},
			condition = packcapacity > 0
		},
		{
			format = "%s",
			list = bottom.description.list,
			values = {
				description
			},
			condition = description ~= ""
		},
		{
			format = "{%s:, #FFA851}  %s",
			list = bottom.trait.list,
			values = {
				trait.name,
				trait.description
			},
			condition = trait.description and trait.description ~= ""
		},
		{
			format = "Auxiliary Slots: {%s, #77D463}",
			list = body.attributes.list,
			values = {
				cargoslots
			},
			condition = cargoslots and cargoslots > 0
		}
	}

	for _, ability in ipairs(abilities) do
		local skillDescription = g_spells:getGenericSpellDescription(ability)
		local spell = g_spells:getSpell(ability)
		local attr = {
			format = "{%s:, #A556FF}  %s",
			list = bottom.skills.list,
			values = {
				spell and spell.name:titleCase() or "",
				skillDescription
			},
			condition = skillDescription and skillDescription ~= ""
		}

		table.insert(attributes, attr)
	end

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayReputationPoints(widget, disappearOnMove)
	local window = g_gameTooltip.window
	local tooltip = widget.reputationPointsTooltip

	if not window or not tooltip then
		return
	end

	local body = window.body

	g_gameTooltip.reset()

	local header = window.header.reputationPointsHeader

	header.text:setText(tooltip.header.text)
	header:setVisible(true)

	local orderPoints = tooltip.points and tooltip.points[REPUTATION_ORDER] or 0
	local mercenaryPoints = tooltip.points and tooltip.points[REPUTATION_MERCENARY] or 0
	local criminalPoints = tooltip.points and tooltip.points[REPUTATION_CRIMINAL] or 0
	local attributes = {
		{
			condition = true,
			format = "%s",
			style = "GameTooltipAttributeReputationCriminal",
			list = body.reputation.list,
			values = {
				criminalPoints
			}
		},
		{
			condition = true,
			format = "%s",
			style = "GameTooltipAttributeReputationMercenary",
			list = body.reputation.list,
			values = {
				mercenaryPoints
			}
		},
		{
			condition = true,
			format = "%s",
			style = "GameTooltipAttributeReputationOrder",
			list = body.reputation.list,
			values = {
				orderPoints
			}
		}
	}

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayReputationPassive(widget, disappearOnMove)
	local window = g_gameTooltip.window
	local tooltip = widget.reputationPassiveTooltip

	if not window or not tooltip then
		return
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.reputationHeader
	local info = header.info

	header:setVisible(true)

	local image = header.image

	image:setImageSource(tooltip.header.image)
	info.title:setText(tooltip.header.title)
	info.subtitle:setText(tooltip.header.subtitle)
	info.subtitle:setColor("#36F991")

	local attributes = {
		{
			format = "%s",
			list = body.description.list,
			values = {
				tooltip.description
			},
			condition = tooltip.description and tooltip.description ~= ""
		},
		{
			format = "Cost points: {%s, #FBFB79}",
			style = "ReputationTooltipAttributeCost",
			list = bottom.price.list,
			values = {
				tooltip.cost
			},
			condition = tooltip.cost
		}
	}

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayAttributesPoints(widget, disappearOnMove)
	local window = g_gameTooltip.window
	local tooltip = widget.attributesPointsTooltip

	if not window or not tooltip then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.attributesPointsHeader

	header.text:setText(tooltip.header.text)
	header:setVisible(true)

	local archetypesLevels = player:getArchetypesLevels()
	local totalActivePoints = 0
	local totalInactivePoints = 0
	local attributes = {
		{
			condition = true,
			font = "poppins-14",
			format = "Current: {+%s points, #77D463}",
			list = body.activeArcheypesPoints.list
		},
		{
			condition = true,
			font = "poppins-14",
			format = "Inactive: {+%s points, #77D463}",
			list = body.inactiveArcheypesPoints.list
		},
		{
			condition = true,
			style = "GameTooltipArchetypeSpacer",
			list = body.archetypeSeparator.list
		}
	}

	for _, archetypeData in ipairs(archetypesLevels) do
		local archetypeName = ARCHETYPES_DATA[archetypeData.id].name

		if not archetypeData.active then
			local points = getArchetypeExtraPoints(archetypeData.level)
			local attribute = {
				condition = true,
				format = "{[%d] %s, #CED2D9} {+%d point%s, white}",
				style = "GameTooltipArchetype",
				list = body.inactiveArcheypes.list,
				values = {
					archetypeData.level,
					archetypeName,
					points,
					points > 1 and "s" or ""
				},
				callback = function(widget)
					local icon = widget:recursiveGetChildById("icon")

					icon:setImageSource("/images/ui/icons/archetypes/28x28/" .. archetypeName:lower())
				end
			}

			table.insert(attributes, attribute)

			totalInactivePoints = totalInactivePoints + points
		else
			local points = getArchetypeExtraPoints(archetypeData.level)
			local attribute = {
				condition = true,
				format = "{[%d] %s, #CED2D9} {+%d point%s, white}",
				style = "GameTooltipArchetype",
				list = body.activeArcheypes.list,
				values = {
					archetypeData.level,
					archetypeName,
					points,
					points > 1 and "s" or ""
				},
				callback = function(widget)
					local icon = widget:recursiveGetChildById("icon")

					icon:setImageSource("/images/ui/icons/archetypes/28x28/" .. archetypeName:lower())
				end
			}

			table.insert(attributes, attribute)

			totalActivePoints = totalActivePoints + points
		end
	end

	attributes[1].values = {
		totalActivePoints
	}
	attributes[2].values = {
		totalInactivePoints
	}

	table.insert(attributes, {
		condition = true,
		format = "Total: {+%d points, #77D463}",
		font = "poppins-16",
		list = bottom.description.list,
		values = {
			totalActivePoints + totalInactivePoints
		},
		callback = function(widget)
			widget:setMarginBottom(-6)
		end
	})
	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayRangersCompanyPremiumTooltip(widget, disappearOnMove)
	local window = g_gameTooltip.window
	local tooltip = widget.premiumTooltip

	if not window or not tooltip then
		return
	end

	g_gameTooltip.hideInstant = true
	g_gameTooltip.showInstant = true

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.premiumTooltipHeader

	header.text:setText(tooltip.header.text)
	header:setVisible(true)
	header.complement:hide()
	header:setHeight(50)
	header.icon:show()
	header:setPaddingTop(20)

	local isPremium = player:isPremium()
	local attributes = {}

	if not isPremium then
		attributes = {
			{
				condition = true,
				format = "{%s, #36F991}",
				list = body.description.list,
				values = {
					"Unlock a Reduced Cooldown with Patron!"
				},
				callback = function(widget)
					widget:setTextAlign(AlignCenter)
				end
			}
		}
	else
		window.bottom:setOn(true)
	end

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayEffortPremiumTooltip(widget, disappearOnMove)
	g_gameTooltip.currentWidget = widget

	local window = g_gameTooltip.window
	local tooltip = widget.premiumEffortTooltip

	if not window or not tooltip then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.premiumTooltipHeader

	header.text:setText(tooltip.header.text)
	header.complement:setText(tooltip.header.complement)
	header.complement:show()
	header:setHeight(header.text:getTextSize().height + header.complement:getTextSize().height + 40)
	header.text:setTextColor("white")
	header.icon:hide()
	header.lock:hide()
	header.text:setChecked(true)
	header:setVisible(true)
	header:setPaddingTop(-30)

	local isPremium = player:isPremium()
	local attributes = {}

	if not isPremium then
		attributes = {
			{
				condition = true,
				format = "{%s, %s}",
				style = "GameTooltipPremiumFeature",
				list = body.premiumFeatures.list,
				values = {
					"3x Faster Effort Regen for Land",
					isPremium and "#36F991" or "#A6AAB2"
				},
				callback = function(widget)
					widget:setTextAlign(AlignCenter)
				end
			},
			{
				condition = true,
				format = "{%s, #36F991}",
				font = "poppins-16",
				list = bottom.description.list,
				values = {
					"Unlock Faster Effort Regen with Premium!"
				},
				callback = function(widget)
					widget:setTextAlign(AlignCenter)
				end
			}
		}
	else
		attributes = {
			{
				condition = true,
				format = "{%s, %s}",
				style = "GameTooltipPremiumFeature",
				list = body.premiumFeatures.list,
				values = {
					"3x Faster Effort Regen for Land",
					isPremium and "#36F991" or "#A6AAB2"
				},
				callback = function(widget)
					widget:setTextAlign(AlignCenter)
					widget:setOn(true)
					widget.lock:hide()
				end
			}
		}
	end

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.displayExperienceTooltip(widget, disappearOnMove)
	local window = g_gameTooltip.window
	local tooltip = widget.experienceTooltip

	if not window or not tooltip then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local body = window.body
	local bottom = window.bottom

	g_gameTooltip.reset()

	local header = window.header.experienceTooltipHeader

	header:show()
	header.level:setColoredText(tooltip.header.level)
	header.death_penalty:setText(tooltip.header.death_penalty)
	window:setWidth(350)

	local isPremium = player:isPremium()
	local attributes = {
		{
			condition = true,
			format = "{%s: %d%%/100%%, %s}",
			style = "GameTooltipPremiumFeature",
			list = body.premiumFeatures.list,
			values = {
				"Rested Experience Pool",
				tooltip.body.rested_experience,
				isPremium and "#36F991" or "#A6AAB2"
			},
			callback = function(widget)
				widget:setTextAlign(AlignCenter)
				widget:setOn(true)
				widget.lock:setVisible(not isPremium)
				widget:setWidth(310)
				widget.value:setMarginLeft(10)
			end
		},
		{
			condition = true,
			format = "%s",
			list = body.description.list,
			values = {
				"Unlocks at Legacy Level 20. Rested Experience is passively earned when you're out of combat or while offline. The amount of Rested Experience earned is based on your Legacy Level. Experience gains are doubled until the Rested Experience bonus is depleted."
			},
			callback = function(widget)
				widget:setTextAlign(AlignCenter)
			end
		}
	}

	if not isPremium then
		table.insert(attributes, {
			condition = true,
			format = "{%s, #36F991}",
			font = "poppins-16",
			list = bottom.description.list,
			values = {
				"Unlock Rested Experience with Patron!"
			},
			callback = function(widget)
				widget:setTextAlign(AlignCenter)
			end
		})
	end

	g_gameTooltip.setupTooltip(window, attributes, disappearOnMove)
end

function g_gameTooltip.setupTooltip(window, attributes, disappearOnMove, isCustomWindow)
	g_gameTooltip.addAttributesList(attributes)

	local hiddenCount = 0

	for idx, child in ipairs(window.body:getChildren()) do
		local show = child.list:hasChildren()

		child:setVisible(show)

		if not show then
			hiddenCount = hiddenCount + 1
		end
	end

	if hiddenCount == #window.body:getChildren() then
		window.body:setVisible(false)
	else
		window.body:setVisible(true)
	end

	hiddenCount = 0

	for idx, child in ipairs(window.bottom:getChildren()) do
		local show = child.list:hasChildren()

		child:setVisible(show)

		if not show then
			hiddenCount = hiddenCount + 1
		end
	end

	if window.bottom:isOn() then
		window.bottom:setVisible(false)
	else
		window.bottom:setVisible(true)
	end

	function window.onVisibilityChange(window, visible)
		if not visible then
			return
		end

		if not window.body:isVisible() and not window.bottom:isVisible() then
			window.header:setChecked(false)
		else
			window.header:setChecked(true)
		end
	end

	if g_gameTooltip.showInstant then
		g_gameTooltip.window:show()
		g_gameTooltip.window:setOpacity(1)
		g_gameTooltip.window:raise()
		g_gameTooltip.move(true)

		g_gameTooltip.showInstant = nil

		return
	end

	if not isCustomWindow then
		g_gameTooltip.disappearOnMove = disappearOnMove
		g_gameTooltip.openEvent = scheduleEvent(function()
			window:setVisible(true)
			g_layout.onOpenWindow(window, 200, true)
			g_gameTooltip.move(true)
		end, 30)
	end
end

function g_gameTooltip.hide()
	if not g_gameTooltip.window or not g_gameTooltip.window:isVisible() then
		return
	end

	if g_gameTooltip.openEvent then
		removeEvent(g_gameTooltip.openEvent)

		g_gameTooltip.openEvent = nil
	end

	if g_gameTooltip.hideInstant then
		g_gameTooltip.window:lower()
		g_gameTooltip.window:setOpacity(0)
		g_gameTooltip.window:hide()

		g_gameTooltip.hideInstant = nil

		return
	end

	if g_gameTooltip.window:getOpacity() ~= 1 then
		g_gameTooltip.window:lower()
		g_gameTooltip.window:setOpacity(0)
		g_gameTooltip.window:hide()

		return
	end

	g_effects.fadeOut(g_gameTooltip.window, 200, nil, nil, function()
		g_gameTooltip.window:lower()
		g_gameTooltip.window:hide()
	end)
end

connect(g_app, {
	onTerminate = g_gameTooltip.terminate
})

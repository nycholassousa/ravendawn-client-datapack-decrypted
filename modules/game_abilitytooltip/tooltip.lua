-- chunkname: @/modules/game_abilitytooltip/tooltip.lua

g_abilityTooltip = {}

local shiftCheckEvent
local lastShiftState = false

local function getDistanceBetween(p1, p2)
	return math.pow(p1.x - p2.x, 2) + math.pow(p1.y - p2.y, 2)
end

function g_abilityTooltip.move(first)
	if not first and (not g_abilityTooltip.window:isVisible() or g_abilityTooltip.window:getOpacity() < 0.1) then
		return
	end

	if not first and g_abilityTooltip.disappearOnMove then
		local pos = g_window.getMousePosition()
		local windowPos = g_abilityTooltip.window:getPosition()

		if getDistanceBetween(pos, windowPos) > 20 then
			g_abilityTooltip.hide()

			g_abilityTooltip.disappearOnMove = false
		end

		return
	end

	local tooltipSize = g_abilityTooltip.window:getSize()
	local parentWidget = g_abilityTooltip.customParentWidget or g_abilityTooltip.currentWidget

	if not parentWidget then
		return
	end

	local pos = {
		x = parentWidget:getX() + parentWidget:getWidth() / 2 - tooltipSize.width / 2,
		y = parentWidget:getY() - tooltipSize.height
	}
	local windowSize = g_window.getSize()

	if pos.x <= 0 then
		pos.x = pos.x - pos.x + 3
	elseif pos.x + tooltipSize.width >= windowSize.width then
		pos.x = pos.x + windowSize.width - (pos.x + tooltipSize.width) - 3
	end

	if pos.y <= 0 then
		pos.y = pos.y + tooltipSize.height + parentWidget:getHeight() + 10
	end

	g_abilityTooltip.window:setPosition(pos)
end

function g_abilityTooltip.onResizeTooltip(widget)
	if not widget then
		return
	end

	widget:setHeight(widget.content:getHeight())

	if not g_abilityTooltip.window or widget ~= g_abilityTooltip.window then
		return
	end

	g_abilityTooltip.move(true)
end

function g_abilityTooltip.onHover(widget, hovered)
	local widget = widget or g_ui.getHoveredWidget()

	if not widget or not widget.abilityTooltip then
		g_abilityTooltip.hide()

		return
	end

	if hovered == nil then
		hovered = true
	end

	if widget ~= g_abilityTooltip.currentWidget then
		g_abilityTooltip.hide()
	end

	if hovered then
		g_abilityTooltip.currentWidget = widget

		if widget.ravenCardAbilityInfo then
			g_abilityTooltip.displayCardAbility(widget.ravenCardAbilityInfo)
		else
			g_abilityTooltip.display(widget.abilityId, widget.abilityTier, false, widget)
		end
	end
end

function g_abilityTooltip.init()
	g_ui.importStyle("tooltip.otui")
	connect(UIWidget, {
		onHoverChange = g_abilityTooltip.onHover
	})
	addEvent(function()
		g_abilityTooltip.window = g_ui.createWidget("AbilityTooltipWindow", rootWidget)

		g_abilityTooltip.window:setId("abilityTooltip")
		g_abilityTooltip.window:hide()

		function g_abilityTooltip.window.onMouseMove()
			g_abilityTooltip.move()
		end
	end)
end

function g_abilityTooltip.terminate()
	disconnect(UIWidget, {
		onHoverChange = g_abilityTooltip.onHover
	})

	g_abilityTooltip.currentWidget = nil

	if g_abilityTooltip.window then
		g_abilityTooltip.window:destroy()

		g_abilityTooltip.window = nil
	end
end

function g_abilityTooltip.display(abilityId, abilityTier, disappearOnMove, widget)
	local window = g_abilityTooltip.window

	if not window then
		return
	end

	local content = window.content
	local spell, passiveName = g_spells:getSpell(abilityId)

	if not spell or not passiveName then
		return
	end

	local isPassive = spell.id == nil

	if isPassive then
		local hasPoint = not g_spells:isFishingAbility(passiveName) and not g_spells:isShipAbility(passiveName)

		spell = {
			name = passiveName:titleCase(),
			points = hasPoint and 3
		}
	end

	local player = g_game.getLocalPlayer()

	if not spell or not player then
		return
	end

	local isCraftingAbility = g_spells:isCraftingAbility(spell.name:lower())

	content.bottomPanel:showAllChildren()

	content.abilityId = abilityId
	content.abilityTier = abilityTier

	content.topPanel.icon:show()
	content.topPanel.card:hide()
	content.topPanel.name:setText(spell.name)
	content.topPanel.icon:setImageSource(string.format("/images/ui/icons/abilitybar/%s", spell.name:lower()))
	content.topPanel.icon:setTextureRadius(100)
	content.topPanel.icon:setSize({
		width = isCraftingAbility and 44 or 50,
		height = isCraftingAbility and 44 or 50
	})
	content.topPanel.icon:setImageOffset({
		x = isCraftingAbility and 5 or 0,
		y = isCraftingAbility and 5 or 0
	})
	content.topPanel.castType:setText(g_spells:getType(spell.name:lower()))
	content.description_panel.tier_description_separator:setVisible(false)
	content.description_panel.tier_description:setVisible(false)

	if spell.points then
		window.topPoints:show()
		window.topPoints:setText(string.format("Points cost: %s", spell.points))
	else
		window.topPoints:hide()
	end

	content.bottomPanel.cost:setIcon(nil)
	content.bottomPanel.cost:setTextOffset({
		x = 0,
		y = 0
	})
	content.bottomPanel.spellBottomPanel:hide()

	if isCraftingAbility or spell.cost and (spell.cost.mana or spell.cost.health) then
		local cost = isCraftingAbility and {
			"Labor Required:",
			spell.labour
		} or spell.cost.mana and {
			"Mana Cost:",
			math.floor(spell.cost.mana[1] / 100 * player:getBaseMaxMana())
		} or {
			"Health Cost:",
			math.floor(spell.cost.health[1] / 100 * player:getBaseMaxHealth())
		}

		content.bottomPanel.cost:setColoredText(GetHighlightedText(string.format("%s {%i, #36F991}", unpack(cost))))
	else
		content.bottomPanel.cost:setText(isPassive and "" or "No cost")
	end

	if isCraftingAbility or spell.cooldown then
		local cd = math.max(1500, not spell.cooldown and isCraftingAbility and 5000 or spell.cooldown) / 1000

		content.bottomPanel.constantsPanel.cooldown:setText(isCraftingAbility and spell.roundCooldown and string.format("%i rounds", spell.roundCooldown) or cd == math.floor(cd) and cd .. "s" or string.format("%.1fs", cd))
		content.bottomPanel.constantsPanel.cooldown:show()
	else
		content.bottomPanel.constantsPanel.cooldown:hide()
	end

	local showResource = not g_game.isInShip() and not isCraftingAbility and spell.type ~= "trinket" and not g_spells:isPotionAbility(spell.id) and not isPassive

	content.bottomPanel.constantsPanel.aether:setVisible(showResource)

	if isCraftingAbility then
		content.topPanel.useType:setText("Crafting ability")
	elseif g_game.isInShip() then
		content.topPanel.useType:setText("Ship ability")
	end

	if isCraftingAbility or not spell.resource or spell.resource.none then
		content.bottomPanel.constantsPanel.aether:hide()
	else
		content.bottomPanel.constantsPanel.aether:show()
	end

	if not isCraftingAbility and spell.resource and not spell.resource.none then
		if spell.resource.gain then
			if spell.resource.gain == 0 then
				content.bottomPanel.constantsPanel.aether:setColoredText(GetHighlightedText("{+X, #A556FF}"))
			else
				content.bottomPanel.constantsPanel.aether:setText("+" .. spell.resource.gain)
			end
		end

		if spell.resource.consume then
			content.bottomPanel.constantsPanel.aether:setColoredText(GetHighlightedText("{-50, #FF5151}"))
		end
	end

	content.topPanel.useType:setText(spell.crosshair and "Crosshair ability" or spell.needTarget and "Single target ability" or spell.selfTarget and not spell.needTarget and "Self target ability" or not spell.selfTarget and not spell.needTarget and "Self target ability")
	content.bottomPanel:setHeight(40)

	local constantsPanel = content.bottomPanel.constantsPanel

	constantsPanel.horizontalSeparator1:hide()
	constantsPanel.horizontalSeparator2:hide()

	local numberOfVisibleChilds = 0

	for _, child in pairs(constantsPanel:getChildren()) do
		if child:isVisible() then
			numberOfVisibleChilds = numberOfVisibleChilds + 1
		end
	end

	if numberOfVisibleChilds > 1 then
		constantsPanel.horizontalSeparator1:show()
	end

	if numberOfVisibleChilds > 2 then
		constantsPanel.horizontalSeparator2:show()
	end

	local function shiftCheck(abilityId, abilityTier)
		if lastShiftState ~= g_keyboard.isShiftPressed() and content:isVisible() and abilityId == content.abilityId then
			lastShiftState = g_keyboard.isShiftPressed()

			local description = g_spells:getSpellDescription(abilityId, abilityTier)

			if description and content.description_panel.description:getText() ~= description then
				content.description_panel.description:setColoredText(GetHighlightedText(description, "#cac2b0"))
			end
		end

		shiftCheckEvent = scheduleEvent(function()
			shiftCheck(abilityId, abilityTier)
		end, 100)
	end

	lastShiftState = g_keyboard.isShiftPressed()

	local description = g_spells:getSpellDescription(abilityId, abilityTier)

	if description then
		content.description_panel.description:setColoredText(GetHighlightedText(description, "#cac2b0"))

		if widget.abilityTooltipTierDetails then
			local tierDescription = g_spells:getSpellTierDescription(abilityId, abilityTier)

			if tierDescription then
				content.description_panel.tier_description_separator:setVisible(true)
				content.description_panel.tier_description:setVisible(true)
				content.description_panel.tier_description:setColoredText(GetHighlightedText(tierDescription, "#cac2b0"))
			end
		end

		g_layout.onOpenWindow(window, 200, true)
		g_abilityTooltip.move(true)

		g_abilityTooltip.disappearOnMove = disappearOnMove

		shiftCheck(abilityId, abilityTier)
	end
end

function g_abilityTooltip.displayCardAbility(info, disappearOnMove)
	local window = g_abilityTooltip.window

	if not window then
		return
	end

	local content = window.content
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	content.topPanel.name:setText(info.name:titleCase())
	content.topPanel.name:setTextColor(CardRarityToColor[info.rarity])
	content.topPanel.icon:hide()
	content.topPanel.card:show()
	window.topPoints:hide()
	content.description_panel.tier_description_separator:setVisible(false)
	content.description_panel.tier_description:setVisible(false)
	content.topPanel.card:setData({
		name = info.name,
		rarity = info.rarity
	})
	content.topPanel.useType:setText("RavenCard")
	content.topPanel.castType:setText(CardRarityToName[info.rarity])
	content.bottomPanel:hideAllChildren()
	content.bottomPanel:setHeight(5)

	local cardData = g_ravencards:getCardByName(info.name)

	if cardData then
		local spellInfo = g_spells:getSpell(cardData.spells[1])

		if spellInfo then
			content.bottomPanel:setHeight(40)
			content.bottomPanel.spellBottomPanel.archetype:setText(ArchetypeNames[spellInfo.archetype])
			content.bottomPanel.spellBottomPanel.archetype:setImageSource(string.format("/images/ui/icons/archetypes/28x28/%s", ArchetypeNames[spellInfo.archetype]:lower()))
			content.bottomPanel.spellBottomPanel.skill:setImageSource(string.format("/images/ui/icons/abilitybar/%s", spellInfo.name:lower()))
			content.bottomPanel.spellBottomPanel.skill:setText(spellInfo.name)
			content.bottomPanel.spellBottomPanel:show()
			content.bottomPanel:show()
		end
	end

	lastShiftState = g_keyboard.isShiftPressed()

	local description = info.description

	if description then
		content.description_panel.description:setColoredText(GetHighlightedText(description, "#cac2b0"))
		g_layout.onOpenWindow(window, 200, true)

		g_abilityTooltip.customParentWidget = info.parentWidget

		g_abilityTooltip.move(true)

		g_abilityTooltip.disappearOnMove = disappearOnMove
	end
end

function g_abilityTooltip.hide()
	if not g_abilityTooltip.window then
		return
	end

	g_abilityTooltip.window:setOpacity(0)
	g_abilityTooltip.window:lower()
	g_abilityTooltip.window:hide()
	removeEvent(shiftCheckEvent)

	shiftCheckEvent = nil
end

connect(g_app, {
	onTerminate = g_abilityTooltip.terminate
})

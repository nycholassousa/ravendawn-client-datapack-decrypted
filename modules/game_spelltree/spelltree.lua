-- chunkname: @/modules/game_spelltree/spelltree.lua

GameSpellTree = GameSpellTree or {
	cardsToggled = false,
	currentSelectedCard = {},
	activePassivesPerArchetype = {}
}
assetPathLogo = "/images/ui/icons/archetypes/"
assetPathAbilityIcon = "/images/ui/icons/abilitybar/"
archetypePanelNames = {
	[ArchetypeWarfare] = "WarfarePanel",
	[ArchetypeArchery] = "ArcheryPanel",
	[ArchetypeShadow] = "ShadowPanel",
	[ArchetypeProtection] = "ProtectionPanel",
	[ArchetypeWizardry] = "WizardryPanel",
	[ArchetypeHoly] = "HolyPanel",
	[ArchetypeSpiritual] = "SpiritualPanel",
	[ArchetypeWitchcraft] = "WitchcraftPanel"
}
archetypeSlots = {}

local archetypeColors = {
	[ArchetypeWarfare] = "#f68300",
	[ArchetypeHoly] = "#d2d490",
	[ArchetypeSpiritual] = "#dc0233",
	[ArchetypeArchery] = "#8fd932",
	[ArchetypeShadow] = "#c568ae",
	[ArchetypeProtection] = "#fff20e",
	[ArchetypeWizardry] = "#4706a0",
	[ArchetypeWitchcraft] = "#0a5fb3"
}

function GameSpellTree:init()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Archetypes, GameSpellTree.onExtendedOpcode)
	g_ui.importStyle("styles/styles.otui")
	g_ui.importStyle("styles/replace_active_archetype_modal.otui")
	g_ui.importStyle("styles/cards.otui")
	g_ui.importStyle("styles/archetype_tree.otui")
	g_ui.importStyle("styles/spelltree.otui")
	g_ui.importStyle("main.otui")
	dofile("tree.lua")

	self.window = g_ui.createWidget("SpellTreeWindow", modules.game_interface.getHUDPanel())
	self.contentPanel = self.window:recursiveGetChildById("contentPanel")
	self.archetypesPanel = self.window:recursiveGetChildById("archetypesPanel")
	self.resetArchetypes = self.window:recursiveGetChildById("resetArchetypes")
	self.skillPointsLabel = self.contentPanel:getChildById("pointsPanel"):getChildById("skillPointsLabel")
	self.legacySkillPointsLabel = self.contentPanel:getChildById("pointsPanel"):getChildById("legacySkillPointsLabel")
	self.effectiveLevel = self.contentPanel:recursiveGetChildById("effectiveLevel")
	self.infoIcon = self.contentPanel:recursiveGetChildById("infoIcon")
	self.cardSelectionWindow = g_ui.createWidget("CardSelectionWindow", self.window)

	connect(self.window, {
		onVisibilityChange = function(widget, visible)
			if not visible then
				self.cardSelectionWindow:hide()
				widget:blockInputPanel(false)
			end
		end
	})
	self.infoIcon:setTooltip("Your effective level is the average\n level of your active archetypes\n\nYou start with 1 skill point at level 1, and gain \n1 additional skill every effective level.")

	self.archetypeSlots = {}

	for i = 1, 3 do
		self.archetypeSlots[i] = self.window:recursiveGetChildById("tree" .. i)
	end

	connect(g_game, {
		onGameStart = self.onGameStart,
		onGameEnd = self.onGameEnd,
		onCoinBalance = self.onBalanceChange
	})
	connect(LocalPlayer, {
		onLevelChange = self.onLevelChange,
		onArchetypeActiveChange = self.onArchetypeActiveChange,
		onArchetypeLevelChange = self.onArchetypeLevelChange,
		onEffectiveLevelChange = self.onEffectiveLevelChange
	})
	connect(GameCards, {
		onRemoveCard = self.onRemoveCard,
		onAddCard = self.onAddCard,
		onReceiveSpellCards = self.onReceiveSpellCards
	})
	g_keyboard.bindKeyDown("K", self.toggle)
end

function GameSpellTree:terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Archetypes)

	if self.window then
		self.window:destroy()

		self.window = nil
	end

	self:destroyPopups()

	self.contentPanel = nil

	disconnect(g_game, {
		onGameStart = self.onGameStart,
		onGameEnd = self.onGameEnd,
		onCoinBalance = self.onBalanceChange
	})
	disconnect(LocalPlayer, {
		onLevelChange = self.onLevelChange,
		onArchetypeActiveChange = self.onArchetypeActiveChange,
		onArchetypeLevelChange = self.onArchetypeLevelChange,
		onEffectiveLevelChange = self.onEffectiveLevelChange
	})
	disconnect(GameCards, {
		onRemoveCard = self.onRemoveCard,
		onAddCard = self.onAddCard,
		onReceiveSpellCards = self.onReceiveSpellCards
	})
	g_keyboard.unbindKeyDown("K")
end

function GameSpellTree.onBalanceChange(premium, amount)
	GameSpellTree.contentPanel.currencyPanel:recursiveGetChildById("currencyAmount"):setText(tostring(amount))
end

function GameSpellTree.onLevelChange(localPlayer, currentLevel)
	if not localPlayer then
		return
	end

	addEvent(function()
		local levelToUnlockArchetypes = {
			7,
			15
		}

		for archetypeIndex, levelToUnlock in ipairs(levelToUnlockArchetypes) do
			local slot = GameSpellTree.archetypeSlots[archetypeIndex + 1]

			if slot then
				if not slot:getChildById("slotContent") then
					local slotContent = g_ui.createWidget("EmptySpellTreeContent", slot)

					if levelToUnlock <= currentLevel then
						if not slotContent:getChildById("option"):isOn() then
							signalcall(GameSpellTree.onUnlockArchetype)
						end

						slotContent:getChildById("option"):setOn(true)
						slotContent:getChildById("label"):setText(tr("Choose your archetype"))
					else
						slotContent:getChildById("option"):setOn(false)
						slotContent:getChildById("label"):setText(tr("Unlocks at level %s", levelToUnlock))
					end
				elseif slot:getChildById("slotContent"):getStyleName() == "EmptySpellTreeContent" then
					local slotContent = slot:getChildById("slotContent")

					if levelToUnlock <= currentLevel then
						if not slotContent:getChildById("option"):isOn() then
							signalcall(GameSpellTree.onUnlockArchetype)
						end

						slotContent:getChildById("option"):setOn(true)
						slotContent:getChildById("label"):setText(tr("Choose your archetype"))
					else
						slotContent:getChildById("option"):setOn(false)
						slotContent:getChildById("label"):setText(tr("Unlocks at level %s", levelToUnlock))
					end
				end
			end
		end
	end)
end

function GameSpellTree.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameSpellTree.window:isVisible() then
		GameSpellTree:hide(true)
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameSpellTree:show()
	end
end

function GameSpellTree:show()
	self.window:show()
	self.window:raise()
	self.window:focus()
end

function GameSpellTree:hide(isEscape)
	if isEscape and self.cardSelectionWindow:isVisible() then
		self.cardSelectionWindow:hide()
		self.window:blockInputPanel(false)

		return
	end

	self.window:hide()
end

function GameSpellTree:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Archetypes, g_game.serializeTable(data))
	end
end

function GameSpellTree.onGameStart()
	GameSpellTree:resetActiveArchetypes()

	local player = g_game.getLocalPlayer()

	if player then
		GameSpellTree.onLevelChange(g_game.getLocalPlayer(), player:getLevel())
	end

	addEvent(function()
		local player = g_game.getLocalPlayer()

		if not player then
			return
		end

		for _, archetypeId in ipairs(player:getActiveArchetypes()) do
			GameSpellTree:requestArchetypeDetails(archetypeId)
		end
	end)
end

function GameSpellTree.onGameEnd()
	GameSpellTree:toggleCards(false)
end

function GameSpellTree:resetActiveArchetypes()
	for i = 1, 8 do
		GameSpellTree.onArchetypeActiveChange(nil, i, false)
	end
end

function GameSpellTree.onArchetypeActiveChange(localPlayer, id, isActive)
	if isActive then
		if GameSpellTree:addArchetype(id) then
			GameSpellTree:requestArchetypeDetails(id)
		end
	else
		GameSpellTree:removeArchetype(id)
	end
end

function GameSpellTree.onArchetypeLevelChange(localPlayer, archetypeId, level, percent)
	if localPlayer:isArchetypeActive(archetypeId) then
		local archetypeName = ArchetypeNames[archetypeId]

		localPlayer:setArchetypeLevel(archetypeId, level, true)

		if archetypeName then
			local button = GameSpellTree.archetypesPanel:recursiveGetChildById(archetypeName:lower())

			button:getChildById("archetypeLevel"):setText(level)
			button:getChildById("archetypeLevel"):setOn(true)
			button:getChildById("background"):setOn(true)
			button:getChildById("background"):setChecked(false)
			button:recursiveGetChildById("archetypeImage"):setImageSource(string.format("/images/ui/icons/archetypes/45x45/%s", archetypeName:lower()))
		end
	end
end

function GameSpellTree:getWindow()
	return self.window
end

function GameSpellTree.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Archetypes or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "fetch_skills" then
		GameSpellTree:enableDisableArchetypeSpells(data.archetype, data.skills, data.legacySkills)
		GameSpellTree:updateArchetypeIcon(data.archetype, data.level, data.percentage)
		GameSpellTree:updateResetAbilitiesEnabled()
		GameSpellTree:refreshPassivesHighlight(data.archetype)
	elseif data.action == "fetch_passives" then
		GameSpellTree:enableDisableArchetypePassives(data.archetype, data.passives)
	elseif data.action == "fetch_class" then
		GameSpellTree:setPlayerClass(data.class)
	elseif data.action == "replace_active_archetype" then
		GameSpellTree:replaceActiveArchetype(data.idLearn, data.archetypes, data.msg)
	elseif data.action == "experience" then
		GameSpellTree:updateArchetypeIcon(data.archetype, data.level, data.percentage)
	elseif data.action == "fetch_inactive_archetypes" then
		GameSpellTree:updateInactiveArchetypesIcon(data.archetypes)
	end

	if data.skillPoints then
		GameSpellTree:setSkillPoints(data.skillPoints)
	end

	if data.legacySkillPoints then
		GameSpellTree:setLegacySkillPoints(data.legacySkillPoints)
	end
end

function GameSpellTree:canAddArchetype(archetype)
	local panelName = archetypePanelNames[archetype]

	if not panelName then
		return false
	end

	if self:getSlotByArchetype(archetype) then
		return false
	end

	local slot = self:getEmptyArchetypeSlot()

	if not slot then
		return false
	end

	return true
end

function GameSpellTree:addArchetype(archetype)
	local panelName = archetypePanelNames[archetype]

	if not panelName then
		return false
	end

	if self:getSlotByArchetype(archetype) then
		return false
	end

	local slot = self:getEmptyArchetypeSlot()

	if not slot then
		return false
	end

	self:addArchetypeToSlot(panelName, archetype, slot)

	return true
end

function GameSpellTree:requestArchetypeDetails(archetype)
	self:sendOpcode({
		action = "fetch_skills",
		archetype = archetype
	})
	self:sendOpcode({
		action = "fetch_passives",
		archetype = archetype
	})
	self:sendOpcode({
		action = "fetch_class",
		archetype = archetype
	})
	self:sendOpcode({
		action = "fetch_inactive_archetypes"
	})
end

function GameSpellTree:addArchetypeToSlot(panelName, archetype, slot)
	local slotContent = g_ui.createWidget("ActiveSpellTreeContent", slot)
	local panel = g_ui.createWidget("SpellTree", slotContent:getChildById("tree"))

	panel.archetype = archetype

	self:createTreePanel(archetype, panel:recursiveGetChildById("content"))
end

function GameSpellTree:removeArchetype(archetype)
	local slot = self:getSlotByArchetype(archetype)

	if slot then
		slot:getChildById("slotContent"):destroy()
	end
end

function GameSpellTree:getEmptyArchetypeSlot()
	for _, slot in pairs(self.archetypeSlots) do
		if not slot:getChildById("slotContent") then
			return slot
		end

		if slot:getChildById("slotContent"):getStyleName() ~= "ActiveSpellTreeContent" then
			slot:getChildById("slotContent"):destroy()

			return slot
		end
	end
end

function GameSpellTree:getArchetypeLogo(archetype, active, small)
	local archetypeName = ArchetypeNames[archetype]

	if not archetypeName then
		return
	end

	local assetPathLogo = assetPathLogo
	local suffix = not active and "_disabled" or ""

	if small then
		assetPathLogo = assetPathLogo .. "28x28/"
	else
		assetPathLogo = assetPathLogo .. "45x45/"
		suffix = ""
	end

	return assetPathLogo .. archetypeName:lower() .. suffix
end

function GameSpellTree:getSlotByArchetype(archetype)
	for _, slot in pairs(self.archetypeSlots) do
		local slotContent = slot:getChildById("slotContent")

		if slotContent then
			local tree = slotContent:getChildById("tree")

			if tree and tree:getChildByIndex(1) and tree:getChildByIndex(1).archetype and tree:getChildByIndex(1).archetype == archetype then
				return slot
			end
		end
	end
end

function GameSpellTree:getActiveArchetypes()
	local archetypes = {}

	for i, slot in ipairs(self.archetypeSlots) do
		local slotContent = slot:getChildById("slotContent")

		if slotContent and slotContent:getChildById("tree") then
			local panel = slotContent:getChildById("tree"):getChildByIndex(1)

			if panel and panel.archetype then
				archetypes[i] = panel.archetype
			end
		end
	end

	return archetypes
end

function GameSpellTree:getSpellTreeWidgetByArchetype(archetype)
	local slot = self:getSlotByArchetype(archetype)

	if not slot then
		return nil
	end

	return slot:getChildById("slotContent"):getChildById("tree"):recursiveGetChildById("content")
end

function GameSpellTree:printChildren(widget)
	widget = widget or self.window

	for _, child in pairs(widget:getChildren()) do
		GameSpellTree:printChildren(child)
		print(string.format("> %s is child from %s", child:getId(), widget:getId()))
	end
end

function GameSpellTree:updateArchetypeIcon(archetype, level, percent)
	local slot = self:getSlotByArchetype(archetype)

	if not slot then
		return
	end

	local slotContent = slot:getChildById("slotContent")

	if not slotContent then
		return
	end

	slotContent:getChildById("backgroundImage"):setImageSource(string.format("/images/ui/windows/spelltree/archetype_backgrounds/%s", ArchetypeNames[archetype]:lower()))

	local logo = slotContent:getChildById("header"):getChildById("archetypeIcon")

	if level >= SOFT_CAP_LEVEL then
		logo:setTooltip(string.format("%s\nLevel: %i (Max)", ArchetypeNames[archetype], level))
	else
		logo:setTooltip(string.format("%s\nLevel: %i (%i%%)", ArchetypeNames[archetype], level, percent))
	end

	slotContent:getChildById("header"):recursiveGetChildById("archetypeLevel"):setText(level)
	slotContent:getChildById("header"):getChildById("archetypeName"):setText(ArchetypeNames[archetype])

	local progress = slotContent:getChildById("progressBar"):getChildById("innerProgressBar")

	progress:setWidth(148 * (percent / 100))
	progress:setVisible(true)
	logo:setImageSource(string.format("/images/ui/icons/archetypes/45x45/%s", ArchetypeNames[archetype]:lower()))

	logo.clickSound = true
	logo.hoverSound = true

	if logo.__disconnects then
		for _, disconnect in ipairs(logo.__disconnects) do
			disconnect()
		end
	end

	local disconnects = connect(logo, {
		onHoverChange = function(widget, hovered)
			if hovered then
				g_sound.onWidgetHover(widget, hovered)
				logo:setOpacity(1)
				progress:setOpacity(1)
			else
				logo:setOpacity(1)
				progress:setOpacity(0.9)
			end
		end
	})

	logo.__disconnects = disconnects

	function logo.onDestroy()
		if logo.__disconnects then
			for _, disconnect in ipairs(logo.__disconnects) do
				disconnect()
			end
		end
	end
end

function GameSpellTree:updateInactiveArchetypesIcon(archetypes)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	for _, config in ipairs(archetypes) do
		player:setArchetypeLevel(config.archetype, config.level, false)

		local archetypeName = ArchetypeNames[config.archetype]

		if archetypeName then
			local button = self.archetypesPanel:recursiveGetChildById(archetypeName:lower())

			if button then
				button:getChildById("archetypeLevel"):setText(config.level)
				button:getChildById("archetypeLevel"):setOn(false)
				button:getChildById("background"):setOn(false)
				button:getChildById("background"):setChecked(false)
				button:recursiveGetChildById("archetypeImage"):setImageSource(string.format("/images/ui/icons/archetypes/45x45/%s_disabled", archetypeName:lower()))
			end
		end
	end
end

function GameSpellTree:enableDisableArchetypeSpells(archetype, spells, legacySpells)
	self:toggleCards(false)

	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		self:addArchetype(archetype)

		tree = self:getSpellTreeWidgetByArchetype(archetype)
	end

	if not tree then
		return
	end

	for _, spell in ipairs(spells) do
		self:configureSpell(tree, spell)
	end

	if legacySpells then
		for _, spell in ipairs(legacySpells) do
			self:configureLegacySpell(tree, spell, archetype)
		end
	end

	signalcall(self.onArchetypeSpellsChange, archetype, spells)
end

function GameSpellTree:updateResetAbilitiesEnabled()
	local canReset = false

	for _, archetype in pairs(self:getActiveArchetypes()) do
		local enabled = self:hasArchetypeSpellActive(archetype)

		if enabled then
			canReset = true

			break
		end
	end

	self.resetArchetypes:setEnabled(canReset)
end

function GameSpellTree:getSpellsForArchetype(archetype)
	local spells = {}
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return nil
	end

	for i = 1, 15 do
		local spell = tree:recursiveGetChildById("spell" .. i)

		if spell and spell.spellInfo.enabled then
			spells[i] = spell.spellInfo.name
		end
	end

	return spells
end

function GameSpellTree:refreshPassivesHighlight(archetype)
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return
	end

	local spentPoints = self:getArchetypeSpentSkillPoints(archetype)

	for i = 1, 6 do
		local widget = tree:recursiveGetChildById("passive" .. i)

		if widget then
			local highlight = widget:getChildById("highlight")

			if widget:isOn() then
				highlight:setVisible(false)
			else
				highlight:setVisible(spentPoints >= ((self.activePassivesPerArchetype[archetype] or 0) + 1) * 5)
			end
		end
	end
end

function GameSpellTree:enableDisableArchetypePassives(archetype, spells)
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		self:addArchetype(archetype)

		tree = self:getSpellTreeWidgetByArchetype(archetype)

		if not tree then
			return
		end
	end

	self.activePassivesPerArchetype[archetype] = 0

	for _, spell in ipairs(spells) do
		local widget = tree:recursiveGetChildById("passive" .. spell.index)

		if not widget then
			return
		end

		widget:setOn(spell.enabled)

		self.activePassivesPerArchetype[archetype] = self.activePassivesPerArchetype[archetype] + (spell.enabled and 1 or 0)

		widget:setImageSource(assetPathAbilityIcon .. spell.name:lower())

		local ability = g_spells:getSpell(spell.name:lower())

		if ability then
			widget.abilityTooltip = true
			widget.abilityId = spell.name:lower()
			widget.archetypeId = archetype
		end
	end

	self:refreshPassivesHighlight(archetype)
end

function GameSpellTree:hasLearnedPassive(archetype, name)
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return false
	end

	for i = 1, 5 do
		local widget = tree:recursiveGetChildById("passive" .. i)

		if widget and widget.abilityId == name and widget:isOn() then
			return true
		end
	end

	return false
end

function GameSpellTree.onEffectiveLevelChange(player, level, oldLevel)
	GameSpellTree:setSkillPoints(nil, level)
	addEvent(function()
		local spectators = g_map.getSpectators(player:getPosition(), false)

		for _, creature in ipairs(spectators) do
			if creature:isMonster() then
				creature:setName(creature:getName())
			end
		end
	end)
end

function GameSpellTree:setSkillPoints(skillPoints, effectiveLevel)
	if skillPoints then
		local oldPoints = self.skillPointsLabel.skillPoints or -1

		self.skillPointsLabel.skillPoints = skillPoints

		signalcall(self.onUpdateSkillPoints, oldPoints, skillPoints)
	end

	self.skillPointsLabel:setText(skillPoints or self.skillPointsLabel.skillPoints or 0)
	self.effectiveLevel:setText(effectiveLevel or g_game.getLocalPlayer():getEffectiveLevel())
end

function GameSpellTree:setLegacySkillPoints(legacySkillPoints)
	self.legacySkillPointsLabel:setText(legacySkillPoints or 0)
end

function GameSpellTree:setPlayerClass(className)
	if not g_game.getLocalPlayer() then
		className = "Unknown"
	end

	if className == "" then
		local amountOfArchetypes = #g_game.getLocalPlayer():getActiveArchetypes()

		if amountOfArchetypes == 1 then
			className = "Apprentice"
		elseif amountOfArchetypes == 2 then
			className = "Novice"
		end
	end

	self.contentPanel.topPanel:recursiveGetChildById("className"):setText(className)
end

function GameSpellTree:replaceActiveArchetype(idToLearn, idsToForget, msg)
	self:destroyPopups()

	self.replaceArchetypePopup = g_ui.createWidget("ReplaceArchetypeModal", modules.game_interface.getHUDPanel())
	self.replaceArchetypePopup.selectMultiple = false

	self.replaceArchetypePopup:raise()
	self.replaceArchetypePopup:setText(tr("Replace Archetype"))
	connect(self.replaceArchetypePopup, {
		onDestroy = function()
			if self.replaceArchetypeConfirmationPopup then
				self.replaceArchetypeConfirmationPopup:destroy()
			end
		end
	})

	local descLabel = self.replaceArchetypePopup:getChildById("descriptionLabel")

	descLabel:setColoredText(GetHighlightedText(msg))
	self.replaceArchetypePopup:setWidth(descLabel:getWidth() + 24)

	local archetypesPanel = self.replaceArchetypePopup:getChildById("archetypesPanel")
	local index = 1

	archetypesPanel:destroyChildren()

	for forgetId in pairs(idsToForget) do
		local button = g_ui.createWidget("ReplaceArchetypeButton", archetypesPanel)

		button:setId("button" .. index)
		button:getChildById("archetypeLogo"):setImageSource(self:getArchetypeLogo(forgetId, false, false))
		button:setTooltip(ArchetypeNames[forgetId])

		button.forgetId = forgetId
		button.learnId = idToLearn
		index = index + 1
	end

	local confirmButton = self.replaceArchetypePopup:getChildById("buttonsPanel"):getChildById("confirmButton")

	function confirmButton.onClick()
		local player = g_game.getLocalPlayer()

		if not player then
			return
		end

		if self.replaceArchetypeConfirmationPopup then
			self.replaceArchetypeConfirmationPopup:destroy()
		end

		local idToForget

		for _, child in pairs(archetypesPanel:getChildren()) do
			if child:isChecked() then
				idToForget = child.forgetId
			end
		end

		local slotContent = self.archetypesPanel:recursiveGetChildById(ArchetypeNames[idToLearn]:lower())
		local sum = slotContent and slotContent:getChildById("archetypeLevel"):getText() or 0

		for index, archetype in pairs(idsToForget) do
			if index ~= idToForget then
				local slotContent = self.archetypesPanel:recursiveGetChildById(ArchetypeNames[archetype.id]:lower())

				sum = sum + (slotContent and slotContent:getChildById("archetypeLevel"):getText() or 0)
			end
		end

		if player:getEffectiveLevel() > math.floor(sum / 3) then
			self.replaceArchetypeConfirmationPopup = g_ui.createWidget("ReplaceArchetypeConfirmationModal", modules.game_interface.getHUDPanel())

			self.replaceArchetypeConfirmationPopup:setText(tr("Replace Archetype"))
			self.replaceArchetypeConfirmationPopup:raise()

			self.replaceArchetypeConfirmationPopup:getChildById("buttonsPanel"):getChildById("confirmButton").onClick = function()
				replaceArchetypeButtonClicked(confirmButton)
			end
		else
			replaceArchetypeButtonClicked(confirmButton)
		end
	end

	self:refreshPassivesHighlight(idToLearn)
end

function GameSpellTree:hasArchetypeSpellActive(archetype)
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return nil
	end

	for i = 1, 15 do
		local spell = tree:recursiveGetChildById("spell" .. i)

		if spell and spell.spellInfo and spell.spellInfo.enabled then
			return spell
		end
	end

	return nil
end

function GameSpellTree:resetArchetypesSkills()
	self:destroyPopups()

	self.replaceArchetypePopup = g_ui.createWidget("ReplaceArchetypeModal", modules.game_interface.getHUDPanel())
	self.replaceArchetypePopup.selectMultiple = true

	self.replaceArchetypePopup:setText(tr("Reset Archetypes"))
	self.replaceArchetypePopup:raise()

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local cost = player:getLevel() <= 20 and 0 or player:getLevel() * 10
	local msg = string.format("Select which archetypes you want to reset\nthe skill points, for each one selected you\nwill be charged {%i silver, #FFA851}.", cost)

	if cost == 0 then
		msg = string.format("Select which archetypes you want to reset\nthe skill points. This action is free until legacy level 20.")
	end

	local descLabel = self.replaceArchetypePopup:getChildById("descriptionLabel")

	descLabel:setColoredText(GetHighlightedText(msg))
	self.replaceArchetypePopup:setWidth(descLabel:getWidth() + 24)

	local archetypesPanel = self.replaceArchetypePopup:getChildById("archetypesPanel")
	local index = 1

	archetypesPanel:destroyChildren()

	for _, forgetId in pairs(self:getActiveArchetypes()) do
		local enabled = self:hasArchetypeSpellActive(forgetId)

		if enabled then
			local button = g_ui.createWidget("ReplaceArchetypeButton", archetypesPanel)

			button:setId("button" .. index)
			button:getChildById("archetypeLogo"):setImageSource(self:getArchetypeLogo(forgetId, false, false))
			button:setTooltip(ArchetypeNames[forgetId])

			button.forgetId = forgetId
		end

		index = index + 1
	end

	self.replaceArchetypePopup:getChildById("buttonsPanel"):getChildById("confirmButton").onClick = resetAbilitiesButtonClicked
end

function GameSpellTree:configureSpell(tree, spell)
	local widget = tree:recursiveGetChildById("spell" .. spell.index)
	local link = tree:recursiveGetChildById("spell" .. spell.index .. "link")

	if link then
		link:setOn(spell.enabled)
	end

	widget:setEnabled(true)

	link = tree:recursiveGetChildById("spell" .. spell.index .. "link1")

	if link then
		link:setOn(spell.enabled)
	end

	widget:setOn(spell.enabled)

	widget.spellInfo = spell

	widget:setImageSource(assetPathAbilityIcon .. spell.name:lower())

	local ability = g_spells:getSpell(spell.name:lower())

	if ability then
		widget.abilityTooltip = true
		widget.abilityId = ability.id
	end

	addEvent(function()
		if widget then
			self:configureCard(spell, widget)
		end
	end)
end

function GameSpellTree:configureLegacySpell(tree, spell, archetype)
	local widget = tree:recursiveGetChildById("legacySpell" .. spell.index)

	widget.archetypeId = archetype

	widget:setEnabled(true)
	widget:setOn(spell.enabled)

	widget.spellInfo = spell

	widget:setImageSource(assetPathAbilityIcon .. spell.name:lower())

	local overlayWidget = tree:recursiveGetChildById("legacySpellOverlay" .. spell.index)

	if not spell.enabled then
		overlayWidget.bottom_points:setImageSource("/images/ui/windows/spelltree/legacy_spell_bottom_points_0")
	else
		overlayWidget.bottom_points:setImageSource("/images/ui/windows/spelltree/legacy_spell_bottom_points_" .. (spell.tier or 0))
	end

	local ability = g_spells:getSpell(spell.name:lower())

	if ability then
		widget.abilityTooltip = true
		widget.abilityTooltipTierDetails = true
		widget.abilityId = ability.id
		widget.abilityTier = spell.tier
	end
end

function GameSpellTree:configureCard(spell, widget)
	if spell.card then
		spell.card.spellInfo = widget.spellInfo
	end

	local smallCardWidget
	local parent = widget:getParent()

	if not parent then
		return
	end

	if parent then
		smallCardWidget = parent:recursiveGetChildById("card_holder_on" .. spell.index)
	end

	if not smallCardWidget then
		smallCardWidget = g_ui.createWidget("ArchetypeSpellCardSmall", widget:getParent())

		smallCardWidget.add_card:setOn(not spell.enabled)
		smallCardWidget:setId("card_holder_on" .. spell.index)
		smallCardWidget:addAnchor(AnchorVerticalCenter, "spell" .. spell.index, AnchorVerticalCenter)
		smallCardWidget:addAnchor(AnchorHorizontalCenter, "spell" .. spell.index, AnchorHorizontalCenter)
	end

	smallCardWidget:setOn(spell.enabled and not spell.card)
	smallCardWidget.add_card:setOn(not spell.enabled)

	smallCardWidget.cardData = spell.card
	smallCardWidget.spellInfo = spell

	smallCardWidget:setVisible(self.cardsToggled)
	smallCardWidget.card_image:setVisible(spell.card)

	if spell.card then
		local path = "/images/ui/ravencards/illustrations/" .. spell.card.name:lower():gsub(" ", "_") .. ".jpg"

		if g_resources.fileExists(path) then
			smallCardWidget.card_image:setImageSource(path)
		else
			smallCardWidget.card_image:setImageSource("/images/ui/ravencards/illustrations/rat_scavenger.jpg")
		end
	end

	if spell.card then
		smallCardWidget.abilityTooltip = true
		smallCardWidget.ravenCardAbilityInfo = {
			name = spell.card.name,
			description = g_ravencards:getCardDescription(spell.card.name, spell.card.rarity),
			rarity = spell.card.rarity
		}
	else
		smallCardWidget.abilityTooltip = false
		smallCardWidget.ravenCardAbilityInfo = nil
	end

	local microCardWidget = parent:recursiveGetChildById("card_holder_off" .. spell.index)

	if not microCardWidget then
		microCardWidget = g_ui.createWidget("ArchetypeSpellCardMicro", parent)

		microCardWidget:setId("card_holder_off" .. spell.index)
		microCardWidget:addAnchor(AnchorVerticalCenter, "spell" .. spell.index, AnchorBottom)
		microCardWidget:addAnchor(AnchorHorizontalCenter, "spell" .. spell.index, AnchorHorizontalCenter)
		microCardWidget:setVisible(not self.cardsToggled)

		microCardWidget.ability.spellInfo = {
			enabled = spell.enabled,
			index = spell.index,
			name = spell.name
		}

		microCardWidget.ability:setImageSource(widget:getImageSource())
		microCardWidget.ability:setVisible(self.cardsToggled)
		microCardWidget.add_card:setVisible(not self.cardsToggled)
		microCardWidget:setChecked(self.cardsToggled)
	end

	microCardWidget.ability:setOn(spell.enabled)
	microCardWidget:setOn(spell.enabled and not spell.card)
	microCardWidget.add_card:setOn(not spell.enabled)

	microCardWidget.cardData = spell.card

	microCardWidget.card_image:setVisible(not self.cardsToggled and spell.card)

	if spell.card then
		local path = "/images/ui/ravencards/illustrations/" .. spell.card.name:lower():gsub(" ", "_") .. ".jpg"

		if g_resources.fileExists(path) then
			microCardWidget.card_image:setImageSource(path)
		else
			microCardWidget.card_image:setImageSource("/images/ui/ravencards/illustrations/rat_scavenger.jpg")
		end
	end
end

function GameSpellTree:selectCard(spellInfo, cardData)
	if self.confirmationBox or not spellInfo.enabled or self.cardSelectionWindow:isVisible() then
		return
	end

	if cardData then
		local function yesCallback()
			self.confirmationBox:destroy()

			self.confirmationBox = nil

			GameCards:removeCard(cardData)
		end

		local function noCallback()
			self.confirmationBox:destroy()

			self.confirmationBox = nil
		end

		self.confirmationBox = displayGeneralBox(tr("Remove Card"), tr("Do you really want to remove the card from this skill?"), {
			{
				text = tr("Yes"),
				callback = yesCallback
			},
			{
				text = tr("No"),
				callback = noCallback
			}
		}, yesCallback, noCallback, nil, self.window)

		return
	end

	GameCards:requestSpellCards(spellInfo)
end

function GameSpellTree:toggleCards(state)
	if signalcall(self.canToggleCards, state) then
		return
	end

	local button = self.window:recursiveGetChildById("cards_toggle_button")

	if state ~= nil then
		local currentState = button:isOn()

		if currentState ~= state then
			button:onClick()
		end

		return
	end

	button:onClick()
end

function GameSpellTree:onToggleCards()
	local button = self.window:recursiveGetChildById("cards_toggle_button")
	local state = button:isOn()

	self.cardsToggled = state

	for _, archetype in pairs(self:getActiveArchetypes()) do
		local tree = self:getSpellTreeWidgetByArchetype(archetype)

		if not tree then
			return
		end

		for i = 1, 12 do
			local cardWidget = tree:recursiveGetChildById("card_holder_off" .. i)

			if cardWidget then
				cardWidget:setChecked(state)
			end

			cardWidget = tree:recursiveGetChildById("card_holder_on" .. i)

			if cardWidget then
				cardWidget:setVisible(state)
			end

			local spellWidget = tree:recursiveGetChildById("spell" .. i)

			if spellWidget then
				spellWidget:setVisible(not state)
			end
		end
	end

	signalcall(self.onCardsToggled, state)
end

function GameSpellTree.onRemoveCard(spell)
	local self = GameSpellTree
	local archetype = spell.archetype
	local spellName = spell.name
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return
	end

	for i = 1, 12 do
		local widget = tree:recursiveGetChildById("spell" .. i)

		if widget and widget.spellInfo and widget.spellInfo.name:lower() == spellName:lower() then
			widget.spellInfo.card = nil

			self:configureCard(widget.spellInfo, widget)

			break
		end
	end
end

function GameSpellTree.onAddCard(spell, cardData)
	local self = GameSpellTree
	local archetype = spell.archetype
	local spellName = spell.name
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return
	end

	for i = 1, 12 do
		local widget = tree:recursiveGetChildById("spell" .. i)

		if widget and widget.spellInfo and widget.spellInfo.name:lower() == spellName:lower() then
			widget.spellInfo.card = cardData

			self:configureCard(widget.spellInfo, widget)

			break
		end
	end
end

function GameSpellTree.onReceiveSpellCards(spell, cards)
	local self = GameSpellTree
	local window = self.cardSelectionWindow

	if not window then
		return
	end

	self.window:blockInputPanel(true, window)

	self.currentSelectedCard = {
		spellName = spell.name
	}

	window.content.confirm_button:setEnabled(false)

	window.iconPath = assetPathAbilityIcon .. spell.name:lower()

	window.top_panel.icon:onSetup()
	window.content.label:setText(string.format(window.content.label.formatText, spell.name))

	local left_card = window.content.left_card_holder.card_holder
	local right_card = window.content.right_card_holder.card_holder
	local widgets = {
		left_card,
		right_card
	}

	for _, widget in ipairs(widgets) do
		widget.cardData = nil

		widget.lock:setVisible(true)
		widget.background:setOn(false)
		widget:setEnabled(false)
		widget:grayOut(true)
		widget.card:setRarity(1)

		widget.abilityTooltip = nil

		for __, child in ipairs(widget.rarity_background:getChildren()) do
			child:setEnabled(false)
			child.background:setOn(false)
			child.icon:setImageSource("/images/ui/ravencards/gem_disabled")
		end
	end

	if cards and #cards > 0 then
		for i, card in ipairs(cards) do
			local highestRarity = 1

			for i = 6, 1, -1 do
				if card.rarities[i] then
					highestRarity = i

					break
				end
			end

			local atLeastOneRarityUnlocked = not table.empty(card.rarities)

			widgets[i].cardData = card

			widgets[i].lock:setVisible(not atLeastOneRarityUnlocked)
			widgets[i]:setEnabled(atLeastOneRarityUnlocked)
			widgets[i].card:setName(card.name)
			widgets[i]:grayOut(not atLeastOneRarityUnlocked)

			widgets[i].abilityTooltip = true
			widgets[i].ravenCardAbilityInfo = {
				name = card.name,
				description = g_ravencards:getCardDescription(card.name, highestRarity),
				rarity = highestRarity
			}

			widgets[i].card:setRarity(highestRarity)

			for index, child in ipairs(widgets[i].rarity_background:getChildren()) do
				local unlocked = card.rarities[index] and card.rarities[index] >= 1

				child:setEnabled(unlocked)
				child.icon:setImageSource(unlocked and "/images/ui/ravencards/gem_" .. index or "/images/ui/ravencards/gem_disabled")
			end
		end
	end

	window:show()

	function window.onVisibilityChange(window, visible)
		if not visible then
			window.onVisibilityChange = nil

			GameSpellTree.window:blockInputPanel(false)
			signalcall(GameSpellTree.onCloseCardSelectionWindow)
		end
	end

	signalcall(self.onOpenCardSelectionWindow)
end

function GameSpellTree:changeCurrentSelectedCardRarity(rarity)
	self.currentSelectedCard.rarity = rarity

	self.cardSelectionWindow.content.confirm_button:setEnabled(rarity ~= nil)
end

function GameSpellTree:changeCurrentSelectedCard(cardName)
	self.currentSelectedCard.cardName = cardName

	self:changeCurrentSelectedCardRarity(nil)
end

function GameSpellTree:changeCurrentSelectedCardSpell(spellName)
	self.currentSelectedCard.spellName = spellName
end

function GameSpellTree:confirmCardSelection()
	self.cardSelectionWindow:hide()
	GameCards:selectSpellCard(self.currentSelectedCard.spellName, self.currentSelectedCard.cardName, self.currentSelectedCard.rarity)
end

function GameSpellTree:destroyPopups(ignoreArchetypeInfo)
	if self.replaceArchetypePopup then
		self.replaceArchetypePopup:destroy()

		self.replaceArchetypePopup = nil
	end

	if not ignoreArchetypeInfo and GameArchetypeInfo:isVisible() then
		GameArchetypeInfo:hide()
	end
end

function GameSpellTree:getArchetypeSpentSkillPoints(archetype)
	local tree = self:getSpellTreeWidgetByArchetype(archetype)

	if not tree then
		return 0
	end

	local spent = 0

	for i = 1, 15 do
		local spell = tree:recursiveGetChildById("spell" .. i)

		if spell and spell.spellInfo and spell.spellInfo.enabled then
			local ability = g_spells:getSpell(spell.spellInfo.name:lower())

			if ability then
				spent = spent + ability.points
			end
		end
	end

	return spent
end

function GameSpellTree:calculateActiveArchetypeSkillPointContribution()
	local player = g_game.getLocalPlayer()

	if not player then
		return 0
	end

	local archetypes = player:getActiveArchetypes()
	local effectiveLevel = player:getEffectiveLevel()
	local total = 1 + effectiveLevel
	local distributed = 0
	local contribution = {}
	local totalArchetypeLevel = 0

	for _, archetype in ipairs(archetypes) do
		local archetypeLevel = player:getArchetypeLevel(archetype)

		totalArchetypeLevel = totalArchetypeLevel + archetypeLevel
	end

	for _, archetype in ipairs(archetypes) do
		local archetypeLevel = player:getArchetypeLevel(archetype)
		local archetypeContribution = math.floor(archetypeLevel / totalArchetypeLevel * total)

		contribution[archetype] = (contribution[archetype] or 0) + archetypeContribution
		distributed = distributed + archetypeContribution
	end

	for _, archetype in ipairs(archetypes) do
		local archetypeLevel = player:getArchetypeLevel(archetype)

		if total < distributed then
			contribution[archetype] = contribution[archetype] - (distributed - total)
		end
	end

	return contribution
end

function GameSpellTree:getInactiveArchetypeBonus(archetypeLevel)
	local player = g_game.getLocalPlayer()

	if not player then
		return 0
	end

	local bonusPoints = 0

	if archetypeLevel >= 30 then
		local additionalLevels = archetypeLevel - 30

		bonusPoints = math.floor(additionalLevels / 5)
		bonusPoints = bonusPoints + 3
	elseif archetypeLevel >= 20 then
		bonusPoints = bonusPoints + 2
	elseif archetypeLevel >= 10 then
		bonusPoints = bonusPoints + 1
	end

	return bonusPoints
end

function GameSpellTree:displaySkillPointsTooltip(widget, hovered)
	if not hovered then
		if widget.skillPointsTooltip then
			widget.skillPointsTooltip:destroy()

			widget.skillPointsTooltip = nil
		end

		return
	end

	if widget.skillPointsTooltip then
		return
	end

	local tooltip = g_ui.createWidget("GameSpellTreeSkillPointsTooltip", rootWidget)

	widget.skillPointsTooltip = tooltip

	local pos = widget:getPosition()
	local size = widget:getSize()
	local tooltipSize = tooltip:getSize()

	tooltip:setPosition({
		x = pos.x + size.width + 5,
		y = pos.y + size.height / 2 - tooltipSize.height / 2
	})

	local tooltipPos = tooltip:getPosition()
	local tooltipSize = tooltip:getSize()
	local screenSize = g_window.getSize()

	if tooltipPos.x + tooltipSize.width > screenSize.width then
		tooltip:setX(pos.x - tooltipSize.width - 5)
	end

	if tooltipPos.y + tooltipSize.height > screenSize.height then
		tooltip:setY(screenSize.height - tooltipSize.height)
	end

	connect(widget, {
		onVisibilityChange = function(widget, visible)
			if not visible then
				tooltip:destroy()
			end
		end
	})

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local title = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentTitle", tooltip.content)

	title:setText("Current Archetypes")

	local archetypes = player:getActiveArchetypes()
	local activeArchetypesContribution = self:calculateActiveArchetypeSkillPointContribution()

	for index, archetype in ipairs(archetypes) do
		local widget = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentItem", tooltip.content)

		widget.icon:setImageSource(self:getArchetypeLogo(archetype, true, true))
		widget.text:setColoredText(GetHighlightedText(string.format("[%d] %s {+%d point%s, white}", player:getArchetypeLevel(archetype), ArchetypeNames[archetype], activeArchetypesContribution[archetype], activeArchetypesContribution[archetype] > 1 and "s" or ""), "#CED2D9"))

		if index == 1 then
			widget:setMarginTop(10)
		end
	end

	local totalActiveArchetypesContribution = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentTitle", tooltip.content)

	totalActiveArchetypesContribution:setColoredText(GetHighlightedText(string.format("Current: {+%d point%s, #77D463}", player:getEffectiveLevel(), player:getEffectiveLevel() ~= 1 and "s" or "")))

	local spacer = g_ui.createWidget("UIWidget", tooltip.content)

	spacer:setBackgroundColor("#3A3D43")
	spacer:setHeight(1)
	spacer:setMarginTop(5)

	title = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentTitle", tooltip.content)

	title:setText("Inactive Archetypes")
	title:setMarginTop(5)

	local counter = 0
	local totalBonusPoints = 0
	local archetypeLevels = player:getArchetypesLevels()

	for archetype = ArchetypeFirst, ArchetypeLast - 1 do
		if not table.find(archetypes, archetype) then
			counter = counter + 1

			local widget = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentItem", tooltip.content)

			widget.icon:setImageSource(self:getArchetypeLogo(archetype, true, true))

			local bonus = self:getInactiveArchetypeBonus(archetypeLevels[archetype].level)

			totalBonusPoints = totalBonusPoints + bonus

			widget.text:setColoredText(GetHighlightedText(string.format("[%d] %s {+%d point%s, white}", archetypeLevels[archetype].level, ArchetypeNames[archetype], bonus, bonus ~= 1 and "s" or ""), "#CED2D9"))

			if counter == 1 then
				widget:setMarginTop(10)
			end
		end
	end

	local totalInactiveArchetypesContribution = g_ui.createWidget("GameSpellTreeSkillPointsTooltipContentTitle", tooltip.content)

	totalInactiveArchetypesContribution:setColoredText(GetHighlightedText(string.format("Inactive: {+%d point%s, #77D463}", totalBonusPoints, totalBonusPoints ~= 1 and "s" or "")))

	local totalPoints = player:getEffectiveLevel() + totalBonusPoints

	tooltip.footer:setColoredText(GetHighlightedText(string.format("Total: {+%d point%s, #77D463}", totalPoints, totalPoints ~= 1 and "s" or "")))
end

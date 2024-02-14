-- chunkname: @/modules/game_spelltree/button_handlers.lua

function archetypeButtonClicked(button)
	if button.archetypeLevel:isOn() then
		return
	end

	local archetypeName = button:getId():gsub("Button", "")
	local archetypeId = ArchetypeIds[archetypeName]

	GameArchetypeInfo:selectArchetype(archetypeId)
	GameArchetypeInfo:show()
end

function replaceArchetypeButtonClicked(button)
	local popupWindow = button:getParent():getParent()

	for _, child in pairs(popupWindow:getChildById("archetypesPanel"):getChildren()) do
		if child:isChecked() then
			GameSpellTree:sendOpcode({
				action = "replace_active_archetype_confirm",
				idLearn = child.learnId,
				idForget = child.forgetId
			})
		end
	end

	GameSpellTree:destroyPopups()
end

function learnArchetypeButtonClicked(button)
	local popupWindow = button:getParent():getParent()
	local selectedArchetypeId

	for _, child in pairs(popupWindow:getChildById("archetypesPanel"):getChildren()) do
		if child:isChecked() then
			selectedArchetypeId = child.archetypeId

			break
		end
	end

	if not selectedArchetypeId then
		GameSpellTree:destroyPopups()

		return
	end

	GameArchetypeInfo:selectArchetype(selectedArchetypeId)
	GameArchetypeInfo:show()
	signalcall(GameSpellTree.onLearnArchetypeButtonClicked)
	GameSpellTree:destroyPopups(true)
end

function resetAbilities(button)
	GameSpellTree:resetArchetypesSkills()
end

function resetAbilitiesButtonClicked(button)
	local ids = {}
	local popupWindow = button:getParent():getParent()

	for _, child in pairs(popupWindow:getChildById("archetypesPanel"):getChildren()) do
		if child:isChecked() then
			ids[#ids + 1] = child.forgetId
		end
	end

	if #ids > 0 then
		GameSpellTree:sendOpcode({
			action = "forget_archetype",
			ids = ids
		})
	end

	GameSpellTree:destroyPopups()
end

function spellClicked(button)
	if not button:isOn() then
		local spellId = tonumber((button:getId():gsub("spell", "")))
		local archetypeId = button.archetypeId

		GameSpellTree:sendOpcode({
			action = "learn_skill",
			archetype = archetypeId,
			spell = spellId
		})
	end
end

function learnNewArchetype(button)
	GameSpellTree:destroyPopups()

	GameSpellTree.replaceArchetypePopup = g_ui.createWidget("NewArchetypeModal", GameSpellTree.window)
	GameSpellTree.replaceArchetypePopup.selectMultiple = false

	GameSpellTree.replaceArchetypePopup:setText(tr("Choose your new archetype"))
	GameSpellTree.replaceArchetypePopup:raise()

	local msg = "Select which archetype you want to learn."
	local descLabel = GameSpellTree.replaceArchetypePopup:getChildById("descriptionLabel")

	descLabel:setColoredText(GetHighlightedText(msg))
	GameSpellTree.replaceArchetypePopup:setWidth(descLabel:getWidth() + 24)

	local archetypesPanel = GameSpellTree.replaceArchetypePopup:getChildById("archetypesPanel")
	local index = 1

	archetypesPanel:destroyChildren()

	for archetypeId = ArchetypeNone + 1, ArchetypeLast - 1 do
		if g_game.getLocalPlayer() and not g_game.getLocalPlayer():isArchetypeActive(archetypeId) then
			local button = g_ui.createWidget("ReplaceArchetypeButton", archetypesPanel)

			button:setId("button" .. index)
			button:getChildById("archetypeLogo"):setImageSource(GameSpellTree:getArchetypeLogo(archetypeId, false, false))
			button:setTooltip(ArchetypeNames[archetypeId])

			button.archetypeId = archetypeId
			index = index + 1
		end
	end

	local childCount = archetypesPanel:getChildCount()
	local additionalRowsNeeded = math.floor((childCount - 1) / 3)

	if additionalRowsNeeded > 0 then
		archetypesPanel:setHeight(archetypesPanel:getHeight() + 96 * additionalRowsNeeded)
		GameSpellTree.replaceArchetypePopup:setHeight(GameSpellTree.replaceArchetypePopup:getHeight() + 96 * additionalRowsNeeded)
	end

	GameSpellTree.replaceArchetypePopup:getChildById("buttonsPanel"):getChildById("confirmButton").onClick = learnArchetypeButtonClicked

	signalcall(GameSpellTree.onReplaceArchetypePopup, GameSpellTree.replaceArchetypePopup)
	connect(GameSpellTree.replaceArchetypePopup, {
		onDestroy = function()
			GameSpellTree.replaceArchetypePopup = nil

			signalcall(GameSpellTree.onReplaceArchetypePopupDestroy)
		end
	})
end

function spellDoubleClicked(button)
	local spellId = button:getId():gsub("spell", "")

	spellId = tonumber(spellId)

	local archetypeId = button.archetypeId

	if button:isOn() then
		AbilityBar.addSpell(archetypeId, spellId)
	end
end

function passiveClicked(button)
	local passiveId = button:getId():gsub("passive", "")

	passiveId = tonumber(passiveId)

	local archetypeId = button.archetypeId

	if not button:isOn() then
		GameSpellTree:sendOpcode({
			action = "learn_passive",
			archetype = archetypeId,
			passive = passiveId
		})
	end
end

function archetypeLogoClicked(button)
	local archetypeName = button:getParent():getChildById("content"):getChildren()[1]:getId()
	local archetypeId = ArchetypeIds[archetypeName]

	GameSpellTree:sendOpcode({
		action = "forget_archetype",
		id = archetypeId
	})
end

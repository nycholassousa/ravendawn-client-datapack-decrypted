-- chunkname: @/modules/client_entergame/charactercreation.lua

CharacterCreation = {}

local archetypes = {
	[ArchetypeFlags.Warfare] = "warfare",
	[ArchetypeFlags.Archery] = "archery",
	[ArchetypeFlags.Shadow] = "shadow",
	[ArchetypeFlags.Protection] = "protection",
	[ArchetypeFlags.Wizardry] = "wizardry",
	[ArchetypeFlags.Holy] = "holy",
	[ArchetypeFlags.Spiritual] = "spiritual",
	[ArchetypeFlags.Witchcraft] = "witchcraft"
}
local assets = ARCHETYPES_DATA

function CharacterCreation.init()
	g_ui.importStyle("styles/charactercreation.otui")

	CharacterCreation.window = g_ui.createWidget("CharacterCreation", rootWidget)

	if not CharacterCreation.window then
		print("Error >> Unable to Create the CharacterCreation Window.")

		return
	end

	CharacterCreation.window:hide()

	CharacterCreation.archetypePanel = CharacterCreation.window:recursiveGetChildById("archetypes_panel")
	CharacterCreation.genderButtons = CharacterCreation.window:recursiveGetChildById("gender_buttons")
	CharacterCreation.descriptionPanel = CharacterCreation.window:recursiveGetChildById("description_panel")
	CharacterCreation.archetypeName = CharacterCreation.descriptionPanel.name
	CharacterCreation.archetypeDescription = CharacterCreation.descriptionPanel.description
	CharacterCreation.archetypeImage = CharacterCreation.window:recursiveGetChildById("archetype_image")
	CharacterCreation.skillsPanel = CharacterCreation.window:recursiveGetChildById("skills_panel")
	CharacterCreation.activeSkills = CharacterCreation.skillsPanel.active_skills
	CharacterCreation.passiveSkills = CharacterCreation.skillsPanel.passive_skills
	CharacterCreation.skillInfoPanel = CharacterCreation.window:recursiveGetChildById("skill_information_panel")
	CharacterCreation.skillInfo = CharacterCreation.skillInfoPanel.info
	CharacterCreation.skillPreview = CharacterCreation.window:recursiveGetChildById("skill_preview")
	CharacterCreation.characterOutfit = CharacterCreation.window:recursiveGetChildById("character_outfit")
	CharacterCreation.characterNamePanel = CharacterCreation.window:recursiveGetChildById("character_name_panel")
	CharacterCreation.characterNameInput = CharacterCreation.characterNamePanel:recursiveGetChildById("character_name_input")
	CharacterCreation.characterName = CharacterCreation.window:recursiveGetChildById("character_name")
	CharacterCreation.characterNameError = CharacterCreation.window:recursiveGetChildById("character_name_error")
	CharacterCreation.characterNameWarning = CharacterCreation.window:recursiveGetChildById("character_name_warning_icon")
	CharacterCreation.createButton = CharacterCreation.window:recursiveGetChildById("create_character_button")
	CharacterCreation.previewPanel = CharacterCreation.window:recursiveGetChildById("preview_panel")

	addEvent(function()
		CharacterCreation:reset()
	end)
end

function CharacterCreation.terminate()
	if CharacterCreation.window then
		CharacterCreation.window:destroy()

		CharacterCreation.window = nil
	end
end

function CharacterCreation:reset()
	if self.currentGender then
		self.currentGender:setOn(false)
	end

	self.currentGender = self.genderButtons.male

	self.currentGender:setOn(true)
	self:selectArchetype(self.archetypePanel:getFirstChild())
end

function CharacterCreation:selectArchetype(button)
	if button:isOn() then
		return
	end

	if self.currentArchetype then
		self.currentArchetype:setOn(false)
		self.currentArchetype.icon:setOn(false)
	end

	self.currentArchetype = button

	button:setOn(true)
	button.icon:setOn(true)

	local archetype = button.iconName
	local archetypeId = ArchetypeIds[archetype]
	local upper = archetype:gsub("^%l", string.upper)

	self.archetypeName:setText(upper)
	self.archetypeImage:setImageSource(string.format("/images/ui/windows/entergame/characterCreation/%s", archetype))

	local text = tr(assets[archetypeId].description)
	local highlightText = GetHighlightedText(text, "white")

	if #highlightText > 0 then
		self.archetypeDescription:setColoredText(highlightText)
	else
		self.archetypeDescription:setText(text or "")
	end

	self.activeSkills:clearChildren()
	self.passiveSkills:clearChildren()

	for id, value in ipairs(assets[archetypeId].skills) do
		local skill = value.name:lower()
		local widget = g_ui.createWidget("SkillToggle", self.activeSkills)

		widget:setId(skill)
		widget:setImageSource("/images/ui/icons/abilitybar/" .. skill)
	end

	for id, value in ipairs(assets[archetypeId].passives) do
		local skill = value.name:lower()
		local widget = g_ui.createWidget("SkillToggle", self.passiveSkills)

		widget:setId(skill)
		widget:setImageSource("/images/ui/icons/abilitybar/" .. skill)
	end

	self:updateSkill(self.activeSkills:getFirstChild())
	self:updateCharacter()
end

function CharacterCreation:updateSkill(button)
	if button:isChecked() then
		return
	end

	if self.selectedSkillButton then
		self.selectedSkillButton:setChecked(false)
	end

	self.selectedSkillButton = button

	button:setChecked(true)

	local skill_name = button:getId()
	local spell, passiveName = g_spells:getSpell(skill_name)
	local isPassive = spell.id == nil

	if isPassive then
		spell = {
			name = passiveName:titleCase()
		}
	end

	self.skillInfo.icon:setImageSource(button:getImageSource())
	self.skillInfo.name:setText(spell.name)
	self.skillInfo.cast_type:setText(g_spells:getType(spell.name:lower()))
	self.skillInfo.target:setText(spell.crosshair and "Crosshair ability" or spell.needTarget and "Single target ability" or spell.selfTarget and not spell.needTarget and "Self target ability" or not spell.selfTarget and not spell.needTarget and "Self target ability")

	local description = g_spells:getGenericSpellDescription(skill_name)

	if description then
		self.skillInfo.description:setColoredText(GetHighlightedText(description))
	end

	self.previewPanel:setVisible(not isPassive)

	local path = "/data/images/ui/windows/spelltree/preview/" .. skill_name .. ".mp4"

	if g_resources.fileExists(path) or g_resources.fileExists(path .. ".mp4") then
		local lastSource = self.skillPreview:getImageSource()

		if lastSource then
			self.skillPreview:setImageSource(path)
			g_textures.unload(lastSource)
		end

		self.skillPreview:setImagePlaying(false)
		self.skillPreview:setImageAnimationRepeated(true)
		self.skillPreview:setVisible(true)
		self.skillPreview:setEnabled(true)
	else
		self.skillPreview:setVisible(false)
		self.skillPreview:setEnabled(false)
	end
end

function CharacterCreation:updateGender(button)
	if self.currentGender == button then
		return
	end

	self.currentGender:setOn(false)

	self.currentGender = button

	button:setOn(true)
	self:updateCharacter()
end

function CharacterCreation:updateCharacter()
	local sex = self.currentGender:getId() == "male" and 1 or 0
	local archetype = ArchetypeIds[self.currentArchetype.iconName] or 1
	local outfit = self:getDefaultOutfit(sex, archetype)

	self.characterOutfit:setOutfit(outfit)
end

function CharacterCreation:show(reset)
	if self.window:isVisible() then
		return
	end

	if reset then
		self:reset()
	end

	CharacterList.hide(false)
	self.window:show()
	self.window:raise()
	self.window:focus()
	self.characterName:blinkCursor()
end

function CharacterCreation:hide()
	self.window:hide()
end

function CharacterCreation:isVisible()
	return self.window:isVisible()
end

function CharacterCreation:back()
	self:hide()
	CharacterList.showCharacters()
end

function CharacterCreation:confirmCreation()
	self.characterNameError:clearText()
	self.characterNameWarning:setVisible(false)
	self.characterNameInput:setOn(false)
	self.createButton:setEnabled(false)

	local name = self.characterName:getText()
	local archetype = ArchetypeIds[self.currentArchetype.iconName]
	local sex = self.currentGender:getId() == "male" and 1 or 0

	CharacterList.doCharacter(name, archetype, sex)
end

function CharacterCreation:error(message)
	self.characterName:clearText()
	self.characterName:clearFocus()
	self.characterNameInput:setOn(true)
	self.characterNameError:setText(message)
	self.characterNameWarning:setVisible(true)
	self.createButton:setEnabled(true)
end

function CharacterCreation:getDefaultOutfit(sex, archetype)
	local archetype = assets[archetype]

	if archetype then
		return sex == 1 and archetype.outfit.male or archetype.outfit.female
	end

	return nil
end

function CharacterCreation:getArchetypes()
	return assets
end

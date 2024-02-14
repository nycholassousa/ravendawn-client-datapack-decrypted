-- chunkname: @/modules/game_guild/create_guild.lua

function GameGuild.onCreateGuildNameChange(widget, name)
	local valid = true

	if name == "" then
		widget:setOn(true)
		widget:setTooltip("Guild name cannot be empty.")

		return
	end

	if name:starts(" ") or name:ends(" ") then
		widget:setOn(true)
		widget:setTooltip("Guild name cannot start or end with a space.")

		return
	end

	if not name:match("^[a-zA-Z ]+$") then
		widget:setOn(true)
		widget:setTooltip("Guild name can only contain letters and spaces.")

		return
	end

	if name:match("  ") then
		widget:setOn(true)
		widget:setTooltip("Guild name cannot contain 2 consecutive spaces.")

		return
	end

	local words = name:explode(" ")

	for _, word in pairs(words) do
		if word:len() < 2 then
			widget:setOn(true)
			widget:setTooltip("Each word in guild name must be at least 2 characters long.")

			return
		end
	end

	widget:setTooltip("")
	g_tooltip.hide()
	widget:setOn(false)

	local self = GameGuild

	self.createOptions.name = name

	return true
end

function GameGuild.onCreateGuildTagChange(widget, tag)
	local valid = true

	if tag == "" then
		widget:setOn(true)
		widget:setTooltip("Guild tag cannot be empty.")

		return
	end

	if tag:find(" ") then
		widget:setOn(true)
		widget:setTooltip("Guild tag can only contain letters.")

		return
	end

	if not tag:match("^[a-zA-Z]+$") then
		widget:setOn(true)
		widget:setTooltip("Guild tag can only contain letters.")

		return
	end

	if #tag < 2 or #tag > 3 then
		widget:setOn(true)
		widget:setTooltip("Guild tag must be 2 or 3 characters long.")

		return
	end

	widget:setTooltip("")
	g_tooltip.hide()
	widget:setOn(false)

	local self = GameGuild

	self.createOptions.tag = tag

	return true
end

function GameGuild.onCreateGuildButtonClicked()
	local self = GameGuild

	self:sendOpcode({
		action = "create_guild",
		createOptions = self.createOptions
	})

	local panel = self.panels.create_panel

	panel.content.create_button_panel.create_button:setEnabled(false)
end

function GameGuild:displayCreatePanel()
	local panel = self.panels.create_panel

	panel.top_panel.title:setText("Create Guild")
	panel.content.name_input_panel.input:setText("")
	panel.content.name_input_panel.input:setEnabled(true)
	panel.content.tag_input_panel.input:setText("")
	panel.content.tag_input_panel.input:setEnabled(true)
	panel.content.description_panel.input_panel:setText("")
	panel.content.language_select_panel.language_select:setCurrentOption(cfg.indexToLanguage[1])
	panel.content.focus_select_panel.focus_select:setCurrentOption(cfg.indexToFocus[1])
	self:selectLogoBackground(panel.content.logo_background_panel.content:getChildByIndex(1), 1)
	self:selectLogoForeground(panel.content.logo_foreground_panel.content:getChildByIndex(1), 1)
	panel.content.requirement_panel:show()
	panel.content.list_guild_panel:hide()
	panel.content.create_button_panel.create_button:setText("Create Guild")

	self.createOptions.name = ""
	self.createOptions.tag = ""

	function panel.content.create_button_panel.create_button.onClick()
		local self = GameGuild

		self:sendOpcode({
			action = "create_guild",
			createOptions = self.createOptions
		})
		panel.content.create_button_panel.create_button:setEnabled(false)
	end

	panel:setSize(panel.createSize)
	panel:show()
	panel:raise()
end

function GameGuild:selectLogoBackground(widget, index)
	local panel = self.panels.create_panel

	panel.content.icon_panel.background:setImageSource("/images/ui/windows/guild/logo_background/" .. string.format(cfg.logoImageFileFormat, index) .. ".png")

	self.createOptions.icon.background = index

	for _, child in pairs(widget:getParent():getChildren()) do
		child:setOn(false)
	end

	widget:setOn(true)
end

function GameGuild:selectLogoForeground(widget, index)
	local panel = self.panels.create_panel

	panel.content.icon_panel.icon:setImageSource("/images/ui/windows/guild/logo_icons/" .. string.format(cfg.logoImageFileFormat, index) .. ".png")

	self.createOptions.icon.foreground = index

	for _, child in pairs(widget:getParent():getChildren()) do
		child:setOn(false)
	end

	widget:setOn(true)
end

function GameGuild:displayEditGuildWindow()
	local panel = self.panels.create_panel

	panel.top_panel.title:setText("Edit Guild")
	panel.content.name_input_panel.input:setText(self.guildInfo.name)
	panel.content.name_input_panel.input:setEnabled(false)
	panel.content.tag_input_panel.input:setText(self.guildInfo.tag)
	panel.content.tag_input_panel.input:setEnabled(false)
	panel.content.description_panel.input_panel:setText(self.guildInfo.description)
	panel.content.language_select_panel.language_select:setCurrentOption(cfg.indexToLanguage[self.guildInfo.language])
	panel.content.focus_select_panel.focus_select:setCurrentOption(cfg.indexToFocus[self.guildInfo.focus])
	self:selectLogoBackground(panel.content.logo_background_panel.content:getChildByIndex(self.guildInfo.logo.background), self.guildInfo.logo.background)
	self:selectLogoForeground(panel.content.logo_foreground_panel.content:getChildByIndex(self.guildInfo.logo.icon), self.guildInfo.logo.icon)
	panel.content.requirement_panel:hide()
	panel.content.list_guild_panel:show()
	panel.content.list_guild_panel:setChecked(not self.guildInfo.listed)
	panel.content.create_button_panel.create_button:setText("Save")

	function panel.content.create_button_panel.create_button.onClick()
		local self = GameGuild

		self:sendOpcode({
			action = "edit_guild",
			editOptions = self.createOptions
		})
		panel.content.create_button_panel.create_button:setEnabled(false)
	end

	panel:setSize(panel.editSize)
	panel:show()
	panel:raise()
end

-- chunkname: @/modules/game_guild/join_guild.lua

function GameGuild:displayJoinGuildPage(guilds, totalResults)
	guilds = guilds or {}

	local guildList = self.panels.join_panel.content
	local numGuilds = #guilds
	local guildsPerPage = cfg.joinGuildAmountPerPage

	self.joinGuildWindow.totalGuilds = totalResults

	self:updateJoinGuildListPagination()

	for i, guild in ipairs(guilds) do
		local widget = guildList:getChildById(string.format("guild_%d", i))

		widget.guildId = guild.id

		widget:setEnabled(true)
		widget:setOpacity(1)

		local columns = widget:getChildren()
		local logoWidget = columns[1]
		local nameWidget = columns[2]
		local languageWidget = columns[3]
		local descriptionWidget = columns[4]
		local focusWidget = columns[5]
		local membersWidget = columns[6]
		local actionWidget = columns[7]

		logoWidget:setImageSource("/images/ui/windows/guild/logo_background/" .. string.format(cfg.logoImageFileFormat, guild.logo.background) .. ".png")
		logoWidget:setIcon("/images/ui/windows/guild/logo_icons/" .. string.format(cfg.logoImageFileFormat, guild.logo.icon) .. ".png")
		logoWidget:setImageSize({
			height = 50,
			width = 50
		})
		logoWidget:setIconSize({
			height = 46,
			width = 46
		})
		logoWidget:setImageOffset({
			x = 15,
			y = 10
		})
		logoWidget:setIconOffset({
			x = 17,
			y = 12
		})
		nameWidget.text:setText(guild.name)
		languageWidget.icon:setOn(false)
		languageWidget.icon:breakAnchors()
		languageWidget.icon:setOn(true)
		languageWidget.icon:setImageSource("/images/ui/windows/guild/flags/" .. cfg.languageToFlag[cfg.indexToLanguage[guild.language]] .. ".png")
		languageWidget.text:setChecked(true)
		languageWidget.text:setText(cfg.indexToLanguage[guild.language])

		local desc = #guild.description >= 100 and string.sub(guild.description, 1, 100) .. "..." or guild.description

		descriptionWidget.text:setText(desc)
		descriptionWidget:setTooltip(guild.description)
		focusWidget:setIcon("/images/ui/windows/guild/" .. cfg.focusToIcon[guild.focus] .. ".png")
		focusWidget:setTooltip(cfg.possibleFocuses[guild.focus])
		membersWidget.text:setText(string.format("%i/%i", guild.totalMembers, guild.maxSlots))

		local function CancelOnClick()
			self:sendOpcode({
				action = "cancel_join_guild",
				guildId = guild.id
			})
		end

		local function ApplyOnClick()
			self:sendOpcode({
				action = "apply_join_guild",
				guildId = guild.id
			})
		end

		if guild.totalMembers == guild.maxSlots then
			actionWidget.apply_button:setText("Full Guild")
			actionWidget.apply_button:setEnabled(false)
		elseif guild.applied then
			actionWidget.apply_button:setText("Cancel")
			actionWidget.apply_button:setEnabled(true)
			actionWidget.apply_button:setStyle("DangerButton")

			actionWidget.apply_button.onClick = CancelOnClick
		else
			actionWidget.apply_button:setText("Apply")
			actionWidget.apply_button:setEnabled(true)
			actionWidget.apply_button:setStyle("SuccessButton")

			actionWidget.apply_button.onClick = ApplyOnClick
		end

		actionWidget.apply_button._CancelOnClick = CancelOnClick
		actionWidget.apply_button._ApplyOnClick = ApplyOnClick
	end

	for i = numGuilds + 1, guildsPerPage do
		local guildWidget = guildList:getChildById(string.format("guild_%d", i))

		guildWidget:setEnabled(false)
		guildWidget:setOpacity(0)
	end
end

function GameGuild.onJoinGuildSearchInputEnter(widget, text)
	local self = GameGuild

	self:requestNewJoinGuildPage(true, true)
end

function GameGuild:changeJoinGuildListPage(direction, force)
	local max_pages = math.ceil(self.joinGuildWindow.totalGuilds / cfg.joinGuildAmountPerPage)
	local oldPage = self.joinGuildWindow.page
	local newPage = self.joinGuildWindow.page

	if direction == "next" then
		if newPage < max_pages then
			newPage = newPage + 1
		end
	elseif direction == "previous" then
		if newPage > 1 then
			newPage = newPage - 1
		end
	else
		direction = tonumber(direction)

		if not direction then
			return
		end

		newPage = math.min(math.max(direction, 1), max_pages)
	end

	self.joinGuildWindow.page = newPage

	self:updateJoinGuildListPagination()

	if not force and oldPage == newPage then
		return
	end

	self:requestNewJoinGuildPage(false)
end

function GameGuild:updateJoinGuildListPagination()
	local max_pages = math.ceil(self.joinGuildWindow.totalGuilds / cfg.joinGuildAmountPerPage)

	self.joinGuildWindow.page = math.min(self.joinGuildWindow.page, max_pages)

	self.joinGuildWindow.paginationPanel.page_edit:setText(self.joinGuildWindow.page, true)
	self.joinGuildWindow.paginationPanel.page_edit:setCursorPos(-1)
	self.joinGuildWindow.paginationPanel.prev_button:setOn(self.joinGuildWindow.page > 1)
	self.joinGuildWindow.paginationPanel.next_button:setOn(max_pages > self.joinGuildWindow.page)
	self.joinGuildWindow.paginationPanel.prev_button:setEnabled(self.joinGuildWindow.page > 1)
	self.joinGuildWindow.paginationPanel.next_button:setEnabled(max_pages > self.joinGuildWindow.page)
	self.joinGuildWindow.paginationPanel.page_count:setText(string.format("of %i", max_pages), true)
end

function GameGuild:requestNewJoinGuildPage(newCacheIdentifier, resetPage)
	if not self:canPerformAction() then
		self:displayLock()
	else
		self:displayLock(g_clock.millis() + cfg.minLockDuration)
	end

	local guildName = self.panels.join_panel.search.search_panel.search_input_panel.input:getText():lower()
	local filters = self.joinGuildWindow.filters
	local languages = filters.Language
	local filterLanguage = {}

	if languages then
		for language in pairs(languages) do
			table.insert(filterLanguage, cfg.languageToIndex[language])
		end
	end

	local focus = filters["Focus "]
	local filterFocus = {}

	if focus then
		for focusName in pairs(focus) do
			table.insert(filterFocus, cfg.focusNameToIndex[focusName])
		end
	end

	local misc = filters.Misc
	local filterMisc = {}

	if misc then
		for miscName in pairs(misc) do
			table.insert(filterMisc, cfg.miscNameToIndex[miscName])
		end
	end

	if resetPage or self.joinGuildWindow.page == 0 then
		self.joinGuildWindow.page = 1
	end

	if newCacheIdentifier then
		self.joinGuildWindow.cacheIdentifier = os.time()
	end

	local data = {
		action = "fetch_join_guild",
		filters = {
			language = filterLanguage,
			focus = filterFocus,
			misc = filterMisc,
			name = guildName
		},
		page = self.joinGuildWindow.page,
		cacheIdentifier = self.joinGuildWindow.cacheIdentifier
	}

	self:sendOpcode(data)
end

function GameGuild:onJoinGuildFilterPanelClick(widget, state)
	if self.joinGuildWindow.popupMenu then
		self.joinGuildWindow.popupMenu:destroy()

		self.joinGuildWindow.popupMenu = nil
	end

	self.joinGuildWindow.popupMenu = g_ui.createWidget("FilterPopupMenu")
	self.joinGuildWindow.popupMenu.lastWidth = widget:getWidth()

	local disconnects = {}

	table.insert(disconnects, connect(self.joinGuildWindow.searchPanel, {
		onVisibilityChange = function(widget, visible)
			if not visible and self.joinGuildWindow.popupMenu then
				self.joinGuildWindow.popupMenu:destroy()

				self.joinGuildWindow.popupMenu = nil
			end
		end
	}))
	table.insert(disconnects, connect(g_ui.getRootWidget(), {
		onMousePress = function(widget, mousePos)
			if not self.joinGuildWindow.popupMenu then
				return
			end

			if not self.joinGuildWindow.popupMenu:containsPoint(mousePos) then
				if self.joinGuildWindow.popupMenu.menu then
					if not self.joinGuildWindow.popupMenu.popup:containsPoint(mousePos) then
						self.joinGuildWindow.popupMenu.popup:destroy()

						self.joinGuildWindow.popupMenu.popup = nil
					end

					return
				end

				self.joinGuildWindow.popupMenu:destroy()

				self.joinGuildWindow.popupMenu = nil
			end
		end
	}))
	connect(self.joinGuildWindow.popupMenu, {
		onDestroy = function()
			widget:setOn(false)

			if self.joinGuildWindow.popupMenu.popup then
				self.joinGuildWindow.popupMenu.popup:destroy()

				self.joinGuildWindow.popupMenu.popup = nil
			end

			for _, widgets in ipairs(disconnects) do
				for _, disconnect in ipairs(widgets) do
					disconnect()
				end
			end
		end
	})

	for _, filter in ipairs(cfg.filtersOrder) do
		self.joinGuildWindow.popupMenu:addOption(filter, function(option)
			if self.joinGuildWindow.popupMenu.currentSelectedOption then
				self.joinGuildWindow.popupMenu.currentSelectedOption:setOn(false)
			end

			option:setOn(true)

			self.joinGuildWindow.popupMenu.currentSelectedOption = option

			GameGuild:createExpandedFilterPopup(self.joinGuildWindow.popupMenu, option, filter)
		end, nil, true)
		self.joinGuildWindow.popupMenu:addSeparator()
	end

	g_ui.createWidget("FilterPopupMenuClearAll", self.joinGuildWindow.popupMenu)

	local displayPos = widget:getPosition()

	displayPos.y = displayPos.y + widget:getHeight() + 4

	self.joinGuildWindow.popupMenu:setFocusable(false)
	self.joinGuildWindow.popupMenu:display(displayPos, true, self.window)
	self.joinGuildWindow.popupMenu.clear_button:setEnabled(not table.empty(self.joinGuildWindow.filters))

	for _, filter in ipairs(cfg.filtersOrder) do
		local filters = self.joinGuildWindow.filters[filter]

		if filters then
			local option = self.joinGuildWindow.popupMenu:getChildById(filter:lower())

			for filterName in pairs(filters) do
				local label = g_ui.createWidget("FilterPopupMenuSubItem", option.content)

				label:setText(string.format("    %s", filterName))
				label:setId(filterName)

				option.content.filters = option.content.filters or {}
				option.content.filters[filterName] = true
			end

			local height = 30

			for _, child in ipairs(option.content:getChildren()) do
				height = height + child:getHeight()
			end

			option:setHeight(height)
		end
	end
end

function GameGuild:createExpandedFilterPopup(menu, parentOption, filterName)
	local options = cfg.filters[filterName]

	if not options then
		return
	end

	menu.popup = g_ui.createWidget("FilterPopupMenu")

	for _, optionName in ipairs(options) do
		local option = menu.popup:addOption(optionName, function()
			return
		end, nil, true, "FilterPopupMenuButtonExpanded")

		self:loadFilterStates(parentOption:getText(), option)
	end

	connect(menu.popup, {
		onDestroy = function()
			parentOption:setOn(false)
		end
	})

	local displayPos = menu:getPosition()

	displayPos.x = displayPos.x + menu.popup:getWidth() + 5
	displayPos.y = parentOption:getY()

	menu.popup:setFocusable(false)
	menu.popup:display(displayPos, true, self.window)
end

function GameGuild:onFilterPanelCheckboxChange(widget, state)
	if not self:canPerformAction() then
		widget:setChecked(not state, true)

		return
	end

	local categoryFilter = self.joinGuildWindow.popupMenu

	if not categoryFilter then
		return
	end

	local filters = categoryFilter.popup

	if not filters then
		return
	end

	local selectedCategory = categoryFilter.currentSelectedOption

	if not selectedCategory then
		return
	end

	local changedCategory = selectedCategory:getText()
	local changedFilter = widget:getParent():getText()

	self.joinGuildWindow.filters[changedCategory] = self.joinGuildWindow.filters[changedCategory] or {}
	self.joinGuildWindow.filters[changedCategory][changedFilter] = state or nil

	if state and not selectedCategory.content.filters or not selectedCategory.content.filters[changedFilter] then
		local label = g_ui.createWidget("FilterPopupMenuSubItem", selectedCategory.content)

		label:setText(string.format("    %s", changedFilter))
		label:setId(changedFilter)

		selectedCategory.content.filters = selectedCategory.content.filters or {}
		selectedCategory.content.filters[changedFilter] = true
	elseif not state then
		local label = selectedCategory.content:getChildById(changedFilter)

		if label then
			label:destroy()

			selectedCategory.content.filters[changedFilter] = nil
		end
	end

	local height = 30

	for _, child in ipairs(selectedCategory.content:getChildren()) do
		height = height + child:getHeight()
	end

	selectedCategory:setHeight(height)

	if table.empty(self.joinGuildWindow.filters[changedCategory]) then
		self.joinGuildWindow.filters[changedCategory] = nil
	end

	categoryFilter.clear_button:setEnabled(not table.empty(self.joinGuildWindow.filters))
	self:requestNewJoinGuildPage(true, true)
end

function GameGuild:loadFilterStates(parentCategory, optionWidget)
	local filters = self.joinGuildWindow.filters[parentCategory]

	if not filters then
		return
	end

	local filterName = optionWidget:getText()

	if filters[filterName] then
		optionWidget.checkbox:setChecked(true, true)
	end
end

function GameGuild:clearAllFilters()
	self.joinGuildWindow.filters = {}

	if not self.joinGuildWindow.popupMenu then
		return
	end

	self.joinGuildWindow.popupMenu.clear_button:setEnabled(false)

	for _, child in ipairs(self.joinGuildWindow.popupMenu:getChildren()) do
		if child.content then
			child.content.filters = nil

			child.content:destroyChildren()
			child:setHeight(30)
		end
	end

	self:requestNewJoinGuildPage(true, true)
end

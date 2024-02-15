-- chunkname: @/modules/game_guild/guild.lua

GameGuild = {
	unlockTime = 0,
	panels = {},
	createOptions = {
		language = "",
		name = "",
		tag = "",
		listed = true,
		description = "",
		focus = 0,
		icon = {
			foreground = 0,
			background = 0
		}
	},
	joinGuildWindow = {
		page = 1,
		cacheIdentifier = 0,
		totalGuilds = 0,
		filters = {}
	},
	guildInfo = {
		logo = {}
	},
	overviewPanel = {
		orderType = "rank",
		orderDirection = "desc"
	},
	membersPanel = {
		orderDirection = "desc",
		orderType = "rank",
		applications = {
			orderType = "name",
			orderDirection = "asc"
		}
	}
}

function GameGuild:loadConfig()
	local func, error = loadfile("config.lua")

	if not func then
		g_logger.fatal(error)

		return false
	end

	func()

	local env = getfenv(0)

	env.cfg = {}

	setmetatable(env.cfg, {
		__index = env
	})
	setfenv(func, env.cfg)

	return true
end

function GameGuild:init()
	self:loadConfig()
	g_ui.importStyle("styles/main.otui")
	g_ui.importStyle("styles/join_create_panel.otui")
	g_ui.importStyle("styles/create_panel.otui")
	g_ui.importStyle("styles/join_guild_search.otui")
	g_ui.importStyle("styles/join_guild_list.otui")
	g_ui.importStyle("styles/join_panel.otui")
	g_ui.importStyle("styles/top_panel.otui")
	g_ui.importStyle("styles/overview_panel.otui")
	g_ui.importStyle("styles/overview_panel_list.otui")
	g_ui.importStyle("styles/members_panel.otui")
	g_ui.importStyle("styles/members_panel_list.otui")
	g_ui.importStyle("styles/applications_panel_list.otui")
	g_ui.importStyle("styles/post_announcement.otui")
	dofile("join_guild.lua")
	dofile("create_guild.lua")

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.window = g_ui.createWidget("GameGuildWindow", HUDPanel)
	self.panels.top_panel = self.window.content.top_panel
	self.panels.join_create_panel = self.window.content.join_create_panel

	local createPanel = g_ui.createWidget("GameGuildCreateGuildPanel", HUDPanel)

	self.panels.create_panel = createPanel

	connect(self.window, {
		onVisibilityChange = function(window, visible)
			if not visible then
				createPanel:hide()
				self:sendOpcode({
					action = "close_window"
				})
			else
				self:selectPanel(self.selectedPanel or "join_create_panel", true)
			end
		end
	})

	function createPanel.onVisibilityChange(createPanel, visible)
		if visible then
			self.window:blockInputPanel(true)

			function self.window.grayOutPanel.onMousePress()
				createPanel:raise()
			end
		else
			self.window:blockInputPanel(false)
		end
	end

	self.panels.join_panel = self.window.content.join_panel
	self.joinGuildWindow.paginationPanel = self.panels.join_panel.content.pagination_panel
	self.joinGuildWindow.searchPanel = self.panels.join_panel.search.search_panel

	self:updateJoinGuildListPagination()

	self.panels.overview_panel = self.window.content.overview_panel
	self.panels.members_panel = self.window.content.members_panel

	for i = 1, cfg.guildLogoBackgroundAmount do
		local widget = g_ui.createWidget("GameGuildCreateGuildPanelLogoBackgroundPanelButton", createPanel.content.logo_background_panel.content)

		widget:setIcon("/images/ui/windows/guild/logo_background/" .. string.format(cfg.logoImageFileFormat, i) .. ".png")

		function widget.onClick()
			self:selectLogoBackground(widget, createPanel.content.logo_background_panel.content:getChildIndex(widget))
		end
	end

	self:selectLogoBackground(createPanel.content.logo_background_panel.content:getFirstChild(), 1)

	for i = 1, cfg.guildLogoIconAmount do
		local widget = g_ui.createWidget("GameGuildCreateGuildPanelLogoBackgroundPanelButton", createPanel.content.logo_foreground_panel.content)

		widget:setIcon("/images/ui/windows/guild/logo_icons/" .. string.format(cfg.logoImageFileFormat, i) .. ".png")

		function widget.onClick()
			self:selectLogoForeground(widget, createPanel.content.logo_foreground_panel.content:getChildIndex(widget))
		end
	end

	self:selectLogoForeground(createPanel.content.logo_foreground_panel.content:getFirstChild(), 1)

	local frames = {}

	for _ = 1, 30 do
		table.insert(frames, {
			size = {
				height = 200,
				width = 200
			},
			offset = {
				x = self.window.loading_icon:getWidth() / 2 - 115,
				y = self.window.loading_icon:getHeight() / 2 - 120
			}
		})
	end

	self.loadingAnimation = Animation.create({
		pauseWhenHidden = true,
		loop = -1,
		duration = 1000,
		imageSource = "/images/ui/loading/frame-%d",
		canvas = self.window.loading_icon,
		frames = frames,
		onStart = function(self, canvas)
			canvas:show()
			canvas:raise()
		end,
		onStop = function(self, canvas)
			canvas:hide()
		end
	})

	ProtocolGame.registerExtendedOpcode(ExtendedIds.Guild, self.onExtendedOpcode)
	connect(g_game, {
		onGameStart = self.onGameStart,
		onGameEnd = self.onGameEnd,
		onCoinBalance = self.onBalanceChange
	})
	connect(LocalPlayer, {
		onGuildChange = self.onGuildChange,
		onLevelChange = self.onLevelChange,
		onPremiumChange = self.onPremiumChange
	})
	connect(self, {
		onGuildRankChange = self.onGuildRankChange
	})

	if g_game.isOnline() then
		self:onGameStart()

		local player = g_game.getLocalPlayer()

		if player then
			self.onLevelChange(player, player:getLevel())
			self.onPremiumChange(player, player:isPremium())
			self.onBalanceChange(nil, player.silverBalance)
		end
	end

	self:setMembersPanelApplicationsSortOrder("asc", 1, true)
	self:setMembersPanelMembersSortOrder("asc", 2, true)
	self:setOverviewPanelMembersSortOrder("asc", 2, true)
	g_keyboard.bindKeyDown("V", self.toggle)
end

function GameGuild:terminate()
	self.window:destroy()

	if self.panels.create_panel then
		self.panels.create_panel:destroy()
	end

	disconnect(g_game, {
		onGameStart = self.onGameStart,
		onGameEnd = self.onGameEnd,
		onCoinBalance = self.onBalanceChange
	})
	disconnect(LocalPlayer, {
		onGuildChange = self.onGuildChange,
		onLevelChange = self.onLevelChange,
		onPremiumChange = self.onPremiumChange
	})
	disconnect(self, {
		onGuildRankChange = self.onGuildRankChange
	})
	self:sendOpcode({
		action = "close_window"
	})
	g_keyboard.unbindKeyDown("V")
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Guild)

	GameGuild = nil
end

function GameGuild.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameGuild.window:isVisible() then
		GameGuild.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameGuild.window:show()
		GameGuild.window:raise()
	end
end

function GameGuild.onGuildChange(player, guild, oldGuild)
	local self = GameGuild

	if guild > 0 then
		self:selectPanel("overview_panel")
	else
		self:selectPanel("join_create_panel")
	end

	local position = player:getPosition()

	if not position then
		return
	end

	local creatures = g_map.getSpectators(position, true)

	table.insert(creatures, player)

	for _, creature in pairs(creatures) do
		if creature:isPlayer() then
			creature:updateNameColor()
		end
	end
end

function GameGuild:selectPanel(panelName, show)
	local panel = self.panels[panelName]

	if not panel then
		return
	end

	if not show and self.selectedPanel == panelName then
		return
	end

	for name, panel in pairs(self.panels) do
		panel:setVisible(panelName == name)
	end

	for _, child in ipairs(self.panels.top_panel:getChildren()) do
		child:setOn(false)
	end

	if panelName == "join_panel" then
		self:requestNewJoinGuildPage(true)
	elseif panelName == "overview_panel" then
		self:requestGuildInfo()
		self.panels.top_panel.overview:setOn(true)
		self.panels.top_panel:show()
	elseif panelName == "members_panel" then
		self:requestGuildInfo()
		self.panels.top_panel.members:setOn(true)
		self.panels.top_panel:show()
	end

	self.selectedPanel = panelName
end

function GameGuild:show()
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local guild = player:getGuild()

	if not guild then
		self:selectPanel("join_create_panel")
	end
end

function GameGuild.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Guild then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "create_guild" then
		local panel = GameGuild.panels.create_panel

		if data.error then
			if data.error:find("tag", 1, true) then
				panel.content.tag_input_panel.input:setOn(true)
				panel.content.tag_input_panel.input:setTooltip(data.error)
			else
				panel.content.name_input_panel.input:setOn(true)
				panel.content.name_input_panel.input:setTooltip(data.error)
			end
		end

		panel.content.create_button_panel.create_button:setEnabled(true)

		if data.success then
			panel:hide()
		end
	elseif data.action == "fetch_join_guild" then
		GameGuild.unlockTime = g_clock.millis() + (data.lock or cfg.minLockDuration)
		GameGuild.joinGuildWindow.list = data.guilds

		function GameGuild.unlockCallback()
			GameGuild:displayJoinGuildPage(data.guilds, data.totalResults)
		end
	elseif data.action == "cancel_join_guild" then
		GameGuild:requestNewJoinGuildPage(true)
	elseif data.action == "apply_join_guild" then
		GameGuild:requestNewJoinGuildPage(true)
	elseif data.action == "fetch_guild_info" then
		if not data.subaction or data.subaction == "edit_guild" then
			GameGuild.guildInfo = data.guildInfo

			signalcall(GameGuild.onGuildRankChange, GameGuild, GameGuild.guildInfo.rank)

			local createPanel = GameGuild.panels.create_panel

			createPanel.content.create_button_panel.create_button:setEnabled(true)
			createPanel:hide()

			GameGuild.unlockTime = g_clock.millis() + (data.lock or cfg.minLockDuration)

			function GameGuild.unlockCallback()
				if GameGuild.selectedPanel == "overview_panel" then
					GameGuild:updateOverviewPanel()
				elseif GameGuild.selectedPanel == "members_panel" then
					GameGuild:updateMembersPanel()
				end
			end

			if data.subaction == "edit_guild" then
				GameGuild.unlockCallback()
			end
		elseif data.subaction == "members" or data.subaction == "change_rank" then
			GameGuild.guildInfo.members = data.guildInfo.members
			GameGuild.guildInfo.totalMembers = data.guildInfo.totalMembers
			GameGuild.guildInfo.leader = data.guildInfo.leader

			if data.rank then
				GameGuild.guildInfo.rank = data.rank

				signalcall(GameGuild.onGuildRankChange, GameGuild, GameGuild.guildInfo.rank)
			end

			local createPanel = GameGuild.panels.create_panel

			createPanel.content.create_button_panel.create_button:setEnabled(true)
			createPanel:hide()

			function GameGuild.unlockCallback()
				if GameGuild.selectedPanel == "overview_panel" then
					GameGuild:updateOverviewPanel()
				elseif GameGuild.selectedPanel == "members_panel" then
					GameGuild:updateMembersPanel()
				end
			end

			if data.subaction == "members" then
				GameGuild.unlockCallback()
			else
				GameGuild.unlockTime = g_clock.millis() + (data.lock or cfg.minLockDuration)
			end
		elseif data.subaction == "applications" then
			GameGuild.guildInfo.applications = data.guildInfo.applications

			if GameGuild.selectedPanel == "overview_panel" then
				GameGuild:updateOverviewPanel()
			elseif GameGuild.selectedPanel == "members_panel" then
				GameGuild:updateMembersPanel()
			end
		elseif data.subaction == "announcements" then
			GameGuild.guildInfo.announcements = data.guildInfo.announcements

			if GameGuild.selectedPanel == "overview_panel" then
				GameGuild:updateOverviewPanel()
			end
		end
	elseif data.action == "add_announcement" and GameGuild.postAnnouncementWindow then
		GameGuild.postAnnouncementWindow:hide()
		GameGuild.postAnnouncementWindow.content.button_panel.post_button:setEnabled(true)
	end
end

function GameGuild:sendOpcode(data)
	local protocol = g_game.getProtocolGame()

	if not protocol then
		return
	end

	protocol:sendExtendedOpcode(ExtendedIds.Guild, g_game.serializeTable(data))
end

function GameGuild.onGameStart()
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local guild = player:getGuildId()

	GameGuild.onGuildChange(player, guild, 0)
end

function GameGuild.onGameEnd()
	GameGuild:selectPanel("join_create_panel")
end

function GameGuild.onLevelChange(player, level)
	local self = GameGuild
	local panel = self.panels.create_panel

	panel.content.requirement_panel.content.level:setOn(level >= cfg.createRequirements.level)
	panel.content.create_button_panel.create_button:setEnabled(true)

	if not panel.content.requirement_panel.content.level:isOn() then
		panel.content.create_button_panel.create_button:setEnabled(false)
	end
end

function GameGuild.onBalanceChange(_, balance)
	local self = GameGuild
	local panel = self.panels.create_panel

	panel.content.requirement_panel.content.silver:setOn(balance >= cfg.createRequirements.silver)
	panel.content.create_button_panel.create_button:setEnabled(true)

	if not panel.content.requirement_panel.content.silver:isOn() then
		panel.content.create_button_panel.create_button:setEnabled(false)
	end
end

function GameGuild.onPremiumChange(player, premium)
	local self = GameGuild
	local panel = self.panels.create_panel

	if premium then
		panel.content.requirement_panel.content.premium:setOn(true)
		panel.content.requirement_panel.content.premium:setChecked(false)
	else
		panel.content.requirement_panel.content.premium:setOn(true)
		panel.content.requirement_panel.content.premium:setChecked(true)
	end

	panel.content.create_button_panel.create_button:setEnabled(true)

	if not panel.content.requirement_panel.content.premium:isOn() then
		panel.content.create_button_panel.create_button:setEnabled(false)
	end
end

function GameGuild:canPerformAction()
	if self.loadingAnimation:isRunning() then
		return false
	end

	return self.unlockTime < g_clock.millis()
end

function GameGuild:displayLock(duration)
	local remaining = (duration or self.unlockTime) - g_clock.millis()

	self.window:blockInputPanel(true)
	self.loadingAnimation:start()
	self.joinGuildWindow.paginationPanel.page_edit:setEditable(false)
	scheduleEvent(function()
		self.window:blockInputPanel(false)
		self.loadingAnimation:stop()
		self.joinGuildWindow.paginationPanel.page_edit:setEditable(true)

		if self.unlockCallback then
			self.unlockCallback()

			self.unlockCallback = nil
		end
	end, remaining)
end

function GameGuild:requestGuildInfo()
	if not self:canPerformAction() then
		self:displayLock()
	else
		self:displayLock(g_clock.millis() + cfg.minLockDuration)
	end

	self.loadingAnimation:start()

	if self.requestEvent then
		removeEvent(self.requestEvent)

		self.requestEvent = nil
	end

	self.requestEvent = scheduleEvent(function()
		if not self.window:isVisible() then
			return
		end

		self:sendOpcode({
			action = "fetch_guild_info"
		})
	end, math.max(1, cfg.minLockDuration / 2))
end

function GameGuild:updateOverviewPanel()
	local topPanel = self.panels.top_panel

	if not topPanel:isVisible() then
		topPanel:show()
	end

	local overviewPanel = self.panels.overview_panel
	local infoPanel = overviewPanel.info_panel

	infoPanel.logo_panel.background:setImageSource("/images/ui/windows/guild/logo_background/" .. string.format(cfg.logoImageFileFormat, self.guildInfo.logo.background) .. ".png")
	infoPanel.logo_panel.icon:setImageSource("/images/ui/windows/guild/logo_icons/" .. string.format(cfg.logoImageFileFormat, self.guildInfo.logo.icon) .. ".png")
	infoPanel.name_panel:setText(self.guildInfo.name)
	infoPanel.description_panel:setText(self.guildInfo.description)

	local membersPanel = overviewPanel.members_panel

	membersPanel.header.title:setText(string.format("Members %d/%d", self.guildInfo.totalMembers, self.guildInfo.maxSlots))
	membersPanel.header.applications.value:setText(table.count(self.guildInfo.applications))

	local sortedMembers = {}

	for _, member in pairs(self.guildInfo.members) do
		table.insert(sortedMembers, member)
	end

	table.sort(sortedMembers, function(a, b)
		local orderType = self.overviewPanel.orderType

		if orderType == "rank" then
			if self.overviewPanel.orderDirection == "desc" then
				return a.rank > b.rank
			else
				return a.rank < b.rank
			end
		elseif orderType == "name" then
			if self.overviewPanel.orderDirection == "desc" then
				return a.name > b.name
			else
				return a.name < b.name
			end
		end
	end)

	local membersList = membersPanel.content

	for i, member in ipairs(sortedMembers) do
		local child = membersList:getChildByIndex(i + 1)

		child = child or g_ui.createWidget("GameGuildOverviewMembersPanelListItemPanel", membersList)

		local columns = child:getChildren()
		local nameColumn = columns[1]
		local rankColumn = columns[2]
		local levelColumn = columns[3]

		nameColumn.text:setText(member.name)
		rankColumn.rank.text:setText(cfg.guildRankToName[member.rank])
		levelColumn.text:setText(member.level)
		child:show()

		child.hidden = false
	end

	for j = #sortedMembers + 2, membersList:getChildCount() do
		local child = membersList:getChildByIndex(j)

		child:hide()

		child.hidden = true
	end

	self:onOverviewPanelSearchMembers(membersPanel.search_panel.input:getText())

	local announcementPanel = overviewPanel.announcement_panel
	local announcementButton = announcementPanel.new_announcement_button

	announcementButton:setVisible(self.guildInfo.rank <= cfg.GUILD_RANK_VICELEADER)
	announcementPanel.content:destroyChildren()
	table.sort(self.guildInfo.announcements, function(a, b)
		return a.timestamp > b.timestamp
	end)

	for _, announcement in ipairs(self.guildInfo.announcements) do
		local announcementWidget = g_ui.createWidget("GameGuildOverviewPanelAnnouncement", announcementPanel.content)

		announcementWidget.title:setText(announcement.title)
		announcementWidget.date:setText(os.date("%d %b %Y %X", announcement.timestamp))
		announcementWidget.text:setText(announcement.message)
	end
end

function GameGuild:onGuildRankChange(rank)
	local overviewPanel = self.panels.overview_panel
	local infoPanel = overviewPanel.info_panel

	infoPanel.disband_button:setVisible(rank == cfg.GUILD_RANK_LEADER)
	infoPanel.edit_button:setVisible(rank == cfg.GUILD_RANK_LEADER)
	infoPanel.leave_button:setVisible(rank ~= cfg.GUILD_RANK_LEADER)
end

function GameGuild:leaveGuild()
	if self.confirmationWindow then
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	local function yesCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil

		self:sendOpcode({
			action = "leave_guild"
		})
	end

	local function noCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	self.confirmationWindow = displayGeneralBox(tr("Leave Guild"), "Are you sure you want to leave your guild?", {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, modules.game_interface.getRootPanel())
end

function GameGuild:disbandGuild()
	if self.confirmationWindow then
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	local function yesCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil

		self:sendOpcode({
			action = "disband_guild"
		})
	end

	local function noCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	self.confirmationWindow = displayGeneralBox(tr("Disband Guild"), "Are you sure you want to disband your guild? This action is irreversible.", {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, modules.game_interface.getRootPanel())
end

function GameGuild:onOverviewPanelSearchMembers(text)
	local panel = self.panels.overview_panel
	local membersPanel = panel.members_panel
	local membersList = membersPanel.content

	for i = 2, membersList:getChildCount() do
		local child = membersList:getChildByIndex(i)
		local columns = child:getChildren()
		local nameColumn = columns[1]
		local name = nameColumn.text:getText()

		if not child.hidden and string.find(name:lower(), text:lower()) then
			child:show()
		else
			child:hide()
		end
	end
end

function GameGuild:setOverviewPanelMembersSortOrder(orderDirection, orderType, onlyUIUpdate)
	if not onlyUIUpdate and self.overviewPanel.orderDirection == orderDirection and self.overviewPanel.orderType == orderType then
		return
	end

	self.overviewPanel.orderDirection = orderDirection
	self.overviewPanel.orderType = cfg.overviewOrderType[orderType]

	if not self.overviewPanel.orderType then
		return
	end

	local headerPanel = self.panels.overview_panel.members_panel.content.list_header
	local columns = headerPanel:getChildren()
	local sortingHeaderWidgets = {
		columns[1],
		columns[2]
	}

	for _, widget in ipairs(sortingHeaderWidgets) do
		widget.sort_button.desc:setOn(false)
		widget.sort_button.asc:setOn(false)
	end

	local sortingWidget = columns[orderType]

	if orderDirection == "desc" then
		sortingWidget.sort_button.desc:setOn(true)
	else
		sortingWidget.sort_button.asc:setOn(true)
	end

	if not onlyUIUpdate then
		self:updateOverviewPanel()
	end
end

function GameGuild:updateMembersPanel()
	local topPanel = self.panels.top_panel

	if not topPanel:isVisible() then
		topPanel:show()
	end

	local panel = self.panels.members_panel
	local headerPanel = panel.header

	headerPanel.value:setText(string.format("%d/%d", self.guildInfo.totalMembers, self.guildInfo.maxSlots))
	headerPanel.applications_amount:setText(table.count(self.guildInfo.applications))

	local membersList = panel.members_list
	local sortedMembers = {}

	for guid, member in pairs(self.guildInfo.members) do
		member.playerGUID = guid

		table.insert(sortedMembers, member)
	end

	table.sort(sortedMembers, function(a, b)
		if self.membersPanel.orderType == "rank" then
			if self.membersPanel.orderDirection == "desc" then
				return a.rank > b.rank
			else
				return a.rank < b.rank
			end
		elseif self.membersPanel.orderType == "name" then
			if self.membersPanel.orderDirection == "desc" then
				return a.name > b.name
			else
				return a.name < b.name
			end
		elseif self.membersPanel.orderType == "last_online" then
			if self.membersPanel.orderDirection == "desc" then
				return a.lastOnline > b.lastOnline
			else
				return a.lastOnline < b.lastOnline
			end
		end
	end)

	for i, member in ipairs(sortedMembers) do
		local child = membersList:getChildByIndex(i + 1)

		child = child or g_ui.createWidget("GameGuildMembersPanelListItemPanel", membersList)

		function child.onMousePress(widget, mousePos, mouseButton)
			if mouseButton ~= MouseRightButton then
				return
			end

			if self.guildInfo.rank > cfg.GUILD_RANK_COMMANDER or self.guildInfo.rank >= member.rank then
				return
			end

			local menu = g_ui.createWidget("PopupMenu")

			menu:addOption("Kick Player", function()
				self:sendOpcode({
					action = "kick_member",
					playerGUID = member.playerGUID
				})
			end)
			menu:display(mousePos)
		end

		child.playerGUID = member.playerGUID

		local columns = child:getChildren()
		local nameColumn = columns[1]
		local rankColumn = columns[2]
		local levelColumn = columns[3]
		local archetypesColumn = columns[4]
		local lastOnlineColumn = columns[5]

		nameColumn.text:setText(member.name)
		self:setupRankWindow(rankColumn.rank, cfg.guildRankToName[member.rank])
		rankColumn.rank:setOption(cfg.guildRankToName[member.rank], true)
		rankColumn.rank:update(member.rank)
		levelColumn.text:setText(member.level)

		if lastOnlineColumn.text._timeEvent then
			removeEvent(lastOnlineColumn.text._timeEvent)

			lastOnlineColumn.text._timeEvent = nil
		end

		if member.onlineNow then
			lastOnlineColumn.text:setColoredText(GetHighlightedText("{Online Now, #36F991}"))
		else
			local timeDifference = os.difftime(os.time(), member.lastOnline)

			lastOnlineColumn.text:setText(SecondsToTimeAgo(timeDifference))

			lastOnlineColumn.text._timeEvent = cycleEvent(function()
				if not lastOnlineColumn.text then
					return
				end

				local timeDifference = os.difftime(os.time(), member.lastOnline)

				lastOnlineColumn.text:setText(SecondsToTimeAgo(timeDifference))
			end, 60000)

			function lastOnlineColumn.text.onDestroy()
				removeEvent(lastOnlineColumn.text._timeEvent)

				lastOnlineColumn.text._timeEvent = nil
			end
		end

		local archetypesPanel = archetypesColumn.archetypes

		for index, id in pairs(member.archetypes) do
			id = tonumber(id)

			local widget = archetypesPanel:getChildById(index)

			if not widget then
				widget = g_ui.createWidget("GameGuildMembersPanelListItemArchetypesItem", archetypesPanel)

				widget:setId(index)
			end

			widget:setImageSource("/images/ui/icons/archetypes/28x28/" .. ArchetypeNames[id]:lower())
		end

		child:show()

		child.hidden = false
	end

	for j = #sortedMembers + 2, membersList:getChildCount() do
		local child = membersList:getChildByIndex(j)

		child:hide()

		child.hidden = true
	end

	local applicationsList = panel.application_list
	local sortedApplications = {}

	for guid, application in pairs(self.guildInfo.applications) do
		application.playerGUID = guid

		table.insert(sortedApplications, application)
	end

	table.sort(sortedApplications, function(a, b)
		if self.membersPanel.applications.orderType == "name" then
			if self.membersPanel.applications.orderDirection == "desc" then
				return a.name > b.name
			else
				return a.name < b.name
			end
		end
	end)

	for i, application in ipairs(sortedApplications) do
		local child = applicationsList:getChildByIndex(i + 1)

		child = child or g_ui.createWidget("GameGuildMembersPanelApplicationListItemPanel", applicationsList)
		child.playerGUID = application.playerGUID

		local columns = child:getChildren()
		local nameColumn = columns[1]
		local levelColumn = columns[2]
		local archetypesColumn = columns[3]
		local actionColumn = columns[4]

		nameColumn.text:setText(application.name)
		levelColumn.text:setText(application.level)

		local archetypesPanel = archetypesColumn.archetypes

		for index, id in pairs(application.archetypes) do
			id = tonumber(id)

			local widget = archetypesPanel:getChildById(index)

			if not widget then
				widget = g_ui.createWidget("GameGuildMembersPanelListItemArchetypesItem", archetypesPanel)

				widget:setId(index)
			end

			widget:setImageSource("/images/ui/icons/archetypes/28x28/" .. ArchetypeNames[id]:lower())
		end

		child:show()

		child.hidden = false
	end

	for j = #sortedApplications + 2, applicationsList:getChildCount() do
		local child = applicationsList:getChildByIndex(j)

		child:hide()

		child.hidden = true
	end

	self:onMembersPanelSearchMembers(headerPanel.search_panel.input:getText())
	panel.header.invite_button:setVisible(self.guildInfo.rank <= cfg.GUILD_RANK_OFFICER)

	if self.guildInfo.maxSlots < cfg.maxSlots then
		panel.header.increase_slots_button:setVisible(self.guildInfo.rank == cfg.GUILD_RANK_LEADER)
	else
		panel.header.increase_slots_button:setVisible(false)
	end
end

function GameGuild:acceptApplication(playerGUID)
	self:sendOpcode({
		action = "accept_application",
		playerGUID = playerGUID
	})
end

function GameGuild:rejectApplication(playerGUID)
	self:sendOpcode({
		action = "reject_application",
		playerGUID = playerGUID
	})
end

function GameGuild:onMembersPanelSearchMembers(text)
	local panel = self.panels.members_panel
	local membersList = panel.members_list

	for i = 2, membersList:getChildCount() do
		local child = membersList:getChildByIndex(i)
		local columns = child:getChildren()
		local nameColumn = columns[1]
		local name = nameColumn.text:getText()

		if not child.hidden and string.find(name:lower(), text:lower()) then
			child:show()
		else
			child:hide()
		end
	end
end

function GameGuild:setMembersPanelMembersSortOrder(orderDirection, orderType, onlyUIUpdate)
	if not onlyUIUpdate and self.membersPanel.orderDirection == orderDirection and self.membersPanel.orderType == orderType then
		return
	end

	self.membersPanel.orderDirection = orderDirection
	self.membersPanel.orderType = cfg.membersOrderType[orderType]

	if not self.membersPanel.orderType then
		return
	end

	local headerPanel = self.panels.members_panel.members_list.list_header
	local columns = headerPanel:getChildren()
	local sortingHeaderWidgets = {
		columns[1],
		columns[2],
		columns[5]
	}

	for _, widget in ipairs(sortingHeaderWidgets) do
		widget.sort_button.desc:setOn(false)
		widget.sort_button.asc:setOn(false)
	end

	local sortingWidget = columns[orderType]

	if orderDirection == "desc" then
		sortingWidget.sort_button.desc:setOn(true)
	else
		sortingWidget.sort_button.asc:setOn(true)
	end

	if not onlyUIUpdate then
		self:updateMembersPanel()
	end
end

function GameGuild:setMembersPanelApplicationsSortOrder(orderDirection, orderType, onlyUIUpdate)
	if not onlyUIUpdate and self.membersPanel.applications.orderDirection == orderDirection and self.membersPanel.applications.orderType == orderType then
		return
	end

	self.membersPanel.applications.orderDirection = orderDirection
	self.membersPanel.applications.orderType = cfg.applicationOrderType[orderType]

	if not self.membersPanel.applications.orderType then
		return
	end

	local headerPanel = self.panels.members_panel.application_list.list_header
	local columns = headerPanel:getChildren()
	local sortingHeaderWidgets = {
		columns[1]
	}

	for _, widget in ipairs(sortingHeaderWidgets) do
		widget.sort_button.desc:setOn(false)
		widget.sort_button.asc:setOn(false)
	end

	local sortingWidget = columns[orderType]

	if orderDirection == "desc" then
		sortingWidget.sort_button.desc:setOn(true)
	else
		sortingWidget.sort_button.asc:setOn(true)
	end

	if not onlyUIUpdate then
		self:updateMembersPanel()
	end
end

function GameGuild:setupRankWindow(widget, currentRankName)
	local currentRank = cfg.guildNameToRank[currentRankName]

	widget:setImageColor(cfg.guildRankToColor[currentRank])

	local widgetGUID = widget:getParent():getParent().playerGUID

	widget.disableScroll = true

	widget:clearOptions()

	if self.guildInfo.rank == cfg.GUILD_RANK_LEADER and currentRank == cfg.GUILD_RANK_VICELEADER then
		widget:addOption("Leader", {
			icon = "/images/ui/windows/guild/icon_rank_" .. cfg.GUILD_RANK_LEADER
		}, true)
		widget:setIcon("/images/ui/windows/guild/icon_rank_" .. cfg.GUILD_RANK_LEADER)
		widget:setImageColor(cfg.guildRankToColor[cfg.GUILD_RANK_LEADER])
	end

	for rank, rankName in ipairs(cfg.guildRankToName) do
		if rank == cfg.GUILD_RANK_INITIATE or rank == cfg.GUILD_RANK_LEADER then
			widget:addPlaceholderOption(rankName, {
				icon = "/images/ui/windows/guild/icon_rank_" .. rank
			})
			widget:setIcon("/images/ui/windows/guild/icon_rank_" .. rank)
			widget:setImageColor(cfg.guildRankToColor[rank])
		elseif rank == currentRank or self.guildInfo.playerGUID == widgetGUID then
			widget:addPlaceholderOption(rankName, {
				icon = "/images/ui/windows/guild/icon_rank_" .. rank
			})
			widget:setIcon("/images/ui/windows/guild/icon_rank_" .. rank)
			widget:setImageColor(cfg.guildRankToColor[rank])
		elseif self.guildInfo.playerGUID ~= widgetGUID then
			local guildRank = self.guildInfo.rank

			if guildRank < rank then
				widget:addOption(rankName, {
					icon = "/images/ui/windows/guild/icon_rank_" .. rank
				}, true)
				widget:setIcon("/images/ui/windows/guild/icon_rank_" .. rank)
				widget:setImageColor(cfg.guildRankToColor[rank])
			end
		end
	end

	local isOnlyOptionCurrentRank = true

	for _, option in pairs(widget.options) do
		if option.text ~= currentRankName and not option.placeholder then
			isOnlyOptionCurrentRank = false

			break
		end
	end

	if self.guildInfo.rank == cfg.GUILD_RANK_MEMBER or self.guildInfo.rank == cfg.GUILD_RANK_INITIATE or currentRank == cfg.GUILD_RANK_INITIATE or currentRank == cfg.GUILD_RANK_LEADER or isOnlyOptionCurrentRank then
		widget.disableMenu = true

		widget.toggle_icon:hide()
	else
		widget.disableMenu = false

		widget.toggle_icon:show()
	end

	local function callback(rank)
		if not self:canPerformAction() then
			self:displayLock()
		else
			self:displayLock(g_clock.millis() + cfg.minLockDuration)
		end

		self.loadingAnimation:start()
		self:sendOpcode({
			action = "change_rank",
			playerGUID = widgetGUID,
			rank = rank or self.confirmationWindow._rank
		})
	end

	local function yesCallback()
		callback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	local function noCallback()
		widget:setOption(currentRankName, true)
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	function widget.update(widget, rank)
		widget:setImageColor(cfg.guildRankToColor[rank])
		widget:setIcon("/images/ui/windows/guild/icon_rank_" .. rank)
	end

	function widget.onOptionChange(widget, option)
		if self.confirmationWindow then
			self.confirmationWindow:destroy()

			self.confirmationWindow = nil
		end

		local rank = cfg.guildNameToRank[option]

		widget:setImageColor(cfg.guildRankToColor[rank])
		widget:setIcon("/images/ui/windows/guild/icon_rank_" .. rank)

		if g_app.isOnInputEvent() then
			if rank == cfg.GUILD_RANK_LEADER then
				self.confirmationWindow = displayGeneralBox(tr("Pass Leadership"), "Are you sure you want to pass Guild Leader?", {
					{
						text = tr("Yes"),
						callback = yesCallback
					},
					{
						text = tr("No"),
						callback = noCallback
					},
					anchor = AnchorHorizontalCenter
				}, yesCallback, noCallback, nil, self.window)

				widget:setOption(currentRankName, true)
				widget:setImageColor(cfg.guildRankToColor[currentRank])
				widget:setIcon("/images/ui/windows/guild/icon_rank_" .. currentRank)

				self.confirmationWindow._rank = rank
			else
				callback(rank)
			end
		end
	end
end

function GameGuild:onMembersPanelInvitePlayerButtonPressed()
	if self.confirmationWindow then
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	local function yesCallback(inputText)
		self.confirmationWindow:destroy()
		self:sendOpcode({
			action = "invite_player",
			name = inputText
		})
	end

	local function noCallback()
		self.confirmationWindow = nil
	end

	self.confirmationWindow = displayTextInputBox("Invite Player", "Enter name of the player you wish to invite to your Guild.", "", yesCallback, noCallback)

	self.window:blockInputPanel(true)

	function self.confirmationWindow.onDestroy()
		self.window:blockInputPanel(false)
	end

	if self.confirmationWindow then
		self.confirmationWindow:raise()
		self.confirmationWindow.lineEdit:focus()
	end
end

function GameGuild:displayPostAnnouncementWindow()
	self.window:blockInputPanel(true)

	self.postAnnouncementWindow = self.postAnnouncementWindow or g_ui.createWidget("GameGuildOverviewPanelPostAnnouncementWindow", self.window)

	self.postAnnouncementWindow:show()

	function self.postAnnouncementWindow.onVisibilityChange(widget, visible)
		if not visible then
			self.window:blockInputPanel(false)
		end
	end

	self.postAnnouncementWindow.content.title_input:setText()
	self.postAnnouncementWindow.content.message_input:setText()
	self.postAnnouncementWindow:raise()
end

function GameGuild:postAnnouncement(title, message)
	self:sendOpcode({
		action = "post_announcement",
		title = title,
		message = message
	})
	self.postAnnouncementWindow.content.button_panel.post_button:setEnabled(false)
end

function GameGuild:onMembersPanelIncreaseSlotsButtonPressed()
	if self.confirmationWindow then
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	local function yesCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil

		self:sendOpcode({
			action = "increase_member_slots"
		})
	end

	local function noCallback()
		self.confirmationWindow:destroy()

		self.confirmationWindow = nil
	end

	self.confirmationWindow = displayGeneralBox(tr("Increase Member Slots"), tr("You can increase the maximum number of members in your guild by %d for %d silver.\nDo you want to proceed?", cfg.maxMembersIncrement, cfg.maxMembersPrice[self.guildInfo.maxSlots]), {
		{
			text = tr("Yes"),
			callback = yesCallback
		},
		{
			text = tr("No"),
			callback = noCallback
		},
		anchor = AnchorHorizontalCenter
	}, yesCallback, noCallback, nil, modules.game_interface.getRootPanel())
end

-- chunkname: @/modules/game_rangerscompany/rangers_company.lua

GameRangersCompany = {
	leaderboard_total_entries = 0,
	leaderboard_total_pages = 1,
	leaderboard_page_size = 11,
	leaderboard_page = 1,
	cacheExpirationTime = 0,
	rangers_window_view = "middle_panel",
	leaderboard_pages = {}
}

function GameRangersCompany:loadConfig()
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

function GameRangersCompany:init()
	self:loadConfig()
	g_ui.importStyle("styles/main.otui")
	g_ui.importStyle("styles/bounty_window.otui")
	g_ui.importStyle("styles/left_panel.otui")
	g_ui.importStyle("styles/middle_panel.otui")
	g_ui.importStyle("styles/right_panel.otui")
	g_ui.importStyle("styles/top_panel.otui")

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.bounty_window = g_ui.createWidget("GameRangersCompanyBountyWindow", HUDPanel)

	self.bounty_window.top_panel.close_button:setChecked(true)
	self.bounty_window:hide()

	self.rangers_window = g_ui.createWidget("GameRangersCompanyMainWindow", HUDPanel)

	self.rangers_window:hide()

	self.pagination_panel = self.rangers_window.content.right_panel.pagination_panel

	self:updateLeaderboardPagination()
	g_keyboard.bindKeyDown("B", GameRangersCompany.toggleRangersWindow)
	connect(g_game, {
		onGameEnd = GameRangersCompany.onGameEnd,
		onGameStart = GameRangersCompany.onGameStart
	})
	connect(LocalPlayer, {
		onPositionChange = GameRangersCompany.onPositionChange
	})
	ProtocolGame.registerExtendedOpcode(ExtendedIds.RangersCompany, GameRangersCompany.onExtendedOpcode)
end

function GameRangersCompany:terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.RangersCompany)
	self.bounty_window:destroy()
	self.rangers_window:destroy()
	disconnect(g_game, {
		onGameEnd = GameRangersCompany.onGameEnd,
		onGameStart = GameRangersCompany.onGameStart
	})
	disconnect(LocalPlayer, {
		onPositionChange = GameRangersCompany.onPositionChange
	})
	g_keyboard.unbindKeyDown("B")

	if self.reroll_refresh_event then
		removeEvent(self.reroll_refresh_event)

		self.reroll_refresh_event = nil
	end

	if self.rangers_cooldown_event then
		removeEvent(self.rangers_cooldown_event)

		self.rangers_cooldown_event = nil
	end

	if self.leaderboard_refresh_event then
		removeEvent(self.leaderboard_refresh_event)

		self.leaderboard_refresh_event = nil
	end

	if self.leaderboard_reset_event then
		removeEvent(self.leaderboard_reset_event)

		self.leaderboard_reset_event = nil
	end

	GameRangersCompany = nil
end

function GameRangersCompany:sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.RangersCompany, g_game.serializeTable(data))
	end
end

function GameRangersCompany.onExtendedOpcode(protocol, opcode, buffer)
	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	local self = GameRangersCompany

	if data.action == "bounty_board" then
		self:configureBountyWindow(data.data)
		self:openBountyWindow()
	elseif data.action == "reroll_tasks" or data.action == "update_tasks" then
		if not self.bounty_window:isVisible() then
			return
		end

		self:configureBountyWindow(data.data)
	elseif data.action == "rangers_window" then
		self:configureRangersWindow(data.data)
	elseif data.action == "leaderboard" then
		self:configureLeaderboard(data)
	elseif data.action == "update_player_rank" then
		self:updatePlayerRank(data.progress)
	elseif data.action == "update_player_bounty_marks" then
		self:updatePlayerBountyMarks(data.bountyMarks)
	end
end

function GameRangersCompany:closeBountyWindow()
	self.bounty_window:hide()

	if self.popup_window then
		self.popup_window:destroy()

		self.popup_window = nil
	end
end

function GameRangersCompany:openBountyWindow()
	self.bounty_window:show()
	self.bounty_window:raise()
end

function GameRangersCompany:closeRangersWindow()
	self.rangers_window:hide()
end

function GameRangersCompany:openRangersWindow()
	self.rangers_window:show()
	self.rangers_window:raise()
	self:sendOpcode({
		action = "rangers_window"
	})
end

function GameRangersCompany.toggleRangersWindow(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	local self = GameRangersCompany

	if self.rangers_window:isVisible() then
		self:closeRangersWindow()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		self:openRangersWindow()
	end
end

function GameRangersCompany.onGameEnd()
	local self = GameRangersCompany

	self:closeBountyWindow()
	self:closeRangersWindow()

	local panel = self.rangers_window.content.middle_panel

	for _, category in ipairs(panel:getChildren()) do
		if category.stats then
			for __, perk in ipairs(category.stats:getChildren()) do
				perk:setText(0)
			end
		end
	end

	self.cacheExpirationTime = 0

	self.rangers_window.content.right_panel:blockInputPanel(false)
end

function GameRangersCompany:configureBountyWindow(data)
	local window = self.bounty_window

	if not window then
		return
	end

	local progress = data.progress

	if progress then
		local rank_panel = window.content.top_panel.rank_panel

		rank_panel.name:setText(cfg.rankToName[progress.rank])
		rank_panel.icon:update(string.format("/images/ui/windows/rangers_company/icon_%s", cfg.rankToName[progress.rank]:lower()))

		if progress.nextRank > 0 then
			rank_panel.progress_text:setColoredText(GetHighlightedText(string.format("%s / {%s, #36f991}", FormatCommaNumber(progress.progress), FormatCommaNumber(progress.nextRank))), "white")
			rank_panel.progress:setPercent(progress.progress / progress.nextRank * 100)
		else
			rank_panel.progress_text:setText(FormatCommaNumber(progress.progress))
			rank_panel.progress:setPercent(100)
		end
	end

	if data.outpost then
		self.outpost = data.outpost
	end

	if data.refreshTimeleft then
		if self.reroll_refresh_event then
			removeEvent(self.reroll_refresh_event)

			self.reroll_refresh_event = nil
		end

		local refresh_button = window.content.top_panel.refresh_button

		if data.refreshTimeleft > 0 then
			refresh_button:setHovered(false)
			scheduleEvent(function()
				refresh_button:setHovered(refresh_button:containsPoint(g_window.getMousePosition()))
			end, 100)
			refresh_button:onStyleApply("NeutralButton", {
				["&textMarginLeft"] = "0",
				["&iconPath"] = ""
			})
			refresh_button:setStyle("NeutralButton")
			refresh_button:setWidth(220)
			refresh_button:setText(string.format("%s until refresh", SecondsToClock(data.refreshTimeleft)))

			refresh_button.premiumTooltip = {
				header = {
					text = "Cooldown reduced by 2 hours"
				}
			}

			if refresh_button.__disconnects then
				for _, disconnect in ipairs(refresh_button.__disconnects) do
					disconnect()
				end
			end

			local disconnects = connect(refresh_button, {
				onHoverChange = function(self, hovered)
					if hovered then
						g_gameTooltip.displayRangersCompanyPremiumTooltip(self)
					end
				end
			})

			refresh_button.__disconnects = disconnects

			function refresh_button.onDestroy()
				for _, disconnect in ipairs(disconnects) do
					disconnect()
				end
			end

			local function timerWork()
				if data.refreshTimeleft <= 0 then
					refresh_button:onStyleApply("PrimaryButton", {
						["&textMarginLeft"] = "30",
						["&iconPath"] = "/images/ui/windows/rangers_company/icon_reroll",
						["&iconOffset"] = "20 0",
						["&iconAlign"] = "left"
					})
					refresh_button:setStyle("PrimaryButton")
					refresh_button:setWidth(120)
					refresh_button:setTextOffset({
						y = 0,
						x = 30
					})
					refresh_button:setText("Reroll")
					removeEvent(self.reroll_refresh_event)

					self.reroll_refresh_event = nil
				else
					refresh_button:setText(string.format("%s until refresh", SecondsToClock(data.refreshTimeleft)))
				end

				data.refreshTimeleft = data.refreshTimeleft - 1
			end

			if self.reroll_refresh_event then
				removeEvent(self.reroll_refresh_event)
			end

			self.reroll_refresh_event = cycleEvent(timerWork, 1000)

			timerWork()
		else
			refresh_button:onStyleApply("PrimaryButton", {
				["&textMarginLeft"] = "30",
				["&iconPath"] = "/images/ui/windows/rangers_company/icon_reroll",
				["&iconOffset"] = "20 0",
				["&iconAlign"] = "left"
			})
			refresh_button:setStyle("PrimaryButton")
			refresh_button:setWidth(120)
			refresh_button:setTextOffset({
				y = 0,
				x = 30
			})
			refresh_button:setText("Reroll")
		end
	end

	if data.tasks then
		for index, task in ipairs(data.tasks) do
			local widget = window.content.bottom_panel:getChildByIndex(index)

			widget.task = task

			widget.name:setText(task.name)
			widget.region:setText(task.regionName)
			widget.description:setText(string.format("Gain %s experience by killing %s", FormatCommaNumber(task.objective or cfg.objectives[task.objective]), task.name))

			local category = cfg.familyNameToCategory[task.family]

			widget.category.name:setText(category:titleCase())
			widget.category.icon:setImageSource(string.format("/images/ui/windows/rangers_company/icon_%s", category))
			widget.type:setImageSource(string.format("/images/ui/windows/rangers_company/icon_type_%i", index))

			widget.reward_panel.taskType = index

			widget.reward_panel["prestige points"].icon:setText(string.format("%s", FormatCommaNumber(cfg.rewards[index].prestige)))
			widget.reward_panel["bounty marks"].icon:setText(string.format("%s", FormatCommaNumber(task.marks)))

			local image = cfg.taskNameToImageFileName[task.name:lower()]
			local path = string.format("/images/ui/ravencards/illustrations/%s.jpg", image)

			if g_resources.fileExists(path) then
				widget.background:setImageSource(path)
			else
				widget.background:setImageSource("/images/ui/ravencards/illustrations/rat_scavenger.jpg")
			end
		end
	end

	local isTaskSelected = data.selectedTask
	local selectedTaskWidget = isTaskSelected and window.content.bottom_panel:getChildByIndex(data.selectedTask.type)

	for _, widget in ipairs(window.content.bottom_panel:getChildren()) do
		if selectedTaskWidget == widget then
			selectedTaskWidget.reward_panel.accept_button:setText("Cancel")
			selectedTaskWidget.reward_panel.accept_button:setStyle("DangerButton")
			selectedTaskWidget.progress_panel.progress_text:setColoredText(GetHighlightedText(string.format("%s / {%s, #36f991}", FormatCommaNumber(data.selectedTask.progress), FormatCommaNumber(data.selectedTask.objective or cfg.objectives[data.selectedTask.type]))), "white")
			selectedTaskWidget.progress_panel.progress:setPercent(data.selectedTask.progress / (data.selectedTask.objective or cfg.objectives[data.selectedTask.type]) * 100)
			selectedTaskWidget.progress_panel:show()
			selectedTaskWidget.description:hide()
			selectedTaskWidget:blockInputPanel(false)
		elseif widget.task and widget.task.notEnoughLevel then
			widget.reward_panel.accept_button:setText("Locked")
			widget.reward_panel.accept_button:setStyle("NeutralButton")
			widget.reward_panel.accept_button:setEnabled(false)
			widget:blockInputPanel(true)
			widget.error_label:setText(string.format("Your current effective level doesn't meet this task's range (%i-%i).", widget.task.level and widget.task.level.min or 0, widget.task.level and widget.task.level.max or 0))
			widget.error_label:show()
			widget.error_label:raise()
		elseif data.locked then
			widget.reward_panel.accept_button:setText("Locked")
			widget.reward_panel.accept_button:setStyle("NeutralButton")
			widget:blockInputPanel(true)
			widget.error_label:setText("You have already chosen a task to do.")
			widget.error_label:show()
			widget.progress_panel:hide()
			widget.description:hide()
		else
			widget:blockInputPanel(false)
			widget.progress_panel:hide()
			widget.error_label:hide()
			widget.description:show()
			widget.reward_panel.accept_button:setText("Accept")
			widget.reward_panel.accept_button:setStyle("SuccessButton")
		end
	end
end

function GameRangersCompany:rerollTasks()
	self:sendOpcode({
		action = "reroll_tasks",
		outpost = self.outpost.name
	})
end

function GameRangersCompany:selectTask(taskType)
	self:sendOpcode({
		action = "select_task",
		taskType = taskType,
		outpost = self.outpost.name
	})
end

function GameRangersCompany:cancelTask()
	self:sendOpcode({
		action = "cancel_task"
	})
end

function GameRangersCompany.onPositionChange(player, position)
	local self = GameRangersCompany

	if not self.bounty_window:isVisible() or not self.outpost then
		return
	end

	if not Position.isInRange(position, self.outpost.position, 1, 1) then
		self:closeBountyWindow()
	end
end

function GameRangersCompany:configureRangersWindow(data)
	local window = self.rangers_window

	if not window then
		return
	end

	local panel = window.content.middle_panel

	if data.bountyMarks then
		self:updatePlayerBountyMarks(data.bountyMarks)
	end

	if data.perks then
		for categoryId, category in ipairs(panel:getChildren()) do
			if category.stats then
				local categoryData = data.perks[categoryId - 1] or {}

				for index, statWidget in ipairs(category.stats:getChildren()) do
					local value = categoryData[index] or 0
					local perkValue = cfg.perkValues[index]

					statWidget:setText(value * perkValue)

					if perkValue < 1 then
						statWidget:setText(string.format("%s%%", statWidget:getText()), true)
					end
				end
			end
		end
	end

	for categoryId, widget in ipairs(panel:getChildren()) do
		if widget.reroll_arrow then
			local visible = data.perkReroll and data.perkReroll[categoryId - 1] or false

			widget.reroll_button:setVisible(visible)
			widget.reroll_arrow:setVisible(visible)
		end
	end

	local top_panel = window.content.top_panel

	if data.expertise then
		local progress_panel = top_panel.progress_panel

		progress_panel.progress_text:setColoredText(GetHighlightedText(string.format("%s / {%s, #ffa851}", data.expertise, cfg.expertisePerLevel), "#b2b6bb"))
		progress_panel.progress:setPercent(data.expertise / cfg.expertisePerLevel * 100)
	end

	local left_panel = window.content.left_panel
	local rank_panel = left_panel.rank_panel

	if data.rank then
		rank_panel.icon:update(string.format("/images/ui/windows/rangers_company/icon_%s", cfg.rankToName[data.rank]:lower()))
		rank_panel.name:setText(cfg.rankToName[data.rank])
	end

	rank_panel.prestige_points_panel.rank:setText(nil)

	if data.prestige then
		rank_panel.prestige_points_panel.value:setText(FormatCommaNumber(data.prestige))

		if not data.ranking then
			rank_panel.prestige_points_panel.rank:hide()
		else
			rank_panel.prestige_points_panel.rank:show()
		end

		rank_panel.prestige_points_panel.rank:setText(data.ranking and "#" .. data.ranking or "")
	end

	rank_panel.prestige_points_panel:update()
	window.content.left_panel.quest_panel:hideAllChildren()
	window.content.left_panel.quest_panel.title:show()

	if data.selectedTask then
		local task = data.selectedTask
		local panel = window.content.left_panel.quest_panel.quest_info_panel

		panel:show()
		window.content.left_panel.quest_panel.cancel_task_button:show()

		local category = cfg.familyNameToCategory[task.family]

		panel.category_icon:update(string.format("/images/ui/windows/rangers_company/icon_%s", category))
		panel.quest_name:setText(task.name)
		panel.quest_location:setText(task.regionName:upper())

		panel = panel.quest_description_panel

		local textColor = "#b2b6bb"

		if task.level and task.level.min and task.level.max then
			local player = g_game.getLocalPlayer()

			if player then
				local level = player:getEffectiveLevel()
				local taskLevel = task.level.min + task.level.max / 2

				if taskLevel / level > 1.5 then
					textColor = "#ff0000"
				elseif taskLevel / level > 1.25 then
					textColor = "#ff7f00"
				elseif taskLevel / level > 1.1 then
					textColor = "#ffff00"
				elseif taskLevel / level > 0.9 then
					textColor = "#00ff00"
				end
			end

			panel.quest_level:setColoredText(GetHighlightedText(string.format("Level {[%i-%i], %s}", task.level.min, task.level.max, textColor), "#b2b6bb"))
		else
			panel.quest_level:setText("")
		end

		panel.quest_description:setText(task.description)

		panel = window.content.left_panel.quest_panel.quest_info_panel.rewards_panel

		for i = 1, 2 do
			local rewardWidget = panel:getChildByIndex(i)

			if i == 1 then
				rewardWidget.amount:setText(task.rewards.prestige)
			elseif i == 2 then
				rewardWidget.amount:setText(task.rewards.marks)
			end
		end

		panel = window.content.left_panel.quest_panel.quest_info_panel.progress_panel

		panel.progress:setPercent(task.progressTable[1] / task.progressTable[2] * 100)
		panel.progress_text:setColoredText(GetHighlightedText(string.format("%s / {%s XP, #36f991}", FormatCommaNumber(task.progressTable[1]), FormatCommaNumber(task.progressTable[2]))))
	elseif not data.cooldownTimeleft or data.cooldownTimeleft <= 0 then
		local panel = window.content.left_panel.quest_panel.available_quest_panel

		panel:show()
	else
		local panel = window.content.left_panel.quest_panel.cooldown_quest_panel
		local timerWidget = panel.timer

		local function timerWork()
			if data.cooldownTimeleft <= 0 then
				timerWidget:setText("00:00:00")
				removeEvent(self.rangers_cooldown_event)

				self.rangers_cooldown_event = nil

				panel:hide()

				if not window.content.left_panel.quest_panel.quest_info_panel:isVisible() then
					window.content.left_panel.quest_panel.available_quest_panel:show()
				end
			else
				timerWidget:setText(string.format("%s", SecondsToClock(data.cooldownTimeleft)))
			end

			data.cooldownTimeleft = data.cooldownTimeleft - 1
		end

		if self.rangers_cooldown_event then
			removeEvent(self.rangers_cooldown_event)
		end

		self.rangers_cooldown_event = cycleEvent(timerWork, 1000)

		timerWork()
		panel:show()
	end
end

function GameRangersCompany:toggleRangersCompanyView()
	local window = self.rangers_window

	if not window then
		return
	end

	if self.rangers_window_view == "middle_panel" then
		window.content.middle_panel:setWidth(window.content.middle_panel.shrinkedWidth)
		window.content.top_panel.progress_panel:setWidth(window.content.middle_panel.shrinkedWidth - 20)
		window.content.top_panel.progress_panel:setOn(true)

		self.rangers_window_view = "right_panel"

		window.content.splitter.arrow_button:setOn(true)
	else
		window.content.middle_panel:setWidth(window.content.middle_panel.expandedWidth)
		window.content.top_panel.progress_panel:setWidth(window.content.middle_panel.expandedWidth - 20)
		window.content.top_panel.progress_panel:setOn(false)
		window.content.splitter.arrow_button:setOn(false)

		self.rangers_window_view = "middle_panel"
	end
end

function GameRangersCompany:changeLeaderboardPage(direction)
	local max_pages = math.ceil(self.leaderboard_total_entries / self.leaderboard_page_size)

	if direction == "next" then
		if max_pages > self.leaderboard_page then
			self.leaderboard_page = self.leaderboard_page + 1
		end
	elseif direction == "previous" then
		if self.leaderboard_page > 1 then
			self.leaderboard_page = self.leaderboard_page - 1
		end
	else
		direction = tonumber(direction)

		if not direction then
			return
		end

		self.leaderboard_page = math.min(math.max(direction, 1), max_pages)
	end

	self:sendLeaderboardRequest()
end

function GameRangersCompany:updateLeaderboardPagination()
	local max_pages = math.ceil(self.leaderboard_total_entries / self.leaderboard_page_size)

	self.page = math.min(self.leaderboard_page, max_pages)

	self.pagination_panel.page_edit:setText(self.leaderboard_page, true)
	self.pagination_panel.page_edit:setCursorPos(-1)
	self.pagination_panel.prev_button:setOn(self.leaderboard_page > 1)
	self.pagination_panel.next_button:setOn(max_pages > self.leaderboard_page)
	self.pagination_panel.prev_button:setEnabled(self.leaderboard_page > 1)
	self.pagination_panel.next_button:setEnabled(max_pages > self.leaderboard_page)
	self.pagination_panel.page_count:setText(string.format("of %i", max_pages))
end

function GameRangersCompany:sendLeaderboardRequest(force)
	if not force and self.cacheExpirationTime and self.cacheExpirationTime > os.time() then
		local leaderboard = self.leaderboard_pages[self.leaderboard_page]

		if leaderboard then
			self:configureLeaderboard({
				leaderboard = leaderboard,
				page = self.leaderboard_page,
				total_entries = self.leaderboard_total_entries
			})

			return
		end
	end

	local data = {
		action = "leaderboard",
		page = self.leaderboard_page
	}

	self:sendOpcode(data)
	self.rangers_window.content.right_panel.list:hideAllChildren()
	self.rangers_window.content.right_panel.list:getFirstChild():show()
	self.rangers_window.content.right_panel:blockInputPanel(true)
	self.rangers_window.content.right_panel.grayOutPanel:setText("Loading...")
	self.rangers_window.content.right_panel.grayOutPanel:setFont("poppins-semibold-20")
end

function GameRangersCompany:configureLeaderboard(data)
	self.rangers_window.content.right_panel:blockInputPanel(false)

	local panel = self.rangers_window.content.right_panel.list
	local leaderboard = data.leaderboard

	self.leaderboard_total_entries = data.total_entries or 0

	for i = 1, self.leaderboard_page_size do
		local entry = leaderboard[i]
		local widget = panel:getChildByIndex(i + 1)

		if not entry then
			widget:hide()
		else
			widget:show()
			widget.rank:setText("#" .. entry.position)
			widget.name:setText(entry.name)
			widget.prestige:setText(entry.prestige)
			widget.icon:setVisible(entry.rewardEligible)
		end
	end

	self.leaderboard_pages = self.leaderboard_pages or {}
	self.leaderboard_pages[data.page] = leaderboard

	if data.cacheTimeLeft and data.cacheTimeLeft <= 0 or self.cacheExpirationTime < os.time() then
		self.leaderboard_pages = {}
	end

	self.cacheExpirationTime = data.cacheTimeLeft and os.time() + data.cacheTimeLeft or self.cacheExpirationTime

	if self.cacheExpirationTime then
		local function update()
			if not self.rangers_window.content then
				return
			end

			local timeLeft = "Last fetched:\n"
			local minutes = cfg.cacheDuration - math.ceil((self.cacheExpirationTime - os.time()) / 60)

			timeLeft = timeLeft .. string.format("%i minute%s ago", minutes, minutes > 1 and "s" or "")

			self.rangers_window.content.right_panel.last_fetched_label:setText(timeLeft)

			if self.cacheExpirationTime < os.time() - 1 then
				self:sendLeaderboardRequest(true)

				self.leaderboard_refresh_event = nil

				return
			end
		end

		if self.leaderboard_refresh_event then
			removeEvent(self.leaderboard_refresh_event)
		end

		self.leaderboard_refresh_event = cycleEvent(update, 30000)

		update()
	end

	if data.resetTimeLeft then
		self.rangers_window.content.top_panel.leaderboard_panel.time_left.startTime = os.time()

		local function update()
			local timeLeft = ""
			local days = math.floor(data.resetTimeLeft / 86400)
			local hours = math.floor((data.resetTimeLeft - days * 86400) / 3600)
			local minutes = math.floor((data.resetTimeLeft - days * 86400 - hours * 3600) / 60)

			if days > 0 then
				timeLeft = string.format("{%i day%s, #ffa851} to reset", days, days > 1 and "s" or "")
			elseif hours > 0 then
				timeLeft = string.format("{%i hour%s, #ffa851} to reset", hours, hours > 1 and "s" or "")
			elseif minutes > 0 then
				timeLeft = string.format("{%i minute%s, #ffa851} to reset", minutes, minutes > 1 and "s" or "")
			else
				timeLeft = string.format("{less than a minute, #ffa851} to reset")
			end

			self.rangers_window.content.top_panel.leaderboard_panel.time_left:setColoredText(GetHighlightedText(timeLeft))

			local elapsed = os.time() - self.rangers_window.content.top_panel.leaderboard_panel.time_left.startTime

			self.rangers_window.content.top_panel.leaderboard_panel.time_left:setTooltip(function()
				local elapsed = os.time() - self.rangers_window.content.top_panel.leaderboard_panel.time_left.startTime

				return SecondsToTime(data.resetTimeLeft - elapsed)
			end)

			if data.resetTimeLeft - elapsed < -30 then
				self:sendLeaderboardRequest(true)

				self.leaderboard_reset_event = nil

				return
			end
		end

		if self.leaderboard_reset_event then
			removeEvent(self.leaderboard_reset_event)
		end

		self.leaderboard_reset_event = cycleEvent(update, 30000)

		update()
	end

	self:updateLeaderboardPagination()
end

function GameRangersCompany.onGameStart()
	local self = GameRangersCompany

	self:sendLeaderboardRequest(true)
end

function GameRangersCompany:updatePlayerRank(progress)
	local rank_panel = self.bounty_window.content.top_panel.rank_panel

	rank_panel.name:setText(cfg.rankToName[progress.rank])
	rank_panel.icon:update(string.format("/images/ui/windows/rangers_company/icon_%s", cfg.rankToName[progress.rank]:lower()))

	if progress.nextRank > 0 then
		rank_panel.progress_text:setColoredText(GetHighlightedText(string.format("%s / {%s, #36f991}", FormatCommaNumber(progress.progress), FormatCommaNumber(progress.nextRank))), "white")
		rank_panel.progress:setPercent(progress.progress / progress.nextRank * 100)
	else
		rank_panel.progress_text:setText(FormatCommaNumber(progress.progress))
		rank_panel.progress:setPercent(100)
	end

	rank_panel = self.rangers_window.content.left_panel.rank_panel

	rank_panel.icon:update(string.format("/images/ui/windows/rangers_company/icon_%s", cfg.rankToName[progress.rank]:lower()))
	rank_panel.name:setText(cfg.rankToName[progress.rank])
end

function GameRangersCompany:rerollPerk(categoryId)
	self:sendOpcode({
		action = "reroll_perk",
		categoryId = categoryId
	})
end

function GameRangersCompany:updatePlayerBountyMarks(marks)
	local player = g_game.getLocalPlayer()

	player.bountyMarks = marks

	signalcall(LocalPlayer.onBountyMarksChange, player, marks)
end

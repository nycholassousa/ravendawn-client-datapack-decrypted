-- chunkname: @/modules/game_achievements/achievements.lua

GameAchievements = {
	lastRefreshTime = 0
}

function GameAchievements:init()
	if not g_game.isRavenQuest() then
		local module = g_modules.getModule("game_achievements")

		if module then
			addEvent(function()
				module:unload()
			end)
		end

		return
	end

	g_ui.importStyle("styles/main.otui")
	g_ui.importStyle("styles/achievements.otui")
	g_ui.importStyle("styles/right_window.otui")

	self.window = g_ui.createWidget("GameAchievementsWindow", modules.game_interface.getHUDPanel())

	self.window:hide()

	self.achievements_list = self.window.content.achievements_list
	self.attached_window = g_ui.createWidget("GameAchievementsRightAttachedWindow", modules.game_interface.getHUDPanel())

	self.attached_window:setAttachedTo(self.window)
	self.attached_window:followParent()

	self.current_sort_button = self.window.content.panel_top.panel_search.name
	self.current_sort_type = self.current_sort_button:getId()
	self.current_sort_direction = "asc"

	g_keyboard.bindKeyDown("Ctrl+J", GameAchievements.toggle)
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Achievements, GameAchievements.onExtendedOpcode)

	if g_game.isOnline() then
		g_game.refreshAchievements()
	end

	connect(g_game, {
		onGameStart = GameAchievements.onGameStart,
		onGameEnd = GameAchievements.onGameEnd
	})
end

function GameAchievements:terminate()
	if self.window then
		self.window:destroy()
	end

	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Achievements)
	g_keyboard.unbindKeyDown("Ctrl+J")

	if self.refresh_event then
		removeEvent(self.refresh_event)

		self.refresh_event = nil
	end

	if self.lastHttpOperationId then
		HTTP.cancel(self.lastHttpOperationId)

		self.lastHttpOperationId = nil
	end

	disconnect(g_game, {
		onGameStart = GameAchievements.onGameStart,
		onGameEnd = GameAchievements.onGameEnd
	})

	GameAchievements = nil
end

function GameAchievements.onGameStart()
	g_game.refreshAchievements()
end

function GameAchievements.onGameEnd()
	GameAchievements.window:hide()

	GameAchievements.lastRefreshTime = 0
end

function GameAchievements.toggle(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameAchievements.window:isVisible() then
		GameAchievements.window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameAchievements.window:show()
		GameAchievements.window:raise()

		if GameAchievements.lastRefreshTime + 60 < os.time() then
			GameAchievements.lastRefreshTime = os.time()

			g_game.refreshAchievements()
		end
	end
end

function GameAchievements:sendOpcode(data)
	local protocol = g_game.getProtocolGame()

	if protocol then
		protocol:sendExtendedOpcode(ExtendedIds.Achievements, g_game.serializeTable(data))
	end
end

function GameAchievements.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Achievements then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if not data or type(data) ~= "table" then
		return
	end

	if data.action == "achievements" then
		GameAchievements:loadAchievements(data.achievements, data.accountId, data.secret)
	end
end

function GameAchievements:loadAchievements(achievements, accountId, secret)
	local panel = self.achievements_list

	if not panel then
		return
	end

	local totalAchievements = 0
	local comletedAchievements = 0

	for _, achievement in ipairs(achievements) do
		local widget = panel:recursiveGetChildById(achievement.name) or g_ui.createWidget("GameAchievementsScrollAreaContentItem", panel)

		widget:setId(achievement.name)

		local amountCompleted = 0

		for __, subAchievement in ipairs(achievement.subAchievements) do
			amountCompleted = amountCompleted + (subAchievement.completed and 1 or 0)
			totalAchievements = totalAchievements + 1
			comletedAchievements = comletedAchievements + (subAchievement.completed and 1 or 0)
		end

		widget.progress = amountCompleted / #achievement.subAchievements
		widget.achievement = achievement

		widget.checkbox:setChecked(amountCompleted == #achievement.subAchievements)

		if self.current_achievement and self.current_achievement.name == achievement.name then
			self:displayAchievementInfo(achievement, widget, true)
		end

		local function color()
			if amountCompleted == #achievement.subAchievements then
				return "#6ec35c"
			elseif amountCompleted > 0 then
				return "#ffa851"
			else
				return "#a6aab2"
			end
		end

		widget.name:setColoredText(GetHighlightedText(string.format("{[%i/%i], %s} %s", amountCompleted, #achievement.subAchievements, color(), achievement.name)), "#a6aab2")
	end

	self.window.content.panel_top.panel_progress.achievements.progress:setPercent(comletedAchievements / totalAchievements * 100)
	self.window.content.panel_top.panel_progress.progress_percent:setText(string.format("%i%%", comletedAchievements / totalAchievements * 100))

	if self.lastHttpOperationId then
		HTTP.cancel(self.lastHttpOperationId)

		self.lastHttpOperationId = nil
	end

	self.lastHttpOperationId = HTTP.postJSON(string.format("https://ravenquest.io/api/achievement_rewards/%i", accountId), {
		secret = secret
	}, function(data, err)
		if err then
			print(err)

			return
		end

		if type(data) ~= "table" then
			return
		end

		for url_name, token in pairs(data) do
			for _, achievements in ipairs(achievements) do
				for _, subAchievement in ipairs(achievements.subAchievements) do
					if subAchievement.url_name == url_name then
						subAchievement.token = token
					end
				end
			end
		end
	end)

	self:sort(self.current_sort_button, self.current_sort_type, self.current_sort_direction)
end

function GameAchievements:displayAchievementInfo(achievement, widget, internal)
	if self.current_achievement then
		if internal and self.current_achievement.name ~= achievement.name then
			return
		end

		if not internal and self.current_achievement.name == achievement.name then
			self.current_achievement.widget:setOn(false)
			self.current_achievement.widget.expand_button:setOn(false)

			self.current_achievement = nil

			self.attached_window:hide()

			return
		elseif not internal then
			self.current_achievement.widget.expand_button:setOn(false)
			self.current_achievement.widget:setOn(false)
		end
	end

	if not internal then
		self.current_achievement = achievement
		self.current_achievement.widget = widget

		self.current_achievement.widget.expand_button:setOn(true)
		self.current_achievement.widget:setOn(true)
		self.attached_window:setTitle(achievement.name)
		self.attached_window:show()
	end

	self.attached_window:followParent()

	local panel = self.attached_window

	if not panel then
		return
	end

	function panel.onVisibilityChange(widget, visible)
		if not visible then
			if not self.current_achievement then
				return
			end

			self.current_achievement.widget:setOn(false)
			self.current_achievement.widget.expand_button:setOn(false)

			self.current_achievement = nil
		end
	end

	local achievementsCompleted = 0
	local amountRewardCompleted = 0
	local amountRewardTotal = 0

	for index, subAchievement in ipairs(achievement.subAchievements) do
		local child = panel.rewards_panel.task_list:recursiveGetChildById(index) or g_ui.createWidget("GameAchievementsRightPanelTaskListItem", panel.rewards_panel.task_list)

		child:show()
		child:setId(index)
		child.name:setText(subAchievement.description)
		child.checkbox:setChecked(subAchievement.completed)
		child.reward:setText(subAchievement.token and "+" .. subAchievement.token or "Loading...")

		if not subAchievement.token then
			if self.refresh_event then
				removeEvent(self.refresh_event)

				self.refresh_event = nil
			end

			self.refresh_event = scheduleEvent(function()
				GameAchievements:displayAchievementInfo(achievement, widget, true)
			end, 1000)
		end

		achievementsCompleted = achievementsCompleted + (subAchievement.completed and 1 or 0)
		amountRewardCompleted = amountRewardCompleted + (subAchievement.completed and (subAchievement.token or 0) or 0)
		amountRewardTotal = amountRewardTotal + (subAchievement.token or 0)
	end

	if amountRewardTotal == 0 then
		panel.rewards_panel.total_reward.amount:setText("Loading...")
	else
		panel.rewards_panel.total_reward.amount:setText(string.format("%i/%i", amountRewardCompleted, amountRewardTotal))
	end

	for index = #achievement.subAchievements + 1, #panel.rewards_panel.task_list:getChildren() do
		panel.rewards_panel.task_list:getChildByIndex(index):hide()
	end

	panel.panel_top.panel_progress.achievements.progress:setPercent(achievementsCompleted / #achievement.subAchievements * 100)
	panel.panel_top.panel_progress.progress_percent:setText(string.format("%i%%", achievementsCompleted / #achievement.subAchievements * 100))

	local function color()
		if achievementsCompleted == #achievement.subAchievements then
			return "#6ec35c"
		elseif achievementsCompleted > 0 then
			return "#ffa851"
		else
			return "#a6aab2"
		end
	end

	panel.panel_top.panel_progress.name:setColoredText(GetHighlightedText(string.format("{[%i/%i], %s} %s", achievementsCompleted, #achievement.subAchievements, color(), achievement.name)), "#a6aab2")
end

function GameAchievements:onSearchTextChanged(text)
	local search = text:lower()
	local panel = self.achievements_list

	if not panel then
		return
	end

	for _, achievement in ipairs(panel:getChildren()) do
		if search == "" or achievement.name:getText():lower():find(search) then
			achievement:show()
		else
			achievement:hide()
		end
	end
end

function GameAchievements:sort(widget, sortType, sortDirection)
	local panel = self.achievements_list

	if not panel then
		return
	end

	local children = panel:getChildren()

	widget.sortDirection = sortDirection == "asc" and "desc" or "asc"

	table.sort(children, function(a, b)
		if sortType == "name" then
			local aName = a.name:getText():gsub("[^%a]", "")
			local bName = b.name:getText():gsub("[^%a]", "")

			return aName < bName
		elseif sortType == "progress" then
			return a.progress < b.progress
		end

		return false
	end)

	if sortDirection == "desc" then
		children = table.reverse(children)
	end

	panel:reorderChildren(children)

	if self.current_sort_button then
		self.current_sort_button:setChecked(false)
	end

	self.current_sort_button = widget

	self.current_sort_button:setOn(sortDirection == "asc")
	self.current_sort_button:setChecked(true)

	self.current_sort_type = sortType
	self.current_sort_direction = sortDirection
end

function g_game.refreshAchievements()
	GameAchievements:sendOpcode({
		action = "achievements"
	})
end

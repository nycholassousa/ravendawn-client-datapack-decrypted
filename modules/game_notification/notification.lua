-- chunkname: @/modules/game_notification/notification.lua

GameNotification = {
	startTime = 0,
	queue = {}
}

local typeToString = {
	[NOTIFICATION_INFO] = "info",
	[NOTIFICATION_WARNING] = "warning",
	[NOTIFICATION_ERROR] = "error",
	[NOTIFICATION_SUCCESS] = "success",
	[NOTIFICATION_REGION] = "region",
	[NOTIFICATION_STAFF] = "staff"
}
local typeToColor = {
	[NOTIFICATION_INFO] = "#ffffff",
	[NOTIFICATION_WARNING] = "#ffa851",
	[NOTIFICATION_ERROR] = "#ff5151",
	[NOTIFICATION_SUCCESS] = "#77d463",
	[NOTIFICATION_REGION] = function(state)
		if state == "conflict" then
			return "#ff5151"
		elseif state == "peace" then
			return "white"
		elseif state == "about_conflict" then
			return "#ffa851"
		end
	end,
	[NOTIFICATION_STAFF] = "#A556FF"
}

function GameNotification:init()
	g_ui.importStyle("styles/base.otui")
	g_ui.importStyle("styles/region.otui")
	g_ui.importStyle("styles/screen.otui")

	self.screenMessage = g_ui.createWidget("GameNotificationScreenMessagePanel", modules.game_interface.getHUDPanel())

	self.screenMessage:hide()
	connect(g_game, {
		onGameEnd = GameNotification.onGameEnd
	})
end

function GameNotification:terminate(internal)
	if self.window then
		self.window:destroy()

		self.window = nil
	end

	if self.timerEvent then
		removeEvent(self.timerEvent)

		self.timerEvent = nil
	end

	if self.hideEvent then
		removeEvent(self.hideEvent)

		self.hideEvent = nil
	end

	if self.screenMessageEvent then
		self.screenMessage:hide()
		removeEvent(self.screenMessageEvent)

		self.screenMessageEvent = nil
	end

	if not internal then
		if self.screenMessage then
			self.screenMessage:destroy()

			self.screenMessage = nil
		end

		disconnect(g_game, {
			onGameEnd = GameNotification.onGameEnd
		})

		GameNotification = nil
	end
end

function GameNotification.onGameEnd()
	GameNotification:terminate(true)

	GameNotification.queue = {}
end

function GameNotification:addToQueue(type, title, text, duration, custom)
	if self.window then
		if self.window.data then
			if type == NOTIFICATION_STAFF or self.window.data.type == NOTIFICATION_REGION and type == NOTIFICATION_REGION then
				self.window:destroy()

				self.window = nil

				return false
			end

			if self.window.data.type == type and self.window.data.title == title and self.window.data.text == text then
				return true
			end
		end

		for index, data in ipairs(self.queue) do
			if self.window.data.type == type and data.title == title and data.text == text then
				return true
			elseif type == NOTIFICATION_REGION then
				table.remove(self.queue, index)

				break
			end
		end

		local data = {
			type = type,
			title = title,
			text = text,
			duration = duration,
			custom = custom
		}

		table.insert(self.queue, data)

		return true
	end

	return false
end

function GameNotification:timerWork(duration)
	duration = duration or 5000
	self.startTime = g_clock.millis()

	self.window.progress_bar:setPercent(100)

	local function progressWork()
		if not self.window then
			return
		end

		self.window.progress_bar:setPercent(100 * (duration - (g_clock.millis() - self.startTime)) / duration)

		if self.window.progress_bar:getPercent() == 0 then
			self.window:destroy()

			self.window = nil

			if #self.queue > 0 then
				local data = table.remove(self.queue, 1)

				if data.type == NOTIFICATION_REGION then
					self:displayRegionChange(data.title, data.text == "conflict", data.text == "about_conflict", data.custom)
				else
					self:display(data.type, data.title, data.text, data.duration)
				end
			end
		end

		scheduleEvent(progressWork, 25)
	end

	self.hideEvent = scheduleEvent(progressWork, 25)

	progressWork()
end

function GameNotification:display(type, title, text, duration)
	if title == "" and text == "" then
		return
	end

	if self:addToQueue(type, title, text, duration) then
		return
	end

	if modules.game_settings.getOption("hideInterface") then
		return
	end

	local messagePanel = modules.game_interface.getMessagePanel()

	self.window = g_ui.createWidget("GameNotificationBase", messagePanel)
	self.window.data = {
		type = type,
		title = title,
		text = text,
		duration = duration
	}

	local titleWidget, textWidget, iconWidget

	if title then
		titleWidget = g_ui.createWidget("GameNotificationTitle", self.window)

		titleWidget:setText(title)

		textWidget = g_ui.createWidget("GameNotificationText", self.window)

		textWidget:setText(text)
	else
		iconWidget = g_ui.createWidget("GameNotificationIcon", self.window)

		iconWidget:setImageSource(string.format("/images/ui/windows/notification/icon_%s", typeToString[type]))

		textWidget = g_ui.createWidget("GameNotificationIconText", self.window)

		textWidget:setText(text)
	end

	if type == NOTIFICATION_STAFF then
		local close = g_ui.createWidget("GameNotificationIconClose", self.window)

		function close.onClick()
			self.window:destroy()

			self.window = nil
		end

		textWidget:addAnchor(AnchorLeft, "icon", AnchorRight)
		textWidget:setMarginLeft(10)
		textWidget:setMarginBottom(5)
		g_sound.play(3877214891)
	end

	local color = typeToColor[type]

	self.window.color_edge:setImageColor(color)
	self.window.progress_bar.progress:setImageColor(color)

	local height = (titleWidget and titleWidget:getHeight() + titleWidget:getMarginTop() or 0) + (textWidget and 55 + textWidget:getTextSize().height + textWidget:getMarginTop() + textWidget:getMarginBottom() or 0)

	self.window:setHeight(height)

	local isPermanent = type == NOTIFICATION_STAFF or duration == 0

	if isPermanent then
		self.window.progress_bar:setVisible(false)
		self.window:show()
		self.window:getParent():raise()

		return
	end

	self:timerWork(duration)
	self.window:show()
	messagePanel:lower()
	messagePanel:getParent():raise()
end

function GameNotification:hide()
	if self.window then
		if self.hideEvent then
			removeEvent(self.hideEvent)

			self.hideEvent = nil
		end

		if self.timerEvent then
			removeEvent(self.timerEvent)

			self.timerEvent = nil
		end

		self.window:destroy()

		self.window = nil

		if #self.queue > 0 then
			local data = table.remove(self.queue, 1)

			self:display(data.type, data.title, data.text, data.duration)
		end
	end
end

function GameNotification:displayRegionChange(regionName, pvp, aboutToPvp, time)
	local color = typeToColor[NOTIFICATION_REGION](pvp and "conflict" or aboutToPvp and "about_conflict" or "peace")

	if self:addToQueue(NOTIFICATION_REGION, regionName, pvp and "conflict" or aboutToPvp and "about_conflict" or "peace", nil, time) then
		return
	end

	modules.game_minimap.updateRegionName(regionName, color)

	local soundId

	if self.lastRegionChangeData and self.lastRegionChangeData.regionName == regionName and self.lastRegionChangeData.pvp ~= pvp then
		soundId = pvp and CONST_SE_ZONE_PEACE_TO_PVP or CONST_SE_ZONE_PVP_TO_PEACE
	end

	self.lastRegionChangeData = {
		regionName = regionName,
		pvp = pvp,
		aboutToPvp = aboutToPvp,
		time = time
	}

	if soundId then
		g_sound.play(soundId)
	end

	if modules.game_settings.getOption("hideInterface") then
		return
	end

	self.window = g_ui.createWidget("GameNotificationBase", modules.game_interface.getMessagePanel())
	self.window.data = {
		type = NOTIFICATION_REGION,
		title = regionName,
		text = pvp and "conflict" or "peace",
		custom = time
	}
	self.window.left_icon = g_ui.createWidget("GameNotificationIconLeft", self.window)
	self.window.right_icon = g_ui.createWidget("GameNotificationIconRight", self.window)
	self.window.region_title = g_ui.createWidget("GameNotificationRegionTitle", self.window)
	self.window.region_timer = g_ui.createWidget("GameNotificationRegionTimer", self.window)

	self.window.region_title:setText(regionName)
	self.window.color_edge:setImageColor(color)
	self.window.progress_bar.progress:setImageColor(color)
	self.window.region_title:setTextColor(color)

	if time > 0 then
		self.window.left_icon:setImageSource("/images/ui/icons/region_" .. (pvp and "conflict" or "peace"))
		self.window.right_icon:setImageSource("/images/ui/icons/region_" .. (aboutToPvp and "conflict" or "peace"))
	else
		self.window:setHeight(70)
		self.window:setWidth(300)
	end

	self.window.region_timer:setVisible(time > 0)

	self.window.region_timer.time = time

	function self.window.region_timer.doWork()
		if not self.window then
			return
		end

		self.window.region_timer:setText(SecondsToClock(self.window.region_timer.time))

		self.window.region_timer.time = self.window.region_timer.time - 1

		if self.window.region_timer.time == 0 then
			self.window:destroy()

			self.window = nil

			if #self.queue > 0 then
				local data = table.remove(self.queue, 1)

				self:display(data.type, data.title, data.text, data.duration)
			end

			return
		end

		self.window.timerEvent = scheduleEvent(self.window.region_timer.doWork, 1000)
	end

	self.window.region_timer.doWork()

	function self.window.onDestroy()
		if self.window.timerEvent then
			removeEvent(self.window.timerEvent)

			self.window.timerEvent = nil
		end
	end

	self:timerWork()
end

function GameNotification:displayScreenMessage(text)
	if modules.game_settings.getOption("hideInterface") then
		return
	end

	if text == "" or g_game.getLocalPlayer():isChanneling() then
		return
	end

	if self.screenMessageEvent and self.screenMessage:getText() == text then
		return
	end

	if self.screenMessageEvent then
		removeEvent(self.screenMessageEvent)

		self.screenMessageEvent = nil
	end

	self.screenMessage:setText(text)

	self.screenMessage.data = {
		type = type,
		text = text
	}

	self.screenMessage:show()
	g_effects.cancelFade(self.screenMessage)
	g_effects.fadeIn(self.screenMessage, 250)

	self.screenMessageEvent = scheduleEvent(function()
		g_effects.fadeOut(self.screenMessage, 250)

		self.screenMessageEvent = nil
	end, 1250)
end

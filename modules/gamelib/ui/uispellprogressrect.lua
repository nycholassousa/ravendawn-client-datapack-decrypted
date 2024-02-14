-- chunkname: @/modules/gamelib/ui/uispellprogressrect.lua

UISpellProgressRect = extends(UIProgressRect, "UISpellProgressRect")

local function formatTime(time)
	local seconds = math.max(0, time) % 360000
	local minutes = math.ceil(seconds / 60)
	local hours = math.ceil(minutes / 60)

	if hours >= 2 then
		return tostring(hours) .. "h"
	elseif minutes >= 2 then
		return tostring(minutes) .. "m"
	elseif seconds < 2 then
		return string.format("%.1f", seconds) .. "s"
	end

	return tostring(math.ceil(seconds) .. "s")
end

function UISpellProgressRect.create()
	local progressbar = UISpellProgressRect.internalCreate()

	progressbar.cooldown = 1000
	progressbar.event = nil
	progressbar.currentCooldown = 0
	progressbar.showText = false
	progressbar.globalCooldown = false
	progressbar.cooldownRemainder = 0
	progressbar.reversed = false
	progressbar.timestamp = 0

	return progressbar
end

function UISpellProgressRect:setCooldown(num)
	self.cooldown = num
	self.timestamp = g_clock.millis() + num
end

function UISpellProgressRect:getCooldown()
	return self.cooldown
end

function UISpellProgressRect:reset()
	removeEvent(self.event)

	self.currentCooldown = 0
	self.cooldownRemainder = 0

	self:removeSpellCooldown()
end

function UISpellProgressRect:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "cooldown" then
			self.cooldown = tonumber(value)
		elseif name == "show-text" then
			self.showText = true
		end
	end
end

function UISpellProgressRect:onSpellCooldown(cooldown, isGCD, finishCallback, current, jobCallback)
	if self.event then
		removeEvent(self.event)

		if not self.globalCooldown and self.currentCooldown > 0 then
			self.cooldownRemainder = self.currentCooldown
		end
	end

	self.cooldown = cooldown
	self.currentCooldown = current or self.cooldown
	self.timestamp = g_clock.millis() + self.currentCooldown
	self.globalCooldown = isGCD
	self.jobCallback = jobCallback

	self:setPercent(self.reversed and 0 or 100)

	local text = self:recursiveGetChildById("text")

	if text then
		text:setText(formatTime(cooldown / 1000))
		text:setVisible(self.showText)
		text:setTextColor(cooldown < 60000 and "#36F991" or "#FFA851")
	end

	if not isGCD then
		self.finishCallback = finishCallback
	end

	self:updateSpellCooldown()
end

function UISpellProgressRect:updateSpellCooldown()
	self:show()

	if self.currentCooldown <= 0 then
		if not self.globalCooldown then
			self.cooldownRemainder = 0
		end

		self:removeSpellCooldown()

		if not self.globalCooldown and self.finishCallback then
			self.finishCallback()
		end

		return
	end

	if self.globalCooldown and self.cooldownRemainder > 0 then
		self.cooldownRemainder = self.cooldownRemainder - 50
	end

	self.currentCooldown = math.max(0, self.timestamp - g_clock.millis())

	self:setPercent(self.reversed and self.currentCooldown / self.cooldown * 100 or 100 - self.currentCooldown / self.cooldown * 100)
	self.text:setText(formatTime(self.currentCooldown / 1000))

	if self.jobCallback then
		self.jobCallback(self.currentCooldown)
	end

	local widget = self

	self.event = scheduleEvent(function()
		if not widget:isDestroyed() then
			widget:updateSpellCooldown()
		end
	end, 50)
end

function UISpellProgressRect:removeSpellCooldown(instant)
	self.globalCooldown = false

	self:hide()
	removeEvent(self.event)

	self.event = nil

	if not instant and self.cooldownRemainder > 0 then
		self:onSpellCooldown(self.cooldownRemainder, false)
	end
end

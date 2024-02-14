-- chunkname: @/modules/corelib/ui/effects.lua

g_effects = {}

function g_effects.fadeIn(widget, time, elapsed, target, finishCallback, jobCallback)
	target = target or 1
	elapsed = elapsed or 0
	time = time or 300

	widget:setOpacity(math.min(elapsed / time, target))
	removeEvent(widget.fadeEvent)

	if jobCallback then
		jobCallback(widget, math.min(1, elapsed / time))
	end

	if elapsed < time then
		removeEvent(widget.fadeEvent)

		widget.fadeEvent = scheduleEvent(function()
			g_effects.fadeIn(widget, time, elapsed + 30, target, finishCallback, jobCallback)
		end, 30)
	else
		if finishCallback then
			finishCallback()
		end

		widget.fadeEvent = nil
	end
end

function g_effects.fadeOut(widget, time, elapsed, destroy, callback, jobCallback, fadeSpeedMultiplier)
	if not widget.fadeOutTimestamp then
		if widget:getOpacity() == 0 then
			removeEvent(widget.fadeEvent)

			return
		end

		widget.fadeOutTimestamp = g_clock.millis()
	end

	elapsed = elapsed or 0
	time = time or 300
	fadeSpeedMultiplier = fadeSpeedMultiplier or 1
	elapsed = g_clock.millis() - (widget.fadeOutTimestamp or g_clock.millis())

	removeEvent(widget.fadeEvent)

	local opacity = math.max((time - elapsed * fadeSpeedMultiplier) / time, 0)

	widget:setOpacity(opacity)

	widget.fadeOutCallback = callback

	if jobCallback then
		jobCallback(widget, math.min(1, elapsed / time))
	end

	if elapsed < time then
		widget.fadeEvent = scheduleEvent(function()
			g_effects.fadeOut(widget, time, elapsed, destroy, callback, jobCallback, fadeSpeedMultiplier)
		end, 30)
	else
		removeEvent(widget.fadeEvent)

		widget.fadeEvent = nil
		widget.fadeOutTimestamp = nil

		if destroy then
			widget:destroyChildren()
			widget:destroy()

			widget = nil
		end

		if callback then
			callback()
		end
	end
end

function g_effects.cancelFade(widget)
	if not widget.fadeEvent then
		return
	end

	removeEvent(widget.fadeEvent)

	widget.fadeEvent = nil
	widget.fadeOutTimestamp = nil
end

function g_effects.startFadeInOut(widget, duration, interval, speed, clickCancel)
	duration = duration or 0
	interval = interval or 100
	speed = speed or 0.1
	clickCancel = clickCancel or true

	removeEvent(widget.fadeInOut and widget.fadeInOut.event)
	removeEvent(widget.fadeInOut and widget.fadeInOut.stopEvent)

	widget.fadeInOut = {
		direction = 1,
		speed = speed,
		opacity = widget:getOpacity()
	}
	widget.fadeInOut.event = cycleEvent(function()
		if not widget.fadeInOut then
			return
		end

		local opacity = widget:getOpacity()

		opacity = opacity + widget.fadeInOut.speed * widget.fadeInOut.direction

		if opacity <= 0 then
			widget.fadeInOut.direction = 1
		elseif opacity >= 1 then
			widget.fadeInOut.direction = -1
		end

		widget:setOpacity(math.min(math.max(0, opacity), 1))
	end, interval)

	if duration > 0 then
		widget.fadeInOut.stopEvent = scheduleEvent(function()
			g_effects.stopFadeInOut(widget)
		end, duration)
	end

	connect(widget, {
		onClick = g_effects.stopFadeInOut
	})
end

function g_effects.stopFadeInOut(widget)
	if not widget.fadeInOut then
		return
	end

	local opacity = widget.fadeInOut.opacity

	disconnect(widget, {
		onClick = g_effects.stopFadeInOut
	})
	removeEvent(widget.fadeInOut.event)
	removeEvent(widget.fadeInOut.stopEvent)

	widget.fadeInOut = nil

	widget:setOpacity(opacity)
end

function g_effects.startBlink(widget, duration, interval, clickCancel, customBlink, customStop)
	duration = duration or 0
	interval = interval or 500
	clickCancel = clickCancel or true

	removeEvent(widget.blinkEvent)
	removeEvent(widget.blinkStopEvent)

	widget.blinkEvent = cycleEvent(function()
		if customBlink and type(customBlink) == "function" then
			customBlink(widget)
		else
			widget:setOn(not widget:isOn())
		end
	end, interval)

	if duration > 0 then
		widget.blinkStopEvent = scheduleEvent(function()
			if customStop and type(customStop) == "function" then
				customStop(widget)
			end

			g_effects.stopBlink(widget)
		end, duration)
	end

	connect(widget, {
		onClick = g_effects.stopBlink
	})
end

function g_effects.stopBlink(widget)
	disconnect(widget, {
		onClick = g_effects.stopBlink
	})
	removeEvent(widget.blinkEvent)
	removeEvent(widget.blinkStopEvent)

	widget.blinkEvent = nil
	widget.blinkStopEvent = nil

	widget:setOn(false)
end

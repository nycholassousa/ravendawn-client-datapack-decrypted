-- chunkname: @/modules/gamelib/ui/uifishhealthbar.lua

UIFishHealthBar = extends(UIWidget, "UIFishHealthBar")

function UIFishHealthBar.create()
	local bar = UIFishHealthBar.internalCreate()

	bar:setPhantom(false)
	bar:setAutoFocusPolicy(AutoFocusFirst)

	bar.hasBorder = true
	bar.value = 0
	bar.oldValue = 0
	bar.percent = 0

	return bar
end

function UIFishHealthBar:setHealthBorder(value)
	self.hasBorder = value
end

local function shake(fish, progress, n, intensity)
	local marginTop = fish:getMarginTop() or 0
	local intensity = intensity or 2
	local intensity, n = intensity, n or 10

	if n > 0 then
		local offset = n % 2 == 0 and intensity or -intensity

		fish:setMarginTop(marginTop + offset)

		if fish:getMarginLeft() >= progress:getWidth() - fish:getWidth() then
			fish:setImageSource("/images/game/bars/fishing/critical")

			if n < 5 then
				n = 20
			end

			fish.shakeEvent = scheduleEvent(function()
				shake(fish, progress, n - 1, intensity)
			end, 50)
		else
			fish:setImageSource("/images/game/bars/fishing/fish")

			fish.shakeEvent = scheduleEvent(function()
				shake(fish, progress, n - 1, intensity)
			end, 200)
		end
	else
		fish.shakeEvent = nil
	end
end

function UIFishHealthBar:setPercentage(value, maxValue)
	self.percent = math.floor(value / maxValue * 100)

	local percentage = 100 - (maxValue and maxValue > 0 and math.min(100, self.percent) or value)
	local widget = self:recursiveGetChildById("progress")
	local fishIcon = self:recursiveGetChildById("fish")
	local fishLine = self:recursiveGetChildById("line")
	local progressBg = self:recursiveGetChildById("progressBackground")

	progressBg:setOpacity(math.max(0.4, percentage / 100))

	if not fishIcon.shakeEvent then
		if fishIcon:getMarginLeft() >= widget:getWidth() - fishIcon:getWidth() then
			shake(fishIcon, widget, 20, 1)
		else
			shake(fishIcon, widget, 4, 1)
		end
	end

	local offset = math.ceil(widget:getWidth() * percentage / 100)

	local function progress(value, max)
		widget:setImageWidth(value)
		fishIcon:setMarginLeft(math.min(value > 10 and value - 10 or 0, widget:getWidth() - fishIcon:getWidth()))
		fishLine:setImageRect({
			y = 4,
			x = 0,
			width = widget:getWidth() - fishIcon:getWidth() - (value > 10 and value - 13 or -3),
			height = fishLine:getImageHeight()
		})
		widget:setVisible(widget:getImageWidth() > 0)

		self.value = value

		if self.value ~= max then
			self.event = scheduleEvent(function()
				progress(math.min(self.value + 1, offset), max)
			end, 25)
		else
			self.event = nil
		end
	end

	if not self.event then
		progress(math.min(self.value + 1, offset), offset)
	else
		scheduleEvent(function()
			if not self.event then
				progress(math.min(self.value + 1, offset), offset)
			else
				scheduleEvent(function()
					progress(math.min(self.value + 1, offset), offset)
				end, 50)
			end
		end, 50)
	end
end

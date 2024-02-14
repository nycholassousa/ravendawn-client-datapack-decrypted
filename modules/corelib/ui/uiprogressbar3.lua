-- chunkname: @/modules/corelib/ui/uiprogressbar3.lua

UIProgressBar3 = extends(UIWidget, "UIProgressBar3")

function UIProgressBar3.create()
	local progressbar = UIProgressBar3.internalCreate()

	progressbar.minimum = 0
	progressbar.maximum = 100

	progressbar:setFocusable(false)
	progressbar:setOn(true)

	progressbar.value = 100
	progressbar.minWidth = 11

	return progressbar
end

function UIProgressBar3:setMinimum(minimum)
	self.minimum = minimum

	if minimum > self.value then
		self:setValue(minimum)
	end
end

function UIProgressBar3:setMaximum(maximum)
	self.maximum = maximum

	if maximum < self.value then
		self:setValue(maximum)
	end
end

function UIProgressBar3:setValue(value, minimum, maximum)
	if minimum then
		self.minimum = minimum
	end

	if maximum then
		self.maximum = maximum
	end

	self.value = math.max(math.min(value, self.maximum), self.minimum)

	local width = (self:getWidth() - self.progress:getMarginRight() - self.progress:getMarginLeft()) * self.value / self.maximum

	self:recursiveGetChildById("progress"):setWidth(width == 0 and width or width > 0 and width < self.minWidth and self.minWidth or width)
end

function UIProgressBar3:setPercent(percent)
	if not self:recursiveGetChildById("progress") then
		return false
	end

	self:setValue(percent, 0, 100)

	return true
end

function UIProgressBar3:getPercent()
	return self.value
end

function UIProgressBar3:setText(text)
	if not self:recursiveGetChildById("label") then
		return false
	end

	self.text = text

	self:recursiveGetChildById("label"):setText(text)

	return true
end

function UIProgressBar3:setFont(font)
	if not self:recursiveGetChildById("label") then
		return false
	end

	self.font = font

	self:recursiveGetChildById("label"):setFont(font)

	return true
end

function UIProgressBar3:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "font" then
			if not self:setFont(value) then
				self._font = value
			end
		elseif name == "text" then
			if not self:setText(value) then
				self._text = value
			end
		elseif name == "percent" and not self:setPercent(value) then
			self._percent = value
		end
	end
end

function UIProgressBar3:onGeometryChange()
	if self._font then
		self:setFont(self._font)

		self._font = nil
	end

	if self._text then
		self:setText(self._text)

		self._text = nil
	end

	if self._percent then
		self:setPercent(self._percent)

		self._percent = nil
	end
end

function UIProgressBar3:setPercentage(value, maxValue, onEnd)
	self.percent = math.floor(value / maxValue * 100)

	local widget = self:recursiveGetChildById("progress")
	local offset = math.ceil((self:getWidth() - widget:getMarginRight()) * self.percent / 100)

	local function progress(value, max)
		value = math.min(max, value)

		widget:setWidth(value)
		widget:setVisible(widget:getWidth() > 0)

		self.value = value

		if self.value and max > self.value and widget:getWidth() < self:getWidth() - (widget:getMarginLeft() + widget:getMarginRight()) then
			local increase = self.percent == 100 and 10 or 1

			self.event = scheduleEvent(function()
				progress(math.min((self.value or 0) + increase, offset), max)
			end, 10)
		else
			self.event = nil

			if onEnd then
				onEnd()
			end
		end
	end

	if not self.event then
		progress(math.min(self.value + 1, offset), offset)
	else
		scheduleEvent(function()
			if not self.event then
				progress(math.min(self.value + 1, offset), offset)
			else
				local increase = self.percent == 100 and 10 or 1

				scheduleEvent(function()
					progress(math.min((self.value or 0) + increase, offset), offset)
				end, 10)
			end
		end, 10)
	end
end

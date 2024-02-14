-- chunkname: @/modules/corelib/ui/uisettingslider.lua

UISettingSlider = extends(UIWidget, "UISettingSlider")

local MINIMUM_PX = 33

local function calcValues(self)
	local pxrange, center

	if self.orientation == "vertical" then
		pxrange = self:getHeight() - self:getWidth()
		center = self:getY() + math.floor(self:getHeight() / 2)
	else
		pxrange = self:getWidth()
		center = self:getX() + math.floor(self:getWidth() / 2)
	end

	local range = self.maximum - self.minimum + 1
	local proportion

	if self.pixelsScroll then
		proportion = pxrange / (range + pxrange)
	else
		proportion = math.min(math.max(self.step, 1), range) / range
	end

	local px = math.max(proportion * pxrange, 6)

	if g_app.isMobile() then
		px = math.max(proportion * pxrange, 24)
	end

	px = math.max(MINIMUM_PX, px - px % 2 + 1)

	local offset = 0

	if range == 0 or self.value == self.minimum then
		if self.orientation == "vertical" then
			offset = -math.floor((self:getHeight() - px) / 2)
		else
			offset = -math.floor((self:getWidth() - px) / 2)
		end
	elseif range > 1 and self.value == self.maximum then
		if self.orientation == "vertical" then
			offset = math.ceil((self:getHeight() - px) / 2)
		else
			offset = math.ceil((self:getWidth() - px) / 2)
		end
	elseif range > 1 then
		offset = ((self.value - self.minimum) / (range - 1) - 0.5) * (pxrange - px)
	end

	return range, pxrange, px, offset, center
end

local function updateValueDisplay(widget)
	if widget == nil then
		return
	end

	if widget:getShowValue() then
		local value = widget:getValue()

		if widget.displayFormat then
			value = widget.displayFormat(value)
		end

		widget:setText((widget:getFrontSymbol() or "") .. value .. (widget:getSymbol() or ""))
	end
end

local function updateSlider(self)
	local slider = self:getChildById("sliderButton")
	local cursor = self:getChildById("sliderCursor")

	if slider == nil or cursor == nil then
		return
	end

	local range, pxrange, px, offset, center = calcValues(self)

	if self.orientation == "vertical" then
		slider:setHeight(px)
		slider:setMarginTop(offset)
	else
		slider:setMarginLeft(0)

		if self.canCursorReachEnd then
			slider:setWidth(math.max(0, (pxrange - slider:getPaddingRight()) * self.value / self.maximum))
			cursor:setMarginLeft(slider:getWidth() - cursor:getWidth() / 2)
		else
			slider:setWidth(math.max(10, (pxrange - slider:getPaddingRight()) * self.value / self.maximum))
			cursor:setMarginLeft(math.min(self:getWidth(), math.min(self:getWidth() - cursor:getWidth(), slider:getWidth() - cursor:getWidth() / 2)))
		end
	end

	updateValueDisplay(self)

	local status = self.maximum ~= self.minimum

	self:setOn(status)

	for _i, child in pairs(self:getChildren()) do
		child:setEnabled(status)
	end
end

local function parseSliderPos(self, slider, pos, move)
	local value = (pos.x - slider:getX()) * self.maximum / self:getWidth()
	local round = value % self.step

	if round > 0.5 then
		round = math.ceil(value / self.step) * self.step
	else
		round = math.floor(value / self.step) * self.step
	end

	self:setValue(round)
end

local function parseSliderPress(self, slider, pos, button)
	parseSliderPos(self, slider, pos)
end

function UISettingSlider.create()
	local scrollbar = UISettingSlider.internalCreate()

	scrollbar:setFocusable(false)

	scrollbar.value = 0
	scrollbar.minimum = -999999
	scrollbar.maximum = 999999
	scrollbar.step = 1
	scrollbar.orientation = "vertical"
	scrollbar.pixelsScroll = false
	scrollbar.showValue = false
	scrollbar.symbol = nil
	scrollbar.mouseScroll = true
	scrollbar.frontSymbol = nil
	scrollbar.canCursorReachEnd = false

	return scrollbar
end

function UISettingSlider:onSetup()
	self.setupDone = true

	local sliderButton = self:getChildById("sliderButton")
	local cursor = self:getChildById("sliderCursor")

	g_mouse.bindPressMove(sliderButton, function(mousePos, mouseMoved)
		parseSliderPos(self, sliderButton, mousePos, mouseMoved)
	end)
	g_mouse.bindPress(sliderButton, function(mousePos, mouseButton)
		parseSliderPress(self, sliderButton, mousePos, mouseButton)
	end)
	g_mouse.bindPressMove(cursor, function(mousePos, mouseMoved)
		parseSliderPos(self, sliderButton, mousePos, mouseMoved)
	end)
	g_mouse.bindPress(cursor, function(mousePos, mouseButton)
		parseSliderPress(self, sliderButton, mousePos, mouseButton)
	end)
	g_mouse.bindPress(self, function(mousePos, mouseButton)
		parseSliderPress(self, sliderButton, mousePos, mouseButton)
	end)
	g_mouse.bindPressMove(self, function(mousePos, mouseMoved)
		parseSliderPos(self, sliderButton, mousePos, mouseMoved)
	end)
	updateSlider(self)
end

function UISettingSlider:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "maximum" then
			self:setMaximum(tonumber(value))
		elseif name == "minimum" then
			self:setMinimum(tonumber(value))
		elseif name == "step" then
			self:setStep(tonumber(value))
		elseif name == "orientation" then
			self:setOrientation(value)
		elseif name == "value" then
			self:setValue(value)
		elseif name == "pixels-scroll" then
			self.pixelsScroll = true
		elseif name == "show-value" then
			self.showValue = value
		elseif name == "symbol" then
			self.symbol = value
		elseif name == "mouse-scroll" then
			self.mouseScroll = value
		elseif name == "front-symbol" then
			self.frontSymbol = value
		elseif name == "can-cursor-reach-end" then
			self.canCursorReachEnd = value
		end
	end
end

function UISettingSlider:decrement(count)
	count = count or self.step

	self:setValue(self.value - count)
end

function UISettingSlider:increment(count)
	count = count or self.step

	self:setValue(self.value + count)
end

function UISettingSlider:setMaximum(maximum)
	if maximum == self.maximum then
		return
	end

	self.maximum = maximum

	if maximum < self.minimum then
		self:setMinimum(maximum)
	end

	if maximum < self.value then
		self:setValue(maximum)
	else
		updateSlider(self)
	end
end

function UISettingSlider:setMinimum(minimum)
	if minimum == self.minimum then
		return
	end

	self.minimum = minimum

	if minimum > self.maximum then
		self:setMaximum(minimum)
	end

	if minimum > self.value then
		self:setValue(minimum)
	else
		updateSlider(self)
	end
end

function UISettingSlider:setRange(minimum, maximum)
	self:setMinimum(minimum)
	self:setMaximum(maximum)
end

function UISettingSlider:setValue(value, force, internal)
	value = math.max(math.min(value, self.maximum), self.minimum)

	if not force and self.value == value then
		return
	end

	local delta = value - self.value

	self.value = value

	updateSlider(self)

	if self.setupDone and not internal then
		signalcall(self.onValueChange, self, math.round(value), delta)
	end
end

function UISettingSlider:setMouseScroll(scroll)
	self.mouseScroll = scroll
end

function UISettingSlider:setStep(step)
	self.step = step
end

function UISettingSlider:setOrientation(orientation)
	self.orientation = orientation
end

function UISettingSlider:setText(text)
	local valueLabel = self:getChildById("valueLabel")

	if valueLabel then
		valueLabel:setText(text)
	end
end

function UISettingSlider:onGeometryChange()
	updateSlider(self)
end

function UISettingSlider:onMouseWheel(mousePos, mouseWheel)
	if not self.mouseScroll or not self:isOn() or self.disableScroll then
		return false
	end

	if mouseWheel == MouseWheelUp then
		if self.orientation == "vertical" then
			if self.value <= self.minimum then
				return false
			end

			self:decrement()
		else
			if self.value >= self.maximum then
				return false
			end

			self:increment()
		end
	elseif self.orientation == "vertical" then
		if self.value >= self.maximum then
			return false
		end

		self:increment()
	else
		if self.value <= self.minimum then
			return false
		end

		self:decrement()
	end

	return true
end

function UISettingSlider:getMaximum()
	return self.maximum
end

function UISettingSlider:getMinimum()
	return self.minimum
end

function UISettingSlider:getValue()
	return math.round(self.value)
end

function UISettingSlider:getStep()
	return self.step
end

function UISettingSlider:getOrientation()
	return self.orientation
end

function UISettingSlider:getShowValue()
	return self.showValue
end

function UISettingSlider:getSymbol()
	return self.symbol
end

function UISettingSlider:getMouseScroll()
	return self.mouseScroll
end

function UISettingSlider:getFrontSymbol()
	return self.frontSymbol
end

function UISettingSlider:setSymbol(value)
	self.symbol = value
end

function UISettingSlider:setFrontSymbol(value)
	self.frontSymbol = value
end

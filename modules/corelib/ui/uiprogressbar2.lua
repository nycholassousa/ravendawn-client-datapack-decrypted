-- chunkname: @/modules/corelib/ui/uiprogressbar2.lua

UIProgressBar2 = extends(UIWidget, "UIProgressBar2")

function UIProgressBar2.create()
	local progressbar = UIProgressBar2.internalCreate()

	progressbar.minimum = 0
	progressbar.maximum = 100

	progressbar:setFocusable(false)
	progressbar:setOn(true)

	progressbar.value = 100

	return progressbar
end

function UIProgressBar2:setMinimum(minimum)
	self.minimum = minimum

	if minimum > self.value then
		self:setValue(minimum)
	end
end

function UIProgressBar2:setMaximum(maximum)
	self.maximum = maximum

	if maximum < self.value then
		self:setValue(maximum)
	end
end

function UIProgressBar2:setValue(value, minimum, maximum)
	if minimum then
		self:setMinimum(minimum)
	end

	if maximum then
		self:setMaximum(maximum)
	end

	self.value = math.max(math.min(value, self.maximum), self.minimum)

	if self.progressBar then
		self.progressBar:setWidth(self.progressBarWidth * self.value / self.maximum)
	end
end

function UIProgressBar2:setPercent(percent)
	self:setValue(percent, 0, 100)
end

function UIProgressBar2:getPercent()
	return self.value
end

function UIProgressBar2:getPercentPixels()
	return self.progressBar and (self.maximum - self.minimum) / self.progressBar:getWidth() or 0
end

function UIProgressBar2:getProgress()
	if self.minimum == self.maximum then
		return 1
	end

	return (self.value - self.minimum) / (self.maximum - self.minimum)
end

function UIProgressBar2:setImageColor(color)
	self.progressBar:setImageColor(color)
end

function UIProgressBar2:setText(text)
	self.text = text

	self.label:setText(text)
end

function UIProgressBar2:setFont(font)
	self.font = font

	self.label:setFont(font)
end

function UIProgressBar2:onSetup()
	local pb = g_ui.createWidget("Panel", self)

	pb:setImageSource("/images/ui/statbar")

	self.progressBar = pb

	self.progressBar:setImageColor(self:getImageColor())
	self.progressBar:addAnchor(AnchorLeft, "parent", AnchorLeft)
	self.progressBar:addAnchor(AnchorTop, "parent", AnchorTop)
	self.progressBar:addAnchor(AnchorBottom, "parent", AnchorBottom)
	self.progressBar:setWidth(self:getWidth() - 2)

	self.progressBarWidth = self:getWidth() - 2

	self.progressBar:setId("progressBar")

	self.text = self:getText()
	self.font = self:getFont()
	self.label = self:getChildById("text")

	self.label:raise()
	self.label:setFont(self.font)
	self.label:setText(self.text)
end

function UIProgressBar2:onGeometryChange(oldRect, newRect)
	if not self:isOn() then
		self:setHeight(0)
	end

	if self.progressBar then
		self.progressBar:setWidth(self:getWidth() - 2)

		self.progressBarWidth = self:getWidth() - 2

		self:setValue(self.value)
	end
end

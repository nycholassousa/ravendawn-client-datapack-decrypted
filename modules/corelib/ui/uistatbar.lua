-- chunkname: @/modules/corelib/ui/uistatbar.lua

UIStatBar = extends(UIWidget, "UIStatBar")

function UIStatBar.create()
	local statbar = UIStatBar.internalCreate()

	return statbar
end

function UIStatBar:setMinimum(minimum)
	self.progressBar:setMinimum(minimum)
end

function UIStatBar:setMaximum(maximum)
	self.progressBar:setMaximum(maximum)
end

function UIStatBar:setValue(value, minimum, maximum)
	self.progressBar:setValue(value, minimum, maximum)
end

function UIStatBar:setPercent(percent)
	self.progressBar:setPercent(percent)

	local percent = self.progressBar:getPercent()

	self.progressBar:setWidth(self.progressWidth * percent / 100)
	self:setText(percent .. "%")
end

function UIStatBar:getPercent()
	return self.progressBar:getPercent()
end

function UIStatBar:getPercentPixels()
	return self.progressBar:getPercentPixels()
end

function UIStatBar:getProgress()
	return self.progressBar:getProgress()
end

function UIStatBar:updateBackground()
	if self:isOn() then
		self.progressBar:updateBackground()
	end
end

function UIStatBar:setImageColor(color)
	self.progressBar:setBackgroundColor(color)

	return self.progressBar:setImageColor(color)
end

function UIStatBar:setText(txt)
	self:getChildById("text"):setText(txt)
end

function UIStatBar:onSetup()
	local pb = g_ui.createWidget("ProgressBar", self)

	self.progressBar = pb

	self.progressBar:setBackgroundColor(self:getImageColor())
	self.progressBar:addAnchor(AnchorLeft, "parent", AnchorLeft)
	self.progressBar:addAnchor(AnchorTop, "parent", AnchorTop)
	self.progressBar:addAnchor(AnchorBottom, "parent", AnchorBottom)
	self.progressBar:addAnchor(AnchorRight, "parent", AnchorRight)
	self.progressBar:setMargin(1)
	self.progressBar:setId("progressBar")

	self.progressWidth = self.progressBar:getWidth()

	self:getChildById("overlay"):raise()
	self:getChildById("text"):raise()
end

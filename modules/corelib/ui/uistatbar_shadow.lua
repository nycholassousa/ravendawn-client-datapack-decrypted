-- chunkname: @/modules/corelib/ui/uistatbar_shadow.lua

UIStatBarShadow = extends(UIWidget, "UIStatBarShadow")

function UIStatBarShadow.create()
	local statbar = UIStatBar.internalCreate()

	return statbar
end

function UIStatBarShadow:setMinimum(minimum)
	self.progressBar:setMinimum(minimum)
end

function UIStatBarShadow:setMaximum(maximum)
	self.progressBar:setMaximum(maximum)
end

function UIStatBarShadow:setValue(value, minimum, maximum)
	self.progressBar:setValue(value, minimum, maximum)
end

function UIStatBarShadow:setPercent(percent)
	self.progressBar:setPercent(percent)

	local percent = self.progressBar:getPercent()

	self.progressBar:setWidth(self.progressWidth * percent / 100)
	self:setText(percent .. "%")
end

function UIStatBarShadow:getPercent()
	return self.progressBar:getPercent()
end

function UIStatBarShadow:getPercentPixels()
	return self.progressBar:getPercentPixels()
end

function UIStatBarShadow:getProgress()
	return self.progressBar:getProgress()
end

function UIStatBarShadow:updateBackground()
	if self:isOn() then
		self.progressBar:updateBackground()
	end
end

function UIStatBarShadow:setImageColor(color)
	self.progressBar:setBackgroundColor(color)

	return self.progressBar:setImageColor(color)
end

function UIStatBarShadow:setText(txt)
	self:getChildById("text"):setText(txt)
end

function UIStatBarShadow:onSetup()
	local pb = g_ui.createWidget("ProgressBar", self)

	self.progressBar = pb

	self.progressBar:setBackgroundColor(self:getImageColor())
	self.progressBar:addAnchor(AnchorLeft, "parent", AnchorLeft)
	self.progressBar:addAnchor(AnchorTop, "parent", AnchorTop)
	self.progressBar:addAnchor(AnchorBottom, "parent", AnchorBottom)
	self.progressBar:addAnchor(AnchorRight, "parent", AnchorRight)
	self.progressBar:setMarginTop(14)
	self.progressBar:setMarginBottom(14)
	self.progressBar:setMarginLeft(8)
	self.progressBar:setMarginRight(8)
	self.progressBar:setId("progressBar")

	self.progressWidth = self.progressBar:getWidth()

	self:getChildById("overlay"):raise()
	self:getChildById("text"):raise()
end

-- chunkname: @/modules/gamelib/ui/uihealthbar.lua

UIHealthBar = extends(UIWidget, "UIHealthBar")

function UIHealthBar.create()
	local bar = UIHealthBar.internalCreate()

	bar:setPhantom(false)
	bar:setAutoFocusPolicy(AutoFocusFirst)

	bar.hasBorder = true

	return bar
end

function UIHealthBar:setHealthBorder(value)
	self.hasBorder = value
end

function UIHealthBar:setPercentage(value, maxValue)
	local percentage = maxValue and maxValue > 0 and math.min(100, math.floor(value / maxValue * 100)) or value
	local widget = self:recursiveGetChildById("bar")
	local icon = self:recursiveGetChildById("icon")
	local width = math.ceil((widget:getWidth() - (icon and icon:getWidth() or 0) + (maxValue ~= nil and 13 or 0)) * percentage / 100)

	widget:setImageRect({
		x = 0,
		y = 0,
		width = width,
		height = widget:getHeight()
	})

	local border = self:recursiveGetChildById("border")

	if border then
		if percentage < 100 then
			border:show()
			border:setMarginLeft(width - border:getWidth() / 2)
		else
			border:hide()
		end
	end

	widget:setVisible(widget:getImageWidth() > 0)

	local text = self:recursiveGetChildById("text")

	if text then
		text:setText(value .. " / " .. maxValue)
	end

	local resourceText = self:recursiveGetChildById("resourceText")

	if resourceText then
		resourceText:setText(value)
	end
end

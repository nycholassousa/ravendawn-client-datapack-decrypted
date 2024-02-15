-- chunkname: @/modules/gamelib/ui/uiinfusionbar.lua

UIInfusionBar = extends(UIWidget, "UIInfusionBar")

function UIInfusionBar.create()
	local bar = UIInfusionBar.internalCreate()

	bar:setPhantom(false)
	bar:setAutoFocusPolicy(AutoFocusFirst)

	return bar
end

function UIInfusionBar:setPercentage(value, maxValue)
	local percentage = maxValue and maxValue > 0 and math.min(100, math.floor(value / maxValue * 100)) or value
	local widget = self:recursiveGetChildById("bar")
	local width = math.ceil((widget:getWidth() + (maxValue ~= nil and 13 or 0)) * percentage / 100)

	widget:setImageRect({
		x = 0,
		y = 0,
		width = width,
		height = widget:getHeight()
	})

	local border = self:recursiveGetChildById("border")

	if border then
		if percentage > 2 and percentage < 98 then
			border:show()
			border:setMarginLeft(math.ceil(width - border:getWidth() / 2))
		else
			border:hide()
		end
	end

	local border_left = self:recursiveGetChildById("border_left")

	if border_left then
		border_left:setVisible(percentage > 0)
	end

	local border_right = self:recursiveGetChildById("border_right")

	if border_right then
		border_right:setVisible(percentage > 99)
	end

	widget:setVisible(widget:getImageWidth() > 0)
end

-- chunkname: @/modules/gamelib/ui/uihealthbarvertical.lua

UIHealthBarVertical = extends(UIWidget, "UIHealthBarVertical")

function UIHealthBarVertical.create()
	local bar = UIHealthBarVertical.internalCreate()

	bar:setPhantom(false)
	bar:setAutoFocusPolicy(AutoFocusFirst)

	bar.hasBorder = true

	return bar
end

function UIHealthBarVertical:setHealthBorder(value)
	self.hasBorder = value
end

function UIHealthBarVertical:setPercentage(value, maxValue)
	local percentage = maxValue and maxValue > 0 and math.min(100, math.floor(value / maxValue * 100)) or value
	local widget = self:recursiveGetChildById("bar")
	local icon = self:recursiveGetChildById("icon")
	local height = math.ceil(widget:getHeight() * percentage / 100)

	widget:setImageRect({
		x = 0,
		y = 0,
		width = widget:getWidth(),
		height = height
	})

	local border = self:recursiveGetChildById("border")

	if border then
		if percentage < 100 then
			border:show()
			border:setMarginBottom(height - border:getHeight() / 2)
		else
			border:hide()
		end
	end

	widget:setVisible(widget:getImageHeight() > 0)

	local text = self:recursiveGetChildById("text")

	if text then
		text:setText(value .. " / " .. maxValue)
	end

	local resourceText = self:recursiveGetChildById("resourceText")

	if resourceText then
		resourceText:setText(value)
	end
end

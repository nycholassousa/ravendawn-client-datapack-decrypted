-- chunkname: @/modules/gamelib/ui/uicolorwheel.lua

UIColorWheel = extends(UIButton, "UIColorWheel")

local epsilon = 1e-12

function UIColorWheel.create()
	local btn = UIColorWheel.internalCreate()

	return btn
end

function UIColorWheel:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "num-slices" then
			self.numSlices = tonumber(value)
		elseif name == "num-lines" then
			self.numRows = tonumber(value)
		end
	end
end

function UIColorWheel:setNumSlices(value)
	self.numSlices = tonumber(value)
end

function UIColorWheel:setNumRows(value)
	self.numRows = tonumber(value)
end

function UIColorWheel:getColorByMousePos()
	if not self.numSlices or not self.numRows or self.numSlices <= 0 or self.numRows <= 0 then
		return
	end

	local anglePerSlice = 360 / self.numSlices
	local mousePos = g_window.getMousePosition()
	local center = {
		x = self:getWidth() / 2,
		y = self:getHeight() / 2
	}
	local right = {
		y = 0,
		x = 1
	}
	local localMousePos = {
		x = mousePos.x - self:getPosition().x - center.x,
		y = mousePos.y - self:getPosition().y - center.y
	}

	localMousePos.x = localMousePos.x / center.x
	localMousePos.y = localMousePos.y / center.y

	if getMagnitude(localMousePos) > 1 then
		return self.colorIndex
	end

	local angle = getAngle(localMousePos, right)
	local sliceIndex = math.floor(angle / anglePerSlice)
	local rowIndex = math.floor(getMagnitude(localMousePos) * self.numRows)

	self.colorIndex = rowIndex * self.numSlices + sliceIndex

	return self.colorIndex
end

function UIColorWheel:getColor()
	return self.colorIndex
end

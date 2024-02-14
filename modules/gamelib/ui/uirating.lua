-- chunkname: @/modules/gamelib/ui/uirating.lua

UIRating = extends(UIWidget, "UIRating")

function UIRating.create()
	local panel = UIRating.internalCreate()

	panel.rating = 7

	return panel
end

function UIRating:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "rating" then
			self.rating = value
		elseif name == "custom-size" then
			self.customSize = value

			self:setCustomSize(value)
		end
	end
end

function UIRating:setRating(value)
	self._rating = self.rating

	for index, child in pairs(self:getChildren()) do
		if index <= value then
			child:show()
		else
			child:hide()
		end
	end

	self:updateSize()
end

function UIRating:updateSize()
	local children = 0

	for index, child in pairs(self:getChildren()) do
		if child:isVisible() then
			children = children + 1
		end
	end

	self:setWidth(self:getHeight() * children + self:getLayout():getSpacing() * (children - 1))
end

function UIRating:onGeometryChange()
	self:setCustomSize(self:getHeight())

	if self.rating and self.rating ~= self._rating then
		self:setRating(self.rating)
	end

	addEvent(function()
		self:updateSize()
	end)
end

function UIRating:getRating()
	return self.rating
end

function UIRating:setCustomSize(size)
	self:setHeight(size)

	for index, child in pairs(self:getChildren()) do
		child:setWidth(size)
		child:setHeight(size)
	end

	self:updateSize()
end

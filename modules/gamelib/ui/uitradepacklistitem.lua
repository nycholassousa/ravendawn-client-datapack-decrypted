-- chunkname: @/modules/gamelib/ui/uitradepacklistitem.lua

UITradepackListItem = extends(UIWidget, "UITradepackListItem")

function UITradepackListItem.create()
	local btn = UITradepackListItem.internalCreate()

	return btn
end

function UITradepackListItem:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "even-background-color" then
			self.evenBackgroundColor = value
		elseif name == "odd-background-color" then
			self.oddBackgroundColor = value
		end
	end
end

function UITradepackListItem:updateBackgroundColor()
	self.backgroundColor = nil

	local children = self:getParent():getChildren()
	local isEven = self.isEven

	if isEven and self.evenBackgroundColor then
		self.backgroundColor = self.evenBackgroundColor
	elseif not isEven and self.oddBackgroundColor then
		self.backgroundColor = self.oddBackgroundColor
	end

	if self.backgroundColor then
		self:mergeStyle({
			["background-color"] = self.backgroundColor
		})
	end
end

function UITradepackListItem:setRowBackgroundColor(order)
	self.backgroundColor = nil

	local children = self:getParent():getChildren()

	if order == "even" and self.evenBackgroundColor then
		self.backgroundColor = self.evenBackgroundColor
	elseif order == "odd" and self.oddBackgroundColor then
		self.backgroundColor = self.oddBackgroundColor
	end

	if self.backgroundColor then
		self:mergeStyle({
			["background-color"] = self.backgroundColor
		})
	end
end

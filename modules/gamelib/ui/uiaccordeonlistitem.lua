-- chunkname: @/modules/gamelib/ui/uiaccordeonlistitem.lua

UIAccordeonListItem = extends(UIWidget, "UIAccordeonListItem")

function UIAccordeonListItem.create()
	local panel = UIAccordeonListItem.internalCreate()

	return panel
end

function UIAccordeonListItem:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "title" then
			self.title = value
		end
	end
end

function UIAccordeonListItem:onLayoutUpdate()
	local title = self:recursiveGetChildById("title")

	if title and self.title ~= nil then
		title:setText(self.title)

		self.title = nil
	end

	for i = #self:getChildren(), 3, -1 do
		self:recursiveGetChildById("content"):addChild(self:getChildren()[i])
	end
end

function UIAccordeonListItem:setTitle(text)
	local title = self:recursiveGetChildById("title")

	if title then
		title:setText(text)
	end
end

function UIAccordeonListItem:clearChildren()
	self:getChildById("content"):clearChildren()
end

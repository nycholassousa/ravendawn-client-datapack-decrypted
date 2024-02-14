-- chunkname: @/modules/corelib/ui/uilabel.lua

UILabel = extends(UIWidget, "UILabel")

function UILabel.create()
	local label = UILabel.internalCreate()

	label:setPhantom(true)
	label:setFocusable(false)
	label:setTextAlign(AlignLeft)

	return label
end

function UILabel:setLinethrough(value)
	self.isLinethrough = value

	local linethrough = self:recursiveGetChildById("linethrough")

	if linethrough then
		linethrough:setVisible(value)
	end
end

function UILabel:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "linethrough" then
			self.isLinethrough = tostring(value) == "true"
		end
	end
end

function UILabel:onGeometryChange()
	local linethrough = self:recursiveGetChildById("linethrough")

	if linethrough then
		linethrough:setVisible(self.isLinethrough)
	end
end

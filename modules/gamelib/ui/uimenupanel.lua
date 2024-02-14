-- chunkname: @/modules/gamelib/ui/uimenupanel.lua

UIMenuPanel = extends(UIWidget, "UIMenuPanel")

function UIMenuPanel.create()
	local panel = UIMenuPanel.internalCreate()

	return panel
end

function UIMenuPanel:onUIResize(styleName, styleNode)
	if self.autoResize == false then
		return
	end

	if not self.originalWidth then
		self.originalWidth = self:getWidth()
		self.widthRatio = self.originalWidth / 1768
	end

	local width = g_window:getWidth() - 152

	self:setWidth(self.widthRatio * width)
end

function UIMenuPanel:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "auto-resize" then
			self.autoResize = value
		end
	end
end

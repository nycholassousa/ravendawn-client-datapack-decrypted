-- chunkname: @/modules/corelib/ui/uiresizeborder.lua

UIResizeBorder = extends(UIWidget, "UIResizeBorder")

function UIResizeBorder.create()
	local resizeborder = UIResizeBorder.internalCreate()

	resizeborder:setFocusable(false)

	resizeborder.minimum = 0
	resizeborder.maximum = 1000

	return resizeborder
end

function UIResizeBorder:onSetup()
	if self:getWidth() > self:getHeight() then
		self.vertical = true
	else
		self.vertical = false
	end
end

function UIResizeBorder:onDestroy()
	if self.hovering then
		g_mouse.popCursor(self.cursortype)
	end
end

function UIResizeBorder:onHoverChange(hovered)
	if hovered then
		if g_mouse.isCursorChanged() or g_mouse.isPressed() then
			return
		end

		if self:getWidth() > self:getHeight() then
			self.vertical = true
			self.cursortype = "vertical"
		else
			self.vertical = false
			self.cursortype = "horizontal"
		end

		g_mouse.pushCursor(self.cursortype)

		self.hovering = true

		if not self:isPressed() then
			g_effects.fadeIn(self)
		end
	elseif not self:isPressed() and self.hovering then
		g_mouse.popCursor(self.cursortype)
		g_effects.fadeOut(self)

		self.hovering = false
	end
end

function UIResizeBorder:onMouseMove(mousePos, mouseMoved)
	if self:isPressed() then
		local adjustedMousePos = mousePos

		if adjustedMousePos.x < 0 then
			adjustedMousePos.x = 0
		end

		if adjustedMousePos.y < 0 then
			adjustedMousePos.y = 0
		end

		local maxY = g_window:getHeight()

		if maxY < adjustedMousePos.y then
			adjustedMousePos.y = maxY
		end

		local maxX = g_window:getWidth()

		if maxX < adjustedMousePos.x then
			adjustedMousePos.x = maxX
		end

		local parent = self:getParent()
		local newSize = 0
		local updated = false

		if self.vertical then
			local delta = adjustedMousePos.y - self:getY() - self:getHeight() / 2

			if self:getY() - parent:getY() < 50 then
				newSize = math.min(math.max(parent:getHeight() - delta, self.minimum), self.maximum)

				local h = parent:getHeight()

				if newSize ~= h then
					parent:setY(parent:getY() - newSize + h)
				end
			else
				newSize = math.min(math.max(parent:getHeight() + delta, self.minimum), self.maximum)
			end

			if parent:getHeight() ~= newSize then
				parent:setHeight(newSize)

				updated = true
			end
		else
			local delta = adjustedMousePos.x - self:getX() - self:getWidth() / 2

			if self:getX() - parent:getX() < 50 then
				newSize = math.min(math.max(parent:getWidth() - delta, self.minimum), self.maximum)

				local w = parent:getWidth()

				if newSize ~= w then
					parent:setX(parent:getX() - newSize + w)
				end
			else
				newSize = math.min(math.max(parent:getWidth() + delta, self.minimum), self.maximum)
			end

			if parent:getWidth() ~= newSize then
				parent:setWidth(newSize)

				updated = true
			end
		end

		self:checkBoundary(newSize)

		if updated and self.onResizeParent then
			self.onResizeParent(self, parent)
		end

		return true
	end
end

function UIResizeBorder:onMouseRelease(mousePos, mouseButton)
	if not self:isHovered() then
		g_mouse.popCursor(self.cursortype)
		g_effects.fadeOut(self)

		self.hovering = false
	end
end

function UIResizeBorder:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "maximum" then
			self:setMaximum(tonumber(value))
		elseif name == "minimum" then
			self:setMinimum(tonumber(value))
		end
	end
end

function UIResizeBorder:onVisibilityChange(visible)
	if visible and self.maximum == self.minimum then
		self:hide()
	end
end

function UIResizeBorder:setMaximum(maximum)
	self.maximum = maximum

	self:checkBoundary()
end

function UIResizeBorder:setMinimum(minimum)
	self.minimum = minimum

	self:checkBoundary()
end

function UIResizeBorder:getMaximum()
	return self.maximum
end

function UIResizeBorder:getMinimum()
	return self.minimum
end

function UIResizeBorder:setParentSize(size)
	local parent = self:getParent()

	if self.vertical then
		parent:setHeight(size)
	else
		parent:setWidth(size)
	end

	self:checkBoundary(size)
end

function UIResizeBorder:getParentSize()
	local parent = self:getParent()

	if self.vertical then
		return parent:getHeight()
	else
		return parent:getWidth()
	end
end

function UIResizeBorder:checkBoundary(size)
	size = size or self:getParentSize()

	if self.maximum == self.minimum and size == self.maximum then
		self:hide()
	else
		self:show()
	end
end

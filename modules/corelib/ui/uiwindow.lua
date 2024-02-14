-- chunkname: @/modules/corelib/ui/uiwindow.lua

UIWindow = extends(UIWidget, "UIWindow")

function UIWindow.create()
	local window = UIWindow.internalCreate()

	window:setTextAlign(AlignTopCenter)
	window:setDraggable(true)
	window:setAutoFocusPolicy(AutoFocusFirst)

	return window
end

function UIWindow:onKeyDown(keyCode, keyboardModifiers)
	if keyboardModifiers == KeyboardNoModifier then
		if keyCode == KeyEnter then
			return signalcall(self.onEnter, self)
		elseif keyCode == KeyEscape then
			return signalcall(self.onEscape, self)
		end
	end
end

function UIWindow:onFocusChange(focused)
	if focused then
		self:raise()
	end
end

function UIWindow:onDragEnter(mousePos)
	if self.static then
		return false
	end

	self:breakAnchors()

	self.movingReference = {
		x = mousePos.x - self:getX(),
		y = mousePos.y - self:getY()
	}

	return true
end

function UIWindow:onDragLeave(droppedWidget, mousePos)
	return
end

function UIWindow:onDestroy()
	if self.onDragMoveEvent then
		self.onDragMoveEvent:cancel()

		self.onDragMoveEvent = nil
	end
end

function UIWindow:onDragMove(mousePos, mouseMoved)
	if self.static then
		return
	end

	self.movingMousePos = mousePos

	if self.onDragMoveEvent then
		return
	end

	self.onDragMoveEvent = scheduleEvent(function()
		local movingMousePos = self.movingMousePos
		local pos = {
			x = movingMousePos.x - self.movingReference.x,
			y = movingMousePos.y - self.movingReference.y
		}

		self:setPosition(pos)
		self:bindRectToParent()

		self.onDragMoveEvent = nil
	end, 10)
end

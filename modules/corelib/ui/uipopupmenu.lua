-- chunkname: @/modules/corelib/ui/uipopupmenu.lua

UIPopupMenu = extends(UIWidget, "UIPopupMenu")

local currentMenu

function UIPopupMenu.create()
	local menu = UIPopupMenu.internalCreate()
	local layout = UIVerticalLayout.create(menu)

	layout:setFitChildren(true)
	menu:setLayout(layout)

	menu.isGameMenu = false
	menu.lastWidth = 0
	menu.prevFocusedWidget = rootWidget:getFocusedChild()

	return menu
end

function UIPopupMenu:display(pos, expanded, parent)
	if self:getChildCount() == 0 then
		self:destroy()

		return
	end

	if not expanded then
		if g_ui.isMouseGrabbed() then
			self:destroy()

			return
		end

		if currentMenu then
			currentMenu:destroy()
		end
	else
		self.parent = parent
	end

	if pos == nil then
		pos = g_window.getMousePosition()
	end

	if parent then
		parent:addChild(self)
	else
		rootWidget:addChild(self)
	end

	self:setPosition(pos)
	self:grabMouse()
	self:focus()

	currentMenu = self
end

function UIPopupMenu:onGeometryChange(oldRect, newRect)
	local parent = self:getParent()

	if not parent then
		return
	end

	local ymax = parent:getY() + parent:getHeight()
	local xmax = parent:getX() + parent:getWidth()

	if ymax < newRect.y + newRect.height then
		local newy = ymax - newRect.height

		if newy > 0 and ymax > newy + newRect.height then
			self:setY(newy)
		end
	end

	if xmax < newRect.x + newRect.width then
		local newx = xmax - newRect.width

		if newx > 0 and xmax > newx + newRect.width then
			self:setX(newx)
		end
	end

	self:bindRectToParent()
end

function UIPopupMenu:addOption(optionName, optionCallback, shortcut, expanding, customStyle)
	local optionWidget = g_ui.createWidget(customStyle or self:getStyleName() .. "Button", self)

	optionWidget.clickSound = true

	local disconnects = connect(optionWidget, {
		onClick = function(widget)
			if not expanding then
				self:destroy()
			end

			optionCallback(optionWidget)
		end
	})

	function optionWidget.onDestroy()
		for _, disconnect in ipairs(disconnects) do
			disconnect()
		end
	end

	optionWidget:setText(optionName)
	optionWidget:setId(optionName:lower())

	local width = optionWidget:getTextSize().width + self:getPaddingLeft() + self:getPaddingRight()

	if shortcut then
		local shortcutLabel = g_ui.createWidget(self:getStyleName() .. "ShortcutLabel", optionWidget)

		shortcutLabel:setText(shortcut)

		width = width + shortcutLabel:getTextSize().width + shortcutLabel:getMarginLeft() + shortcutLabel:getMarginRight()
	end

	if not self.fixedWidth then
		self.lastWidth = math.max(self:getWidth(), math.max(self.lastWidth, width))

		self:setWidth(self.lastWidth)
	else
		self:setWidth(self.fixedWidth)
	end

	return optionWidget
end

function UIPopupMenu:addSeparator()
	g_ui.createWidget(self:getStyleName() .. "Separator", self)
end

function UIPopupMenu:setGameMenu(state)
	self.isGameMenu = state
end

function UIPopupMenu:onDestroy()
	if currentMenu == self then
		currentMenu = nil
	end

	self:ungrabMouse()
	self.prevFocusedWidget:focus()
end

function UIPopupMenu:onMousePress(mousePos, mouseButton)
	if not self:containsPoint(mousePos) then
		self:destroy()
	end

	return true
end

function UIPopupMenu:onKeyPress(keyCode, keyboardModifiers)
	if keyCode == KeyEscape then
		self:destroy()

		return true
	end

	return false
end

local function onRootGeometryUpdate()
	if currentMenu then
		currentMenu:destroy()
	end
end

local function onGameEnd()
	if currentMenu and currentMenu.isGameMenu then
		currentMenu:destroy()
	end
end

connect(rootWidget, {
	onGeometryChange = onRootGeometryUpdate
})
connect(g_game, {
	onGameEnd = onGameEnd
})

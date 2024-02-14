-- chunkname: @/modules/corelib/ui/tooltip.lua

g_tooltip = {
	children = {}
}

local toolTipPanel, toolTipTitle, toolTipLabel, currentHoveredWidget

local function getDistanceBetween(p1, p2)
	return math.pow(p1.x - p2.x, 2) + math.pow(p1.y - p2.y, 2)
end

function g_tooltip.getCurrentHoveredWidget()
	return currentHoveredWidget
end

local function moveToolTip(first)
	if not first and (not toolTipPanel:isVisible() or toolTipPanel:getOpacity() < 0.1) then
		return
	end

	if not first and g_gameTooltip.disappearOnMove then
		local pos = g_window.getMousePosition()
		local windowPos = toolTipPanel:getPosition()

		if getDistanceBetween(pos, windowPos) > 20 then
			toolTipPanel.hide()

			toolTipPanel.disappearOnMove = false
		end

		return
	end

	local parent = g_tooltip.parentWidget

	if parent and parent.tooltipAnchors then
		for _, hookAnchor in pairs(parent.tooltipAnchors) do
			if hookAnchor == AnchorHorizontalCenter then
				toolTipPanel:setX(parent:getX() + parent:getWidth() / 2 - toolTipPanel:getWidth() / 2)
			elseif hookAnchor == AnchorTop then
				toolTipPanel:setY(parent:getY() - toolTipPanel:getHeight())
			end
		end

		return
	end

	local pos = g_window.getMousePosition()
	local windowSize = g_window.getSize()
	local tooltipSize = toolTipPanel:getSize()
	local UIScale = g_app.getScale()

	windowSize.width = windowSize.width / UIScale
	windowSize.height = windowSize.height / UIScale
	pos.x = pos.x + 1
	pos.y = pos.y + 1

	local outsideScreenOffsetX = pos.x + tooltipSize.width - windowSize.width

	if outsideScreenOffsetX > 0 then
		pos.x = pos.x - outsideScreenOffsetX
	end

	local outsideScreenOffsetY = pos.y + tooltipSize.height - windowSize.height

	if outsideScreenOffsetY > 0 then
		pos.y = pos.y - outsideScreenOffsetY
	end

	toolTipPanel:setPosition(pos)
end

function g_tooltip.onWidgetHoverChange(widget, hovered)
	if hovered then
		if (widget.tooltip or widget.advancedTooltip) and not g_mouse.isPressed() then
			g_tooltip.display(widget)

			currentHoveredWidget = widget
		end

		if widget.blinkEvent then
			g_effects.stopBlink(widget)
		end
	elseif widget == currentHoveredWidget then
		g_tooltip.hide()

		currentHoveredWidget = nil
	end
end

local function onWidgetStyleApply(widget, styleName, styleNode)
	if styleNode.tooltip then
		widget.tooltip = styleNode.tooltip
	end
end

function g_tooltip.init()
	connect(UIWidget, {
		onStyleApply = onWidgetStyleApply,
		onHoverChange = g_tooltip.onWidgetHoverChange
	})
	addEvent(function()
		toolTipPanel = g_ui.createWidget("UIWidget", rootWidget)

		toolTipPanel:setId("toolTip")
		toolTipPanel:setImageSource("/images/ui/windows/tooltip/window")
		toolTipPanel:setImageBorder(15)
		toolTipPanel:setPadding(20)
		toolTipPanel:hide()
		toolTipPanel:setLayout(UIVerticalLayout.create(rootWidget))
		toolTipPanel:setPhantom(true)
		toolTipPanel:getLayout():setFitChildren(true)

		toolTipTitle = g_ui.createWidget("UILabel", toolTipPanel)

		toolTipTitle:setFont("myriad-pro-semibold-20")
		toolTipTitle:setTextAlign(AlignCenter)
		toolTipTitle:setTextOffset({
			y = 2,
			x = 0
		})
		toolTipTitle:setTextWrap(true)
		toolTipTitle:hide()
		toolTipPanel:setPhantom(true)

		toolTipLabel = g_ui.createWidget("UILabel", toolTipPanel)

		toolTipLabel:setFont("myriad-pro-semibold-14")
		toolTipLabel:setTextAlign(AlignCenter)
		toolTipLabel:setTextOffset({
			y = 2,
			x = 0
		})
		toolTipLabel:setTextWrap(true)
		toolTipLabel:hide()
		toolTipLabel:setPhantom(true)

		function toolTipPanel.onMouseMove()
			moveToolTip()
		end
	end)
end

function g_tooltip.terminate()
	disconnect(UIWidget, {
		onStyleApply = onWidgetStyleApply,
		onHoverChange = g_tooltip.onWidgetHoverChange
	})

	currentHoveredWidget = nil

	toolTipPanel:destroy()

	toolTipPanel = nil
	g_tooltip = nil
end

function g_tooltip.display(widget)
	if widget.tooltip == nil and widget.coloredTooltip == nil then
		return
	end

	if tonumber(widget.tooltip) ~= nil then
		text = tostring(widget.tooltip)
	end

	local text = type(widget.tooltip) == "function" and widget.tooltip() or widget.tooltip

	if text:len() == 0 and not widget.coloredTooltip then
		return
	end

	if not toolTipPanel then
		return
	end

	toolTipPanel:setWidth(350)

	if widget.tooltipTitle then
		toolTipTitle:setText(widget.tooltipTitle)
		toolTipTitle:resizeToText()
	end

	toolTipTitle:setVisible(widget.tooltipTitle and true or false)
	toolTipLabel:setTextAlign(widget.tooltipAlign or AlignCenter)

	if widget.advancedTooltip then
		for _, info in pairs(widget.advancedTooltip) do
			local child = g_ui.createWidget("UILabel", toolTipPanel)

			if info.value then
				local value = g_ui.createWidget("UILabel", child)

				value:setId("value")
				value:addAnchor(AnchorTop, "parent", AnchorTop)
				value:addAnchor(AnchorRight, "parent", AnchorRight)
				value:setText(info.value(widget.advancedTooltipValue))
				value:setFont("myriad-pro-semibold-14")
				value:setTextOffset({
					y = 2,
					x = 0
				})
				value:resizeToText()
				value:setColor(widget.advancedTooltipColor)
			else
				child:setTextAlign(info.value and AlignLeft or AlignCenter)
			end

			child:setText(info.text)
			child:setFont("myriad-pro-semibold-14")
			child:setTextOffset({
				y = 2,
				x = 0
			})
			child:resizeToText()
			child:setColor(widget.advancedTooltipColor)
			table.insert(g_tooltip.children, child)
		end
	end

	toolTipLabel:setMarginBottom(widget.advancedTooltip and 10 or 0)

	if widget.coloredTooltip then
		toolTipLabel:setColoredText(widget.coloredTooltip)
	else
		toolTipLabel:setText(text)
	end

	toolTipLabel:resizeToText()

	local function resize(scheduled)
		local width, height = 0, 0

		for _, child in pairs(g_tooltip.children) do
			child:resizeToText()

			local childWidth = child:getTextSize().width + (15 + (child.value and child.value:getTextSize().width or 0))

			width = width < childWidth and childWidth or width

			local childHeight = child:getHeight()

			height = height + childHeight
		end

		toolTipLabel:resizeToText()
		toolTipLabel:show()

		if widget.tooltipTitle or widget.advancedTooltip then
			local width = toolTipPanel:getPaddingLeft() + toolTipPanel:getPaddingRight() + math.max(100, math.min(350, 12 + (width > 0 and width or toolTipLabel:getTextSize().width)))
			local height = toolTipPanel:getPaddingTop() + toolTipPanel:getPaddingBottom() + 12 + (height + (toolTipTitle:isVisible() and toolTipTitle:getHeight() or 0) + toolTipLabel:getTextSize().height + toolTipLabel:getMarginBottom())

			toolTipPanel:resize(width, height)
		else
			toolTipPanel:setWidth(toolTipLabel:getTextSize().width + toolTipPanel:getPaddingLeft() + toolTipPanel:getPaddingRight() + 12)
		end

		g_tooltip.parentWidget = widget

		if not scheduled then
			g_layout.onOpenWindow(toolTipPanel, 200, true, true)
			moveToolTip(true)
		end
	end

	addEvent(resize)
	scheduleEvent(function()
		resize(true)
		moveToolTip(true)
	end, 50)
	scheduleEvent(function()
		if not g_tooltip.parentWidget or not g_tooltip.parentWidget:isHovered() then
			g_tooltip.hide()
		end
	end, 1000)
end

function g_tooltip.hide()
	g_effects.fadeOut(toolTipPanel, 100)

	for index, value in ipairs(g_tooltip.children) do
		value:destroy()
	end

	g_tooltip.children = {}
	g_tooltip.parentWidget = nil
end

function UIWidget:setTooltip(text)
	self.coloredTooltip = nil
	self.tooltip = text

	if toolTipLabel and toolTipLabel:isVisible() and g_tooltip.parentWidget == self then
		toolTipLabel:setText(text)
		toolTipLabel:resizeToText()
	end
end

function UIWidget:setColoredTooltip(text)
	self.coloredTooltip = text
	self.tooltip = ""

	if toolTipLabel and toolTipLabel:isVisible() and g_tooltip.parentWidget == self then
		toolTipLabel:setColoredText(self.coloredTooltip)
		toolTipLabel:resizeToText()
	end
end

function UIWidget:removeTooltip()
	self.tooltip = nil
	self.coloredTooltip = nil
	self.advancedTooltip = nil
	self.advancedTooltipColor = nil
	self.tooltipTitle = nil
	self.advancedTooltipValue = nil
end

function UIWidget:getTooltip()
	return self.tooltip
end

function UIWidget:setAdvancedTooltip(text, value, color)
	if not text then
		return
	end

	self.advancedTooltip = text
	self.advancedTooltipColor = color or "white"

	if value then
		self.advancedTooltipValue = value
	end
end

function UIWidget:setTitle(text)
	self.tooltipTitle = text
end

g_tooltip.init()
connect(g_app, {
	onTerminate = g_tooltip.terminate
})

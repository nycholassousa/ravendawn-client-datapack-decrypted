-- chunkname: @/modules/corelib/ui/uimessagebox.lua

if not UIWindow then
	dofile("uiwindow")
end

UIMessageBox = extends(UIWindow, "UIMessageBox")
UIMessageBox.create = nil

function UIMessageBox.display(title, message, buttons, onEnterCallback, onEscapeCallback, font, parent, requireFocus)
	local messageBox = UIMessageBox.internalCreate()

	if not parent then
		rootWidget:addChild(messageBox)
	else
		parent:addChild(messageBox)
	end

	messageBox:setFocusable(false)

	if requireFocus then
		messageBox:setFocusable(true)

		messageBox.focusPanel = g_ui.createWidget("UIWidget", rootWidget)

		messageBox.focusPanel:setSize({
			width = 10000,
			height = 10000
		})
		messageBox.focusPanel:centerIn("parent")
		messageBox.focusPanel:raise()

		function messageBox.onFocusChange()
			if not messageBox:isFocused() then
				messageBox:raise()
				messageBox:focus()
			else
				messageBox:shake(4, 3)
			end
		end

		messageBox:raise()
		messageBox:focus()
	end

	messageBox:setStyle("PopupWindow")
	messageBox:setText(title)

	local messageWidth = 0
	local messageHeight = 0

	if message ~= "" then
		local messageLabel = g_ui.createWidget("PopupWindowLabel", messageBox)

		messageLabel:setColoredText(GetHighlightedText(string.format("%s", message)))
		messageLabel:setId("messageLabel")
		messageLabel:addAnchor(AnchorTop, "parent", AnchorTop)

		if font ~= nil then
			messageLabel:setFont(font)
		end

		messageWidth = messageLabel:getWidth()
	end

	local buttonsWidth = 0
	local buttonsHeight = 0
	local anchor = AnchorHorizontalCenter

	if buttons.anchor then
		anchor = buttons.anchor
	end

	local buttonHolder = g_ui.createWidget("PopupWindowButtonHolder", messageBox)

	buttonHolder:addAnchor(anchor, "parent", anchor)
	buttonHolder:addAnchor(AnchorBottom, "parent", AnchorBottom)

	for i = 1, #buttons do
		local button = messageBox:addButton(buttons[i].text, buttons[i].callback)

		if i == 1 then
			button:addAnchor(AnchorBottom, "parent", AnchorBottom)
			button:addAnchor(AnchorLeft, "parent", AnchorLeft)

			buttonsHeight = button:getHeight()
		else
			button:addAnchor(AnchorTop, "prev", AnchorTop)
			button:addAnchor(AnchorLeft, "prev", AnchorRight)
			button:setMarginLeft(20)
		end

		buttonsWidth = buttonsWidth + button:getWidth() + button:getMarginLeft()
	end

	buttonHolder:setWidth(buttonsWidth)
	buttonHolder:setHeight(buttonsHeight)

	if onEnterCallback then
		connect(messageBox, {
			onEnter = onEnterCallback
		})
	end

	if onEscapeCallback then
		connect(messageBox, {
			onEscape = onEscapeCallback
		})
	end

	function messageBox.onDestroy()
		if messageBox.focusPanel then
			messageBox.focusPanel:destroy()
		end

		modules.game_interface.focusMapPanel()
	end

	messageBox:setWidth(math.max(messageWidth, messageBox:getTextSize().width, buttonHolder:getWidth()) + messageBox:getPaddingLeft() + messageBox:getPaddingRight())
	messageBox:setHeight(math.max(150, messageHeight + buttonHolder:getHeight() + buttonHolder:getMarginTop()))

	return messageBox
end

function displayInfoBox(title, message, font, parent, requireFocus)
	local messageBox

	local function defaultCallback()
		messageBox:ok()
	end

	messageBox = UIMessageBox.display(title, message, {
		{
			text = "Ok",
			callback = defaultCallback
		}
	}, defaultCallback, defaultCallback, font, parent, requireFocus)

	return messageBox
end

function displayErrorBox(title, message, font, parent, requireFocus)
	local messageBox

	local function defaultCallback()
		messageBox:ok()
	end

	messageBox = UIMessageBox.display(title, message, {
		{
			text = "Ok",
			callback = defaultCallback
		}
	}, defaultCallback, defaultCallback, font, parent, requireFocus)

	return messageBox
end

function displayCancelBox(title, message, font, parent, requireFocus)
	local messageBox

	local function defaultCallback()
		messageBox:cancel()
	end

	messageBox = UIMessageBox.display(title, message, {
		{
			text = "Cancel",
			callback = defaultCallback
		}
	}, defaultCallback, defaultCallback, font, parent, requireFocus)

	return messageBox
end

function displayGeneralBox(title, message, buttons, onEnterCallback, onEscapeCallback, font, parent, requireFocus)
	return UIMessageBox.display(title, message, buttons, onEnterCallback, onEscapeCallback, font, parent, requireFocus)
end

function UIMessageBox:addButton(text, callback)
	local buttonHolder = self:getChildById("buttonHolder")
	local button = g_ui.createWidget("PopupWindowButton", buttonHolder)

	button:setText(text)
	connect(button, {
		onClick = callback
	})

	return button
end

function UIMessageBox:ok()
	signalcall(self.onOk, self)

	self.onOk = nil

	self:destroy()
end

function UIMessageBox:cancel()
	signalcall(self.onCancel, self)

	self.onCancel = nil

	self:destroy()
end

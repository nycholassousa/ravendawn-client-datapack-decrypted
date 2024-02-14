-- chunkname: @/modules/corelib/ui/uiinputbox.lua

if not UIWindow then
	dofile("uiwindow")
end

UIInputBox = extends(UIWindow, "UIInputBox")

function UIInputBox.create(title, okCallback, cancelCallback)
	local inputBox = UIInputBox.internalCreate()

	inputBox:setPadding(10)
	inputBox:setText(title)

	inputBox.inputs = {}

	function inputBox.onEnter()
		local results = {}

		for _, func in pairs(inputBox.inputs) do
			table.insert(results, func())
		end

		okCallback(unpack(results))
		inputBox:destroy()

		inputBox = nil

		return true
	end

	function inputBox.onEscape()
		if cancelCallback then
			cancelCallback()
		end

		inputBox:destroy()

		inputBox = nil
	end

	return inputBox
end

function UIInputBox:addLabel(text, highlightColor)
	local label = g_ui.createWidget("PopupWindowLabel", self)

	label:setTextWrap(true)
	label:setTextAutoResize(true)
	label:setPadding(10)
	label:addAnchor(AnchorLeft, "parent", AnchorLeft)
	label:addAnchor(AnchorRight, "parent", AnchorRight)
	label:setText(text)
	label:setTextAlign(AlignCenter)

	if highlightColor then
		highlightData = GetHighlightedText(text, "white")

		if #highlightData > 0 then
			label:setColoredText(highlightData)
		end
	end

	return label
end

function UIInputBox:addLineEdit(labelText, defaultText, maxLength, textHidden, highlightColor)
	if labelText then
		self:addLabel(labelText, highlightColor)
	end

	self.lineEdit = g_ui.createWidget("TextEdit", self)

	self.lineEdit:setImageSource("/images/ui/windows/chat/input_box")
	self.lineEdit:setImageBorder(5)
	self.lineEdit:setMarginLeft(10)
	self.lineEdit:setMarginRight(10)

	if defaultText then
		self.lineEdit:setText(defaultText)
	end

	if maxLength then
		self.lineEdit:setMaxLength(maxLength)
	end

	if textHidden then
		self.lineEdit:setTextHidden(textHidden)
	end

	table.insert(self.inputs, function()
		return self.lineEdit:getText()
	end)
	self.lineEdit:addAnchor(AnchorTop, "prev", AnchorBottom)
	self.lineEdit:addAnchor(AnchorLeft, "parent", AnchorLeft)
	self.lineEdit:addAnchor(AnchorRight, "parent", AnchorRight)
	self.lineEdit:setMarginTop(10)

	return self.lineEdit
end

function UIInputBox:addTextEdit(labelText, defaultText, maxLength, visibleLines, highlightColor)
	if labelText then
		self:addLabel(labelText, highlightColor)
	end

	local textEdit = g_ui.createWidget("TextEdit", self)

	if defaultText then
		textEdit:setText(defaultText)
	end

	if maxLength then
		textEdit:setMaxLength(maxLength)
	end

	visibleLines = visibleLines or 1

	textEdit:setHeight(textEdit:getHeight() * visibleLines)
	table.insert(self.inputs, function()
		return textEdit:getText()
	end)

	return textEdit
end

function UIInputBox:addCheckBox(text, checked)
	local checkBox = g_ui.createWidget("CheckBox", self)

	checkBox:setText(text)
	checkBox:setChecked(checked)
	table.insert(self.inputs, function()
		return checkBox:isChecked()
	end)

	return checkBox
end

function UIInputBox:addComboBox(labelText, ...)
	if labelText then
		self:addLabel(labelText)
	end

	local comboBox = g_ui.createWidget("InputBoxComboBox", self)
	local options = {
		...
	}

	for i = 1, #options do
		comboBox:addOption(options[i])
	end

	table.insert(self.inputs, function()
		return comboBox:getCurrentOption()
	end)

	return comboBox
end

function UIInputBox:addSpinBox(labelText, minimum, maximum, value, step)
	if labelText then
		self:addLabel(labelText)
	end

	local spinBox = g_ui.createWidget("InputBoxSpinBox", self)

	spinBox:setMinimum(minimum)
	spinBox:setMaximum(maximum)
	spinBox:setValue(value)
	spinBox:setStep(step)
	table.insert(self.inputs, function()
		return spinBox:getValue()
	end)

	return spinBox
end

function UIInputBox:display(okButtonText, cancelButtonText)
	okButtonText = okButtonText or tr("Ok")
	cancelButtonText = cancelButtonText or tr("Cancel")

	local buttonsWidget = g_ui.createWidget("PopupWindowButtonHolder", self)
	local okButton = g_ui.createWidget("PopupWindowButton", buttonsWidget)

	okButton:setText(okButtonText)

	okButton.onClick = self.onEnter

	okButton:addAnchor(AnchorRight, "next", AnchorLeft)
	okButton:setWidth(math.max(100, okButton:getTextSize().width))
	okButton:setMarginRight(10)

	local cancelButton = g_ui.createWidget("PopupWindowButton", buttonsWidget)

	cancelButton:setText(cancelButtonText)

	cancelButton.onClick = self.onEscape

	cancelButton:addAnchor(AnchorRight, "parent", AnchorRight)
	cancelButton:setWidth(math.max(100, cancelButton:getTextSize().width))
	cancelButton:setMarginRight(10)
	buttonsWidget:setHeight(okButton:getHeight())
	buttonsWidget:addAnchor(AnchorBottom, "parent", AnchorBottom)
	buttonsWidget:addAnchor(AnchorLeft, "parent", AnchorLeft)
	buttonsWidget:addAnchor(AnchorRight, "parent", AnchorRight)
	rootWidget:addChild(self)
	self:setStyle("PopupWindow")

	local height = self:getPaddingTop() + self:getPaddingBottom()

	for _, child in pairs(self:getChildren()) do
		height = height + child:getHeight() + child:getMarginTop() + child:getMarginBottom()
	end

	self:setHeight(height)
	self:setDraggable(false)
end

function displayTextInputBox(title, label, highlightColor, okCallback, cancelCallback)
	local inputBox = UIInputBox.create(title, okCallback, cancelCallback)

	inputBox:addLineEdit(label, nil, nil, false, highlightColor)
	inputBox:display()

	return inputBox
end

function displayHiddenTextInputBox(title, label, highlightColor, okCallback, cancelCallback)
	local inputBox = UIInputBox.create(title, okCallback, cancelCallback)

	inputBox:addLineEdit(label, nil, nil, true, highlightColor)
	inputBox:display()

	return inputBox
end

function displayNumberInputBox(title, label, okCallback, cancelCallback, min, max, value, step)
	local inputBox = UIInputBox.create(title, okCallback, cancelCallback)

	inputBox:addSpinBox(label, min, max, value, step)
	inputBox:display()
end

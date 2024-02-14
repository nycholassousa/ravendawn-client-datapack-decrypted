-- chunkname: @/modules/corelib/ui/uicheckbox.lua

UICheckBox = extends(UIWidget, "UICheckBox")

function UICheckBox.create()
	local checkbox = UICheckBox.internalCreate()

	checkbox:setFocusable(false)
	checkbox:setTextAlign(AlignLeft)

	checkbox.isTick = true

	return checkbox
end

function UICheckBox:onKeyPress()
	return false
end

function UICheckBox:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "tick-icon" then
			self.tickIcon = value
		elseif name == "cross-icon" then
			self.crossIcon = value
		elseif name == "is-tick" then
			self.isTick = tostring(value) == "true"
		elseif name == "read-only" then
			self.readOnly = tostring(value) == "true"
		end
	end
end

function UICheckBox:onClick()
	if self.readOnly then
		return
	end

	if self:getStyleName():lower() == "radiobox" then
		local parent = self:getParent()

		for k, v in pairs(parent:getChildren()) do
			if v ~= self and v:getStyleName() == "RadioBox" then
				v:setChecked(false)
			end
		end

		self:setChecked(true)
	else
		self:setChecked(not self:isChecked())
	end

	self.clickSound = true

	g_sound.onWidgetClick(self)
	self:updateIcons()
end

function UICheckBox:onGeometryChange()
	if self.tickIcon ~= nil and self:recursiveGetChildById("tickIcon") then
		self:recursiveGetChildById("tickIcon"):setImageSource(self.tickIcon)

		self.tickIcon = nil
	end

	if self.crossIcon ~= nil and self:recursiveGetChildById("crossIcon") then
		self:recursiveGetChildById("crossIcon"):setImageSource(self.crossIcon)

		self.crossIcon = nil
	end

	self:updateIcons()
end

function UICheckBox:setTick(val)
	self.isTick = val

	self:updateIcons()
end

function UICheckBox:setTickIcon(val)
	self:recursiveGetChildById("tickIcon"):setImageSource(val)
end

function UICheckBox:setCrossIcon(val)
	self:recursiveGetChildById("crossIcon"):setImageSource(val)
end

function UICheckBox:updateIcons()
	if self:recursiveGetChildById("tickIcon") then
		self:recursiveGetChildById("tickIcon"):setVisible(self.isTick and self:isChecked())
	end

	if self:recursiveGetChildById("crossIcon") then
		self:recursiveGetChildById("crossIcon"):setVisible(not self.isTick and self:isChecked())
	end
end

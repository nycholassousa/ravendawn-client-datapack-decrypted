-- chunkname: @/modules/corelib/ui/uibutton.lua

UIButton = extends(UIWidget, "UIButton")

function UIButton.create()
	local button = UIButton.internalCreate()

	button:setFocusable(false)

	button.hoverSound = true
	button.clickSound = true

	return button
end

function UIButton:onMouseRelease(pos, button)
	return self:isPressed()
end

function UIButton:onEnableChange(enabled)
	if not enabled then
		self.defaultColor = self.color

		self:changeColor("#7E828B")
		self:onHoverChange(false)
	else
		if not self.defaultColor then
			self.defaultColor = self.color
		end

		self:changeColor(self.defaultColor)
	end
end

function UIButton:onHoverChange(hovered)
	if not self.text then
		return
	end

	if hovered and not self:isEnabled() then
		return
	end

	self:setOn(not self.disabled and hovered)
	self.text:setOn(not self.disabled and hovered)
	self.icon:setOn(not self.disabled and hovered)

	if self.disabled or not hovered then
		self:setImageColor(self.color)
		self.text:setTextColor(self.color)
		self.icon:setImageColor(self.iconColor or self.color)
	end

	if self.tooltip then
		if hovered then
			if not g_mouse.isPressed() then
				g_tooltip.display(self)
			end
		else
			g_tooltip.hide()
		end
	end
end

function UIButton:changeColor(color)
	self:applyStyle({
		["&color"] = string.format("'%s'", color)
	})
end

function UIButton:changeIcon(path)
	self:applyStyle({
		["&iconPath"] = string.format("'%s'", path)
	})
end

function UIButton:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "text" then
			addEvent(function()
				if self.onTextChange then
					self:onTextChange(value)
				end
			end)
		end

		if name == "&color" then
			addEvent(function()
				self:setImageColor(self.color)

				if self.text then
					self.text:setTextColor(self.color)
				end

				if self.icon then
					self.icon:setImageColor(self.iconColor or self.color)
				end
			end)
		elseif name == "&iconPath" then
			addEvent(function()
				if self.icon then
					self.icon:setImageSource(value:gsub("'", ""))

					local textureWidth = self.icon:getImageTextureWidth()
					local textureHeight = self.icon:getImageTextureHeight()

					self.icon:setImageSize({
						width = textureWidth,
						height = textureHeight
					})
					self.icon:setSize({
						width = textureWidth,
						height = textureHeight
					})
				end
			end)
		elseif name == "&iconAlign" then
			addEvent(function()
				if self.icon then
					self.icon:breakAnchors()

					if value == "left" then
						self.icon:addAnchor(AnchorLeft, "parent", AnchorLeft)
					elseif value == "right" then
						self.icon:addAnchor(AnchorRight, "parent", AnchorRight)
					elseif value == "center" then
						self.icon:addAnchor(AnchorHorizontalCenter, "parent", AnchorHorizontalCenter)
					end

					self.icon:addAnchor(AnchorVerticalCenter, "parent", AnchorVerticalCenter)
				end
			end)
		elseif name == "&iconOffset" then
			addEvent(function()
				if self.icon then
					local offset = string.split(value:gsub("'", ""), " ")

					self.icon:setImageOffset({
						x = offset[1],
						y = offset[2]
					})
				end
			end)
		elseif name == "&textMarginLeft" then
			addEvent(function()
				if self.text then
					self.text:setTextOffset({
						x = tonumber(value),
						y = self.text:getTextOffset().y
					})
				end
			end)
		elseif name == "&textAlign" then
			addEvent(function()
				if self.text then
					if value == "left" then
						self.text:setTextAlign(AlignLeftCenter)
					elseif value == "right" then
						self.text:setTextAlign(AlignRightCenter)
					elseif value == "center" then
						self.text:setTextAlign(AlignCenter)
					end
				end
			end)
		elseif name == "&font" then
			addEvent(function()
				if self.text then
					self.text:setFont(value:gsub("'", ""))
				end
			end)
		elseif name == "&iconColor" then
			addEvent(function()
				self.iconColor = value

				if self.icon then
					self.icon:setImageColor(value)
				end
			end)
		end
	end
end

function UIButton:onTextChange(text)
	if not self.text then
		return
	end

	self.text:setText(tr(text), true)

	if type(self.onHoverChange) == "function" then
		self:onHoverChange(self:isHovered())
	elseif type(self.onHoverChange) == "table" then
		for _, callback in pairs(self.onHoverChange) do
			callback(self, self:isHovered())
		end
	end

	if self.resizeText then
		self:setWidth(self.text:getWidth() + self.minWidth)
	end
end

function UIButton:onLayoutUpdate()
	addEvent(function()
		self:setImageSize({
			width = self:getWidth() - 12,
			height = self:getHeight() - 12
		})
	end)
end

function UIButton:setDisabled(disabled)
	if disabled then
		self.defaultColor = self.color

		self:changeColor("#7E828B")
		self:onHoverChange(false)
	else
		if not self.defaultColor then
			self.defaultColor = self.color
		end

		self:changeColor(self.defaultColor)
	end

	self.disabled = disabled
end

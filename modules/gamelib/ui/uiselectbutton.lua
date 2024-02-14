-- chunkname: @/modules/gamelib/ui/uiselectbutton.lua

UISelectButton = extends(UIWidget, "UISelectButton")

function UISelectButton.create()
	local button = UISelectButton.internalCreate()

	button:setFocusable(false)

	return button
end

function UISelectButton:onMouseRelease(pos, button)
	return self:isPressed()
end

function UISelectButton:onStyleApply(name, node)
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
					self.icon:setImageColor(self.color)
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
		end
	end
end

function UISelectButton:onTextChange(text)
	if not self.text then
		return
	end

	self.text:setText(text, true)
	self.text:setTextColor(self.color)
	self:setImageColor(self.color)

	if self.resizeText then
		self:setWidth(self.text:getWidth() + self.minWidth)
	end
end

function UISelectButton:onLayoutUpdate()
	addEvent(function()
		self:setImageSize({
			width = self:getWidth(),
			height = self:getHeight()
		})
	end)
end

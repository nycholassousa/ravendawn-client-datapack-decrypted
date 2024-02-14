-- chunkname: @/modules/corelib/ui/uiwidget.lua

function UIWidget:setMargin(...)
	local params = {
		...
	}

	if #params == 1 then
		self:setMarginTop(params[1])
		self:setMarginRight(params[1])
		self:setMarginBottom(params[1])
		self:setMarginLeft(params[1])
	elseif #params == 2 then
		self:setMarginTop(params[1])
		self:setMarginRight(params[2])
		self:setMarginBottom(params[1])
		self:setMarginLeft(params[2])
	elseif #params == 4 then
		self:setMarginTop(params[1])
		self:setMarginRight(params[2])
		self:setMarginBottom(params[3])
		self:setMarginLeft(params[4])
	end
end

function UIWidget:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "composition-mode" then
			self:setCompositionMode(tostring(value):lower())
		elseif name == "animation-repeated" then
			self:setImageAnimationRepeated(value)
		elseif name == "circle" then
			self:setCircle(value == "true")
		elseif name == "dont-raise-on-expand" then
			self.dontRaiseOnExpand = value
		end
	end
end

function UIWidget:changeFonts(fontMap)
	if self.getFont then
		local fontFrom = self:getFont()
		local fontTo = fontMap[fontFrom]

		if fontTo then
			self:setFont(fontTo)

			if not self.originalFont then
				self.originalFont = fontFrom
			end
		end
	end

	for k, v in pairs(self:getChildren()) do
		v:changeFonts(fontMap)
	end
end

function UIWidget:clearChildren()
	for _, child in ipairs(self:getChildren()) do
		child:destroy()
	end
end

function UIWidget:hideAllChildren()
	for _, child in ipairs(self:getChildren()) do
		child:hide()
	end
end

function UIWidget:showAllChildren()
	for _, child in ipairs(self:getChildren()) do
		child:show()
	end
end

function UIWidget:resizeElements(mult, excludedClasses, excludedIds, replaceImages, force)
	force = force or type(excludedClasses) == "boolean" and excludedClasses == true and true or false

	if not force and not self:isVisible() then
		return
	end

	if force or self.sizeMultiplier ~= mult then
		self.sizeMultiplier = mult
		mult = mult or g_game and g_game.minimizedUI() and 0.75 or 1
		replaceImages = replaceImages or nil
		excludedClasses = type(excludedClasses) == "table" and excludedClasses or {}
		excludedIds = excludedIds or {}

		if table.contains(excludedIds, self:getId()) then
			return
		end

		if table.contains(excludedClasses, self:getStyle().__class) then
			return
		end

		if not self.originalSize then
			self.originalSize = {
				size = self:getSize(),
				imageSize = self:getImageSize(),
				iconSize = self:getIconSize(),
				margin = self:getMargin(),
				padding = self:getPadding(),
				textOffset = self.getTextOffset and self:getTextOffset(),
				imageSource = self.getImageSource and self:getImageSource(),
				imageOffset = self:getImageOffset(),
				iconOffset = self:getIconOffset()
			}
			self.resizeFactor = mult
		end

		if replaceImages and self.originalSize.imageSource then
			local imagePath

			if mult == 1 then
				imagePath = self.originalSize.imageSource
			else
				local dir, file = self.originalSize.imageSource:match("(.*/)(.*)")

				if dir and file then
					imagePath = dir .. "scaled_" .. math.floor(mult * 100) .. "/" .. file
				else
					imagePath = self.originalSize.imageSource
				end
			end

			if type(imagePath) == "string" and imagePath ~= "" then
				if not imagePath:find(".png") then
					imagePath = imagePath .. ".png"
				end

				if g_resources.fileExists(imagePath) then
					self:setImageSource(imagePath)
				end
			end
		end

		local value = {
			width = self.originalSize.size.width * mult,
			height = self.originalSize.size.height * mult
		}

		if not self.getTextAutoResize or not self:getTextAutoResize() or self:getSize() == value then
			self:setSize(value)
		end

		if self.originalSize.textOffset then
			self:setTextOffset({
				x = self.originalSize.textOffset.x * mult,
				y = self.originalSize.textOffset.y * mult
			})
		end

		value = {
			width = self.originalSize.imageSize.width * mult,
			height = self.originalSize.imageSize.height * mult
		}

		if self:getImageSize() ~= value then
			self:setImageSize(value)
		end

		value = {
			x = self.originalSize.imageOffset.x * mult,
			y = self.originalSize.imageOffset.y * mult
		}

		if self:getImageOffset() ~= value then
			self:setImageOffset(value)
		end

		value = {
			width = self.originalSize.iconSize.width * mult,
			height = self.originalSize.iconSize.height * mult
		}

		if self:getIconSize() ~= value then
			self:setIconSize(value)
		end

		value = {
			x = self.originalSize.iconOffset.x * mult,
			y = self.originalSize.iconOffset.y * mult
		}

		if self:getIconOffset() ~= value then
			self:setIconOffset(value)
		end

		self:setMarginFromVector({
			self.originalSize.margin[1] * mult,
			self.originalSize.margin[2] * mult,
			self.originalSize.margin[3] * mult,
			self.originalSize.margin[4] * mult
		})
		self:setPaddingFromVector({
			self.originalSize.padding[1] * mult,
			self.originalSize.padding[2] * mult,
			self.originalSize.padding[3] * mult,
			self.originalSize.padding[4] * mult
		})

		if self.getLayout then
			local layout = self:getLayout()

			if layout then
				if layout.getCellSize then
					local cellSize = layout:getCellSize()

					if cellSize.width > 0 then
						if not self.originalSize.cellSize then
							self.originalSize.cellSize = {
								width = cellSize.width,
								height = cellSize.height
							}
							self.originalSize.cellSpacing = layout:getCellSpacing().width
						end

						layout:setCellSize({
							width = self.originalSize.cellSize.width * mult,
							height = self.originalSize.cellSize.height * mult
						})
						layout:setCellSpacing(self.originalSize.cellSpacing * mult)
					end
				elseif layout.getSpacing then
					local spacing = layout:getSpacing()

					if not self.originalSize.spacing then
						self.originalSize.spacing = spacing
					end

					layout:setSpacing(self.originalSize.spacing * mult)
				end
			end
		end
	end

	if #self:getChildren() > 0 then
		for k, v in ipairs(self:getChildren()) do
			v:resizeElements(mult, excludedClasses, excludedIds, replaceImages, force)
		end
	end

	if self:getClassName() == "UIScrollBar" and self.onGeometryChange then
		addEvent(function()
			self:onGeometryChange()
		end)
	end
end

function UIWidget:setMarginRect(rect)
	self:setMarginTop(rect.top or 0)
	self:setMarginBottom(rect.bottom or 0)
	self:setMarginLeft(rect.left or 0)
	self:setMarginRight(rect.right or 0)
end

function UIWidget:shake(n, intensity, internal)
	if not internal and self.shakeEvent then
		return
	end

	local marginRect = self:getMarginRect()
	local marginRect, marginLeft = marginRect, self:getMarginLeft() or 0
	local intensity = intensity or 2
	local intensity, n = intensity, n or 10

	self:setMarginRect(marginRect)

	if n > 0 then
		local offset = n % 2 == 0 and intensity or -intensity

		self:setMarginLeft(marginLeft + offset)

		self.shakeEvent = scheduleEvent(function()
			self:shake(n - 1, intensity, true)
		end, 50)
	else
		self.shakeEvent = nil
	end
end

function UIWidget:setAnchoredPosition(hookedWidget, anchor, margin)
	local margin = margin or 0
	local anchor = anchor or AnchorNone
	local height, width = self:getHeight(), self:getWidth()
	local hHeight, hWidth = hookedWidget:getHeight(), hookedWidget:getWidth()

	function self.onGeometryChange()
		self:setAnchoredPosition(hookedWidget, anchor, margin)
	end

	local position = hookedWidget:getPosition()

	if anchor == AnchorLeft then
		position.x = position.x - margin - width
		position.y = position.y + hHeight / 2 - height / 2
	elseif anchor == AnchorRight then
		position.x = position.x + hWidth + margin
		position.y = position.y + hHeight / 2 - height / 2
	elseif anchor == AnchorTop then
		position.y = position.y - hHeight - margin
		position.x = position.x + hWidth / 2 - width / 2
	elseif anchor == AnchorBottom then
		position.y = position.y + hHeight + margin
		position.x = position.x + hWidth / 2 - width / 2
	elseif anchor == AnchorVerticalCenter then
		position.x = position.x + hWidth / 2 - width / 2
		position.y = position.y + hHeight / 2 - height / 2
	end

	self:setPosition(position)
end

function UIWidget:clearFocus()
	self:setFocusable(false)
	self:setFocusable(true)
end

function UIWidget:isItem()
	return self:getClassName() == "UIItem"
end

function UIWidget:setTradepack(pack)
	if not pack or not pack.clientId then
		return
	end

	local item = Item.create(pack.clientId)

	item.tooltipInfo = pack

	if pack.name then
		item:setName(pack.name)
	end

	if pack.quality or pack.subName then
		item:setQualityName((not pack.subName and QualityNames[pack.quality] or pack.subName or "Basic"):titleCase())
	end

	if pack.quality then
		item:setQuality(pack.quality)
	end

	if pack.primed then
		item:setQuality(ITEM_GRADE_LEGENDARY)
	end

	self:setItem(item)
	self:setId(tostring(pack.uid))
end

function UIWidget:setMount(mount)
	local item = Item.create(0)

	item.tooltipInfo = mount

	item:setAdditionalAttributes(json.encode({
		mount = mount
	}))
	item:setName("Moa")
	self:setItem(item)
end

function UIWidget:expand(time, callback)
	if self.expandEvent then
		g_effects.cancelFade(self)
		removeEvent(self.expandEvent)
	end

	if not self.expandWidth then
		self.expandWidth = self:getWidth()

		self:setWidth(0)
		self:setVisible(true)

		if not self.dontRaiseOnExpand then
			self:raise()
		end

		g_effects.fadeIn(self, time and time / 2 or 500)
	end

	local interval = 20

	self.expandEvent = cycleEvent(function()
		local width = self:getWidth()
		local singleStep = (time or 1000) / interval
		local newWidth = width + singleStep

		if newWidth >= self.expandWidth then
			newWidth = self.expandWidth

			removeEvent(self.expandEvent)

			self.expandEvent = nil
			self.expandWidth = nil

			if callback then
				callback()
			end
		end

		self:setWidth(newWidth)
	end, interval)
end

function UIWidget:collapse(time, callback)
	if self.expandEvent then
		g_effects.cancelFade(self)
		removeEvent(self.expandEvent)
	end

	if not self.expandWidth then
		self.expandWidth = self:getWidth()

		self:setWidth(self.expandWidth)
		self:setVisible(true)

		if not self.dontRaiseOnExpand then
			self:raise()
		end

		g_effects.fadeOut(self, time and time / 2 or 500, nil, nil, callback)
	end

	local interval = 20

	self.expandEvent = cycleEvent(function()
		local width = self:getWidth()
		local singleStep = (time or 1000) / interval
		local newWidth = width - singleStep

		if newWidth <= 0 then
			newWidth = 0

			removeEvent(self.expandEvent)

			self.expandEvent = nil

			self:setVisible(false)
			self:setWidth(self.expandWidth)

			self.expandWidth = nil

			if callback then
				callback()
			end

			return
		end

		self:setWidth(newWidth)
	end, interval)
end

function UIWidget:isCollapsing()
	return self.expandEvent
end

function UIWidget:grayOut(state)
	for _, child in pairs(self:recursiveGetChildren()) do
		if not child._oldColor then
			child._oldColor = child:getImageColor()
		end

		child:setImageColor(state and "gray" or child._oldColor)
	end
end

function UIWidget:blockInputPanel(state, widgetAbove)
	if not state then
		if self.grayOutPanel then
			self.grayOutPanel:destroy()

			self.grayOutPanel = nil
		end

		return
	end

	self.grayOutPanel = self:getChildById("grayOutPanel") or g_ui.createWidget("UIWidget", self)

	self.grayOutPanel:addAnchor(AnchorLeft, "parent", AnchorLeft)
	self.grayOutPanel:addAnchor(AnchorRight, "parent", AnchorRight)
	self.grayOutPanel:addAnchor(AnchorTop, "parent", AnchorTop)
	self.grayOutPanel:addAnchor(AnchorBottom, "parent", AnchorBottom)
	self.grayOutPanel:setId("grayOutPanel")
	self.grayOutPanel:setBackgroundColor("#000000")
	self.grayOutPanel:setOpacity(0.5)
	self.grayOutPanel:setVisible(true)
	self.grayOutPanel:raise()

	if widgetAbove then
		widgetAbove:raise()
	end
end

function UIWidget:getTopParent(upToWidget)
	local parent = self:getParent()

	if not parent then
		return self
	end

	if parent == upToWidget then
		return self
	end

	return parent:getTopParent(upToWidget)
end

function UIWidget:getTotalHeight()
	local height = self:getPaddingTop() + self:getPaddingBottom()
	local spacing = 0
	local layout = self:getLayout()

	if layout and layout:isUIVerticalLayout() then
		spacing = layout:getSpacing()
	end

	for _, child in ipairs(self:getChildren()) do
		height = height + child:getHeight() + child:getMarginTop() + child:getMarginBottom() + spacing
	end

	return height
end

function UIWidget:setParentWidth(width)
	local width = width or 0
	local parentWidth = self:getParent():getWidth()
	local padding = (parentWidth - width) / 2

	self:setPaddingLeft(padding)
	self:setPaddingRight(padding)
end

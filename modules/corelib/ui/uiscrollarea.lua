-- chunkname: @/modules/corelib/ui/uiscrollarea.lua

UIScrollArea = extends(UIWidget, "UIScrollArea")

function UIScrollArea.create()
	local scrollarea = UIScrollArea.internalCreate()

	scrollarea:setClipping(true)

	scrollarea.inverted = false
	scrollarea.alwaysScrollMaximum = false
	scrollarea.alwaysScrollMinimum = false
	scrollarea.autoHideScrollBar = true
	scrollarea.alwaysHideScrollBar = false

	return scrollarea
end

function UIScrollArea:onStyleApply(styleName, styleNode)
	for name, value in pairs(styleNode) do
		if name == "vertical-scrollbar" then
			addEvent(function()
				local parent = self:getParent()

				if parent then
					self:setVerticalScrollBar(parent:getChildById(value))
				end
			end)
		elseif name == "horizontal-scrollbar" then
			addEvent(function()
				local parent = self:getParent()

				if parent then
					self:setHorizontalScrollBar(self:getParent():getChildById(value))
				end
			end)
		elseif name == "inverted-scroll" then
			self:setInverted(value)
		elseif name == "always-scroll-maximum" then
			self:setAlwaysScrollMaximum(value)
		elseif name == "always-scroll-minimum" then
			self:setAlwaysScrollMinimum(value)
		elseif name == "auto-hide-scrollbar" then
			self.autoHideScrollBar = value
		elseif name == "always-hide-scrollbar" then
			self.alwaysHideScrollBar = value
		end
	end
end

function UIScrollArea:updateScrollBars()
	local scrollWidth = math.max(self:getChildrenRect().width - self:getPaddingRect().width, 0)
	local scrollHeight = math.max(self:getChildrenRect().height - self:getPaddingRect().height, 0)
	local scrollbar = self.verticalScrollBar

	if scrollbar then
		if self.inverted then
			scrollbar:setMinimum(-scrollHeight)
			scrollbar:setMaximum(0)
		else
			scrollbar:setMinimum(0)
			scrollbar:setMaximum(scrollHeight)
		end

		if self.alwaysHideScrollBar then
			scrollbar:hide()
		elseif scrollHeight == 0 and self.autoHideScrollBar or not self:isVisible() then
			scrollbar:hide()
		else
			scrollbar:show()
		end
	end

	local scrollbar = self.horizontalScrollBar

	if scrollbar then
		if self.inverted then
			scrollbar:setMinimum(-scrollWidth)
			scrollbar:setMaximum(0)
		else
			scrollbar:setMinimum(0)
			scrollbar:setMaximum(scrollWidth)
		end

		if scrollWidth == 0 and self.autoHideScrollBar or not self:isVisible() then
			scrollbar:hide()
		else
			scrollbar:show()
		end
	end

	if self.lastScrollWidth ~= scrollWidth then
		self:onScrollWidthChange()
	end

	if self.lastScrollHeight ~= scrollHeight then
		self:onScrollHeightChange()
	end

	self.lastScrollWidth = scrollWidth
	self.lastScrollHeight = scrollHeight
end

function UIScrollArea:setVerticalScrollBar(scrollbar)
	self.verticalScrollBar = scrollbar

	connect(self.verticalScrollBar, "onValueChange", function(scrollbar, value)
		local virtualOffset = self:getVirtualOffset()

		virtualOffset.y = value

		self:setVirtualOffset(virtualOffset)
		signalcall(self.onScrollChange, self, virtualOffset)
	end)
	self:updateScrollBars()
end

function UIScrollArea:setHorizontalScrollBar(scrollbar)
	self.horizontalScrollBar = scrollbar

	connect(self.horizontalScrollBar, "onValueChange", function(scrollbar, value)
		local virtualOffset = self:getVirtualOffset()

		virtualOffset.x = value

		self:setVirtualOffset(virtualOffset)
		signalcall(self.onScrollChange, self, virtualOffset)
	end)
	self:updateScrollBars()
end

function UIScrollArea:setInverted(inverted)
	self.inverted = inverted
end

function UIScrollArea:setAlwaysScrollMaximum(value)
	self.alwaysScrollMaximum = value
end

function UIScrollArea:setAlwaysScrollMinimum(value)
	self.alwaysScrollMinimum = value
end

function UIScrollArea:onLayoutUpdate()
	self:updateScrollBars()
end

function UIScrollArea:onMouseWheel(mousePos, mouseWheel)
	if self.verticalScrollBar then
		if not self.verticalScrollBar:isOn() then
			return false
		end

		if mouseWheel == MouseWheelUp then
			local minimum = self.verticalScrollBar:getMinimum()

			if minimum >= self.verticalScrollBar:getValue() then
				return false
			end

			self.verticalScrollBar:decrement()
		else
			local maximum = self.verticalScrollBar:getMaximum()

			if maximum <= self.verticalScrollBar:getValue() then
				return false
			end

			self.verticalScrollBar:increment()
		end
	elseif self.horizontalScrollBar then
		if not self.horizontalScrollBar:isOn() then
			return false
		end

		if mouseWheel == MouseWheelUp then
			local maximum = self.horizontalScrollBar:getMaximum()

			if maximum <= self.horizontalScrollBar:getValue() then
				return false
			end

			self.horizontalScrollBar:increment()
		else
			local minimum = self.horizontalScrollBar:getMinimum()

			if minimum >= self.horizontalScrollBar:getValue() then
				return false
			end

			self.horizontalScrollBar:decrement()
		end
	end

	return true
end

function UIScrollArea:ensureChildVisible(child)
	if child then
		local paddingRect = self:getPaddingRect()

		if self.verticalScrollBar then
			local deltaY = paddingRect.y - child:getY()

			if deltaY > 0 then
				self.verticalScrollBar:decrement(deltaY)
			end

			deltaY = child:getY() + child:getHeight() - (paddingRect.y + paddingRect.height)

			if deltaY > 0 then
				self.verticalScrollBar:increment(deltaY)
			end
		elseif self.horizontalScrollBar then
			local deltaX = paddingRect.x - child:getX()

			if deltaX > 0 then
				self.horizontalScrollBar:decrement(deltaX)
			end

			deltaX = child:getX() + child:getWidth() - (paddingRect.x + paddingRect.width)

			if deltaX > 0 then
				self.horizontalScrollBar:increment(deltaX)
			end
		end
	end
end

function UIScrollArea:onChildFocusChange(focusedChild, oldFocused, reason)
	return
end

function UIScrollArea:onScrollWidthChange()
	if self.alwaysScrollMaximum and self.horizontalScrollBar then
		self.horizontalScrollBar:setValue(self.horizontalScrollBar:getMaximum())
	elseif self.alwaysScrollMinimum and self.horizontalScrollBar then
		self.horizontalScrollBar:setValue(self.horizontalScrollBar:getMinimum())
	end
end

function UIScrollArea:onScrollHeightChange()
	if self.alwaysScrollMaximum and self.verticalScrollBar then
		self.verticalScrollBar:setValue(self.verticalScrollBar:getMaximum())
	elseif self.alwaysScrollMinimum and self.verticalScrollBar then
		self.verticalScrollBar:setValue(self.verticalScrollBar:getMinimum())
	end
end

-- chunkname: @/modules/corelib/ui/uiattachedwindow.lua

UIAttachedWindow = extends(UIWidget, "UIAttachedWindow")

function UIAttachedWindow.create()
	local window = UIAttachedWindow.internalCreate()

	window:setTextAlign(AlignTopCenter)
	window:setDraggable(true)
	window:setAutoFocusPolicy(AutoFocusFirst)

	window.side = "right"
	window.marginTop = 0
	window.marginLeft = 0

	return window
end

function UIAttachedWindow:setAttachedTo(parent)
	self.parent = parent

	if parent then
		connect(parent, {
			onPositionChange = function()
				if self.followParent then
					self:followParent()
				end
			end,
			onDestroy = function()
				self:destroy()
			end,
			onVisibilityChange = function(widget, visible)
				if not visible then
					self:setVisible(visible)
				end
			end,
			onRaise = function()
				self:raise()
			end
		})

		local function onUIResize()
			self:followParent()
		end

		connect(rootWidget, {
			onUIResize = onUIResize
		})
		connect(self, {
			onDestroy = function()
				disconnect(rootWidget, {
					onUIResize = onUIResize
				})
			end
		})
		self:followParent()
	end
end

function UIAttachedWindow:onStyleApply(name, node)
	for name, value in pairs(node) do
		if name == "side" then
			self.side = value

			if value == "left" then
				addEvent(function()
					self.top_panel.close_button:setStyle("MainWindowCloseButtonLeft")

					function self.top_panel.close_button.onClick()
						if self.onEscape then
							self.onEscape(self)
						else
							self:hide()
						end
					end
				end)
			elseif value == "right" then
				addEvent(function()
					self.top_panel.close_button:setStyle("MainWindowCloseButtonRight")

					function self.top_panel.close_button.onClick()
						if self.onEscape then
							self.onEscape(self)
						else
							self:hide()
						end
					end
				end)
			elseif value == "top" then
				addEvent(function()
					self.top_panel.close_button:setStyle("MainWindowCloseButtonRight")

					function self.top_panel.close_button.onClick()
						if self.onEscape then
							self.onEscape(self)
						else
							self:hide()
						end
					end
				end)
			end
		elseif name == "margin-top" then
			self.marginTop = tonumber(value)
		elseif name == "margin-left" then
			self.marginLeft = tonumber(value)
		elseif name == "title" then
			addEvent(function()
				self:setTitle(value)
			end)
		end
	end
end

function UIAttachedWindow:setTitle(title)
	self.top_panel.title:setText(title)
end

function UIAttachedWindow:followParent()
	if not self:isVisible() then
		return
	end

	local screen = g_window.getSize()
	local mult = math.min(screen.height / 1080, screen.width / 1920)

	screen = {
		width = screen.width / mult,
		height = screen.height / mult
	}

	if self.side == "right" then
		if self.parent:getX() + self.parent:getWidth() + self:getWidth() > screen.width then
			self.parent:setPosition({
				x = screen.width - self.parent:getWidth() - self:getWidth(),
				y = self.parent:getY()
			})
		end

		if self.parent:getY() + self.parent:getHeight() > screen.height then
			self.parent:setPosition({
				x = self.parent:getX(),
				y = screen.height - self.parent:getHeight()
			})
		end

		addEvent(function()
			self:setPosition({
				x = self.parent:getX() + self.parent:getWidth(),
				y = self.parent:getY() + self.marginTop
			})
		end)
	elseif self.side == "left" then
		if self.parent:getX() - self:getWidth() < 0 then
			self.parent:setPosition({
				x = self:getWidth(),
				y = self.parent:getY()
			})
		end

		if self.parent:getY() + self.parent:getHeight() > screen.height then
			self.parent:setPosition({
				x = self.parent:getX(),
				y = screen.height - self.parent:getHeight()
			})
		end

		addEvent(function()
			self:setPosition({
				x = self.parent:getX() - self:getWidth(),
				y = self.parent:getY() + self.marginTop
			})
		end)
	elseif self.side == "top" then
		if self.parent:getY() - self:getHeight() < 0 then
			self.parent:setPosition({
				x = self.parent:getX(),
				y = self:getHeight()
			})
		end

		if self.parent:getX() + self.parent:getWidth() > screen.width then
			self.parent:setPosition({
				x = screen.width - self.parent:getWidth(),
				y = self.parent:getY()
			})
		end

		addEvent(function()
			self:setPosition({
				x = self.parent:getX() + self.marginLeft,
				y = self.parent:getY() - self:getHeight()
			})
		end)
	end
end

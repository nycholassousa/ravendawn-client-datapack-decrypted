-- chunkname: @/modules/client_demoscreen/demo_screen.lua

DemoScreen = {}

function DemoScreen.init()
	g_ui.importStyle("demo_screen")

	DemoScreen.window = g_ui.createWidget("DemoScreen", g_ui.getRootWidget())

	if not DEMO_VERSION then
		return
	end

	EnterGame.hide()
	DemoScreen.window:show()

	function DemoScreen.window.onGeometryChange()
		DemoScreen.resizeToResolution()
	end
end

function DemoScreen.terminate()
	DemoScreen.window:destroy()

	DemoScreen = nil
end

function DemoScreen:hide()
	self.window:hide()
end

function DemoScreen:show()
	self.window:show()
	resizeToResolution()
end

function DemoScreen:resizeToResolution()
	if g_game.isOnline() then
		return
	end

	local width = g_window.getWidth()
	local multiplier = math.max(0.55, math.min(g_window.getHeight() > 1080 and 1.33 or 1, width / 1920))

	if DemoScreen.window:isVisible() then
		DemoScreen.window:resizeElements(multiplier)
	end
end

function DemoScreen:onSettingsHoverChange(widget, isHovered)
	if isHovered then
		if not self.settingsEvent then
			self.settingsEvent = cycleEvent(function()
				widget:setRotation(widget:getRotation() + 36)
			end, 100)
			widget.tooltip = "Settings"

			g_tooltip.display(widget)
		end
	elseif self.settingsEvent then
		removeEvent(self.settingsEvent)

		self.settingsEvent = nil

		widget:setRotation(0)
		g_tooltip.hide()
	end
end

function DemoScreen:openSettings()
	for _, child in ipairs(self.window:getChildren()) do
		child:hide()
	end

	settingsPanel = self.window:recursiveGetChildById("settingsPanel")

	settingsPanel:addChild(modules.game_settings.window)

	local child = settingsPanel:recursiveGetChildById("settingsPanel")

	child:breakAnchors()
	child:addAnchor(AnchorLeft, "parent", AnchorLeft)
	child:addAnchor(AnchorRight, "parent", AnchorRight)
	child:addAnchor(AnchorTop, "parent", AnchorTop)
	child:addAnchor(AnchorBottom, "parent", AnchorBottom)
	child:setVisible(true)
	settingsPanel:setVisible(true)
	modules.game_settings.showEscapeButton(true, true)
	modules.game_settings.resizeToResolution()
	g_keyboard.bindKeyPress("Escape", function()
		DemoScreen:closeSettings()
	end)
	child:setMarginTop(0)
end

function DemoScreen:closeSettings()
	for _, child in ipairs(self.window:getChildren()) do
		child:show()
	end

	local settings = settingsPanel:recursiveGetChildById("settingsPanel")

	if settings then
		settings:breakAnchors()
		Menu.getContent():addChild(settings)
		settings:addAnchor(AnchorLeft, "parent", AnchorLeft)
		settings:addAnchor(AnchorRight, "parent", AnchorRight)
		settings:addAnchor(AnchorTop, "parent", AnchorTop)
		settings:addAnchor(AnchorBottom, "parent", AnchorBottom)
		Menu.updateWidget("settings", settings)
		modules.game_settings.showEscapeButton(false)
		g_keyboard.unbindKeyPress("Escape", function()
			DemoScreen:closeSettings()
		end)
		settings:hide()
	end

	self:resizeToResolution()
end

function DemoScreen:doLogin()
	G.account, G.password = "1", "1"

	EnterGame.doLogin(true)
end

﻿-- chunkname: @/modules/corelib/ui/uimovabletabbar.lua

UIMoveableTabBar = extends(UIWidget, "UIMoveableTabBar")

local function onTabClick(tab)
	tab.tabBar:selectTab(tab)
end

local function updateMargins(tabBar)
	if #tabBar.tabs == 0 then
		return
	end

	local currentMargin = 0

	for i = 1, #tabBar.tabs do
		tabBar.tabs[i]:setMarginLeft(currentMargin)

		currentMargin = currentMargin + tabBar.tabSpacing + tabBar.tabs[i]:getWidth()
	end
end

local function updateNavigation(tabBar)
	if tabBar.prevNavigation then
		if #tabBar.preTabs > 0 or table.find(tabBar.tabs, tabBar.currentTab) ~= 1 then
			tabBar.prevNavigation:enable()
		else
			tabBar.prevNavigation:disable()
		end
	end

	if tabBar.nextNavigation then
		if #tabBar.postTabs > 0 or table.find(tabBar.tabs, tabBar.currentTab) ~= #tabBar.tabs then
			tabBar.nextNavigation:enable()
		else
			tabBar.nextNavigation:disable()
		end
	end
end

local function updateIndexes(tabBar, tab, xoff)
	local tabs = tabBar.tabs
	local currentMargin = 0
	local prevIndex = table.find(tabs, tab)
	local newIndex = prevIndex
	local xmid = xoff + tab:getWidth() / 2

	for i = 1, #tabs do
		local nextTab = tabs[i]

		if xmid >= currentMargin + nextTab:getWidth() / 2 then
			newIndex = table.find(tabs, nextTab)
		end

		currentMargin = currentMargin + tabBar.tabSpacing * (i - 1) + tabBar.tabs[i]:getWidth()
	end

	if newIndex ~= prevIndex then
		table.remove(tabs, table.find(tabs, tab))
		table.insert(tabs, newIndex, tab)
	end

	updateNavigation(tabBar)
end

local function getMaxMargin(tabBar, tab)
	if #tabBar.tabs == 0 then
		return 0
	end

	local maxMargin = 0

	for i = 1, #tabBar.tabs do
		if tabBar.tabs[i] ~= tab then
			maxMargin = maxMargin + tabBar.tabs[i]:getWidth()
		end
	end

	return maxMargin + tabBar.tabSpacing * (#tabBar.tabs - 1)
end

local function updateTabs(tabBar)
	if #tabBar.postTabs > 0 then
		local i = 1

		while i <= #tabBar.postTabs do
			local tab = tabBar.postTabs[i]

			if getMaxMargin(tabBar) + tab:getWidth() > tabBar:getWidth() then
				break
			end

			table.remove(tabBar.postTabs, i)
			table.insert(tabBar.tabs, tab)
			tab:setVisible(true)
		end
	end

	if #tabBar.preTabs > 0 then
		for i = #tabBar.preTabs, 1, -1 do
			local tab = tabBar.preTabs[i]

			if getMaxMargin(tabBar) + tab:getWidth() > tabBar:getWidth() then
				break
			end

			table.remove(tabBar.preTabs, i)
			table.insert(tabBar.tabs, 1, tab)
			tab:setVisible(true)
		end
	end

	updateNavigation(tabBar)
	updateMargins(tabBar)

	if not tabBar.currentTab and #tabBar.tabs > 0 then
		tabBar:selectTab(tabBar.tabs[1])
	end
end

local function hideTabs(tabBar, fromBack, toArray, width)
	while #tabBar.tabs > 0 and getMaxMargin(tabBar) + width > tabBar:getWidth() do
		local index = fromBack and #tabBar.tabs or 1
		local tab = tabBar.tabs[index]

		table.remove(tabBar.tabs, index)

		if fromBack then
			table.insert(toArray, 1, tab)
		else
			table.insert(toArray, tab)
		end

		if tabBar.currentTab == tab then
			if #tabBar.tabs > 0 then
				tabBar:selectTab(tabBar.tabs[#tabBar.tabs])
			else
				tabBar.currentTab:setChecked(false)

				tabBar.currentTab = nil
			end
		end

		tab:setVisible(false)
	end
end

local function showPreTab(tabBar)
	if #tabBar.preTabs == 0 then
		return nil
	end

	local tmpTab = tabBar.preTabs[#tabBar.preTabs]

	hideTabs(tabBar, true, tabBar.postTabs, tmpTab:getWidth())
	table.remove(tabBar.preTabs, #tabBar.preTabs)
	table.insert(tabBar.tabs, 1, tmpTab)
	tmpTab:setVisible(true)

	return tmpTab
end

local function showPostTab(tabBar)
	if #tabBar.postTabs == 0 then
		return nil
	end

	local tmpTab = tabBar.postTabs[1]

	hideTabs(tabBar, false, tabBar.preTabs, tmpTab:getWidth())
	table.remove(tabBar.postTabs, 1)
	table.insert(tabBar.tabs, tmpTab)
	tmpTab:setVisible(true)

	return tmpTab
end

local function onTabMousePress(tab, mousePos, mouseButton)
	if mouseButton == MouseRightButton then
		if tab.menuCallback then
			tab.menuCallback(tab, mousePos, mouseButton)
		end

		return true
	end
end

local function onTabDragEnter(tab, mousePos)
	tab:raise()

	tab.hotSpot = mousePos.x - tab:getMarginLeft()
	tab.tabBar.selected = tab

	return true
end

local function onTabDragLeave(tab)
	updateMargins(tab.tabBar)

	tab.tabBar.selected = nil

	return true
end

local function onTabDragMove(tab, mousePos, mouseMoved)
	if tab == tab.tabBar.selected then
		local xoff = mousePos.x - tab.hotSpot

		updateIndexes(tab.tabBar, tab, xoff)
		updateIndexes(tab.tabBar, tab, xoff)
		updateMargins(tab.tabBar)

		xoff = math.max(xoff, 0)
		xoff = math.min(xoff, getMaxMargin(tab.tabBar, tab))

		tab:setMarginLeft(xoff)
	end
end

local function tabBlink(tab, steps, maxSteps, interval)
	local steps = steps or 0
	local maxSteps = maxSteps or 4
	local interval = interval or 500

	tab:setOn(not tab:isOn())
	removeEvent(tab.blinkEvent)

	if steps < maxSteps or maxSteps == 0 then
		tab.blinkEvent = scheduleEvent(function()
			tabBlink(tab, steps + 1, maxSteps, interval)
		end, interval)
	else
		tab:setOn(false)

		tab.blinkEvent = nil
	end
end

function UIMoveableTabBar.create()
	local tabbar = UIMoveableTabBar.internalCreate()

	tabbar:setFocusable(false)

	tabbar.tabs = {}
	tabbar.selected = nil
	tabbar.tabSpacing = 0
	tabbar.tabsMoveable = false
	tabbar.preTabs = {}
	tabbar.postTabs = {}
	tabbar.prevNavigation = nil
	tabbar.nextNavigation = nil

	function tabbar.onGeometryChange()
		hideTabs(tabbar, true, tabbar.postTabs, 0)
		updateTabs(tabbar)
	end

	return tabbar
end

function UIMoveableTabBar:onDestroy()
	if self.prevNavigation then
		self.prevNavigation:disable()
	end

	if self.nextNavigation then
		self.nextNavigation:disable()
	end

	self.nextNavigation = nil
	self.prevNavigation = nil
end

function UIMoveableTabBar:setContentWidget(widget)
	self.contentWidget = widget

	if #self.tabs > 0 then
		self.contentWidget:addChild(self.tabs[1].tabPanel)
	end
end

function UIMoveableTabBar:setTabSpacing(tabSpacing)
	self.tabSpacing = tabSpacing

	updateMargins(self)
end

function UIMoveableTabBar:addTab(text, panel, menuCallback, closeButtonStyle, notificationButtonStyle)
	if panel == nil then
		panel = g_ui.createWidget(self:getStyleName() .. "Panel")

		panel:setId("tabPanel")
	end

	local tab = g_ui.createWidget(self:getStyleName() .. "Button", self)

	panel.isTab = true
	tab.tabPanel = panel
	tab.tabBar = self

	tab:setId("tab")
	tab:setDraggable(self.tabsMoveable)
	tab:setText(text)
	tab:setWidth(tab:getTextSize().width + tab:getPaddingLeft() + tab:getMarginRight())

	tab.menuCallback = menuCallback or nil
	tab.onClick = onTabClick
	tab.onMousePress = onTabMousePress
	tab.onDragEnter = onTabDragEnter
	tab.onDragLeave = onTabDragLeave
	tab.onDragMove = onTabDragMove

	function tab.onDestroy()
		tab.tabPanel:destroy()

		if tab.closeButton then
			tab.closeButton:destroy()
		end
	end

	if #self.tabs == 0 then
		self:selectTab(tab)
		tab:setMarginLeft(0)
		table.insert(self.tabs, tab)
	else
		local newMargin = self.tabSpacing * #self.tabs

		for i = 1, #self.tabs do
			newMargin = newMargin + self.tabs[i]:getWidth()
		end

		tab:setMarginLeft(newMargin)
		hideTabs(self, true, self.postTabs, tab:getWidth())
		table.insert(self.tabs, tab)

		if #self.tabs == 1 then
			self:selectTab(tab)
		end

		updateMargins(self)
	end

	updateNavigation(self)

	if closeButtonStyle then
		local closeButton = g_ui.createWidget(closeButtonStyle, tab)

		closeButton:addAnchor(AnchorRight, "parent", AnchorRight)
		closeButton:addAnchor(AnchorVerticalCenter, "parent", AnchorVerticalCenter)

		function closeButton.onClick()
			self:removeTab(tab)
		end

		closeButton:hide()

		tab.closeButton = closeButton

		tab:setWidth(tab:getWidth() + closeButton:getWidth())

		closeButton.notificationButtonStyle = notificationButtonStyle
		closeButton.originalStyle = closeButtonStyle

		if notificationButtonStyle then
			function tab.onVisibilityChange(widget, visible)
				closeButton:setVisible(visible)
			end
		end
	end

	signalcall(self.onAddTab, self, tab)

	return tab
end

function UIMoveableTabBar:moveTab(tab, units)
	local index = table.find(self.tabs, tab)

	if index == nil then
		return
	end

	local focus = false

	if self.currentTab == tab then
		self:selectPrevTab()

		focus = true
	end

	table.remove(self.tabs, index)

	local newIndex = math.min(#self.tabs + 1, math.max(index + units, 1))

	table.insert(self.tabs, newIndex, tab)

	if focus then
		self:selectTab(tab)
	end

	updateMargins(self)

	return newIndex
end

function UIMoveableTabBar:onStyleApply(styleName, styleNode)
	if styleNode.movable then
		self.tabsMoveable = styleNode.movable
	end

	if styleNode["tab-spacing"] then
		self:setTabSpacing(styleNode["tab-spacing"])
	end
end

function UIMoveableTabBar:removeTab(tab)
	local tabTables = {
		self.tabs,
		self.preTabs,
		self.postTabs
	}
	local index, tabTable

	for i = 1, #tabTables do
		index = table.find(tabTables[i], tab)

		if index ~= nil then
			tabTable = tabTables[i]

			break
		end
	end

	if tabTable == nil then
		return
	end

	table.remove(tabTable, index)

	if self.currentTab == tab then
		if tab.blinkEvent then
			removeEvent(tab.blinkEvent)
		end

		tab:destroy()
	end

	updateTabs(self)

	if #self.tabs > 0 then
		self:selectTab(self.tabs[1])
	end

	signalcall(self.onRemoveTab, self, tab)
end

function UIMoveableTabBar:getTab(text)
	for k, tab in pairs(self.tabs) do
		if tab:getText():lower() == text:lower() then
			return tab
		end
	end

	for k, tab in pairs(self.preTabs) do
		if tab:getText():lower() == text:lower() then
			return tab
		end
	end

	for k, tab in pairs(self.postTabs) do
		if tab:getText():lower() == text:lower() then
			return tab
		end
	end
end

function UIMoveableTabBar:selectTab(tab, dontSignal)
	if self.contentWidget then
		local selectedWidget = self.contentWidget:getLastChild()

		if selectedWidget and selectedWidget.isTab then
			self.contentWidget:removeChild(selectedWidget)
		end

		self.contentWidget:addChild(tab.tabPanel)
		tab.tabPanel:fill("parent")
	end

	if self.currentTab then
		self.currentTab:setChecked(false)

		if self.currentTab.closeButton then
			local notificationButtonStyle = self.currentTab.closeButton.notificationButtonStyle

			if notificationButtonStyle then
				self.currentTab.closeButton:setStyle(notificationButtonStyle)
				self.currentTab.closeButton:raise()
			else
				self.currentTab.closeButton:hide()
			end
		end
	end

	if not dontSignal then
		signalcall(self.onTabChange, self, tab)
	end

	self.currentTab = tab

	tab:setChecked(true)
	tab:setOn(false)

	tab.blinking = false

	tab:raise()

	if tab.closeButton then
		tab.closeButton:show()
		tab.closeButton:setStyle(tab.closeButton.originalStyle)
		tab.closeButton:raise()
	end

	if tab.blinkEvent then
		removeEvent(tab.blinkEvent)

		tab.blinkEvent = nil
	end

	local parent = tab:getParent()

	parent:focusChild(tab, MouseFocusReason)
	updateNavigation(self)
end

function UIMoveableTabBar:selectNextTab()
	if self.currentTab == nil then
		return
	end

	updateTabs(self)

	local index = table.find(self.tabs, self.currentTab)

	if index == nil then
		return
	end

	if index < #self.tabs then
		self:selectTab(self.tabs[index + 1])
	elseif #self.postTabs > 0 then
		local widget = showPostTab(self)

		self:selectTab(widget)
	elseif #self.preTabs > 0 then
		local widget = showPreTab(self)

		self:selectTab(widget)
	else
		self:selectTab(self.tabs[1])
	end

	updateTabs(self)
end

function UIMoveableTabBar:selectPrevTab()
	if self.currentTab == nil then
		return
	end

	updateTabs(self)

	local index = table.find(self.tabs, self.currentTab)

	if index == nil then
		return
	end

	if index > 1 then
		self:selectTab(self.tabs[index - 1])
	elseif #self.preTabs > 0 then
		local widget = showPreTab(self)

		self:selectTab(widget)
	elseif #self.postTabs > 0 then
		local widget = showPostTab(self)

		self:selectTab(widget)
	else
		self:selectTab(self.tabs[#self.tabs])
	end

	updateTabs(self)
end

function UIMoveableTabBar:blinkTab(tab)
	if tab.blinking then
		return
	end

	tab.blinking = true

	tabBlink(tab, 0, 0, 500)
end

function UIMoveableTabBar:getTabPanel(tab)
	return tab.tabPanel
end

function UIMoveableTabBar:getCurrentTabPanel()
	if self.currentTab then
		return self.currentTab.tabPanel
	end
end

function UIMoveableTabBar:getCurrentTab()
	return self.currentTab
end

function UIMoveableTabBar:setNavigation(prevButton, nextButton)
	self.prevNavigation = prevButton
	self.nextNavigation = nextButton

	if self.prevNavigation then
		function self.prevNavigation.onClick()
			self:selectPrevTab()
		end
	end

	if self.nextNavigation then
		function self.nextNavigation.onClick()
			self:selectNextTab()
		end
	end

	updateNavigation(self)
end

﻿-- chunkname: @/modules/corelib/ui/uiminiwindowcontainer.lua

UIMiniWindowContainer = extends(UIWidget, "UIMiniWindowContainer")

function UIMiniWindowContainer.create()
	local container = UIMiniWindowContainer.internalCreate()

	container.scheduledWidgets = {}

	container:setFocusable(false)
	container:setPhantom(true)

	return container
end

function UIMiniWindowContainer:getEmptySpaceHeight()
	local sumHeight = 0
	local children = self:getChildren()

	for i = 1, #children do
		if children[i]:isVisible() then
			sumHeight = sumHeight + children[i]:getHeight()
		end
	end

	local selfHeight = self:getHeight() - (self:getPaddingTop() + self:getPaddingBottom())

	return selfHeight - sumHeight
end

function UIMiniWindowContainer:fitAll(noRemoveChild)
	if not self:isVisible() then
		return
	end

	if not noRemoveChild then
		local children = self:getChildren()

		if #children > 0 then
			noRemoveChild = children[#children]
		else
			return
		end
	end

	local sumHeight = 0
	local children = self:getChildren()

	for i = 1, #children do
		if children[i]:isVisible() then
			sumHeight = sumHeight + children[i]:getHeight()
		end
	end

	local selfHeight = self:getHeight() - (self:getPaddingTop() + self:getPaddingBottom())

	if sumHeight <= selfHeight then
		return
	end

	local removeChildren = {}
	local maximumHeight = selfHeight - (sumHeight - noRemoveChild:getHeight())

	if noRemoveChild:isResizeable() and maximumHeight >= noRemoveChild:getMinimumHeight() then
		sumHeight = sumHeight - noRemoveChild:getHeight() + maximumHeight

		addEvent(function()
			noRemoveChild:setHeight(maximumHeight)
		end)
	end

	for i = #children, 1, -1 do
		if sumHeight <= selfHeight then
			break
		end

		local child = children[i]

		if child ~= noRemoveChild and not child.save then
			local childHeight = child:getHeight()

			sumHeight = sumHeight - childHeight

			table.insert(removeChildren, child)
		end
	end

	for i = #children, 1, -1 do
		if sumHeight <= selfHeight then
			break
		end

		local child = children[i]

		if child ~= noRemoveChild and child:isVisible() then
			local childHeight = child:getHeight()

			sumHeight = sumHeight - childHeight

			table.insert(removeChildren, child)
		end
	end

	for i = 1, #removeChildren do
		signalcall(removeChildren[i].onRemoveFromContainer, removeChildren[i])

		if removeChildren[i]:getParent():getId() == self:getId() then
			removeChildren[i]:close()
		end
	end
end

function UIMiniWindowContainer:onDrop(widget, mousePos)
	if widget:getClassName() == "UIMiniWindow" then
		local oldParent = widget:getParent()

		if oldParent == self then
			return true
		end

		if oldParent then
			oldParent:removeChild(widget)
		end

		if widget.movedWidget then
			local index = self:getChildIndex(widget.movedWidget)

			self:insertChild(index + widget.movedIndex, widget)
		else
			self:addChild(widget)
		end

		self:fitAll(widget)

		return true
	end
end

function UIMiniWindowContainer:moveTo(newPanel)
	if not newPanel or newPanel == self then
		return
	end

	local children = self:getChildByIndex(1)

	while children do
		newPanel:addChild(children)

		children = self:getChildByIndex(1)
	end

	newPanel:fitAll()
end

function UIMiniWindowContainer:swapInsert(widget, index)
	local oldParent = widget:getParent()
	local oldIndex = self:getChildIndex(widget)

	if oldParent == self and oldIndex ~= index then
		local oldWidget = self:getChildByIndex(index)

		if oldWidget then
			self:removeChild(oldWidget)
			self:insertChild(oldIndex, oldWidget)
		end

		self:removeChild(widget)
		self:insertChild(index, widget)
	end
end

function UIMiniWindowContainer:scheduleInsert(widget, index)
	if index - 1 > self:getChildCount() then
		if self.scheduledWidgets[index] then
			pdebug("replacing scheduled widget id " .. widget:getId())
		end

		self.scheduledWidgets[index] = widget
	else
		local oldParent = widget:getParent()

		if oldParent ~= self then
			if oldParent then
				oldParent:removeChild(widget)
			end

			self:insertChild(index, widget)

			while true do
				local placed = false

				for nIndex, nWidget in pairs(self.scheduledWidgets) do
					if nIndex - 1 <= self:getChildCount() then
						self:insertChild(nIndex, nWidget)

						self.scheduledWidgets[nIndex] = nil
						placed = true

						break
					end
				end

				if not placed then
					break
				end
			end
		end
	end
end

function UIMiniWindowContainer:order()
	local children = self:getChildren()

	for i = 1, #children do
		if not children[i].miniLoaded then
			return
		end
	end

	for i = 1, #children do
		if children[i].miniIndex then
			self:swapInsert(children[i], children[i].miniIndex)
		elseif children[i].autoOpen then
			self:swapInsert(children[i], children[i].autoOpen)
		end
	end
end

function UIMiniWindowContainer:saveChildren()
	local children = self:getChildren()
	local ignoreIndex = 0

	for i = 1, #children do
		if children[i].save then
			children[i]:saveParentIndex(self:getId(), i - ignoreIndex)
		else
			ignoreIndex = ignoreIndex + 1
		end
	end
end

function UIMiniWindowContainer:onGeometryChange()
	self:fitAll()
end

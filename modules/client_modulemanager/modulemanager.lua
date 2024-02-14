﻿-- chunkname: @/modules/client_modulemanager/modulemanager.lua

local moduleManagerWindow, moduleList

function init()
	moduleManagerWindow = g_ui.displayUI("modulemanager")

	moduleManagerWindow:hide()

	moduleList = moduleManagerWindow:getChildById("moduleList")

	connect(moduleList, {
		onChildFocusChange = function(self, focusedChild)
			if focusedChild == nil then
				return
			end

			updateModuleInfo(focusedChild:getText())
		end
	})
	g_keyboard.bindKeyPress("Up", function()
		moduleList:focusPreviousChild(KeyboardFocusReason)
	end, moduleManagerWindow)
	g_keyboard.bindKeyPress("Down", function()
		moduleList:focusNextChild(KeyboardFocusReason)
	end, moduleManagerWindow)
	addEvent(listModules)
end

function terminate()
	moduleManagerWindow:destroy()

	moduleList = nil
end

function disable()
	return
end

function hide()
	moduleManagerWindow:hide()
end

function show()
	moduleManagerWindow:show()
	moduleManagerWindow:raise()
	moduleManagerWindow:focus()
end

function toggle()
	if moduleManagerWindow:isVisible() then
		hide()
	else
		show()
	end
end

function refreshModules()
	g_modules.discoverModules()
	listModules()
end

function listModules()
	if not moduleManagerWindow then
		return
	end

	moduleList:destroyChildren()

	local modules = g_modules.getModules()

	for i, module in ipairs(modules) do
		local label = g_ui.createWidget("ModuleListLabel", moduleList)

		label:setText(module:getName())
		label:setOn(module:isLoaded())
	end

	moduleList:focusChild(moduleList:getFirstChild(), ActiveFocusReason)
end

function refreshLoadedModules()
	if not moduleManagerWindow then
		return
	end

	for i, child in ipairs(moduleList:getChildren()) do
		local module = g_modules.getModule(child:getText())

		child:setOn(module:isLoaded())
	end
end

function updateModuleInfo(moduleName)
	if not moduleManagerWindow then
		return
	end

	local name = ""
	local description = ""
	local autoLoad = ""
	local author = ""
	local website = ""
	local version = ""
	local loaded = false
	local canReload = false
	local canUnload = false
	local module = g_modules.getModule(moduleName)

	if module then
		name = module:getName()
		description = module:getDescription()
		author = module:getAuthor()
		website = module:getWebsite()
		version = module:getVersion()
		loaded = module:isLoaded()
		canReload = module:canReload()
		canUnload = module:canUnload()
	end

	moduleManagerWindow:recursiveGetChildById("moduleName"):setText(name)
	moduleManagerWindow:recursiveGetChildById("moduleDescription"):setText(description)
	moduleManagerWindow:recursiveGetChildById("moduleAuthor"):setText(author)
	moduleManagerWindow:recursiveGetChildById("moduleWebsite"):setText(website)
	moduleManagerWindow:recursiveGetChildById("moduleVersion"):setText(version)

	local reloadButton = moduleManagerWindow:recursiveGetChildById("moduleReloadButton")

	reloadButton:setEnabled(canReload)

	if loaded then
		reloadButton:setText("Reload")
	else
		reloadButton:setText("Load")
	end

	local unloadButton = moduleManagerWindow:recursiveGetChildById("moduleUnloadButton")

	unloadButton:setEnabled(canUnload)
end

function reloadCurrentModule(name)
	local focusedChild = moduleList:getFocusedChild()
	local moduleName = name or focusedChild and focusedChild:getText()

	if moduleName then
		local module = g_modules.getModule(moduleName)

		if module then
			module:reload()

			if modules.client_modulemanager == nil or name ~= nil then
				return
			end

			updateModuleInfo(module:getName())
			refreshLoadedModules()
			show()
		end
	end
end

function unloadCurrentModule()
	local focusedChild = moduleList:getFocusedChild()

	if focusedChild then
		local module = g_modules.getModule(focusedChild:getText())

		if module then
			module:unload()

			if modules.client_modulemanager == nil then
				return
			end

			updateModuleInfo(module:getName())
			refreshLoadedModules()
		end
	end
end

function reloadAllModules()
	g_modules.reloadModules()
	refreshLoadedModules()
	show()
end

function onModuleSearch(text)
	local searchFilter = text:lower()

	for _, label in pairs(moduleList:getChildren()) do
		local searchCondition = searchFilter == "" or searchFilter ~= "" and string.find(label:getText(), searchFilter) ~= nil

		label:setVisible(searchCondition)
	end
end
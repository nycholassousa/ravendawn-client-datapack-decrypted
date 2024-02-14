-- chunkname: @/modules/client_terminal/commands.lua

local function pcolored(text, color)
	color = color or "white"

	modules.client_terminal.addLine(tostring(text), color)
end

function draw_debug_boxes()
	g_ui.setDebugBoxesDrawing(not g_ui.isDrawingDebugBoxes())
end

function module_manager()
	modules.client_modulemanager.show()
end

function mouse_pos()
	table.print(g_window.getMousePosition())
end

function mouse_widgets_ids()
	local widget = rootWidget:recursiveGetChildByPos(g_window.getMousePosition())

	if not widget then
		print("empty")

		return
	end

	local t = {}

	repeat
		table.insert(t, widget:getId())

		widget = widget:getParent()
	until widget == rootWidget or not widget

	print(table.concat(t, " -> "))
end

function reload_otml()
	modules.game_things.reloadOtmls()
end

function hide_map()
	modules.game_interface.getMapPanel():hide()
end

function show_map()
	modules.game_interface.getMapPanel():show()
end

function live_textures_reload()
	g_textures.liveReload()
end

function live_module_reload(name)
	if not name then
		pcolored("ERROR: missing module name", "red")

		return
	end

	local module = g_modules.getModule(name)

	if not module then
		pcolored("ERROR: unable to find module " .. name, "red")

		return
	end

	if not module:isReloadble() then
		pcolored("ERROR: that module is not reloadable", "red")

		return
	end

	if not module:canReload() then
		pcolored("ERROR: some other modules requires this module, cannot reload now", "red")

		return
	end

	local files = {}
	local hasFile = false

	for _, subFolder in ipairs({
		"",
		"/styles",
		"/widgets"
	}) do
		for _, file in pairs(g_resources.listDirectoryFiles("/" .. name .. subFolder)) do
			local filepath = "modules/" .. name .. subFolder .. "/" .. file
			local time = g_platform.getFileModificationTime(filepath)

			if time > 0 then
				files[filepath] = time
				hasFile = true
			end
		end
	end

	if not hasFile then
		pcolored("ERROR: unable to find any file for module", "red")

		return
	end

	cycleEvent(function()
		for filepath, time in pairs(files) do
			local newtime = g_platform.getFileModificationTime(filepath)

			if time < newtime then
				pcolored("Reloading " .. name, "green")
				modules.client_terminal.flushLines()
				module:reload()
				g_layout.setEditMode(g_layout.editMode)
				g_layout.load()

				files[filepath] = newtime

				if name == "client_terminal" then
					modules.client_terminal.show()
				end

				break
			end
		end
	end, 1000)
end

function live_sprites_reload()
	local files = {}

	for _, file in pairs(g_resources.listDirectoryFiles("/things")) do
		local filepath = "/things/" .. file
		local time = g_resources.getFileTime(filepath)

		if time > 0 then
			files[filepath] = time
			hasFile = true
		end
	end

	if not hasFile then
		pcolored("ERROR: unable to find things file for module", "red")

		return
	end

	cycleEvent(function()
		for filepath, time in pairs(files) do
			local newtime = g_resources.getFileTime(filepath)

			if time < newtime then
				pcolored("Reloading sprites...", "green")
				modules.client_terminal.flushLines()
				modules.game_things.load()

				files[filepath] = newtime

				break
			end
		end
	end, 1000)
end

local pinging = false

local function pingBack(ping)
	if ping < 300 then
		color = "green"
	elseif ping < 600 then
		color = "yellow"
	else
		color = "red"
	end

	pcolored("[" .. g_game.getWorldName() .. "] " .. g_game.getChannelName() .. " => " .. ping .. " ms", color)
end

function ping()
	if pinging then
		pcolored("Ping stopped.")
		g_game.setPingDelay(1000)
		disconnect(g_game, "onPingBack", pingBack)
	else
		if not g_game.getFeature(GameClientPing) and not g_game.getFeature(GameExtendedClientPing) then
			pcolored("this server does not support ping", "red")

			return
		elseif not g_game.isOnline() then
			pcolored("ping command is only allowed when online", "red")

			return
		end

		pcolored("Starting ping...")
		g_game.setPingDelay(0)
		connect(g_game, "onPingBack", pingBack)
	end

	pinging = not pinging
end

function clear()
	modules.client_terminal.clear()
end

function ls(path)
	path = path or "/"

	local files = g_resources.listDirectoryFiles(path)

	for k, v in pairs(files) do
		if g_resources.directoryExists(path .. v) then
			pcolored(path .. v, "blue")
		else
			pcolored(path .. v)
		end
	end
end

function about_version()
	pcolored(g_app.getName() .. " " .. g_app.getVersion() .. "\n" .. "Rev  " .. g_app.getBuildRevision() .. " (" .. g_app.getBuildCommit() .. ")\n" .. "Built on " .. g_app.getBuildDate())
end

function about_graphics()
	pcolored("Vendor " .. g_graphics.getVendor())
	pcolored("Renderer" .. g_graphics.getRenderer())
	pcolored("Version" .. g_graphics.getVersion())
end

function about_modules()
	for k, m in pairs(g_modules.getModules()) do
		local loadedtext

		if m:isLoaded() then
			pcolored(m:getName() .. " => loaded", "green")
		else
			pcolored(m:getName() .. " => not loaded", "red")
		end
	end
end

mm = module_manager
mw = mouse_widgets_ids
ddb = draw_debug_boxes
mp = mouse_pos

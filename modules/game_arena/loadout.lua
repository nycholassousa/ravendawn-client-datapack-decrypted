-- chunkname: @/modules/game_arena/loadout.lua

local loadoutWindow

function initLoadoutWindow()
	loadoutWindow = g_ui.createWidget("ArenaLoadoutWindow", modules.game_interface.getHUDPanel())

	populateArchetypeButtons()
end

function populateArchetypeButtons()
	local panel = loadoutWindow.content.columnleft
	local order = {
		"Spiritual",
		"Holy",
		"Wizardry",
		"Archery",
		"Warfare",
		"Shadow",
		"Witchcraft",
		"Protection"
	}

	for i = 1, 8 do
		panel = i > 4 and loadoutWindow.content.columnright or panel

		local widget = g_ui.createWidget("ArenaLoadoutArchetypeButton", panel)

		widget.icon:setImageSource(string.format("/images/ui/icons/archetypes/90x90/%s", order[i]:lower()))
		widget.name:setText(order[i])

		function widget:onClick()
			self:setOn(true)
		end
	end
end

function terminateLoadoutWindow()
	if loadoutWindow then
		loadoutWindow:destroy()
	end
end

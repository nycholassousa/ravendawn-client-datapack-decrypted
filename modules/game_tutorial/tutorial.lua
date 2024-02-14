-- chunkname: @/modules/game_tutorial/tutorial.lua

Tutorial = {
	highlightNpcNames = {},
	replacedThings = {}
}

local fadePanel
local highlightPositions = {}

function onDragEnter(self, mousePos)
	if not g_layout.isEditMode() then
		return
	end

	local oldPos = self:getPosition()

	self.movingReference = {
		x = mousePos.x - oldPos.x,
		y = mousePos.y - oldPos.y
	}

	self:setPosition(oldPos)
	self:breakAnchors()

	return true
end

function onDragLeave(self, droppedWidget, mousePos)
	return true
end

function onDragMove(self, mousePos, mouseMoved)
	local pos = {
		x = mousePos.x - self.movingReference.x,
		y = mousePos.y - self.movingReference.y
	}

	g_layout.snapToGrid(pos)
	self:setPosition(pos)
	self:bindRectToParent()
end

function Tutorial.onGameStart()
	if fadePanel then
		fadePanel:destroy()

		fadePanel = nil
	end

	currentTaskCompleted = nil
	currentTaskArrow = nil
	currentTaskInteraction = nil
	Tutorial.replacedThings = {}
end

function Tutorial.onGameEnd()
	local weaponSkill = AbilityBar.weaponSkillWidget

	if weaponSkill and weaponSkill:getHeight() ~= weaponSkill.minHeight then
		weaponSkill:setHeight(weaponSkill.minHeight)
	end

	if fadePanel then
		fadePanel:destroy()

		fadePanel = nil
	end

	savedPositionToReplaceIds = {}
end

function Tutorial.init()
	g_ui.importStyle("tutorial.otui")
	connect(g_game, {
		onGameStart = Tutorial.onGameStart,
		onGameEnd = Tutorial.onGameEnd,
		onWorldLightChange = Tutorial.onWorldLightChange,
		onMapKnown = Tutorial.onMapKnown
	})
	connect(LocalPlayer, {
		onPositionChange = Tutorial.onPositionChange
	})

	if g_game.isOnline() then
		Tutorial.onGameStart()
	end

	ProtocolGame.registerExtendedOpcode(ExtendedIds.Tutorial, Tutorial.onPlayerTask)
end

function Tutorial.terminate()
	disconnect(g_game, {
		onGameStart = Tutorial.onGameStart,
		onGameEnd = Tutorial.onGameEnd,
		onWorldLightChange = Tutorial.onWorldLightChange
	})
	disconnect(LocalPlayer, {
		onPositionChange = Tutorial.onPositionChange
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Tutorial, Tutorial.onPlayerTask)
end

function Tutorial.onPlayerTask(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.Tutorial then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" or not data.action then
		return
	end

	if data.action == "hide_weapon_skill" then
		local weaponSkill = AbilityBar.weaponSkillWidget

		if weaponSkill then
			weaponSkill:setHeight(not data.value and weaponSkill.minHeight or 0)
		end
	elseif data.action == "fade" then
		Tutorial.fadeMapPanel(data.time)
	elseif data.action == "replace_doors" then
		g_game.setReplacingItems(data.value)
	elseif data.action == "highlight_items" then
		Tutorial.highlightItems(data)
	elseif data.action == "highlight_npc" then
		Tutorial.highlightNPC(data)
	elseif data.action == "open_doors" then
		Tutorial.openDoors(data)
	elseif data.action == "replace_thing" then
		Tutorial.replaceThing(data)
	end
end

function Tutorial.sendTaskCompleted(taskId)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Tutorial, g_game.serializeTable({
			action = "task",
			taskId = taskId
		}))
	end
end

function Tutorial.fadeMapPanel(time)
	local time = time or 1000

	if not fadePanel then
		fadePanel = g_ui.createWidget("GameFadePanel", modules.game_interface.getRootPanel())

		scheduleEvent(function()
			if fadePanel then
				fadePanel:destroy()

				fadePanel = nil
			end
		end, time)
		g_effects.fadeOut(fadePanel, time)
	end
end

function Tutorial.highlightItems(data)
	for _, position in ipairs(highlightPositions) do
		local tile = g_map.getTile(position)
		local thing = tile and tile:getTopUseThing()

		if thing then
			thing:setMarked("")
		end
	end

	if not data.items or not data.items.positions then
		return
	end

	for _, position in ipairs(data.items.positions) do
		local tile = g_map.getTile(position)
		local thing = tile and tile:getTopUseThing()

		if thing and (not data.items.ids or table.contains(data.items.ids, thing:getId())) then
			thing:setMarked(data.color)
			table.insert(highlightPositions, position)
		end
	end
end

function Tutorial.highlightNPC(data)
	local spectators = g_map.getSpectators(g_game.getLocalPlayer():getPosition(), true)

	for _, name in ipairs(Tutorial.highlightNpcNames) do
		for _, creature in ipairs(spectators) do
			if creature then
				creature:setMarked("")
			end
		end
	end

	Tutorial.highlightNpcNames = {}

	if not data.names then
		return
	end

	for _, name in ipairs(data.names) do
		table.insert(Tutorial.highlightNpcNames, {
			name = name,
			color = data.color
		})

		for _, creature in ipairs(spectators) do
			if creature:getName():lower() == name:lower() then
				creature:setMarked(data.color)
			end
		end
	end
end

function Tutorial.openDoors(data)
	if data.position then
		local tile = g_map.getTile(data.position)

		if tile then
			for _, item in ipairs(tile:getItems()) do
				item:onReplacedUse(true, 6900)
			end
		end
	end
end

function Tutorial.replaceThing(data, internal)
	if not data.position or not data.itemId or not data.replaceId then
		return
	end

	local thing
	local tile = g_map.getTile(data.position)

	if tile then
		for _, item in ipairs(tile:getItems()) do
			if item:getId() == data.itemId then
				thing = item

				break
			end
		end
	end

	if thing then
		thing:setId(data.replaceId)

		if not internal then
			table.insert(Tutorial.replacedThings, data)
		end
	end
end

function Tutorial.onPositionChange(player, newPos, oldPos, tile)
	for _, data in ipairs(Tutorial.replacedThings) do
		if Position.canSee(newPos, data.position) then
			Tutorial.replaceThing(data, true)
		end
	end
end

function Tutorial.onWorldLightChange(intensity, color)
	local player = g_game.getLocalPlayer()

	if not player then
		return false
	end

	if player:isInTutorialArea() then
		g_map.setLightData(200, 215)

		return false
	end

	return true
end

function Tutorial.onMapKnown()
	Tutorial.onWorldLightChange()
end

local function shake(widget, n, intensity, marginLeft)
	local intensity = intensity or 2
	local intensity, n = intensity, n or 10
	local marginLeft = marginLeft or widget:getMarginLeft()

	widget:setMarginLeft(marginLeft)

	if n > 0 then
		local offset = n % 2 == 0 and intensity or -intensity

		widget:setMarginLeft(marginLeft + offset)
		scheduleEvent(function()
			shake(widget, n - 1, intensity, marginLeft)
		end, 50)
	end
end

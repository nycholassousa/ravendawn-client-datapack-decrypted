-- chunkname: @/modules/game_minimap/minimap.lua

minimapWindow = nil
defaultZoom = 200
zoom = defaultZoom
minZoom = 100
maxZoom = 400

local dragSpeed = 1
local lastPositionOffset = {
	y = 0,
	x = 0,
	zoom = zoom
}
local clipPosition = {
	y = 0,
	x = 0,
	width = 200,
	height = 200
}
local isDragging = g_clock.millis()

minimapFlags = {}
tradepackPlayerFlags = {}
skullPlayerFlags = {}

local directionAbbr = {
	[0] = "N",
	"E",
	"S",
	"W"
}
local pvpModes = {
	skull = PvpOffensive,
	shield = PvpPeaceful,
	sword = PvpDefensive
}
local pvpButtons = {
	[PvpPeaceful] = {
		{
			id = "shield",
			tooltip = "Peaceful",
			color = "#A6AAB2",
			icon = "icon_shield",
			background = "icon_border_off"
		},
		{
			icon = "icon_sword",
			id = "sword",
			tooltip = "Defensive",
			color = "#A6AAB2"
		},
		{
			icon = "icon_skull",
			id = "skull",
			tooltip = "Offensive",
			color = "#A6AAB2"
		}
	},
	[PvpDefensive] = {
		{
			id = "sword",
			tooltip = "Defensive",
			color = "#1F2124",
			icon = "icon_sword",
			background = "icon_border_yellow"
		},
		{
			icon = "icon_shield",
			id = "shield",
			tooltip = "Peaceful",
			color = "#A6AAB2"
		},
		{
			icon = "icon_skull",
			id = "skull",
			tooltip = "Offensive",
			color = "#A6AAB2"
		}
	},
	[PvpOffensive] = {
		{
			id = "skull",
			tooltip = "Offensive",
			color = "#1F2124",
			icon = "icon_skull",
			background = "icon_border_red"
		},
		{
			icon = "icon_shield",
			id = "shield",
			tooltip = "Peaceful",
			color = "#A6AAB2"
		},
		{
			icon = "icon_sword",
			id = "sword",
			tooltip = "Defensive",
			color = "#A6AAB2"
		}
	}
}
local onDragEnterMinimap, onDragMoveMinimap, onDragLeaveMinimap

function init()
	g_ui.importStyle("minimap.otui")

	minimapWindow = g_ui.createWidget("MinimapWindow", modules.game_interface.getHUDPanel())

	minimapWindow.image:setCircle(true)
	minimapWindow.image:setImageSize({
		width = 200,
		height = 200
	})
	minimapWindow.image:setTextureRadius(defaultZoom)
	connect(minimapWindow.image, "onDragEnter", onDragEnterMinimap)
	connect(minimapWindow.image, "onDragMove", onDragMoveMinimap)
	connect(minimapWindow.image, "onDragLeave", onDragLeaveMinimap)
	updateTime(g_game.getTime())

	function minimapWindow.onMouseWheel(widget, mousePos, direction)
		if direction == MouseWheelDown then
			zoomOut()
		elseif direction == MouseWheelUp then
			zoomIn()
		end
	end

	minimapWindow.onDragEnter = onDragEnter
	minimapWindow.onDragMove = onDragMove

	if BGS_DEMO then
		function minimapWindow.onVisibilityChange(widget, visible)
			if visible then
				widget:hide()
			end
		end
	end

	connect(LocalPlayer, {
		onPositionChange = onPositionChange
	})
	connect(g_game, {
		onGameStart = onGameStart,
		onGameEnd = onGameEnd,
		onTimeChange = updateTime,
		onRemoveAutomapFlag = removeFlag
	})

	if g_game.isOnline() then
		onPositionChange(g_game.getLocalPlayer())
	end
end

function terminate()
	minimapWindow:destroy()

	minimapWindow = nil

	removeEvent(timeEvent)

	timeEvent = nil

	disconnect(LocalPlayer, {
		onPositionChange = onPositionChange
	})
	disconnect(g_game, {
		onGameStart = onGameStart,
		onGameEnd = onGameEnd,
		onTimeChange = updateTime,
		onRemoveAutomapFlag = removeFlag
	})
end

function onPositionChange(player, newPos, oldPos)
	if not player or isDragging > g_clock.millis() then
		return
	end

	if not minimapWindow.cross then
		local minimapFlag = g_ui.createWidget("MiniMapPlayerIcon", minimapWindow.image)

		minimapFlag.position = newPos
		minimapFlag.icon = MAPMARK_PLAYER
		minimapFlag.tooltip = player:getName()
		minimapFlag.additionalMarginTop = -12
		minimapFlag.additionalMarginLeft = 3

		minimapFlag:raise()
		addFlag(minimapFlag, true)

		minimapWindow.cross = minimapFlag
	end

	if not updateFlagPosition(oldPos, newPos, MAPMARK_PLAYER, player:getName()) then
		updateFlagPosition(minimapWindow.cross.position, newPos, MAPMARK_PLAYER, player:getName())
	end

	minimapWindow.cross:raise()

	lastPositionOffset.x = 0
	lastPositionOffset.y = 0

	updateMinimapClip(0, 0)
end

function updateMinimapClip(offsetX, offsetY)
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	offsetX = offsetX * dragSpeed * zoom / 100 + lastPositionOffset.x
	offsetY = offsetY * dragSpeed * zoom / 100 + lastPositionOffset.y

	local playerPos = player:getPosition()

	g_worldMap.updateImageData(true)

	local x = (playerPos.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
	local y = (playerPos.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)
	local textureWidth = minimapWindow.image:getImageTextureWidth()
	local textureHeight = minimapWindow.image:getImageTextureHeight()

	x = textureWidth * x
	y = textureHeight * y

	local minCoordX = zoom
	local maxCoordX = textureWidth - 100 - zoom
	local minCoordY = zoom
	local maxCoordY = textureHeight - 100 - zoom
	local coordX = x - offsetX - 100

	if minCoordX <= coordX and coordX <= maxCoordX then
		lastPositionOffset.x = offsetX
	else
		zoomIn()

		return
	end

	local coordY = y - offsetY - 100

	if minCoordY <= coordY and coordY <= maxCoordY then
		lastPositionOffset.y = offsetY
	else
		zoomIn()

		return
	end

	clipPosition.x = math.max(minCoordX, math.min(coordX, maxCoordX))
	clipPosition.y = math.max(minCoordY, math.min(coordY, maxCoordY))

	minimapWindow.image:setImageClip(clipPosition)
	updateMapFlags()
end

function onDragEnterMinimap(self, mousePos)
	isDragging = g_clock.millis() + 5000

	return true
end

function onDragMoveMinimap(self, mousePos, mouseMoved)
	isDragging = g_clock.millis() + 5000

	updateMinimapClip(mouseMoved.x, mouseMoved.y)

	return true
end

function onDragLeaveMinimap()
	isDragging = g_clock.millis()

	return true
end

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

function onDragMove(self, mousePos, mouseMoved)
	local pos = {
		x = mousePos.x - self.movingReference.x,
		y = mousePos.y - self.movingReference.y
	}

	g_layout.snapToGrid(pos)
	self:setPosition(pos)
	self:bindRectToParent()
	modules.game_house.GameHouse:updateLandTrackerWindow()
end

function update()
	local isEditMode = g_layout.isEditMode()

	minimapWindow:recursiveGetChildById("image"):setPhantom(isEditMode)
	minimapWindow:recursiveGetChildById("editModeBackground"):setVisible(isEditMode)
end

function onGameStart()
	connect(g_game, {
		onUpdateChannelInfo = updateChannelInfo
	})
	addEvent(function()
		updateMapFlags()
	end)

	local char = g_game.getCharacterName()
	local minimap = g_settings.getNode("game_minimap")

	if minimap and minimap[char] then
		g_game.setPVPMode(minimap[char].pvpMode or PvpPeaceful)
	end

	minimapWindow:show()
end

function onGameEnd()
	for position, icons in pairs(minimapFlags) do
		for icon, widgets in pairs(icons) do
			for _, widget in pairs(widgets) do
				widget:destroy()
			end
		end
	end

	minimapFlags = {}

	for _, flag in pairs(tradepackPlayerFlags) do
		flag:destroy()

		flag = nil
	end

	tradepackPlayerFlags = {}

	for _, flag in pairs(skullPlayerFlags) do
		flag:destroy()

		flag = nil
	end

	skullPlayerFlags = {}

	minimapWindow:hide()
	disconnect(g_game, {
		onUpdateChannelInfo = updateChannelInfo
	})

	local char = g_game.getCharacterName()
	local minimap = g_settings.getNode("game_minimap") or {}

	minimap[char] = {
		pvpMode = g_game.getPVPMode()
	}

	g_settings.setNode("game_minimap", minimap)
	g_settings.save()

	minimapWindow.cross = nil

	updateRegionName()
end

function zoomOut()
	zoom = math.min(maxZoom, zoom + 50)

	minimapWindow.image:setTextureRadius(zoom)
	updateMinimapClip(0, 0)
end

local zoomTries = 0

function zoomIn()
	local newZoom = math.max(minZoom, zoom - 50)

	if zoom == newZoom then
		zoomTries = zoomTries + 1

		if zoomTries > 5 then
			return
		end
	else
		zoomTries = 0
	end

	zoom = newZoom

	minimapWindow.image:setTextureRadius(zoom)
	updateMinimapClip(0, 0)
end

function autoWalk(widget, mousePos)
	if lastPositionOffset.x ~= 0 or lastPositionOffset.y ~= 0 then
		return
	end

	local player = g_game.getLocalPlayer()

	if player:isServerWalking() then
		g_game.stop()
	end

	if not player or FishFight.gameState == 1 or player:isChanneling() or modules.game_professions.minigameWindow:isVisible() or player:isInTutorialArea() then
		return
	end

	local relX = mousePos.x - minimapWindow.image:getX()
	local relY = mousePos.y - minimapWindow.image:getY()
	local playerPos = player:getPosition()

	local function getPositionBasedOnClickPosition(relativeClickPosition)
		local px = (playerPos.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
		local py = (playerPos.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)

		px = px * minimapWindow.image:getImageTextureWidth()
		py = py * minimapWindow.image:getImageTextureHeight()

		local x = (100 - relativeClickPosition.x) * (zoom / 100)
		local y = (100 - relativeClickPosition.y) * (zoom / 100)
		local xx = px - x
		local yy = py - y
		local realX = g_worldMap.area.fromX + xx / minimapWindow.image:getImageTextureWidth() * (g_worldMap.area.toX - g_worldMap.area.fromX)
		local realY = g_worldMap.area.fromY + yy / minimapWindow.image:getImageTextureHeight() * (g_worldMap.area.toY - g_worldMap.area.fromY)

		return {
			x = realX,
			y = realY
		}
	end

	local realPos = getPositionBasedOnClickPosition({
		x = relX,
		y = relY
	})
	local destination = {
		x = realPos.x,
		y = realPos.y,
		z = player:getPosition().z
	}

	if player:isGamemaster() then
		g_game.talk(string.format("/pos %i, %i, %i", destination.x, destination.y, destination.z))

		return
	end

	player:autoWalk({
		x = realPos.x,
		y = realPos.y,
		z = playerPos.z
	}, player:getPosition())
end

local function isWithinCircle(point, center, radius)
	local dx = point.x - center.x
	local dy = point.y - center.y
	local distanceSquared = dx * dx + dy * dy

	return distanceSquared <= radius * radius
end

local function isRectWithinCircle(rect, center, radius)
	local topLeft = {
		x = rect.x,
		y = rect.y
	}
	local topRight = {
		x = rect.x + rect.width,
		y = rect.y
	}
	local bottomLeft = {
		x = rect.x,
		y = rect.y + rect.height
	}
	local bottomRight = {
		x = rect.x + rect.width,
		y = rect.y + rect.height
	}

	return isWithinCircle(topLeft, center, radius) and isWithinCircle(topRight, center, radius) and isWithinCircle(bottomLeft, center, radius) and isWithinCircle(bottomRight, center, radius)
end

local function isCircleWithinCircle(c1, c2)
	local distance = math.sqrt((c2.center.x - c1.center.x)^2 + (c2.center.y - c1.center.y)^2)
	local difference_in_radii = math.abs(c2.radius - c1.radius)

	return distance < difference_in_radii
end

function processWorldMapFlag(widget)
	if not widget.icon then
		return false
	end

	local hidden = true

	if widget.icon == MAPMARK_MISSION_AVAILABLE then
		hidden = not g_worldMap.iconSettings.showMissionAvailable
	elseif widget.icon == MAPMARK_MISSION_COMPLETE then
		hidden = not g_worldMap.iconSettings.showMissionComplete
	elseif widget.icon == MAPMARK_HOUSE then
		hidden = not g_worldMap.iconSettings.showHouse
	elseif widget.icon == MAPMARK_SEAPORT then
		hidden = not g_worldMap.iconSettings.showSeaport
	elseif widget.icon == MAPMARK_TRADEPOST then
		hidden = not g_worldMap.iconSettings.showTradepost
	elseif widget.icon == MAPMARK_CRAFTING_STATION then
		hidden = not g_worldMap.iconSettings.showCraftingStation
	elseif widget.icon == MAPMARK_PVP_ARENA then
		hidden = not g_worldMap.iconSettings.showPvPArena
	elseif widget.icon == MAPMARK_RANGERS_COMPANY then
		hidden = not g_worldMap.iconSettings.showRangersCompanyOutpost
	elseif widget.icon == MAPMARK_NPC_BANK then
		hidden = not g_worldMap.iconSettings.showBank
	elseif widget.icon == MAPMARK_NPC_FISHPOST then
		hidden = not g_worldMap.iconSettings.showFishpost
	elseif widget.icon == MAPMARK_NPC_BUILDERS then
		hidden = not g_worldMap.iconSettings.showBuilders
	elseif widget.icon == MAPMARK_NPC_WAREHOUSE then
		hidden = not g_worldMap.iconSettings.showWarehouse
	elseif widget.icon == MAPMARK_RESPAWN_SHRINE then
		hidden = not g_worldMap.iconSettings.showRespawnShrine
	elseif widget.icon == MAPMARK_MARKET then
		hidden = not g_worldMap.iconSettings.showMarket
	elseif widget.icon == MAPMARK_MOA_MERCHANT then
		hidden = not g_worldMap.iconSettings.showMoaMerchant
	elseif widget.icon == MAPMARK_VENDOR then
		hidden = not g_worldMap.iconSettings.showVendors
	elseif widget.icon == MAPMARK_COLLECTOR then
		hidden = not g_worldMap.iconSettings.showCollectors
	elseif widget.icon == MAPMARK_COMPASS then
		hidden = g_worldMap.isCompassFlagHidden(widget)
	elseif widget.icon == MAPMARK_PARTY_MEMBER then
		hidden = false
	elseif widget.icon == MAPMARK_PLAYER then
		hidden = false
	end

	if widget.position then
		local player = g_game.getLocalPlayer()
		local playerPos = player and player:getPosition() or nil

		if g_worldMap.displayCurrentFloorFlags and (not playerPos or widget.position.z ~= playerPos.z) and (not g_worldMap.displayCurrentFloorFlagsExceptions or not g_worldMap.displayCurrentFloorFlagsExceptions[widget.icon]) then
			hidden = true
		end

		local key = Position.generateHash(widget.position)
		local flag = getFlag(widget.position, widget.icon, widget.description)

		if not flag then
			removeFlag(widget.position)

			if widget and widget.icon ~= MAPMARK_REGION_CONFLICT and widget.icon ~= MAPMARK_DYNAMICEVENT and widget.icon ~= MAPMARK_PARTY_MEMBER and widget.icon ~= MAPMARK_PLAYER then
				flag = g_ui.createWidget("WorldMapIcon", minimapWindow.image)
				flag.icon = widget.icon
				flag.position = widget.position
				flag.region = widget.region or ""
				flag.alwaysShow = widget.alwaysShow

				flag:setTooltip(widget:getTooltip())

				flag.profession = widget.profession
				flag.compassSize = widget.compassSize
				minimapFlags[key] = minimapFlags[key] or {}
				minimapFlags[key][widget.icon] = minimapFlags[key][widget.icon] or {}
				minimapFlags[key][widget.icon][widget.description or 1] = flag
			end
		else
			minimapFlags[key] = minimapFlags[key] or {}
			minimapFlags[key][widget.icon] = minimapFlags[key][widget.icon] or {}
			minimapFlags[key][widget.icon][widget.description or 1].hidden = hidden
		end
	end

	return true
end

function updateMapFlags()
	local occupiedFlags = {}

	for _, widget in pairs(g_worldMap.flags) do
		if processWorldMapFlag(widget) then
			local hash = Position.generateHash(widget.position)

			occupiedFlags[hash] = occupiedFlags[hash] or {}
			occupiedFlags[hash][widget.icon] = occupiedFlags[hash][widget.icon] or {}
			occupiedFlags[hash][widget.icon][widget.description or 1] = true
		end
	end

	for _, widget in pairs(g_worldMap.questFlags) do
		if processWorldMapFlag(widget) then
			local hash = Position.generateHash(widget.position)

			occupiedFlags[hash] = occupiedFlags[hash] or {}
			occupiedFlags[hash][widget.icon] = occupiedFlags[hash][widget.icon] or {}
			occupiedFlags[hash][widget.icon][widget.description or 1] = true
		end
	end

	for _, widget in pairs(g_worldMap.compassHighlights) do
		if processWorldMapFlag(widget) then
			local hash = Position.generateHash(widget.position)

			occupiedFlags[hash] = occupiedFlags[hash] or {}
			occupiedFlags[hash][widget.icon] = occupiedFlags[hash][widget.icon] or {}
			occupiedFlags[hash][widget.icon][widget.description or 1] = true
		end
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local playerPos = player:getPosition()

	if not playerPos then
		return
	end

	local regionName = minimapWindow.topPanel.regionName:getText()

	local function updateFlag(widget)
		if not widget.position then
			return
		end

		if widget.hidden then
			widget:hide()

			return
		end

		local icon = widget.icon

		if icon == MAPMARK_COMPASS then
			local newSize = math.ceil(widget.compassSize * defaultZoom / zoom)

			widget:setImageSource(g_worldMap.getCompassTextureNameBySize(newSize))
			widget:raise()
		elseif type(tonumber(icon)) == "number" then
			local iconType = widget.profession and g_worldMap.iconAssets[icon][widget.profession] or g_worldMap.iconAssets[icon]

			if iconType then
				widget:setImageSource("/images/ui/windows/minimap/icons/small/" .. iconType)
			end
		else
			widget:setImageSource(resolvepath(icon, 1))
		end

		if widget.icon ~= MAPMARK_PARTY_MEMBER and widget.icon ~= MAPMARK_PLAYER then
			local size = math.max(16, math.min(24, 24 * defaultZoom / zoom))

			widget:setSize({
				width = size,
				height = size
			})

			if widget.icon == MAPMARK_COMPASS then
				widget:setSize({
					width = widget.compassSize * defaultZoom / zoom,
					height = widget.compassSize * defaultZoom / zoom
				})
			end
		end

		local x = (widget.position.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
		local y = (widget.position.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)

		x = minimapWindow.image:getImageTextureWidth() * x
		y = minimapWindow.image:getImageTextureHeight() * y
		x = x + lastPositionOffset.x
		y = y + lastPositionOffset.y

		local px = (playerPos.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
		local py = (playerPos.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)

		px = minimapWindow.image:getImageTextureWidth() * px
		py = minimapWindow.image:getImageTextureHeight() * py

		local xx = px - x
		local yy = py - y
		local width = minimapWindow.image:getWidth()
		local height = minimapWindow.image:getHeight()

		yy = 100 - widget:getHeight() / 2 - yy / (zoom / 100)
		xx = 100 - widget:getWidth() / 2 - xx / (zoom / 100)

		widget:setMarginTop(yy + (widget.additionalMarginTop or 0))
		widget:setMarginLeft(xx + (widget.additionalMarginLeft or 0))

		local mpos = minimapWindow.image:getPosition()
		local w = mpos.x + width / 2
		local h = mpos.y + height / 2

		if xx < 0 or yy < 0 or height < yy or width < xx then
			widget:hide()

			return
		end

		if widget.hidden then
			widget:hide()

			return
		end

		local radius = width / 2
		local center = {
			x = minimapWindow.border:getX() + minimapWindow.border:getWidth() / 2,
			y = minimapWindow.border:getY() + minimapWindow.border:getHeight() / 2
		}

		if icon == MAPMARK_COMPASS then
			local flagCenter = {
				x = widget:getX() + widget:getWidth() / 2,
				y = widget:getY() + widget:getHeight() / 2
			}
			local flagRadius = widget:getHeight() / 2

			if not isCircleWithinCircle({
				center = flagCenter,
				radius = flagRadius
			}, {
				center = center,
				radius = radius
			}) then
				widget:hide()

				return
			end
		else
			local rect = {
				x = widget:getX(),
				y = widget:getY(),
				width = widget:getWidth(),
				height = widget:getHeight()
			}

			if not isRectWithinCircle(rect, center, radius) then
				widget:hide()

				return
			end
		end

		widget:show()
	end

	for _, flags in pairs({
		tradepackPlayerFlags,
		skullPlayerFlags
	}) do
		for _, widget in pairs(flags) do
			if widget.position then
				updateFlag(widget)
			end
		end
	end

	for key, icons in pairs(minimapFlags) do
		for icon, descriptions in pairs(icons) do
			for description, flag in pairs(descriptions) do
				if icon ~= MAPMARK_PLAYER and (not occupiedFlags[key] or not occupiedFlags[key][icon] or not occupiedFlags[key][icon][description]) then
					flag:destroy()

					minimapFlags[key][icon][description] = nil
				else
					updateFlag(flag)
				end
			end
		end
	end
end

function updateRegionName(region, color)
	minimapWindow.topPanel.regionName:setVisible(region ~= "")
	minimapWindow.topPanel.regionName:setText(region)
	minimapWindow.topPanel.regionName:setColor(color)
end

function getRegionName()
	return minimapWindow.topPanel.regionName:getText()
end

function updateWindDirection()
	local player = g_game.getLocalPlayer()

	if not player or not player:isInShip() then
		minimapWindow.iconWind:hide()

		return
	end

	if not player:isInTutorialArea() then
		local direction = player:getDirection()

		if g_ships.windDirection == direction then
			minimapWindow.iconWind:setColor("green")
		else
			minimapWindow.iconWind:setColor("white")
		end
	else
		minimapWindow.iconWind:setColor("white")
	end

	minimapWindow.iconWind:setText(directionAbbr[g_ships.windDirection])
	minimapWindow.iconWind:show()
end

function toggleMinimapButton(id, value)
	local button = minimapWindow:recursiveGetChildById(id)

	if button then
		button:setOn(value)
	end
end

function getMinimapButton(id)
	return minimapWindow:recursiveGetChildById(id)
end

function updateTime(time)
	local pm = time.hour - 12 >= 0
	local hour = time.hour % 12 or 12

	minimapWindow.topPanel.time:setText(string.format("%02.f:%02.f %s", hour, time.minute, pm and "PM" or "AM"))
end

function removeFlag(pos, icon, description)
	local flag = getFlag(pos, icon, description, true)

	if flag then
		flag:destroy()

		flag = nil
	end
end

function getFlag(pos, icon, description, pop)
	if not pos then
		return
	end

	local key = Position.generateHash(pos)
	local flag = minimapFlags[key] and minimapFlags[key][icon] and minimapFlags[key][icon][description or 1]

	if not flag then
		return nil
	end

	if pop then
		minimapFlags[key][icon][description or 1] = nil
	end

	return flag
end

function addFlag(widget, usePassedWidget)
	if not widget or not widget.position then
		return
	end

	local key = Position.generateHash(widget.position)

	minimapFlags[key] = minimapFlags[key] or {}
	minimapFlags[key][widget.icon] = minimapFlags[key][widget.icon] or {}

	local flag = minimapFlags[key][widget.icon][widget.tooltip or 1]

	if not flag then
		flag = usePassedWidget and widget or g_ui.createWidget("WorldMapIcon", minimapWindow.image)
		flag.icon = widget.icon
		flag.position = widget.position
		flag.region = widget.region

		flag:setTooltip(widget:getTooltip())

		flag.profession = widget.profession
		flag.compassSize = widget.compassSize
		minimapFlags[key][widget.icon][widget.tooltip] = flag

		updateFlagPosition(widget.position, widget.position, flag.icon, flag.tooltip)
	end
end

function updateTradepackPlayerFlag(pid, position)
	local flag = tradepackPlayerFlags[pid]

	if not flag then
		flag = g_ui.createWidget("WorldMapIcon", minimapWindow.image)
		flag.icon = MAPMARK_TRADEPACK
		flag.position = position
		flag.profession = ProfessionNone
		tradepackPlayerFlags[pid] = flag

		function flag.onDestroy()
			tradepackPlayerFlags[pid] = nil
		end
	else
		flag.position = position
	end

	updateFlagPosition(flag.position, flag.position, flag.icon)
	updateMapFlags()
end

function updateSkullPlayerFlag(pid, position)
	local flag = skullPlayerFlags[pid]

	if not flag then
		flag = g_ui.createWidget("WorldMapIcon", minimapWindow.image)
		flag.icon = MAPMARK_MURDERER
		flag.position = position
		flag.profession = ProfessionNone
		skullPlayerFlags[pid] = flag

		function flag.onDestroy()
			skullPlayerFlags[pid] = nil
		end
	else
		flag.position = position
	end

	updateFlagPosition(flag.position, flag.position, flag.icon)
	updateMapFlags()
end

function updateFlagPosition(oldPos, newPos, icon, description)
	newPos = newPos or oldPos

	local player = g_game.getLocalPlayer()
	local widget = player and getFlag(oldPos, icon, description)

	if widget and widget.position then
		widget.position = newPos

		local x = (widget.position.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
		local y = (widget.position.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)

		x = math.floor(minimapWindow.image:getImageTextureWidth() * x)
		y = math.floor(minimapWindow.image:getImageTextureHeight() * y)

		local playerPos = player:getPosition()
		local px = (playerPos.x - g_worldMap.area.fromX) / (g_worldMap.area.toX - g_worldMap.area.fromX)
		local py = (playerPos.y - g_worldMap.area.fromY) / (g_worldMap.area.toY - g_worldMap.area.fromY)

		px = math.floor(minimapWindow.image:getImageTextureWidth() * px)
		py = math.floor(minimapWindow.image:getImageTextureHeight() * py)

		local xx = px - x
		local yy = py - y

		yy = 100 - widget:getHeight() / 2 - yy / (zoom / 100)
		xx = 100 - widget:getWidth() / 2 - xx / (zoom / 100)

		widget:setMarginTop(yy + (widget.additionalMarginTop or 0))
		widget:setMarginLeft(xx + (widget.additionalMarginLeft or 0))

		local mpos = minimapWindow:getPosition()
		local width = minimapWindow.image:getWidth()
		local height = minimapWindow.image:getHeight()
		local w = mpos.x + width / 2
		local h = mpos.y + height / 2

		if not Position.equals(newPos, oldPos) then
			local key = Position.generateHash(oldPos)

			if minimapFlags[key] and minimapFlags[key][icon] then
				minimapFlags[key][icon][description or 1] = nil
			end

			local key = Position.generateHash(newPos)

			minimapFlags[key] = minimapFlags[key] or {}
			minimapFlags[key][icon] = minimapFlags[key][icon] or {}
			minimapFlags[key][icon][description or 1] = widget
		end

		if widget.hidden then
			widget:hide()

			return true
		end

		local radius = width / 2
		local center = {
			x = minimapWindow.border:getX() + minimapWindow.border:getWidth() / 2,
			y = minimapWindow.border:getY() + minimapWindow.border:getHeight() / 2
		}

		if icon == MAPMARK_COMPASS then
			local flagCenter = {
				x = widget:getX() + widget:getWidth() / 2,
				y = widget:getY() + widget:getHeight() / 2
			}
			local flagRadius = widget:getHeight() / 2

			if not isCircleWithinCircle({
				center = flagCenter,
				radius = flagRadius
			}, {
				center = center,
				radius = radius
			}) then
				widget:hide()

				return true
			end
		else
			local rect = {
				x = widget:getX(),
				y = widget:getY(),
				width = widget:getWidth(),
				height = widget:getHeight()
			}

			if not isRectWithinCircle(rect, center, radius) then
				widget:hide()

				return true
			end
		end

		widget:show()

		return true
	end

	return false
end

function hide()
	if g_game.isInArenaMode() then
		minimapWindow:hide()
	end
end

function show()
	if not g_game.isInArenaMode() then
		minimapWindow:show()
	end
end

function updateChannelInfo(info)
	info = info or G.lastChannelInfo

	if not info then
		return
	end

	G.lastChannelInfo = info

	local channelSwitchButton = minimapWindow:recursiveGetChildById("channelSwitchButton")
	local hideCurrentChannel = modules.game_settings.getOption("hideCurrentChannel")

	if hideCurrentChannel then
		channelSwitchButton:setText("#")

		return
	end

	for _, channel in pairs(info) do
		if channel.id == G.currentChannelId then
			if bit.band(channel.flags, CHANNEL_FLAG_WARMODE) == CHANNEL_FLAG_WARMODE then
				channelSwitchButton:setText(string.sub(channel.name, 1, 1))

				break
			end

			do
				local hashtagPos = channel.name:find("#")
				local displayText = "n/a"

				if hashtagPos then
					displayText = channel.name:sub(hashtagPos + 1, #channel.name)
				else
					displayText = G.currentChannelId and G.currentChannelId or displayText
				end

				channelSwitchButton:setText(displayText)
			end

			break
		end
	end
end

function UIWidget:setAnglePosition(parent, angle, additionalDistance)
	local parentWidth = parent:getWidth()
	local parentHeight = parent:getHeight()
	local parentPos = parent:getPosition()
	local parentCenter = {
		x = parentPos.x + parentWidth / 2,
		y = parentPos.y + parentHeight / 2
	}
	local parentRadius = parentWidth / 2 + (additionalDistance or 0) + 5

	self.additionalDistance = additionalDistance
	self.angle = angle

	local angle = math.rad(angle)
	local x = parentCenter.x + parentRadius * math.cos(angle)
	local y = parentCenter.y + parentRadius * math.sin(angle)
	local selfWidth = self:getWidth()
	local selfHeight = self:getHeight()

	self:setPosition({
		x = x - selfWidth / 2,
		y = y - selfHeight / 2
	})

	if self.positionChangeAngleEvent then
		for _, event in pairs(self.positionChangeAngleEvent) do
			event()
		end

		self.positionChangeAngleEvent = nil
	end

	local disconnects = connect(parent, {
		onGeometryChange = function()
			addEvent(function()
				self:setAnglePosition(parent, self.angle, self.additionalDistance)
			end)
		end
	})

	self.positionChangeAngleEvent = disconnects
end

function onMinimapButtonDragEnter(widget, mousePos)
	if not g_layout.isEditMode() then
		return
	end

	local minimapPos = minimapWindow.image:getPosition()
	local minimapCenter = {
		x = minimapPos.x + minimapWindow.image:getWidth() / 2,
		y = minimapPos.y + minimapWindow.image:getHeight() / 2
	}
	local angle = math.deg(math.atan2(mousePos.y - minimapCenter.y, mousePos.x - minimapCenter.x))

	widget:setAnglePosition(minimapWindow.image, angle, widget.additionalDistance)
	widget:raise()
end

function onPvpModeChange()
	local pvpMode = g_game.getPVPMode()
	local popupButton = minimapWindow:recursiveGetChildById("pvpButtonPopup")
	local pvpButtonCfg = pvpButtons[pvpMode]

	if pvpButtonCfg then
		local minimapButton = minimapWindow:recursiveGetChildById("safeModeButton")

		minimapButton:setTooltip(string.format("PvP Mode: %s", pvpButtonCfg[1].tooltip))
		minimapButton:setImageSource(string.format("/images/ui/windows/minimap/%s", pvpButtonCfg[1].background))
		minimapButton:setIcon(string.format("/images/ui/windows/minimap/%s", pvpButtonCfg[1].icon))
		minimapButton:setIconColor(pvpButtonCfg[1].color)

		local firstButton = popupButton:getChildByIndex(1)

		firstButton:setTooltip(string.format("%s", pvpButtonCfg[2].tooltip))
		firstButton:setId(pvpButtonCfg[2].id)
		firstButton:setIcon(string.format("/images/ui/windows/minimap/%s", pvpButtonCfg[2].icon))

		local secondButton = popupButton:getChildByIndex(2)

		secondButton:setTooltip(string.format("%s", pvpButtonCfg[3].tooltip))
		secondButton:setId(pvpButtonCfg[3].id)
		secondButton:setIcon(string.format("/images/ui/windows/minimap/%s", pvpButtonCfg[3].icon))
	end
end

function onPvpButtonClicked(id)
	local pvpMode = pvpModes[id]

	if pvpMode then
		g_game.setPVPMode(pvpMode)
	end

	local minimapButton = minimapWindow:recursiveGetChildById("safeModeButton")

	if minimapButton then
		minimapButton:setOn(false)
	end
end

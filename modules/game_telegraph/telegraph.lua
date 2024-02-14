-- chunkname: @/modules/game_telegraph/telegraph.lua

if not GameTelegraph then
	GameTelegraph = {
		floorTelegraphData = {}
	}
end

local behaviourCallbacks = {
	GameTelegraph.defaultBehaviour,
	GameTelegraph.rotateBehaviour,
	GameTelegraph.directionalExtension,
	GameTelegraph.centerExtension
}

function GameTelegraph:loadConfig()
	local func, error = loadfile("config.lua")

	if not func then
		g_logger.fatal(error)

		return false
	end

	func()

	local env = getfenv(0)

	env.cfg = {}

	setmetatable(env.cfg, {
		__index = env
	})
	setfenv(func, env.cfg)

	return true
end

function GameTelegraph:init()
	self:loadConfig()
	g_ui.importStyle("styles/basic.otui")
	connect(g_game, {
		onGameStart = GameTelegraph.online
	})
	connect(g_map, {
		updateTelegraphWidgets = GameTelegraph.updateTelegraphWidgets
	})
	ProtocolGame.registerExtendedOpcode(cfg.opcode, GameTelegraph.onExtendedOpcode)
end

function GameTelegraph:terminate()
	disconnect(g_game, {
		onGameStart = GameTelegraph.online
	})
	disconnect(g_map, {
		updateTelegraphWidgets = GameTelegraph.updateTelegraphWidgets
	})
	ProtocolGame.unregisterExtendedOpcode(cfg.opcode)
end

function GameTelegraph.online()
	return
end

function GameTelegraph.updateTelegraphWidgets(floor)
	local currentTime = g_clock.millis()

	if floor == -1 then
		for _, telegraphDataList in pairs(GameTelegraph.floorTelegraphData) do
			for i = #telegraphDataList, 1, -1 do
				if not GameTelegraph:updateTelegraphData(telegraphDataList[i], currentTime) then
					-- block empty
				end
			end
		end
	else
		local telegraphDataList = GameTelegraph.floorTelegraphData[floor]

		if not telegraphDataList then
			return
		end

		for i = #telegraphDataList, 1, -1 do
			if not GameTelegraph:updateTelegraphData(telegraphDataList[i], currentTime) then
				table.remove(telegraphDataList, i)
			end
		end
	end
end

function GameTelegraph:defaultBehaviour(telegraphData, telegraphInfo, targetInfo, timeLeft)
	local widget = telegraphData.widget
	local imageWidget = widget:getChildById("main_image")
	local telegraphPos = telegraphData.pos
	local width = telegraphData.widgetWidth
	local height = telegraphData.widgetHeight
	local elapsed = telegraphData.duration - timeLeft
	local scale = math.min(1, elapsed / 500)
	local widthScale = scale
	local heightScale = scale
	local direction
	local offset = {
		y = 0,
		x = 0
	}

	if targetInfo then
		if telegraphData.creatureDirection and targetInfo.direction then
			direction = targetInfo.direction
		end

		if targetInfo.offset then
			offset.x = offset.x + targetInfo.offset.x
			offset.y = offset.y + targetInfo.offset.y
		end
	end

	direction = direction or telegraphData.direction

	if direction and telegraphData.directionOffset then
		telegraphPos = Position.getNextPosition(telegraphPos, direction, telegraphData.directionOffset)
	end

	if not telegraphInfo.ignoreScale then
		if widthScale < 1 then
			width = width * scale
		end

		if heightScale < 1 then
			height = height * scale
		end
	end

	local pos = modules.game_interface.getMapPanel():transformPositionTo2D(telegraphPos, true)

	pos.x = pos.x + cfg.tilePixels / 2
	pos.y = pos.y + cfg.tilePixels / 2

	if offset.x ~= 0 then
		pos.x = pos.x + offset.x
	end

	if offset.y ~= 0 then
		pos.y = pos.y + offset.y
	end

	imageWidget:setSize({
		width = width,
		height = height
	})
	widget:moveCenter(pos)
end

function GameTelegraph:rotateBehaviour(telegraphData, telegraphInfo, targetInfo, timeLeft, firstTime)
	local widget = telegraphData.widget
	local telegraphPos = telegraphData.pos
	local width = telegraphData.width * cfg.tilePixels + 1
	local height = telegraphData.height * cfg.tilePixels + 1
	local elapsed = telegraphData.duration - timeLeft
	local scale = math.min(1, elapsed / 500)
	local widthScale = scale
	local heightScale = scale
	local direction
	local offset = {
		y = 0,
		x = 0
	}

	if targetInfo then
		if telegraphData.creatureDirection and targetInfo.direction then
			direction = targetInfo.direction
		end

		if targetInfo.offset then
			offset.x = offset.x + targetInfo.offset.x
			offset.y = offset.y + targetInfo.offset.y
		end
	end

	direction = direction or telegraphData.direction

	if direction and telegraphData.directionOffset then
		telegraphPos = Position.getNextPosition(telegraphPos, direction, telegraphData.directionOffset)
	end

	if telegraphInfo.centered then
		if widthScale < 1 then
			width = width * scale
		end

		if heightScale < 1 then
			height = height * scale
		end
	end

	local pos = modules.game_interface.getMapPanel():transformPositionTo2D(telegraphPos, true)

	pos.x = pos.x + cfg.tilePixels / 2
	pos.y = pos.y + cfg.tilePixels / 2

	if direction then
		if not telegraphData.centered then
			if direction == Directions.North then
				pos.x = pos.x - width / 2
				pos.y = pos.y - height / 2 - cfg.tilePixels / 2
			elseif direction == Directions.East then
				pos.x = pos.x - width / 2 + cfg.tilePixels / 2
				pos.y = pos.y - height / 2
			elseif direction == Directions.South then
				pos.x = pos.x - width / 2
				pos.y = pos.y - cfg.tilePixels / 2
			elseif direction == Directions.West then
				pos.x = pos.x - width / 2 - cfg.tilePixels / 2
				pos.y = pos.y - height / 2
			end
		else
			pos.x = pos.x - width / 2
			pos.y = pos.y - height / 2
		end

		widget:setRotation(direction * 90)
	end

	if offset.x ~= 0 then
		pos.x = pos.x + offset.x
	end

	if offset.y ~= 0 then
		pos.y = pos.y + offset.y
	end

	local opacity = math.min(1, elapsed / (telegraphData.duration * 0.25))

	widget:setRect({
		x = pos.x,
		y = pos.y,
		width = width,
		height = height
	})
end

function GameTelegraph:directionalExtension(telegraphData, telegraphInfo, targetInfo, timeLeft)
	local widget = telegraphData.widget
	local imageWidget = widget:getChildById("main_image")
	local secondaryImageWidget = widget:getChildById("secondary_image")

	if not imageWidget or not secondaryImageWidget then
		return
	end

	local telegraphPos = telegraphData.pos
	local margin = telegraphInfo.margin or 0
	local width = telegraphData.widgetWidth
	local height = telegraphData.widgetHeight
	local elapsed = telegraphData.duration - timeLeft
	local elapsedPercent = math.min(1, elapsed / (telegraphData.duration - cfg.completeDelay))
	local direction
	local offset = {
		y = 0,
		x = 0
	}

	if targetInfo then
		if telegraphData.creatureDirection and targetInfo.direction then
			direction = targetInfo.direction
		end

		if targetInfo.offset then
			offset.x = offset.x + targetInfo.offset.x
			offset.y = offset.y + targetInfo.offset.y
		end
	end

	direction = direction or telegraphData.direction

	if direction and telegraphData.directionOffset then
		telegraphPos = Position.getNextPosition(telegraphPos, direction, telegraphData.directionOffset)
	end

	local pos = modules.game_interface.getMapPanel():transformPositionTo2D(telegraphPos, true)

	pos.x = pos.x + cfg.tilePixels / 2
	pos.y = pos.y + cfg.tilePixels / 2

	if direction then
		if not telegraphData.widgetDirectionOffset then
			telegraphData.widgetDirectionOffset = {}
		end

		local widgetOffset = telegraphData.widgetDirectionOffset[direction]

		if not widgetOffset then
			widgetOffset = {
				y = 0,
				x = 0
			}

			if not telegraphData.centered then
				if direction == Directions.North then
					widgetOffset.x = widgetOffset.x - margin
					widgetOffset.y = widgetOffset.y - height / 2 + cfg.tilePixels / 2 + 1
				elseif direction == Directions.East then
					widgetOffset.x = widgetOffset.x + height / 2 - cfg.tilePixels / 2 - margin + 1
					widgetOffset.y = widgetOffset.y - margin + 1
				elseif direction == Directions.South then
					widgetOffset.x = widgetOffset.x + margin - 1
					widgetOffset.y = widgetOffset.y + height / 2 - cfg.tilePixels / 2 - margin / 2
				elseif direction == Directions.West then
					widgetOffset.x = widgetOffset.x - height / 2 + cfg.tilePixels / 2 + 1
					widgetOffset.y = widgetOffset.y + margin - 1
				end
			else
				widgetOffset.x = widgetOffset.x - width / 2
				widgetOffset.y = widgetOffset.y - height / 2
			end

			telegraphData.widgetDirectionOffset[direction] = widgetOffset
		end

		offset.x = offset.x + widgetOffset.x
		offset.y = offset.y + widgetOffset.y

		widget:setRotation(direction * 90)
	end

	if offset.x ~= 0 then
		pos.x = pos.x + offset.x
	end

	if offset.y ~= 0 then
		pos.y = pos.y + offset.y
	end

	widget:moveCenter(pos)

	local marginTop = math.floor((1 - elapsedPercent) * height)

	if not telegraphData.imageWidthFactor then
		telegraphData.imageWidthFactor = telegraphInfo.imageWidth / telegraphData.widgetWidth
	end

	if not telegraphData.imageHeightFactor then
		telegraphData.imageHeightFactor = math.floor(telegraphInfo.imageHeight / telegraphData.widgetHeight)
	end

	if not telegraphData.imageMarginTop or telegraphData.imageMarginTop ~= marginTop then
		telegraphData.imageMarginTop = marginTop

		if elapsedPercent >= 1 then
			imageWidget:setMarginTop(0)
			imageWidget:setImageClip({
				y = 0,
				x = 0,
				width = telegraphInfo.imageWidth,
				height = telegraphInfo.imageHeight
			})
			secondaryImageWidget:setVisible(false)
		else
			imageWidget:setMarginTop(marginTop)

			local clipHeight = telegraphInfo.imageHeight - marginTop * telegraphData.imageHeightFactor

			imageWidget:setImageClip({
				x = 0,
				y = telegraphInfo.imageHeight - clipHeight,
				width = telegraphInfo.imageWidth,
				height = clipHeight
			})
			secondaryImageWidget:setVisible(true)
			secondaryImageWidget:setMarginBottom(height - marginTop)
			secondaryImageWidget:setImageClip({
				y = 0,
				x = 0,
				width = telegraphInfo.imageWidth,
				height = telegraphInfo.imageHeight - clipHeight
			})
		end
	end
end

function GameTelegraph:centerExtension(telegraphData, telegraphInfo, targetInfo, timeLeft)
	local widget = telegraphData.widget
	local imageWidget = widget:getChildById("main_image")
	local secondaryImageWidget = widget:getChildById("secondary_image")

	if not imageWidget or not secondaryImageWidget then
		return
	end

	local telegraphPos = telegraphData.pos
	local margin = telegraphInfo.margin or 0
	local width = telegraphData.widgetWidth
	local height = telegraphData.widgetHeight
	local elapsed = telegraphData.duration - timeLeft
	local elapsedPercent = math.min(1, elapsed / (telegraphData.duration - cfg.completeDelay))
	local direction
	local offset = {
		y = 0,
		x = 0
	}

	if targetInfo then
		if telegraphData.creatureDirection and targetInfo.direction then
			direction = targetInfo.direction
		end

		if targetInfo.offset then
			offset.x = offset.x + targetInfo.offset.x
			offset.y = offset.y + targetInfo.offset.y
		end
	end

	direction = direction or telegraphData.direction

	if direction and telegraphData.directionOffset then
		telegraphPos = Position.getNextPosition(telegraphPos, direction, telegraphData.directionOffset)
	end

	local pos = modules.game_interface.getMapPanel():transformPositionTo2D(telegraphPos, true)

	pos.x = pos.x + cfg.tilePixels / 2 - 1
	pos.y = pos.y + cfg.tilePixels / 2 - 1

	if offset.x ~= 0 then
		pos.x = pos.x + offset.x
	end

	if offset.y ~= 0 then
		pos.y = pos.y + offset.y
	end

	widget:moveCenter(pos)

	local scale = elapsedPercent

	if not telegraphData.lastScale or telegraphData.lastScale ~= scale then
		telegraphData.lastScale = scale

		if elapsedPercent >= 1 then
			imageWidget:setSize({
				width = telegraphData.widgetWidth,
				height = telegraphData.widgetHeight
			})
		else
			secondaryImageWidget:setVisible(true)
			imageWidget:setSize({
				width = telegraphData.widgetWidth * scale,
				height = telegraphData.widgetHeight * scale
			})
		end
	end
end

function GameTelegraph:updateTelegraphData(telegraphData, currentTime, firstTime)
	currentTime = currentTime or g_clock.millis()

	local timeDiff = currentTime - telegraphData.timeStart
	local timeLeft = telegraphData.duration - timeDiff

	if timeLeft <= 0 then
		if telegraphData.widget then
			telegraphData.widget:destroy()

			telegraphData.widget = nil
		end

		return false
	end

	local widget = telegraphData.widget

	if not widget or widget:isDestroyed() then
		return false
	end

	local info = cfg.infos[telegraphData.id]

	if not info then
		widget:destroy()

		return false
	end

	local targetInfo

	if telegraphData.targetId then
		local creature = g_map.getCreatureById(telegraphData.targetId)

		if not creature then
			widget:destroy()

			return false
		end

		telegraphData.pos = creature:getPosition()
		targetInfo = {
			offset = creature:isWalking() and creature:getWalkOffset() or nil,
			direction = creature:getDirection()
		}
	end

	local behaviour = telegraphData.behaviour or info.behaviour or cfg.defaultBehaviour
	local callback = behaviourCallbacks[behaviour]

	if not callback then
		widget:destroy()

		return false
	end

	callback(self, telegraphData, info, targetInfo, timeLeft, firstTime)

	return true
end

function GameTelegraph:addTelegraph(data)
	local info = cfg.infos[data.id]

	if not info then
		return
	end

	if not info.name then
		return
	end

	local pos = data.pos

	if not pos then
		return
	end

	local width = data.width or info.width
	local height = data.height or info.height

	if not width or not height then
		return
	end

	local widget = g_ui.createWidget("BasicWidget")

	if not widget then
		return
	end

	local margin = info.margin or 0
	local widgetWidth = width * cfg.tilePixels + margin * 2
	local widgetHeight = height * cfg.tilePixels + margin * 2

	if info.marginPercent then
		widgetWidth = widgetWidth + math.ceil(widgetWidth * info.marginPercent) * 2 + 1
		widgetHeight = widgetHeight + math.ceil(widgetHeight * info.marginPercent) * 2 + 1
	end

	widget:setSize({
		width = widgetWidth,
		height = widgetHeight
	})

	local imageWidget = widget:getChildById("main_image")
	local secondaryImageWidget = widget:getChildById("secondary_image")

	if not imageWidget then
		return
	end

	imageWidget:setImageSource(cfg.folderPath .. info.name .. ".png")
	secondaryImageWidget:setImageSource(cfg.folderPath .. info.name .. ".png")
	secondaryImageWidget:setVisible(false)
	secondaryImageWidget:setOpacity(0.4)

	local creatureDirection

	if data.creatureDirection ~= nil then
		creatureDirection = data.creatureDirection
	else
		creatureDirection = info.creatureDirection
	end

	local telegraphData = {
		widget = widget,
		timeStart = g_clock.millis(),
		duration = data.duration,
		pos = pos,
		id = data.id,
		width = width,
		height = height,
		widgetWidth = widgetWidth,
		widgetHeight = widgetHeight,
		targetId = data.targetId,
		creatureDirection = creatureDirection,
		direction = data.direction or info.direction,
		directionOffset = data.directionOffset or info.directionOffset,
		centered = data.centered or info.centered
	}

	self:updateTelegraphData(telegraphData, nil, true)

	if not telegraphData.widget then
		return
	end

	local floor = pos.z

	if not GameTelegraph.floorTelegraphData[floor] then
		GameTelegraph.floorTelegraphData[floor] = {}
	end

	table.insert(GameTelegraph.floorTelegraphData[floor], telegraphData)
	g_map.addTelegraphWidget(telegraphData.widget, floor)
end

function GameTelegraph.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= cfg.opcode then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if not data or type(data) ~= "table" then
		return
	end

	GameTelegraph:addTelegraph(data)
end

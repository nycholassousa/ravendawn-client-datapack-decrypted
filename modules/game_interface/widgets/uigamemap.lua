-- chunkname: @/modules/game_interface/widgets/uigamemap.lua

UIGameMap = extends(UIMap, "UIGameMap")

function UIGameMap.create()
	local gameMap = UIGameMap.internalCreate()

	gameMap:setKeepAspectRatio(true)
	gameMap:setVisibleDimension({
		height = 11,
		width = 15
	})
	gameMap:setDrawLights(true)

	gameMap.markedThing = nil
	gameMap.blockNextRelease = 0
	gameMap.canToggleChat = true

	return gameMap
end

function UIGameMap:onDestroy()
	if self.updateMarkedCreatureEvent then
		removeEvent(self.updateMarkedCreatureEvent)
	end
end

function UIGameMap:setToggleChat(value)
	self.canToggleChat = value
end

function UIGameMap:markThing(thing, color)
	if self.markedThing then
		self.markedThing:setMarked("")
	end
end

function UIGameMap:onDragEnter(mousePos)
	if not self.canDragEnter then
		return false
	end

	local tile = self:getTile(mousePos)

	if not tile then
		return false
	end

	local thing = tile:getTopCreature()

	if not thing then
		return false
	end

	self.currentDragThing = thing

	g_mouse.pushCursor("target")

	self.allowNextRelease = false

	return true
end

function UIGameMap:onDragLeave(droppedWidget, mousePos)
	self.currentDragThing = nil
	self.hoveredWho = nil

	g_mouse.popCursor("target")

	return true
end

function UIGameMap:onDrop(widget, mousePos)
	if not self:canAcceptDrop(widget, mousePos) then
		return false
	end

	local tile = self:getTile(mousePos)

	if not tile then
		return false
	end

	local thing = widget.currentDragThing

	if thing:isItem() then
		modules.game_interface.removeConfirm(thing)
	elseif self.canDragEnter and thing:isCreature() then
		g_game.move(thing, tile:getPosition(), 1)
	end

	return true
end

function UIGameMap:onMouseMove(mousePos, mouseMoved)
	self.mousePos = mousePos

	if self.landSize then
		self:onLandTiles()
	end

	if self.houseModel then
		self:onHouseTiles()
	end

	if self.houseRoomModel then
		self:onHouseRoomTiles()
	end

	if self.farmModel then
		self:onFarmTiles()
	end

	if self.itemModel then
		self:onItemTiles()
	end

	if self.decorModel then
		self:onDecorTiles()
	end

	modules.game_interface.updateMouseAttackCandidate()

	return false
end

function UIGameMap:onDragMove(mousePos, mouseMoved)
	self.mousePos = mousePos

	if self.landSize then
		self:onLandTiles()
	end

	if self.houseModel then
		self:onHouseTiles()
	end

	if self.houseRoomModel then
		self:onHouseRoomTiles()
	end

	if self.farmModel then
		self:onFarmTiles()
	end

	if self.itemModel then
		self:onItemTiles()
	end

	return false
end

function UIGameMap:updateMarkedCreature()
	self.updateMarkedCreatureEvent = scheduleEvent(function()
		self:updateMarkedCreature()
	end, 100)

	if self.mousePos and g_game.isOnline() then
		self.markingMouseRelease = true

		self:onMouseRelease(self.mousePos, MouseRightButton)

		self.markingMouseRelease = false
	end
end

function UIGameMap:onMousePress()
	if not self:isDragging() and self.blockNextRelease < g_clock.millis() then
		self.allowNextRelease = true
		self.markingMouseRelease = false
	end
end

function UIGameMap:blockNextMouseRelease(postAction)
	self.allowNextRelease = false

	if postAction then
		self.blockNextRelease = g_clock.millis() + 150
	else
		self.blockNextRelease = g_clock.millis() + 250
	end
end

function UIGameMap:onMouseRelease(mousePosition, mouseButton)
	if not self.allowNextRelease and not self.markingMouseRelease then
		return true
	end

	local autoWalkPos = self:getPosition(mousePosition)
	local positionOffset = self:getPositionOffset(mousePosition)

	if not autoWalkPos then
		if self.markingMouseRelease then
			self:markThing(nil)
		end

		return false
	end

	local localPlayerPos = g_game.getLocalPlayer():getPosition()

	if autoWalkPos.z ~= localPlayerPos.z then
		local dz = autoWalkPos.z - localPlayerPos.z

		autoWalkPos.x = autoWalkPos.x + dz
		autoWalkPos.y = autoWalkPos.y + dz
		autoWalkPos.z = localPlayerPos.z
	end

	local lookThing, useThing, creatureThing, multiUseThing, attackCreature
	local tile = self:getTile(mousePosition)

	if tile then
		lookThing = tile:getTopLookThingEx(positionOffset)
		useThing = tile:getTopUseThing()
		creatureThing = tile:getTopCreatureEx(positionOffset)
	end

	local autoWalkTile = g_map.getTile(autoWalkPos)

	if autoWalkTile then
		attackCreature = autoWalkTile:getTopCreatureEx(positionOffset)
	end

	if self.markingMouseRelease then
		if attackCreature then
			self:markThing(attackCreature, "yellow")
		elseif creatureThing then
			self:markThing(creatureThing, "yellow")
		elseif useThing and not useThing:isGround() then
			self:markThing(useThing, "yellow")
		elseif lookThing and not lookThing:isGround() then
			self:markThing(lookThing, "yellow")
		else
			self:markThing(nil, "")
		end

		return
	end

	local ret = false

	if g_game.isInShip() then
		ret = g_ships.processMouseAction(mousePosition, mouseButton, autoWalkPos, lookThing, useThing, creatureThing, attackCreature, self.markingMouseRelease)

		if ret then
			self.allowNextRelease = false
		end

		return ret
	end

	ret = modules.game_interface.processMouseAction(mousePosition, mouseButton, autoWalkPos, lookThing, useThing, creatureThing, attackCreature, self.markingMouseRelease)

	if ret then
		self.allowNextRelease = false
	end

	if tile and mouseButton == MouseRightButton then
		local dirtItem = tile:getTreeStandUseThing()

		if dirtItem then
			self.allowNextRelease = false
			ret = true

			g_game.use(dirtItem)
		end
	end

	return ret
end

function UIGameMap:onTouchRelease(mousePosition, mouseButton)
	if mouseButton ~= MouseTouch then
		return self:onMouseRelease(mousePosition, mouseButton)
	end
end

function UIGameMap:canAcceptDrop(widget, mousePos)
	if not widget or not widget.currentDragThing then
		return false
	end

	local children = rootWidget:recursiveGetChildrenByPos(mousePos)

	for i = 1, #children do
		local child = children[i]

		if child == self then
			return true
		elseif not child:isPhantom() then
			return false
		end
	end

	error("Widget " .. self:getId() .. " not in drop list.")

	return false
end

function LocalPlayer:onPositionChange(newPos, oldPos)
	if g_game.isModifyingLand() or g_game.isPlacingHouse() then
		local mapPanel = modules.game_interface.getMapPanel()

		if mapPanel then
			mapPanel:onMouseMove(mapPanel.mousePos)
		end
	end
end

function UIGameMap:releaseLandTiles()
	if #self.landTiles == 0 then
		return
	end

	for _, tile in ipairs(self.landTiles) do
		tile:setLand(false)
	end

	self.landTiles = {}
end

function UIGameMap:getLandTiles(tile)
	local tiles = {}
	local pos = tile and (tile:isLandPlot() or tile:getProperty() == PropertyOwn) and tile:getPosition()

	if not pos then
		return tiles
	end

	local fromX, toX = pos.x, pos.x
	local fromY, toY = pos.y, pos.y

	for x = 1, 50 do
		local tile = g_map.getTile({
			x = pos.x - x,
			y = pos.y,
			z = pos.z
		})

		if not tile or not tile:isLandPlot() and tile:getProperty() ~= PropertyOwn then
			break
		end

		fromX = pos.x - x
	end

	for x = 1, 50 do
		local tile = g_map.getTile({
			x = pos.x + x,
			y = pos.y,
			z = pos.z
		})

		if not tile or not tile:isLandPlot() and tile:getProperty() ~= PropertyOwn then
			break
		end

		toX = pos.x + x
	end

	for y = 1, 50 do
		local tile = g_map.getTile({
			x = pos.x,
			y = pos.y - y,
			z = pos.z
		})

		if not tile or not tile:isLandPlot() and tile:getProperty() ~= PropertyOwn then
			break
		end

		fromY = pos.y - y
	end

	for y = 1, 50 do
		local tile = g_map.getTile({
			x = pos.x,
			y = pos.y + y,
			z = pos.z
		})

		if not tile or not tile:isLandPlot() and tile:getProperty() ~= PropertyOwn then
			break
		end

		toY = pos.y + y
	end

	for y = fromY, toY do
		for x = fromX, toX do
			local tile = g_map.getTile({
				x = x,
				y = y,
				z = pos.z
			})

			if tile then
				local tileType = tile:getTileType()

				if tileType >= TileType.House and tileType <= TileType.Room then
					return {}
				end

				table.insert(tiles, tile)
			end
		end
	end

	self.landCenter = {
		x = fromX + (toX - fromX) / 2,
		y = fromY + (toY - fromY) / 2,
		z = pos.z
	}

	return tiles
end

function UIGameMap:onLandTiles(force)
	if not g_game.isModifyingLand() then
		return
	end

	self.landTiles = self.landTiles or {}

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self.landTile

	if not g_game.isPlacingHouse() or not tile then
		tile = self:getTile(self.mousePos)

		if not tile then
			return
		end
	end

	if g_game.isRavenQuest() and tile:getProperty() ~= PropertyOwn or not g_game.isRavenQuest() and not tile:isLandPlot() then
		self:releaseLandTiles()

		self.canPlaceHouse = false

		return
	end

	position = tile:getPosition()

	if not self.landTile or not Position.equals(position, self.landTile:getPosition()) or force then
		if self.landTile then
			self:releaseLandTiles()
		end

		self.landTile = tile
		self.landTiles = self:getLandTiles(tile)

		if #self.landTiles < 10 then
			self:releaseLandTiles()

			return
		end

		self.canPlaceHouse = true

		local landModifyColor = "green"

		for _, landTile in ipairs(self.landTiles) do
			landTile:setLand(true)
		end

		self.landSize = tile:getLandSize()

		local houseModels = {
			[10] = HouseModels.SmallShack,
			[12] = HouseModels.MediumShack,
			[15] = HouseModels.LargeShack,
			[22] = HouseModels.StrongholdShack,
			[30] = HouseModels.FortStone
		}

		self.houseModelId = houseModels[self.landSize]

		g_game.setModifyLandColor(landModifyColor)
	end
end

function UIGameMap:releaseHouseTiles()
	if not self.houseTiles or #self.houseTiles == 0 then
		return
	end

	for _, tile in ipairs(self.houseTiles) do
		tile:resetHouseItems()
	end

	self.houseTiles = {}
end

function UIGameMap:onHouseTiles(force)
	if not g_game.isPlacingHouse() or not self.houseModel then
		return
	end

	self.houseTiles = self.houseTiles or {}

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self:getTile(self.mousePos)

	if not tile then
		return
	end

	position = tile:getPosition()

	if not self.houseTile or not Position.equals(position, self.houseTile:getPosition()) or force then
		if self.houseTile then
			self:releaseHouseTiles()
		end

		self.houseTile = tile
		self.canPlaceHouse = true

		local landModifyColor = "green"

		for _, tmpTile in ipairs(self.houseModel) do
			local newTile = g_map.getTile({
				x = position.x + tmpTile.position.x,
				y = position.y + tmpTile.position.y,
				z = position.z
			})

			if newTile then
				table.insert(self.houseTiles, newTile)

				if not newTile:isLandModify() or not newTile:isLandPlot() and newTile:getProperty() ~= PropertyOwn then
					self.canPlaceHouse = false
					landModifyColor = "red"
				end

				for i = 1, #tmpTile.items do
					newTile:addHouseItem(Item.create(tmpTile.items[i]))
				end
			end
		end

		g_game.setModifyLandColor(landModifyColor)
	end
end

function UIGameMap:releaseRoomTiles()
	if not self.houseRoomTiles or #self.houseRoomTiles == 0 then
		return
	end

	for _, tile in ipairs(self.houseRoomTiles) do
		tile:resetHouseItems()
	end

	self.houseRoomTiles = {}
end

function UIGameMap:onHouseRoomTiles()
	if not g_game.isPlacingHouseRoom() or not self.houseRoomModel then
		return
	end

	self.houseRoomTiles = self.houseRoomTiles or {}

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self:getTile(self.mousePos)

	if not tile then
		return
	end

	position = tile:getPosition()

	if not self.houseRoomTile or not Position.equals(position, self.houseRoomTile:getPosition()) then
		if self.houseRoomTile then
			self:releaseRoomTiles()
		end

		self.houseRoomTile = tile
		self.canPlaceHouseRoom = true

		local roomModifyColor = "green"
		local player = g_game.getLocalPlayer()
		local houseFloor = g_game.getHouseFloor()
		local playerPos = player:getPosition()
		local offset = houseFloor == -1 and 0 or playerPos.z - houseFloor

		for _, tmpTile in ipairs(self.houseRoomModel) do
			local newTile = g_map.getTile({
				x = position.x + tmpTile.position.x + offset,
				y = position.y + tmpTile.position.y + offset,
				z = position.z
			})

			if newTile then
				table.insert(self.houseRoomTiles, newTile)

				if tmpTile.position.isRoomTile and not newTile:isHouseRoom() then
					self.canPlaceHouseRoom = false
					roomModifyColor = "red"
				end

				for i = 1, #tmpTile.items do
					local item = Item.create(tmpTile.items[i])

					if item then
						newTile:addHouseItem(item)
					end
				end
			end
		end

		g_game.setModifyRoomColor(roomModifyColor)
	end
end

function UIGameMap:releaseFarmTiles()
	if not self.farmTiles or #self.farmTiles == 0 then
		return
	end

	for _, tile in ipairs(self.farmTiles) do
		tile:resetHouseItems()
	end

	self.farmTiles = {}
end

function UIGameMap:onFarmTiles(force)
	if not g_game.isPlacingHouse() or not self.farmModel then
		return
	end

	self.farmTiles = self.farmTiles or {}

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self:getTile(self.mousePos)

	if not tile then
		return
	end

	position = tile:getPosition()

	local houseFloor = g_game.getHouseFloor()
	local diff = houseFloor == -1 and 0 or self:getCameraPosition().z - houseFloor

	position.x = position.x + diff
	position.y = position.y + diff
	tile = g_map.getOrCreateTile(position)

	if not tile then
		return
	end

	if not self.farmTile or not Position.equals(position, self.farmTile:getPosition()) or force then
		if self.farmTile then
			self:releaseFarmTiles()
		end

		self.farmTile = tile
		self.canPlaceFarm = not force

		local color = not force and "green" or "red"
		local items = {}

		for _, tmpTile in ipairs(self.farmModel) do
			local pos = {
				x = position.x + tmpTile.position.x,
				y = position.y + tmpTile.position.y,
				z = position.z
			}
			local newTile = g_map.getTile(pos)

			if newTile then
				table.insert(self.farmTiles, newTile)

				for i = 1, #tmpTile.items do
					local item = Item.create(tmpTile.items[i])

					if item then
						newTile:addHouseItem(item)
						table.insert(items, item)
					end
				end
			end
		end

		local from = {
			x = position.x + self.farmModel.from.x,
			y = position.y + self.farmModel.from.y,
			z = position.z
		}
		local to = {
			x = position.x + self.farmModel.to.x,
			y = position.y + self.farmModel.to.y,
			z = position.z
		}

		if not GameHouse:canPlaceType(position, from, to, self.farmModel.stackingType) then
			self.canPlaceFarm = false
			color = "red"
		end

		for _, item in ipairs(items) do
			item:setMarked(color)
		end
	end
end

function UIGameMap:releaseMarkedItem()
	if not gameMapPanel.lastMarkedItem then
		return
	end

	if gameMapPanel.lastMarkedItem then
		gameMapPanel.lastMarkedItem:setMarked("")

		gameMapPanel.lastMarkedItem = nil
	end
end

function UIGameMap:onItemTiles()
	if not g_game.isPlacingHouse() or not self.itemModel then
		return
	end

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self:getTile(self.mousePos)

	if not tile then
		return
	end

	position = tile:getPosition()

	if not self.itemTile or not Position.equals(position, self.itemTile:getPosition()) then
		if self.itemTile then
			self:releaseMarkedItem()
		end

		self.itemTile = tile
		self.canRemoveItem = true

		local color = "green"
		local items = {}
		local newTile = g_map.getTile({
			x = position.x,
			y = position.y,
			z = position.z
		})

		if newTile then
			local item = newTile:getTopUseThing()

			if not item or not item:isItem() or item:isGround() then
				return
			end

			if not GameHouse:canRemoveItem(newTile) then
				self.canRemoveItem = false
				color = "red"
			end

			gameMapPanel.lastMarkedItem = item
		end

		if gameMapPanel.lastMarkedItem then
			gameMapPanel.lastMarkedItem:setMarked(color)
		end
	end
end

function UIGameMap:releaseDecorTiles()
	if not self.decorTiles or #self.decorTiles == 0 then
		return
	end

	for _, tile in ipairs(self.decorTiles) do
		tile:resetHouseItems()
	end

	self.decorTiles = {}
end

function UIGameMap:onDecorTiles(force)
	if not g_game.isPlacingHouse() or not self.decorModel then
		return
	end

	self.decorTiles = self.decorTiles or {}

	local position = self:getPosition(self.mousePos)

	if not position then
		return
	end

	local tile = self:getTile(self.mousePos)

	if not tile then
		return
	end

	position = tile:getPosition()

	if not self.decorTile or not Position.equals(position, self.decorTile:getPosition()) or force then
		if self.decorTile then
			self:releaseDecorTiles()
		end

		self.decorTile = tile
		self.canPlaceDecor = not force

		local color = not force and "green" or "red"
		local items = {}
		local player = g_game.getLocalPlayer()
		local houseFloor = g_game.getHouseFloor()
		local playerPos = player:getPosition()
		local offset = houseFloor == -1 and 0 or playerPos.z - houseFloor

		for _, tmpTile in ipairs(self.decorModel) do
			local newTile = g_map.getTile({
				x = position.x + tmpTile.position.x + offset,
				y = position.y + tmpTile.position.y + offset,
				z = position.z
			})

			if newTile then
				table.insert(self.decorTiles, newTile)

				if #tmpTile.items == 1 then
					local item = Item.create(tmpTile.items[1])

					if item and item:getThingType():isHangable() then
						if self.canPlaceDecor and not GameHouse:canPlaceDecor(newTile, item) then
							self.canPlaceDecor = false
							color = "red"
						end
					elseif self.canPlaceDecor and not GameHouse:canPlaceDecor(newTile) then
						self.canPlaceDecor = false
						color = "red"
					end
				elseif self.canPlaceDecor and not GameHouse:canPlaceDecor(newTile) then
					self.canPlaceDecor = false
					color = "red"
				end

				for i = 1, #tmpTile.items do
					local item = Item.create(tmpTile.items[i])

					newTile:addHouseItem(item)
					table.insert(items, item)
				end
			end
		end

		for _, item in ipairs(items) do
			item:setMarked(color)
		end
	end
end

-- chunkname: @/modules/gamelib/thing.lua

ThingCategoryItem = 0
ThingCategoryCreature = 1
ThingCategoryEffect = 2
ThingCategoryMissile = 3
ThingInvalidCategory = 4
ThingLastCategory = ThingInvalidCategory
ThingAttrGround = 0
ThingAttrGroundBorder = 1
ThingAttrOnBottom = 2
ThingAttrOnTop = 3
ThingAttrContainer = 4
ThingAttrStackable = 5
ThingAttrForceUse = 6
ThingAttrMultiUse = 7
ThingAttrWritable = 8
ThingAttrWritableOnce = 9
ThingAttrFluidContainer = 10
ThingAttrSplash = 11
ThingAttrNotWalkable = 12
ThingAttrNotMoveable = 13
ThingAttrBlockProjectile = 14
ThingAttrNotPathable = 15
ThingAttrPickupable = 16
ThingAttrHangable = 17
ThingAttrHookSouth = 18
ThingAttrHookEast = 19
ThingAttrRotateable = 20
ThingAttrLight = 21
ThingAttrDontHide = 22
ThingAttrTranslucent = 23
ThingAttrDisplacement = 24
ThingAttrElevation = 25
ThingAttrLyingCorpse = 26
ThingAttrAnimateAlways = 27
ThingAttrMinimapColor = 28
ThingAttrLensHelp = 29
ThingAttrFullGround = 30
ThingAttrLook = 31
ThingAttrCloth = 32
ThingAttrMarket = 33
ThingAttrNoMoveAnimation = 253
ThingAttrChargeable = 254
ThingLastAttr = 255
SpriteMaskRed = 1
SpriteMaskGreen = 2
SpriteMaskBlue = 3
SpriteMaskYellow = 4

local replaceIds = {
	[35685] = {
		6900,
		true
	},
	[6900] = {
		35685,
		false
	},
	[35684] = {
		6892,
		true
	},
	[6892] = {
		35684,
		false
	}
}
local soundEffects = {
	[6892] = 1970875887,
	[6900] = 1970875887,
	[35684] = 2061738921,
	[35685] = 2061738921
}

UniqueItemClientIds = {}
UniqueItemNames = {}

function Item:onAppearTryReplace()
	local pos = Position.tostring(self:getPosition())
	local savedState = savedPositionToReplaceIds[pos]

	if savedState then
		self:setId(savedState)
	else
		local thingType = g_things.getThingType(self:getId(), ThingCategoryItem)

		if thingType then
			local replaceId = thingType:getReplaceId()

			if replaceId == 0 then
				return
			end

			self:setId(replaceId)
		end
	end

	if self:setReplaced(true) then
		self:setInteractable(true)

		savedPositionToReplaceIds[pos] = self:getId()
	end
end

function Item:setReplaced(state)
	local replace = replaceIds[self:getId()]

	if not replace then
		return false
	end

	self.__replaced = state

	self:setReplaceId(replace[1])

	self.__replaceIsBlockable = replace[2]

	return true
end

function Item:isReplaced()
	return self.__replaced
end

function Item:onReplacedUse(force, id, preventBlockable)
	if not self:isReplaced() then
		return
	end

	local pos, playerPos = self:getPosition(), g_game.getLocalPlayer():getPosition()

	if not force and (Position.equals(pos, playerPos) or not Position.isInRange(pos, playerPos, 1, 1)) or id and id ~= self:getId() then
		return
	end

	if self.__replaceIsBlockable then
		if preventBlockable then
			return
		end

		local tile = self:getTile()

		if tile and tile:getTopCreature() then
			return
		end
	end

	self:setId(self.__useTransformId)

	local replace = replaceIds[self:getId()]

	self.__useTransformId = replace[1]
	self.__replaceIsBlockable = replace[2]
	savedPositionToReplaceIds[Position.tostring(self:getPosition())] = self:getId()

	local sound = soundEffects[self:getId()]

	if sound then
		g_sound.play(sound)
	end
end

function Item:getReplaceId()
	if not self:isReplaced() then
		return self:getId()
	end

	return self.__useTransformId or self:getId()
end

function Item:setReplaceId(id)
	if not self:isReplaced() then
		return
	end

	self.__originalId = self:getId()
	self.__useTransformId = id
end

function Item:canInfuse()
	return self:getTier() > 0 and self:getGrade() < ITEM_GRADE_LAST
end

function Item:isInfusionMaterial()
	local itemId = self:getId()

	return self:getTier() > 0 or itemId == 26554 or itemId == 33859 or itemId == 33858 or itemId == 43981 or itemId == 43980 or itemId == 43982
end

function Tile:getTreeStandUseThing()
	local treeStandCheckOffset = {
		{
			y = 1,
			x = 1,
			z = 0
		},
		{
			y = 1,
			x = 0,
			z = 0
		},
		{
			y = 0,
			x = 1,
			z = 0
		}
	}
	local position = self:getPosition()
	local tile = g_map.getTile(position)

	if not tile then
		return nil
	end

	for _, offset in pairs(treeStandCheckOffset) do
		local checkPosition = {
			x = position.x + offset.x,
			y = position.y + offset.y,
			z = position.z + offset.z
		}
		local checkTile = g_map.getTile(checkPosition)

		if checkTile then
			local checkItem = checkTile:getThingByClientId(33887)

			if checkItem then
				return checkTile:getTopUseThing()
			end
		end
	end

	return nil
end

Item.originalSetName = Item.setName

function Item:setName(name)
	local id = self:getId()

	UniqueItemClientIds[name] = id
	UniqueItemNames[id] = name

	self:originalSetName(name)
end

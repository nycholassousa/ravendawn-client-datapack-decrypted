-- chunkname: @/modules/gamelib/player.lua

PlayerStates = {
	Dazzled = 1024,
	Freezing = 512,
	Drowning = 256,
	Swords = 128,
	Haste = 64,
	Paralyze = 32,
	ManaShield = 16,
	Drunk = 8,
	Energy = 4,
	Burn = 2,
	Poison = 1,
	None = 0,
	Hungry = 65536,
	Bleeding = 32768,
	Pz = 16384,
	PzBlock = 8192,
	PartyBuff = 4096,
	Cursed = 2048
}
InventorySlotOther = 0
InventorySlotHead = 1
InventorySlotNeck = 2
InventorySlotBack = 3
InventorySlotBody = 4
InventorySlotRight = 5
InventorySlotLeft = 6
InventorySlotLeg = 7
InventorySlotFeet = 8
InventorySlotFingerLeft = 9
InventorySlotFingerRight = 10
InventorySlotAmmo = 11
InventorySlotPurse = 12
InventorySlotBack2 = 13
InventorySlotBack3 = 14
InventorySlotBack4 = 15
InventorySlotBack5 = 16
InventorySlotTrinket = 17
InventorySlotFishingRod = 18
InventorySlotFishingHook = 19
InventorySlotFirst = InventorySlotHead
InventorySlotLast = InventorySlotFishingHook

function Player:isPartyLeader()
	local shield = self:getShield()

	return shield == ShieldWhiteYellow or shield == ShieldYellow or shield == ShieldYellowSharedExp or shield == ShieldYellowNoSharedExpBlink or shield == ShieldYellowNoSharedExp
end

function Player:isPartyMember()
	local shield = self:getShield()

	return shield == ShieldWhiteYellow or shield == ShieldYellow or shield == ShieldYellowSharedExp or shield == ShieldYellowNoSharedExpBlink or shield == ShieldYellowNoSharedExp or shield == ShieldBlueSharedExp or shield == ShieldBlueNoSharedExpBlink or shield == ShieldBlueNoSharedExp or shield == ShieldBlue
end

function Player:isPartySharedExperienceActive()
	local shield = self:getShield()

	return shield == ShieldYellowSharedExp or shield == ShieldYellowNoSharedExpBlink or shield == ShieldYellowNoSharedExp or shield == ShieldBlueSharedExp or shield == ShieldBlueNoSharedExpBlink or shield == ShieldBlueNoSharedExp
end

function Player:isMounted()
	local outfit = self:getOutfit()

	return outfit.mount ~= nil and outfit.mount > 0
end

function Player:toggleMount()
	if g_game.getFeature(GamePlayerMounts) then
		local mount = not self:isMounted()

		g_game.setOutfitExtensions(mount and 1 or 0, -1, mount and -1 or 0)
	end
end

function Player:mount()
	if g_game.getFeature(GamePlayerMounts) then
		g_game.setOutfitExtensions(1, -1, -1)
	end
end

function Player:dismount()
	if g_game.getFeature(GamePlayerMounts) then
		g_game.setOutfitExtensions(0, -1, 0)
	end
end

function Player:hasAuraToggled()
	local outfit = self:getOutfit()

	return outfit.aura ~= nil and outfit.aura > 0
end

function Player:toggleAura()
	g_game.setOutfitExtensions(-1, not self:hasAuraToggled() and 1 or 0, -1)
end

function Player:aura()
	g_game.setOutfitExtensions(-1, 1, -1)
end

function Player:untoggleAura()
	g_game.setOutfitExtensions(-1, 0, -1)
end

function Player:isWagonToggled()
	local outfit = self:getOutfit()

	return outfit.wagonActive ~= nil and outfit.wagonActive > 0
end

function Player:toggleWagon()
	local wagon = not self:isWagonToggled()

	g_game.setOutfitExtensions(wagon and 1 or -1, -1, wagon and 1 or 0)
end

function Player:wagon()
	g_game.setOutfitExtensions(1, -1, 1)
end

function Player:untoggleWagon()
	g_game.setOutfitExtensions(-1, -1, 0)
end

function Player:getItem(itemId, subType)
	return g_game.findPlayerItem(itemId, subType or -1)
end

function Player:getItemsFromTable(items, itemId, subType, quality)
	local result = {}

	for _, item in ipairs(items) do
		if item and (not itemId or item:getId() == itemId) and (subType == -1 or item:getSubType() == subType) and (not quality or item:getQuality() == quality) then
			table.insert(result, item)
		end
	end

	return result
end

function Player:getItems(itemId, subType, quality, checkDepot)
	local subType = subType or -1

	if self.itemsCache then
		return self:getItemsFromTable(self.itemsCache, itemId, subType, quality)
	end

	local items = {}

	for i = InventorySlotFirst, InventorySlotLast do
		if i ~= InventorySlotPurse then
			local item = self:getInventoryItem(i)

			if item and (not itemId or item:getId() == itemId) and (subType == -1 or item:getSubType() == subType) and (not quality or item:getQuality() == quality) then
				table.insert(items, item)
			end
		end
	end

	for i, container in pairs(g_game.getContainers()) do
		local containerType = container:getType()

		if checkDepot or containerType == CONTAINER_TYPE_INVENTORY or containerType == CONTAINER_TYPE_QUEST then
			for j, item in pairs(container:getItems()) do
				if item and (not itemId or item:getId() == itemId) and (subType == -1 or item:getSubType() == subType) and (not quality or item:getQuality() == quality) then
					item.container = container

					table.insert(items, item)
				end
			end
		end
	end

	return items
end

function Player:getMatchingItems(compareItem)
	local items = {}
	local compareItemData = {
		tier = compareItem:getTier(),
		grade = compareItem:getGrade(),
		quality = compareItem:getQuality(),
		subType = compareItem:getSubType(),
		primaryStats = compareItem:getPrimaryStats(),
		secondaryStats = compareItem:getSecondaryStats(),
		craftingStats = compareItem:getCraftingStats(),
		itemId = compareItem:getId()
	}

	for _, item in pairs(g_game.getContainerByType(CONTAINER_TYPE_INVENTORY):getItems()) do
		local itemData = {
			tier = item:getTier(),
			grade = item:getGrade(),
			quality = item:getQuality(),
			subType = item:getSubType(),
			primaryStats = item:getPrimaryStats(),
			secondaryStats = item:getSecondaryStats(),
			craftingStats = item:getCraftingStats(),
			itemId = item:getId()
		}
		local matches = true

		for attr, value in pairs(compareItemData) do
			if attr == "primaryStats" or attr == "secondaryStats" or attr == "craftingStats" then
				if not table.equal(itemData[attr], value) then
					matches = false

					break
				end
			elseif itemData[attr] ~= value then
				matches = false

				break
			end
		end

		if matches then
			table.insert(items, item)
		end
	end

	return items
end

function Player:getItemsCount(itemId, quality, itemsTable)
	local items, count = nil, 0

	if itemsTable then
		items, count = self:getItemsFromTable(itemsTable, itemId), 0
	else
		items, count = self:getItems(itemId), 0
	end

	for i = 1, #items do
		if not quality or items[i]:getQuality() == quality then
			count = count + items[i]:getCount()
		end
	end

	return count
end

function Player:hasState(state, states)
	states = states or self:getStates()

	for i = 1, 32 do
		pow = math.pow(2, i - 1)

		if states < pow then
			break
		end

		local states = bit32.band(states, pow)

		if states == state then
			return true
		end
	end

	return false
end

function Player:getItemByUUID(uuid)
	for slot = InventorySlotFirst, InventorySlotLast do
		local item = self:getInventoryItem(slot)

		if item and item:getId() ~= 0 and item:getUUID() == uuid then
			return item
		end
	end

	for _, container in pairs(g_game.getContainers()) do
		local item = container:getItemByUUID(uuid)

		if item then
			return item
		end
	end

	return nil
end

function Player:isInCraftingArea(professionId)
	local pos = self:getPosition()

	if not pos then
		return
	end

	for profession, data in pairs(CraftingStations) do
		if profession == professionId then
			for _, station in pairs(data) do
				if Position.isInArea(pos, station.from, station.to) then
					return station
				end
			end
		end
	end

	if self.houseRooms then
		for houseId, rooms in pairs(self.houseRooms) do
			for roomIndex, roomData in pairs(rooms) do
				if roomData.profession == professionId and Position.isInArea(pos, roomData.area.from, roomData.area.to) then
					return roomData.area
				end
			end
		end
	end

	return nil
end

function Player:isInTutorialArea()
	return g_worldMap.image:getImageSource():find("tutorial", 1, true)
end

function Player:getBaseMaxHealth()
	return self:getStats(StatsMaxHealthBase)
end

function Player:getBaseMaxMana()
	return self:getStats(StatsMaxManaBase)
end

function Player:getEffectiveMaxHealth()
	return self:getStats(StatsMaxHealthEffective)
end

function Player:getEffectiveMaxMana()
	return self:getStats(StatsMaxManaEffective)
end

function Player:calculatePowerLimit()
	local base = 5
	local range = 10
	local increment = 0
	local limit = 0

	for level = 1, self:getEffectiveLevel() do
		if increment < math.floor((level - 1) / range) then
			increment = increment + 1
		end

		limit = limit + base + increment
	end

	return limit
end

function Player:getBountyMarks()
	return self.bountyMarks or 0
end

function Player:isInCommunityFarm()
	local pos = self:getPosition()

	return Position.isInArea(pos, {
		y = 5123,
		x = 5163,
		z = 7
	}, {
		y = 5139,
		x = 5180,
		z = 7
	})
end

function Player:setEffort(value)
	self.housingEffort = value

	signalcall(self.onEffortChange, self, value)
end

function Player:getEffort()
	return self.housingEffort or 0
end

function Player:setArchetypeLevel(archetype, level, active)
	self.archetypesLevels = self.archetypesLevels or {}
	self.currentArchetypesLevels = self.currentArchetypesLevels or {}

	local archetypeData = self.currentArchetypesLevels[archetype]

	if not archetypeData then
		archetypeData = {
			id = archetype,
			level = level,
			active = active
		}

		table.insert(self.archetypesLevels, archetypeData)

		self.currentArchetypesLevels[archetype] = archetypeData

		table.sort(self.archetypesLevels, function(a, b)
			return a.id < b.id
		end)
	else
		archetypeData.level = level
		archetypeData.active = active
		archetypeData.id = archetype
	end
end

function Player:getArchetypesLevels()
	return self.archetypesLevels
end

function Player:getCurrentMountStamina()
	return self.mountStamina
end

function Player:getMaxCurrentMountStamina()
	return self.maxMountStamina
end

function Player:setCurrentMountStamina(stamina)
	self.mountStamina = stamina
end

function Player:setCurrentMaxMountStamina(maxStamina)
	self.maxMountStamina = maxStamina
end

function Player:onAddCondition(condition)
	return
end

function Player:onRemoveCondition(condition)
	return
end

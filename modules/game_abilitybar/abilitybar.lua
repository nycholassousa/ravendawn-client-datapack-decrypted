-- chunkname: @/modules/game_abilitybar/abilitybar.lua

local protocol = runinsandbox("abilitybarprotocol")
local assetPrefix = "/images/ui/icons/abilitybar/"
local lastHotkeyPress = 0
local editingSlot, spellBatchEvent
local holdKeyAbilities = {
	106
}
local holdKeyEvents = {}
local excludeGlobalCooldownAbilities = {
	[56] = true,
	[47] = true,
	[104] = true,
	[66] = true,
	[78] = true,
	[50] = true,
	[110] = true,
	[28] = true,
	[109] = true,
	[59] = true,
	[85] = true,
	[35] = true,
	[60] = true,
	[91] = true,
	[114] = true,
	[105] = true,
	[67] = true
}
local freeRecastAbilities = {
	[59] = true,
	[66] = true,
	[76] = true,
	[50] = true,
	[53] = true
}

AbilityBar = {
	mountKeysIndex = 7,
	mountSkillKey = "Ctrl+R",
	weaponSkillKey = "R",
	spellBatchTime = 500,
	numSlots = 36,
	numSlotsPerBar = 6,
	spellCharges = {},
	customGlobalCooldownAbilities = {},
	bars = {},
	barWidgets = {},
	hotkeysInUse = {},
	callbacks = {},
	defaultKeys = {
		{
			"1",
			"2",
			"3",
			"4",
			"5",
			"6"
		},
		{
			"7",
			"8",
			"9",
			"0",
			"-",
			"="
		},
		{
			"Shift+1",
			"Shift+2",
			"Shift+3",
			"Shift+4",
			"Shift+5",
			"Shift+6"
		},
		{
			"Shift+7",
			"Shift+8",
			"Shift+9",
			"Shift+0",
			"Shift+-",
			"Shift+="
		},
		{
			"Ctrl+1",
			"Ctrl+2",
			"Ctrl+3",
			"Ctrl+4",
			"Ctrl+5",
			"Ctrl+6"
		},
		{
			"Ctrl+7",
			"Ctrl+8",
			"Ctrl+9",
			"Ctrl+0",
			"Ctrl+-",
			"Ctrl+="
		},
		{
			"F1",
			"F2",
			"F3",
			"F4",
			"F5",
			"F6"
		}
	},
	bindedKeys = {},
	assets = {
		[AbilityBarCategorySpell] = {
			"Precision Shot",
			"Concussive Shot",
			"Dragons Arrow",
			"Disengage",
			"Dawn Arrow",
			"Rain of Arrows",
			"Quick Fire",
			"Snaring Shot",
			"Viper Arrow",
			"Wind Arrow",
			"Icestorm",
			"Dragons Roar",
			"Fireball",
			"Firestorm",
			"Freezing Wind",
			"Frost Nova",
			"Frost Shards",
			"Frostbolt",
			"Erupt",
			"Pyroblast",
			"Arcane Beam",
			"Arcane Pulse",
			"Arcane Torrent",
			"Siphon",
			"Hex",
			"Leech",
			"Magic Rupture",
			"Shackles of Pain",
			"Shadowflare",
			"Time Warp",
			"Banner of Justice",
			"Banner of Protection",
			"Banner of Virtue",
			"Blessed Earth",
			"Safeguard",
			"Provoke",
			"Bash",
			"Spirit Hammer",
			"Spirit Shield",
			"Zealots Flame",
			"Air Aura",
			"Barrier",
			"Empower",
			"Haste",
			"Healing Air Sphere",
			"Party Recovery",
			"Windstrike Spirit",
			"Regenerate",
			"Cyclone",
			"Wind Wall",
			"Anti-Healing Venom",
			"Coup de Grace",
			"Crippling Dagger",
			"Death Blossom",
			"Shadowstrike",
			"Illusive",
			"Quick Slash",
			"Shadowbind",
			"Stalk",
			"Sinister Plot",
			"Brutal Strike",
			"Bull Rush",
			"Earthquake",
			"Feasting Strike",
			"Guillotine",
			"Fierce Leap",
			"Berserk",
			"Shieldbreak",
			"Fissure",
			"Spiked Chains",
			"Circle of Light",
			"Devotion",
			"Flash Heal",
			"Healing Channel",
			"Holy Force",
			"Dawn's Light",
			"Holy Shackles",
			"Living Saint",
			"Mend",
			"Smite",
			nil,
			"Combustion",
			"Flame Tornado",
			"Coldblast",
			"Teleport",
			"Force Push",
			"Curse",
			"Death Touch",
			"Mirror Image",
			"Spirits Resolve",
			"Unchained",
			nil,
			nil,
			nil,
			nil,
			nil,
			"Meteor Strike",
			"Frost Lance",
			"Purify",
			"Generous Influence",
			"Whirlwind",
			"Typhoon",
			"Eternal Worms",
			"Dispel",
			"Pummel",
			"Bladestorm",
			"Smiting Smash",
			"Unbreakable",
			"Venomous Weapons",
			"Shadow Kick",
			"Spirit Rangers",
			"Venom Grenade",
			"Revenge",
			"Shield Throw",
			[1061] = "Gauntlet of Skorn",
			[1057] = "Waterless Poppy Blossoms",
			[1053] = "Immaterial Bangle",
			[1056] = "Frost Ward",
			[1060] = "Garment of Skorn",
			[1049] = "Toxique N5",
			[1045] = "Ghostlamp",
			[1043] = "Shamanic Brooch",
			[1040] = "Omega Stone",
			[1044] = "Idol of Gluttony",
			[1048] = "Eau de Berserk",
			[1052] = "Corrupted Fang",
			[1038] = "Angerhorn Impaler",
			[1037] = "Sinister Sigil",
			[1034] = "Emergencial Campfire",
			[1033] = "Bear Trap",
			[1015] = "Javelin Quiver",
			[1009] = "Iron Blood Potion",
			[1011] = "Coal Goblin Gadget",
			[1013] = "Phosphorescent Shell",
			[1003] = "Health Potion",
			[1001] = "Slow Mending Potion",
			[1006] = "Regrowth Stone",
			[1028] = "Agent Medallion",
			[1019] = "Stepping Fuel",
			[1021] = "Bag of Caltrops",
			[1023] = "Hidden Blade",
			[1017] = "Duelist's Honor",
			[1025] = "Ships Glue Leftovers",
			[1026] = "Suspicious Milk",
			[1027] = "Musty Liquid",
			[1029] = "Dawn Bomb",
			[1030] = "Bloody Binding Stone",
			[1066] = "Golden Fleece",
			[1055] = "Toadish Cloak",
			[1051] = "Hypnotizing Stone",
			[1047] = "Eldritch Crow Mask",
			[1041] = "Torment Configuration",
			[1039] = "Goblin Bombs",
			[1035] = "Icedrop Solution",
			[1031] = "Iron Handcuffs",
			[1065] = "Saint Alsek's Cloak",
			[1063] = "Arrowcaller Horn",
			[1059] = "Bracelet of Skorn",
			[1004] = "Vial Of Poison",
			[1007] = "Bag of Surprises",
			[1000] = "Friendship Amulet",
			[1002] = "Mana Potion",
			[1020] = "Aegis Rune",
			[1022] = "Emergency Blockage",
			[1016] = "Crystal of the Dawn",
			[1018] = "Exotic Incense",
			[1012] = "Venomous Goblin Gadget",
			[1014] = "Poisonpetal Seeds",
			[1008] = "Twilight Lamp",
			[1010] = "Mending Potion",
			[1054] = "Dunewalker Cloak",
			[1050] = "Dendrion's Memento",
			[1046] = "The Grim Smile",
			[1042] = "Ratoxin Bomb",
			[1036] = "Mysticap Fetish",
			[1032] = "Living Branches",
			[1024] = "Goblin Contraption",
			[1064] = "Withered Demon Hand",
			[1062] = "Golden Maw",
			[1058] = "Reflective Carapace"
		},
		[AbilityBarCategoryCrafting] = {
			"Apprentice Synthesis",
			"Expert Synthesis",
			"Master Synthesis",
			"Artisan Synthesis",
			"Smither's Synthesis",
			"Apprentice Shine",
			"Expert Shine",
			"Master Shine",
			"Artisan Shine",
			"Carpenter's Shine",
			"Apprentice Touch",
			"Expert Touch",
			"Master Touch",
			"Artisan Touch",
			"Precision Touch",
			"Apprentice Mend",
			"Expert Mend",
			"Master Mend",
			"Artisan Mend",
			"Focused Mend",
			"New Tools",
			"Steady Hand",
			"Firm Grip",
			"Touch of Salt"
		},
		[AbilityBarCategoryFishing] = {
			[50004] = "Expert Reel",
			[50003] = "Fishing Nets",
			[50005] = "Harpoon",
			[50002] = "Big Reel",
			[50006] = "Master Reel",
			[50001] = "Give Slack",
			[50007] = "Fishing Basket",
			[50000] = "Basic Reel"
		},
		[1822] = {
			description = "",
			name = "Basic Water Pumps",
			id = 93
		},
		[1823] = {
			description = "",
			name = "Efficient Water Pumps",
			id = 94
		},
		[1824] = {
			description = "",
			name = "Advanced Water Pumps",
			id = 95
		},
		[5805] = {
			description = "",
			name = "Superior Water Pumps",
			id = 117
		},
		[5806] = {
			description = "",
			name = "Royal Water Pumps",
			id = 118
		},
		[2848] = {
			description = "",
			name = "Small Siege Cannon",
			id = 92
		},
		[5781] = {
			description = "",
			name = "Small Shrapnel Cannon",
			id = 139
		},
		[5780] = {
			description = "",
			name = "Small Hullbreaker Cannon",
			id = 115
		},
		[5477] = {
			description = "",
			name = "Small Drake Head",
			id = 116
		},
		[5782] = {
			description = "",
			name = "Small Mortar Cannon",
			id = 138
		},
		[5483] = {
			description = "",
			name = "Small Broadside Artillery",
			id = 129
		},
		[5815] = {
			description = "",
			name = "Medium Siege Cannon",
			id = 119
		},
		[5797] = {
			description = "",
			name = "Medium Shrapnel Cannon",
			id = 120
		},
		[5795] = {
			description = "",
			name = "Medium Hullbreaker Cannon",
			id = 121
		},
		[5817] = {
			description = "",
			name = "Medium Drake Head",
			id = 122
		},
		[5799] = {
			description = "",
			name = "Medium Mortar Cannon",
			id = 123
		},
		[5819] = {
			description = "",
			name = "Medium Broadside Artillery",
			id = 130
		},
		[5816] = {
			description = "",
			name = "Large Siege Cannon",
			id = 124
		},
		[5798] = {
			description = "",
			name = "Large Shrapnel Cannon",
			id = 125
		},
		[5796] = {
			description = "",
			name = "Large Hullbreaker Cannon",
			id = 126
		},
		[5818] = {
			description = "",
			name = "Large Drake Head",
			id = 127
		},
		[5800] = {
			description = "",
			name = "Large Mortar Cannon",
			id = 128
		},
		[5820] = {
			description = "",
			name = "Large Broadside Artillery",
			id = 131
		},
		[5480] = {
			description = "",
			name = "Small Floating Mines",
			id = 135
		},
		[5481] = {
			description = "",
			name = "Small Grappling Hooks",
			id = 132
		},
		[5801] = {
			description = "",
			name = "Medium Floating Mines",
			id = 136
		},
		[5803] = {
			description = "",
			name = "Medium Grappling Hooks",
			id = 133
		},
		[5802] = {
			description = "",
			name = "Large Floating Mines",
			id = 137
		},
		[5804] = {
			description = "",
			name = "Large Grappling Hooks",
			id = 134
		},
		[AbilityBarCategoryShip] = {
			[96] = "Repair",
			[121] = "Medium Hullbreaker Cannon",
			[81] = "Cannon",
			[130] = "Medium Broadside Artillery",
			[138] = "Small Mortar Cannon",
			[120] = "Medium Shrapnel Cannon",
			[128] = "Large Mortar Cannon",
			[94] = "Efficient Water Pumps",
			[119] = "Medium Siege Cannon",
			[127] = "Large Drake Head",
			[129] = "Small Broadside Artillery",
			[95] = "Advanced Water Pumps",
			[118] = "Royal Water Pumps",
			[126] = "Large Hullbreaker Cannon",
			[139] = "Small Shrapnel Cannon",
			[92] = "Small Siege Cannon",
			[117] = "Superior Water Pumps",
			[125] = "Large Shrapnel Cannon",
			[131] = "Large Broadside Artillery",
			[93] = "Basic Water Pumps",
			[116] = "Small Drake Head",
			[124] = "Large Siege Cannon",
			[135] = "Small Floating Mines",
			[136] = "Medium Floating Mines",
			[115] = "Small Hullbreaker Cannon",
			[123] = "Medium Mortar Cannon",
			[137] = "Large Floating Mines",
			[134] = "Large Grappling Hooks",
			[133] = "Medium Grappling Hooks",
			[122] = "Medium Drake Head",
			[132] = "Small Grappling Hooks"
		},
		[AbilityBarCategoryWeaponSkill] = {
			[1507] = "Rending Throw",
			[1506] = "Steady Stance",
			[1500] = "Lethal Edge",
			[1505] = "Mana Overcharge",
			[1503] = "Power Surge",
			[1502] = "Blade Warding",
			[1501] = "Fencer's Escape",
			[1504] = "Magic Ward",
			[1508] = "Whirl Slash",
			[1509] = "Mace Toss",
			[1510] = "Mighty Smash"
		},
		[AbilityBarCategoryMount] = {
			[1607] = "Stampede T2",
			[1602] = "Dash T3",
			[1605] = "Sprint T3",
			[1606] = "Stampede T1",
			[1601] = "Dash T2",
			[1600] = "Dash T1",
			[1603] = "Sprint T1",
			[1604] = "Sprint T2",
			[1609] = "Charge T1",
			[1610] = "Charge T2",
			[1611] = "Charge T3",
			[1608] = "Stampede T3"
		},
		[AbilityBarCategoryMountSkillWidget] = {
			[65535] = "Mount"
		}
	},
	numBarsVisible = {
		[AbilityBarCategoryNone] = 0,
		[AbilityBarCategorySpell] = 1,
		[AbilityBarCategoryCrafting] = 1,
		[AbilityBarCategoryFishing] = 2,
		[AbilityBarCategoryShip] = 1,
		[AbilityBarCategoryMount] = 1
	},
	state = AbilityBarCategoryNone
}

local function sendOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.AbilityBar, g_game.serializeTable(data))
	end
end

local function toggleMount()
	local player = g_game.getLocalPlayer()

	if player:isChanneling() then
		return
	end

	if not player:isMounted() then
		modules.game_interface.sendOpcode(ExtendedIds.Mount, {
			action = "on"
		})
	elseif not player:isWagonToggled() then
		modules.game_interface.sendOpcode(ExtendedIds.Mount, {
			action = "off"
		})
	end
end

function AbilityBar.setSpellBatchingInterval(interval)
	AbilityBar.spellBatchTime = interval
end

function AbilityBar.init()
	g_ui.importStyle("abilitybar")
	ProtocolGame.registerExtendedOpcode(ExtendedIds.AbilityBar, AbilityBar.onExtendedOpcode)

	local numBars = AbilityBar.numSlots / AbilityBar.numSlotsPerBar

	for i = AbilityBarCategoryFirst, AbilityBarCategoryLast do
		AbilityBar.bars[i] = {}
		AbilityBar.barWidgets[i] = {}

		if i == AbilityBarCategoryWeaponSkill or i == AbilityBarCategoryMount or i == AbilityBarCategoryMountSkillWidget then
			AbilityBar.createBar(i, 1)
		else
			for j = 1, numBars do
				AbilityBar.createBar(i, j)
			end
		end
	end

	AbilityBar.setDefaultState()
	connect(LocalPlayer, {
		onShipChange = AbilityBar.onShipChange,
		onPositionChange = AbilityBar.onPositionChange,
		onOutfitChange = AbilityBar.onOutfitChange
	})
	connect(g_game, {
		onGameStart = AbilityBar.online,
		onGameEnd = AbilityBar.hide,
		onSpellCooldown = AbilityBar.onSpellCooldown,
		onMultiUseCooldown = AbilityBar.onMultiUseCooldown,
		canUseAbility = AbilityBar.canUseAbility
	}, true)
	connect(Container, {
		onOpen = AbilityBar.refreshOwnedItems,
		onRemoveItem = AbilityBar.refreshOwnedItems,
		onUpdateItem = AbilityBar.refreshOwnedItems,
		onAddItem = AbilityBar.refreshOwnedItems
	})

	if BGS_DEMO then
		AbilityBar.prepareBGSDemo()
	end

	protocol.initProtocol()
end

function AbilityBar.terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.AbilityBar)

	for barType, bars in pairs(AbilityBar.bars) do
		for _, bar in ipairs(bars) do
			if bar.widget then
				bar.widget:destroy()

				bar.widget = nil
			end
		end

		AbilityBar.bars[barType] = {}
	end

	AbilityBar.weaponSkillWidget = nil
	AbilityBar.mountSkillWidget = nil

	disconnect(LocalPlayer, {
		onShipChange = AbilityBar.onShipChange,
		onPositionChange = AbilityBar.onPositionChange,
		onOutfitChange = AbilityBar.onOutfitChange
	})
	disconnect(g_game, {
		onGameStart = AbilityBar.online,
		onGameEnd = AbilityBar.offline,
		onSpellCooldown = AbilityBar.onSpellCooldown,
		onMultiUseCooldown = AbilityBar.onMultiUseCooldown,
		canUseAbility = AbilityBar.canUseAbility
	}, true)
	disconnect(Container, {
		onOpen = AbilityBar.refreshOwnedItems,
		onRemoveItem = AbilityBar.refreshOwnedItems,
		onUpdateItem = AbilityBar.refreshOwnedItems,
		onAddItem = AbilityBar.refreshOwnedItems
	})
	protocol.terminateProtocol()
end

function AbilityBar.online()
	AbilityBar.customGlobalCooldownAbilities = {}

	AbilityBar.bindKeys(true)
	AbilityBar.loadKeys()
	sendOpcode({
		action = "refresh",
		category = AbilityBar.state
	})
	addEvent(function()
		local player = g_game.getLocalPlayer()

		if player then
			AbilityBar.onOutfitChange(nil, player:getOutfit())
		end
	end)
end

function AbilityBar.offline()
	AbilityBar.saveKeys()
	AbilityBar.unbindKeys()
end

function AbilityBar.show()
	AbilityBar.setDefaultState()
end

function AbilityBar.hide()
	for category, bars in pairs(AbilityBar.barWidgets) do
		for i, bar in pairs(bars) do
			bar:hide()
		end
	end
end

function AbilityBar.updateInterfaceHideElements(value)
	for _, bars in pairs(AbilityBar.barWidgets) do
		modules.game_menu.Menu.hideWindows(bars)
	end

	AbilityBar.setState(AbilityBar.state, true)
end

function AbilityBar.createBar(category, barIndex, vertical)
	local widget

	if category == AbilityBarCategoryWeaponSkill then
		widget = g_ui.createWidget("WeaponSkillBar", modules.game_interface.getHUDPanel())
		AbilityBar.weaponSkillWidget = widget
	elseif category == AbilityBarCategoryMountSkillWidget then
		widget = g_ui.createWidget("MountSkillWidget", modules.game_interface.getHUDPanel())
		AbilityBar.mountSkillWidget = widget
	else
		widget = g_ui.createWidget(vertical and "AbilityBarVertical" or "AbilityBar", modules.game_interface.getHUDPanel())
	end

	if category == AbilityBarCategoryMount then
		AbilityBar.mountBarWidget = widget
	end

	widget:setId(string.format("barWidget_%d_%d", category, barIndex))

	widget.category = category
	widget.barIndex = barIndex
	widget.vertical = vertical == true
	AbilityBar.barWidgets[category][barIndex] = widget

	if category == AbilityBarCategoryFishing then
		widget:recursiveGetChildById("lockButton"):hide()
	end

	function widget:onDragMove(mousePos, mouseMoved)
		local pos = {
			x = mousePos.x - self.movingReference.x,
			y = mousePos.y - self.movingReference.y
		}

		g_layout.snapToGrid(pos)
		self:setPosition(pos)
		self:bindRectToParent()
	end

	if category ~= AbilityBarCategoryMount and category ~= AbilityBarCategoryMountSkillWidget and category ~= AbilityBarCategoryWeaponSkill then
		function widget:onPositionChange(position)
			for category in pairs(AbilityBar.barWidgets) do
				if category ~= AbilityBarCategoryWeaponSkill and category ~= AbilityBarCategoryMount and category ~= AbilityBarCategoryMountSkillWidget then
					local bar = AbilityBar.barWidgets[category][self.barIndex]

					if bar and not Position.equals(bar:getPosition(), position) then
						bar:setPosition(position)
						bar:bindRectToParent()
					end
				end
			end
		end
	end

	function widget:onDragEnter(mousePos)
		if not g_layout.isEditMode() then
			return false
		end

		self:breakAnchors()

		self.movingReference = {
			x = mousePos.x - self:getX(),
			y = mousePos.y - self:getY()
		}

		return true
	end

	local numSlotsPerBar = AbilityBar.numSlotsPerBar

	for i = 1, numSlotsPerBar do
		local slot = widget:recursiveGetChildById("slot" .. tostring(i))
		local overlay = widget:recursiveGetChildById("slot" .. tostring(i) .. "overlay")
		local icon = slot:recursiveGetChildById("icon")
		local absoluteSlotIndex = AbilityBar.getAbsoluteSlotIndex(barIndex, i)

		function icon:onClick(mousePos)
			local slot, slotWidget = AbilityBar.getSlotByPosition(mousePos, category)
			local ability = AbilityBar.getAbilityId(category, absoluteSlotIndex)

			if slot then
				if ability ~= 0 then
					local isFreeRecast = freeRecastAbilities[ability] and AbilityBar.hasOverlayGlowBySlotIndex(category, absoluteSlotIndex)
					local isSpellCategory = category == AbilityBarCategorySpell or category == AbilityBarCategoryShip

					if isSpellCategory and not g_spells:canCastSpell(ability, isFreeRecast) then
						return false
					end

					local progress = slotWidget:recursiveGetChildById("progressRect")

					if (not progress or progress and not progress.event or slot.charges > 1 and not AbilityBar.isSpellChargeOnCooldown(ability, slot.charges)) and (not isSpellCategory or not modules.game_interface.handleCrosshair(ability)) then
						g_game.useAbility(category, absoluteSlotIndex)
					end
				elseif slot.clientId then
					g_game.useInventoryItem(slot.clientId)
				end
			elseif category == AbilityBarCategoryMountSkillWidget then
				toggleMount()
			end
		end

		slot.category = category
		slot.index = absoluteSlotIndex

		if category == AbilityBarCategorySpell or category == AbilityBarCategoryWeaponSkill or category == AbilityBarCategoryMount or category == AbilityBarCategoryMountSkillWidget then
			g_mouse.bindRelease(slot, function()
				AbilityBar.createMenu(slot)
			end, MouseRightButton)
		end

		if category ~= AbilityBarCategoryWeaponSkill and category ~= AbilityBarCategoryMountSkillWidget then
			connect(icon, {
				onDragEnter = function(self, mousePos)
					if self.draggingLock and self.draggingLock - g_clock.millis() > 0 then
						return false
					end

					if not self:isVisible() or self:getImageSource() == "" then
						return false
					end

					local parentWidget = self:getParent():getParent():getParent()

					if parentWidget.locked or parentWidget.category == AbilityBarCategoryFishing then
						return false
					end

					self.previousParent = self:getParent()

					modules.game_interface.getRootPanel():addChild(self)

					local oldPos = self:getPosition()

					self.movingReference = {
						x = mousePos.x - oldPos.x,
						y = mousePos.y - oldPos.y
					}

					self:setPosition(oldPos)
					self:breakAnchors()

					return true
				end,
				onDragLeave = function(self, droppedWidget, mousePos)
					self.previousParent:insertChild(1, self)
					self:addAnchor(AnchorVerticalCenter, "parent", AnchorVerticalCenter)
					self:addAnchor(AnchorHorizontalCenter, "parent", AnchorHorizontalCenter)
					self:setImageOffsetX(self.previousParent:getParent():getParent().vertical and 5 or 2)
					self:setImageOffsetY(self.previousParent:getParent():getParent().vertical and 1 or 0)

					local slot, slotWidget = AbilityBar.getSlot(category, absoluteSlotIndex)
					local newSlot, newSlotWidget = AbilityBar.getSlotByPosition(mousePos, category)

					if newSlotWidget then
						if not newSlotWidget:isVisible() then
							newSlot = nil
						elseif slot.category and slot.category == AbilityBarCategoryMount and newSlot.abilityId == 0 then
							newSlot = nil
						end
					end

					if not newSlot then
						self:setVisible(false)
						self:setImageSource("")
						sendOpcode({
							action = "remove",
							category = slot.category,
							index = slot.index
						})
						signalcall(AbilityBar.onRemoveAbility, AbilityBar, slot.category, slot.index)

						return
					end

					AbilityBar.switchAbilities(slot, slotWidget, newSlot, newSlotWidget)
				end,
				onDragMove = function(self, mousePos, mouseMoved)
					local pos = {
						x = mousePos.x - self.movingReference.x,
						y = mousePos.y - self.movingReference.y
					}

					self:setPosition(pos)

					return true
				end
			})
		end

		if category == AbilityBarCategoryWeaponSkill then
			overlay:recursiveGetChildById("shortcut"):setText(AbilityBar.weaponSkillKey)

			break
		elseif category == AbilityBarCategoryMountSkillWidget then
			overlay:recursiveGetChildById("shortcut"):setText(AbilityBar.mountSkillKey)

			break
		elseif category == AbilityBarCategoryMount then
			overlay:recursiveGetChildById("shortcut"):setText(AbilityBar.defaultKeys[AbilityBar.mountKeysIndex][i])
		else
			overlay:recursiveGetChildById("shortcut"):setText(AbilityBar.defaultKeys[barIndex][i])
		end
	end

	AbilityBar.updateInterfaceHideElements()

	return widget
end

function AbilityBar.getAbilityId(category, absoluteSlotIndex)
	return AbilityBar.bars[category] and AbilityBar.bars[category][absoluteSlotIndex] and AbilityBar.bars[category][absoluteSlotIndex].abilityId or 0
end

function AbilityBar.getSlot(category, absoluteSlotIndex)
	if not category or not absoluteSlotIndex then
		return nil
	end

	local slot = AbilityBar.bars[category][absoluteSlotIndex]
	local index = AbilityBar.getBarSlotIndex(absoluteSlotIndex)
	local widget = AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex) and AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex):recursiveGetChildById("slot" .. tostring(index)) or nil

	return slot, widget
end

function AbilityBar.getSlotByPosition(mousePos, category)
	for tmpCategory, bar in pairs(AbilityBar.bars) do
		if not category or tmpCategory == category then
			for i, slot in ipairs(bar) do
				local barWidget = AbilityBar.getBarWidgetBySlotIndex(tmpCategory, i)

				if barWidget then
					local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(AbilityBar.getBarSlotIndex(i)))
					local slotPosition = slotWidget:getPosition()

					if mousePos.x >= slotPosition.x and mousePos.x <= slotPosition.x + slotWidget:getWidth() and mousePos.y >= slotPosition.y and mousePos.y <= slotPosition.y + slotWidget:getHeight() then
						return slot, slotWidget
					end
				end
			end
		end
	end
end

function AbilityBar.getAbsoluteSlotIndex(barIndex, slotIndex)
	return (barIndex - 1) * AbilityBar.numSlotsPerBar + slotIndex
end

function AbilityBar.getBarSlotIndex(absoluteSlotIndex)
	local index = absoluteSlotIndex % AbilityBar.numSlotsPerBar

	if index == 0 then
		index = AbilityBar.numSlotsPerBar
	end

	return index
end

function AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex)
	local barIndex = math.ceil(absoluteSlotIndex / AbilityBar.numSlotsPerBar)

	return AbilityBar.barWidgets[category][barIndex]
end

function AbilityBar.getAsset(category, abilityId, clientId, slotName)
	local assetName

	if clientId and slotName then
		assetName = assetPrefix .. slotName:lower()
	else
		assetName = AbilityBar.assets[category][abilityId]
		assetName = assetName and assetPrefix .. assetName:lower()
	end

	return assetName
end

function AbilityBar.getSlotByAbilityId(category, abilityId)
	for tmpCategory, bar in pairs(AbilityBar.bars) do
		if not category or tmpCategory == category then
			for i, slot in ipairs(bar) do
				local barWidget = AbilityBar.getBarWidgetBySlotIndex(tmpCategory, i)

				if barWidget then
					local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(AbilityBar.getBarSlotIndex(i)))

					if slot.abilityId == abilityId then
						return slot, slotWidget
					end
				end
			end
		end
	end
end

function AbilityBar.getSlotByName(category, name)
	for tmpCategory, bar in pairs(AbilityBar.bars) do
		if not category or tmpCategory == category then
			for i, slot in ipairs(bar) do
				local barWidget = AbilityBar.getBarWidgetBySlotIndex(tmpCategory, i)

				if barWidget then
					local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(AbilityBar.getBarSlotIndex(i)))

					if slot.name:lower() == name:lower() then
						return slot, slotWidget
					end
				end
			end
		end
	end
end

function AbilityBar.getFirstOccupiedSlot(category)
	for tmpCategory, bar in pairs(AbilityBar.bars) do
		if not category or tmpCategory == category then
			for i, slot in ipairs(bar) do
				local barWidget = AbilityBar.getBarWidgetBySlotIndex(tmpCategory, i)

				if barWidget then
					local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(AbilityBar.getBarSlotIndex(i)))

					if slot.abilityId ~= 0 then
						return slot, slotWidget
					end
				end
			end
		end
	end
end

function AbilityBar.getSecondOccupiedSlot(category)
	local total = 0

	for tmpCategory, bar in pairs(AbilityBar.bars) do
		if not category or tmpCategory == category then
			for i, slot in ipairs(bar) do
				local barWidget = AbilityBar.getBarWidgetBySlotIndex(tmpCategory, i)

				if barWidget then
					local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(AbilityBar.getBarSlotIndex(i)))

					if slot.abilityId ~= 0 then
						total = total + 1

						if total == 2 then
							return slot, slotWidget
						end
					end
				end
			end
		end
	end
end

function AbilityBar.hasOverlayGlowBySlotIndex(category, absoluteSlotIndex)
	local slot, slotWidget = AbilityBar.getSlot(category, absoluteSlotIndex)
	local barWidget = AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex)
	local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

	return overlay and overlay:getChildById("overlayGlow"):isVisible() or false
end

function AbilityBar.onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.AbilityBar or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "fetch_category" then
		local clientBar = AbilityBar.bars[data.category]

		if not clientBar then
			print("[ERROR] AbilityBar.onExtendedOpcode: category not found:", data.category)

			return
		end

		for i, slot in pairs(data.bar) do
			if not clientBar[i] then
				clientBar[i] = {}
			end

			clientBar[i].category = data.category
			clientBar[i].index = i
			clientBar[i].abilityId = slot.abilityId
			clientBar[i].name = slot.name
			clientBar[i].card = slot.card
			clientBar[i].clientId = slot.clientId
			clientBar[i].itemId = slot.itemId
			clientBar[i].charges = slot.charges or 1

			if slot.abilityId then
				AbilityBar.spellCharges[slot.abilityId] = nil

				for chargeId = 1, clientBar[i].charges do
					AbilityBar.setChargeCooldown(slot.abilityId, 0, chargeId)
				end
			end

			if clientBar[i].abilityId ~= 0 or clientBar[i].itemId then
				AbilityBar.setupIcon(clientBar[i])
			else
				AbilityBar.removeIcon(clientBar[i])
			end
		end

		AbilityBar.mountSkillWidget:recursiveGetChildById("slot1overlay"):setOn(true)
		AbilityBar.rebindKeys()

		if data.forceChangeCategory then
			AbilityBar.setState(data.category, true)
		end
	end
end

function AbilityBar.setupIcon(slot)
	local barWidget = AbilityBar.getBarWidgetBySlotIndex(slot.category, slot.index)
	local slotBarIndex = AbilityBar.getBarSlotIndex(slot.index)
	local asset = AbilityBar.getAsset(slot.category, slot.abilityId, slot.clientId, slot.name) or ""
	local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(slotBarIndex))
	local icon = slotWidget:recursiveGetChildById("icon")
	local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

	slotWidget:recursiveGetChildById("progressRect"):reset()
	slotWidget:recursiveGetChildById("progressRect"):setCircle(true)
	icon:setImageSource(asset:lower())
	icon:show()

	if slotWidget.charges then
		if slot.charges > 1 and (slot.category == AbilityBarCategorySpell or slot.category == AbilityBarCategoryShip) then
			slotWidget.charges:setText(AbilityBar.getAvailableSpellCharges(slot.abilityId))
			slotWidget.charges:show()
		else
			slotWidget.charges:hide()
		end
	end

	icon.abilityTooltip = true

	if slot.category == AbilityBarCategorySpell or slot.category == AbilityBarCategoryMount then
		icon.abilityId = slot.clientId or slot.abilityId
	else
		icon.abilityId = slot.name:lower()
	end

	overlay:setOn(true)
	overlay:setChecked(slot.category == AbilityBarCategoryWeaponSkill)

	if slot.clientId and slot.clientId ~= 0 then
		overlay.itemCount:setText(g_game.getLocalPlayer():getItemsCount(slot.clientId))
	else
		overlay.itemCount:setText()
	end
end

function AbilityBar.removeIcon(slot)
	local barWidget = AbilityBar.getBarWidgetBySlotIndex(slot.category, slot.index)

	if not barWidget then
		return
	end

	local slotBarIndex = AbilityBar.getBarSlotIndex(slot.index)
	local slotWidget = barWidget:recursiveGetChildById("slot" .. tostring(slotBarIndex))
	local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

	slotWidget:recursiveGetChildById("progressRect"):reset()
	slotWidget:recursiveGetChildById("icon"):hide()
	overlay:setOn(false)
	overlay:setChecked(slot.category == AbilityBarCategoryWeaponSkill)

	if slotWidget.charges then
		slotWidget.charges:hide()
	end

	overlay.itemCount:setText()
end

function AbilityBar.switchAbilities(slot, slotWidget, newSlot, newSlotWidget)
	local icon = slotWidget:recursiveGetChildById("icon")
	local newIcon = newSlotWidget:recursiveGetChildById("icon")
	local imageSource = icon:getImageSource()
	local newImageSource = newIcon:getImageSource()
	local progress = slotWidget:recursiveGetChildById("progressRect")
	local newProgress = newSlotWidget:recursiveGetChildById("progressRect")

	icon:setImageSource(newImageSource:lower())
	icon:setVisible(newIcon:isVisible())
	icon:raise()
	progress:raise()
	newIcon:setImageSource(imageSource:lower())
	newIcon:setVisible(true)
	newIcon:raise()
	newProgress:raise()
	sendOpcode({
		action = "switch",
		category = slot.category,
		from = slot.index,
		to = newSlot.index
	})
end

function AbilityBar.addAbility(category, abilityId, position)
	local index

	if position then
		local slot = AbilityBar.getSlotByPosition(position)

		if not slot then
			return
		end

		index = slot.index
	end

	sendOpcode({
		action = "add",
		category = category,
		abilityId = abilityId,
		index = index
	})
end

function AbilityBar.addSpell(archetype, abilityId, position)
	local index

	if position then
		local slot = AbilityBar.getSlotByPosition(position)

		if not slot then
			return
		end

		index = slot.index
	end

	sendOpcode({
		action = "add",
		category = AbilityBarCategorySpell,
		abilityId = abilityId,
		archetype = archetype,
		index = index
	})
end

function AbilityBar.addCraftingAbility(abilityType, abilityId, position)
	local index

	if position then
		local slot = AbilityBar.getSlotByPosition(position)

		if not slot then
			return
		end

		index = slot.index
	end

	sendOpcode({
		action = "add",
		category = AbilityBarCategoryCrafting,
		abilityId = abilityId,
		abilityType = abilityType,
		index = index
	})
end

function AbilityBar.addItem(clientId, position)
	local index

	if position then
		local slot = AbilityBar.getSlotByPosition(position)

		if not slot then
			return
		end

		index = slot.index
	end

	sendOpcode({
		action = "add",
		category = AbilityBarCategorySpell,
		clientId = clientId,
		index = index
	})
	signalcall(AbilityBar.onAddItem, AbilityBar, clientId, index)
end

function AbilityBar.setState(state, dontSend)
	AbilityBar.state = state

	local isEditMode = g_layout.isEditMode()

	for category, bars in pairs(AbilityBar.barWidgets) do
		for i, bar in pairs(bars) do
			local icon = bar:recursiveGetChildById("icon")

			bar:setVisible((isEditMode and category == AbilityBarCategorySpell or category == state) and (icon and icon.abilityId and (category == AbilityBarCategoryFishing or category == AbilityBarCategoryCrafting) or i <= AbilityBar.numBarsVisible[category]))
			bar:recursiveGetChildById("editModeBackground"):setVisible(isEditMode)
		end
	end

	if AbilityBar.weaponSkillWidget then
		AbilityBar.weaponSkillWidget:setVisible(state == AbilityBarCategorySpell or isEditMode)
		AbilityBar.weaponSkillWidget:recursiveGetChildById("editModeBackground"):setVisible(isEditMode)
	end

	if AbilityBar.mountSkillWidget then
		AbilityBar.mountSkillWidget:setVisible(state == AbilityBarCategorySpell or isEditMode)
		AbilityBar.mountSkillWidget:recursiveGetChildById("editModeBackground"):setVisible(isEditMode)
	end

	if AbilityBar.mountBarWidget then
		AbilityBar.mountBarWidget:setVisible(state == AbilityBarCategorySpell or isEditMode)
		AbilityBar.mountBarWidget:recursiveGetChildById("editModeBackground"):setVisible(isEditMode)
	end

	if not dontSend then
		sendOpcode({
			action = "category",
			category = AbilityBar.state
		})
	end

	if g_game.isOnline() then
		AbilityBar.onOutfitChange(nil, g_game.getLocalPlayer():getOutfit())
	end
end

function AbilityBar.setDefaultState()
	AbilityBar.setState(AbilityBarCategorySpell)
end

function AbilityBar.reset()
	if AbilityBar.state == AbilityBarCategoryFishing then
		return
	end

	sendOpcode({
		action = "reset"
	})
end

function AbilityBar.setNumBarsVisible(category, value)
	AbilityBar.numBarsVisible[category] = value

	AbilityBar.setState(AbilityBar.state, true)
end

function AbilityBar.update()
	AbilityBar.setState(AbilityBar.state, true)
end

function AbilityBar.onLock(widget, forceValue)
	local isLocked = widget.locked == true

	widget.locked = forceValue == nil and not isLocked or forceValue

	widget:recursiveGetChildById("lockButton"):setOn(not widget.locked)
end

function AbilityBar.onRotate(widget, forceVertical)
	local isVertical = widget.vertical == true

	if isVertical and forceVertical then
		return
	end

	local position = widget:getPosition()
	local verticalWidget = AbilityBar.createBar(widget.category, widget.barIndex, not widget.vertical)
	local hudPanelSize = modules.game_interface.getHUDPanel():getSize()
	local widgetSize = verticalWidget:getSize()

	if position.y + widgetSize.height > hudPanelSize.height then
		position.y = hudPanelSize.height - widgetSize.height
	end

	if position.x + widgetSize.width > hudPanelSize.width then
		position.x = hudPanelSize.width - widgetSize.width
	end

	verticalWidget:setPosition(position)
	widget:destroy()

	if verticalWidget.category ~= AbilityBarCategoryMount then
		for category in pairs(AbilityBar.barWidgets) do
			if category ~= AbilityBarCategoryWeaponSkill and category ~= AbilityBarCategoryMount and category ~= AbilityBarCategoryMountSkillWidget then
				local bar = AbilityBar.barWidgets[category][verticalWidget.barIndex]

				if bar and bar ~= verticalWidget then
					local verticalWidget1 = AbilityBar.createBar(bar.category, bar.barIndex, not bar.vertical)

					verticalWidget1:setPosition(position)
					bar:destroy()
				end
			end
		end

		sendOpcode({
			action = "refresh",
			category = AbilityBar.state
		})
	else
		sendOpcode({
			action = "refresh",
			category = AbilityBarCategoryMount
		})
	end

	AbilityBar.setState(AbilityBar.state, true)
	AbilityBar.onOutfitChange(nil, g_game.getLocalPlayer():getOutfit())
end

function AbilityBar.setChargeCooldown(spellId, cooldown, chargeId, spellWidget)
	AbilityBar.spellCharges[spellId] = AbilityBar.spellCharges[spellId] or {}
	AbilityBar.spellCharges[spellId][chargeId] = cooldown + g_clock.millis()

	if spellWidget and spellWidget.charges then
		spellWidget.charges:setText(AbilityBar.getAvailableSpellCharges(spellId))
	end
end

function AbilityBar.getAvailableSpellCharges(spellId)
	local charges = AbilityBar.spellCharges[spellId]

	if not charges then
		return 0
	end

	local count = 0

	for _, cooldown in ipairs(charges) do
		if cooldown <= g_clock.millis() then
			count = count + 1
		end
	end

	return count
end

function AbilityBar.onSpellHighlight(spellId, mapIcon, highlight)
	local state = AbilityBar.state

	if spellId >= 1500 and spellId < 1600 then
		state = AbilityBarCategoryWeaponSkill
	elseif spellId >= 1600 then
		state = AbilityBarCategoryMount
	end

	for absoluteSlotIndex, slot in pairs(AbilityBar.bars[state]) do
		local ability = slot.abilityId
		local _, slotWidget = AbilityBar.getSlot(state, absoluteSlotIndex)
		local barWidget = AbilityBar.getBarWidgetBySlotIndex(AbilityBar.state, absoluteSlotIndex)
		local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

		if ability > 0 and overlay and ability == spellId then
			overlay:getChildById("overlayGlow"):setVisible(highlight)

			if mapIcon then
				g_game.addItemIcon(g_game.getLocalPlayer():getPosition(), SPELL_RECAST_ICON, 1, 100, false, AbilityBar.getAsset(AbilityBarCategorySpell, ability))
			end
		end
	end
end

function AbilityBar.onSpellCooldown(spellId, cooldown, castedSpellId, chargeId)
	local state = AbilityBar.state

	if spellId >= 1500 and spellId < 1600 then
		state = AbilityBarCategoryWeaponSkill
	elseif spellId >= 1600 and spellId <= 2500 then
		state = AbilityBarCategoryMount
	end

	for absoluteSlotIndex, slot in pairs(AbilityBar.bars[state]) do
		local ability = slot.abilityId
		local slot, slotWidget = AbilityBar.getSlot(state, absoluteSlotIndex)
		local barWidget = AbilityBar.getBarWidgetBySlotIndex(AbilityBar.state, absoluteSlotIndex)
		local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")
		local progressRect = slotWidget:recursiveGetChildById("progressRect")

		if ability > 0 and ability == spellId then
			AbilityBar.setChargeCooldown(ability, cooldown, chargeId, slotWidget)

			if cooldown == 0 then
				progressRect.currentCooldown = 0
				progressRect.cooldownRemainder = 0
			elseif progressRect.globalCooldown and slot.charges > 1 then
				local newCooldown = cooldown

				for i = 1, slot.charges do
					local cd = AbilityBar.spellCharges[spellId][i]

					if cd and cd > g_clock.millis() then
						newCooldown = cooldown - g_clock.millis()

						break
					end
				end

				progressRect.globalCooldown = false
				progressRect.currentCooldown = newCooldown
			end

			local function spellChargesWork()
				for i = 1, slot.charges do
					local cooldown = AbilityBar.spellCharges[spellId][i]

					if cooldown and cooldown > g_clock.millis() then
						progressRect:onSpellCooldown(cooldown - g_clock.millis(), false, spellChargesWork)

						break
					end
				end

				slotWidget.charges:setText(AbilityBar.getAvailableSpellCharges(spellId))
			end

			if slot.charges > 1 then
				progressRect:onSpellCooldown(progressRect.currentCooldown, false, spellChargesWork)
			else
				progressRect:onSpellCooldown(cooldown)
			end

			if overlay then
				overlay:getChildById("overlayGlow"):setVisible(false)
			end
		elseif spellId == 0 and ability > 0 then
			if not AbilityBar.isExcludedFromGlobalCooldown(ability) and cooldown >= 0 then
				if not progressRect.globalCooldown and cooldown >= progressRect.currentCooldown or progressRect.globalCooldown and cooldown >= progressRect.currentCooldown - 50 then
					if ability ~= castedSpellId then
						progressRect:onSpellCooldown(cooldown, true)
					end
				elseif progressRect.globalCooldown and spellId == 0 and cooldown == 0 then
					progressRect:removeSpellCooldown()
				end
			end

			if overlay and ability == castedSpellId then
				overlay:getChildById("overlayGlow"):setVisible(true)
				g_game.addItemIcon(g_game.getLocalPlayer():getPosition(), SPELL_RECAST_ICON, 1, 100, false, AbilityBar.getAsset(AbilityBarCategorySpell, ability))
			end
		end
	end
end

function AbilityBar.isExcludedFromGlobalCooldown(spellId)
	local customValue = AbilityBar.customGlobalCooldownAbilities[spellId]

	if type(customValue) == "boolean" then
		return customValue
	end

	return excludeGlobalCooldownAbilities[spellId]
end

function AbilityBar.onSpellIgnoreGlobalCooldown(spellId, value)
	if value == 0 then
		AbilityBar.customGlobalCooldownAbilities[spellId] = nil
	else
		AbilityBar.customGlobalCooldownAbilities[spellId] = value == 1
	end
end

function AbilityBar.bindKeys(defaultKeys)
	if defaultKeys then
		AbilityBar.bindedKeys = table.copy(AbilityBar.defaultKeys)
	else
		AbilityBar.unbindKeys()
	end

	local function bind(key, barIndex, slotIndex, category)
		if key ~= "empty" and key ~= "" then
			g_keyboard.bindKeyPress(key, AbilityBar.onKeyPressed)

			local absoluteSlotIndex = AbilityBar.getAbsoluteSlotIndex(barIndex, slotIndex)
			local slot, slotWidget = AbilityBar.getSlot(category, absoluteSlotIndex)
			local barWidget = AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex)

			if slotWidget and barWidget then
				local overlay = barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

				overlay:recursiveGetChildById("shortcut"):setText(key)
			end

			AbilityBar.hotkeysInUse[key] = {
				key = key,
				absoluteSlotIndex = absoluteSlotIndex,
				slot = slot,
				slotWidget = slotWidget,
				category = category
			}
		end
	end

	bind(AbilityBar.weaponSkillKey, 1, 1, AbilityBarCategoryWeaponSkill)
	bind(AbilityBar.mountSkillKey, 1, 1, AbilityBarCategoryMountSkillWidget)

	for barIndex, bar in ipairs(AbilityBar.bindedKeys) do
		for slotIndex, key in ipairs(bar) do
			key = tostring(key) == "minus" and "-" or tostring(key)

			if barIndex == AbilityBar.mountKeysIndex then
				bind(key, 1, slotIndex, AbilityBarCategoryMount)
			else
				for _, category in ipairs({
					AbilityBarCategoryShip,
					AbilityBarCategoryCrafting,
					AbilityBarCategoryFishing,
					AbilityBarCategorySpell
				}) do
					bind(key, barIndex, slotIndex, category)
				end
			end
		end
	end
end

function AbilityBar.unbindKeys()
	for _, key in pairs(AbilityBar.hotkeysInUse) do
		if key.key and key.key ~= "" then
			g_keyboard.unbindKeyPress(key.key, AbilityBar.onKeyPressed)
		end
	end

	AbilityBar.hotkeysInUse = {}

	for category = AbilityBarCategoryFirst, AbilityBarCategoryLast do
		for absoluteSlotIndex, slot in pairs(AbilityBar.bars[category]) do
			local slot, slotWidget = AbilityBar.getSlot(category, absoluteSlotIndex)
			local barWidget = AbilityBar.getBarWidgetBySlotIndex(category, absoluteSlotIndex)
			local overlay = slotWidget and barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

			if overlay then
				overlay:recursiveGetChildById("shortcut"):setText("")
			end
		end
	end

	AbilityBar.weaponSkillWidget:recursiveGetChildById("shortcut"):setText("")
	AbilityBar.mountSkillWidget:recursiveGetChildById("shortcut"):setText("")
end

function AbilityBar.rebindKeys()
	AbilityBar.unbindKeys()
	AbilityBar.bindKeys()
	AbilityBar.saveKeys()
end

function AbilityBar.keyToAbsoluteSlotIndex(keyText)
	local data = AbilityBar.hotkeysInUse[keyText]

	if data then
		local category = data.category == AbilityBarCategorySpell and AbilityBar.state or data.category

		return data.absoluteSlotIndex, category
	end
end

function AbilityBar.isSpellChargeOnCooldown(spellId, totalCharges)
	if not AbilityBar.spellCharges[spellId] then
		return false
	end

	local isOnCooldown = true

	for i = 1, totalCharges do
		if not AbilityBar.spellCharges[spellId][i] or AbilityBar.spellCharges[spellId][i] <= g_clock.millis() then
			isOnCooldown = false

			break
		end
	end

	return isOnCooldown
end

function AbilityBar.onKeyPressed(widget, key, autoRepeatTicks, keyCombo)
	local player = g_game.getLocalPlayer()

	if not player or lastHotkeyPress + 100 > g_clock.millis() then
		return false
	end

	removeEvent(spellBatchEvent)

	spellBatchEvent = nil
	lastHotkeyPress = g_clock.millis()

	if GameChat:isEnabled() or IsTextEditActive() or g_game.isInHouseMode() or g_game:isInCutsceneMode() then
		return
	end

	local absoluteSlotIndex, category = AbilityBar.keyToAbsoluteSlotIndex(keyCombo)
	local ability = AbilityBar.getAbilityId(category, absoluteSlotIndex)
	local slot, slotWidget = AbilityBar.getSlot(category, absoluteSlotIndex)

	if not slotWidget then
		return
	end

	local isIgnoreChannelingItem = slot and slot.clientId and table.contains(AbilityBarIgnoreChannelingItemIds, slot.clientId)

	if not isIgnoreChannelingItem and player:isChanneling() then
		return false
	end

	local progress = slotWidget:recursiveGetChildById("progressRect")
	local isFreeRecast = freeRecastAbilities[ability] and AbilityBar.hasOverlayGlowBySlotIndex(category, absoluteSlotIndex)

	if category == AbilityBarCategoryMountSkillWidget then
		toggleMount()

		return
	end

	if ability > 0 and (not progress.event or slot.charges > 1 and not AbilityBar.isSpellChargeOnCooldown(ability, slot.charges)) then
		local isSpellCategory = category == AbilityBarCategorySpell or category == AbilityBarCategoryShip

		if isSpellCategory and not g_spells:canCastSpell(ability, isFreeRecast) then
			return false
		end

		if table.find(holdKeyAbilities, ability) then
			if not holdKeyEvents[ability] and not g_game.getLocalPlayer():isChanneling() then
				holdKeyEvents[ability] = true

				g_keyboard.bindKeyUp(keyCombo, function()
					if g_game.getLocalPlayer():isChanneling() and not progress.event and (not isSpellCategory or not modules.game_interface.handleCrosshair(ability)) then
						g_game.useAbility(category, absoluteSlotIndex)
					end

					holdKeyEvents[ability] = nil

					g_keyboard.unbindKeyUp(keyCombo)
				end, widget)

				if not isSpellCategory or not modules.game_interface.handleCrosshair(ability) then
					g_game.useAbility(category, absoluteSlotIndex)
				end
			end

			return
		end

		if not isSpellCategory or not modules.game_interface.handleCrosshair(ability) then
			g_game.useAbility(category, absoluteSlotIndex)
		end
	elseif not table.find(holdKeyAbilities, ability) and progress.event and progress.currentCooldown - AbilityBar.spellBatchTime <= 0 then
		spellBatchEvent = scheduleEvent(function()
			if category == AbilityBarCategorySpell and not g_spells:canCastSpell(ability, isFreeRecast) then
				return false
			end

			g_game.useAbility(category, absoluteSlotIndex)
		end, progress.currentCooldown)
	elseif slot and slot.clientId then
		g_game.useInventoryItem(slot.clientId)
	end
end

function AbilityBar.onShipChange(player, ship, windDirection)
	if ship then
		AbilityBar.setState(AbilityBarCategoryShip)
	else
		AbilityBar.setDefaultState()
	end
end

function AbilityBar.createMenu(slot)
	editingSlot = slot

	local menu = g_ui.createWidget("PopupMenu")

	menu:addOption("Edit Hotkey", function()
		AbilityBar.openEditHotkeyWindow(slot)
	end)
	menu:display()
end

function AbilityBar.openEditHotkeyWindow(slot)
	editHotkeyWindow = g_ui.loadUI("edit_hotkey", g_ui.getRootWidget())

	editHotkeyWindow:grabKeyboard()

	editHotkeyWindow.category = slot.category

	local comboLabel = editHotkeyWindow:recursiveGetChildById("comboPreview")

	comboLabel.keyCombo = ""
	editHotkeyWindow.onKeyDown = AbilityBar.hotkeyCapture

	editHotkeyWindow:raise()
	editHotkeyWindow:focus()
end

function AbilityBar.checkHotkey(hotkey)
	return AbilityBar.hotkeysInUse[hotkey] and true or false
end

function AbilityBar.hotkeyCapture(assignWindow, keyCode, keyboardModifiers)
	assignWindow:raise()
	assignWindow:focus()

	local keyCombo = determineKeyComboDesc(keyCode, keyboardModifiers)
	local comboPreview = assignWindow:recursiveGetChildById("comboPreview")
	local errorLabel = editHotkeyWindow:recursiveGetChildById("errorLabel")

	if AbilityBar.checkHotkey(keyCombo) then
		errorLabel:setVisible(true)
	else
		errorLabel:setVisible(false)
	end

	comboPreview:setText(tr("Current hotkey to change: %s", keyCombo == "" and "none" or keyCombo))

	comboPreview.keyCombo = keyCombo

	comboPreview:resizeToText()
	assignWindow:getChildById("applyButton"):enable()

	return true
end

function AbilityBar.hotkeyCaptureOk(assignWindow, keyCombo, category)
	if AbilityBar.checkHotkey(keyCombo) then
		local index, replaceCategory = AbilityBar.keyToAbsoluteSlotIndex(keyCombo)

		if replaceCategory == AbilityBarCategoryWeaponSkill then
			AbilityBar.weaponSkillKey = ""
		elseif replaceCategory == AbilityBarCategoryMount then
			AbilityBar.bindedKeys[AbilityBar.mountKeysIndex][index] = ""
		elseif replaceCategory == AbilityBarCategoryMountSkillWidget then
			AbilityBar.mountSkillKey = ""
		else
			local row = math.ceil(index / AbilityBar.numSlotsPerBar)

			AbilityBar.bindedKeys[row][AbilityBar.getBarSlotIndex(index)] = ""
		end
	end

	local index = editingSlot.index
	local row = editingSlot.category == AbilityBarCategoryMountSkillWidget and AbilityBarCategoryMountSkillWidget or editingSlot.category == AbilityBarCategoryWeaponSkill and AbilityBarCategoryWeaponSkill or editingSlot.category == AbilityBarCategoryMount and AbilityBar.mountKeysIndex or math.ceil(index / AbilityBar.numSlotsPerBar)

	if editingSlot.category == AbilityBarCategoryWeaponSkill then
		AbilityBar.weaponSkillKey = keyCombo
	elseif editingSlot.category == AbilityBarCategoryMountSkillWidget then
		AbilityBar.mountSkillKey = keyCombo
	else
		AbilityBar.bindedKeys[row][AbilityBar.getBarSlotIndex(index)] = keyCombo

		if keyCombo == "" then
			local slot, slotWidget = AbilityBar.getSlot(category, index)
			local barWidget = AbilityBar.getBarWidgetBySlotIndex(category, index)

			if slotWidget and barWidget then
				local overlay = barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")

				overlay:recursiveGetChildById("shortcut"):setText("")
			end
		end
	end

	AbilityBar.saveKeys()
	AbilityBar.rebindKeys()
	assignWindow:destroy()
end

function AbilityBar.saveKeys()
	local hotkeys = g_settings.getNode("game_abilitybar") or {}
	local char = g_game.getCharacterName()

	hotkeys[char] = {}

	local lastIndex = 0

	local function save(category, index, realIndex)
		if category == AbilityBarCategoryWeaponSkill then
			hotkeys[char][index] = AbilityBar.weaponSkillKey

			if hotkeys[char][index] == "-" then
				hotkeys[char][index] = "minus"
			elseif hotkeys[char][index] == "" then
				hotkeys[char][index] = "empty"
			end

			lastIndex = index

			return
		elseif category == AbilityBarCategoryMountSkillWidget then
			hotkeys[char][index] = AbilityBar.mountSkillKey
			lastIndex = index

			if hotkeys[char][index] == "-" then
				hotkeys[char][index] = "minus"
			elseif hotkeys[char][index] == "" then
				hotkeys[char][index] = "empty"
			end

			return
		end

		local slot, slotWidget = AbilityBar.getSlot(category, realIndex or index)
		local barWidget = AbilityBar.getBarWidgetBySlotIndex(category, realIndex or index)

		if slotWidget and barWidget then
			local overlay = barWidget:recursiveGetChildById(slotWidget:getId() .. "overlay")
			local shortcutText = slot and tostring(overlay:recursiveGetChildById("shortcut"):getText()) or ""

			hotkeys[char][index] = shortcutText

			if hotkeys[char][index] == "-" then
				hotkeys[char][index] = "minus"
			elseif hotkeys[char][index] == "" then
				hotkeys[char][index] = "empty"
			end

			lastIndex = index
		end
	end

	for i = 1, AbilityBar.numSlots do
		save(AbilityBar.state, i)
	end

	save(AbilityBarCategoryWeaponSkill, lastIndex + 1, 1)

	for i = 1, AbilityBar.numSlotsPerBar do
		save(AbilityBarCategoryMount, lastIndex + 1, i)
	end

	save(AbilityBarCategoryMountSkillWidget, lastIndex + 1, 1)
	g_settings.setNode("game_abilitybar", hotkeys)
	g_settings.save()
end

function AbilityBar.loadKeys()
	local hotkeys = g_settings.getNode("game_abilitybar")

	if not hotkeys then
		return
	end

	local char = g_game.getCharacterName()

	if hotkeys[char] then
		hotkeys = hotkeys[char]
	else
		hotkeys[char] = {}

		return
	end

	for index, key in pairs(hotkeys) do
		key = tostring(key)

		if key == "empty" then
			key = ""
		elseif key == "minus" then
			key = "-"
		end

		index = tonumber(index)

		local isWeaponSkill = index == AbilityBar.numSlots + 1
		local isMountSkill = index % AbilityBar.numSlotsPerBar == 2 and index > AbilityBar.numSlots + AbilityBar.numSlotsPerBar

		if isWeaponSkill then
			AbilityBar.weaponSkillKey = key
		elseif isMountSkill then
			AbilityBar.mountSkillKey = key
		else
			local row = math.ceil(index / AbilityBar.numSlotsPerBar)

			if index > AbilityBar.numSlots + 1 then
				row = math.ceil((index - 1) / AbilityBar.numSlotsPerBar)
				index = index - AbilityBar.numSlots - 1
			end

			AbilityBar.bindedKeys[row][AbilityBar.getBarSlotIndex(index)] = key
		end

		AbilityBar.hotkeysInUse[key] = {
			key = key
		}
	end

	AbilityBar.rebindKeys()
end

function AbilityBar.onPositionChange()
	removeEvent(spellBatchEvent)

	spellBatchEvent = nil
end

function AbilityBar.isSharingCooldown(first, second)
	for _, ids in ipairs(SharedCooldownClientIds) do
		if table.find(ids, first) and table.find(ids, second) then
			return true
		end
	end
end

function AbilityBar.onMultiUseCooldown(itemId, cooldown)
	local state = AbilityBar.state

	for absoluteSlotIndex in pairs(AbilityBar.bars[state]) do
		local slot, slotWidget = AbilityBar.getSlot(state, absoluteSlotIndex)
		local progressRect = slotWidget:recursiveGetChildById("progressRect")

		if slot.clientId == itemId or AbilityBar.isSharingCooldown(slot.clientId, itemId) then
			if cooldown == 0 then
				progressRect.currentCooldown = 0
				progressRect.cooldownRemainder = 0
			end

			progressRect:onSpellCooldown(cooldown)
		end
	end
end

function AbilityBar.canUseAbility(category, slot)
	if category == AbilityBarCategoryMountSkillWidget or category == AbilityBarCategoryWeaponSkill and AbilityBar.state == AbilityBarCategorySpell or category == AbilityBarCategoryMount and AbilityBar.state == AbilityBarCategorySpell then
		return true
	elseif category ~= AbilityBar.state then
		return false
	end

	return true
end

function AbilityBar.updateMountIcon(lookType)
	AbilityBar.mountSkillWidget:recursiveGetChildById("icon"):setOutfit({
		category = ThingCategoryCreature,
		lookType = lookType
	})
end

function AbilityBar.onOutfitChange(player, outfit, oldOutfit)
	if outfit.mountBody == 0 then
		AbilityBar.mountSkillWidget:hide()
	else
		AbilityBar.mountSkillWidget:show()
	end

	if outfit.mount == 0 then
		AbilityBar.mountBarWidget:hide()
	else
		AbilityBar.mountBarWidget:show()

		for _, child in pairs(AbilityBar.mountBarWidget.innerPanel:getChildren()) do
			if child:getStyleName() == "AbilityBarSlotOverlay" or child:getStyleName() == "AbilityBarSlotOverlayVertical" then
				child:setVisible(false)
			end
		end

		local width, height = 0, 0

		for _, widget in pairs(AbilityBar.bars[AbilityBarCategoryMount]) do
			if widget.abilityId ~= 0 then
				local slot, slotWidget = AbilityBar.getSlotByAbilityId(AbilityBarCategoryMount, widget.abilityId)

				width = width + slotWidget:getWidth()
				height = height + slotWidget:getHeight()

				AbilityBar.mountBarWidget:recursiveGetChildById("slot" .. tostring(slot.index) .. "overlay"):setVisible(true)
			end
		end

		if AbilityBar.mountBarWidget.vertical then
			AbilityBar.mountBarWidget:setHeight(math.max(35, height + 35))
		else
			AbilityBar.mountBarWidget:setWidth(math.max(35, width + 35))
		end
	end
end

function AbilityBar.prepareBGSDemo()
	for category in pairs(AbilityBar.barWidgets) do
		for _, widget in pairs(AbilityBar.barWidgets[category]) do
			-- block empty
		end
	end
end

function AbilityBar.refreshOwnedItems()
	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	for i = 1, AbilityBar.numSlots do
		local slot, slotWidget = AbilityBar.getSlot(AbilityBarCategorySpell, i)

		if slot and slot.clientId then
			local overlay = slotWidget and AbilityBar.getBarWidgetBySlotIndex(AbilityBarCategorySpell, i):recursiveGetChildById(slotWidget:getId() .. "overlay")
			local count = player:getItemsCount(slot.clientId)

			if count > 1 then
				overlay.itemCount:setText(count)
			else
				overlay.itemCount:setText()
			end
		end
	end
end

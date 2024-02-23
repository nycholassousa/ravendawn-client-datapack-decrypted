-- chunkname: @/modules/gamelib/spells.lua

g_spells = {}
g_spells.spells = {
	{
		channeling = true,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 2,
		name = "Precision Shot",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 1,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 25000,
		needTarget = true,
		archetype = 2,
		name = "Concussive Shot",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 2,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 2,
		name = "Dragons Arrow",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 3,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 2,
		name = "Disengage",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 4,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				5
			}
		}
	},
	{
		channeling = false,
		crosshair = true,
		cooldown = 30000,
		needTarget = false,
		archetype = 2,
		name = "Dawn Arrow",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 5,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				6
			}
		}
	},
	{
		channeling = true,
		crosshair = true,
		cooldown = 45000,
		needTarget = false,
		archetype = 2,
		name = "Rain Of Arrows",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 6,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				12
			}
		}
	},
	{
		channeling = true,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 2,
		name = "Quick Fire",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 7,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				4
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 2,
		name = "Snaring Shot",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 8,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				6
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 2,
		name = "Viper Arrow",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 9,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 2,
		name = "Wind Arrow",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 10,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	{
		channeling = true,
		crosshair = true,
		cooldown = 60000,
		needTarget = false,
		archetype = 5,
		name = "Icestorm",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 11,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[13] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 5,
		name = "Fireball",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 13,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[15] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 5,
		name = "Freezing Wind",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 15,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[16] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 5,
		name = "Frost Nova",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 16,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[17] = {
		channeling = true,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 5,
		name = "Frost Shards",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 17,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				4
			}
		}
	},
	[18] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 5,
		name = "Frostbolt",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 18,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[19] = {
		channeling = true,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 5,
		name = "Erupt",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 19,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	[20] = {
		channeling = true,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 5,
		name = "Pyroblast",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 20,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[21] = {
		channeling = true,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 8,
		name = "Arcane Beam",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 21,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[22] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 8,
		name = "Arcane Pulse",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 22,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[23] = {
		channeling = true,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 8,
		name = "Arcane Torrent",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 23,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				4
			}
		}
	},
	[24] = {
		channeling = true,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 8,
		name = "Siphon",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 24,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				2
			}
		}
	},
	[25] = {
		channeling = true,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 8,
		name = "Hex",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 25,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[26] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 8,
		name = "Leech",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 26,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[27] = {
		channeling = false,
		crosshair = false,
		cooldown = 25000,
		needTarget = true,
		archetype = 8,
		name = "Magic Rupture",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 27,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[28] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 8,
		name = "Shackles Of Pain",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 28,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[30] = {
		channeling = true,
		crosshair = false,
		cooldown = 60000,
		needTarget = false,
		archetype = 8,
		name = "Time Warp",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 30,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[32] = {
		channeling = false,
		crosshair = true,
		cooldown = 20000,
		needTarget = false,
		archetype = 4,
		name = "Banner Of Protection",
		aggressive = false,
		range = 4,
		type = "none",
		selfTarget = false,
		id = 32,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[34] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 4,
		name = "Blessed Earth",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 34,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[35] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 4,
		name = "Safeguard",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 35,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[36] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = false,
		archetype = 4,
		name = "Provoke",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 36,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				4
			}
		}
	},
	[37] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 4,
		name = "Bash",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 37,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[39] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 4,
		name = "Spirit Shield",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 39,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[41] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 7,
		name = "Air Aura",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 41,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[42] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 7,
		name = "Barrier",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 42,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[43] = {
		channeling = true,
		crosshair = false,
		cooldown = 40000,
		needTarget = true,
		archetype = 7,
		name = "Empower",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 43,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[44] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = true,
		archetype = 7,
		name = "Haste",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 44,
		resource = {
			gain = 50
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[45] = {
		channeling = true,
		crosshair = true,
		cooldown = 45000,
		needTarget = false,
		archetype = 7,
		name = "Healing Air Sphere",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 45,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				16
			}
		}
	},
	[46] = {
		channeling = true,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 7,
		name = "Party Recovery",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 46,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				14
			}
		}
	},
	[47] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 7,
		name = "Windstrike Spirit",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 47,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[48] = {
		channeling = false,
		crosshair = false,
		cooldown = 12000,
		needTarget = true,
		archetype = 7,
		name = "Regenerate",
		aggressive = false,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 48,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				8
			}
		}
	},
	[49] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 7,
		name = "Cyclone",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 49,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[50] = {
		channeling = false,
		crosshair = true,
		cooldown = 30000,
		needTarget = false,
		archetype = 7,
		name = "Wind Wall",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 50,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				8
			}
		}
	},
	[51] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 3,
		name = "Anti-Healing Venom",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 51,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[52] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 3,
		name = "Coup de Grace",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 52,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[53] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 3,
		name = "Crippling Dagger",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 53,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[54] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 3,
		name = "Death Blossom",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 54,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[55] = {
		channeling = false,
		crosshair = false,
		cooldown = 12000,
		needTarget = true,
		archetype = 3,
		name = "Shadowstrike",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 55,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				2
			}
		}
	},
	[56] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 3,
		name = "Illusive",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 56,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[57] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 3,
		name = "Quick Slash",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 57,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[58] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 3,
		name = "Shadowbind",
		aggressive = true,
		range = 4,
		type = "none",
		selfTarget = false,
		id = 58,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[59] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 3,
		name = "Stalk",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 59,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[60] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = false,
		archetype = 3,
		name = "Sinister Plot",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 60,
		resource = {
			gain = 200
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[61] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 1,
		name = "Brutal Strike",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 61,
		resource = {
			gain = 20
		},
		cost = {
			none = {
				0
			}
		}
	},
	[62] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 1,
		name = "Bull Rush",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 62,
		resource = {
			gain = 30
		},
		cost = {
			none = {
				0
			}
		}
	},
	[63] = {
		channeling = false,
		crosshair = false,
		cooldown = 50000,
		needTarget = false,
		archetype = 1,
		name = "Earthquake",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 63,
		resource = {
			consume = true
		},
		cost = {
			health = {
				12
			}
		}
	},
	[64] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 1,
		name = "Feasting Strike",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 64,
		resource = {
			consume = true
		},
		cost = {
			none = {
				0
			}
		}
	},
	[65] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 1,
		name = "Guillotine",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 65,
		resource = {
			consume = true
		},
		cost = {
			health = {
				4
			}
		}
	},
	[66] = {
		channeling = false,
		crosshair = true,
		cooldown = 45000,
		needTarget = false,
		archetype = 1,
		name = "Fierce Leap",
		aggressive = true,
		range = 5,
		type = "none",
		selfTarget = false,
		id = 66,
		resource = {
			gain = 30
		},
		cost = {
			health = {
				10
			}
		}
	},
	[67] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 1,
		name = "Berserk",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 67,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[68] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 1,
		name = "Shieldbreak",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 68,
		resource = {
			consume = true
		},
		cost = {
			health = {
				5
			}
		}
	},
	[69] = {
		channeling = false,
		crosshair = false,
		cooldown = 25000,
		needTarget = false,
		archetype = 1,
		name = "Fissure",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 69,
		resource = {
			consume = true
		},
		cost = {
			health = {
				8
			}
		}
	},
	[70] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 1,
		name = "Spiked Chains",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 70,
		resource = {
			gain = 20
		},
		cost = {
			health = {
				5
			}
		}
	},
	[71] = {
		channeling = true,
		crosshair = true,
		cooldown = 45000,
		needTarget = false,
		archetype = 6,
		name = "Circle Of Light",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 71,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				28
			}
		}
	},
	[72] = {
		channeling = false,
		crosshair = false,
		cooldown = 18000,
		needTarget = true,
		archetype = 6,
		name = "Devotion",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 72,
		resource = {
			gain = 50
		},
		cost = {
			mana = {
				22
			}
		}
	},
	[73] = {
		channeling = true,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 6,
		name = "Flash Heal",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 73,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[74] = {
		channeling = true,
		crosshair = false,
		cooldown = 25000,
		needTarget = true,
		archetype = 6,
		name = "Healing Channel",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 74,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				28
			}
		}
	},
	[75] = {
		channeling = true,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 6,
		name = "Holy Force",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 75,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[76] = {
		channeling = true,
		crosshair = false,
		cooldown = 10000,
		needTarget = true,
		archetype = 6,
		name = "Dawn's Light",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 76,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				22
			}
		}
	},
	[77] = {
		channeling = true,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 6,
		name = "Holy Shackles",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 77,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	[78] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = false,
		archetype = 6,
		name = "Living Saint",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 78,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				15
			}
		}
	},
	[79] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 6,
		name = "Mend",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 79,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				18
			}
		}
	},
	[80] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 6,
		name = "Smite",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 80,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				1
			}
		}
	},
	[82] = {
		channeling = false,
		crosshair = true,
		cooldown = 30000,
		needTarget = false,
		archetype = 5,
		name = "Combustion",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 82,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[83] = {
		channeling = false,
		crosshair = true,
		cooldown = 45000,
		needTarget = false,
		archetype = 5,
		name = "Flame Tornado",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 83,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[84] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 5,
		name = "Coldblast",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 84,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				8
			}
		}
	},
	[85] = {
		channeling = false,
		crosshair = true,
		cooldown = 30000,
		needTarget = false,
		archetype = 5,
		name = "Teleport",
		aggressive = true,
		range = 6,
		type = "none",
		disableQuickcast = true,
		selfTarget = false,
		id = 85,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[86] = {
		channeling = false,
		crosshair = false,
		cooldown = 35000,
		needTarget = false,
		archetype = 7,
		name = "Force Push",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 86,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[87] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = true,
		archetype = 8,
		name = "Curse",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 87,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				2
			}
		}
	},
	[88] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 8,
		name = "Death Touch",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 88,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[89] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = false,
		archetype = 8,
		name = "Mirror Image",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 89,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				15
			}
		}
	},
	[90] = {
		channeling = false,
		crosshair = false,
		cooldown = 3000,
		needTarget = false,
		archetype = 4,
		name = "Spirits Resolve",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 90,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[91] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = false,
		archetype = 4,
		name = "Unchained",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 91,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				8
			}
		}
	},
	[97] = {
		channeling = true,
		crosshair = true,
		cooldown = 90000,
		needTarget = false,
		archetype = 5,
		name = "Meteor Strike",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 97,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				15
			}
		}
	},
	[98] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 5,
		name = "Frost Lance",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 98,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[99] = {
		channeling = false,
		crosshair = false,
		cooldown = 2000,
		needTarget = true,
		archetype = 6,
		name = "Purify",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 99,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				12
			}
		}
	},
	[100] = {
		channeling = false,
		crosshair = false,
		cooldown = 60000,
		needTarget = true,
		archetype = 6,
		name = "Generous Influence",
		aggressive = false,
		range = 6,
		type = "none",
		selfTarget = true,
		id = 100,
		resource = {
			gain = 50
		},
		cost = {
			mana = {
				26
			}
		}
	},
	[101] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 7,
		name = "Whirlwind",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 101,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	[102] = {
		channeling = false,
		crosshair = true,
		cooldown = 60000,
		needTarget = false,
		archetype = 7,
		name = "Typhoon",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 102,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				16
			}
		}
	},
	[103] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 8,
		name = "Eternal Worms",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 103,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				7
			}
		}
	},
	[104] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 8,
		name = "Dispel",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 104,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[105] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = true,
		archetype = 1,
		name = "Pummel",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 105,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[106] = {
		channeling = true,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 1,
		name = "Bladestorm",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 106,
		resource = {
			consume = true
		},
		cost = {
			health = {
				10
			}
		}
	},
	[107] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = false,
		archetype = 4,
		name = "Smiting Smash",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 107,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				3
			}
		}
	},
	[108] = {
		channeling = false,
		crosshair = false,
		cooldown = 75000,
		needTarget = false,
		archetype = 4,
		name = "Unbreakable",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = true,
		id = 108,
		resource = {
			gain = 50
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[109] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 3,
		name = "Venomous Weapons",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 109,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				10
			}
		}
	},
	[110] = {
		channeling = false,
		crosshair = false,
		cooldown = 35000,
		needTarget = true,
		archetype = 3,
		name = "Shadow Kick",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 110,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				5
			}
		}
	},
	[111] = {
		channeling = true,
		crosshair = false,
		cooldown = 90000,
		needTarget = true,
		archetype = 2,
		name = "Spirit Rangers",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 111,
		resource = {
			gain = 30
		},
		cost = {
			mana = {
				16
			}
		}
	},
	[112] = {
		channeling = false,
		crosshair = true,
		cooldown = 60000,
		needTarget = false,
		archetype = 2,
		name = "Venom Grenade",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 112,
		resource = {
			gain = 20
		},
		cost = {
			mana = {
				14
			}
		}
	},
	[113] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = true,
		archetype = 4,
		name = "Revenge",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 113,
		resource = {
			consume = true
		},
		cost = {
			mana = {
				6
			}
		}
	},
	[114] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = true,
		archetype = 4,
		name = "Shield Throw",
		aggressive = true,
		range = 4,
		type = "none",
		selfTarget = false,
		id = 114,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				3
			}
		}
	},
	[2500] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 6,
		name = "Dawns Apotheosis",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2500,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				30
			}
		}
	},
	[2501] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 3,
		name = "Reaper's Eclipse",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2501,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				20
			}
		}
	},
	[2502] = {
		channeling = true,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 5,
		name = "Cataclysm",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2502,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				25
			}
		}
	},
	[2503] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 4,
		name = "Eternal Retribution",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 2503,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				20
			}
		}
	},
	[2504] = {
		channeling = true,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 2,
		name = "Celestial Barrage",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2504,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				20
			}
		}
	},
	[2505] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 1,
		name = "Chaos Chains",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2505,
		resource = {
			none = 0
		},
		cost = {
			health = {
				15
			}
		}
	},
	[2506] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 8,
		name = "Witch's Call",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2506,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				20
			}
		}
	},
	[2507] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 7,
		name = "Eye of the Storm",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = false,
		id = 2507,
		resource = {
			none = 0
		},
		cost = {
			mana = {
				25
			}
		}
	},
	{
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 5,
		name = "Dragons Roar",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 12,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[29] = {
		channeling = false,
		crosshair = false,
		cooldown = 10000,
		needTarget = true,
		archetype = 8,
		name = "Shadowflare",
		aggressive = true,
		range = 6,
		type = "none",
		selfTarget = false,
		id = 29,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[31] = {
		channeling = false,
		crosshair = true,
		cooldown = 20000,
		needTarget = false,
		archetype = 4,
		name = "Banner Of Justice",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 31,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[33] = {
		channeling = false,
		crosshair = true,
		cooldown = 20000,
		needTarget = false,
		archetype = 4,
		name = "Banner Of Virtue",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 33,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[38] = {
		channeling = true,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 4,
		name = "Spirit Hammer",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 38,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[40] = {
		channeling = false,
		crosshair = true,
		cooldown = 1000,
		needTarget = false,
		archetype = 4,
		name = "Zealots Flame",
		aggressive = false,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 40,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[81] = {
		channeling = false,
		crosshair = true,
		cooldown = 2000,
		needTarget = false,
		archetype = 0,
		name = "Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 81,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[92] = {
		channeling = false,
		crosshair = true,
		cooldown = 8000,
		needTarget = false,
		archetype = 0,
		name = "Small Siege Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 92,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[93] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Basic Water Pumps",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 93,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[94] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Efficient Water Pumps",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 94,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[95] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Advanced Water Pumps",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 95,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[96] = {
		channeling = true,
		crosshair = false,
		cooldown = 15000,
		needTarget = false,
		archetype = 0,
		name = "Ship Repair",
		aggressive = false,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 96,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[115] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 0,
		name = "Small Hullbreaker Cannon",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 115,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[116] = {
		channeling = true,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Small Drake Head",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 116,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[117] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Superior Water Pumps",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 117,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[118] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Royal Water Pumps",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 118,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[119] = {
		channeling = false,
		crosshair = true,
		cooldown = 8000,
		needTarget = false,
		archetype = 0,
		name = "Medium Siege Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 119,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[120] = {
		channeling = false,
		crosshair = true,
		cooldown = 6000,
		needTarget = false,
		archetype = 0,
		name = "Medium Shrapnel Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 120,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[121] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 0,
		name = "Medium Hullbreaker Cannon",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 121,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[122] = {
		channeling = true,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Medium Drake Head",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 122,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[123] = {
		channeling = true,
		crosshair = true,
		cooldown = 18000,
		needTarget = false,
		archetype = 0,
		name = "Medium Mortar Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 123,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[124] = {
		channeling = false,
		crosshair = true,
		cooldown = 8000,
		needTarget = false,
		archetype = 0,
		name = "Large Siege Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 124,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[125] = {
		channeling = false,
		crosshair = true,
		cooldown = 6000,
		needTarget = false,
		archetype = 0,
		name = "Large Shrapnel Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 125,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[126] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 0,
		name = "Large Hullbreaker Cannon",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 126,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[127] = {
		channeling = true,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Large Drake Head",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 127,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[128] = {
		channeling = true,
		crosshair = true,
		cooldown = 18000,
		needTarget = false,
		archetype = 0,
		name = "Large Mortar Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 128,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[129] = {
		channeling = false,
		crosshair = false,
		cooldown = 10000,
		needTarget = false,
		archetype = 0,
		name = "Small Broadside Artillery",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 129,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[130] = {
		channeling = false,
		crosshair = false,
		cooldown = 10000,
		needTarget = false,
		archetype = 0,
		name = "Medium Broadside Artillery",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 130,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[131] = {
		channeling = false,
		crosshair = false,
		cooldown = 10000,
		needTarget = false,
		archetype = 0,
		name = "Large Broadside Artillery",
		aggressive = true,
		range = 1,
		type = "none",
		selfTarget = false,
		id = 131,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[132] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Small Grappling Hooks",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 132,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[133] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Medium Grappling Hooks",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 133,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[134] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Large Grappling Hooks",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 134,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[135] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Small Floating Mines",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 135,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[136] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Medium Floating Mines",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 136,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[137] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Large Floating Mines",
		aggressive = true,
		range = -1,
		type = "none",
		selfTarget = true,
		id = 137,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[138] = {
		channeling = true,
		crosshair = true,
		cooldown = 18000,
		needTarget = false,
		archetype = 0,
		name = "Small Mortar Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 138,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[139] = {
		channeling = false,
		crosshair = true,
		cooldown = 6000,
		needTarget = false,
		archetype = 0,
		name = "Small Shrapnel Cannon",
		aggressive = true,
		range = 10,
		type = "none",
		selfTarget = false,
		id = 139,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1000] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 0,
		name = "Friendship Amulet",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1000,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1001] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Slow Mending Potion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1001,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1002] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Mana Potion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1002,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1003] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Health Potion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1003,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1004] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = true,
		archetype = 0,
		name = "Vial Of Poison",
		aggressive = true,
		range = 3,
		type = "trinket",
		selfTarget = false,
		id = 1004,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1005] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 0,
		name = "Bandages",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1005,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1006] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Regrowth Stone",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1006,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1008] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = false,
		archetype = 0,
		name = "Twilight Lamp",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1008,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1009] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Iron Blood Potion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1009,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1010] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Mending Potion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1010,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1011] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = false,
		archetype = 0,
		name = "Coal Goblin Gadget",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1011,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1012] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = false,
		archetype = 0,
		name = "Venomous Goblin Gadget",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1012,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1013] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Phosphorescent Shell",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1013,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1014] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = false,
		archetype = 0,
		name = "Poisonpetal Seeds",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1014,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1015] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Javelin Quiver",
		aggressive = true,
		range = 6,
		type = "trinket",
		selfTarget = false,
		id = 1015,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1016] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Crystal of the Dawn",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1016,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1017] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Duelist's Honor",
		aggressive = true,
		range = 6,
		type = "trinket",
		selfTarget = false,
		id = 1017,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1018] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Exotic Incense",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1018,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1019] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Stepping Fuel",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1019,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1020] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Aegis Rune",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1020,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1021] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Bag of Caltrops",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1021,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1022] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Emergency Blockage",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1022,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1023] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Hidden Blade",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1023,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1024] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Goblin Contraption",
		aggressive = true,
		range = 6,
		type = "trinket",
		selfTarget = false,
		id = 1024,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1025] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Ships Glue Leftovers",
		aggressive = true,
		range = 4,
		type = "trinket",
		selfTarget = false,
		id = 1025,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1026] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Suspicious Milk",
		aggressive = true,
		range = 4,
		type = "trinket",
		selfTarget = false,
		id = 1026,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1027] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = true,
		archetype = 0,
		name = "Musty Liquid",
		aggressive = true,
		range = 4,
		type = "trinket",
		selfTarget = false,
		id = 1027,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1028] = {
		channeling = false,
		crosshair = false,
		cooldown = 30000,
		needTarget = false,
		archetype = 0,
		name = "Agent Medallion",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1028,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1029] = {
		channeling = false,
		crosshair = true,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Dawn Bomb",
		aggressive = true,
		range = 7,
		type = "trinket",
		selfTarget = false,
		id = 1029,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1030] = {
		channeling = false,
		crosshair = false,
		cooldown = 720000,
		needTarget = false,
		archetype = 0,
		name = "Bloody Binding Stone",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1030,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1031] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = true,
		archetype = 0,
		name = "Iron Handcuffs",
		aggressive = true,
		range = 1,
		type = "trinket",
		selfTarget = false,
		id = 1031,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1032] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Living Branches",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1032,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1033] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Bear Trap",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1033,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1034] = {
		channeling = false,
		crosshair = true,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Emergencial Campfire",
		aggressive = true,
		range = 3,
		type = "trinket",
		selfTarget = false,
		id = 1034,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1035] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Icedrop Solution",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1035,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1036] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Mysticap Fetish",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1036,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1037] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Sinister Sigil",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1037,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1038] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Angerhorn Impaler",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1038,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1039] = {
		channeling = false,
		crosshair = true,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Goblin Bombs",
		aggressive = true,
		range = 7,
		type = "trinket",
		selfTarget = false,
		id = 1039,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1040] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Omega Stone",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1040,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1041] = {
		channeling = false,
		crosshair = false,
		cooldown = 900000,
		needTarget = false,
		archetype = 0,
		name = "Torment Configuration",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1041,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1042] = {
		channeling = false,
		crosshair = true,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Ratoxin Bomb",
		aggressive = true,
		range = 7,
		type = "trinket",
		selfTarget = false,
		id = 1042,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1043] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = false,
		archetype = 0,
		name = "Shamanic Brooch",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1043,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1044] = {
		channeling = false,
		crosshair = false,
		cooldown = 900000,
		needTarget = false,
		archetype = 0,
		name = "Idol of Gluttony",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1044,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1045] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = true,
		archetype = 0,
		name = "Ghostlamp",
		aggressive = true,
		range = 5,
		type = "trinket",
		selfTarget = false,
		id = 1045,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1046] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "The Grim Smile",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1046,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1047] = {
		channeling = false,
		crosshair = false,
		cooldown = 1800000,
		needTarget = false,
		archetype = 0,
		name = "Eldritch Crow Mask",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1047,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1048] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = true,
		archetype = 0,
		name = "Eau de Berserk",
		aggressive = true,
		range = 1,
		type = "trinket",
		selfTarget = false,
		id = 1048,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1049] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 0,
		name = "Toxique N5",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1049,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1050] = {
		channeling = false,
		crosshair = false,
		cooldown = 720000,
		needTarget = false,
		archetype = 0,
		name = "Dendrion's Memento",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1050,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1051] = {
		channeling = false,
		crosshair = false,
		cooldown = 15000,
		needTarget = true,
		archetype = 0,
		name = "Hypnotizing Stone",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1051,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1052] = {
		channeling = false,
		crosshair = false,
		cooldown = 150000,
		needTarget = true,
		archetype = 0,
		name = "Corrupted Fang",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1052,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1053] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Immaterial Bangle",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1053,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1054] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Dunewalker Cloak",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1054,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1055] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = false,
		archetype = 0,
		name = "Toadish Cloak",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1055,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1056] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Frost Ward",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1056,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1057] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Waterless Poppy Blossoms",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1057,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1058] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Reflective Carapace",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1058,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1059] = {
		channeling = false,
		crosshair = false,
		cooldown = 420000,
		needTarget = false,
		archetype = 0,
		name = "Bracelet of Skorn",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1059,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1060] = {
		channeling = false,
		crosshair = false,
		cooldown = 420000,
		needTarget = false,
		archetype = 0,
		name = "Garment of Skorn",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1060,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1061] = {
		channeling = false,
		crosshair = false,
		cooldown = 300000,
		needTarget = false,
		archetype = 0,
		name = "Gauntlet of Skorn",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1061,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1062] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = true,
		archetype = 0,
		name = "Golden Maw",
		aggressive = true,
		range = 1,
		type = "trinket",
		selfTarget = false,
		id = 1062,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1063] = {
		channeling = false,
		crosshair = false,
		cooldown = 600000,
		needTarget = false,
		archetype = 0,
		name = "Arrowcaller Horn",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1063,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1064] = {
		channeling = true,
		crosshair = false,
		cooldown = 180000,
		needTarget = true,
		archetype = 0,
		name = "Withered Demon Hand",
		aggressive = true,
		range = 10,
		type = "trinket",
		selfTarget = false,
		id = 1064,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1065] = {
		channeling = false,
		crosshair = false,
		cooldown = 120000,
		needTarget = false,
		archetype = 0,
		name = "Saint Alsek's Cloak",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = true,
		id = 1065,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1066] = {
		channeling = false,
		crosshair = false,
		cooldown = 180000,
		needTarget = false,
		archetype = 0,
		name = "Golden Fleece",
		aggressive = true,
		range = -1,
		type = "trinket",
		selfTarget = false,
		id = 1066,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1500] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Lethal Edge",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = true,
		id = 1500,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1501] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Fencer's Escape",
		aggressive = false,
		range = -1,
		type = "weapon_skill",
		selfTarget = false,
		id = 1501,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1502] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Blade Warding",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = true,
		id = 1502,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1503] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Power Surge",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = true,
		id = 1503,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1504] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 0,
		name = "Magic Ward",
		aggressive = false,
		range = 6,
		type = "weapon_skill",
		selfTarget = true,
		id = 1504,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1505] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Mana Overcharge",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = true,
		id = 1505,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1506] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Steady Stance",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = true,
		id = 1506,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1507] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 0,
		name = "Rending Throw",
		aggressive = true,
		range = 6,
		type = "weapon_skill",
		selfTarget = false,
		id = 1507,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1508] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Whirl Slash",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = false,
		id = 1508,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1509] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = true,
		archetype = 0,
		name = "Mace Toss",
		aggressive = true,
		range = 6,
		type = "weapon_skill",
		selfTarget = false,
		id = 1509,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1510] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Mighty Smash",
		aggressive = true,
		range = -1,
		type = "weapon_skill",
		selfTarget = false,
		id = 1510,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1600] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Dash T1",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1600,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1601] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Dash T2",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1601,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1602] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Dash T3",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1602,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1603] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 0,
		name = "Sprint T1",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1603,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1604] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 0,
		name = "Sprint T2",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1604,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1605] = {
		channeling = false,
		crosshair = false,
		cooldown = 90000,
		needTarget = false,
		archetype = 0,
		name = "Sprint T3",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1605,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1606] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Stampede T1",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1606,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1607] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Stampede T2",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1607,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1608] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Stampede T3",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1608,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1609] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Charge T1",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1609,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1610] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Charge T2",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1610,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	},
	[1611] = {
		channeling = false,
		crosshair = false,
		cooldown = 40000,
		needTarget = false,
		archetype = 0,
		name = "Charge T3",
		aggressive = true,
		range = -1,
		type = "mount_skill",
		selfTarget = true,
		id = 1611,
		resource = {
			none = 0
		},
		cost = {
			none = {
				0
			}
		}
	}
}
g_spells.crafting = {
	["apprentice synthesis"] = {
		progress = 25,
		level = 1,
		name = "Apprentice Synthesis",
		success = 100,
		durability = 1,
		labour = 10,
		id = 1,
		type = AbilityTypeSynthesis
	},
	["expert synthesis"] = {
		progress = 50,
		level = 15,
		name = "Expert Synthesis",
		success = 90,
		durability = 1,
		labour = 15,
		id = 2,
		type = AbilityTypeSynthesis
	},
	["master synthesis"] = {
		progress = 75,
		level = 35,
		name = "Master Synthesis",
		success = 80,
		durability = 1,
		labour = 20,
		id = 3,
		type = AbilityTypeSynthesis
	},
	["artisan synthesis"] = {
		progress = 100,
		level = 60,
		name = "Artisan Synthesis",
		success = 75,
		durability = 2,
		labour = 25,
		id = 4,
		type = AbilityTypeSynthesis
	},
	["smither's synthesis"] = {
		unique = 1,
		roundCooldown = 10,
		progress = 200,
		name = "Smither's Synthesis",
		success = 75,
		durability = 2,
		labour = 30,
		id = 5,
		profession = ProfessionBlacksmithing,
		type = AbilityTypeSynthesis
	},
	["apprentice shine"] = {
		labour = 5,
		level = 5,
		name = "Apprentice Shine",
		success = 100,
		chance = 10,
		id = 6,
		type = AbilityTypeShine
	},
	["expert shine"] = {
		labour = 10,
		level = 25,
		name = "Expert Shine",
		success = 100,
		chance = 20,
		id = 7,
		type = AbilityTypeShine
	},
	["master shine"] = {
		labour = 15,
		level = 45,
		name = "Master Shine",
		success = 100,
		chance = 30,
		id = 8,
		type = AbilityTypeShine
	},
	["artisan shine"] = {
		labour = 20,
		level = 65,
		name = "Artisan Shine",
		success = 100,
		chance = 50,
		id = 9,
		type = AbilityTypeShine
	},
	["carpenter's shine"] = {
		unique = 1,
		roundCooldown = 10,
		labour = 25,
		name = "Carpenter's Shine",
		success = 75,
		chance = 100,
		id = 10,
		profession = ProfessionCarpentry,
		type = AbilityTypeShine
	},
	["apprentice touch"] = {
		level = 8,
		quality = 25,
		name = "Apprentice Touch",
		success = 100,
		durability = 1,
		labour = 10,
		id = 11,
		type = AbilityTypeTouch
	},
	["expert touch"] = {
		level = 23,
		quality = 50,
		name = "Expert Touch",
		success = 90,
		durability = 1,
		labour = 15,
		id = 12,
		type = AbilityTypeTouch
	},
	["master touch"] = {
		level = 48,
		quality = 75,
		name = "Master Touch",
		success = 80,
		durability = 1,
		labour = 20,
		id = 13,
		type = AbilityTypeTouch
	},
	["artisan touch"] = {
		level = 75,
		quality = 100,
		name = "Artisan Touch",
		success = 75,
		durability = 2,
		labour = 25,
		id = 14,
		type = AbilityTypeTouch
	},
	["precision touch"] = {
		unique = 1,
		roundCooldown = 10,
		name = "Precision Touch",
		success = 75,
		quality = 200,
		durability = 2,
		labour = 30,
		id = 15,
		profession = ProfessionWeaving,
		type = AbilityTypeTouch
	},
	["apprentice mend"] = {
		level = 10,
		name = "Apprentice Mend",
		success = 100,
		durability = 1,
		labour = 15,
		id = 16,
		type = AbilityTypeMend
	},
	["expert mend"] = {
		level = 30,
		name = "Expert Mend",
		success = 90,
		durability = 2,
		labour = 25,
		id = 17,
		type = AbilityTypeMend
	},
	["master mend"] = {
		level = 50,
		name = "Master Mend",
		success = 80,
		durability = 3,
		labour = 35,
		id = 18,
		type = AbilityTypeMend
	},
	["artisan mend"] = {
		level = 70,
		name = "Artisan Mend",
		success = 60,
		durability = 5,
		labour = 45,
		id = 19,
		type = AbilityTypeMend
	},
	["focused mend"] = {
		unique = 1,
		roundCooldown = 10,
		name = "Focused Mend",
		success = 100,
		durability = 4,
		labour = 50,
		id = 20,
		profession = ProfessionCooking,
		type = AbilityTypeMend
	},
	["new tools"] = {
		unique = 2,
		roundCooldown = 10,
		name = "New Tools",
		success = 100,
		rounds = 3,
		labour = 50,
		id = 21,
		profession = ProfessionCarpentry,
		type = AbilityTypeBuff
	},
	["steady hand"] = {
		unique = 2,
		roundCooldown = 10,
		name = "Steady Hand",
		success = 100,
		rounds = 1,
		labour = 50,
		id = 22,
		profession = ProfessionWeaving,
		type = AbilityTypeBuff
	},
	["firm grip"] = {
		unique = 2,
		roundCooldown = 10,
		name = "Firm Grip",
		success = 100,
		rounds = 3,
		labour = 50,
		id = 23,
		profession = ProfessionBlacksmithing,
		type = AbilityTypeBuff
	},
	["touch of salt"] = {
		unique = 2,
		roundCooldown = 10,
		name = "Touch of Salt",
		success = 100,
		rounds = 3,
		labour = 50,
		id = 24,
		profession = ProfessionCooking,
		type = AbilityTypeBuff
	}
}
g_spells.potions = {
	[35442] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Lesser Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35442,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35443] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Intermediate Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35443,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35444] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Greater Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35444,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35445] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Major Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35445,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35446] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Supreme Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35446,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35447] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Eternal Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35447,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35448] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Transcendent Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35448,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35449] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T8 Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35449,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35450] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T9 Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35450,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35451] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T10 Health Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35451,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35452] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Lesser Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35452,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35453] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Intermediate Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35453,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35454] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Greater Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35454,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35455] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Major Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35455,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35456] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Supreme Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35456,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35457] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Eternal Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35457,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35458] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "Transcendent Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35458,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35459] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T8 Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35459,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35460] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T9 Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35460,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35461] = {
		channeling = false,
		crosshair = false,
		cooldown = 45000,
		needTarget = false,
		archetype = 0,
		name = "T10 Mana Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35461,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36940] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Energetic Tonic",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36940,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36941] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Training Elixir",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36941,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36947] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Dawn's Drop",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36947,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36948] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Infantry Boost",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36948,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36989] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Tonic of Regeneration",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36989,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36990] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Opportunist's Elixir",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36990,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36998] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Oversea Tonic",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36998,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36995] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Weakening Poison",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36995,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37040] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Thug's Tonic",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37040,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37041] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Nursing Elixir",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37041,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37045] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Assault Tonic",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37045,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37046] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Toxic Poison",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37046,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37125] = {
		channeling = false,
		crosshair = false,
		cooldown = 20000,
		needTarget = false,
		archetype = 0,
		name = "Rusty Old Trap",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37125,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39073] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Combat Panacea",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39073,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39102] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Wild Pheromones",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39102,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37006] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Juggernaut Tonic",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37006,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36957] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Sun Tears",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36957,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39080] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Manastorm Draft",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39080,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39093] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Savage Compound",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39093,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39096] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Slayer Elixir",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39096,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39076] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Expert Elixir",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39076,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39077] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Frenzy Potion",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39077,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39087] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Resilience Mutagen",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39087,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39085] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Quickening Concoction",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39085,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39092] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Sage's Essence",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39092,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39084] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Potent Pheromones",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39084,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39098] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Sumptuous Panacea",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39098,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39074] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Essence of Bravery",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39074,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39075] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Executioner's Mutagen",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39075,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39070] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Astral Decoction",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39070,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37004] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Slowing Poison",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37004,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37054] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Tonic of Blood",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37054,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39100] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Vigorous Draught",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39100,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37053] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Vampirism Venom",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37053,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[39079] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Magic Leeching Venom",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 39079,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36954] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Fatiguing Poison",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36954,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[37005] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Tree of Life Sap",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 37005,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[36956] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Drop of Grace",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 36956,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[43989] = {
		channeling = false,
		crosshair = false,
		cooldown = 24000,
		needTarget = false,
		archetype = 0,
		name = "Rune Scribing Feather",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42989,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34746] = {
		channeling = false,
		crosshair = false,
		cooldown = 1000,
		needTarget = false,
		archetype = 0,
		name = "Norro's Wand",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42989,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28760] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Beer",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28760,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28882] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Wine",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28882,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28761] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Whiskey",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28761,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28767] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Vodka",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28767,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28883] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Rum",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28883,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28754] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Bun",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28754,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28759] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Scone",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28759,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28765] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Muffin",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28765,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28756] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Croissant",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28756,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28757] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Danish",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28757,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28766] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Cookies",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28766,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28764] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Deluxe Cookies",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28764,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28755] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Cake",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28755,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28758] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Deluxe Cake",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28758,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[28753] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Pie",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 28753,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34866] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Settler's Stew",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34866,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34865] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Sailor's Seastew",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34865,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34861] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Roasted Chicken and Veggies",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34861,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34857] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Firered Chicken Kebab",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34857,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34849] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Charred Meat Kebab",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34849,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34859] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Lyderian Chopped Tenderloin",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34859,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34869] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Smoked Sausage",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34869,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34847] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Acornchar Sausage",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34847,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34864] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Rum Downslider",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34864,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34853] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Freshfish Roll",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34853,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34852] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Fillet Lucien",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34852,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34862] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Rohna Roasted Ham",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34862,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34860] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Ravendawnian Porridge",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34860,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34870] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Sweetened Beans",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34870,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34855] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Fruit Pancakes",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34855,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34858] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Lucien's Waffles",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34858,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34851] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Dwarven Purple Shank",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34851,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34848] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Bittersweet Roast",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34848,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34868] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Shaked Fruitmilk",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34868,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34854] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Frozen Sweet Berries",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34854,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[34856] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Iced Fruitmilk",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 34856,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35397] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Apple Cider",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35397,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35400] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Blueberry Wine",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35400,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35399] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Strawberry Whiskey",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35399,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35398] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Banana Vodka",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35398,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35401] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Spiced Rum",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35401,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[35402] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Shanks n' Mash",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 35402,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42109] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Corn Chowder",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42109,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42110] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Corn on a Cob",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42110,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42748] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Glademire Crackers",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42748,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42128] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Corn Salad",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42128,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42111] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Cornbread",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42111,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42723] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Eclipse",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42723,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42724] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Landing Brandy",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42724,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42113] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Loaf Bread",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42113,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42114] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Lyderian Fries",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42114,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42115] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Mashed Potatoes",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42115,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42116] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Omelet",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42116,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42721] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Orange Liqueur",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42721,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42117] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Potato Bread",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42117,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42119] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Rohna Crackers",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42119,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42120] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Rye Bread",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42120,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42121] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Sajecho Hardtack",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42121,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42122] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Scrambled Eggs",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42122,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42124] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Silky Scrambled Eggs",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42124,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42125] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Sourdought Bagel",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42125,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42127] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Steamed Carrots",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42127,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42725] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Blueberry Pie",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42725,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42722] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Boozemelon",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42722,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42108] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Carrot Soup",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42108,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42103] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Apple Puree",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42103,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42104] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Bagel",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42104,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	},
	[42105] = {
		channeling = false,
		crosshair = false,
		cooldown = 0,
		needTarget = false,
		archetype = 0,
		name = "Baked Potatoes",
		aggressive = false,
		range = -1,
		selfTarget = true,
		id = 42105,
		resource = {
			none = 0
		},
		cost = {
			none = 0
		}
	}
}
g_spells.descriptions = {
	fireball = {
		format = "Shoots fireball at target that deals {%d [0.7] (Spell Power) spell damage, #BA7DFF}, applying a stack of fireball.\n\nEach stack of fireball deals {%d [0.05] (Spell Power), #BA7DFF} every {2 seconds, white} for {10 seconds, white}, up to {3 stacks, white}. Every subsequent stack will refresh the duration.\n\nEvery third Fireball, deals an additional {%d [0.20] (Spell Power) spell damage, #BA7DFF} to the target. Adjacent targets receive {50% damage, white} and a stack of fireball is applied to them.."
	},
	erupt = {
		format = "Deals {%d [1.0] (Spell Power) spell damage, #BA7DFF} and applies {3 stacks, white} of Deep Burning on target.\n\nEach Deep Burning stack deals {%d [0.10] (Spell Power) spell damage, #BA7DFF} every {3 seconds, white} for {9 seconds, white}, and reduces {healing, #77D463} received by {20%, white}.\n\nApplies {1, white} additional Deep Burning stack per {10 Aether, white} consumed."
	},
	combustion = {
		format = "Deals {%d [1.0] (Spell Power) spell damage, #BA7DFF} to a small area around the target, {stunning, #FFA851} them for {2 seconds, white}."
	},
	["flame tornado"] = {
		format = "Casts a Flame Tornado at target location dealing {%d [0.6] (Spell Power) spell damage, #BA7DFF} per second to all targets in a small area. Flame Tornado lasts for {5 seconds, white}.\n\nDamage is applied {0.1 seconds, white} faster per {10 Aether, white} consumed."
	},
	pyroblast = {
		format = "Deals {%d [3.0] (Spell Power) spell damage, #BA7DFF} to the target.\n\nChanneling time is reduced by {0.7 seconds, white} and cooldown is reduced by {2 seconds, white} per {10 Aether, white} consumed."
	},
	frostbolt = {
		format = "Shoots a frostbolt that deals {%d [0.7] (Spell Power) spell damage, #BA7DFF}.\n\nEvery third {Frostbolt, #FBFB79} deals an additional {%d [0.35] (Spell Power) spell damage, #BA7DFF}, and also applies a {30% slow, #FFA851} to the target for {5 seconds, white}."
	},
	["frost shards"] = {
		format = "Shoots two frost shards per {10 Aether, white} consumed at the target, dealing {%d [0.35] (Spell Power) spell damage, #BA7DFF} each.\n\nThe target is also {slowed, #FFA851} by {40%, white} for {3 seconds, white}."
	},
	coldblast = {
		format = "Deals {%d [1.0] (Spell Power) spell damage, #BA7DFF} to targets within a medium area around you and {snare, #FFA851} them for {4 seconds, white}.\n\nThe duration of the {snare, #FFA851} is doubled if the target is a creature."
	},
	teleport = {
		format = "Teleports to a selected location.\n\nThis skill has no global cooldown."
	},
	icestorm = {
		format = "Deals {%d [0.25] (Spell Power) spell damage, #BA7DFF} in a medium area, {slowing, #FFA851} all targets hit by {20%, white} for {3 seconds, white} and applying one Frost stack on them.\n\nIncreases {slow, #FFA851} and damage by {6%, white} per {10 Aether, white} consumed."
	},
	["meteor strike"] = {
		format = "When channeling finishes and after a {1 second, white} delay, a massive meteor falls at the target location. It deals {%d [5.0] (Spell Power) spell damage, #BA7DFF} in a small area and {60%, white} of the damage in a medium area."
	},
	["frost lance"] = {
		format = "Shoots a frost lance at a target, dealing {%d [0.75] (Spell Power) spell damage, #BA7DFF}.\n\nIncreases damage by {%d [0.35] (Spell Power) spell damage, #BA7DFF} per {10 Aether, white} consumed."
	},
	["flow of magic"] = {
		format = "Every {1% mana, #52A8F7} spent, gives you a Flow of Magic stack for {10 seconds, white}.\n\nEach Flow of Magic stack increases the {critical damage, #FC7474} of your next {critical hit, #FC7474} by {1%, white} up to {50 stacks, white}. Every subsequent stack will refresh the duration."
	},
	["frost armor"] = {
		format = "Whenever you are hit, lower the attacker's {haste, #C2DBFB} by {15%, white} for {4 seconds, white}."
	},
	havoc = {
		format = "Your {critical strikes, #FC7474} have a {15%, white} chance to increase your {(Spell Power), #BA7DFF} by {%d [0.07] (Spell Power) spell damage, #BA7DFF} for {8 seconds, white} up to {3 stacks, white}. Every subsequent stack will refresh the duration."
	},
	["hot headed"] = {
		format = "Whenever you deal damage with a skill and it does not {critical hit, #FC7474}, gain {2%, white} {critical chance, #FC7474} until you have a {critical hit, #FC7474}. This effect can occur once every {1.5 seconds, white}.\n\nAll stacks of Hot Headed are lost after {30 seconds, white} without dealing damage with any skills."
	},
	amplification = {
		format = "Increases the damage of your skills by {8%, white} at the cost of {25%, white} more {mana, #52A8F7} or {health, #77D463}."
	},
	["fire shield"] = {
		format = "Any attack made against you cause the attacker to take {%d [0.3] (Spell Power) spell damage, #BA7DFF}.\n\nThis effect can only be active if you cast a skill once every {10 seconds, white}.\n\nThe damage can be dealt once to the same target every {3 seconds, white}."
	},
	["flash heal"] = {
		format = "Heals the target for {%d [1.7] (Healing Power) health, #77D463}. Every third {Flash Heal, #FBFB79} heals a bonus {%d [0.5] (Healing Power) health, #77D463} to the target and becomes an {instant cast, white}."
	},
	smite = {
		format = "Deals {%d [0.9] (Spell Power) spell damage, #BA7DFF} to the target. Every third {Smite, #FBFB79} will deal {30%, white} additional damage."
	},
	["dawn's light"] = {
		format = "Heals the target for {%d [3.0] (Healing Power) health, #77D463}.\n\nIncreases {healing, #77D463} by {%d [0.4] (Healing Power), #77D463} per {10 Aether, white} consumed."
	},
	mend = {
		format = "Heals the target for {%d [0.20] (Healing Power) health, #77D463} per second over {10 seconds, white}.\n\nIncreases {healing, #77D463} by {%d [0.06] (Healing Power), #77D463} per {10 Aether, white} consumed."
	},
	["holy shackles"] = {
		format = "{Slows, #FFA851} the enemy for {20%, white} and {snares, #FFA851} it for {0.5 seconds, white} and deals {%d [0.4] (Spell Power) spell damage, #BA7DFF} per second for {2.5 seconds, white}.\n\nThe duration of the {slow, #FFA851} is increased by {0.5 second, white} and the duration of the {snare, #FFA851} is increased by {0.3 seconds, white} per {10 Aether, white} consumed."
	},
	devotion = {
		format = "Heals the target for {%d [3.25] (Healing Power) health, #77D463}."
	},
	["healing channel"] = {
		format = "Focuses on a target for {1 second, white}, healing it by {%d [1.3] (Healing Power) health, #77D463} every {0.5 seconds, white}.\n\nThe duration is increased by {0.5 seconds, white} per {10 Aether, white} consumed."
	},
	["circle of light"] = {
		format = "Heals you and party members inside a medium area for {%d [0.75] (Healing Power) health, #77D463} per second over {5 seconds, white}.\n\n Increases {healing, #77D463} by {%d [0.15] (Healing Power), #77D463} for every {10 Aether, white} consumed."
	},
	["holy force"] = {
		format = "Deals {%d [2.0] (Spell Power) spell damage, #BA7DFF} on the target.\n\nIncreases damage by {%d [0.5] (Spell Power), #BA7DFF} per {10 Aether, white} consumed."
	},
	["living saint"] = {
		format = "Increases {(Defense Power), #FCBE7F} and {(Healing Power), #77D463} by {50%, white} for {12 seconds, white}. "
	},
	purify = {
		format = "Removes {2 random harmful effects, #FFA851} from the target, applying Weakened Spirit for {8 seconds, white}.\n\nWeakened Spirit prevents target from being affected by {Purify, #FBFB79} again."
	},
	["generous influence"] = {
		format = "Heals a target for {%d [4.0] (Healing Power) health, #77D463}.\n\nIf used on yourself, increases {healing, #77D463} done by {20%, white} for {10 seconds, white}. If used on somebody else, increases {healing, #77D463} received by the target by {30%, white}.\n\nGain {10 Aether, white} every {2 seconds, white} for {10 seconds, white}. "
	},
	["invigorated healing"] = {
		format = "Doubles the {base critical chance, #FC7474} for {healing, #77D463} spells."
	},
	["sacred spirit"] = {
		format = "Healing skills on a target with under {30% health, #77D463} heal for {25%, white} more."
	},
	prophet = {
		format = "Whenever you cast {healing, #77D463} skills, there is a {20%, white} chance to reduce the {mana cost, #52A8F7} of the next {healing, #77D463} skills by {50%, white} for the next {4 seconds, white}."
	},
	["healing attunement"] = {
		format = "Targetable heals cast on other players cost 60% less {mana, #52A8F7}."
	},
	["healing bond"] = {
		format = "When you heal a target, you are also healed for {10%, white} of that amount."
	},
	["devout healer"] = {
		format = "Increases your {(Healing Power), #77D463} by {25%, white} but at the cost of {10%, white} {(Weapon Power), #FF5151} and {(Spell Power), #BA7DFF}. \n\nYou can't learn this skill if you already learned {The Cost of Restoration, #FBFB79}. "
	},
	cyclone = {
		format = "Casts a cyclone dealing {%d [0.7] (Spell Power) spell damage, #BA7DFF} to the target.\n\nEvery third cast bounces off to {2, white} other targets within a medium area around the target, dealing {%d [0.6] (Spell Power) spell damage, #BA7DFF} to the main target and {%d [0.5] (Spell Power) spell damage, #BA7DFF} to the second and third target.\n\nIf {Cyclone, #FBFB79} doesn't bounce, it deals additional {%d [0.2] (Spell Power) spell damage, #BA7DFF} to the target."
	},
	barrier = {
		format = "Creates a barrier around a target that absorbs {%d [2.4] (Healing Power), #77D463}, expiring after {8 seconds, white}.\n\nAbsorbs additional {%d [0.25] (Healing Power), #77D463} damage per {10 Aether, white} consumed."
	},
	regenerate = {
		format = "Heals {%d [0.3] (Healing Power) health, #77D463} per second to a target for {10 seconds, white}. "
	},
	["air aura"] = {
		format = "Enchants a friendly target with a wind aura for {2 seconds, white}.\n\nAfter wind aura expires, the target gains {200%, white} of the damage taken as shield for {6 seconds, white}.\n\nThis shield cannot exceed {50%, white} of the target's {Maximum Health, #77D463}. "
	},
	haste = {
		format = "Increases target's {haste, #C2DBFB} attribute by {50%, white} for {10 seconds, white}.\n\nGenerates {50 Aether, white} and applies {exhausted, #FFA851} for {90 seconds, white}, preventing the target from receiving {haste, #C2DBFB}."
	},
	["party recovery"] = {
		format = "Restores {%d [0.20] (Healing Power) health, #77D463} for {15 seconds, white} to the entire party.\n\nRegenerates additional {%d [0.03] (Healing Power) health, #77D463} per {10 Aether, white} consumed."
	},
	["wind wall"] = {
		format = "Creates a {3 tile, white} wide wind wall preventing projectiles from going through for {5 seconds, white}.\n\nTargets inside the wall are pushed {1 tile, white} away."
	},
	["force push"] = {
		format = "Pushes everyone around you {3 tiles, white} away, {slowing, #FFA851} them by {50%, white} for {2 seconds, white}."
	},
	["healing air sphere"] = {
		format = "Heals {%d [1.0] (Healing Power) health, #77D463} per second for {3 seconds, white} to all party members within a medium area away from the sphere.\n\nIncreases the duration by {1 second, white} per {10 Aether, white} consumed."
	},
	whirlwind = {
		format = "Deals {%d [0.5] (Spell Power) spell damage, #BA7DFF}.\n\nIncreases damage by {%d [0.3] (Spell Power), #BA7DFF} per {10 Aether, white} consumed."
	},
	typhoon = {
		format = "Places a typhoon that pulls targets within a medium area to the edge of the typhoon, {slowing, #FFA851} them by {30%, white} for {5 seconds, white}.\n\nIncreases {slow, #FFA851} effectiveness by {10%, white} per {10 Aether, white} consumed."
	},
	["windstrike spirit"] = {
		format = "Imbue your target's weapon with wind for {15 seconds, white}, every {third, yellow} basic attack of the target affected by {Windstrike Spirit, yellow} deal additional {50%, white} {Adaptative Damage, yellow} to the target. Increase {Windstrike Spirit, yellow} damage by {20%, white} {Adaptative Damage, yellow} per 10 Aether consumed"
	},
	["wind mastery"] = {
		format = "Your targetable support or friendly skills have a {50% chance, white} to increase the target's {haste, #C2DBFB} by {10%, white} for {5 seconds, white}.\n\n{Wind Mastery, #FBFB79} can stack up to {3 times, white}. Once the maximum number of stacks is reached, the effect duration will not be renewed."
	},
	meditate = {
		format = "Increases the effectiveness of your {healing, #77D463} over time skills by {20%, white}."
	},
	["lingering impact"] = {
		format = "Increases the duration of {healing, #77D463} over time skills by {20%, white}. "
	},
	["sins of the many"] = {
		format = "Increases {(Healing Power), #77D463} by {4%, white} for each party member nearby."
	},
	celerity = {
		format = "Reduces the cooldown of all skills by {10%, white}."
	},
	["the cost of restoration"] = {
		format = "Increases your {(Healing Power), #77D463} by {25%, white} but at the cost of {10%, white} {(Weapon Power), #FF5151} and {(Spell Power), #BA7DFF}. \n\n You can't learn this skill if you already learned {Devout Healer, #FBFB79}. "
	},
	["arcane pulse"] = {
		format = "Deals {%d [0.7] (Spell Power) spell damage, #BA7DFF}, applying a Pulse stack.\n\nEach stack of Pulse reduces target's {(Defense Power), #FCBE7F} by {%d [0.03] (Spell Power), #BA7DFF} for {8 seconds, white} up to {3 stacks, white}.\n\nEvery third {Arcane Pulse, #FBFB79} deals an additional {%d [0.20] (Spell Power) spell damage, #BA7DFF}. "
	},
	curse = {
		format = "Applies a Curse that deals {%d [0.45] (Spell Power) spell damage, #BA7DFF} to the target every {3 seconds, white} for {15 seconds, white}.\n\nWhenever a Cursed target is defeated, generates {10 Aether, white}."
	},
	["arcane torrent"] = {
		format = "Deals {%d [0.3] (Spell Power) spell damage, #BA7DFF} every {0.3 seconds, white} for {1.5 seconds, white}.\n\nIncreases channeling duration by {0.3 seconds, white} per {10 Aether, white} consumed.\n\nDeals {%d [0.05] (Spell Power), #BA7DFF} more damage per Pulse stack on target. Does not consume Pulse stacks on use."
	},
	leech = {
		format = "Throws a leech at the target, dealing {%d [0.20] (Spell Power) spell damage, #BA7DFF} per second for {10 seconds, white}, healing you by the same amount."
	},
	["magic rupture"] = {
		format = "{Slows, #FFA851} the target by {20%, white}.\n\nGives you {20% Movement Speed, #C2DBFB} for {8 seconds, white}. "
	},
	hex = {
		format = "Turns the target into a toad for {2 seconds, white}. Increases duration for {0.40 seconds, white} per {10 Aether, white} consumed."
	},
	["shackles of pain"] = {
		format = "Shackles your target for {5 seconds, white}.\n\nIf you receive damage from any source, the shackled target will also receive {50%, white} of the damage."
	},
	["mirror image"] = {
		format = "Creates a copy of you that mimics certain skills at {15%, white} of their effectiveness for {15 seconds, white}. These copies have limited range and cannot move.\n\nAn additional clone is created consuming {30 Aether, white}, and another one consuming {50 Aether, white}.\n\n{Skills Affected:, #FBFB79} Concussive Shot, Precision Shot, Quick Fire, Wind Arrow, Dawn's Light, Flash Heal, Healing Channel, Holy Force, Smite, Crippling Dagger, Arcane Pulse, Arcane Torrent, Fireball, Frost Shards, Frostbolt, Pyroblast."
	},
	["death touch"] = {
		format = "Consumes a Curse on the target, dealing {%d [2.5] (Spell Power) spell damage, #BA7DFF}. If Death Touch hits the target, Curse spreads to all enemies within a small area.\n\nIncreases damage by {%d [0.5] (Spell Power) spell damage, #BA7DFF} per {10 Aether, white} consumed. "
	},
	["eternal worms"] = {
		format = "Consumes {3, white} of your damage over time skills on the target, dealing {50%, white} of their remaining damage and {snaring, #FFA851} them for {1.5 seconds, white}.\n\nIt also heals you for {75%, white} of their remaining damage or double against players.\n\nGenerates {10 Aether, white} per damage over time skill consumed."
	},
	dispel = {
		format = "Removes {2 random beneficial effects, white} from the target."
	},
	["witchcraft mastery"] = {
		format = "Decreases global cooldown on skills by {10%, white}."
	},
	["cursed touch"] = {
		format = "Increases the total damage of over time skills by {30%, white}. "
	},
	exploitation = {
		format = "Whenever you deal damage to a target with a skill, apply an Exploitation stack to the target.\n\nEach stack of Exploitation reduces the target's {(Defense Power), #FCBE7F} by {0.25%, white} while increasing your {(Defense Power), #FCBE7F} by the same amount for {30 seconds, white} up to {20 stacks, white}. Every subsequent stack will refresh the duration."
	},
	["arcane corruption"] = {
		format = "Whenever you deal damage, applies a stack of Arcane Corruption to the target every {2 seconds, white}.\n\nEach stack of Arcane Corruption reduces the target's {healing, #77D463} by {1%, white} up to {15 times, white}.\n\nWhen Arcane Corruption reaches {15 stacks, white}, doubles the {healing, #77D463} reduction for {6 seconds, white} and remove all the remaining stacks."
	},
	["creeping death"] = {
		format = "Whenever a target is below {50% health, #77D463}, damage over time skills deal {15%, white} more damage."
	},
	bloodmancer = {
		format = "Whenever you deal damage over time, heal for {10%, white} of the dealt damage."
	},
	["brutal strike"] = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} to the target. Every third {Brutal Strike, #FBFB79} heals you for {%d [0.3] (Weapon Power) health, #77D463}."
	},
	guillotine = {
		format = "Deals {%d [0.5] (Weapon Power) weapon damage, #FF5151} to the target.\n\nIncreases damage by {%d [0.35] (Weapon Power), #FF5151} per {10 Aether, white} consumed."
	},
	earthquake = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} in a medium area, {slowing, #FFA851} targets by {30%, white} for {6 seconds, white}.\n\nIncreases damage by {%d [0.2] (Weapon Power), #FF5151} per {10 Aether, white} consumed."
	},
	fissure = {
		format = "Deals {%d [1] (Weapon Power) weapon damage, #FF5151} and {stuns, #FFA851} targets in a cone-shaped area in front for {1.5 seconds, white}.\n\nIncreases {stun, #FFA851} by {0.2 seconds, white} per {10 Aether, white} consumed."
	},
	shieldbreak = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} and reduces target's {(Weapon Defense), #FCBE7F} by {%d [0.05] (Weapon Power), #FF5151} for {8 seconds, white}.\n\nIncreases damage by {%d [0.03] (Weapon Power), #FCBE7F} per {10 Aether, white} consumed.\n\nThe range of this ability adapts to the weapon you are currently wielding."
	},
	berserk = {
		format = "Generates {100 Aether, white} after a {1.5 second, white} delay and additional {50 Aether, white} every {5 seconds, white} in Berserk, but lowers your {(Defense Power), #FCBE7F} by {10%, white} for {5 seconds, white}. "
	},
	["feasting strike"] = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} to the target\n\nHeals you by {%d [0.36] (Weapon Power) health, #77D463} per {10 Aether, white} consumed."
	},
	["bull rush"] = {
		format = "Charges {5 tiles, white} forward, any targets within {3 tiles, white} width in front receive {%d [0.5] (Weapon Power) weapon damage, #FF5151}.\n\nPassed targets are pushed back. "
	},
	["spiked chains"] = {
		format = "Throws chains in a cone-shaped area in front of you.\n\nEvery target hit by it will be {snared, #FFA851} for {1 second, white}, {slowed, #FFA851} by {30%, white} for {3 seconds, white} and pulled to your direction if there is enough room."
	},
	["fierce leap"] = {
		format = "Jumps to a location slamming the ground in a medium area, dealing {%d [1.0] (Weapon Power) weapon damage, #FF5151}.\n\n{Stuns, #FFA851} enemies in a small area and {slows, #FFA851} by {50%, white} in a medium area for {2 seconds, white}. "
	},
	pummel = {
		format = "Interrupts the target's channeling, dealing {%d [0.4] (Weapon Power) weapon damage, #FF5151}. An interrupted skill can't be used again within {5 seconds, white}. "
	},
	bladestorm = {
		format = "Charges for up to {2 seconds, white} and deals up to {%d [1.6] (Weapon Power) weapon damage, #FF5151} in a small area. Heals {%d [0.15] (Weapon Power) health, #77D463} for each target hit.\n\nMoving when charging is possible at {50%, white} reduced speed.\n\nIncreases damage by {%d [0.2] (Weapon Power), #FF5151} and heals {%d [0.035] (Weapon Power) more health, #77D463} per {10 Aether, white} consumed."
	},
	savagery = {
		format = "Your {critical strikes, white} apply {Deep Wounds, yellow} to the target. Deep Wounds deal {%d [0.05] (Weapon Power), #d54b3f} weapon damage to the target every {3 seconds, white} for {12 seconds, white} and {heal, #53c07b} you by {15%, white} of the damage dealt per stack. You can have up to {3 Deep Wounds stacks, white} on a target. Every subsequent stack will refresh the duration."
	},
	hatred = {
		format = "Whenever you deal damage, gain {1 stack, white} of Hatred. Whenever you take damage, gain {2 stacks, white} of Hatred for {6 seconds, white}.\n\nEach stack of Hatred increases your {(Attack Power), #FF5151} by {0.4%, white} and reduces your {(Defense Power), #FCBE7F} by {0.75%, white}. This effect can occur once every {2 seconds, white}, stacking up to {20 times, white}."
	},
	bloodlust = {
		format = "Whenever you get below {30% health, #77D463}, {Bloodlust, #FBFB79} will increase your {%d [0.1] (Weapon Power), #FF5151}, {critical chance, #FC7474} by {20%, white} and {attack speed, #C2DBFB} by {20%, white} for {10 seconds, white}. This effect can occur once every {90 seconds, white}.\n\nEvery time you cast {Brutal Strike, #FBFB79} it will reduce the remaining cooldown of {Bloodlust, #FBFB79} by {1.5 seconds, white}."
	},
	bloodseeker = {
		format = "Heals {15%, white} of the damage dealt by basic attacks."
	},
	["concentrated impact"] = {
		format = "Whenever you cast a skill and deals a {critical strike, #FC7474} with it, apply a Sunder to the target for {12 seconds, white}.\n\nEach stack of Sunder reduces the target's {(Defense Power), #FCBE7F} by {%d [0.03], white} of your {(Weapon Power), #FF5151}, stacking up to {5 times, white}."
	},
	bloodbath = {
		format = "Whenever you deal damage with your basic attacks, gain one stack of Bloodbath, melee basic attacks will give double of the amount.\n\nEach stack of Bloodbath heals {0.1%, white} of the damage dealt, stacking up to {20 times, white}. Upon reaching the maximum amount of stacks gain Frenzy, removing all stacks of Bloodbath and healing {10% of Maximum Health, #77D463}.\n\nFrenzy heals {10%, white} of the damage dealt for {10 seconds, white}.\n\n{Bloodbath, #FBFB79} effect goes on a {40 second cooldown, white} upon gaining Frenzy."
	},
	bash = {
		format = "Swings your weapon with force, dealing {%d [1.0] (Weapon Power) weapon damage, #FF5151}.\n\nEvery third {Bash, #FBFB79} deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} to the main target and {%d [0.5] (Weapon Power) weapon damage, #FF5151} in a small area around you, causing {20% slow, #FFA851} for {2 seconds, white} to all targets."
	},
	["spirits resolve"] = {
		format = "Heals {%d [2.0] (Healing Power) health, #77D463} from yourself."
	},
	provoke = {
		format = "Forces all targets in a medium area to attack you. All taunted enemies cannot change their target for {6 seconds, white} and receive Threatened status.\n\nThreatened targets are immune to any other source of taunt for {15 seconds, white}."
	},
	["banner of protection"] = {
		format = "Place a banner on the ground. Increases {(Defense Power), #FCBE7F} by {5%, white} for {20 seconds, white} to party members within a large area around the banner.\n\nIncreases {(Defense Power), #FCBE7F} by additional {3%, white} per {10 Aether, white} consumed."
	},
	safeguard = {
		format = "Focuses your protective will on a party member. {50%, white} of the damage taken by selected party member is redirected to you for {8 seconds, white}. "
	},
	["spirit shield"] = {
		format = "Increases your {(Defense Power), #FCBE7F} by {10%, white} for {8 seconds, white}, but also decreasing your {(Attack Power), #FF5151} by {10%, white} for the same duration.\n\nIncreases {(Defense Power), #FCBE7F} by additional {10%, white} per {10 Aether, white} consumed."
	},
	unchained = {
		format = "Removes any movement impairing effects, such as {slows, #FFA851}, {stuns, #FFA851} and {snares, #FFA851} and makes you immune to them for {12 seconds, white}. "
	},
	["blessed earth"] = {
		format = "Deals {%d [0.075] (Weapon Defense), #FF5151} + {%d [0.075] (Spell Defense), #BA7DFF} + {%d [0.05] (Spell Power) spell damage, #BA7DFF} per second in a medium area, healing {%d [0.03] (Healing Power) health, #77D463} per second for every target hit for {6 seconds, white}.\n\nIncreases damage by {%d [0.025] (Weapon Defense), #FF5151} + {%d [0.025] (Spell Defense), #BA7DFF} + {%d [0.03] (Spell Power) spell damage, #BA7DFF} and increases {healing, #77D463} by {%d [0.025] (Healing Power), #77D463} per {10 Aether, white} consumed."
	},
	["smiting smash"] = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} to all targets around you, lowering their {(Attack Power), #FF5151} by {10%, white} and {slowing, #FFA851} them by {10%, white} for {6 seconds, white}.\n\nIncreases {(Attack Power), #FF5151} reduction and {slow, #FFA851} effectiveness dealt to targets by {5%, white} per {10 Aether, white} consumed."
	},
	unbreakable = {
		format = "Absorbs {50%, white} of all damage received for {5 seconds, white}. When it ends, all damage received during {Unbreakable, #FBFB79} is {healed, #77D463} back to you over {5 seconds, white}. "
	},
	revenge = {
		format = "Deals {%d [1.0] (Weapon Power) weapon damage, #FF5151} to the target. Adjacent creatures will receive {25%, white} of the damage dealt to the target.\n\nIncreases the damage by {%d [0.20] (Weapon Power), #FF5151} to the target creature and increases the damage dealt to adjacent creatures by {15%, white} per {10 Aether, white} consumed.\n\nTaking damage for at least {10%, white} of your {Maximum Health, #77D463} will cause {Revenge, #FBFB79} to use {50 Aether, white} without consuming it for {5 seconds, white}. "
	},
	["shield throw"] = {
		format = "Throws a spiritual shield at the target, dealing {%d [0.3] (Weapon Power) weapon damage, #FF5151} and interrupting any channeling from the target."
	},
	["undying will"] = {
		format = "Whenever your {health, #77D463} is below {10%, white}, raise your {(Defense Power), #FCBE7F} by {200%, white} for {6 seconds, white}.\n\nThis effect can occur once every {5 minutes, white}."
	},
	["strong footed"] = {
		format = "Reduces the duration of {slows, #FFA851}, {stuns, #FFA851} and {snares, #FFA851} by {20%, white}. "
	},
	["devout protector"] = {
		format = "Increases your {(Weapon Defense), #FF5151} and {(Spell Defense), #BA7DFF} by {30%, #77D463} but at the cost of {20%, white} of {(Weapon Power), #FF5151} and {(Spell Power), #BA7DFF}. "
	},
	guardian = {
		format = "When you are below {80% health, white}, any damage received has a {5%, white} chance to activate {Guardian, #FBFB79}.\n\nHeals {1%, white} of your total {health, #77D463} per second for {10 seconds, white}. {Guardian, #FBFB79} can be activated once every {30 seconds, white}."
	},
	["divine purpose"] = {
		format = "Whenever you receive {healing, #77D463} from any source, your {(Defense Power), #FCBE7F} is increased by {0.5%, white} for {6 seconds, white} up to {20 stacks, white}.\n\nThis effect can occur once every {1 second, white}. Every subsequent stack will refresh the duration."
	},
	["giant's blood"] = {
		format = "Increases your {health, #77D463} by {10%, white}. "
	},
	["quick slash"] = {
		format = "Slashes the target, dealing {%d [1.05] (Weapon Power) weapon damage, #FF5151}. Every third {Quick Slash, #FBFB79} has a guaranteed chance to {critical hit, #FC7474}."
	},
	shadowstrike = {
		format = "Stabs the target, dealing {%d [0.5] (Weapon Power) weapon damage, #FF5151}, applying a {Bleed, #FC7474} that deals {%d [0.15] (Weapon Power) weapon damage, #FF5151} every second for {4 seconds, white}.\n\nIncreases damage and {bleeding damage, #FC7474} by {20%, white} per {10 Aether, white} consumed."
	},
	["crippling dagger"] = {
		format = "Throws a dagger at the target, dealing {%d [0.75] (Weapon Power) weapon damage, #FF5151} and {slowing, #FFA851} it by {20%, white} for {8 seconds, white}.\n\nWhile the target is affected by {Crippling Dagger, #FBFB79}, the skill can be reactivated to dash in front of the target"
	},
	["sinister plot"] = {
		format = "Generates {20 Aether, white} per second for {10 seconds, white}. "
	},
	stalk = {
		format = "Dashes behind the target, {slowing, #FFA851} it by {50%, white} for {2 seconds, white}.\n\n{Stalk, #FBFB79} can be reactivated within {3 seconds, white} to go back to the original cast location.\n\nIf {Stalk, #FBFB79} is not reactivated, reduces its cooldown to {14 seconds, white}."
	},
	shadowbind = {
		format = "Throws a shadow net that {snares, #FFA851} the target for {2 seconds, white}.\n\nThe duration is increased by {0.4 seconds, white} per {10 Aether, white} consumed."
	},
	illusive = {
		format = "Dodges all incoming basic attacks and non-area ability damage for {2 seconds, white}, but your {(Weapon Power), #FF5151} and {(Spell Power), #BA7DFF} will be reduced by {30%, white} for the duration of Illusive.\n\nIncreases duration by {0.8 second, white} per {10 Aether, white} consumed."
	},
	["coup de grace"] = {
		format = "Deals {%d [0.5] (Weapon Power) weapon damage, #FF5151} to the target, an extra {%d [0.75] (Weapon Power) weapon damage, #FF5151}, and Coup de Grace cooldown will be reduced by {20 seconds, white} if used within {3 seconds, white} after {Stalk, #FBFB79}.\n\nIncreases damage dealt by {%d [0.4] (Weapon Power), #FF5151} per {10 Aether, white} consumed."
	},
	["death blossom"] = {
		format = "Strikes the target three times dealing {%d [2.0] (Weapon Power) weapon damage, #FF5151} in total.\n\nThe total damage increases by the {%d [0.6] (Weapon Power), #FF5151} for every {10 Aether, white} points consumed."
	},
	["anti-healing venom"] = {
		format = "Deals {%d [0.5] (Weapon Power) weapon damage, #FF5151} to the target and reduces {healing, #77D463} received from skills by {50%, white} for {5 seconds, white}.\n\nIncreases duration by {2 seconds, white} per {10 Aether, white} consumed.\n\nThe range of this skill adapts to the weapon you are currently wielding. "
	},
	["venomous weapons"] = {
		format = "For the next {15 seconds, white}, basic attacks reduce target's {(Defense Power), #FCBE7F} by {1%, white} for {8 seconds, white}, up to {10 stacks, white}.\n\nIncreases buff duration by {2 seconds, white} per {10 Aether, white} consumed. Every subsequent stack will refresh the duration of the debuff."
	},
	["shadow kick"] = {
		format = "Kicks the target, dealing {%d [0.4] (Weapon Power) weapon damage, #FF5151} and interrupts a target's channeling. If you interrupt a skill, adds a {30%, white} slow to the target's channeling and skill global cooldown for {4 seconds, white}. "
	},
	["deadly duelist"] = {
		format = "When dual wielding or using a Light Blade, increases your {haste, #C2DBFB} by {20%, white}. "
	},
	["lethal toxins"] = {
		format = "Increases the effectiveness of skills' {slow, #FFA851} by {33%, white} of the base amount."
	},
	["shadow proficiency"] = {
		format = "Your {critical strikes, #FC7474} have a {25%, white} chance to generate {20 Aether, white}. This effect can occur once every 6 seconds."
	},
	["killer instinct"] = {
		format = "Deals {10%, white} more damage to targets under {50%, white} health."
	},
	trickster = {
		format = "Every hit you land on the target, will steal {Movement Speed, #C2DBFB} from it by {1%, white} for {3.5 seconds, white}.\n\nDouble the amount for melee. Up to {10 stacks, white}. Dealing damage to a different target will remove trickster effects from the previous target.\n\nThis effect can occur every 0.5 seconds."
	},
	["cheap shot"] = {
		format = "Whenever you deal damage, there is a {10%, white} chance to increase your current {Critical Strike Chance, #FC7474} by {10%, white} for {6 seconds, white}. "
	},
	["wind arrow"] = {
		format = "Shoots an arrow that deals {%d [0.85] (Weapon Power) weapon damage, #FF5151} to the target. Every third {Wind Arrow, #FBFB79} fires an additional Wind Arrow at {50% damage, white}."
	},
	["concussive shot"] = {
		format = "Shoots an arrow that deals {%d [0.75] (Weapon Power) weapon damage, #FF5151} and {slows, #FFA851} the target by {20%, white} for {4 seconds, white}.\n\nIncreases {slow, #FFA851} by {5%, white} per {10 Aether, white} consumed."
	},
	["viper arrow"] = {
		format = "Shoots an arrow that deals {%d [0.6] (Weapon Power) weapon damage, #FF5151} to the target and applies Poison that deals {%d [0.05] (Weapon Power) weapon damage, #FF5151} per second for {8 seconds, white}.\n\nPoison damage is increased by {%d [0.05] (Weapon Power) weapon damage, #FF5151} per {10 Aether, white} consumed."
	},
	["quick fire"] = {
		format = "Shoots {3 arrows, white}, each one dealing {%d [0.55] (Weapon Power) weapon damage, #FF5151} for {3 seconds, white}. Shoots 1 additional arrow per {10 Aether, white} consumed."
	},
	["snaring shot"] = {
		format = "Shoots an arrow that deals {%d [0.5] (Weapon Power) weapon damage, #FF5151}, applying {snare, yellow} to target for {2 seconds, white}.\n\nThe duration of the {snare, #FFA851} is doubled if the target is a creature."
	},
	["precision shot"] = {
		format = "Channels for {2.5 seconds, white} to shoot a powerful arrow. Deals {%d [3.0] (Weapon Power) weapon damage, #FF5151} to the target. Casting time is reduced by {0.5 seconds, white} per {10 Aether, white} consumed."
	},
	disengage = {
		format = "Shoots an arrow that deals {%d [1.0] (Weapon Power) weapon damage, #FF5151}. It knocks you back by {2 tiles, white} and the target by {3 tiles, white} while {slowing, yellow} the target by {50%, white} for {1.5 seconds, white}."
	},
	["rain of arrows"] = {
		format = "Shoots a rain of arrows in a medium area for {2 seconds, white}, each arrow dealing {%d [0.25] (Weapon Power) weapon damage, #FF5151} and {slowing, #FFA851} enemies hit by {30%, white}, for {1 second, white}.\n\nThe shooting duration increases {0.5 seconds, white} per {10 Aether, white} consumed."
	},
	["dragons arrow"] = {
		format = "Shoots an arrow that causes the target to burn, dealing {%d [0.8] (Weapon Power) weapon damage, #FF5151} per second for {4 seconds, white}.\n\nCreates a burning ground between you and the target applying the same effect to enemies crossing it and {slowing, #FFA851} them by {20%, white}. Cooldown is reduced by {3 seconds, white} per {10 Aether, white} consumed."
	},
	["spirit rangers"] = {
		format = "Shoots nine arrows over {2 seconds, white}, each arrow hitting the target and dealing {%d [0.5] (Weapon Power) weapon damage, #FF5151}. "
	},
	["venom grenade"] = {
		format = "Throws a venom grenade in a small area, dealing {%d [0.2] (Weapon Power) weapon damage, #FF5151} per second for {6 seconds, white}. Affected targets are {slowed, #FFA851} by {30%, white} and their received healing is reduced by {30%, white} for {6 seconds, white}. "
	},
	["dawn arrow"] = {
		format = "Shoots an arrow in a small area. Targets in the affected area will become {Blinded, #FFA851} and {Confused, #FFA851} for {2.5 seconds, white}. "
	},
	fleetfooted = {
		format = "Taking damage for at least {10%, white} of your {Maximum Health, #77D463} within {2 seconds, white} will increase your {Movement Speed, #C2DBFB} by {30%, white} for {3 seconds, white}.\n\nThis effect can occur once every {20 seconds, white}."
	},
	["clever adaptation"] = {
		format = "Whenever you deal damage to a target, if it is {4 or more tiles, white} away from you, deals extra {%d [0.15] (Weapon Power) weapon damage, #FF5151}. However, if the target is {3 or less tiles, white} away from you, increases the effectiveness of your {slows, #FFA851} and {snares, #FFA851} by {30%, white}."
	},
	["clear focus"] = {
		format = "Every {5th, white} basic attack on the same target restores {10 Aether, white}. Clear Focus lasts for {10 seconds, white}. Every subsequent stack will refresh the duration. "
	},
	["careful aim"] = {
		format = "Your attacks to targets with {80%, white} or more {health, #77D463} deal {20%, white} more damage."
	},
	["marked for death"] = {
		format = "Your attacks apply Marked for Death to the target, reducing target's {(Defense Power), #FCBE7F} by {0.35%, white} for {6 seconds, white}, up to {15 stacks, white}. Every subsequent stack will refresh the duration.\n\nUpon reaching 15 stacks, the {(Defense Power), #FCBE7F} reduction is doubled for {6 seconds, white}, stacks will be reseted when this effect ends.\n\nThis effect can be applied once every {1.2 seconds, white}."
	},
	blitz = {
		format = "Whenever you deal damage, you have a {10%, white} chance to increase your {haste, #C2DBFB} by {30%, white} for {6 seconds, white}. "
	},
	halo = {
		format = "After healing yourself, your {(Defense Power), #FCBE7F} is increased by {5%, white} for {5 seconds, white}. It does not stack."
	},
	anchor = {
		format = "Anchors the ship, locking it in place."
	},
	unanchor = {
		format = "Unanchors the ship, allowing it to sail again."
	},
	cannon = {
		format = "Fires a cannon ball that deals between {100 to 200 damage, white}."
	},
	["small siege cannon"] = {
		format = "Fires a heavy cannon ball that deals between {150 to 300 damage, white}."
	},
	["medium siege cannon"] = {
		format = "Fires a heavy cannon ball that deals between {200 to 400 damage, white}."
	},
	["large siege cannon"] = {
		format = "Fires a heavy cannon ball that deals between {250 to 500 damage, white}."
	},
	["small shrapnel cannon"] = {
		format = "Fires a cloud of shrapnel projectiles, dealing between {100 to 200 damage, white} while applying a Damaged Sail stack.\n\nEach stack {slows, #FFA851} the afflicted ship/creature by {5%, white} for {20 seconds, white}. Stacks up to {3 times, white}. New stacks do not refresh this duration."
	},
	["medium shrapnel cannon"] = {
		format = "Fires a cloud of shrapnel projectiles, dealing between {150 to 300 damage, white} while applying a Damaged Sail stack.\n\nEach stack {slows, #FFA851} the afflicted ship/creature by {6%, white} for {20 seconds, white}. Stacks up to {3 times, white}. New stacks do not refresh this duration."
	},
	["large shrapnel cannon"] = {
		format = "Fires a cloud of shrapnel projectiles, dealing between {200 to 400 damage, white} while applying a Damaged Sail stack.\n\nEach stack {slows, #FFA851} the afflicted ship/creature by {7%, white} for {20 seconds, white}. Stacks up to {3 times, white}. New stacks do not refresh this duration."
	},
	["small hullbreaker cannon"] = {
		format = "Fires a powerful blast in a straight line in front of your ship, dealing between {500 to 700 damage, white}."
	},
	["medium hullbreaker cannon"] = {
		format = "Fires a powerful blast in a straight line in front of your ship, dealing between {700 to 1000 damage, white}."
	},
	["large hullbreaker cannon"] = {
		format = "Fires a powerful blast in a straight line in front of your ship, dealing between {1000 to 1400 damage, white}."
	},
	["small drake head"] = {
		format = "Fires a flame in front of the ship for {5 seconds, white}, burning the target for {75 damage, white} per second while also applying a Burning Ship status, dealing {25 damage, white} per second during {8 seconds, white}."
	},
	["medium drake head"] = {
		format = "Fires a flame in front of the ship for {5 seconds, white}, burning the target for {125 damage, white} per second while also applying a Burning Ship status, dealing {40 damage, white} per second during {8 seconds, white}."
	},
	["large drake head"] = {
		format = "Fires a flame in front of the ship for {5 seconds, white}, burning the target for {175 damage, white} per second while also applying a Burning Ship status, dealing {55 damage, white} per second during {8 seconds, white}."
	},
	["small mortar cannon"] = {
		format = "After telegraphing for {2.5 seconds, white}, fires an explosive projectile, dealing between {400 to 600 damage, white} in the area."
	},
	["medium mortar cannon"] = {
		format = "After telegraphing for {2.5 seconds, white}, fires an explosive projectile, dealing between {600 to 800 damage, white} in the area."
	},
	["large mortar cannon"] = {
		format = "After telegraphing for {2.5 seconds, white}, fires an explosive projectile, dealing between {800 to 1200 damage, white} in the area."
	},
	["small broadside artillery"] = {
		format = "Fires a barrage of cannon shots on both sides of the ship, dealing {250 to 300 damage, white}. This ability has {3 charges, white}."
	},
	["medium broadside artillery"] = {
		format = "Fires a barrage of cannon shots on both sides of the ship, dealing {350 to 400 damage, white}. This ability has {3 charges, white}."
	},
	["large broadside artillery"] = {
		format = "Fires a barrage of cannon shots on both sides of the ship, dealing {450 to 550 damage, white}. This ability has {3 charges, white}."
	},
	["small floating mines"] = {
		format = "Leaves explosive mines in a line behind you, lasting for {10 seconds, white}.\n\nIf a target goes into one, it explodes causing {250 damage, white} while also {slowing, #FFA851} the target by {30%, white} for {8 seconds, white}."
	},
	["medium floating mines"] = {
		format = "Leaves explosive mines in a line behind you, lasting for {10 seconds, white}.\n\nIf a target goes into one, it explodes causing {500 damage, white} while also {slowing, #FFA851} the target by {35%, white} for {8 seconds, white}."
	},
	["large floating mines"] = {
		format = "Leaves explosive mines in a line behind you, lasting for {10 seconds, white}. If a target goes into one, it explodes causing {750 damage, white} while also {slowing, #FFA851} the target by {40%, white} for {8 seconds, white}."
	},
	["small grappling hooks"] = {
		format = "Fires a grappling hook in a line in front of the ship, {slowing, #FFA851} the first target hit by {50% for {3 seconds, white}."
	},
	["medium grappling hooks"] = {
		format = "Fires a grappling hook in a line in front of the ship, {slowing, #FFA851} the first target hit by {70%, white} for {3 seconds, white}."
	},
	["large grappling hooks"] = {
		format = "Fires a grappling hook in a line in front of the ship, {slowing, #FFA851} the first target hit by {90%, white} for {3 seconds, white}."
	},
	["basic water pumps"] = {
		format = "Increases your ship's speed by {100, white} for {5 seconds, white}."
	},
	["efficient water pumps"] = {
		format = "Increases your ship's speed by 150, white} for {5 seconds, white}."
	},
	["advanced water pumps"] = {
		format = "Increases your ship's speed by {200, white} for {5 seconds, white}."
	},
	["superior water pumps"] = {
		format = "Increases your ship's speed by {250, white} for {5 seconds, white}."
	},
	["royal water pumps"] = {
		format = "Increases your ship's speed by {300, white} for {5 seconds, white}."
	},
	repair = {
		format = "Repairs the ship for {50 health, #77D463} every second for {10 seconds, white}."
	},
	["slow mending potion"] = {
		format = "Restores {10 health, #77D463} every {2 seconds, white} for {20 seconds, white}."
	},
	["mana potion"] = {
		format = "Restores {100 mana, #52A8F7}."
	},
	["health potion"] = {
		format = "Restores {100 health, #77D463}."
	},
	["vial of poison"] = {
		format = "Applies poison to the target, dealing {%d [0.15] (Spell Power) spell damage, #BA7DFF} every {2 seconds, white} for {10 seconds, white}."
	},
	["regrowth stone"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {10, white} for {15 seconds, white}."
	},
	["bag of surprises"] = {
		format = "Randomly increases or decreases {(Attack Power), #FF5151} or {(Defense Power), #FCBE7F} for a limited time."
	},
	["twilight lamp"] = {
		format = "Active: Attacks will ignore Chainwraith's Intangibility for {5 minutes, white}. 10 minute cooldown. Passive: Increases {(Attack Power), #FF5151} against creatures from the Chainwraith family by {8, white}."
	},
	["iron blood potion"] = {
		format = "Active: Removes 1 harmful effect from yourself. 5 minute cooldown."
	},
	["mending potion"] = {
		format = "Restores {15 health, #77D463} every {2 seconds, white} for {20 seconds, white}."
	},
	["coal goblin gadget"] = {
		format = "Active: Summons a random Goblin Contraption {level 23, white} to fight for you for {5 minutes, white}, or until destroyed. 10 minute cooldown."
	},
	["venomous goblin gadget"] = {
		format = "Active: Summons a random Goblin Contraption {level 23, white} to fight for you for {5 minutes, white}, or until destroyed. 10 minute cooldown."
	},
	["phosphorescent shell"] = {
		format = "Active: Increases {Wisdom, white} by {20, white}. Decreases {Might, white} and {Intelligence, white} by {5, white} for {30 seconds, white}. 5 minute cooldown."
	},
	["poisonpetal seeds"] = {
		format = "Active: For {1 minute, white}, your basic attacks will apply poison to the target, dealing {5 spell damage, #BA7DFF} per second for {10, white} seconds. 10 minute cooldown."
	},
	["basic reel"] = {
		format = "Deals {10 damage, white} to the target and decreases rod durability by {20, white} each second for {4 seconds, white}."
	},
	["big reel"] = {
		format = "Deals {25 damage, white} to the target and decreases rod durability by {50, white} each second for {4 seconds, white}."
	},
	["expert reel"] = {
		format = "Deals {50 damage, white} to the target and decreases rod durability by {100, white} each second for {4 seconds, white}."
	},
	harpoon = {
		format = "Deals {100 damage, white} to the target and decreases rod durability by {150, white} each second for {4 seconds, white}.\n\nIncreases the chance of the fish becoming aggressive by {50%, white}."
	},
	["master reel"] = {
		format = "Deals {100 damage, white} to the target and decreases rod durability by {200, white} each second for {4 seconds, white}."
	},
	["give slack"] = {
		format = "Deals {5 damage, white} to the target and increases rod durability by {20, white} each second for {4 seconds, white}."
	},
	["fishing nets"] = {
		format = "Deals {5 damage, white} to the target and increases rod durability by {20, white} each second for {4 seconds, white}. Increases the chance of the fish becoming tired by {50%, white}."
	},
	["fishing basket"] = {
		format = "Deals {125 damage, white} to the target and increases rod durability by {10, white} each second for {4 seconds, white}. Can only be used when the fish is below {30% health, #77D463}."
	},
	["apprentice synthesis"] = {
		format = "Adds {25, white} crafting progress, but lowers durability by {1, white}. {100%, white} chance of success."
	},
	["expert synthesis"] = {
		format = "Adds {50, white} crafting progress, but lowers durability by {1, white}. {90%, white} chance of success."
	},
	["master synthesis"] = {
		format = "Adds {75, white} crafting progress, but lowers durability by {1, white}. {80%, white} chance of success."
	},
	["artisan synthesis"] = {
		format = "Adds {100, white} crafting progress, but lowers durability by {2, white}. {75%, white} chance of success."
	},
	["smither's synthesis"] = {
		format = "Adds {200, white} crafting progress, but lowers durability by {2, white}. {75%, white} chance of success."
	},
	["apprentice shine"] = {
		format = "Increases next crafting condition quality chance by {10%, white}. {100%, white} chance of success."
	},
	["expert shine"] = {
		format = "Increases next crafting condition quality chance by {20%, white}. {100%, white} chance of success."
	},
	["master shine"] = {
		format = "Increases next crafting condition quality chance by {30%, white}. {100%, white} chance of success."
	},
	["artisan shine"] = {
		format = "Increases next crafting condition quality chance by {50%, white}. {100%, white} chance of success."
	},
	["carpenter's shine"] = {
		format = "Increases next crafting condition quality chance by {100%, white}. {75%, white} chance of success."
	},
	["apprentice touch"] = {
		format = "Adds {25, white} crafting quality, but lowers durability by {1, white}. {100%, white} chance of success."
	},
	["expert touch"] = {
		format = "Adds {50, white} crafting quality, but lowers durability by {1, white}. {90%, white} chance of success."
	},
	["master touch"] = {
		format = "Adds {75, white} crafting quality, but lowers durability by {1, white}. {80%, white} chance of success."
	},
	["artisan touch"] = {
		format = "Adds {100, white} crafting quality, but lowers durability by {2, white}. {75%, white} chance of success."
	},
	["precision touch"] = {
		format = "Adds {200, white} crafting quality, but lowers durability by {2, white}. {75%, white} chance of success."
	},
	["apprentice mend"] = {
		format = "Restores {1, white} crafting durability. {100%, white} chance of success."
	},
	["expert mend"] = {
		format = "Restores {2, white} crafting durability. {90%, white} chance of success."
	},
	["master mend"] = {
		format = "Restores {3, white} crafting durability. {80%, white} chance of success."
	},
	["artisan mend"] = {
		format = "Restores {5, white} crafting durability. {60%, white} chance of success."
	},
	["focused mend"] = {
		format = "Restores {4, white} crafting durability. {100%, white} chance of success."
	},
	["new tools"] = {
		format = "Crafting durability won't be reduced for next {3, white} performed actions."
	},
	["steady hand"] = {
		format = "Increases the success chance of the next action by {30%, white}. "
	},
	["firm grip"] = {
		format = "Increases the effectiveness of Synthesis abilities by {20%, white} for next {3, white} performed actions."
	},
	["touch of salt"] = {
		format = "Increases the effectiveness of Touch abilities by {20%, white} for next {3, white} performed actions."
	},
	["lesser mana potion"] = {
		format = "Recovers {180 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["intermediate mana potion"] = {
		format = "Recovers {300 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["greater mana potion"] = {
		format = "Recovers {400 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["major mana potion"] = {
		format = "Recovers {500 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["supreme mana potion"] = {
		format = "Recovers {700 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["eternal mana potion"] = {
		format = "Recovers {900 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["transcendent mana potion"] = {
		format = "Recovers {1100 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["t8 mana potion"] = {
		format = "Recovers {960 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["t9 mana potion"] = {
		format = "Recovers {960 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["t10 mana potion"] = {
		format = "Recovers {960 mana, #52A8F7} on use. Shares cooldown with other potions."
	},
	["lesser health potion"] = {
		format = "Recovers {300 health, #77D463} on use. Shares cooldown with other potions."
	},
	["intermediate health potion"] = {
		format = "Recovers {500 health, #77D463} on use. Shares cooldown with other potions."
	},
	["greater health potion"] = {
		format = "Recovers {800 health, #77D463} on use. Shares cooldown with other potions."
	},
	["major health potion"] = {
		format = "Recovers {1100 health, #77D463} on use. Shares cooldown with other potions."
	},
	["supreme health potion"] = {
		format = "Recovers {1500 health, #77D463} on use. Shares cooldown with other potions."
	},
	["eternal health potion"] = {
		format = "Recovers {1800 health, #77D463} on use. Shares cooldown with other potions."
	},
	["transcendent health potion"] = {
		format = "Recovers {2200 health, #77D463} on use. Shares cooldown with other potions."
	},
	["t8 health potion"] = {
		format = "Recovers {2200 health, #77D463} on use. Shares cooldown with other potions."
	},
	["t9 health potion"] = {
		format = "Recovers {2200 health, #77D463} on use. Shares cooldown with other potions."
	},
	["t10 health potion"] = {
		format = "Recovers {2200 health, #77D463} on use. Shares cooldown with other potions."
	},
	["energetic tonic"] = {
		format = "Increases {(Attack Power), #FF5151} by {9, white}. Decreases {(Healing Power), #77D463} and {(Defense Power), #FCBE7F} by {3, white} for {5 minutes}."
	},
	["training elixir"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {15, white} for {2 minutes, white}."
	},
	["dawn's drop"] = {
		format = "Increases {Maximum Mana, #52A8F7} by {150, white} and {Mana Regeneration, #52A8F7} by {30, white} for {5 minutes, white}. "
	},
	["infantry boost"] = {
		format = "Increases {Maximum Health, #77D463} by {150, white} and {Health Regeneration, #77D463} by {30, white} for {5 minutes, white}. "
	},
	["tonic of regeneration"] = {
		format = "Increases {(Healing Power), #77D463} by {9, white}.\n\nDecreases {Movement Speed, #C2DBFB} by {10%, white} for {5 minutes, white}."
	},
	["opportunist's elixir"] = {
		format = "Increases {(Attack Power), #FF5151} by {15, white} for {2 minutes, white}."
	},
	["oversea tonic"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {18, white} and {Movement Speed, #C2DBFB} by 10%.\n\nDecreases {(Attack Power), #FF5151} by {15, white} for {5 minutes, white}."
	},
	["weakening poison"] = {
		format = "For the next {2 minutes, white}, your basic attacks apply a stack of Weakening Poison. Each stack reduces {(Defense Power), #FCBE7F} by {1, white} for {5 seconds, white}, stacking up to {20 times, white}. "
	},
	["thug's tonic"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {9, white}. Decreases {Movement Speed, #C2DBFB} by {10%, white} for {5 minutes, white}."
	},
	["nursing elixir"] = {
		format = "Increases {(Healing Power), #77D463} by {15, white} for {2 minutes, white}.",
		dontReplaceStats = true
	},
	["assault tonic"] = {
		format = "Increases {(Attack Power), #FF5151} by {18, white} and {Movement Speed, #C2DBFB} by {10%, white}. Decreases {(Defense Power), #FCBE7F} by {15, white} for {5 minutes, white}."
	},
	["toxic poison"] = {
		format = "For the next {2 minutes, white}, your basic attacks apply a stack of Toxic Poison. Each stack deals {2 damage, white} per second for {5 seconds, white}, stacking up to {10 times, white}. "
	},
	["rusty old trap"] = {
		format = "When used, leaves a boar trap behind"
	},
	["javelin quiver"] = {
		format = "Deals {30 to 70 damage, white} to the target. 15% chance to cause {Bleeding, #FC7474} for {7 damage, white} every second for {5 seconds, white}. 5 minute cooldown."
	},
	["crystal of the dawn"] = {
		format = "Active: Instantly heals you and your party by {300 health, #77D463} and increases {(Defense Power), #f4be44} by {15, #f4be44} for {5, white} seconds. 5 minute cooldown."
	},
	["duelist's honor"] = {
		format = "Active: Instantly marks the target for a duel for 15 seconds. Increases {(Attack Power), #FF5151} by {40, white} but decreases {(Defense Power), #FCBE7F} by {40, white} against the marked target. The mark loses the effect if you distance yourself from the target. 5 minute cooldown."
	},
	["exotic incense"] = {
		format = "Active: Instantly {heals, #77D463} yourself by {500, white} and increases {(Attack Power), #FF5151} by {15, white} for {3 seconds, white}. 5 minute cooldown."
	},
	["aegis rune"] = {
		format = "Active: Instantly gain a shield that absorbs {250 damage, white}, lasting for {30 seconds, white}. Increases {(Attack Power), #FF5151} by {15, white} while the shield is active. 5 minute cooldown."
	},
	["bag of caltrops"] = {
		format = "Active: Instantly leaves caltrops behind you lasting for {10 seconds, white} dealing {15 to 35 damage, white} and {slowing, #FFA851} targets that step on them by {30%, white} for {3 seconds, white}. 5 minute cooldown."
	},
	["emergency blockage"] = {
		format = "Active: Instantly leaves wooden barricades behind you lasting for {5 seconds, white} and increases your {Movement Speed, #C2DBFB} by {10%, white} for {10 seconds, white}. 5 minute cooldown."
	},
	["stepping fuel"] = {
		format = "Active: Instantly increases your {Movement Speed, #C2DBFB} by {15%, white} and leaves behind a trail of fire for {5 seconds, white} dealing {80 to 155 damage, white} per second to targets that step on it. 3 minute cooldown."
	},
	["hidden blade"] = {
		format = "Active: Increases {haste, #C2DBFB} by {40, white} for {6 seconds, white}. 3 minute cooldown"
	},
	["goblin contraption"] = {
		format = "Active: Instantly summons a Goblin Contraption that runs toward a target, exploding after reaching the target. Targets affected by the explosion are {stunned, #FFA851} for {1.5 seconds, white}. 5 minute cooldown."
	},
	["ships glue leftovers"] = {
		format = "Active: Deals {75 to 100 weapon damage, #FF5151} and reduces the target's {(Attack Power), #FF5151} by {20, white} for {10, white} seconds. 5 minute cooldown."
	},
	["suspicious milk"] = {
		format = "Active: Deals {75 to 100 weapon damage, #FF5151} and reduces the target's {(Attack Power), #FF5151} and {(Defense Power), #FCBE7F} by {10, white} for {10 seconds, white}. 5 minute cooldown."
	},
	["musty liquid"] = {
		format = "Active: Deals {75 to 100 spell damage, #BA7DFF} and reduces the target's {(Defense Power), #FCBE7F} by {20, white} for {10 seconds, white}. 5 minute cooldown."
	},
	["agent medallion"] = {
		format = "Active: Transforms into a bat. 30 second cooldown. Passive: Increases {(Spell Defense), #BA7DFF} by 28."
	},
	["dawn bomb"] = {
		format = "Active: Deals {80 to 120 spell damage, #BA7DFF} and {stuns, #FFA851} creatures from the Undead family in a small area. 5 minute cooldown."
	},
	["bloody binding stone"] = {
		format = "Active: Summons a Forsaken Vampire {level 51, white} to fight at your side for {3 minutes, white} or until slain. 12 minute cooldown."
	},
	["lethal edge"] = {
		format = "Gain additional {15% critical chance, white}  for {8 seconds, white}."
	},
	["fencer's escape"] = {
		format = "Removes any movement impairing effects, such as {slows, #FFA851}, {stuns, #FFA851} and {snares, #FFA851} and reduces the duration of them by {30%, white} for {5 seconds, white}."
	},
	["blade warding"] = {
		format = "Creates a shield around you, absorbing {%d [3.0] (Defense Power), #FCBE7F}, and reduces the duration of movement impairing effects by {20%, white} for {5 seconds, white}."
	},
	["power surge"] = {
		format = "For {8 seconds, white}, increases the damage of your skills and basic attacks by {12%, white} but you will receive {5%, white} more damage for the same duration."
	},
	["magic ward"] = {
		format = "Creates a shield around you or your friendly target, absorbing {%d [2.5] (Healing Power), #77D463} damage for {6 seconds, white}."
	},
	["mana overcharge"] = {
		format = "Increases the damage of your skills by {10%, white} at the cost of {15%, white} {mana, #52A8F7} or {health, #77D463} for {10 seconds, white}."
	},
	["steady stance"] = {
		format = "Gains {30% Attack Speed, #C2DBFB} for {8 seconds, white}."
	},
	["rending throw"] = {
		format = "Throws an axe at your target, dealing {%d [0.50] of your (Weapon Power), #FF5151}, applying a {bleed, FC7474} that deals {%d [0.40 (Weapon Power), #FF5151} every {2 seconds, white} for {8 seconds, white}, and {slowing, #FFA851} it down by {20%, white} for {4 seconds, white}. "
	},
	["whirl slash"] = {
		format = "Deals {%d [1.50] (Weapon Power), #FF5151} in a medium area around you."
	},
	["mace toss"] = {
		format = "Deals {%d [1.50] (Weapon Power), #FF5151} to the target, applying a {25%, white} {slow, #FFA851} to it for {4 seconds, white}."
	},
	["mighty smash"] = {
		format = "Deals {%d [2.00] (Weapon Power), #FF5151} in a large cone area in front of you."
	},
	["dash t1"] = {
		format = "A short burst which increases the mount's movement speed by {10%, white} for {5 seconds, white}. "
	},
	["dash t2"] = {
		format = "A short burst which increases the mount's {Movement Speed, #C2DBFB} by {20%, white} for {5 seconds, white}. "
	},
	["dash t3"] = {
		format = "A short burst which increases the mount's {Movement Speed, #C2DBFB} by {30%, white} for {5 seconds, white}. "
	},
	["sprint t1"] = {
		format = "A lasting gallop which increases the mount's {Movement Speed, #C2DBFB} by {5%, white} for {30 seconds, white}."
	},
	["sprint t2"] = {
		format = "A lasting gallop which increases the mount's {Movement Speed, #C2DBFB} by {10%, white} for {30 seconds, white}. "
	},
	["sprint t3"] = {
		format = "A lasting gallop which increases the mount's {Movement Speed, #C2DBFB} by {15%, white} for {30 seconds, white}. "
	},
	["stampede t1"] = {
		format = "Recklessly strides up to {4 tiles, white}, ignoring collision and {stunning, #FFA851} the target for {2 seconds, white}. Can't be used while pulling a wagon."
	},
	["stampede t2"] = {
		format = "Recklessly strides up to {4 tiles, white}, ignoring collision and {stunning, #FFA851} the target for {3 seconds, white}. Can't be used while pulling a wagon."
	},
	["stampede t3"] = {
		format = "Recklessly strides up to {4 tiles, white}, ignoring collision and {stunning, #FFA851} the target for {4 seconds, white}. Can't be used while pulling a wagon."
	},
	["charge t1"] = {
		format = "Charges up to {4 tiles, white}, causing {%d [0.5] (Attack Power), #FF5151} damage to the target, then dismounts. Can't be used while pulling a wagon."
	},
	["charge t2"] = {
		format = "Charges up to {4 tiles, white}, causing {%d [0.75] (Attack Power), #FF5151} damage to the target, then dismounts. Can't be used while pulling a wagon."
	},
	["charge t3"] = {
		format = "Charges up to {4 tiles, white}, causing {%d [1.2] (Attack Power), #FF5151} damage to the target, then dismounts. Can't be used while pulling a wagon."
	},
	["iron handcuffs"] = {
		format = "Active: Instantly {stuns, #FFA851} a target within melee range and links it to yourself, making it follow your character's movements for {3 seconds, white}. 3 minute cooldown."
	},
	["living branches"] = {
		format = "Active: Summons an Elderwood ally {level 70, white} to fight at your side for {1 minute, white} or until slain. 5 minute cooldown."
	},
	["bear trap"] = {
		format = "Active: Instantly leaves behind an armed bear trap for {10 seconds, white}, dealing {150 to 250, white} damage and snaring targets that step on it for {5 seconds, white}. 5 minute cooldown."
	},
	["emergencial campfire"] = {
		format = "Active: Lays down an emergency campfire that lasts for {4 seconds, white}. Party members in a medium area gain an increase in {haste, #C2DBFB} by {40, white} for {8 seconds, white}. 5 minute cooldown."
	},
	["icedrop solution"] = {
		format = "Active: Instantly transforms one tile under the player into ice, increasing the player's {Movement Speed, #C2DBFB} on foot by {25%, white} for {3 seconds, white}. Targets who step on the tile will be snared for {6 seconds, white}. The ice tile lasts for {6 seconds, white} before melting. 45 second cooldown."
	},
	["mysticap fetish"] = {
		format = "Active: Instantly restores {400 mana, #52A8F7} and increases {(Defense Power), #FCBE7F} by {20, white} for {5 seconds, white}. 5 minute cooldown."
	},
	["sinister sigil"] = {
		format = "Active: Instantly causes all enemies that are within {5 levels, white} of the user in a medium area to run in fear for {6 seconds, white}. 5 minute cooldown."
	},
	["combat panacea"] = {
		format = "Active: Instantly removes 1 random harmful effect afflicting the user and increases {(Attack Power), #FF5151} by {30, white} for {2 minutes, white}. 5 minute cooldown."
	},
	["wild pheromones"] = {
		format = "Active: Instantly forces creatures in a medium area to attack you for {6 seconds, white}. Increases {(Defense Power), #FCBE7F} by {30, white} for {5 minutes, white}. 5 minute cooldown."
	},
	["juggernaut tonic"] = {
		format = "Increases {(Attack Power), #FF5151} and {(Defense Power), #FCBE7F} by {15, white}. Reduces {Movement Speed, #C2DBFB} by {15%, white} for {5 minutes, white}."
	},
	["tonic of blood"] = {
		format = "Increases {Vitality, white}, {Might, white}, {Intelligence, white}, {Dexterity, white} and {Wisdom, white} by {15, white}. Reduces {Movement Speed, #C2DBFB} by {10%, white} for {5 minutes, white}."
	},
	["vigorous draught"] = {
		format = "Increases {Maximum Health, #77D463} by {600, white} and {Health Regeneration, #77D463} by {60, white} for {5 minutes, white}."
	},
	["manastorm draft"] = {
		format = "Increases {Maximum Mana, #52A8F7} by {600, white} and {Mana Regeneration, #52A8F7} by {60, white} for {5 minutes, white}."
	},
	["savage compound"] = {
		format = "Increases {Precision, white} by {50, white} for {2 minutes, white}."
	},
	["vampirism venom"] = {
		format = "For {2 minutes, white}, your basic attacks apply stacks of Life Poison, draining {2 health, #77D463} per second for {5 seconds, white}. Stacks up to {10 times, white}."
	},
	["slayer elixir"] = {
		format = "Increases {(Attack Power), #FF5151} by {40, white} for {2 minutes, white}."
	},
	["expert elixir"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {40, white} for {2 minutes, white}."
	},
	["resilience mutagen"] = {
		format = "Each harmful effect currently afflicting the user raises their {(Attack Power), #FF5151} by {12, white}, up to a total of {60 (Attack Power), #FF5151} for 4 minutes."
	},
	["sun tears"] = {
		format = "Increases {Maximum Health, #77D463} and {Maximum Mana, #52A8F7} by {400, white}, increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {40, white} for {5 minutes, white}."
	},
	["drop of grace"] = {
		format = "Increases {(Healing Power), #77D463} by {60, white} for {5 minutes, white}.",
		dontReplaceStats = true
	},
	["tree of life sap"] = {
		format = "Increases {Health Regeneration, #77D463} by {120, white}. Reduce {Movement Speed, #C2DBFB} by {15%, white} for {5 minutes, white}."
	},
	["quickening concoction"] = {
		format = "Resets the cooldown of a random skill. 5 minute cooldown."
	},
	["sage's essence"] = {
		format = "Increases {Mana Regeneration, #52A8F7} by {80, white} for {3 minutes, white}."
	},
	["frenzy potion"] = {
		format = "Increases {(Attack Power), #FF5151} and {haste, #C2DBFB} by {45, white}. Reduces {(Defense Power), #FCBE7F} by {50, white} for {5 minutes, white}."
	},
	["potent pheromones"] = {
		format = "Instantly forces creatures in a medium area to attack you for {6 seconds, white}. Increases {(Defense Power), #FCBE7F} by {60, white} for {5 minutes, white}. 5 minute cooldown."
	},
	["sumptuous panacea"] = {
		format = "Removes up to 3 harmful effects afflicting the user and restores {1000 health, #77D463}. 8 minute cooldown."
	},
	["essence of bravery"] = {
		format = "Increases {(Attack Power), #FF5151} and {(Defense Power), #FCBE7F} by {30, white} for {10 minutes, white}."
	},
	["executioner's mutagen"] = {
		format = "Increases {Precision, white} by {70, white} for {10 minutes, white}."
	},
	["astral decoction"] = {
		format = "Instantly resets the cooldown of all skills and fully restores {mana, #52A8F7}. 15 minute cooldown."
	},
	["slowing poison"] = {
		format = "For {5 minutes, white}, your basic attacks apply a stack of Slowing Poison, reducing 1% {Movement Speed, #C2DBFB} for {5 seconds, white}. Stacks up to {10 times, white}."
	},
	["fatiguing poison"] = {
		format = "For {5 minutes, white}, your basic attacks apply Fatigue, reducing the target's {haste, #C2DBFB} by {4, white} for {5 seconds, white}, stacking up to {10 times, white}."
	},
	["searing poison"] = {
		format = "For {5 minutes, white}, your basic attacks apply a stack of Searing Poison, dealing {7, white} damage per second for {5 seconds, white}. Stacks up to {10 times, white}."
	},
	["magic leeching venom"] = {
		format = "For {5 minutes, white}, your basic attacks apply stacks of Mana Poison, draining {5 mana, #52A8F7} per second for {5 seconds, white}. Stacks up to {10 times, white}."
	},
	["angerhorn impaler"] = {
		format = "Active: Increases {(Attack Power), #FF5151} by {10, white} for {8 seconds, white}.\n\nIf you are under {50% health or less, #77D463} increases it by {20, white}. If you are under {25% Health or less, #77D463} increases it by {40, white}. 3 minute cooldown."
	},
	["goblin bombs"] = {
		format = "Active: Instantly throws a bomb that explodes dealing {50 to 200, white} damage and {stunning, #FFA851} everyone in a small area for {1 second, white}.\n\nAfter half a second, 4 other bombs explode nearby the first explosion, repeating the initial effect. 5 minute cooldown."
	},
	["omega stone"] = {
		format = "Active: Increases {(Attack Power), #FF5151} and {(Defense Power), #FCBE7F} by {40, white} for {1 minute, white}. 5 minute cooldown."
	},
	["torment configuration"] = {
		format = "Active: Redirects half of all damage suffered back to the source for {30 seconds, white}. 15 minute cooldown."
	},
	["ratoxin bomb"] = {
		format = "Active: Instantly throws toxins at the target from a range, dealing {12 spell damage, #BA7DFF} per second and reducing {(Defense Power), #FCBE7F} by {30, white} for {10 seconds, white}. 5 minute cooldown."
	},
	["shamanic brooch"] = {
		format = "Active: Negates all harmful effects targeted at you and increases {healing, #77D463} received by {150, white} for {4 seconds, white}. 3 minute cooldown."
	},
	["idol of gluttony"] = {
		format = "Active: For {10 seconds, white}, converts {20%, white} of all damage dealt by basic attacks and skills to {health, #77D463}. 15 minute cooldown."
	},
	ghostlamp = {
		format = "Active: Steals up to {400 mana, #52A8F7} from the target and summons 2 Mire Wisps {level 55, white} to fight at your side. 10 minute cooldown."
	},
	["the grim smile"] = {
		format = "Active: For {10 seconds, white}, restores {600 health, #77D463} every time you slay an enemy. 5 minute cooldown."
	},
	["eldritch crow mask"] = {
		format = "Active: Increases {(Spell Power), #BA7DFF} by {40, white} during {20 seconds, white} and removes all current beneficial effects from enemies in a medium area centered around you. 30 minute cooldown."
	},
	["eau de berserk"] = {
		format = "Active: Sprays it on a creature to {stun, #FFA851} them for {0.5 seconds, white} and lowers their {(Defense Power), #FCBE7F} by {15, white} over {8 seconds, white}. Has a {30%, white} chance of lowering their {(Defense Power), #FCBE7F} by {30, white} instead while increasing their {(Attack Power), #FF5151} by {30, white}. 2 minute cooldown."
	},
	["toxique n5"] = {
		format = "Active: Slows the player by {15%, white} for {8 seconds, white}. During this duration, leaves a trail of toxic fumes behind, applying a damaging over time effect that deals {20 spell damage, #BA7DFF} per second and slows affected targets by {20%, white} for {8 seconds, white}. 90 second cooldown."
	},
	["dendrion's memento"] = {
		format = "Active: Summons a Living Roots {level 54, white} to fight at your side for {1 minute, white} or until slain. 12 minute cooldown."
	},
	["hypnotizing stone"] = {
		format = "Active: Applies a stack of \"\"Hypnosis\"\" for {20 seconds, white}, and increases skill cost by {1%, white} per stack. When it reaches 5 stacks, silences the target for {5 seconds, white}. 15 second cooldown.\n\nCan be used on players only, and after a target is silenced they cannot be affected by this effect again for {2 minutes, white}."
	},
	["corrupted fang"] = {
		format = "Poisons the target, dealing {150, white} damage per second while also nullifying all healing received by it during {6 seconds, white}. 150 second cooldown."
	},
	["immaterial bangle"] = {
		format = "Receives {20 (Weapon Power), #FF5151} for {10 seconds, white} but consumes {150 mana, #52A8F7} every {2 seconds, white}. 5 minute cooldown."
	},
	["dunewalker cloak"] = {
		format = "Grants {25% haste, #C2DBFB} for {12 seconds, white}. 5 minute cooldown."
	},
	["toadish cloak"] = {
		format = "Active: For {30 seconds, white}, reduces spell damage taken from damage over time effects by {10, white}. 2 minute cooldown."
	},
	["frost ward"] = {
		format = "Active: Increases your {(Defense Power), #FCBE7F} by {40, white} for {15 seconds, white}. If you move, you lose the effect. 5 minute cooldown."
	},
	["waterless poppy blossoms"] = {
		format = "Active: Creates a flower in front of the player. Any party member that steps on it gains a shield of 2000. 5 minute cooldown."
	},
	["reflective carapace"] = {
		format = "Active: Increases your {(Defense Power), #FCBE7F} by {15, white} and redirects {5%, white} of all damage suffered back to the source for {10 seconds, white}. 3 minute cooldown."
	},
	["bracelet of skorn"] = {
		format = "Active: Summons an Astor Herald {level 50, white} to fight at your side for {1 minute, white} or until slain. 7 minute cooldown."
	},
	["garment of skorn"] = {
		format = "Active: Increases {(Defense Power), #FCBE7F} by {20, white} and heals {mana, #52A8F7} equal to half of the damage taken for {6 seconds, white}. 7 minute cooldown."
	},
	["gauntlet of skorn"] = {
		format = "Active: Increases {Precision, white} by {30, white} for {7 seconds, white}. 5 minute cooldown."
	},
	pie = {
		format = "Increases {(Attack Power), #FF5151} by {25, white} for {30 minutes, white}."
	},
	bun = {
		format = "Increases {(Defense Power), #FCBE7F} by {6, white} for {30 minutes, white}."
	},
	cake = {
		format = "Increases {(Attack Power), #FF5151} by {12, white} for {30 minutes, white}."
	},
	croissant = {
		format = "Increases {(Defense Power), #FCBE7F} by {16, white} for {30 minutes, white}."
	},
	danish = {
		format = "Increases {(Defense Power), #FCBE7F} by {25, white} for {30 minutes, white}."
	},
	["deluxe cake"] = {
		format = "Increases {(Attack Power), #FF5151} by {16, white} for {30 minutes, white}."
	},
	scone = {
		format = "Increases {(Defense Power), #FCBE7F} by {8, white} for {30 minutes, white}."
	},
	beer = {
		format = "Channels and restores {50, white} {health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	whiskey = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {15, white} for {20 minutes, white}."
	},
	["deluxe cookies"] = {
		format = "Increases {(Attack Power), #FF5151} by {8, white} for {30 minutes, white}."
	},
	muffin = {
		format = "Increases {(Defense Power), #FCBE7F} by {12, white} for {30 minutes, white}."
	},
	cookies = {
		format = "Increases {(Attack Power), #FF5151} by {6, white} for {30 minutes, white}."
	},
	vodka = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {5, white} for {20 minutes, white}."
	},
	wine = {
		format = "Channels and restores {175, white} {Health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	rum = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {25, white} for {20 minutes, white}."
	},
	["acornchar sausage"] = {
		format = "Increases {Dexterity, white} by {30, white} for {30 minutes, white}."
	},
	["bittersweet roast"] = {
		format = "Increases {Vitality, white}, {Might, white}, {Intelligence, white}, {Dexterity, white} and {Wisdom, white} by {10, white} for {30 minutes, white}."
	},
	["charred meat kebab"] = {
		format = "Increases {Intelligence, white} by {10, white} for {30 minutes, white}."
	},
	["dwarven purple shank"] = {
		format = "Increases {Dexterity, white} by {20, white} for {30 minutes, white}."
	},
	["fillet lucien"] = {
		format = "Increases {Wisdom, white} by {20, white} for {30 minutes, white}."
	},
	["freshfish roll"] = {
		format = "Increases {Wisdom, white} by {30, white} for {30 minutes, white}."
	},
	["frozen sweet berries"] = {
		format = "Increases {Might, white} by {30, white} for {30 minutes, white}."
	},
	["fruit pancakes"] = {
		format = "Increases {Vitality, white} by {10, white} for {30 minutes, white}."
	},
	["iced fruitmilk"] = {
		format = "Increases {Movement Speed, #C2DBFB} by {15%, white} for {30 minutes, white}."
	},
	["firered chicken kebab"] = {
		format = "Increases {Might, white} by {40, white} for {30 minutes, white}."
	},
	["lucien's waffles"] = {
		format = "Increases {Intelligence, white} by {30, white} for {30 minutes, white}."
	},
	["lyderian chopped tenderloin"] = {
		format = "Increases {Intelligence, white} by {40, white} for {30 minutes, white}."
	},
	["ravendawnian porridge"] = {
		format = "Increases {Wisdom, white} by {10, white} for {30 minutes, white}."
	},
	["roasted chicken and veggies"] = {
		format = "Increases {Dexterity, white} by {10, white} for {30 minutes, white}."
	},
	["rohna roasted ham"] = {
		format = "Increases {Dexterity, white} by {40, white} for {30 minutes, white}."
	},
	["rum downslider"] = {
		format = "Increases {Vitality, white} by {20, white} for {30 minutes, white}."
	},
	["sailor's seastew"] = {
		format = "Increases {Wisdom, white} by {40, white} for {30 minutes, white}."
	},
	["settler's stew"] = {
		format = "Increases {Intelligence, white} by {20, white} for {30 minutes, white}."
	},
	["shaked fruitmilk"] = {
		format = "Increases {Might, white} by {20, white} for {30 minutes, white}."
	},
	["smoked sausage"] = {
		format = "Increases {Might, white} by {10, white} for {30 minutes, white}."
	},
	["sweetened beans"] = {
		format = "Increases {Vitality, white} by {40, white} for {30 minutes, white}."
	},
	["apple cider"] = {
		format = "Channels and restores {100, white} {health, #77D463} and {mana, #52A8F7} per second for {15 segundos, white}. Being damaged cancels the effect."
	},
	["banana vodka"] = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {45, white} for {20 minutes, white}."
	},
	["strawberry whiskey"] = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {60, white} for {20 minutes, white}."
	},
	["blueberry wine"] = {
		format = "Channels and restores {325, white} {health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	["spiced rum"] = {
		format = "Channels and restores {400, white} {health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	["shanks n' mash"] = {
		format = "Increases {Vitality, white}, {Might, white}, {Intelligence, white}, {Dexterity, white} and {Wisdom, white} by {15, white} for {30 minutes, white}."
	},
	["orange liqueur"] = {
		format = "Channels and restores {250, white} {health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	["blueberry pie"] = {
		format = "Increases {Vitality, white} by {30, white} for {30 minutes, white}."
	},
	["glademire crackers"] = {
		format = "Increases {(Healing Power), #77D463} by {4, white} for {30 minutes, white}."
	},
	["apple puree"] = {
		format = "Increases {Intelligence, white} by {4, white} for {30 minutes, white}."
	},
	bagel = {
		format = "Increases {(Healing Power), #77D463} by {12, white} for {30 minutes, white}."
	},
	["baked potatoes"] = {
		format = "Increases {(Attack Power), #FF5151} by {1, white} for {30 minutes, white}."
	},
	["carrot soup"] = {
		format = "Increases {Intelligence, white} by {6, white} for {30 minutes, white}."
	},
	["corn chowder"] = {
		format = "Increases {Wisdom, white} by {4, white} for {30 minutes, white}."
	},
	["corn on a cob"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {1, white} for {30 minutes, white}."
	},
	cornbread = {
		format = "Increases {(Healing Power), #77D463} by {8, white} for {30 minutes, white}."
	},
	["loaf bread"] = {
		format = "Increases {(Healing Power), #77D463} by {6, white} for {30 minutes, white}."
	},
	["lyderian fries"] = {
		format = "Increases {Might, white} by {6, white} for {30 minutes, white}."
	},
	["mashed potatoes"] = {
		format = "Increases {Might, white} by {4, white} for {30 minutes, white}."
	},
	omelet = {
		format = "Increases {Dexterity, white} by {6, white} for {30 minutes, white}."
	},
	["potato bread"] = {
		format = "Increases {(Healing Power), #77D463} by {1, white} for {30 minutes, white}."
	},
	["rohna crackers"] = {
		format = "Increases {(Defense Power), #FCBE7F} by {4, white} for {30 minutes, white}."
	},
	["rye bread"] = {
		format = "Increases {(Healing Power), #77D463} by {25, white} for {30 minutes, white}."
	},
	["sajecho hardtack"] = {
		format = "Increases {(Attack Power), #FF5151} by {4, white} for {30 minutes, white}."
	},
	["scrambled eggs"] = {
		format = "Increases {Dexterity, white} by {4, white} for {30 minutes, white}."
	},
	["silky scrambled eggs"] = {
		format = "Increases {Wisdom, white} by {6, white} for {30 minutes, white}."
	},
	["sourdought bagel"] = {
		format = "Increases {(Healing Power), #77D463} by {16, white} for {30 minutes, white}."
	},
	["steamed carrots"] = {
		format = "Increases {Vitality, white} by {6, white} for {30 minutes, white}."
	},
	["corn salad"] = {
		format = "Increases {Vitality, white} by {4, white} for {30 minutes, white}."
	},
	boozemelon = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {35, white} for {20 minutes, white}."
	},
	eclipse = {
		format = "Channels and restores {600, white} {health, #77D463} and {mana, #52A8F7} per second for {15 seconds, white}. Being damaged cancels the effect."
	},
	["landing brandy"] = {
		format = "Increases {Mana Regeneration, #52A8F7} and {Health Regeneration, #77D463} by {10, white} for {20 minutes, white}."
	},
	["rune scribing feather"] = {
		format = "When used, leaves a magic trap bellow."
	},
	["golden maw"] = {
		format = "Active: Reduces the {(Weapon Defense), #FCBE7F} of an adjacent target by {40, white} for {6 seconds, white}. 2 minute cooldown."
	},
	["arrowcaller horn"] = {
		format = "Active: Summons a Minotaur Arbalist level 55 to fight at your side for {5 minutes, white} or until slain. 10 minute cooldown."
	},
	["withered demon hand"] = {
		format = "Active: Channels for {10 seconds, white} reducing the target's {(Defense Power), #FCBE7F} by {8, white} each second for {10 seconds, white}. 3 minute cooldown."
	},
	["saint alsek's cloak"] = {
		format = "Active: Increases {Mana Regeneration, #52A8F7} by {100, white} and reduces {(Attack Power), #FF5151} and {(Defense Power), #FCBE7F} by {30, white} for {10 seconds, white}. 2 minute cooldown."
	},
	siphon = {
		format = "Drains {mana, #52A8F7} from your target every second over {10 seconds, white}, up to a total of {%d [2.0] (Spell Power) mana drained, #52A8F7}, dealing the same amount as {damage, #FF5151}.\n\nReduces channeling time by {1 second, white} for every {10 Aether, white} consumed. The total mana drained and damage dealt remain unchanged."
	},
	["golden fleece"] = {
		format = "Active: Increases Defense Power by {12, white} for {6 seconds, white}. 3 minute cooldown. Passive: Increases {Wisdom, white} and {Dexterity, white} by {6, white}."
	},
	["norro's wand"] = {
		format = "Unknown effect. Norro's orders were to use it only after Grokolak is weak enough."
	},
	["dawns apotheosis"] = {
		format = "Transforms you into an avatar of Dawn's holy power for {6 seconds, white}. Grants invulnerability and immunity to crowd control effects, but decreases your {movement speed, #C2DBFB} by {30%, white}.\n\nRandomly heals a party member in a large area every {0.5 seconds, white} for {%d [%tv] (Healing Power) health, #77D463}.\n\nWhile in the avatar state, you are unable to use skills or attack. Additionally, instantly heals you for {%d [5.0] (Healing Power) health, #77D463} upon activation.",
		tier_details = "Large Area Healing Power: [%tv] / [%tv] / [%tv].",
		tier_values = {
			{
				1.5
			},
			{
				2
			},
			{
				2.5
			}
		}
	},
	["reaper's eclipse"] = {
		format = "Temporarily makes you disappear, slashing up to %tv targets on the screen one at a time before losing the effect. Deals {%d [5.0] (Weapon Power) weapon damage, #FF5151} to each target. You are invulnerable during this ability.",
		tier_details = "Amount of Targets: %tv / %tv / %tv.",
		tier_values = {
			{
				3
			},
			{
				4
			},
			{
				5
			}
		}
	},
	cataclysm = {
		format = "%tv Meteors will randomly crash down in a medium area around yourself throughout the duration of {Cataclysm, #FBFB79}. These meteors have the same area of effect as a regular {Meteor Strike, #FBFB79} but deal half the damage.",
		tier_details = "Meteors Amount: %tv / %tv / %tv.",
		tier_values = {
			{
				11
			},
			{
				13
			},
			{
				15
			}
		}
	},
	["eternal retribution"] = {
		format = "Drops a hammer at the target location, dealing {%d [%tv] (Weapon Power) weapon damage, #FF5151} to targets in a small area and {%d [%tv] (Weapon Power) weapon damage, #FF5151} to targets in a medium area.\n\n{Stuns, #FFA851} all targets hit in the small area for {%tv seconds, white}.",
		tier_details = "Small Area Damage: [%tv] / [%tv] / [%tv].\nMedium Area Damage: [%tv] / [%tv] / [%tv].\nStun Duration: %tv / %tv / %tv seconds.",
		tier_values = {
			{
				4,
				2,
				1.5
			},
			{
				5,
				2.5,
				2
			},
			{
				6,
				3,
				2.5
			}
		}
	},
	["celestial barrage"] = {
		format = "Shoots 3 waves of arrows, with each wave dealing {%d [%tv] (Weapon Power) weapon damage, #FF5151} to targets hit.\n\nThis skill is channeled for its duration.",
		tier_details = "Damage Amount: [%tv] / [%tv] / [%tv].",
		tier_values = {
			{
				2.5
			},
			{
				3
			},
			{
				3.75
			}
		}
	},
	["chaos chains"] = {
		format = "Chains pull all targets towards you in a large area, {slowing, #FFA851} them by {60%, white} for {%tv seconds, white}, and applying a {Bleed, #FC7474} for {%tv seconds, white}, dealing {%d [2.5] (Weapon Power) weapon damage, #FF5151} every second.",
		tier_details = "Slow Duration: %tv / %tv / %tv seconds.\nBleed Duration: %tv / %tv / %tv seconds.",
		tier_values = {
			{
				2,
				4
			},
			{
				2.5,
				5
			},
			{
				3,
				6
			}
		}
	},
	["witch's call"] = {
		format = "Unleashes crows upon your enemies in a medium area for {%tv seconds, white}, dealing {%d [0.08] (Spell Power), #BA7DFF} to all targets in the area of effect every {1 second, white} while applying a stack of Crow's Corruption with each damaging hit.\n\nCrow's Corruption lasts for {6 seconds, white}, dealing {%d [0.2] (Spell Power), #BA7DFF} for each stack every {3 seconds, white}. Every subsequent stack will refresh the duration of Crow's Corruption.",
		tier_details = "Witch's Call Duration: %tv / %tv / %tv seconds.",
		tier_values = {
			{
				8
			},
			{
				10
			},
			{
				12
			}
		}
	},
	["eye of the storm"] = {
		format = "Transforms into a Cyclone for {%tv seconds, white} gaining {50% movement speed, #C2DBFB} and cleansing any crowd control or movement impairing effects. Grants immunity to crowd control, movement impairing effects, and damage for the same duration.\n\nTargets in a small area around you receive {%d [0.5] (Spell Power) spell damage, #BA7DFF} every {0.5 seconds, white} and are knocked up.\n\nThis effect occurs only once every {30 seconds, white} to a target during Eye of the Storm.\n\nAfter returning from the Cyclone, you receive a {%d [7.5] (Healing Power) health, #77D463} barrier for {10 seconds, white}.",
		tier_details = "Eye of the Storm Duration: %tv / %tv / %tv seconds.",
		tier_values = {
			{
				3
			},
			{
				4
			},
			{
				5
			}
		}
	}
}
g_spells.descriptions["pt-BR"] = {
	fireball = {
		format = "Lan\xE7a uma bola de fogo no alvo que causa {%d [0.7] (Spell Power) de dano m\xE1gico, #BA7DFF} e aplica um ac\xFAmulo de bola de fogo.\n\nCada ac\xFAmulo de bola de fogo causa {%d [0.05] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {2 segundos, white} por {10 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o.\n\nCada terceira bola de fogo gera {%d [0.20] (Spell Power) de dano m\xE1gico adicional, #BA7DFF} ao alvo. Alvos adjacentes recebem {50% de dano, white} e um ac\xFAmulo de bola de fogo."
	},
	erupt = {
		format = "Causa {%d [1.0] (Spell Power) de dano m\xE1gico, #BA7DFF} e aplica {3 ac\xFAmulos, white} de Queimadura Profunda no alvo.\n\nCada ac\xFAmulo de Queimadura Profunda causa {%d [0.10] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {3 segundos, white} por {9 segundos, white}, e reduz a {cura, #77D463} recebida em {20%, white}.\n\nAplica {1 ac\xFAmulo, white} de Queimadura Profunda adicional para cada {10 Aether, white} consumidos."
	},
	combustion = {
		format = "Causa {%d [1.0] (Spell Power) de dano m\xE1gico, #BA7DFF} em uma pequena \xE1rea em volta do alvo e {2 segundos de Atordoamento, #FFA851} nos alvos atingidos."
	},
	["flame tornado"] = {
		format = "Conjura um tornado de chamas no local do alvo que causa {%d [0.6] (Spell Power) de dano m\xE1gico, #BA7DFF} por segundo durante {5 segundos, white} a todos os alvos dentro de uma pequena \xE1rea.\n\nAumenta a velocidade de aplica\xE7\xE3o do dano em {0,1 segundo, white} para cada {10 Aether, white} consumidos."
	},
	pyroblast = {
		format = "Causa {%d [3.0] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo.\n\nReduz o tempo de canaliza\xE7\xE3o em {0,7 segundo, white} e o Tempo de Recarga em {2 segundos, white} a cada {10 Aether, white} consumidos."
	},
	frostbolt = {
		format = "Atira um dardo glacial que causa {%d [0.7] (Spell Power) de dano m\xE1gico, #BA7DFF}.\n\nCada terceiro dardo glacial causa {%d [0.20] (Spell Power) de dano m\xE1gico adicional, #BA7DFF}, e {30% Lentid\xE3o, #FFA851} ao alvo por {5 segundos, white}."
	},
	["frost shards"] = {
		format = "Atira dois estilha\xE7os g\xE9lidos para cada {10 Aether, white} consumidos, e cada um causa {%d [0.35] (Spell Power) de dano m\xE1gico, #BA7DFF}.\n\nCausa {40% de Lentid\xE3o, #FFA851} por {3 segundos, white}."
	},
	coldblast = {
		format = "Causa {%d [1.0] (Spell Power) de dano m\xE1gico, #BA7DFF} e {Enraizamento, #FFA851} por {4 segundos, white} aos alvos dentro de uma \xE1rea m\xE9dia ao seu redor.\n\nA dura\xE7\xE3o do {Enraizamento, #FFA851} \xE9 dobrada caso o alvo seja uma criatura."
	},
	teleport = {
		format = "Teletransporta para um local selecionado.\n\nEsta habilidade n\xE3o possui Tempo de Recarga Global."
	},
	icestorm = {
		format = "Causa {%d [0.25] (Spell Power) de dano m\xE1gico, #BA7DFF} em uma \xE1rea m\xE9dia, {20% de Lentid\xE3o, #FFA851} por {3 segundos, white} e aplica um ac\xFAmulo de Congelamento.\n\nAumenta a {Lentid\xE3o, #FFA851} e o dano em {6%, white} para cada {10 Aether, white} consumidos."
	},
	["meteor strike"] = {
		format = "Ap\xF3s a canaliza\xE7\xE3o e um intervalo de {1 segundo, white}, um imenso meteoro cai na \xE1rea alvo, causando {%d [5.0] (Spell Power) de dano m\xE1gico, #BA7DFF} em uma pequena \xE1rea e {60%, white} do dano em uma \xE1rea m\xE9dia."
	},
	["frost lance"] = {
		format = "Atira uma lan\xE7a glacial ao alvo que causa {%d [0.75] (Spell Power) de dano m\xE1gico, #BA7DFF}.\n\nAumenta o dano causado em {%d [0.35] (Spell Power) de dano m\xE1gico, #BA7DFF} para cada {10 Aether, white} consumidos."
	},
	["flow of magic"] = {
		format = "Gera um ac\xFAmulo de Fluxo de Magia por {10 segundos, white} para cada {1% de mana, #52A8F7} gasta.\n\nCada ac\xFAmulo de Fluxo de Magia aumenta o {dano cr\xEDtico, #FC7474} do seu pr\xF3ximo {acerto cr\xEDtico, #FC7474} em {1%, white}. (M\xE1x. {50 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["frost armor"] = {
		format = "Ao ser atingido, reduz a {Celeridade, #C2DBFB} de quem desferiu o ataque em {15%, white} por {4 segundos, white}."
	},
	havoc = {
		format = "Seus {acertos cr\xEDticos, #FC7474} t\xEAm {15%, white} de chance de aumentar seu {(Spell Power), #BA7DFF} em {%d [0.07] (Spell Power) de dano m\xE1gico, #BA7DFF} por {8 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["hot headed"] = {
		format = "Ao causar dano n\xE3o-cr\xEDtico com uma habilidade, acumula {2%, white} de chance de {acerto cr\xEDtico, #FC7474} at\xE9 o pr\xF3ximo {acerto cr\xEDtico, #FC7474}. Este efeito ocorre a cada {1,5 segundo, white}.\n\nOs ac\xFAmulos s\xE3o perdidos ap\xF3s {30 segundos, white} sem causar danos com uma habilidade."
	},
	amplification = {
		format = "Aumenta o dano das suas habilidades em {8%, white} ao custo de {25%, white} a mais de {mana, #52A8F7} ou {vida, #77D463}."
	},
	["flash heal"] = {
		format = "Cura o alvo em {%d [1.7] (Healing Power) de vida, #77D463}. Cada terceira {Flash Heal, #FBFB79} concede {%d [0.5] (Healing Power) de cura adicional, #77D463} ao alvo, e sua pr\xF3xima conjura\xE7\xE3o ser\xE1 {instant\xE2nea, white}."
	},
	smite = {
		format = "Causa {%d [0.9] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo. Cada terceiro {Smite, #FBFB79} causar\xE1 {30%, white} de dano adicional."
	},
	["dawn's light"] = {
		format = "Cura o alvo em {%d [3.0] (Healing Power) de vida, #77D463}.\n\nAumenta a {cura, #77D463} em {%d [0.4] (Healing Power), #77D463} para cada {10 Aether, white} consumidos."
	},
	mend = {
		format = "Cura o alvo em {%d [0.20] (Healing Power) de vida, #77D463} a cada segundo durante {10 segundos, white}.\n\nAumenta a {cura, #77D463} em {%d [0.06] (Healing Power), #77D463} para cada {10 Aether, white} consumidos."
	},
	["holy shackles"] = {
		format = "Causa {%d [0.4] (Spell Power) de dano m\xE1gico, #BA7DFF} por segundo e {20% de Lentid\xE3o, #FFA851} por {2,5 segundos, white} e {0,5 segundo de Enraizamento, #FFA851} ao alvo.\n\nAumenta a dura\xE7\xE3o da {Lentid\xE3o, #FFA851} em {0,5 segundo, white} e a dura\xE7\xE3o do {Enraizamento, #FFA851} em {0,3 segundo, white} para cada {10 Aether, white} consumidos."
	},
	devotion = {
		format = "Cura o alvo em {%d [3.25] (Healing Power) de vida, #77D463}."
	},
	["healing channel"] = {
		format = "Foca em um alvo por {1 segundo, white} curando-o em {%d [1.3] (Healing Power) de vida, #77D463} a cada {0,5 segundo, white}.\n\nAumenta a dura\xE7\xE3o em {0,5 segundo, white} para cada {10 Aether, white} consumidos."
	},
	["circle of light"] = {
		format = "Cura a todos dentro de uma \xE1rea m\xE9dia em {%d [0.75] (Healing Power) de vida, #77D463} por segundo durante {5 segundos, white}.\n\nAumenta a {cura, #77D463} em {%d [0.15] (Healing Power), #77D463} para cada {10 Aether, white} consumidos."
	},
	["holy force"] = {
		format = "Causa {%d [2.0] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo.\n\nAdiciona {%d [0.5] (Spell Power) de dano m\xE1gico, #BA7DFF} para cada {10 Aether, white} consumidos."
	},
	["living saint"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} e o {(Healing Power), #77D463} em {50%, white} por {12 segundos, white}."
	},
	purify = {
		format = "Remove {2 efeitos negativos aleat\xF3rios, #FFA851} do alvo e aplica Esp\xEDrito Enfraquecido por {8 segundos, white}.\n\nEsp\xEDrito Enfraquecido impede que o alvo seja afetado por {Purify, #FBFB79} novamente."
	},
	["generous influence"] = {
		format = "Cura o alvo em {%d [4.0] (Healing Power) de vida, #77D463}.\n\nSe usado em si mesmo, aumenta suas {curas, #77D463} em {20%, white} por {10 segundos, white}. Se usado em algu\xE9m, aumenta a {cura, #77D463} recebida pelo alvo em {30%, white}.\n\nReceba {10 Aether, white} a cada {2 segundos, white} durante {10 segundos, white}."
	},
	["invigorated healing"] = {
		format = "Dobra a chance de {acerto cr\xEDtico base, #FC7474} para as magias de {cura, #77D463}."
	},
	["sacred spirit"] = {
		format = "Habilidades de cura em um alvo com menos de {30% de vida, #77D463} curam {25%, white} a mais."
	},
	prophet = {
		format = "Ao conjurar habilidades de {cura, #77D463}, h\xE1 {20%, white} de chance de reduzir em {50%, white} o {custo de mana, #52A8F7} de habilidades de {cura, #77D463} por {4 segundos, white}. "
	},
	["healing attunement"] = {
		format = "Reduz em {60%, white} o {custo de mana, #52A8F7} de {curas, #77D463} conjuradas em outros."
	},
	["healing bond"] = {
		format = "Ao curar um alvo, receba {10%, white} da {cura, #77D463} realizada."
	},
	cyclone = {
		format = "Conjura um ciclone que causa {%d [0.7] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo.\n\nCada terceiro {Cyclone, #BA7DFF} ricocheteia a {2, white} outros alvos dentro de uma \xE1rea m\xE9dia, causando {%d [0.6] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo principal e {%d [0.5] (Spell Power) de dano m\xE1gico, #BA7DFF} ao segundo e terceiro alvo.\n\nSe {Cyclone, #FBFB79} n\xE3o ricochetear, causa {%d [0.2] (Spell Power) de dano m\xE1gico adicional, #BA7DFF} ao alvo. "
	},
	barrier = {
		format = "Cria uma barreira em volta do alvo que absorve {%d [2.4] (Healing Power), #77D463} de dano durante {8 segundos, white}.\n\nAbsorve {%d [0.25] (Healing Power), #77D463} de dano a mais para cada {10 Aether, white} consumidos."
	},
	regenerate = {
		format = "Cura um alvo em {%d [0.3] (Healing Power) de vida, #77D463} por segundo durante {10 segundos, white}."
	},
	["air aura"] = {
		format = "Encanta um alvo aliado com uma aura de vento por {2 segundos, white}.\n\nAp\xF3s a dura\xE7\xE3o da aura, o alvo recebe {200%, white} do dano recebido como escudo por {6 segundos, white}.\n\nEsse escudo n\xE3o pode exceder {50% da vida m\xE1xima, #77D463} do alvo."
	},
	haste = {
		format = "Aumenta a {Celeridade, #C2DBFB} do alvo em {50%, white} por {10 segundos, white}.\n\nGera {50 Aether, white} e causa {Exaust\xE3o, #FFA851} por {90 segundos, white}, impedindo que o alvo receba {Celeridade, #C2DBFB} novamente."
	},
	["party recovery"] = {
		format = "Restaura {%d [0.20] (Healing Power) de vida, #77D463} por {15 segundos, white} de todos os membros do grupo.\n\nAumenta a {cura, #77D463} em {%d [0.03] (Healing Power) de vida, #77D463} a cada {10 Aether, white} consumidos."
	},
	["wind wall"] = {
		format = "Cria uma parede de vento de {3 c\xE9lulas, white} que bloqueia proj\xE9teis por {5 segundos, white}.\n\nAlvos dentro da parede s\xE3o empurrados por {1 c\xE9lula, white}. "
	},
	["force push"] = {
		format = "Empurra todos ao seu redor por {3 c\xE9lulas, white} e causa {50% de Lentid\xE3o, #FFA851} por {2 segundos, white}."
	},
	["healing air sphere"] = {
		format = "Cura {%d [1.0] (Healing Power) de vida, #77D463} por segundo durante {3 segundos, white} todos os membros do grupo dentro de uma \xE1rea m\xE9dia.\n\nAumenta a dura\xE7\xE3o em {1 segundo, white} para cada {10 Aether, white} consumidos."
	},
	whirlwind = {
		format = "Causa {%d [0.5] (Spell Power) de dano m\xE1gico, #BA7DFF}.\n\nAumenta o dano em {%d [0.3] (Spell Power), #BA7DFF} a cada {10 Aether, white} consumidos."
	},
	typhoon = {
		format = "Posiciona um tuf\xE3o que arrasta os alvos dentro de uma \xE1rea m\xE9dia para a borda do tuf\xE3o e causa {30% de Lentid\xE3o, #FFA851} por {5 segundos, white}.\n\nAumenta a {Lentid\xE3o, #FFA851} em {10%, white} para cada {10 Aether, white} consumidos."
	},
	["windstrike spirit"] = {
		format = "Imbui a arma do alvo com vento por {15 segundos, white}. Cada terceiro ataque b\xE1sico do alvo afetado por {Windstrike Spirit, #FBFB79} causa {dano adaptativo adicional, white} de {50%, white} ao alvo.\n\nAumenta o {dano adaptativo, white} de {Windstrike Spirit, #FBFB79} em {20%, white} para cada {10 Aether, white} consumidos."
	},
	["wind mastery"] = {
		format = "Suas habilidades de suporte t\xEAm {50%, white} de chance de aumentar a {Celeridade, #C2DBFB} do alvo em {10%, white} por {5 segundos, white}.\n\n{Wind Mastery, #FBFB79} gera (M\xE1x. {3 ac\xFAmulos, white}). Uma vez atingido o n\xFAmero m\xE1ximo de ac\xFAmulos, a dura\xE7\xE3o do efeito n\xE3o ser\xE1 renovada. "
	},
	meditate = {
		format = "Aumenta a efetividade das suas habilidades de {cura, #77D463} ao longo do tempo em {20%, white}."
	},
	["lingering impact"] = {
		format = "Aumenta a dura\xE7\xE3o das suas habilidades de {cura, #77D463} ao longo do tempo em {20%, white}."
	},
	["sins of the many"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {4%, white} para cada membro do grupo por perto."
	},
	celerity = {
		format = "Reduz o Tempo de Recarga de todas as habilidades em {10%, white}."
	},
	["arcane pulse"] = {
		format = "Causa {%d [0.7] (Spell Power) de dano m\xE1gico, #BA7DFF} e aplica um ac\xFAmulo de Pulso.\n\nCada ac\xFAmulo de Pulso reduz o {(Defense Power) do alvo, #FCBE7F} em {%d [0.03] (Spell Power), #BA7DFF} por {8 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}).\n\nCada terceiro {Arcane Pulse, #FBFB79} causa {%d [0.20] (Spell Power) de dano m\xE1gico adicional, #BA7DFF}."
	},
	curse = {
		format = "Aplica uma Maldi\xE7\xE3o que causa {%d [0.45] (Spell Power) de dano m\xE1gico, #BA7DFF} ao alvo a cada {3 segundos, white} por {15 segundos, white}.\n\nQuando um alvo com Maldi\xE7\xE3o \xE9 eliminado, gera {10 Aether, white}."
	},
	["arcane torrent"] = {
		format = "Causa {%d [0.3] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {0,3 segundo, white} durante {1,5 segundo, white}.\n\nAumenta o dano em {%d [0.05] (Spell Power), #BA7DFF} para cada ac\xFAmulo de Pulso no alvo. N\xE3o consome o ac\xFAmulo de Pulso ao usar.\n\nAumenta a dura\xE7\xE3o da conjura\xE7\xE3o em {0,3 segundo, white} para cada {10 Aether, white} consumidos."
	},
	leech = {
		format = "Lan\xE7a um parasita no alvo que causa {%d [0.20] (Spell Power) de dano m\xE1gico, #BA7DFF} por segundo durante {10 segundos, white} e cura o conjurador na mesma quantidade."
	},
	["magic rupture"] = {
		format = "Causa {20% de Lentid\xE3o, #FFA851} ao alvo.\n\nAumenta sua {Velocidade de Movimento, #C2DBFB} em {20%, white} por {8 segundos, white}."
	},
	siphon = {
		format = "Drena at\xE9 {%d [2.0] (Spell Power) de mana, #52A8F7} do alvo a cada segundo durante {10 segundos, white} e causa a mesma quantidade de dano.\n\nReduz o tempo de conjura\xE7\xE3o em {1 segundo, white} para cada {10 Aether, white} consumidos. O total de mana drenada e o dano causado permanecem o mesmo."
	},
	hex = {
		format = "Transforma o alvo em um sapo por {2 segundos, white}.\n\nAumenta a dura\xE7\xE3o da transforma\xE7\xE3o em {0,4 segundo, white} para cada {10 Aether, white} consumidos."
	},
	["shackles of pain"] = {
		format = "Acorrenta o alvo por {5 segundos, white}.\n\nCaso o conjurador receba algum dano, o alvo acorrentado receber\xE1 {50%, white} deste dano."
	},
	["mirror image"] = {
		format = "Cria uma c\xF3pia sua que imita certas habilidades ao custo de {15%, white} de efetividade por {15 segundos, white}. A c\xF3pia possui alcance limitado e n\xE3o pode se mover.\n\nO n\xFAmero de c\xF3pias criadas varia de acordo com a quantidade de Aether consumido.\n\nConsumir {30 Aether, white} cria {1 c\xF3pia, white} adicional. Consumir {50 Aether, white} cria {2 c\xF3pias, white} adicionais.\n\n{Habilidades afetadas:, #FBFB79} Concussive Shot, Precision Shot, Quick Fire, Wind Arrow, Dawn's light, Flash Heal, Healing Channel, Holy Force, Smite, Crippling Dagger, Arcane Pulse, Arcane Torrent, Fireball, Frost Shards, Frostbolt, Pyroblast."
	},
	["death touch"] = {
		format = "Consome uma Maldi\xE7\xE3o no alvo e causa {%d [2.5] (Spell Power) de dano m\xE1gico, #BA7DFF}. Se esta habilidade acertar o alvo, espalha a Maldi\xE7\xE3o para todos os alvos dentro de uma pequena \xE1rea.\n\nAumenta o dano em {%d [0.5] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {10 Aether, white} consumidos. "
	},
	["eternal worms"] = {
		format = "Consome {3, white} das suas habilidades de dano ao longo do tempo aplicadas no alvo e causa {50%, white} de seus danos restante e {1,5 segundo de Enraizamento, #FFA851}.\n\nReceba uma {cura, #77D463} equivalente a {75%, white} do dano restante ou o dobro contra jogadores.\n\nCada habilidade de dano ao longo do tempo consumida gera {10 Aether, white}."
	},
	dispel = {
		format = "Remove {2 efeitos positivos aleat\xF3rios, white} do alvo."
	},
	["witchcraft mastery"] = {
		format = "Reduz o Tempo de Recarga Global das suas habilidades em {10%, white}."
	},
	["cursed touch"] = {
		format = "Aumenta o dano total das suas habilidades de dano ao longo do tempo em {30%, white}."
	},
	exploitation = {
		format = "Aplica um ac\xFAmulo de Explora\xE7\xE3o ao causar dano a um alvo com uma habilidade.\n\nCada ac\xFAmulo de Explora\xE7\xE3o reduz o {(Defense Power), #FCBE7F} em {0,25%, white} enquanto aumenta o seu {(Defense Power), #FCBE7F} na mesma quantidade por {30 segundos, white} (M\xE1x. {20 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["arcane corruption"] = {
		format = "Ao causar dano, aplica um ac\xFAmulo de Corrup\xE7\xE3o Arcana ao alvo a cada {2 segundos, white}.\n\nCada ac\xFAmulo de Corrup\xE7\xE3o Arcana reduz a {cura, #77D463} recebida pelo alvo em {1%, white} (M\xE1x. {15 ac\xFAmulos, white}).\n\nAo atingir {15 ac\xFAmulos, white}, dobra a redu\xE7\xE3o de {cura, #77D463} recebida e remove os ac\xFAmulos ap\xF3s {6 segundos, white}."
	},
	["creeping death"] = {
		format = "Habilidades de dano ao longo do tempo causam {15%, white} a mais de dano ao alvo com {50% de vida, #77D463} ou menos."
	},
	["brutal strike"] = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} ao alvo. Cada terceira {Brutal Strike, #FBFB79} cura {%d [0.3] (Weapon Power) de sua vida, #77D463}."
	},
	guillotine = {
		format = "Causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151} ao alvo.\n\nAumenta o dano em {%d [0.35] (Weapon Power), #FF5151} para cada {10 Aether, white} consumidos."
	},
	earthquake = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} em uma \xE1rea m\xE9dia e {30% de Lentid\xE3o, #FFA851} por {6 segundos, white}.\n\nAumenta o dano em {%d [0.2] (Weapon Power), #FF5151} para cada {10 Aether, white} consumidos."
	},
	fissure = {
		format = "Causa {%d [1] (Weapon Power) de dano de arma, #FF5151} e {1,5 segundo de Atordoamento, #FFA851} aos alvos em uma \xE1rea em forma de cone.\n\nAumenta o {Atordoamento, #FFA851} em {0,2 segundo, white} para cada {10 Aether, white} consumidos."
	},
	shieldbreak = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} e reduz a {(Weapon Defense), #FCBE7F} em {%d [0.05] (Weapon Power), #FF5151} por {8 segundos, white}.\n\nAdiciona {%d [0.03] (Weapon Power), #FF5151} de redu\xE7\xE3o de {(Weapon Defense), #FCBE7F} para cada {10 Aether, white} consumidos.\n\nO alcance dessa habilidade se adapta \xE0 arma equipada."
	},
	berserk = {
		format = "Gera {100 Aether, white} ap\xF3s {1,5 segundo, white} e um adicional de {50 aether, white} a cada {5 segundos, white} em Berserk, mas diminui seu {(Defense Power), #FCBE7F} em {10%, white} por {5 segundos, white}."
	},
	["feasting strike"] = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} ao alvo.\n\nCura {%d [0.36] (Weapon Power) de vida, #77D463} para cada {10 Aether, white} consumidos."
	},
	["bull rush"] = {
		format = "Avan\xE7a {5 c\xE9lulas, white} \xE0 frente e causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151} a qualquer alvo dentro de {3 c\xE9lulas, white} \xE0 frente.\n\nAlvos atravessados s\xE3o empurrados para tr\xE1s."
	},
	["spiked chains"] = {
		format = "Lan\xE7a correntes em uma \xE1rea em forma de cone na sua frente que causam {1 segundo de Enraizamento, #FFA851} e {30% de Lentid\xE3o, #FFA851} por {3 segundos, white}.\n\nPuxa o alvo para sua dire\xE7\xE3o caso haja espa\xE7o."
	},
	["fierce leap"] = {
		format = "Salta at\xE9 um local e desfere um golpe no ch\xE3o em uma \xE1rea m\xE9dia que causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151}, {2 segundos de Atordoamento, #FFA851} nos alvos em uma pequena \xE1rea e {50% de Lentid\xE3o, #FFA851} em uma \xE1rea m\xE9dia."
	},
	pummel = {
		format = "Interrompe a canaliza\xE7\xE3o de uma habilidade do alvo e causa {%d [0.4] (Weapon Power) de dano de arma, #FF5151}. Uma habilidade interrompida n\xE3o pode ser usada novamente pelos pr\xF3ximos {5 segundos, white}."
	},
	bladestorm = {
		format = "Carrega por at\xE9 {2 segundos, white} e causa at\xE9 {%d [1.6] (Weapon Power) de dano de arma, #FF5151} em uma pequena \xE1rea. Cura {%d [0.15] (Weapon Power) de vida, #77D463} para cada alvo atingido.\n\n\xC9 poss\xEDvel se movimentar enquanto carrega, mas sob o efeito de {50% de Lentid\xE3o, #FFA851}.\n\nAdiciona {%d [0.2] (Weapon Power) de dano, #FF5151} e {%d [0.035] (Weapon Power) de cura, #77D463} para cada {10 Aether, white} consumidos."
	},
	savagery = {
		format = "Seus {acertos cr\xEDticos, #FC7474} causam Feridas Profundas ao alvo.\n\nCada ac\xFAmulo de Feridas Profundas causa {%d [0.05] (Weapon Power) de dano de arma, #FF5151} ao alvo a cada {3 segundos, white} durante {12 segundos, white} e cura o conjurador em {15% de vida, #77D463} do dano causado por ac\xFAmulo (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	hatred = {
		format = "Ao causar dano, gera {1 ac\xFAmulo, white} de Ira por {6 segundos, white}. Ao receber dano, recebe {2 ac\xFAmulos, white} de Ira.\n\nCada ac\xFAmulo de Ira aumenta seu {(Attack Power), #FF5151} em {0,4%, white} e reduz seu {(Defense Power), #FCBE7F} em {0,75%, white} (M\xE1x. {20 ac\xFAmulos, white}). Este efeito ocorre uma vez a cada {2 segundos, white}. Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	bloodlust = {
		format = "Aumenta {%d [0.1] (Weapon Power) de dano de arma, #FF5151}, {20% de chance de acerto cr\xEDtico, #FC7474} e {20% de Celeridade, #C2DBFB} por {10 segundos, white} ao ficar com menos de {30% de vida, #77D463}.Este efeito ocorre uma vez a cada {90 segundos, white}.\n\nSempre que conjurar {Brutal Strike, #FBFB79}, reduz o Tempo de Recarga desta habilidade em {1,5 segundo, white}."
	},
	bloodseeker = {
		format = "Cura {15%, white} do dano causado por ataques b\xE1sicos."
	},
	["concentrated impact"] = {
		format = "Ao conjurar uma habilidade e causar {acerto cr\xEDtico, #FC7474}, aplica Fratura ao alvo por {12 segundos, white}.\n\nCada ac\xFAmulo de Fratura reduz o {(Defense Power), #FCBE7F} do alvo em {%d [0.03], white} do seu {(Weapon Power), #FF5151} (M\xE1x. {5 ac\xFAmulos, white})."
	},
	bloodbath = {
		format = "Ao causar dano com ataques b\xE1sicos, gera {1 ac\xFAmulo, white} de Banho de Sangue. Ataques b\xE1sicos corpo a corpo geram {2 ac\xFAmulos, white} de Banho de Sangue.\n\nCada ac\xFAmulo de Banho de Sangue cura equivalente a {0,1%, white} do dano causado (M\xE1x. {20 ac\xFAmulos, white}). Ao atingir o m\xE1ximo de ac\xFAmulos, gera Frenesi, que remove todos os ac\xFAmulos de Banho de Sangue e cura {10% da vida m\xE1xima, #77D463}.\n\nFrenesi cura equivalente a {10%, white} do dano causado por {10 segundos, white}.\n\nAp\xF3s gerar Frenesi, esta habilidade entra em Tempo de Recarga por {40 segundos, white}."
	},
	bash = {
		format = "Gira sua arma com for\xE7a, causando {%d [1.0] (Weapon Power) de dano de arma, #FF5151}.\n\nCada terceiro {Bash, #FBFB79} causar\xE1 {%d [1.0] (Weapon Power) de dano de arma, #FF5151} ao alvo principal e {%d [0.5] (Weapon Power) de dano de arma, #FF5151} em uma \xE1rea pequena ao seu redor e {20% de Lentid\xE3o, #FFA851} por {2 segundos, white} a todos os alvos."
	},
	["spirits resolve"] = {
		format = "Cura {%d [2.0] (Healing Power) de vida, #77D463} a si mesmo."
	},
	provoke = {
		format = "For\xE7a todos os alvos em uma \xE1rea m\xE9dia a te atacarem. Alvos provocados n\xE3o podem trocar de alvo por {6 segundos, white} e recebem Desafiado.\n\nAlvos com Desafiado s\xE3o imunes a outras fontes de provoca\xE7\xE3o por {15 segundos, white}."
	},
	["banner of protection"] = {
		format = "Coloca um estandarte no ch\xE3o que aumenta o {(Defense Power), #FCBE7F} de todos os membros do grupo dentro de uma grande \xE1rea ao redor do estandarte em {5%, white} por {20 segundos, white}.\n\nAdiciona {3% de (Defense Power), #FCBE7F} para cada {10 Aether, white} consumidos."
	},
	safeguard = {
		format = "Concentra sua vontade de proteger em um membro do grupo, redirecionando {50%, white} do dano recebido pelo membro do grupo selecionado a voc\xEA por {8 segundos, white}."
	},
	["spirit shield"] = {
		format = "Aumenta seu {(Defense Power), #FCBE7F} em {10%, white} por {8 segundos, white}, mas reduz seu {(Attack Power), #FF5151} em {10%, white} durante este efeito.\n\nAdiciona {10% de (Defense Power), #FCBE7F} para cada {10 Aether, white} consumidos."
	},
	["blessed earth"] = {
		format = "Causa {%d [0.075] (Weapon Defense), #FF5151} + {%d [0.075] (Spell Defense), #BA7DFF} + {%d [0.05] (Spell Power) de dano m\xE1gico, #BA7DFF} por segundo em uma \xE1rea m\xE9dia e cura {%d [0.03] (Healing Power) de vida, #77D463} por segundo para cada alvo atingido durante {6 segundos, white}.\n\nAdiciona {%d [0.025] (Weapon Defense), #FF5151} + {%d [0.025] (Spell Defense), #BA7DFF} + {%d [0.03] (Spell Power) de dano m\xE1gico, #BA7DFF} e {%d [0.025] (Healing Power) de cura, #77D463} para cada {10 Aether, white} consumidos."
	},
	["smiting smash"] = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} a todos os alvos ao seu redor, diminuindo o {(Attack Power), #FF5151} em {10%, white} e causando {10% de Lentid\xE3o, #FFA851} por {6 segundos, white} aos alvos atingidos.\n\nAumenta a redu\xE7\xE3o de {(Attack Power), #FF5151} e a efetividade da {Lentid\xE3o, #FFA851} em {5%, white} para cada {10 Aether, white} consumidos."
	},
	unbreakable = {
		format = "Absorve {50%, white} de todos os danos recebidos por {5 segundos, white}. Ap\xF3s este tempo, todo dano recebido \xE9 convertido em {cura, #77D463} por {5 segundos, white}."
	},
	revenge = {
		format = "Causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} ao alvo, e {25%, white} deste dano aos alvos adjacentes.\n\nAumenta o dano em {%d [0.20] (Weapon Power), #FF5151} ao alvo e {15%, white} ao dano causado aos alvos adjacentes a cada {10 Aether, white} consumidos.\n\nReceber um \xFAnico dano de pelo menos {10%, white} da sua {vida m\xE1xima, #77D463} far\xE1 com que essa habilidade ative o efeito de {50 Aether, white} sem consumi-los por {5 segundos, white}."
	},
	["shield throw"] = {
		format = "Lan\xE7a um escudo espiritual ao alvo que causa {%d [0.3] (Weapon Power) de dano de arma, #FF5151} e interrompe a conjura\xE7\xE3o de uma habilidade do alvo."
	},
	["undying will"] = {
		format = "Quando estiver com menos de {10% de vida, #77D463}, aumenta seu {(Defense Power), #FCBE7F} em {200%, white} por {6 segundos, white}.\n\nEste efeito ocorre uma vez a cada {5 minutos, white}."
	},
	["strong footed"] = {
		format = "Reduz a dura\xE7\xE3o de {Lentid\xE3o, #FFA851}, {Atordoamento, #FFA851} e {Enraizamento, #FFA851} recebidos em {20%, white}."
	},
	["devout protector"] = {
		format = "Aumenta seu {(Weapon Defense), #FCBE7F} e {(Spell Defense), #BA7DFF} em {30%, white}, mas diminui seu {(Weapon Power) dano de arma, #FF5151} e {(Spell Power) dano m\xE1gico, #BA7DFF} em {20%, white}."
	},
	guardian = {
		format = "Quando estiver com menos de {80% de vida, #77D463}, qualquer dano recebido tem {5%, white} de chance de ativar esta habilidade.\n\nCura {1% da sua vida m\xE1xima, #77D463} por segundo durante {10 segundos, white}. Esta habilidade pode ser ativada uma vez a cada {30 segundos, white}."
	},
	["divine purpose"] = {
		format = "Ao receber uma {cura, #77D463} de qualquer fonte, seu {(Defense Power), #FCBE7F} aumenta em {0,5%, white} por {6 segundos, white} (M\xE1x. {20 ac\xFAmulos, white}).\n\nEste efeito pode ocorrer a cada {1 segundo, white}. Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["quick slash"] = {
		format = "Corta o alvo, causando {%d [1.05] (Weapon Power) de dano de arma, #FF5151}. Cada terceira {Quick Slash, #FBFB79} tem chance garantida de {acerto cr\xEDtico, #FC7474}."
	},
	shadowstrike = {
		format = "Apunhala o alvo, causando {%d [0.5] (Weapon Power) de dano de arma, #FF5151} e aplicando {Sangramento, #FC7474} que causa {%d [0.15] (Weapon Power) de dano de arma, #FF5151} por segundo durante {4 segundos, white}.\n\nAumenta o dano causado e o dano de {Sangramento, #FC7474} em {20%, white} para cada {10 Aether, white} consumidos."
	},
	["crippling dagger"] = {
		format = "Lan\xE7a uma adaga no alvo que causa {%d [0.75] (Weapon Power) de dano de arma, #FF5151} e {20% de Lentid\xE3o, #FFA851} por {8 segundos, white}.\n\nEnquanto o alvo estiver sob o efeito de {Crippling Dagger, #FBFB79}, esta habilidade pode ser reativada para avan\xE7ar em dire\xE7\xE3o ao alvo."
	},
	["sinister plot"] = {
		format = "Gera {20 Aether, white} por segundo durante {10 segundos, white}."
	},
	stalk = {
		format = "Avan\xE7a rapidamente para tr\xE1s do alvo e causa {50% de Lentid\xE3o, #FFA851} por {2 segundos, white}.\n\nEsta habilidade pode ser reativada dentro de {3 segundos, white} para retornar \xE0 posi\xE7\xE3o original do lan\xE7amento.\n\nSe {Stalk, #FBFB79} n\xE3o for reativada, seu Tempo de Recarga \xE9 reduzido para {14 segundos, white}."
	},
	shadowbind = {
		format = "Lan\xE7a uma rede de sombras que causa {2 segundos, white} de {Enraizamento, #FFA851} ao alvo.\n\nAumenta a dura\xE7\xE3o do {Enraizamento, #FFA851} em {0,4 segundo, white} para cada {10 Aether, white} consumidos."
	},
	illusive = {
		format = "Desvia de todos os danos de ataques b\xE1sicos e de habilidades que n\xE3o sejam de \xE1rea por {2 segundos, white}, mas reduz seu {(Weapon Power), #FF5151} e {(Spell Power), #BA7DFF} em {30%, white} enquanto esta habilidade estiver ativa.\n\nAumenta a dura\xE7\xE3o em {0,8 segundo, white} para cada {10 Aether, white} consumidos."
	},
	["coup de grace"] = {
		format = "Causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151} ao alvo. Caso esta habilidade seja usada dentro de {3 segundos, white} ap\xF3s {Stalk, #FBFB79}, causa {%d [1.5] (Weapon Power) de dano de arma, #FF5151} adicionais e reduz o Tempo de Recarga desta habilidade em {20 segundos, white}.\n\nAdiciona {%d [0.4] (Weapon Power) de dano de arma, #FF5151} para cada {10 Aether, white} consumidos."
	},
	["death blossom"] = {
		format = "Acerta o alvo tr\xEAs vezes, causando {%d [2.0] (Weapon Power) de dano de arma, #FF5151} no total.\n\nAdiciona {%d [0.6] (Weapon Power), #FF5151} de dano total para cada {10 Aether, white} consumidos."
	},
	["anti-healing venom"] = {
		format = "Causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151} ao alvo e reduz a {cura, #77D463} recebida por ele em {50%, white} por {5 segundos, white}.\n\nAumenta a dura\xE7\xE3o desta habilidade em {2 segundos, white} para cada {10 Aether, white} consumidos.\n\nO alcance dessa habilidade se adapta \xE0 arma equipada."
	},
	["venomous weapons"] = {
		format = "Pelos pr\xF3ximos {15 segundos, white}, os ataques b\xE1sicos reduzem o {(Defense Power), #FCBE7F} do alvo em {1%, white} por {8 segundos, white} (M\xE1x. {10 ac\xFAmulos, white}).\n\nAumenta a dura\xE7\xE3o em {2 segundos, white} para cada {10 Aether, white} consumidos. Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["shadow kick"] = {
		format = "Chuta o alvo, causando {%d [0.4] (Weapon Power) de dano de arma, #FF5151} e interrompendo a conjura\xE7\xE3o de habilidade do alvo.\n\nSe uma conjura\xE7\xE3o for interrompida, aplica {30%, white} de penalidade de tempo de conjura\xE7\xE3o e Tempo de Recarga Global por {4 segundos, white}."
	},
	["deadly duelist"] = {
		format = "Ao usar armas duplas ou uma Light Blade, aumenta sua {Celeridade, #C2DBFB} em {20%, white}."
	},
	["lethal toxins"] = {
		format = "Aumenta a efetividade das habilidades de {Lentid\xE3o, #FFA851} em {33%, white}."
	},
	["shadow proficiency"] = {
		format = "Seus {acertos cr\xEDticos, #FC7474} t\xEAm {25%, white} de chance de gerar {20 Aether, white}. Este efeito ocorre uma vez a cada {6 segundos, white}."
	},
	["killer instinct"] = {
		format = "Causa {10%, white} a mais de danos aos alvos com vida abaixo de {50%, white}."
	},
	trickster = {
		format = "Cada acerto no alvo rouba {1% de Velocidade de Movimento, #C2DBFB} por {3,5 segundos, white} a cada {0,5 segundo, white}.\n\nAcertos corpo a corpo dobram os ac\xFAmulos (M\xE1x. {10 ac\xFAmulos, white}).\n\nCausar dano a um alvo diferente remove os ac\xFAmulos do alvo anterior."
	},
	["cheap shot"] = {
		format = "Ao causar dano, h\xE1 {10%, white} de chance de aumentar sua {chance de acerto cr\xEDtico, #FC7474} em {10%, white} por {6 segundos, white}."
	},
	["wind arrow"] = {
		format = "Atira uma flecha que causa {%d [0.85] (Weapon Power) de dano de arma, #FF5151} ao alvo. Cada terceira {Wind Arrow, #FBFB79} atira uma Wind Arrow adicional com {50% de dano, white}."
	},
	["concussive shot"] = {
		format = "Atira uma flecha que causa {%d [0.75] (Weapon Power) de dano de arma, #FF5151} e {20% de Lentid\xE3o, #FFA851} ao alvo por {4 segundos, white}.\n\nAumenta a {Lentid\xE3o, #FFA851} em {5%, white} para cada {10 Aether, white} consumidos."
	},
	["viper arrow"] = {
		format = "Atira uma flecha que causa {%d [0.6] (Weapon Power) de dano de arma, #FF5151} ao alvo e aplica Envenenamento, que causa {%d [0.05] (Weapon Power) de dano de arma, #FF5151} por segundo durante {8 segundos, white}.\n\nAumenta o dano de Envenenamento em {%d [0.05] (Weapon Power) de dano de arma, #FF5151} para cada {10 Aether, white} consumidos."
	},
	["quick fire"] = {
		format = "Atira tr\xEAs flechas por {3 segundos, white}, e cada uma causa {%d [0.55] (Weapon Power) de dano de arma, #FF5151}. Atira 1 flecha adicional para cada {10 Aether, white} consumidos."
	},
	["snaring shot"] = {
		format = "Atira uma flecha que causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151} e {2 segundos de Enraizamento, #FFA851}.\n\nDobra a dura\xE7\xE3o de {Enraizamento, #FFA851} se o alvo for uma criatura."
	},
	["precision shot"] = {
		format = "Canaliza por {2,5 segundos, white} para atirar uma flecha poderosa que causa {%d [3.0] (Weapon Power) de dano de arma, #FF5151} ao alvo. O Tempo de Conjura\xE7\xE3o \xE9 reduzido em {0,5 segundo, white} para cada {10 Aether, white} consumidos."
	},
	disengage = {
		format = "Atira uma flecha que causa {%d [1.0] (Weapon Power) de dano de arma, #FF5151} e {50% de Lentid\xE3o, #FFA851} ao alvo por {1,5 segundo, white}.\n\nO disparo faz com que voc\xEA recue {2 c\xE9lulas, white} e o alvo {3 c\xE9lulas, white}."
	},
	["rain of arrows"] = {
		format = "Atira uma chuva de flechas em uma \xE1rea m\xE9dia por {2 segundos, white}. Cada flecha causa {%d [0.25] (Weapon Power) de dano de arma, #FF5151} e {30% de Lentid\xE3o, #FFA851} aos alvos por {1 segundo, white}.\n\nAumenta a dura\xE7\xE3o da chuva de flechas em {0,5 segundo, white} para cada {10 Aether, white} consumidos."
	},
	["dragons arrow"] = {
		format = "Atira uma flecha que faz o alvo queimar, causando {%d [0.8] (Weapon Power) de dano de arma, #FF5151} por segundo durante {4 segundos, white}.\n\nCria um ch\xE3o em chamas entre voc\xEA e o alvo, aplicando o mesmo efeito a todos que o atravessam e {20% de Lentid\xE3o, #FFA851}.\n\nO Tempo de Recarga \xE9 reduzido em {3 segundos, white} a cada {10 Aether, white} consumidos."
	},
	["spirit rangers"] = {
		format = "Dispara nove flechas em {2 segundos, white}, e cada uma causa {%d [0.5] (Weapon Power) de dano de arma, #FF5151}."
	},
	["venom grenade"] = {
		format = "Lan\xE7a uma granada de veneno em uma \xE1rea pequena, causando {%d [0.2] (Weapon Power) de dano de arma, #FF5151} por segundo a cada {6 segundos, white}, {30% de Lentid\xE3o, #FFA851} aos alvos afetados, e reduz a {cura, #77D463} recebida por eles em {30%, white} durante {6 segundos, white}."
	},
	["dawn arrow"] = {
		format = "Atira uma flecha em uma \xE1rea pequena que causa {Cegueira, #FFA851} e {Confus\xE3o, #FFA851} por {2,5 segundos, white} aos alvos na \xE1rea afetada."
	},
	fleetfooted = {
		format = "Ao sofrer dano equivalente a pelo menos {10%, white} da sua {vida m\xE1xima, #77D463} dentro de {2 segundos, white}, sua {Velocidade de Movimento, #C2DBFB} aumenta em {30%, white} por {3 segundos, white}.\n\nEste efeito pode ocorrer uma vez a cada {20 segundos, white}."
	},
	["clever adaptation"] = {
		format = "Ao causar dano a um alvo, se ele estiver a {4 ou mais c\xE9lulas, white} de dist\xE2ncia, causa dano adicional de {%d [0.15] (Weapon Power) de dano de arma, #FF5151}.\n\nSe o alvo estiver a 3 c\xE9lulas ou menos de dist\xE2ncia, aumenta em {30%, white} a efic\xE1cia de efeitos de {Lentid\xE3o, #FFA851} e {Enraizamento, #FFA851}."
	},
	["clear focus"] = {
		format = "Cada ataque b\xE1sico no mesmo alvo gera um ac\xFAmulo de Foco Claro por {10 segundos, white}. No quinto ac\xFAmulo, restaura {10 Aether, white}. Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o."
	},
	["careful aim"] = {
		format = "Seus ataques a alvos com {80% ou mais de vida, #77D463} causam {20%, white} a mais de dano."
	},
	["marked for death"] = {
		format = "Seus ataques aplicam Marcado para Morrer ao alvo, reduzindo o {(Defense Power), #FCBE7F} em {0,35%, white} por {6 segundos, white} (M\xE1x. {15 ac\xFAmulos, white}). Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o.\n\nAo atingir {15 ac\xFAmulos, white}, a redu\xE7\xE3o do {(Defense Power), #FCBE7F} \xE9 dobrada por {6 segundos, white}. Os ac\xFAmulos ser\xE3o redefinidos quando este efeito terminar.\n\nEste efeito pode ser aplicado a cada {1,2 segundo, white}."
	},
	blitz = {
		format = "Ao causar dano, h\xE1 {10%, white} de chance de aumentar sua {Celeridade, #C2DBFB} em {30%, white} por {6 segundos, white}."
	},
	bloodmancer = {
		format = "Ao causar dano ao longo do tempo, recebe uma cura de 10% do dano causado."
	},
	["the cost of restoration"] = {
		format = "Aumenta seu {(Healing Power), #77D463} em {25%, white}, mas reduz seu {(Weapon Power), #FF5151} e {(Spell Power), #BA7DFF} em {10%, white}.\n\nVoc\xEA n\xE3o pode aprender esta habilidade se j\xE1 aprendeu {Devout Healer, #FBFB79}."
	},
	["devout healer"] = {
		format = "Aumenta seu {(Healing Power), #77D463} em {25%, white}, mas reduz seu {(Weapon Power), #FF5151} e {(Spell Power), #BA7DFF} em {10%, white}.\n\nVoc\xEA n\xE3o pode aprender esta habilidade se j\xE1 aprendeu {The Cost of Restoration, #FBFB79}."
	},
	["fire shield"] = {
		format = "Ao ser atacado, causa {%d [0.3] (Spell Power) de dano m\xE1gico, #BA7DFF} a quem desferiu o ataque.\n\nEste efeito s\xF3 ficar\xE1 ativo caso voc\xEA utilize uma habilidade a cada {10 segundos, white}.\n\nEste efeito ocorre uma vez ao mesmo alvo a cada {3 segundos, white}. "
	},
	unchained = {
		format = "Remove qualquer efeito que prejudique movimento, como {Lentid\xE3o, #FFA851}, {Atordoamento, #FFA851} e {Enraizamento, #FFA851}, e recebe imunidade a eles por {12 segundos, white}. "
	},
	halo = {
		format = "Ap\xF3s se curar, seu {(Defense Power), #FCBE7F} aumenta em {5%, white} por {5 segundos, white}. N\xE3o gera ac\xFAmulo."
	},
	anchor = {
		format = "Ancora o barco e o prende no local."
	},
	unanchor = {
		format = "Levanta a \xE2ncora do barco permitindo navegar."
	},
	cannon = {
		format = "Dispara uma bala de canh\xE3o que causa entre {100 e 200 de dano, white}."
	},
	["small siege cannon"] = {
		format = "Dispara uma bala de canh\xE3o pesada que causa entre {150 e 300 de dano, white}."
	},
	["medium siege cannon"] = {
		format = "Dispara uma bala de canh\xE3o pesada que causa entre {200 e 400 de dano, white}."
	},
	["large siege cannon"] = {
		format = "Dispara uma bala de canh\xE3o pesada que causa entre {250 e 500 de dano, white}."
	},
	["small shrapnel cannon"] = {
		format = "Dispara uma nuvem de proj\xE9teis de estilha\xE7os, causando entre {100 e 200 de dano, white} e aplicando um ac\xFAmulo de Vela Danificada.\n\nCada ac\xFAmulo causa {5% de Lentid\xE3o, #FFA851} ao barco ou criatura afetada por {20 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes n\xE3o reiniciam a dura\xE7\xE3o."
	},
	["medium shrapnel cannon"] = {
		format = "Dispara uma nuvem de proj\xE9teis de estilha\xE7os, causando entre {150 e 300 de dano, white} e aplicando um ac\xFAmulo de Vela Danificada.\n\nCada ac\xFAmulo causa {6% de Lentid\xE3o, #FFA851} ao barco ou criatura afetada por {20 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes n\xE3o reiniciam a dura\xE7\xE3o."
	},
	["large shrapnel cannon"] = {
		format = "Dispara uma nuvem de proj\xE9teis de estilha\xE7os, causando entre {200 e 400 de dano, white} e aplicando um ac\xFAmulo de Vela Danificada.\n\nCada ac\xFAmulo causa {7% de Lentid\xE3o, #FFA851} ao barco ou criatura afetada por {20 segundos, white} (M\xE1x. {3 ac\xFAmulos, white}). Ac\xFAmulos subsequentes n\xE3o reiniciam a dura\xE7\xE3o."
	},
	["small hullbreaker cannon"] = {
		format = "Dispara um proj\xE9til avassalador em linha reta \xE0 frente do seu barco, causando entre {500 e 700 de dano, white}."
	},
	["medium hullbreaker cannon"] = {
		format = "Dispara um proj\xE9til avassalador em linha reta \xE0 frente do seu barco, causando entre {700 e 1.000 de dano, white}."
	},
	["large hullbreaker cannon"] = {
		format = "Dispara um proj\xE9til avassalador em linha reta \xE0 frente do seu barco, causando entre {1.000 e 1.400 de dano, white}."
	},
	["small drake head"] = {
		format = "Libera uma nuvem de chamas \xE0 frente do barco por {5 segundos, white} que queima o alvo por {75 de dano, white} por segundo e aplica Barco em Chamas, causando {25 de dano, white} por segundo durante {8 segundos, white}."
	},
	["medium drake head"] = {
		format = "Libera uma nuvem de chamas \xE0 frente do barco por {5 segundos, white} que queima o alvo por {125 de dano, white} por segundo e aplica Barco em Chamas, causando {40 de dano, white} por segundo durante {8 segundos, white}."
	},
	["large drake head"] = {
		format = "Libera uma nuvem de chamas \xE0 frente do barco por {5 segundos, white} que queima o alvo por {175 de dano, white} por segundo e aplica Barco em Chamas, causando {55 de dano, white} por segundo durante {8 segundos, white}."
	},
	["small mortar cannon"] = {
		format = "Ap\xF3s {2,5 segundos, white} de prepara\xE7\xE3o, dispara um proj\xE9til explosivo que causa entre {400 e 600 de dano, white} na \xE1rea."
	},
	["medium mortar cannon"] = {
		format = "Ap\xF3s {2,5 segundos, white} de prepara\xE7\xE3o, dispara um proj\xE9til explosivo que causa entre {600 e 800 de dano, white} na \xE1rea."
	},
	["large mortar cannon"] = {
		format = "Ap\xF3s {2,5 segundos, white} de prepara\xE7\xE3o, dispara um proj\xE9til explosivo que causa entre {800 e 1.200, white} de dano na \xE1rea."
	},
	["small broadside artillery"] = {
		format = "Dispara uma salva de tiros de canh\xE3o de ambos os lados do barco que causam entre {250 e 300 de dano, white}. Esta habilidade possui {3 cargas, white}."
	},
	["medium broadside artillery"] = {
		format = "Dispara uma salva de tiros de canh\xE3o de ambos os lados do barco que causam entre {350 e 400 de dano, white}. Esta habilidade possui {3 cargas, white}."
	},
	["large broadside artillery"] = {
		format = "Dispara uma salva de tiros de canh\xE3o de ambos os lados do barco que causam entre {450 e 550 de dano, white}. Esta habilidade possui {3 cargas, white}."
	},
	["small floating mines"] = {
		format = "Deixa minas explosivas em uma linha atr\xE1s do barco que duram {10 segundos, white}.\n\nCausa {250 de dano, white} e {30% de Lentid\xE3o, #FFA851} por {8 segundos, white} aos alvos que passarem por uma delas."
	},
	["medium floating mines"] = {
		format = "Deixa minas explosivas em uma linha atr\xE1s do barco que duram {10 segundos, white}.\n\nCausa {500 de dano, white} e {35% de Lentid\xE3o, #FFA851} por {8 segundos, white} aos alvos que passarem por uma delas."
	},
	["large floating mines"] = {
		format = "Deixa minas explosivas em uma linha atr\xE1s do barco que duram {10 segundos, white}.\n\nCausa {750 de dano, white} e {40% de Lentid\xE3o, #FFA851} por {8 segundos, white} aos alvos que passarem por uma delas."
	},
	["small grappling hooks"] = {
		format = "Dispara um arp\xE3o em uma linha \xE0 frente do barco que causa {50% de Lentid\xE3o, #FFA851} ao primeiro alvo atingido por {3 segundos, white}."
	},
	["medium grappling hooks"] = {
		format = "Dispara um arp\xE3o em uma linha \xE0 frente do barco que causa {70% de Lentid\xE3o, #FFA851} ao primeiro alvo atingido por {3 segundos, white}."
	},
	["large grappling hooks"] = {
		format = "Dispara um arp\xE3o em uma linha \xE0 frente do barco que causa {90% de Lentid\xE3o, #FFA851} ao primeiro alvo atingido por {3 segundos, white}."
	},
	["basic water pumps"] = {
		format = "Aumenta a velocidade do seu barco em {100, white} por {5 segundos, white}."
	},
	["efficient water pumps"] = {
		format = "Aumenta a velocidade do seu barco em {150, white} por {5 segundos, white}."
	},
	["advanced water pumps"] = {
		format = "Aumenta a velocidade do seu barco em {200, white} por {5 segundos, white}."
	},
	["superior water pumps"] = {
		format = "Aumenta a velocidade do seu barco em {250, white} por {5 segundos, white}."
	},
	["royal water pumps"] = {
		format = "Aumenta a velocidade do seu barco em {300, white} por {5 segundos, white}."
	},
	repair = {
		format = "Conserta o seu barco, canalizando por {10 segundos, white} e reparando {50 de vida, #77D463} por {10 segundos, white}."
	},
	["slow mending potion"] = {
		format = "Restaura {10 de vida, #77D463} a cada {2 segundos, white} por {20 segundos, white}."
	},
	["mana potion"] = {
		format = "Restaura {100 de mana, #52A8F7}."
	},
	["health potion"] = {
		format = "Restaura {100 de vida, #77D463}."
	},
	["vial of poison"] = {
		format = "Aplica Veneno ao alvo, que causa {%d [0.15] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {2 segundos, white} durante {10 segundos, white}."
	},
	["regrowth stone"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {10, white} por {15 segundos, white}."
	},
	["bag of surprises"] = {
		format = "Aumenta ou diminui o {(Attack Power), #FF5151} ou o {(Defense Power), #FCBE7F} de forma aleat\xF3ria durante um tempo limitado."
	},
	["twilight lamp"] = {
		format = "Ativo: Ataques ignorar\xE3o a Intangibilidade de Chainwraiths por {5 minutos, white}. Tempo de Recarga de {10 minutos, white}.\n\nPassivo: Aumenta o {(Attack Power), #FF5151} contra Chainwraiths em {8, white}."
	},
	["iron blood potion"] = {
		format = "Ativo: Remove {1 efeito negativo, #FFA851}. Tempo de Recarga de {5 minutos, white}."
	},
	["mending potion"] = {
		format = "Restaura {15 de vida, #77D463} a cada {2 segundos, white} durante {20 segundos, white}."
	},
	["coal goblin gadget"] = {
		format = "Ativo: Invoca uma engenhoca goblin\xF3ide aleat\xF3ria de n\xEDvel {23, white} para lutar ao seu lado por {5 minutos, white} ou at\xE9 ser destru\xEDda. Tempo de Recarga de {10 minutos, white}."
	},
	["venomous goblin gadget"] = {
		format = "Ativo: Invoca uma engenhoca goblin\xF3ide aleat\xF3ria de {n\xEDvel 23, white} para lutar ao seu lado por {5 minutos, white} ou at\xE9 ser destru\xEDda. Tempo de Recarga de {10 minutos, white}."
	},
	["phosphorescent shell"] = {
		format = "Ativo: Aumenta a {Sabedoria, white} em {20, white}, diminui a {For\xE7a, white} e a {Intelig\xEAncia, white} em {5, white} por {30 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["poisonpetal seeds"] = {
		format = "Ativo: Durante {1 minuto, white}, seus ataques b\xE1sicos aplicar\xE3o Veneno ao alvo, causando {5 de dano m\xE1gico, #BA7DFF} por segundo por {10 segundos, white}. Tempo de Recarga de {10 minutos, white}."
	},
	["basic reel"] = {
		format = "Causa {10 de dano, white} ao alvo e diminui a durabilidade da vara de pesca em {20, white} por segundo durante {4 segundos, white}."
	},
	["big reel"] = {
		format = "Causa {25 de dano, white} ao alvo e diminui a durabilidade da vara de pesca em {50, white} por segundo durante {4 segundos, white}."
	},
	["expert reel"] = {
		format = "Causa {50 de dano, white} ao alvo e diminui a durabilidade da vara de pesca em {100, white} por segundo durante {4 segundos, white}."
	},
	harpoon = {
		format = "Causa {100 de dano, white} ao alvo e diminui a durabilidade da vara de pesca em {150, white} por segundo durante {4 segundos, white}.\n\nAumenta a chance do peixe se tornar agressivo em {50%, white}."
	},
	["master reel"] = {
		format = "Causa {100 de dano, white} ao alvo e diminui a durabilidade da vara de pesca em {200, white} por segundo durante {4 segundos, white}."
	},
	["give slack"] = {
		format = "Causa {5 de dano, white} ao alvo e aumenta a durabilidade da vara de pesca em {20, white} por segundo durante {4 segundos, white}."
	},
	["fishing nets"] = {
		format = "Causa {5 de dano, white} ao alvo e aumenta a durabilidade da vara de pesca em {20, white} por segundo durante {4 segundos, white}.\n\nAumenta a chance de cansar o peixe em {50%, white}."
	},
	["fishing basket"] = {
		format = "Causa {125 de dano, white} ao alvo e aumenta a durabilidade da vara de pesca em {10, white} por segundo durante {4 segundos, white}. S\xF3 pode ser usado quando o peixe estiver com {30% de vida ou menos, #77D463}."
	},
	["apprentice synthesis"] = {
		format = "Adiciona {25 pontos, white} no processo de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {100%, white} de chance de sucesso."
	},
	["expert synthesis"] = {
		format = "Adiciona {50 pontos, white} no processo de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {90%, white} de chance de sucesso."
	},
	["master synthesis"] = {
		format = "Adiciona {75 pontos, white} no processo de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {80%, white} de chance de sucesso."
	},
	["artisan synthesis"] = {
		format = "Adiciona {100 pontos, white} no processo de cria\xE7\xE3o, mas diminui a durabilidade em {2, white}. Possui {75%, white} de chance de sucesso."
	},
	["smither's synthesis"] = {
		format = "Adiciona {200 pontos, white} no processo de cria\xE7\xE3o, mas diminui a durabilidade em {2, white}. Possui {75%, white} de chance de sucesso."
	},
	["apprentice shine"] = {
		format = "Aumenta a probabilidade de qualidade da pr\xF3xima condi\xE7\xE3o de cria\xE7\xE3o em {10%, white}. Possui {100%, white} de chance de sucesso."
	},
	["expert shine"] = {
		format = "Aumenta a probabilidade de qualidade da pr\xF3xima condi\xE7\xE3o de cria\xE7\xE3o em {20%, white}. Possui {100%, white} de chance de sucesso."
	},
	["master shine"] = {
		format = "Aumenta a probabilidade de qualidade da pr\xF3xima condi\xE7\xE3o de cria\xE7\xE3o em {30%, white}. Possui {100%, white} de chance de sucesso."
	},
	["artisan shine"] = {
		format = "Aumenta a probabilidade de qualidade da pr\xF3xima condi\xE7\xE3o de cria\xE7\xE3o em {50%, white}. Possui {100%, white} de chance de sucesso."
	},
	["carpenter's shine"] = {
		format = "Aumenta a probabilidade de qualidade da pr\xF3xima condi\xE7\xE3o de cria\xE7\xE3o em {100%, white}. Possui {75%, white} de chance de sucesso."
	},
	["apprentice touch"] = {
		format = "Adiciona {25 pontos, white} na qualidade de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {100%, white} de chance de sucesso."
	},
	["expert touch"] = {
		format = "Adiciona {50 pontos, white} na qualidade de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {90%, white} de chance de sucesso."
	},
	["master touch"] = {
		format = "Adiciona {75 pontos, white} na qualidade de cria\xE7\xE3o, mas diminui a durabilidade em {1, white}. Possui {80%, white} de chance de sucesso."
	},
	["artisan touch"] = {
		format = "Adiciona {100 pontos, white} na qualidade de cria\xE7\xE3o, mas diminui a durabilidade em {2, white}. Possui {75%, white} de chance de sucesso."
	},
	["precision touch"] = {
		format = "Adiciona {200 pontos, white} na qualidade de cria\xE7\xE3o, mas diminui a durabilidade em {2, white}. Possui {75%, white} de chance de sucesso."
	},
	["apprentice mend"] = {
		format = "Restaura {1 ponto, white} na durabilidade de cria\xE7\xE3o. Possui {100%, white} de chance de sucesso."
	},
	["expert mend"] = {
		format = "Restaura {2 pontos, white} na durabilidade de cria\xE7\xE3o. Possui {90%, white} de chance de sucesso."
	},
	["master mend"] = {
		format = "Restaura {3 pontos, white} na durabilidade de cria\xE7\xE3o. Possui {80%, white} de chance de sucesso."
	},
	["artisan mend"] = {
		format = "Restaura {5 pontos, white} na durabilidade de cria\xE7\xE3o. Possui {60%, white} de chance de sucesso."
	},
	["focused mend"] = {
		format = "Restaura {4 pontos, white} na durabilidade de cria\xE7\xE3o. Possui {100%, white} de chance de sucesso."
	},
	["new tools"] = {
		format = "A durabilidade da cria\xE7\xE3o n\xE3o ser\xE1 reduzida nas pr\xF3ximas {3 a\xE7\xF5es, white}."
	},
	["steady hand"] = {
		format = "Aumenta a chance de sucesso da pr\xF3xima a\xE7\xE3o em {30%, white}."
	},
	["firm grip"] = {
		format = "Aumenta a efetividade das habilidades de Synthesis em {20%, white} nas pr\xF3ximas {3 a\xE7\xF5es, white}."
	},
	["touch of salt"] = {
		format = "Aumenta a efetividade das habilidades de Touch em {20%, white} nas pr\xF3ximas {3 a\xE7\xF5es, white}."
	},
	["lesser mana potion"] = {
		format = "Recupera {180 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["intermediate mana potion"] = {
		format = "Recupera {300 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["greater mana potion"] = {
		format = "Recupera {400 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["major mana potion"] = {
		format = "Recupera {500 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["supreme mana potion"] = {
		format = "Recupera {700 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["eternal mana potion"] = {
		format = "Recupera {900 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["transcendent mana potion"] = {
		format = "Recupera {1.100 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t8 mana potion"] = {
		format = "Recupera {960 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t9 mana potion"] = {
		format = "Recupera {960 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t10 mana potion"] = {
		format = "Recupera {960 de mana, #52A8F7} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["lesser health potion"] = {
		format = "Recupera {300 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["intermediate health potion"] = {
		format = "Recupera {500 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["greater health potion"] = {
		format = "Recupera {800 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["major health potion"] = {
		format = "Recupera {1.100 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["supreme health potion"] = {
		format = "Recupera {1.500 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["eternal health potion"] = {
		format = "Recupera {1.800 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["transcendent health potion"] = {
		format = "Recupera {2.200 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t8 health potion"] = {
		format = "Recupera {2.200 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t9 health potion"] = {
		format = "Recupera {2.200 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["t10 health potion"] = {
		format = "Recupera {2.200 de vida, #77D463} ao usar. Compartilha o Tempo de Recarga com outras po\xE7\xF5es."
	},
	["energetic tonic"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {9, white}.\n\nDiminui o {(Healing Power), #77D463} e o {(Defense Power), #FCBE7F} em {3, white} por {5 minutos, white}."
	},
	["training elixir"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {15, white} por {2 minutos, white}."
	},
	["dawn's drop"] = {
		format = "Aumenta a {Mana M\xE1xima, #52A8F7} em {150, white} e a {Regenera\xE7\xE3o de Mana, #52A8F7} em {30, white} por {5 minutos, white}."
	},
	["infantry boost"] = {
		format = "Aumenta a {Vida M\xE1xima, #77D463} em {150, white} e a {Regenera\xE7\xE3o de Vida, #77D463} em {30, white} por {5 minutos, white}."
	},
	["tonic of regeneration"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {9, white}.\n\nDiminui a {Velocidade de Movimento, #C2DBFB} em {10%, white} por {5 minutos, white}."
	},
	["opportunist's elixir"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {15, white} por {2 minutos, white}."
	},
	["oversea tonic"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {18, white} e a {Velocidade de Movimento, #C2DBFB} em {10%, white}.\n\nDiminui o {(Attack Power), #FF5151} em {15, white} por {5 minutos, white}."
	},
	["weakening poison"] = {
		format = "Durante {2 minutos, white}, seus ataques b\xE1sicos aplicam Veneno Enfraquecedor, reduzindo o {(Defense Power), #FCBE7F} do alvo em {1, white} por {5 segundos, white} (M\xE1x. {20 ac\xFAmulos, white})."
	},
	["thug's tonic"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {9, white}. Diminui a {Velocidade de Movimento, #C2DBFB} em {10%, white} por {5 minutos, white}."
	},
	["nursing elixir"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {15, white} por {2 minutos, white}.",
		dontReplaceStats = true
	},
	["assault tonic"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {18, white} e a {Velocidade de Movimento, #C2DBFB} em {10%, white}.\n\nDiminui o {(Defense Power), #FCBE7F} em {15, white} por {5 minutos, white}."
	},
	["toxic poison"] = {
		format = "Durante {2 minutos, white}, seus ataques b\xE1sicos aplicam Veneno T\xF3xico que causa {2 de dano, white} por segundo durante {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["rusty old trap"] = {
		format = "Deixa uma armadilha de urso para tr\xE1s ao ser usado."
	},
	["javelin quiver"] = {
		format = "Ativo: Instantaneamente causa de {30 a 70 de dano, white} a um alvo em uma m\xE9dia dist\xE2ncia. Tem {15%, white} de chance de aplicar {Sangramento, #FC7474}, causando {7 de dano, white} por segundo durante {5 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["crystal of the dawn"] = {
		format = "Ativo: Instantaneamente cura voc\xEA e seu grupo em {300 de vida, #77D463} e aumenta o {(Defense Power), #FCBE7F} em {15, white} por {5 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["duelist's honor"] = {
		format = "Ativo: Instantaneamente marca o alvo para um duelo por {15 segundos, white}. Aumenta o {(Attack Power), #FF5151} em {40, white}, mas reduz o {(Defense Power), #FCBE7F} em {40, white} contra o alvo marcado. A marca \xE9 removida caso se afaste do alvo. Tempo de Recarga de {5 minutos, white}."
	},
	["exotic incense"] = {
		format = "Ativo: Instantaneamente receba {500 de cura, #77D463} e {15 de (Attack Power), #FF5151} por {3 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["aegis rune"] = {
		format = "Ativo: Instantaneamente ganha um escudo que absorve {250 de dano, white} durante {30 segundos, white}. Aumenta o {(Attack Power), #FF5151} em {15, white} enquanto o escudo estiver ativo. Tempo de Recarga de {5 minutos, white}."
	},
	["bag of caltrops"] = {
		format = "Ativo: Instantanemanete deixa estrepes para tr\xE1s que duram {10 segundos, white}, causando de {15 a 35 de dano, white} e {30% de Lentid\xE3o, #FFA851} nos alvos que pisarem nelas durante {3 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["emergency blockage"] = {
		format = "Ativo: Instantaneamente deixa barricadas de madeira para tr\xE1s que duram {5 segundos, white} e aumentam sua {Velocidade de Movimento, #C2DBFB} em {10%, white} por {10 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["stepping fuel"] = {
		format = "Ativo: Instantaneamente aumenta sua {Velocidade de Movimento, #C2DBFB} em {15%, white} e deixa para tr\xE1s uma trilha de fogo por {5 segundos, white}, causando de {80 a 155 de dano, white} por segundo aos alvos que pisarem nela. Tempo de Recarga de 3 minutos."
	},
	["hidden blade"] = {
		format = "Ativo: Aumenta a {Celeridade, #C2DBFB} em {40, white} por {6 segundos, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["goblin contraption"] = {
		format = "Ativo: Invoca instantaneamente uma Goblin Contraption que corre em dire\xE7\xE3o a um alvo e explode ap\xF3s atingir o alvo. Aplica {Atordoamento, #FFA851} nos alvos afetados {1,5 segundo, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["ships glue leftovers"] = {
		format = "Ativo: Causa de {75 a 100 de dano de arma, #FF5151} e reduz o {(Attack Power), #FF5151} do alvo em {20, white} por {10 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["suspicious milk"] = {
		format = "Ativo: Causa de {75 a 100 de dano de arma, #FF5151} e reduz {10, white} de {(Attack Power), #FF5151} e {10, white} de {(Defense Power), #FCBE7F} do alvo por {10 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["musty liquid"] = {
		format = "Ativo: Causa de {75 a 100 de dano m\xE1gico, #BA7DFF} e reduz o {(Defense Power), #FCBE7F} do alvo em {20, white} por {10 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["agent medallion"] = {
		format = "Ativo: Transforma-se em um morcego. Tempo de Recarga de {30 segundos, white}.\n\nPassivo: Aumenta a {(Spell Defense), #BA7DFF} em {28, white}."
	},
	["dawn bomb"] = {
		format = "Ativo: Causa de {80 a 120 de dano m\xE1gico, #BA7DFF} e causa {Atordoamento, #FFA851} nas criaturas Mortas-Vivas em uma \xE1rea pequena. Tempo de Recarga de {5 minutos, white}."
	},
	["bloody binding stone"] = {
		format = "Ativo: Invoca um Forsaken Vampire de {n\xEDvel 51, white} para lutar ao seu lado durante {3 minutos, white} ou at\xE9 ser derrotado. Tempo de Recarga de {12 minutos, white}."
	},
	["lethal edge"] = {
		format = "Ganha {15% de chance de acerto cr\xEDtico adicional, #FC7474} durante {8 segundos, white}."
	},
	["fencer's escape"] = {
		format = "Remove todos os efeitos que prejudicam o movimento, como {Lentid\xE3o, #FFA851}, {Atordoamento, #FFA851} e {Enraizamento, #FFA851}, e reduz a dura\xE7\xE3o desses efeitos em {30%, white} durante {5 segundos, white}."
	},
	["blade warding"] = {
		format = "Cria um escudo ao seu redor que absorve {%d [3.0] (Defense Power) de dano, #FCBE7F} e reduz a dura\xE7\xE3o de efeitos que prejudicam o movimento em {20%, white} durante {5 segundos, white}."
	},
	["power surge"] = {
		format = "Durante {8 segundos, white}, aumenta o dano das suas habilidades e ataques b\xE1sicos em {12%, white}, mas recebe {5%, white} a mais de dano enquanto este efeito estiver ativo."
	},
	["magic ward"] = {
		format = "Cria um escudo ao seu redor e de um alvo aliado que absorve {%d [2.5] (Healing Power) de dano, #77D463} durante {6 segundos, white}."
	},
	["mana overcharge"] = {
		format = "Aumenta o dano das suas habilidades em {10%, white} ao custo de {15%, white} a mais de {mana, #52A8F7} ou de {vida, #77D463} durante {10 segundos, white}."
	},
	["steady stance"] = {
		format = "Ganha {30% de Velocidade de Ataque, #C2DBFB} durante {8 segundos, white}."
	},
	["rending throw"] = {
		format = "Atira um machado no alvo que causa {%d {0.50] (Weapon Power) de dano, #FF5151} e aplica {Sangramento, #FC7474}, causando {%d [0.40] (Weapon Power) de dano, #FF5151} a cada {2 segundos, white} durante {8 segundos, white} e {20% de Lentid\xE3o, #FFA851} durante {4 segundos, white}."
	},
	["whirl slash"] = {
		format = "Causa {%d [1.50] (Weapon Power) de dano de arma, #FF5151} dentro de uma \xE1rea m\xE9dia ao seu redor."
	},
	["mace toss"] = {
		format = "Causa {%d {1.50] (Weapon Power) de dano, #FF5151} no alvo e {25% de Lentid\xE3o, #FFA851} durante {4 segundos, white}."
	},
	["mighty smash"] = {
		format = "Causa {%d [2.00] (Weapon Power) de dano, #FF5151} em uma grande \xE1rea em forma de cone na sua frente."
	},
	["dash t1"] = {
		format = "Um breve impulso que aumenta a velocidade da montaria em {10%, white} por {5 segundos, white}."
	},
	["dash t2"] = {
		format = "Um breve impulso que aumenta a velocidade da montaria em {20%, white} por {5 segundos, white}."
	},
	["dash t3"] = {
		format = "Um breve impulso que aumenta a velocidade da montaria em {30%, white} por {5 segundos, white}."
	},
	["sprint t1"] = {
		format = "Um galope cont\xEDnuo que aumenta a velocidade da montaria em {5%, white} por {30 segundos, white}."
	},
	["sprint t2"] = {
		format = "Um galope cont\xEDnuo que aumenta a velocidade da montaria em {10%, white} por {30 segundos, white}."
	},
	["sprint t3"] = {
		format = "Um galope cont\xEDnuo que aumenta a velocidade da montaria em {15%, white} por {30 segundos, white}."
	},
	["stampede t1"] = {
		format = "Avan\xE7a desenfreadamente at\xE9 {4 c\xE9lulas, white}, ignorando colis\xF5es e causando {Atordoamento, #FFA851} no alvo por {2 segundos, white}. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["stampede t2"] = {
		format = "Avan\xE7a desenfreadamente at\xE9 {4 c\xE9lulas, white}, ignorando colis\xF5es e causando {Atordoamento, #FFA851} no alvo por {3 segundos, white}. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["stampede t3"] = {
		format = "Avan\xE7a desenfreadamente at\xE9 {4 c\xE9lulas, white}, ignorando colis\xF5es e causando {Atordoamento, #FFA851} no alvo por {4 segundos, white}. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["charge t1"] = {
		format = "Avan\xE7a at\xE9 {4 c\xE9lulas, white}, causando {%d [0.5] (Attack Power), #FF5151} de dano ao alvo, desmontando imediatamente logo ap\xF3s. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["charge t2"] = {
		format = "Avan\xE7a at\xE9 {4 c\xE9lulas, white}, causando {%d [0.75] (Attack Power), #FF5151} de dano ao alvo, desmontando imediatamente logo ap\xF3s. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["charge t3"] = {
		format = "Avan\xE7a at\xE9 {4 c\xE9lulas, white}, causando {%d [1.2] (Attack Power), #FF5151} de dano ao alvo, desmontando imediatamente logo ap\xF3s. N\xE3o pode ser usado enquanto puxa uma carro\xE7a."
	},
	["iron handcuffs"] = {
		format = "Ativo: Instantaneamante causa {Atordoamento, #FFA851} em um alvo dentro em uma dist\xE2ncia corpo a corpo e o vincula a voc\xEA, fazendo com que siga seus passos durante {3 segundos, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["living branches"] = {
		format = "Ativo: Invoca um Elderwood de {n\xEDvel 70, white} para lutar ao seu lado por {1 minuto, white} ou at\xE9 ser derrotado. Tempo de recarga de {5 minutos, white}."
	},
	["bear trap"] = {
		format = "Ativo: Instantaneamente deixa uma armadilha de urso armada por {10 segundos, white} que causa de {150 a 250 de dano, white} e prende inimigos que pisarem nela por {5 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["emergencial campfire"] = {
		format = "Ativo: Coloca uma fogueira de acampamento de emerg\xEAncia que dura {4 segundos, white}.\n\nAumenta a {Celeridade, #C2DBFB} dos membros do grupo em uma \xE1rea m\xE9dia em {40, white} por {8 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["icedrop solution"] = {
		format = "Ativo: Instantaneamente transforma uma c\xE9lula sob o usu\xE1rio em gelo que dura {6 segundos, white}, aumentando a {Velocidade de Movimento, #C2DBFB} em {25%, white} por {3 segundos, white}.\n\nCausa {Enraizamento, #FFA851} por {6 segundos, white} nos alvos que pisarem na c\xE9lula. Tempo de Recarga de {45 segundos, white}."
	},
	["mysticap fetish"] = {
		format = "Ativo: Restaura instantaneamente {400 de mana, #52A8F7} e aumenta o {(Defense Power), #FCBE7F} em {20, white} por {5 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["sinister sigil"] = {
		format = "Ativo: Instantaneamente faz alvos com {5, white} n\xEDveis de diferen\xE7a do conjurador em uma \xE1rea m\xE9dia correrem de medo durante {6 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["combat panacea"] = {
		format = "Ativo: Instantaneamente remove {1 efeito negativo aleat\xF3rio, #FFA851} e aumenta o {(Attack Power), #FF5151} em {30, white} por {2 minutos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["wild pheromones"] = {
		format = "Ativo: Instantaneamente faz com que criaturas em uma \xE1rea m\xE9dia sejam for\xE7adas a te atacar por {6 segundos, white}.\n\nAumenta o {(Defense Power), #FCBE7F} em {30, white} por {5 minutos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["juggernaut tonic"] = {
		format = "Aumenta o {(Attack Power), #FF5151} e o {(Defense Power), #FCBE7F} em {15, white}.\n\nReduz a {Velocidade de Movimento, #C2DBFB} em {15%, white} por {5 minutos, white}."
	},
	["tonic of blood"] = {
		format = "Aumenta a Vitalidade, a For\xE7a, a Intelig\xEAncia, a Destreza e a Sabedoria em {15, white}.\n\nReduz a {Velocidade de Movimento, #C2DBFB} em {10%, white} por {5 minutos, white}."
	},
	["vigorous draught"] = {
		format = "Aumenta a {Vida M\xE1xima, #77D463} em {600, white} e a {Regenera\xE7\xE3o de Vida, #77D463} em {60, white} por {5 minutos, white}."
	},
	["manastorm draft"] = {
		format = "Aumenta a {Mana M\xE1xima, #52A8F7} em {600, white} e a {Regenera\xE7\xE3o de Mana, #52A8F7} em {60, white} por {5 minutos, white}."
	},
	["savage compound"] = {
		format = "Aumenta a {Precis\xE3o, white} em {50, white} por {2 minutos, white}."
	},
	["vampirism venom"] = {
		format = "Durante {2 minutos, white}, seus ataques b\xE1sicos aplicam Veneno Vital que drena {2 de vida, #77D463} por segundo durante {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["slayer elixir"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {40, white} por {2 minutos, white}."
	},
	["expert elixir"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {40, white} por {2 minutos, white}."
	},
	["resilience mutagen"] = {
		format = "Cada {efeito negativo, #FFA851} no conjurador passa a aumentar seu {(Attack Power), #FF5151} em {12, white} por {4 minutos, white} (M\xE1x. {60 de (Attack Power), #FF5151})."
	},
	["sun tears"] = {
		format = "Aumenta a {Vida M\xE1xima, #77D463} e a {Mana M\xE1xima, #52A8F7} em {400, white}, e a {Regenera\xE7\xE3o de Mana, #52A8F7} e {Regenera\xE7\xE3o de Vida, #77D463} em {40, white} por {5 minutos, white}."
	},
	["drop of grace"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {60, white} por {5 minutos, white}.",
		dontReplaceStats = true
	},
	["tree of life sap"] = {
		format = "Aumenta a {Regenera\xE7\xE3o de Vida, #77D463} em {120, white}.\n\nReduz a {Velocidade de Movimento, #C2DBFB} em {15%, white} por {5 minutos, white}."
	},
	["quickening concoction"] = {
		format = "Redefine o Tempo de Recarga de uma habilidade aleat\xF3ria. Tempo de Recarga de {5 minutos, white}."
	},
	["sage's essence"] = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} em {80, white} por {3 minutos, white}."
	},
	["frenzy potion"] = {
		format = "Aumenta o {(Attack Power), #FF5151} e a {Celeridade, #C2DBFB} em {45, white} e reduz o {(Defense Power), #FCBE7F} em {50, white} por {5 minutos, white}."
	},
	["potent pheromones"] = {
		format = "Instantaneamente faz com que criaturas em uma \xE1rea m\xE9dia sejam for\xE7adas a te atacar por {6 segundos, white}.\n\nAumenta o {(Defense Power), #FCBE7F} em {60, white} por {5 minutos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["sumptuous panacea"] = {
		format = "Remove at\xE9 {3 efeitos negativos, #FFA851} e restaura {1.000 de Vida, #77D463}. Tempo de Recarga de {8 minutos, white}."
	},
	["essence of bravery"] = {
		format = "Aumenta o {(Attack Power), #FF5151} e o {(Defense Power), #FCBE7F} em {30, white} por {10 minutos, white}."
	},
	["executioner's mutagen"] = {
		format = "Aumenta a {Precis\xE3o, white} em {70, white} por {10 minutos, white}."
	},
	["astral decoction"] = {
		format = "Redefine instantaneamente o Tempo de Recarga de todas as habilidades e restaura completamente a {mana, #52A8F7}. Tempo de Recarga de {15 minutos, white}."
	},
	["slowing poison"] = {
		format = "Durante {5 minutos, white}, seus ataques b\xE1sicos aplicam Veneno Desacelerador, reduzindo a {Velocidade de Movimento, #C2DBFB} do alvo em {1%, white} por {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["fatiguing poison"] = {
		format = "Durante {5 minutos, white}, seus ataques b\xE1sicos aplicam Fadiga, reduzindo a {Celeridade, #C2DBFB} do alvo em {4, white} por {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["searing poison"] = {
		format = "Durante {5 minutos, white}, seus ataques b\xE1sicos aplicam Veneno Ardente que causa {7 de dano, white} por segundo durante {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["magic leeching venom"] = {
		format = "Durante {5 minutos, white}, seus ataques b\xE1sicos aplicam Veneno de Mana que drena {5 de mana, #52A8F7} por segundo durante {5 segundos, white} (M\xE1x. {10 ac\xFAmulos, white})."
	},
	["angerhorn impaler"] = {
		format = "Ativo: Aumenta o {(Attack Power), #FF5151} em {10, white} por {8 segundos, white}.\n\nSe estiver com {50% de vida ou menos, #77D463}, aumenta em {20, white}, e se estiver com {25% de vida ou menos, #77D463}, aumenta em {40, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["goblin bombs"] = {
		format = "Ativo: Lan\xE7a instantaneamente uma bomba que explode e causa de {50 a 200 de dano, white} e {Atordoamento, #FFA851} a todos em uma pequena \xE1rea por {1 segundo, white}.\n\nAp\xF3s {0,5 segundo, white} outras {4 bombas, white} explodem perto da primeira explos\xE3o, repetindo o efeito inicial. Tempo de Recarga de {5 minutos, white}."
	},
	["omega stone"] = {
		format = "Ativa: Aumenta o {(Attack Power), #FF5151} e o {(Defense Power), #FCBE7F} em {40, white} por {1 minuto, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["torment configuration"] = {
		format = "Ativa: Redireciona metade de todo o dano recebido a quem desferiu o ataque por {30 segundos, white}. Tempo de Recarga de {15 minutos, white}."
	},
	["ratoxin bomb"] = {
		format = "Ativo: Instantaneamente lan\xE7a toxinas no alvo que causam {12 de dano m\xE1gico, #BA7DFF} por segundo e reduz o {(Defense Power), #FCBE7F} em {30, white} por {10 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["shamanic brooch"] = {
		format = "Ativo: Anula todos os {efeitos negativos, #FFA851} recebidos e aumenta a {cura, #77D463} recebida em {150, white} por {4 segundos, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["idol of gluttony"] = {
		format = "Ativo: Converte {20%, white} de todo o dano causado por ataques b\xE1sicos e habilidades em {vida, #77D463} durante {10 segundos, white}. Tempo de Recarga de {15 minutos, white}."
	},
	ghostlamp = {
		format = "Ativo: Rouba at\xE9 {400 de mana, #52A8F7} do alvo e invoca {2 Mire Wisps, white} de {n\xEDvel 55, white} para lutar ao seu lado. Tempo de Recarga de {10 minutos, white}."
	},
	["the grim smile"] = {
		format = "Ativo: Restaura {600 de Vida, #77D463} durante {10 segundos, white} cada vez que eliminar um alvo. Tempo de Recarga de {5 minutos, white}."
	},
	["eldritch crow mask"] = {
		format = "Ativo: Aumenta o {(Spell Power), #BA7DFF} em {40, white} por {20 segundos, white} e remove todos os efeitos positivos atuais dos alvos em uma \xE1rea m\xE9dia ao seu redor. Tempo de Recarga de {30 minutos, white}."
	},
	["eau de berserk"] = {
		format = "Ativo: Borrife em um alvo para causar {Atordoamento, #FFA851} nele por {0,5 segundo, white} e diminuir o {(Defense Power), #FCBE7F} em {15, white} ao longo de {8 segundos, white}.\n\nTem {30%, white} de chance de diminuir o {(Defense Power), #FCBE7F} em {30, white}, mas aumentar o {(Attack Power), #FF5151} em {30, white}. Tempo de Recarga de {2 minutos, white}."
	},
	["toxique n5"] = {
		format = "Ativo: Aplica {15% de Lentid\xE3o, #FFA851} ao usu\xE1rio por {8 segundos, white}.\n\nEnquanto o efeito estiver ativo, deixa um rastro de fuma\xE7a t\xF3xica para tr\xE1s, aplicando um efeito de dano ao longo do tempo que causa {20 de dano m\xE1gico, #BA7DFF} por segundo e {20% de Lentid\xE3o, #FFA851} por {8 segundos, white} nos alvos atingidos. Tempo de Recarga de {90 segundos, white}."
	},
	["dendrion's memento"] = {
		format = "Ativo: Invoca uma Living Roots de {n\xEDvel 54, white} para lutar ao seu lado durante {1 minuto, white} ou at\xE9 ser derrotada. Tempo de Recarga de {12 minutos, white}."
	},
	["hypnotizing stone"] = {
		format = "Ativo: Aplica um ac\xFAmulo de Hipnose por {20 segundos, white} que aumenta o custo das habilidades em {1%, white}.\n\nAo atingir 5 ac\xFAmulos, aplica {Sil\xEAncio, #FFA851} no alvo por {5 segundos, white}. Tempo de Recarga de {15 segundos, white}.\n\nN\xE3o funciona em criaturas. Um alvo n\xE3o pode ser afetado por {Sil\xEAncio, #FFA851} novamente por {2 minutos, white}."
	},
	["corrupted fang"] = {
		format = "Ativo: Aplica Veneno ao alvo, causando {150 de dano, white} por segundo e tamb\xE9m anulando toda a cura recebida por {6 segundos, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["immaterial bangle"] = {
		format = "Aumenta {(Weapon Power), #FF5151} em {20, white} por {10 segundos, white}, mas consome {150 de mana, #52A8F7} a cada {2 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["dunewalker cloak"] = {
		format = "Concede {25% de Celeridade, #C2DBFB} por {12 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	["toadish cloak"] = {
		format = "Ativo: Durante {30 segundos, white} reduz o dano m\xE1gico recebido de efeitos ao longo do tempo em {10, white}. Tempo de Recarga de {2 minutos, white}."
	},
	["frost ward"] = {
		format = "Ativo: Aumenta seu {(Defense Power), #FCBE7F} em {40, white} por {15 segundos, white}. Se voc\xEA se mover, perde o efeito. Tempo de Recarga de {5 minutos, white}."
	},
	["waterless poppy blossoms"] = {
		format = "Ativa: Cria uma flor na frente do jogador. Qualquer membro do grupo que pisar nela ganha um escudo de 2000. Tempo de recarga de 5 minutos."
	},
	["reflective carapace"] = {
		format = "Ativo: Aumenta seu {(Defense Power), #FCBE7F} em {15, white} e redireciona {5%, white} de todo o dano recebido a quem desferiu o ataque durante {10 segundos, white}. Tempo de recarga de {3 minutos, white}."
	},
	["bracelet of skorn"] = {
		format = "Ativo: Invoca um Astor Herald {n\xEDvel 50, white} para lutar ao seu lado por {1 minuto, white} ou at\xE9 ser derrotado. Tempo de Recarga de {7 minutos, white}."
	},
	["garment of skorn"] = {
		format = "Ativo: Aumenta o {(Defense Power), #FCBE7F} em {20, white} e recupera {mana, #52A8F7} igual \xE0 metade do dano recebido por {6 segundos, white}. Tempo de Recarga de {7 minutos, white}."
	},
	["gauntlet of skorn"] = {
		format = "Ativo: Aumenta a {Precis\xE3o, white} em {30, white} por {7 segundos, white}. Tempo de Recarga de {5 minutos, white}."
	},
	pie = {
		format = "Aumenta o {(Attack Power), #FF5151} em {25, white} por {30 minutos, white}."
	},
	bun = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {6, white} por {30 minutos, white}."
	},
	cake = {
		format = "Aumenta o {(Attack Power), #FF5151} em {12, white} por {30 minutos, white}."
	},
	croissant = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {16, white} por {30 minutos, white}."
	},
	danish = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {25, white} por {30 minutos, white}."
	},
	["deluxe cake"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {16, white} por {30 minutos, white}."
	},
	scone = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {8, white} por {30 minutos, white}."
	},
	beer = {
		format = "Canaliza e restaura {50, white} de {vida, #77D463} e {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	whiskey = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e a {Regenera\xE7\xE3o de Vida, #77D463} em {15, white} por {20 minutos, white}."
	},
	["deluxe cookies"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {8, white} por {30 minutos, white}."
	},
	muffin = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {12, white} por {30 minutos, white}."
	},
	cookies = {
		format = "Aumenta o {(Attack Power), #FF5151} em {6, white} por {30 minutos, white}."
	},
	vodka = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e {Regenera\xE7\xE3o de Vida, #77D463} em {5, white} durante {20 minutos, white}."
	},
	wine = {
		format = "Canaliza e restaura {175, white} de {vida, #77D463} e {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	rum = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e {Regenera\xE7\xE3o de Vida, #77D463} em {25, white} por {20 minutos, white}."
	},
	["acornchar sausage"] = {
		format = "Aumenta a {Destreza, white} em {30, white} por {30 minutos, white}."
	},
	["bittersweet roast"] = {
		format = "Aumenta a {Vitalidade, white}, {For\xE7a, white}, {Intelig\xEAncia, white}, {Destreza, white} e {Sabedoria, white} em {10, white} por {30 minutos, white}."
	},
	["charred meat kebab"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {10, white} por {30 minutos, white}."
	},
	["dwarven purple shank"] = {
		format = "Aumenta a {Destreza, white} em {20, white} por {30 minutos, white}."
	},
	["fillet lucien"] = {
		format = "Aumenta a {Sabedoria, white} em {20, white} por {30 minutos, white}."
	},
	["freshfish roll"] = {
		format = "Aumenta a {Sabedoria, white} em {30, white} por {30 minutos, white}."
	},
	["frozen sweet berries"] = {
		format = "Aumenta a {For\xE7a, white} em {30, white} por {30 minutos, white}."
	},
	["fruit pancakes"] = {
		format = "Aumenta a {Vitalidade, white} em {10, white} por {30 minutos, white}."
	},
	["iced fruitmilk"] = {
		format = "Aumenta a {Velocidade de Movimento, #C2DBFB} em {15%, white} por {30 minutos, white}."
	},
	["firered chicken kebab"] = {
		format = "Aumenta a {For\xE7a, white} em {40, white} por {30 minutos, white}."
	},
	["lucien's waffles"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {30, white} por {30 minutos, white}."
	},
	["lyderian chopped tenderloin"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {40, white} por {30 minutos, white}."
	},
	["ravendawnian porridge"] = {
		format = "Aumenta a {Sabedoria, white} em {10, white} por {30 minutos, white}."
	},
	["roasted chicken and veggies"] = {
		format = "Aumenta a {Destreza, white} em {10, white} por {30 minutos, white}."
	},
	["rohna roasted ham"] = {
		format = "Aumenta a {Destreza, white} em {40, white} por {30 minutos, white}."
	},
	["rum downslider"] = {
		format = "Aumenta a {Vitalidade, white} em {20, white} por {30 minutos, white}."
	},
	["sailor's seastew"] = {
		format = "Aumenta a {Sabedoria, white} em {40, white} por {30 minutos, white}."
	},
	["settler's stew"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {20, white} por {30 minutos, white}."
	},
	["shaked fruitmilk"] = {
		format = "Aumenta a {For\xE7a, white} em {20, white} por {30 minutos, white}."
	},
	["smoked sausage"] = {
		format = "Aumenta a {For\xE7a, white} em {10, white} por {30 minutos, white}."
	},
	["sweetened beans"] = {
		format = "Aumenta a {Vitalidade, white} em {40, white} por {30 minutos, white}."
	},
	["apple cider"] = {
		format = "Canaliza e restaura {100, white} de {vida, #77D463} e de {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	["banana vodka"] = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e a {Regenera\xE7\xE3o de Vida, #77D463} em {45, white} por {20 minutos, white}."
	},
	["strawberry whiskey"] = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e a {Regenera\xE7\xE3o de Vida, #77D463} em {60, white} por {20 minutos, white}."
	},
	["blueberry wine"] = {
		format = "Canaliza e restaura {325, white} de {vida, #77D463} e de {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	["spiced rum"] = {
		format = "Canaliza e restaura {400, white} de {vida, #77D463} e de {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	["shanks n' mash"] = {
		format = "Aumenta {Vitalidade, white}, {For\xE7a, white}, {Intelig\xEAncia, white}, {Destreza, white} e {Sabedoria, white} em {15, white} por {30 minutos, white}."
	},
	["orange liqueur"] = {
		format = "Canaliza e restaura {250, white} de {vida, #77D463} e de {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	["blueberry pie"] = {
		format = "Aumenta a {Vitalidade, white} em {30, white} por {30 minutos, white}."
	},
	["glademire crackers"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {4, white} por {30 minutos, white}."
	},
	["apple puree"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {4, white} por {30 minutos, white}."
	},
	bagel = {
		format = "Aumenta o {(Healing Power), #77D463} em {12, white} por {30 minutos, white}."
	},
	["baked potatoes"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {1, white} por {30 minutos, white}."
	},
	["carrot soup"] = {
		format = "Aumenta a {Intelig\xEAncia, white} em {6, white} por {30 minutos, white}."
	},
	["corn chowder"] = {
		format = "Aumenta a {Sabedoria, white} em {4, white} por {30 minutos, white}."
	},
	["corn on a cob"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {1, white} por {30 minutos, white}."
	},
	cornbread = {
		format = "Aumenta o {(Healing Power), #77D463} em {3, white} por {30 minutos, white}."
	},
	["loaf bread"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {6, white} por {30 minutos, white}."
	},
	["lyderian fries"] = {
		format = "Aumenta a {For\xE7a, white} em {6, white} por {30 minutos, white}."
	},
	["mashed potatoes"] = {
		format = "Aumenta a {For\xE7a, white} em {4, white} por {30 minutos, white}."
	},
	omelet = {
		format = "Aumenta a {Destreza, white} em {6, white} por {30 minutos, white}."
	},
	["potato bread"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {1, white} por {30 minutos, white}."
	},
	["rohna crackers"] = {
		format = "Aumenta o {(Defense Power), #FCBE7F} em {4, white} por {30 minutos, white}."
	},
	["rye bread"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {25, white} por {30 minutos, white}."
	},
	["sajecho hardtack"] = {
		format = "Aumenta o {(Attack Power), #FF5151} em {4, white} por {30 minutos, white}."
	},
	["scrambled eggs"] = {
		format = "Aumenta a {Destreza, white} em {4, white} por {30 minutos, white}."
	},
	["silky scrambled eggs"] = {
		format = "Aumenta a {Sabedoria, white} em {6, white} por {30 minutos, white}."
	},
	["sourdought bagel"] = {
		format = "Aumenta o {(Healing Power), #77D463} em {16, white} por {30 minutos, white}."
	},
	["steamed carrots"] = {
		format = "Aumenta a {Vitalidade, white} em {6, white} por {30 minutos, white}."
	},
	["corn salad"] = {
		format = "Aumenta a {Vitalidade, white} em {4, white} por {30 minutos, white}."
	},
	boozemelon = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e a {Regenera\xE7\xE3o de Vida, #77D463} em {35, white} por {20 minutos, white}."
	},
	eclipse = {
		format = "Canaliza e restaura {600, white} de {vida, #77D463} e de {mana, #52A8F7} por segundo durante {15 segundos, white}. Ao receber dano, o efeito \xE9 cancelado."
	},
	["landing brandy"] = {
		format = "Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} e a {Regenera\xE7\xE3o de Vida, #77D463} em {10, white} por {20 minutos, white}."
	},
	["rune scribing feather"] = {
		format = "Quando usado, deixa uma armadilha m\xE1gica na c\xE9lula atual."
	},
	["golden maw"] = {
		format = "Ativo: Reduz a {(Weapon Defense), #FCBE7F} de um alvo adjacente em {40, white} por {6 segundos, white}. Tempo de Recarga de {2 minutos, white}."
	},
	["arrowcaller horn"] = {
		format = "Ativo: Invoca um Minotaur Arbalist {n\xEDvel 55, white} para lutar ao seu lado por {5 minutos, white} ou at\xE9 ser derrotado. Tempo de Recarga de {10 minutos, white}."
	},
	["withered demon hand"] = {
		format = "Ativo: Canaliza por {10 segundos, white} e reduz o {(Defense Power), #FCBE7F} do alvo em {8, white} por segundo durante {10 segundos, white}. Tempo de Recarga de {3 minutos, white}."
	},
	["saint alsek's cloak"] = {
		format = "Ativo: Aumenta a {Regenera\xE7\xE3o de Mana, #52A8F7} em {100, white} e reduz o {(Attack Power), #FF5151} e o {(Defense Power), #FCBE7F} em {30, white} por {10 segundos, white}. Tempo de Recarga de {2 minutos, white}."
	},
	["golden fleece"] = {
		format = "Ativo: Aumenta o Poder de Defesa em {12, white} por {6 segundos, white}. Tempo de Recarga de {3 minutos, white}. Passivo: Aumenta a {Sabedoria, white} e {Destreza, white} em {6, white}."
	},
	["norro's wand"] = {
		format = "Efeito desconhecido. As ordens de Norro eram us\xE1-la apenas quando Grokolak estivesse fraco o suficiente."
	},
	["dawns apotheosis"] = {
		format = "Transforma voc\xEA em um avatar do poder sagrado da Alvorada por {6 segundos, white}. Concede invulnerabilidade e imunidade aos efeitos de controle de multid\xE3o, mas reduz sua {Velocidade de Movimento, #C2DBFB} em {30%, white}.\n\nCura aleatoriamente um membro do grupo dentro de uma grande \xE1rea a cada {0,5 segundo, white} por {%d [%tv] (Healing Power) de vida, #77D463}.\n\nEnquanto o avatar estiver ativo, voc\xEA n\xE3o pode usar habilidades ou atacar. Al\xE9m disso, cura voc\xEA instantaneamente por {%d [5.0] (Healing Power) de vida, #77D463} ao ser ativado.",
		tier_details = "Poder de Cura em \xC1rea Grande: [%tv] / [%tv] / [%tv].",
		tier_values = {
			{
				1.5
			},
			{
				2
			},
			{
				2.5
			}
		}
	},
	["reaper's eclipse"] = {
		format = "Faz voc\xEA desaparecer temporariamente, retalhando at\xE9 %tv alvos na tela, um de cada vez, antes de perder o efeito.\n\nCausa {%d [5.0] (Weapon Power) de dano de arma, #FF5151} a cada alvo. Enquanto essa habilidade estiver ativa, voc\xEA estar\xE1 invulner\xE1vel.",
		tier_details = "Quantidade de Alvos: %tv / %tv / %tv.",
		tier_values = {
			{
				3
			},
			{
				4
			},
			{
				5
			}
		}
	},
	cataclysm = {
		format = "%tv Meteoros cair\xE3o aleatoriamente em uma \xE1rea m\xE9dia ao seu redor durante a dura\xE7\xE3o de {Cataclysm, #FBFB79}. Esses meteoros t\xEAm a mesma \xE1rea de efeito da habilidade {Meteor Strike, #FBFB79}, mas causam metade do dano.",
		tier_details = "Quantidade de Meteoros: %tv / %tv / %tv.",
		tier_values = {
			{
				11
			},
			{
				13
			},
			{
				15
			}
		}
	},
	["eternal retribution"] = {
		format = "Um martelo cai no local alvo, causando {%d [%tv] (Weapon Power) de dano de arma, #FF5151} aos alvos em uma \xE1rea pequena e {%d [%tv] (Weapon Power) de dano de arma, #FF5151} aos alvos em uma \xE1rea m\xE9dia.\n\nCausa {Atordoamento, #FFA851} a todos os alvos atingidos na \xE1rea pequena por {%tv segundo, white}.",
		tier_details = "Dano em \xC1rea Pequena: [%tv] / [%tv] / [%tv].\nDano em \xC1rea M\xE9dia: [%tv] / [%tv] / [%tv].\nDura\xE7\xE3o do Atordoamento: %tv / %tv / %tv segundos.",
		tier_values = {
			{
				4,
				2,
				"1,5"
			},
			{
				5,
				2.5,
				"2"
			},
			{
				6,
				3,
				"2,5"
			}
		}
	},
	["celestial barrage"] = {
		format = "Dispara 3 ondas de flechas, sendo que cada onda causa {%d [%tv] (Weapon Power) de dano de arma, #FF5151} aos alvos atingidos.\n\nEsta habilidade \xE9 canalizada enquanto ativa.",
		tier_details = "Quantidade de Danos: [%tv] / [%tv] / [%tv].",
		tier_values = {
			{
				2.5
			},
			{
				3
			},
			{
				3.75
			}
		}
	},
	["chaos chains"] = {
		format = "Correntes puxam todos os alvos em sua dire\xE7\xE3o, causando {60% de Lentid\xE3o, #FFA851} por {%tv segundos, white}, e aplicando um {Sangramento, #FC7474} por {%tv segundos, white}, causando {%d [2.5] (Weapon Power) de dano de arma, #FF5151} a cada segundo.",
		tier_details = "Dura\xE7\xE3o do Sangramento: %tv / %tv / %tv segundos.\nDura\xE7\xE3o da Lentid\xE3o: %tv / %tv / %tv segundos.",
		tier_values = {
			{
				"2",
				"4"
			},
			{
				"2,5",
				"5"
			},
			{
				"3",
				"6"
			}
		}
	},
	["witch's call"] = {
		format = "Lan\xE7a corvos sobre seus inimigos em uma \xE1rea m\xE9dia por {%tv segundos, white}, causando {%d [0.08] (Spell Power), #BA7DFF} a todos os alvos na \xE1rea de efeito a cada {1 segundo, white} enquanto aplica um ac\xFAmulo de Corrup\xE7\xE3o dos Corvos a cada golpe causador de dano.\n\nA Corrup\xE7\xE3o dos Corvos dura por {6 segundos, white}, causando {%d [0.2] (Spell Power), #BA7DFF} para cada ac\xFAmulo a cada {3 segundos, white}. Ac\xFAmulos subsequentes reiniciar\xE3o a dura\xE7\xE3o da Corrup\xE7\xE3o dos Corvos.",
		tier_details = "Dura\xE7\xE3o da Witch's Call: %tv / %tv / %tv segundos.",
		tier_values = {
			{
				8
			},
			{
				10
			},
			{
				12
			}
		}
	},
	["eye of the storm"] = {
		format = "Transforma-se em um Ciclone por {%tv segundos, white}, ganhando {50% de Velocidade de Movimento, #C2DBFB} e limpando quaisquer efeitos de controle de multid\xE3o ou redu\xE7\xE3o de movimento.\n\nConcede imunidade a controle de multid\xE3o, efeitos de redu\xE7\xE3o de movimento e dano.\n\nAlvos dentro de uma \xE1rea pequena ao seu redor recebem {%d [0.5] (Spell Power) de dano m\xE1gico, #BA7DFF} a cada {0,5 segundos, white} e s\xE3o jogados para cima.\n\nEste efeito ocorre apenas uma vez a cada {30 segundos, branco} para um alvo durante Eye of the Storm.\n\nAp\xF3s retornar do Ciclone, voc\xEA recebe uma barreira de {%d [7.5] (Healing Power) de vida, #77D463} por {10 segundos, white}.",
		tier_details = "Dura\xE7\xE3o da Eye of the Storm: %tv / %tv / %tv segundos.",
		tier_values = {
			{
				3
			},
			{
				4
			},
			{
				5
			}
		}
	}
}

for name, translation in pairs(g_spells.descriptions["pt-BR"]) do
	g_spells.descriptions[name].translation = {
		["pt-BR"] = {}
	}

	if translation.format then
		g_spells.descriptions[name].translation["pt-BR"].format = translation.format
	end

	if translation.tier_values then
		g_spells.descriptions[name].translation["pt-BR"].tier_values = translation.tier_values
	end

	if translation.tier_details then
		g_spells.descriptions[name].translation["pt-BR"].tier_details = translation.tier_details
	end
end

g_spells.descriptions["pt-BR"] = nil

local HEALING_ATTUNEMENT_SPELLS = {
	["healing channel"] = 1,
	mend = 1,
	regenerate = 1,
	["party recovery"] = 1,
	["generous influence"] = 1,
	devotion = 1,
	["dawn's light"] = 1,
	["flash heal"] = 1
}
local fishingAbilities = {
	"basic reel",
	"give slack",
	"big reel",
	"fishing nets",
	"expert reel",
	"harpoon",
	"master reel",
	"fishing basket"
}
local passiveAbilities = {
	"havoc",
	"killer instinct",
	"deadly duelist",
	"lethal toxins",
	"shadow proficiency",
	"trickster",
	"amplification",
	"frost armor",
	"pyromancer",
	"flow of magic",
	"hot headed",
	"bloodseeker",
	"savagery",
	"bloodlust",
	"hatred",
	"concentrated impact",
	"divine purpose",
	"devout protector",
	"strong footed",
	"undying will",
	"guardian",
	"healing attunement",
	"sacred spirit",
	"prophet",
	"invigorated healing",
	"healing bond",
	"careful aim",
	"fleetfooted",
	"clever adaptation",
	"clear focus",
	"marked for death",
	"celerity",
	"meditate",
	"wind mastery",
	"lingering impact",
	"sins of the many",
	"arcane corruption",
	"exploitation",
	"cursed touch",
	"withcraft mastery",
	"creeping death",
	"fire shield",
	"devout healer",
	"the cost of restoration",
	"bloodmancer",
	"bloodbath",
	"giant's blood",
	"cheap shot",
	"blitz"
}
local craftingAbilities = {
	"apprentice synthesis",
	"expert synthesis",
	"master synthesis",
	"artisan synthesis",
	"smither's synthesis",
	"apprentice shine",
	"expert shine",
	"master shine",
	"artisan shine",
	"carpenter's shine",
	"apprentice touch",
	"expert touch",
	"master touch",
	"artisan touch",
	"precision touch",
	"apprentice mend",
	"expert mend",
	"master mend",
	"artisan mend",
	"focused mend",
	"new tools",
	"steady hand",
	"firm grip",
	"touch of salt"
}
local tmp = {}

for id, spell in pairs(g_spells.spells) do
	tmp[id] = spell
	tmp[spell.name:lower()] = spell
end

for archetype, archetypeData in pairs(ARCHETYPES_DATA) do
	for _, skill in ipairs(archetypeData.skills) do
		local spell = tmp[skill.name:lower()]

		if spell then
			spell.points = skill.cost
		end
	end
end

g_spells.spells = tmp
tmp = nil

function g_spells:getSpell(spellIdOrName)
	local spell = self.spells[spellIdOrName]

	if spell then
		return spell, spellIdOrName
	elseif self.potions[spellIdOrName] then
		return self.potions[spellIdOrName], spellIdOrName
	elseif table.find(craftingAbilities, spellIdOrName, true) then
		return self.crafting[spellIdOrName], spellIdOrName
	elseif self.descriptions[spellIdOrName] then
		return self.descriptions[spellIdOrName], spellIdOrName
	end
end

function g_spells:isPotionAbility(id)
	if not id then
		return false
	end

	return self.potions[id] ~= nil
end

function g_spells:isCraftingAbility(name)
	return self.crafting[name] ~= nil
end

function g_spells:isFishingAbility(name)
	local fishing = modules.game_abilitybar.AbilityBar.assets[AbilityBarCategoryFishing]

	for _, abilityName in pairs(fishing) do
		if name:lower() == abilityName:lower() then
			return true
		end
	end

	return false
end

function g_spells:isShipAbility(name)
	local ship = modules.game_abilitybar.AbilityBar.assets[AbilityBarCategoryShip]

	for _, abilityName in pairs(ship) do
		if name:lower() == abilityName:lower() then
			return true
		end
	end

	return false
end

function g_spells:canCastSpell(spellIdOrName, isFreeRecast)
	local spell = self.spells[spellIdOrName]

	if spell then
		if g_clock.millis() - (spell.lastPositiveCheck or 0) < g_game.getPing() then
			return false
		end

		local player = g_game.getLocalPlayer()

		if not player then
			return false
		end

		if spell.archetype ~= 0 and not table.find(player:getActiveArchetypes(), spell.archetype) then
			return false
		end

		if isFreeRecast then
			return true
		end

		if spell.needTarget and spell.aggressive then
			local target = g_game.getAttackingCreature()

			if not target then
				GameNotification:displayScreenMessage("I need a target!")

				return false
			elseif spell.range > 0 and target and not Position.isInRange(target:getPosition(), player:getPosition(), spell.range, spell.range) then
				return false
			end
		elseif spell.needTarget and not spell.aggressive then
			local target = g_game.getHealingCreature()

			if not target and not spell.selfTarget then
				GameNotification:displayScreenMessage("I need a target!")

				return false
			elseif spell.range > 0 and target and not Position.isInRange(target:getPosition(), player:getPosition(), spell.range, spell.range) then
				return false
			end
		end

		if spell.cost then
			if spell.cost.mana then
				local manaCost = math.floor(spell.cost.mana[1] / 100 * player:getBaseMaxMana())

				if spell.name and HEALING_ATTUNEMENT_SPELLS[spell.name:lower()] and modules.game_spelltree.GameSpellTree:hasLearnedPassive(ArchetypeHoly, "healing attunement") then
					manaCost = manaCost * 0.4
				end

				if manaCost > player:getMana() then
					GameNotification:displayScreenMessage("I need more Mana!")

					return false
				end
			elseif spell.cost.health and player:getHealth() < math.floor(spell.cost.health[1] / 100 * player:getBaseMaxHealth()) then
				return false
			end
		end

		spell.lastPositiveCheck = g_clock.millis()

		return true
	end

	return false
end

local nameToStat = {
	["Spell Power"] = StatsMagicAttackEffective,
	["Weapon Power"] = StatsPhysicalAttackEffective,
	["Healing Power"] = StatsHealingEffective,
	["Defense Power"] = StatsDefense,
	["Attack Power"] = StatsAttack,
	["Weapon Defense"] = StatsPhysicalDefenseEffective,
	["Spell Defense"] = StatsMagicDefenseEffective
}

local function replacePatternWithValues(str, pattern, values)
	local i = 0

	local function replace(s)
		i = i + 1

		return values[i]
	end

	return (string.gsub(str, pattern, replace))
end

function g_spells:getSpellDescription(spellIdOrName, spellTier)
	local spell = self:getSpell(spellIdOrName)
	local player = g_game.getLocalPlayer()

	if spell and player then
		local details = g_keyboard.isShiftPressed()
		local entry = self.descriptions[spell.name and spell.name:lower() or spellIdOrName]

		if not entry then
			return nil
		end

		local locale = g_settings.get("locale")

		if locale ~= "en-GB" and entry.translation then
			local translation = entry.translation[locale]

			if translation then
				if translation.format then
					entry.format = translation.format
				end

				if translation.tier_values then
					entry.tier_values = translation.tier_values
				end

				if translation.tier_details then
					entry.tier_details = translation.tier_details
				end
			end
		end

		local str = string.sub(entry.format, 1, #entry.format)

		if entry.tier_values then
			local tierValues = spellTier and entry.tier_values[spellTier] or entry.tier_values[1]
			local tierPattern = "%%tv"

			str = replacePatternWithValues(str, tierPattern, tierValues)
		end

		local stats = {}
		local pattern = "%d"
		local x = string.find(str, pattern, 1, true)

		while x do
			table.insert(stats, string.sub(str, 1, x - 1))

			str = string.sub(str, x + #pattern, #str)

			local xvalue, yvalue = string.find(str, "%[(%d+%.?%d*)%]", 1)

			if xvalue then
				local value = tonumber(string.sub(str, xvalue + 1, yvalue - 1))

				if value then
					local xpower, ypower = string.find(str, "%(([^)]+)%)", yvalue + 1)

					if xpower then
						local power = string.sub(str, xpower + 1, ypower - 1)
						local stat = nameToStat[power]

						if stat then
							table.insert(stats, math.floor(value * player:getStats(stat)))

							if details then
								value = value * 100

								if math.floor(value) == value then
									table.insert(stats, string.format(" (%d%% ", value))
								else
									table.insert(stats, string.format(" (%.1f%% ", value))
								end
							end

							str = string.sub(str, xpower - (details and -1 or 1), #str)
						end
					end
				end
			end

			x = string.find(str, pattern, 1, true)
		end

		table.insert(stats, str)

		local description = table.concat(stats, "")

		if not entry.dontReplaceStats then
			description = description:gsub("Spell Power", details and "Spell Power" or string.char(135))
			description = description:gsub("Weapon Power", details and "Weapon Power" or string.char(134))
			description = description:gsub("Weapon Defense", details and "Weapon Defense" or string.char(130))
			description = description:gsub("Spell Defense", details and "Spell Defense" or string.char(131))
			description = description:gsub("Defense Power", details and "Defense Power" or string.char(132))
			description = description:gsub("Healing Power", details and "Healing Power" or string.char(133))
			description = description:gsub("Attack Power", details and "Attack Power" or string.char(135))
		end

		return description
	end
end

function g_spells:getSpellTierDescription(spellIdOrName, spellTier)
	local spell = self:getSpell(spellIdOrName)
	local player = g_game.getLocalPlayer()

	if spell and player then
		local entry = self.descriptions[spell.name and spell.name:lower() or spellIdOrName]

		if not entry then
			return nil
		end

		if not entry.tier_values then
			return nil
		end

		if not entry.tier_details then
			return nil
		end

		local locale = g_settings.get("locale")

		if locale ~= "en-GB" and entry.translation then
			local translation = entry.translation[locale]

			if translation then
				entry.format = translation
			end
		end

		local values = entry.tier_values
		local replaceValues = {}

		for i = 1, #values[1] do
			for _, v in ipairs(values) do
				if v[i] then
					table.insert(replaceValues, v[i])
				end
			end
		end

		local defaultColor = "#7e828b"
		local activeColor = "#ffffff"
		local index = 0
		local str = string.gsub(entry.tier_details, "(%[?%%tv]?)", function(s)
			index = index + 1

			if spellTier and index % 3 == spellTier % 3 then
				return "{" .. s .. ", " .. activeColor .. "}"
			else
				return "{" .. s .. ", " .. defaultColor .. "}"
			end
		end)

		str = string.gsub(str, "/", "{/, " .. defaultColor .. "}")
		str = replacePatternWithValues(str, "%%tv", replaceValues)
		str = string.gsub(str, "%[(%d+.?%d*)%]", function(s)
			local num = tonumber(s)

			if num then
				return num * 100 .. "%"
			end

			return s
		end)

		if string.sub(str, -2) == "}." then
			str = str .. " "
		end

		return str
	end
end

function g_spells:getGenericSpellDescription(spellIdOrName)
	local spell = self:getSpell(spellIdOrName)

	if spell then
		local details = true
		local entry = self.descriptions[spell.name and spell.name:lower() or spellIdOrName]

		if not entry then
			return nil
		end

		local locale = g_settings.get("locale")

		if locale ~= "en-GB" and entry.translation then
			local translation = entry.translation[locale]

			if translation then
				if translation.format then
					entry.format = translation.format
				end

				if translation.tier_values then
					entry.tier_values = translation.tier_values
				end

				if translation.tier_details then
					entry.tier_details = translation.tier_details
				end
			end
		end

		local str = string.sub(entry.format, 1, #entry.format)

		if entry.tier_values then
			local tierValues = entry.tier_values[1]
			local tierPattern = "%%tv"

			str = replacePatternWithValues(str, tierPattern, tierValues)
		end

		local stats = {}
		local pattern = "%d"
		local x = string.find(str, pattern, 1, true)

		while x do
			table.insert(stats, string.sub(str, 1, x - 1))

			str = string.sub(str, x + #pattern, #str)

			local xvalue, yvalue = string.find(str, "%[(%d+%.?%d*)%]", 1)

			if xvalue then
				local value = tonumber(string.sub(str, xvalue + 1, yvalue - 1))

				if value then
					local xpower, ypower = string.find(str, "%(([^)]+)%)", yvalue + 1)

					if xpower then
						local power = string.sub(str, xpower + 1, ypower - 1)
						local stat = nameToStat[power]

						if stat then
							table.insert(stats, "")

							if details then
								value = value * 100

								if math.floor(value) == value then
									table.insert(stats, string.format(" (%d%% ", value))
								else
									table.insert(stats, string.format(" (%.1f%% ", value))
								end
							end

							str = string.sub(str, xpower - (details and -1 or 1), #str)
						end
					end
				end
			end

			x = string.find(str, pattern, 1, true)
		end

		table.insert(stats, str)

		return table.concat(stats, "")
	end
end

function g_spells:getType(spellIdOrName)
	if table.find({
		"anchor",
		"unanchor",
		"repair"
	}, spellIdOrName, true) or table.find(fishingAbilities, spellIdOrName, true) or table.find(craftingAbilities, spellIdOrName, true) then
		return "Channeling"
	end

	local spell, name = self:getSpell(spellIdOrName)

	if not spell then
		return "Instant"
	end

	if spell.type == "trinket" then
		return "Trinket"
	elseif spell.type == "weapon_skill" then
		return "Weapon Skill"
	elseif spell.type == "mount_skill" then
		return "Mount Skill"
	end

	return table.find(passiveAbilities, spellIdOrName:lower()) and "Passive" or spell.channeling and "Channeling" or "Instant"
end

function g_spells:getSpellsByArchetype(archetype)
	local spells = {}

	for _, spell in pairs(self.spells) do
		if spell.archetype == archetype and self.descriptions[spell.name:lower()] then
			table.insert(spells, spell)
		end
	end

	return spells
end

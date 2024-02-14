-- chunkname: @/modules/game_profession/recipes/blacksmithing.lua

recipes = recipes or {}
recipes[ProfessionBlacksmithing] = {
	{
		durability = 4,
		description = "Used in various recipes. Symbolizes malleability and conductivity.",
		index = 1,
		category = "ingots",
		experience = 200,
		amount = 1,
		name = "copper ingot",
		clientId = 28726,
		profession = 5,
		slotName = "",
		quality = 75,
		progress = 25,
		itemId = 32158,
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28944,
				itemId = 32376,
				amount = 5,
				name = "copper ore"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. A versatile metallic ingot.",
		index = 2,
		category = "ingots",
		experience = 240,
		amount = 1,
		name = "iron ingot",
		clientId = 28723,
		profession = 5,
		slotName = "",
		quality = 150,
		progress = 150,
		itemId = 32155,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28943,
				itemId = 32375,
				amount = 5,
				name = "iron ore"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Forged from a mix of metals.",
		index = 3,
		category = "ingots",
		experience = 320,
		amount = 1,
		name = "steel ingot",
		clientId = 28724,
		profession = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 32156,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28943,
				itemId = 32375,
				amount = 5,
				name = "iron ore"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 2,
				name = "coal"
			}
		}
	},
	{
		durability = 8,
		description = "Used in various recipes. A rare blue-hued metal.",
		index = 4,
		category = "ingots",
		experience = 460,
		amount = 1,
		name = "cobalt ingot",
		clientId = 28725,
		profession = 5,
		slotName = "",
		quality = 450,
		progress = 450,
		itemId = 32157,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28942,
				itemId = 32374,
				amount = 5,
				name = "cobalt ore"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 3,
				name = "coal"
			}
		}
	},
	{
		durability = 9,
		description = "Used in various recipes. Lightweight yet sturdy, resilient and versatile.",
		index = 5,
		category = "ingots",
		experience = 640,
		amount = 1,
		name = "titanium ingot",
		clientId = 28727,
		profession = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 32159,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28947,
				itemId = 32379,
				amount = 5,
				name = "titanium ore"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 4,
				name = "coal"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 6,
		category = "weapons",
		experience = 2160,
		amount = 1,
		name = "Warden's Sword",
		clientId = 29060,
		profession = 5,
		slotName = "sword",
		quality = 100,
		progress = 100,
		itemId = 32492,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 2,
				name = "Coarse Leather"
			},
			{
				clientId = 29059,
				itemId = 32491,
				amount = 1,
				name = "Rough Sword"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 7,
		category = "weapons",
		experience = 2160,
		amount = 1,
		name = "Marauder's Axe",
		clientId = 28993,
		profession = 5,
		slotName = "axe",
		quality = 100,
		progress = 100,
		itemId = 32425,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 3,
				name = "Coarse Leather"
			},
			{
				clientId = 28992,
				itemId = 32424,
				amount = 1,
				name = "Wicked Axe"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 8,
		category = "weapons",
		experience = 2160,
		amount = 1,
		name = "Studded Flail",
		clientId = 29005,
		profession = 5,
		slotName = "club",
		quality = 100,
		progress = 100,
		itemId = 32437,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 3,
				name = "Coarse Leather"
			},
			{
				clientId = 29004,
				itemId = 32436,
				amount = 1,
				name = "Solid Mace"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 9,
		category = "weapons",
		experience = 2160,
		amount = 1,
		name = "Noble Dagger",
		clientId = 29011,
		profession = 5,
		slotName = "dagger",
		quality = 100,
		progress = 100,
		itemId = 32443,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 2,
				name = "Coarse Leather"
			},
			{
				clientId = 29010,
				itemId = 32442,
				amount = 1,
				name = "Serrated Dagger"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 11,
		category = "weapons",
		experience = 4320,
		amount = 1,
		name = "Warrior's Greataxe",
		clientId = 28980,
		profession = 5,
		slotName = "greataxe",
		quality = 100,
		progress = 100,
		itemId = 32412,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 4,
				name = "Coarse Leather"
			},
			{
				clientId = 28978,
				itemId = 32410,
				amount = 1,
				name = "Rough Greataxe"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 12,
		category = "weapons",
		experience = 4320,
		amount = 1,
		name = "Valiant Greatsword",
		clientId = 28986,
		profession = 5,
		slotName = "greatsword",
		quality = 100,
		progress = 100,
		itemId = 32418,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 6,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 6,
				name = "Coarse Leather"
			},
			{
				clientId = 28985,
				itemId = 32417,
				amount = 1,
				name = "Burnished Greatsword"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 13,
		category = "weapons",
		experience = 4320,
		amount = 1,
		name = "Crushing Hammer",
		clientId = 29017,
		profession = 5,
		slotName = "hammer",
		quality = 100,
		progress = 100,
		itemId = 32449,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 4,
				name = "Coarse Leather"
			},
			{
				clientId = 29016,
				itemId = 32448,
				amount = 1,
				name = "Shipbuilding Mallet"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 14,
		category = "weapons",
		experience = 7200,
		amount = 1,
		name = "Lawbreaker's Sword",
		clientId = 29061,
		profession = 5,
		slotName = "sword",
		quality = 100,
		progress = 200,
		itemId = 32493,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 5,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 5,
				name = "Craftman's Leather"
			},
			{
				clientId = 29060,
				itemId = 32492,
				amount = 1,
				name = "Warden's Sword"
			},
			{
				clientId = 37478,
				itemId = 40930,
				amount = 6,
				name = "Troll Fang"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 15,
		category = "weapons",
		experience = 7200,
		amount = 1,
		name = "Dread Axe",
		clientId = 28994,
		profession = 5,
		slotName = "axe",
		quality = 100,
		progress = 200,
		itemId = 32426,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 4,
				name = "Craftman's Leather"
			},
			{
				clientId = 28993,
				itemId = 32425,
				amount = 1,
				name = "Marauder's Axe"
			},
			{
				clientId = 43212,
				itemId = 46664,
				amount = 6,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 16,
		category = "weapons",
		experience = 7200,
		amount = 1,
		name = "Shieldbreaker's Flail",
		clientId = 29006,
		profession = 5,
		slotName = "club",
		quality = 100,
		progress = 200,
		itemId = 32438,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 4,
				name = "Craftman's Leather"
			},
			{
				clientId = 29005,
				itemId = 32437,
				amount = 1,
				name = "Studded Flail"
			},
			{
				clientId = 43212,
				itemId = 46664,
				amount = 6,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 17,
		category = "weapons",
		experience = 7200,
		amount = 1,
		name = "Ice Dagger",
		clientId = 29012,
		profession = 5,
		slotName = "dagger",
		quality = 100,
		progress = 200,
		itemId = 32444,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 5,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 5,
				name = "Craftman's Leather"
			},
			{
				clientId = 29011,
				itemId = 32443,
				amount = 1,
				name = "Noble Dagger"
			},
			{
				clientId = 37478,
				itemId = 40930,
				amount = 6,
				name = "Troll Fang"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 19,
		category = "weapons",
		experience = 14400,
		amount = 1,
		name = "Savage Battle Axe",
		clientId = 28981,
		profession = 5,
		slotName = "greataxe",
		quality = 100,
		progress = 200,
		itemId = 32413,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 20,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 8,
				name = "Craftman's Leather"
			},
			{
				clientId = 28980,
				itemId = 32412,
				amount = 1,
				name = "Warrior's Greataxe"
			},
			{
				clientId = 43212,
				itemId = 46664,
				amount = 12,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 20,
		category = "weapons",
		experience = 14400,
		amount = 1,
		name = "Heroic Greatsword",
		clientId = 28987,
		profession = 5,
		slotName = "greatsword",
		quality = 100,
		progress = 200,
		itemId = 32419,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 10,
				name = "Craftman's Leather"
			},
			{
				clientId = 28986,
				itemId = 32418,
				amount = 1,
				name = "Valiant Greatsword"
			},
			{
				clientId = 37478,
				itemId = 40930,
				amount = 12,
				name = "Troll Fang"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 21,
		category = "weapons",
		experience = 14400,
		amount = 1,
		name = "Punisher's Gavel",
		clientId = 29018,
		profession = 5,
		slotName = "hammer",
		quality = 100,
		progress = 200,
		itemId = 32450,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 20,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 8,
				name = "Craftman's Leather"
			},
			{
				clientId = 29017,
				itemId = 32449,
				amount = 1,
				name = "Crushing Hammer"
			},
			{
				clientId = 43212,
				itemId = 46664,
				amount = 12,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 22,
		category = "weapons",
		experience = 20000,
		amount = 1,
		name = "Guardian's Longsword",
		clientId = 29062,
		profession = 5,
		slotName = "sword",
		quality = 100,
		progress = 350,
		itemId = 32494,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 7,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 10,
				name = "Tanned Leather"
			},
			{
				clientId = 29061,
				itemId = 32493,
				amount = 1,
				name = "Lawbreaker's Sword"
			},
			{
				clientId = 38268,
				itemId = 41720,
				amount = 10,
				name = "Thin Blade"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 23,
		category = "weapons",
		experience = 20000,
		amount = 1,
		name = "Stormcarver Axe",
		clientId = 28995,
		profession = 5,
		slotName = "axe",
		quality = 100,
		progress = 350,
		itemId = 32427,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 16,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 8,
				name = "Tanned Leather"
			},
			{
				clientId = 28994,
				itemId = 32426,
				amount = 1,
				name = "Dread Axe"
			},
			{
				clientId = 38272,
				itemId = 41724,
				amount = 10,
				name = "Metallic Core"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 24,
		category = "weapons",
		experience = 20000,
		amount = 1,
		name = "Ravenguard Morningstar",
		clientId = 29007,
		profession = 5,
		slotName = "club",
		quality = 100,
		progress = 350,
		itemId = 32439,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 16,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 8,
				name = "Tanned Leather"
			},
			{
				clientId = 29006,
				itemId = 32438,
				amount = 1,
				name = "Shieldbreaker's Flail"
			},
			{
				clientId = 37483,
				itemId = 40935,
				amount = 10,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 25,
		category = "weapons",
		experience = 20000,
		amount = 1,
		name = "Heartstopper Dagger",
		clientId = 29013,
		profession = 5,
		slotName = "dagger",
		quality = 100,
		progress = 350,
		itemId = 32445,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 7,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 10,
				name = "Tanned Leather"
			},
			{
				clientId = 29012,
				itemId = 32444,
				amount = 1,
				name = "Ice Dagger"
			},
			{
				clientId = 38265,
				itemId = 41717,
				amount = 10,
				name = "Cunning Handle"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 27,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Hangman's Greataxe",
		clientId = 28982,
		profession = 5,
		slotName = "greataxe",
		quality = 100,
		progress = 350,
		itemId = 32414,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 25,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 17,
				name = "Tanned Leather"
			},
			{
				clientId = 28981,
				itemId = 32413,
				amount = 1,
				name = "Savage Battle Axe"
			},
			{
				clientId = 38272,
				itemId = 41724,
				amount = 20,
				name = "Metallic Core"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 28,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Bonebiter Greatsword",
		clientId = 28988,
		profession = 5,
		slotName = "greatsword",
		quality = 100,
		progress = 350,
		itemId = 32420,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 12,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 20,
				name = "Tanned Leather"
			},
			{
				clientId = 28987,
				itemId = 32419,
				amount = 1,
				name = "Heroic Greatsword"
			},
			{
				clientId = 38268,
				itemId = 41720,
				amount = 20,
				name = "Thin Blade"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 29,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Lawgiver's Warhammer",
		clientId = 29019,
		profession = 5,
		slotName = "hammer",
		quality = 100,
		progress = 350,
		itemId = 32451,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 25,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 17,
				name = "Tanned Leather"
			},
			{
				clientId = 29018,
				itemId = 32450,
				amount = 1,
				name = "Punisher's Gavel"
			},
			{
				clientId = 37483,
				itemId = 40935,
				amount = 20,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 30,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Crusader's Longsword",
		clientId = 29063,
		profession = 5,
		slotName = "sword",
		quality = 100,
		progress = 525,
		itemId = 32495,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 10,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 15,
				name = "Merchant's Leather"
			},
			{
				clientId = 29062,
				itemId = 32494,
				amount = 1,
				name = "Guardian's Longsword"
			},
			{
				clientId = 40265,
				itemId = 43717,
				amount = 12,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 31,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Hellblade Axe",
		clientId = 28996,
		profession = 5,
		slotName = "axe",
		quality = 100,
		progress = 525,
		itemId = 32428,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 30,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 11,
				name = "Merchant's Leather"
			},
			{
				clientId = 28995,
				itemId = 32427,
				amount = 1,
				name = "Stormcarver Axe"
			},
			{
				clientId = 40268,
				itemId = 43720,
				amount = 12,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 32,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Enforcer's Mace",
		clientId = 29008,
		profession = 5,
		slotName = "club",
		quality = 100,
		progress = 525,
		itemId = 32440,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 30,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 11,
				name = "Merchant's Leather"
			},
			{
				clientId = 29007,
				itemId = 32439,
				amount = 1,
				name = "Ravenguard Morningstar"
			},
			{
				clientId = 40274,
				itemId = 43726,
				amount = 12,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 33,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Assassin's Dagger",
		clientId = 29014,
		profession = 5,
		slotName = "dagger",
		quality = 100,
		progress = 525,
		itemId = 32446,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 10,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 15,
				name = "Merchant's Leather"
			},
			{
				clientId = 29013,
				itemId = 32445,
				amount = 1,
				name = "Heartstopper Dagger"
			},
			{
				clientId = 40280,
				itemId = 43732,
				amount = 12,
				name = "Twisted Blades"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 35,
		category = "weapons",
		experience = 80000,
		amount = 1,
		name = "Orcish Battle Axe",
		clientId = 28983,
		profession = 5,
		slotName = "greataxe",
		quality = 100,
		progress = 525,
		itemId = 32415,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 60,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 22,
				name = "Merchant's Leather"
			},
			{
				clientId = 28982,
				itemId = 32414,
				amount = 1,
				name = "Hangman's Greataxe"
			},
			{
				clientId = 40268,
				itemId = 43720,
				amount = 24,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 36,
		category = "weapons",
		experience = 80000,
		amount = 1,
		name = "Samurai's Daikatana",
		clientId = 28989,
		profession = 5,
		slotName = "greatsword",
		quality = 100,
		progress = 525,
		itemId = 32421,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 30,
				name = "Merchant's Leather"
			},
			{
				clientId = 28988,
				itemId = 32420,
				amount = 1,
				name = "Bonebiter Greatsword"
			},
			{
				clientId = 40265,
				itemId = 43717,
				amount = 24,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 37,
		category = "weapons",
		experience = 80000,
		amount = 1,
		name = "Dwarven Warhammer",
		clientId = 29020,
		profession = 5,
		slotName = "hammer",
		quality = 100,
		progress = 525,
		itemId = 32452,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 60,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 22,
				name = "Merchant's Leather"
			},
			{
				clientId = 29019,
				itemId = 32451,
				amount = 1,
				name = "Lawgiver's Warhammer"
			},
			{
				clientId = 40274,
				itemId = 43726,
				amount = 24,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 38,
		category = "armors",
		experience = 1200,
		amount = 1,
		name = "Crescent Armor",
		clientId = 28687,
		profession = 5,
		slotName = "plate armor",
		quality = 100,
		progress = 100,
		itemId = 32119,
		tier = 2,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			},
			{
				clientId = 28678,
				itemId = 32110,
				amount = 1,
				name = "Pliant Armor"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 39,
		category = "armors",
		experience = 1200,
		amount = 1,
		name = "Crescent Helmet",
		clientId = 28688,
		profession = 5,
		slotName = "plate helmet",
		quality = 100,
		progress = 100,
		itemId = 32120,
		tier = 2,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			},
			{
				clientId = 28684,
				itemId = 32116,
				amount = 1,
				name = "Pliant Helmet"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 40,
		category = "armors",
		experience = 1200,
		amount = 1,
		name = "Crescent Legs",
		clientId = 28691,
		profession = 5,
		slotName = "plate legs",
		quality = 100,
		progress = 100,
		itemId = 32123,
		tier = 2,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			},
			{
				clientId = 28685,
				itemId = 32117,
				amount = 1,
				name = "Pliant Legs"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 41,
		category = "armors",
		experience = 1200,
		amount = 1,
		name = "Crescent Boots",
		clientId = 28695,
		profession = 5,
		slotName = "plate boots",
		quality = 100,
		progress = 100,
		itemId = 32127,
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			},
			{
				clientId = 28681,
				itemId = 32113,
				amount = 1,
				name = "Pliant Boots"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 42,
		category = "armors",
		experience = 6000,
		amount = 1,
		name = "Harbinger Armor",
		clientId = 28696,
		profession = 5,
		slotName = "plate armor",
		quality = 100,
		progress = 200,
		itemId = 32128,
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 3,
				name = "Craftman's Leather"
			},
			{
				clientId = 28687,
				itemId = 32119,
				amount = 1,
				name = "Crescent Armor"
			},
			{
				clientId = 37479,
				itemId = 40931,
				amount = 3,
				name = "Shell Fragment"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 43,
		category = "armors",
		experience = 6000,
		amount = 1,
		name = "Harbinger Helmet",
		clientId = 28702,
		profession = 5,
		slotName = "plate helmet",
		quality = 100,
		progress = 200,
		itemId = 32134,
		tier = 3,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 3,
				name = "Craftman's Leather"
			},
			{
				clientId = 28688,
				itemId = 32120,
				amount = 1,
				name = "Crescent Helmet"
			},
			{
				clientId = 37479,
				itemId = 40931,
				amount = 3,
				name = "Shell Fragment"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 44,
		category = "armors",
		experience = 6000,
		amount = 1,
		name = "Harbinger Legs",
		clientId = 28703,
		profession = 5,
		slotName = "plate legs",
		quality = 100,
		progress = 200,
		itemId = 32135,
		tier = 3,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 3,
				name = "Craftman's Leather"
			},
			{
				clientId = 28691,
				itemId = 32123,
				amount = 1,
				name = "Crescent Legs"
			},
			{
				clientId = 37479,
				itemId = 40931,
				amount = 3,
				name = "Shell Fragment"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 45,
		category = "armors",
		experience = 6000,
		amount = 1,
		name = "Harbinger Boots",
		clientId = 28699,
		profession = 5,
		slotName = "plate boots",
		quality = 100,
		progress = 200,
		itemId = 32131,
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 3,
				name = "Craftman's Leather"
			},
			{
				clientId = 28695,
				itemId = 32127,
				amount = 1,
				name = "Crescent Boots"
			},
			{
				clientId = 37479,
				itemId = 40931,
				amount = 3,
				name = "Shell Fragment"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 46,
		category = "armors",
		experience = 11300,
		amount = 1,
		name = "Enforcer Armor",
		clientId = 28705,
		profession = 5,
		slotName = "plate armor",
		quality = 100,
		progress = 350,
		itemId = 32137,
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 18,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 3,
				name = "Tanned Leather"
			},
			{
				clientId = 28696,
				itemId = 32128,
				amount = 1,
				name = "Harbinger Armor"
			},
			{
				clientId = 38267,
				itemId = 41719,
				amount = 5,
				name = "Internal Padding"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 47,
		category = "armors",
		experience = 11300,
		amount = 1,
		name = "Enforcer Helmet",
		clientId = 28711,
		profession = 5,
		slotName = "plate helmet",
		quality = 100,
		progress = 350,
		itemId = 32143,
		tier = 4,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 18,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 3,
				name = "Tanned Leather"
			},
			{
				clientId = 28702,
				itemId = 32134,
				amount = 1,
				name = "Harbinger Helmet"
			},
			{
				clientId = 38267,
				itemId = 41719,
				amount = 5,
				name = "Internal Padding"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 48,
		category = "armors",
		experience = 11300,
		amount = 1,
		name = "Enforcer Legs",
		clientId = 28712,
		profession = 5,
		slotName = "plate legs",
		quality = 100,
		progress = 350,
		itemId = 32144,
		tier = 4,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 18,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 3,
				name = "Tanned Leather"
			},
			{
				clientId = 28703,
				itemId = 32135,
				amount = 1,
				name = "Harbinger Legs"
			},
			{
				clientId = 38267,
				itemId = 41719,
				amount = 5,
				name = "Internal Padding"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 49,
		category = "armors",
		experience = 11300,
		amount = 1,
		name = "Enforcer Boots",
		clientId = 28708,
		profession = 5,
		slotName = "plate boots",
		quality = 100,
		progress = 350,
		itemId = 32140,
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 18,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 3,
				name = "Tanned Leather"
			},
			{
				clientId = 28699,
				itemId = 32131,
				amount = 1,
				name = "Harbinger Boots"
			},
			{
				clientId = 38267,
				itemId = 41719,
				amount = 5,
				name = "Internal Padding"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 50,
		category = "armors",
		experience = 24000,
		amount = 1,
		name = "Protector's Armor",
		clientId = 28714,
		profession = 5,
		slotName = "plate armor",
		quality = 100,
		progress = 525,
		itemId = 32146,
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 26,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 5,
				name = "Merchant's Leather"
			},
			{
				clientId = 28705,
				itemId = 32137,
				amount = 1,
				name = "Enforcer Armor"
			},
			{
				clientId = 37507,
				itemId = 40959,
				amount = 6,
				name = "Ancient Ingot"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 51,
		category = "armors",
		experience = 24000,
		amount = 1,
		name = "Protector's Helmet",
		clientId = 28720,
		profession = 5,
		slotName = "plate helmet",
		quality = 100,
		progress = 525,
		itemId = 32152,
		tier = 5,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 26,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 5,
				name = "Merchant's Leather"
			},
			{
				clientId = 28711,
				itemId = 32143,
				amount = 1,
				name = "Enforcer Helmet"
			},
			{
				clientId = 37507,
				itemId = 40959,
				amount = 6,
				name = "Ancient Ingot"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 52,
		category = "armors",
		experience = 24000,
		amount = 1,
		name = "Protector's Legs",
		clientId = 28721,
		profession = 5,
		slotName = "plate legs",
		quality = 100,
		progress = 525,
		itemId = 32153,
		tier = 5,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 26,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 5,
				name = "Merchant's Leather"
			},
			{
				clientId = 28712,
				itemId = 32144,
				amount = 1,
				name = "Enforcer Legs"
			},
			{
				clientId = 37507,
				itemId = 40959,
				amount = 6,
				name = "Ancient Ingot"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 53,
		category = "armors",
		experience = 24000,
		amount = 1,
		name = "Protector's Boots",
		clientId = 28717,
		profession = 5,
		slotName = "plate boots",
		quality = 100,
		progress = 525,
		itemId = 32149,
		tier = 5,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 26,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 5,
				name = "Merchant's Leather"
			},
			{
				clientId = 28708,
				itemId = 32140,
				amount = 1,
				name = "Enforcer Boots"
			},
			{
				clientId = 37507,
				itemId = 40959,
				amount = 6,
				name = "Ancient Ingot"
			}
		}
	},
	{
		durability = 4,
		index = 54,
		description = "Increases Attack Power of your equipped weapon by {1} for 30 minutes. This effect is doubled for two-handed weapons.",
		experience = 180,
		name = "whetstone",
		amount = 1,
		tier = -1,
		formatDescription = "quality",
		category = "whetstones",
		profession = 5,
		clientId = 28426,
		slotName = "",
		quality = 50,
		progress = 75,
		itemId = 31858,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 3,
				name = "stone"
			}
		}
	},
	{
		durability = 6,
		index = 55,
		description = "Increases Attack Power of your equipped weapon by {3} for 30 minutes. This effect is doubled for two-handed weapons.",
		experience = 480,
		name = "coarse whetstone",
		amount = 1,
		tier = -1,
		formatDescription = "quality",
		category = "whetstones",
		profession = 5,
		clientId = 28427,
		slotName = "",
		quality = 150,
		progress = 175,
		itemId = 31859,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 6,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 1,
				name = "coal"
			}
		}
	},
	{
		durability = 7,
		index = 56,
		description = "Increases Attack Power of your equipped weapon by {5} for 30 minutes. This effect is doubled for two-handed weapons.",
		experience = 800,
		name = "Heavy Whetstone",
		amount = 1,
		tier = -1,
		formatDescription = "quality",
		category = "whetstones",
		profession = 5,
		clientId = 35437,
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 38869,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 10,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 2,
				name = "coal"
			}
		}
	},
	{
		durability = 8,
		index = 57,
		description = "Increases Attack Power of your equipped weapon by {7} for 30 minutes. This effect is doubled for two-handed weapons.",
		experience = 1200,
		name = "Solid Whetstone",
		amount = 1,
		tier = -1,
		formatDescription = "quality",
		category = "whetstones",
		profession = 5,
		clientId = 35438,
		slotName = "",
		quality = 325,
		progress = 350,
		itemId = 38870,
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 15,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 3,
				name = "coal"
			}
		}
	},
	{
		durability = 9,
		index = 58,
		description = "Increases Attack Power of your equipped weapon by {10} for 30 minutes. This effect is doubled for two-handed weapons.",
		experience = 2080,
		name = "dense whetstone",
		amount = 1,
		tier = -1,
		specialization = "Craftsman",
		formatDescription = "quality",
		category = "whetstones",
		profession = 5,
		clientId = 28428,
		slotName = "",
		quality = 450,
		progress = 500,
		itemId = 31860,
		level = {
			single = 68,
			mass = 73
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 25,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 5,
				name = "coal"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 59,
		category = "fishing",
		experience = 800,
		amount = 1,
		name = "copper fishing hook",
		clientId = 28888,
		profession = 5,
		slotName = "fishing hook",
		quality = 0,
		progress = 100,
		itemId = 32320,
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 60,
		category = "fishing",
		experience = 1680,
		amount = 1,
		name = "complex fishing hook",
		clientId = 28886,
		profession = 5,
		slotName = "fishing hook",
		quality = 0,
		progress = 200,
		itemId = 32318,
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 7,
				name = "iron ingot"
			},
			{
				clientId = 28888,
				itemId = 32320,
				amount = 1,
				name = "copper fishing hook"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 61,
		category = "fishing",
		experience = 4800,
		amount = 1,
		name = "steel fishing hook",
		clientId = 28884,
		profession = 5,
		slotName = "fishing hook",
		quality = 0,
		progress = 350,
		itemId = 32316,
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 15,
				name = "steel ingot"
			},
			{
				clientId = 28886,
				itemId = 32318,
				amount = 1,
				name = "complex fishing hook"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 62,
		category = "fishing",
		experience = 11500,
		amount = 1,
		name = "cobalt fishing hook",
		clientId = 28887,
		profession = 5,
		slotName = "fishing hook",
		quality = 0,
		progress = 475,
		itemId = 32319,
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 25,
				name = "cobalt ingot"
			},
			{
				clientId = 28884,
				itemId = 32316,
				amount = 1,
				name = "steel fishing hook"
			}
		}
	},
	{
		durability = 9,
		index = 63,
		description = "",
		experience = 38400,
		name = "titanium fishing hook",
		amount = 1,
		specialization = "Craftsman",
		tier = 5,
		category = "fishing",
		profession = 5,
		clientId = 28885,
		slotName = "fishing hook",
		quality = 0,
		progress = 600,
		itemId = 32317,
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 60,
				name = "titanium ingot"
			},
			{
				clientId = 28887,
				itemId = 32319,
				amount = 1,
				name = "cobalt fishing hook"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 64,
		category = "weapons",
		experience = 4320,
		amount = 1,
		name = "Swashbuckler's Blade",
		clientId = 37108,
		profession = 5,
		slotName = "light blade",
		quality = 100,
		progress = 100,
		itemId = 40560,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 6,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 6,
				name = "Coarse Leather"
			},
			{
				clientId = 37107,
				itemId = 40559,
				amount = 1,
				name = "Skirmisher's Blade"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 65,
		category = "weapons",
		experience = 14400,
		amount = 1,
		name = "Serpentine Blade",
		clientId = 37109,
		profession = 5,
		slotName = "light blade",
		quality = 100,
		progress = 200,
		itemId = 40561,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 10,
				name = "Craftman's Leather"
			},
			{
				clientId = 37108,
				itemId = 40560,
				amount = 1,
				name = "Swashbuckler's Blade"
			},
			{
				clientId = 37478,
				itemId = 40930,
				amount = 12,
				name = "Troll Fang"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 66,
		category = "weapons",
		experience = 40000,
		amount = 1,
		name = "Duelist's Companion",
		clientId = 37110,
		profession = 5,
		slotName = "light blade",
		quality = 100,
		progress = 350,
		itemId = 40562,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 12,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 20,
				name = "Tanned Leather"
			},
			{
				clientId = 37109,
				itemId = 40561,
				amount = 1,
				name = "Serpentine Blade"
			},
			{
				clientId = 38265,
				itemId = 41717,
				amount = 20,
				name = "Cunning Handle"
			}
		}
	},
	{
		durability = 8,
		description = "",
		index = 67,
		category = "weapons",
		experience = 80000,
		amount = 1,
		name = "Ornamented Saber",
		clientId = 37111,
		profession = 5,
		slotName = "light blade",
		quality = 100,
		progress = 525,
		itemId = 40563,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 30,
				name = "Merchant's Leather"
			},
			{
				clientId = 37110,
				itemId = 40562,
				amount = 1,
				name = "Duelist's Companion"
			},
			{
				clientId = 40280,
				itemId = 43732,
				amount = 24,
				name = "Twisted Blades"
			}
		}
	},
	{
		durability = 12,
		index = 68,
		description = "",
		experience = 62000,
		name = "Champion's Longsword",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37158,
		slotName = "sword",
		quality = 100,
		progress = 700,
		itemId = 40610,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 12,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 18,
				name = "Artisan Leather"
			},
			{
				clientId = 29063,
				itemId = 32495,
				amount = 1,
				name = "Crusader's Longsword"
			},
			{
				clientId = 40267,
				itemId = 43719,
				amount = 16,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		durability = 12,
		index = 69,
		description = "",
		experience = 62000,
		name = "Dragonbane Axe",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37154,
		slotName = "axe",
		quality = 100,
		progress = 700,
		itemId = 40606,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 30,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 14,
				name = "Artisan Leather"
			},
			{
				clientId = 28996,
				itemId = 32428,
				amount = 1,
				name = "Hellblade Axe"
			},
			{
				clientId = 40278,
				itemId = 43730,
				amount = 16,
				name = "Sturdy Joint"
			}
		}
	},
	{
		durability = 12,
		index = 70,
		description = "",
		experience = 62000,
		name = "Skullbasher Mace",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37156,
		slotName = "club",
		quality = 100,
		progress = 700,
		itemId = 40608,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 30,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 14,
				name = "Artisan Leather"
			},
			{
				clientId = 29008,
				itemId = 32440,
				amount = 1,
				name = "Enforcer's Mace"
			},
			{
				clientId = 40275,
				itemId = 43727,
				amount = 16,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		durability = 12,
		index = 71,
		description = "",
		experience = 62000,
		name = "Ritual Dagger",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37151,
		slotName = "dagger",
		quality = 100,
		progress = 700,
		itemId = 40603,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 12,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 18,
				name = "Artisan Leather"
			},
			{
				clientId = 29014,
				itemId = 32446,
				amount = 1,
				name = "Assassin's Dagger"
			},
			{
				clientId = 40277,
				itemId = 43729,
				amount = 16,
				name = "Sharp Edges"
			}
		}
	},
	{
		durability = 12,
		index = 73,
		description = "",
		experience = 124000,
		name = "Scarlet Thorn",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37112,
		slotName = "light blade",
		quality = 100,
		progress = 700,
		itemId = 40564,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 24,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 36,
				name = "Artisan Leather"
			},
			{
				clientId = 37111,
				itemId = 40563,
				amount = 1,
				name = "Ornamented Saber"
			},
			{
				clientId = 40277,
				itemId = 43729,
				amount = 32,
				name = "Sharp Edges"
			}
		}
	},
	{
		durability = 12,
		index = 74,
		description = "",
		experience = 124000,
		name = "Nocturnal Greataxe",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37148,
		slotName = "greataxe",
		quality = 100,
		progress = 700,
		itemId = 40600,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 60,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 28,
				name = "Artisan Leather"
			},
			{
				clientId = 28983,
				itemId = 32415,
				amount = 1,
				name = "Orcish Battle Axe"
			},
			{
				clientId = 40278,
				itemId = 43730,
				amount = 32,
				name = "Sturdy Joint"
			}
		}
	},
	{
		durability = 12,
		index = 75,
		description = "",
		experience = 124000,
		name = "Magister's Greatsword",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37153,
		slotName = "greatsword",
		quality = 100,
		progress = 700,
		itemId = 40605,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 24,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 36,
				name = "Artisan Leather"
			},
			{
				clientId = 28989,
				itemId = 32421,
				amount = 1,
				name = "Samurai's Daikatana"
			},
			{
				clientId = 40267,
				itemId = 43719,
				amount = 32,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		durability = 12,
		index = 76,
		description = "",
		experience = 124000,
		name = "Soulwarden's Hammer",
		amount = 1,
		specialization = "Dwarven Weaponsmith",
		tier = 6,
		category = "weapons",
		profession = 5,
		clientId = 37152,
		slotName = "hammer",
		quality = 100,
		progress = 700,
		itemId = 40604,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 60,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 28,
				name = "Artisan Leather"
			},
			{
				clientId = 29020,
				itemId = 32452,
				amount = 1,
				name = "Dwarven Warhammer"
			},
			{
				clientId = 40275,
				itemId = 43727,
				amount = 32,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		durability = 12,
		index = 77,
		description = "",
		experience = 33000,
		name = "Chivalry Armor",
		amount = 1,
		specialization = "Dwarven Armorsmith",
		tier = 6,
		category = "armors",
		profession = 5,
		clientId = 37143,
		slotName = "plate armor",
		quality = 100,
		progress = 700,
		itemId = 40595,
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 23,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 6,
				name = "Artisan Leather"
			},
			{
				clientId = 28714,
				itemId = 32146,
				amount = 1,
				name = "Protector's Armor"
			},
			{
				clientId = 40276,
				itemId = 43728,
				amount = 8,
				name = "Reflective Husk"
			}
		}
	},
	{
		durability = 12,
		index = 78,
		description = "",
		experience = 33000,
		name = "Chivalry Helmet",
		amount = 1,
		specialization = "Dwarven Armorsmith",
		tier = 6,
		category = "armors",
		profession = 5,
		clientId = 37146,
		slotName = "plate helmet",
		quality = 100,
		progress = 700,
		itemId = 40598,
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 23,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 6,
				name = "Artisan Leather"
			},
			{
				clientId = 28720,
				itemId = 32152,
				amount = 1,
				name = "Protector's Helmet"
			},
			{
				clientId = 40276,
				itemId = 43728,
				amount = 8,
				name = "Reflective Husk"
			}
		}
	},
	{
		durability = 12,
		index = 79,
		description = "",
		experience = 33000,
		name = "Chivalry Legs",
		amount = 1,
		specialization = "Dwarven Armorsmith",
		tier = 6,
		category = "armors",
		profession = 5,
		clientId = 37145,
		slotName = "plate legs",
		quality = 100,
		progress = 700,
		itemId = 40597,
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 23,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 6,
				name = "Artisan Leather"
			},
			{
				clientId = 28721,
				itemId = 32153,
				amount = 1,
				name = "Protector's Legs"
			},
			{
				clientId = 40276,
				itemId = 43728,
				amount = 8,
				name = "Reflective Husk"
			}
		}
	},
	{
		durability = 12,
		index = 80,
		description = "",
		experience = 33000,
		name = "Chivalry Boots",
		amount = 1,
		specialization = "Dwarven Armorsmith",
		tier = 6,
		category = "armors",
		profession = 5,
		clientId = 37144,
		slotName = "plate boots",
		quality = 100,
		progress = 700,
		itemId = 40596,
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 23,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 6,
				name = "Artisan Leather"
			},
			{
				clientId = 28717,
				itemId = 32149,
				amount = 1,
				name = "Protector's Boots"
			},
			{
				clientId = 40276,
				itemId = 43728,
				amount = 8,
				name = "Reflective Husk"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 81,
		category = "Housing Craft",
		experience = 54400,
		amount = 1,
		name = "Forging Tools",
		clientId = 37234,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40686,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 100,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 50,
				name = "steel ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 20,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 10,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 8,
		description = "Used in housing upgrades.",
		index = 82,
		category = "Housing Craft",
		experience = 80000,
		amount = 1,
		name = "Superior Forging Tools",
		clientId = 37285,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40737,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 80,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 70,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 30,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 15,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 83,
		category = "Housing Craft",
		experience = 116000,
		amount = 1,
		name = "Artisan Forging Tools",
		clientId = 37220,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40672,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 80,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 70,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 40,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 25,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 84,
		category = "Housing Craft",
		experience = 30400,
		amount = 1,
		name = "Woodwork Tools",
		clientId = 37289,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40741,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 80,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 35,
				name = "steel ingot"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 85,
		category = "Housing Craft",
		experience = 72000,
		amount = 1,
		name = "Improved Woodwork Tools",
		clientId = 37236,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40688,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 100,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 40,
				name = "titanium ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 86,
		category = "Housing Craft",
		experience = 28000,
		amount = 1,
		name = "Anvil",
		clientId = 37217,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40669,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 70,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 35,
				name = "steel ingot"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 87,
		category = "Housing Craft",
		experience = 66000,
		amount = 1,
		name = "Forgemaster Anvil",
		clientId = 37233,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40685,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 80,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 45,
				name = "titanium ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 88,
		category = "Housing Craft",
		experience = 10000,
		amount = 1,
		name = "Furnace",
		clientId = 37235,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40687,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 20,
				name = "steel ingot"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 5,
				name = "iron bar"
			},
			{
				clientId = 28946,
				itemId = 32378,
				amount = 20,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 10,
				name = "coal"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 89,
		category = "Housing Craft",
		experience = 28800,
		amount = 1,
		name = "Forge",
		clientId = 37232,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40684,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 40,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 10,
				name = "titanium ingot"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 5,
				name = "iron bar"
			},
			{
				clientId = 28946,
				itemId = 32378,
				amount = 20,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 10,
				name = "coal"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 90,
		category = "Housing Craft",
		experience = 24000,
		amount = 1,
		name = "Stove",
		clientId = 37281,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40733,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 50,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 20,
				name = "steel ingot"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 15,
				name = "iron bar"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 10,
				name = "coal"
			},
			{
				clientId = 28946,
				itemId = 32378,
				amount = 10,
				name = "stone"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. The backbone of many structures in Ravendawn.",
		index = 91,
		category = "Misc",
		experience = 6000,
		amount = 1,
		name = "reinforced plate",
		clientId = 28740,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 32172,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 15,
				name = "iron ingot"
			},
			{
				clientId = 28743,
				itemId = 32175,
				amount = 15,
				name = "refined plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 15,
				name = "Bolt"
			}
		}
	},
	{
		durability = 8,
		description = "Used in housing upgrades.",
		index = 92,
		category = "Housing Craft",
		experience = 117000,
		amount = 1,
		name = "Superior Stove",
		clientId = 37286,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40738,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 100,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 50,
				name = "cobalt ingot"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 30,
				name = "iron bar"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 20,
				name = "coal"
			},
			{
				clientId = 45506,
				itemId = 48958,
				amount = 35,
				name = "Sturdy Plank"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 93,
		category = "Housing Craft",
		experience = 163000,
		amount = 1,
		name = "Artisan Stove",
		clientId = 37221,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40673,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 100,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 80,
				name = "titanium ingot"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 40,
				name = "iron bar"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 30,
				name = "coal"
			},
			{
				clientId = 45506,
				itemId = 48958,
				amount = 35,
				name = "Sturdy Plank"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 94,
		category = "Ship Module",
		experience = 88000,
		amount = 1,
		name = "Minor Shielding Kit",
		clientId = 37260,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40712,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 220,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 110,
				name = "steel ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 95,
		category = "Ship Module",
		experience = 332000,
		amount = 1,
		name = "Sturdy Shielding Kit",
		clientId = 37282,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 40734,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 600,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 300,
				name = "cobalt ingot"
			}
		}
	},
	{
		durability = 12,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 96,
		category = "Ship Module",
		experience = 705600,
		amount = 1,
		name = "Reinforced Shielding Kit",
		clientId = 37263,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40715,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 900,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 450,
				name = "titanium ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 97,
		category = "Ship Module",
		experience = 32800,
		amount = 1,
		name = "Small Cannon Kit",
		clientId = 37266,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40718,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 40,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 15,
				name = "steel ingot"
			},
			{
				clientId = 28745,
				itemId = 32177,
				amount = 10,
				name = "treated plank"
			},
			{
				clientId = 37229,
				itemId = 40681,
				amount = 2,
				name = "Common Wheel"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 98,
		category = "Ship Module",
		experience = 65840,
		amount = 1,
		name = "Simple Ship Emblems Kit",
		clientId = 37268,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 40720,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 220,
				name = "iron ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 50,
				name = "coal"
			},
			{
				clientId = 37229,
				itemId = 40681,
				amount = 2,
				name = "Common Wheel"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 99,
		category = "Ship Module",
		experience = 134400,
		amount = 1,
		name = "Compound Ship Emblems Kit",
		clientId = 37265,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 40717,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 220,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 110,
				name = "cobalt ingot"
			},
			{
				clientId = 40492,
				itemId = 43944,
				amount = 2,
				name = "Swift Wheel"
			}
		}
	},
	{
		durability = 12,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 100,
		category = "Ship Module",
		experience = 228000,
		amount = 1,
		name = "Complex Ship Emblems Kit",
		clientId = 37218,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40670,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 220,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 110,
				name = "titanium ingot"
			},
			{
				clientId = 37264,
				itemId = 40716,
				amount = 2,
				name = "Reinforced Wheel"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		index = 101,
		category = "Ship Module",
		experience = 37600,
		amount = 1,
		name = "Basic Water Pumps Kit",
		clientId = 37223,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40675,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 80,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 50,
				name = "steel ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 20,
				name = "coal"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		index = 102,
		category = "Ship Module",
		experience = 56000,
		amount = 1,
		name = "Enhanced Water Pumps Kit",
		clientId = 37230,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 40682,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 220,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 110,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 40,
				name = "coal"
			}
		}
	},
	{
		durability = 12,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		index = 103,
		category = "Ship Module",
		experience = 180000,
		amount = 1,
		name = "Pressurized Water Pumps Kit",
		clientId = 37261,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 40713,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 220,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 110,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 60,
				name = "coal"
			}
		}
	},
	{
		durability = 4,
		description = "Used in various recipes. A basic yet crucial component for construction.",
		index = 104,
		category = "Misc",
		experience = 64,
		amount = 1,
		name = "nail",
		clientId = 28734,
		profession = 5,
		slotName = "",
		quality = 75,
		progress = 50,
		itemId = 32166,
		tier = -1,
		level = {
			single = 2,
			mass = 7
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 1,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Forged with strength and versatility in mind.",
		index = 105,
		category = "Misc",
		experience = 240,
		amount = 1,
		name = "iron bar",
		clientId = 28737,
		profession = 5,
		slotName = "",
		quality = 225,
		progress = 200,
		itemId = 32169,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 1,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 106,
		category = "weapons",
		experience = 800,
		amount = 1,
		name = "Solid Mace",
		clientId = 29004,
		profession = 5,
		slotName = "club",
		quality = 100,
		progress = 50,
		itemId = 32436,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 107,
		category = "weapons",
		experience = 800,
		amount = 1,
		name = "Rough Sword",
		clientId = 29059,
		profession = 5,
		slotName = "sword",
		quality = 100,
		progress = 50,
		itemId = 32491,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 108,
		category = "weapons",
		experience = 800,
		amount = 1,
		name = "Wicked Axe",
		clientId = 28992,
		profession = 5,
		slotName = "axe",
		quality = 100,
		progress = 50,
		itemId = 32424,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 109,
		category = "weapons",
		experience = 800,
		amount = 1,
		name = "Serrated Dagger",
		clientId = 29010,
		profession = 5,
		slotName = "dagger",
		quality = 100,
		progress = 50,
		itemId = 32442,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 4,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 111,
		category = "weapons",
		experience = 1600,
		amount = 1,
		name = "Rough Greataxe",
		clientId = 28978,
		profession = 5,
		slotName = "greataxe",
		quality = 100,
		progress = 50,
		itemId = 32410,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 112,
		category = "weapons",
		experience = 1600,
		amount = 1,
		name = "Burnished Greatsword",
		clientId = 28985,
		profession = 5,
		slotName = "greatsword",
		quality = 100,
		progress = 50,
		itemId = 32417,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 113,
		category = "weapons",
		experience = 1600,
		amount = 1,
		name = "Skirmisher's Blade",
		clientId = 37107,
		profession = 5,
		slotName = "light blade",
		quality = 100,
		progress = 50,
		itemId = 40559,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 114,
		category = "weapons",
		experience = 1600,
		amount = 1,
		name = "Shipbuilding Mallet",
		clientId = 29016,
		profession = 5,
		slotName = "hammer",
		quality = 100,
		progress = 50,
		itemId = 32448,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 8,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 115,
		category = "armors",
		experience = 600,
		amount = 1,
		name = "Pliant Armor",
		clientId = 28678,
		profession = 5,
		slotName = "plate armor",
		quality = 100,
		progress = 50,
		itemId = 32110,
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 116,
		category = "armors",
		experience = 600,
		amount = 1,
		name = "Pliant Helmet",
		clientId = 28684,
		profession = 5,
		slotName = "plate helmet",
		quality = 100,
		progress = 50,
		itemId = 32116,
		tier = 1,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 117,
		category = "armors",
		experience = 600,
		amount = 1,
		name = "Pliant Legs",
		clientId = 28685,
		profession = 5,
		slotName = "plate legs",
		quality = 100,
		progress = 50,
		itemId = 32117,
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 118,
		category = "armors",
		experience = 600,
		amount = 1,
		name = "Pliant Boots",
		clientId = 28681,
		profession = 5,
		slotName = "plate boots",
		quality = 100,
		progress = 50,
		itemId = 32113,
		tier = 1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			}
		}
	},
	{
		durability = 6,
		description = "Used in various recipes. A small piece, integral in connecting larger ones.",
		index = 119,
		category = "Misc",
		experience = 80,
		amount = 1,
		name = "Bolt",
		clientId = 40282,
		profession = 5,
		slotName = "",
		quality = 225,
		progress = 200,
		itemId = 43734,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 1,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Cold, hard, and unyielding - the essence of strength.",
		index = 120,
		category = "Misc",
		experience = 215,
		amount = 1,
		name = "Steel Bar",
		clientId = 40284,
		profession = 5,
		slotName = "",
		quality = 400,
		progress = 350,
		itemId = 43736,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 2,
				name = "steel ingot"
			}
		}
	},
	{
		durability = 3,
		description = "Used in various recipes. A humble slab of metal, awaiting purpose.",
		index = 121,
		category = "Misc",
		experience = 2400,
		amount = 1,
		name = "Common Plate",
		clientId = 40283,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 50,
		itemId = 43735,
		tier = -1,
		level = {
			single = 4,
			mass = 9
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 10,
				name = "copper ingot"
			},
			{
				clientId = 28744,
				itemId = 32176,
				amount = 10,
				name = "rough plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 10,
				name = "nail"
			}
		}
	},
	{
		durability = 4,
		description = "Used in various recipes. Solid building material, ideal for constructing robust houses.",
		index = 122,
		category = "Housing Craft",
		experience = 400,
		amount = 1,
		name = "Stone Block",
		clientId = 41850,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 45302,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 20,
				name = "stone"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Massive construction material painstakingly hewn from solid stone.",
		index = 123,
		category = "Housing Craft",
		experience = 880,
		amount = 1,
		name = "Dense Block",
		clientId = 41846,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 45298,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28946,
				itemId = 32378,
				amount = 40,
				name = "stone"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 2,
				name = "coal"
			}
		}
	},
	{
		durability = 8,
		description = "Used in various recipes. Formed by skillfully combining an array of precious gems, radiating elegance.",
		index = 124,
		category = "Housing Craft",
		experience = 24000,
		amount = 1,
		name = "Royal Ornaments",
		clientId = 41849,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 450,
		itemId = 45301,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28948,
				itemId = 32380,
				amount = 1,
				name = "amethyst"
			},
			{
				clientId = 28949,
				itemId = 32381,
				amount = 1,
				name = "citrine"
			},
			{
				clientId = 28952,
				itemId = 32384,
				amount = 1,
				name = "sapphire"
			},
			{
				clientId = 28950,
				itemId = 32382,
				amount = 1,
				name = "emerald"
			},
			{
				clientId = 28951,
				itemId = 32383,
				amount = 1,
				name = "ruby"
			},
			{
				clientId = 28953,
				itemId = 32385,
				amount = 1,
				name = "topaz"
			}
		}
	},
	{
		durability = 4,
		description = "Used in housing upgrades.",
		index = 125,
		category = "Housing Craft",
		experience = 8500,
		amount = 1,
		name = "Copper Anvil",
		clientId = 42778,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 75,
		itemId = 46230,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 30,
				name = "copper ingot"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 3,
		description = "Used in housing upgrades.",
		index = 126,
		category = "Housing Craft",
		experience = 4300,
		amount = 1,
		name = "Basic Tools",
		clientId = 42784,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 50,
		itemId = 46236,
		tier = -1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 10,
				name = "copper ingot"
			},
			{
				clientId = 28744,
				itemId = 32176,
				amount = 4,
				name = "rough plank"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 7,
		description = "Together with 'Simple Saddle' can be crafted into a 'Simple Barding'.",
		index = 127,
		category = "Moa Equipment",
		experience = 4400,
		amount = 1,
		name = "Simple Headgear",
		clientId = 43238,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 46690,
		tier = -1,
		level = {
			single = 12,
			mass = 17
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 10,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 4,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 7,
		description = "Together with 'Composed Saddle' can be crafted into a 'Composed Barding'.",
		index = 128,
		category = "Moa Equipment",
		experience = 7520,
		amount = 1,
		name = "Composed Headgear",
		clientId = 43239,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 46691,
		tier = -1,
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 11,
				name = "iron ingot"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 8,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 7,
		description = "Together with 'Advanced Saddle' can be crafted into a 'Advanced Barding'.",
		index = 129,
		category = "Moa Equipment",
		experience = 13200,
		amount = 1,
		name = "Advanced Headgear",
		clientId = 43240,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 46692,
		tier = -1,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 20,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 7,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 8,
		description = "Together with 'Artisan Saddle' can be crafted into a 'Artisan Barding'.",
		index = 130,
		category = "Moa Equipment",
		experience = 40000,
		amount = 1,
		name = "Artisan Headgear",
		clientId = 43241,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 46693,
		tier = -1,
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 25,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 17,
				name = "Tanned Leather"
			}
		}
	},
	{
		durability = 9,
		description = "Together with 'Superior Saddle' can be crafted into a 'Superior Barding'.",
		index = 131,
		category = "Moa Equipment",
		experience = 52000,
		amount = 1,
		name = "Superior Headgear",
		clientId = 43242,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 650,
		itemId = 46694,
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 25,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 17,
				name = "Merchant's Leather"
			}
		}
	},
	{
		durability = 12,
		index = 132,
		description = "Together with 'War Saddle' can be crafted into a 'War Barding'.",
		experience = 172000,
		name = "War Headgear",
		amount = 1,
		specialization = "Craftsman",
		tier = -1,
		category = "Moa Equipment",
		profession = 5,
		clientId = 43243,
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46695,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 22,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 12,
				name = "Artisan Leather"
			},
			{
				clientId = 28951,
				itemId = 32383,
				amount = 10,
				name = "ruby"
			}
		}
	},
	{
		durability = 12,
		index = 133,
		description = "Together with 'Explorer Saddle' can be crafted into a 'Explorer Barding'.",
		experience = 172000,
		name = "Explorer Headgear",
		amount = 1,
		specialization = "Craftsman",
		tier = -1,
		category = "Moa Equipment",
		profession = 5,
		clientId = 43244,
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46696,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 22,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 12,
				name = "Artisan Leather"
			},
			{
				clientId = 28952,
				itemId = 32384,
				amount = 10,
				name = "sapphire"
			}
		}
	},
	{
		durability = 12,
		index = 134,
		description = "Together with 'Professional Saddle' can be crafted into a 'Professional Barding'.",
		experience = 172000,
		name = "Professional Headgear",
		amount = 1,
		specialization = "Craftsman",
		tier = -1,
		category = "Moa Equipment",
		profession = 5,
		clientId = 43245,
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46697,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				itemId = 32159,
				amount = 22,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 12,
				name = "Artisan Leather"
			},
			{
				clientId = 28953,
				itemId = 32385,
				amount = 10,
				name = "topaz"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 135,
		category = "Ship Module",
		experience = 73600,
		amount = 1,
		name = "Medium Cannon Kit",
		clientId = 43637,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 47089,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 150,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 100,
				name = "steel ingot"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 2,
				name = "Steel Bar"
			},
			{
				clientId = 37229,
				itemId = 40681,
				amount = 2,
				name = "Common Wheel"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 136,
		category = "Ship Module",
		experience = 100000,
		amount = 1,
		name = "Large Cannon Kit",
		clientId = 43636,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 650,
		itemId = 47088,
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 150,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 100,
				name = "cobalt ingot"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 2,
				name = "Steel Bar"
			},
			{
				clientId = 37229,
				itemId = 40681,
				amount = 2,
				name = "Common Wheel"
			}
		}
	},
	{
		durability = 4,
		description = "Used for housing craft.",
		index = 137,
		category = "Housing Craft",
		experience = 28000,
		amount = 1,
		name = "Weak Racks",
		clientId = 47288,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 75,
		itemId = 50741,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28723,
				itemId = 32155,
				amount = 70,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 35,
				name = "steel ingot"
			}
		}
	},
	{
		durability = 7,
		description = "Used for housing craft.",
		index = 138,
		category = "Housing Craft",
		experience = 66000,
		amount = 1,
		name = "Armory Racks",
		clientId = 47276,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 50729,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 80,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 45,
				name = "titanium ingot"
			}
		}
	},
	{
		durability = 12,
		description = "Used for housing craft.",
		index = 139,
		category = "Housing Craft",
		experience = 8500,
		amount = 1,
		name = "Reinforced Racks",
		clientId = 47281,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 50734,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28726,
				itemId = 32158,
				amount = 30,
				name = "copper ingot"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 10,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 8,
		description = "Used for housing craft.",
		index = 140,
		category = "Housing Craft",
		experience = 80000,
		amount = 1,
		name = "Gear Maintenance Tools",
		clientId = 47279,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 50732,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				itemId = 32156,
				amount = 80,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 70,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 30,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 15,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 12,
		description = "Used for housing craft.",
		index = 141,
		category = "Housing Craft",
		experience = 116000,
		amount = 1,
		name = "Thief Tools",
		clientId = 47283,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 50736,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 80,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 70,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 40,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 25,
				name = "Craftman's Leather"
			}
		}
	},
	{
		durability = 12,
		description = "Used for housing craft.",
		index = 142,
		category = "Housing Craft",
		experience = 116000,
		amount = 1,
		name = "Warmonger Tools",
		clientId = 47287,
		profession = 5,
		slotName = "",
		quality = 0,
		progress = 700,
		itemId = 50740,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				itemId = 32157,
				amount = 80,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 70,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				itemId = 32373,
				amount = 40,
				name = "coal"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 25,
				name = "Craftman's Leather"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionBlacksmithing] = {
	{
		durability = 3,
		description = "",
		index = 1,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Burnished Greatsword",
		clientId = 28985,
		profession = 5,
		slotName = "greatsword",
		quality = 50,
		progress = 50,
		itemId = 32417,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 4,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 4,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 2,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Rough Sword",
		clientId = 29059,
		profession = 5,
		slotName = "sword",
		quality = 50,
		progress = 50,
		itemId = 32491,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 2,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 2,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 3,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Wicked Axe",
		clientId = 28992,
		profession = 5,
		slotName = "axe",
		quality = 50,
		progress = 50,
		itemId = 32424,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 3,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 4,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Solid Mace",
		clientId = 29004,
		profession = 5,
		slotName = "club",
		quality = 50,
		progress = 50,
		itemId = 32436,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 3,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 5,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Serrated Dagger",
		clientId = 29010,
		profession = 5,
		slotName = "dagger",
		quality = 50,
		progress = 50,
		itemId = 32442,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 2,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 2,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 7,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Rough Greataxe",
		clientId = 28978,
		profession = 5,
		slotName = "greataxe",
		quality = 50,
		progress = 50,
		itemId = 32410,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 6,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 2,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 8,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Shipbuilding Mallet",
		clientId = 29016,
		profession = 5,
		slotName = "hammer",
		quality = 50,
		progress = 50,
		itemId = 32448,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 6,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 2,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 9,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Pliant Armor",
		clientId = 28678,
		profession = 5,
		slotName = "plate armor",
		quality = 50,
		progress = 50,
		itemId = 32110,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38878,
				amount = 1,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38879,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 10,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Pliant Helmet",
		clientId = 28684,
		profession = 5,
		slotName = "plate helmet",
		quality = 50,
		progress = 50,
		itemId = 32116,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38882,
				amount = 1,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38883,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 11,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Pliant Legs",
		clientId = 28685,
		profession = 5,
		slotName = "plate legs",
		quality = 50,
		progress = 50,
		itemId = 32117,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38886,
				amount = 1,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38887,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 12,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Pliant Boots",
		clientId = 28681,
		profession = 5,
		slotName = "plate boots",
		quality = 50,
		progress = 50,
		itemId = 32113,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38890,
				amount = 1,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38891,
				amount = 1,
				name = "Coarse Leather"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 13,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Skirmisher's Blade",
		clientId = 37107,
		profession = 5,
		slotName = "light blade",
		quality = 50,
		progress = 50,
		itemId = 40559,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				itemId = 38874,
				amount = 4,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				itemId = 38875,
				amount = 4,
				name = "Coarse Leather"
			}
		}
	}
}

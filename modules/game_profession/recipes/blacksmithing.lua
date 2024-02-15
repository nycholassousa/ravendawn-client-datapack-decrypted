-- chunkname: @/modules/game_profession/recipes/blacksmithing.lua

recipes = recipes or {}
recipes[ProfessionBlacksmithing] = {
	{
		amount = 1,
		experience = 200,
		category = "ingots",
		clientId = 28726,
		index = 1,
		durability = 4,
		name = "copper ingot",
		profession = 5,
		progress = 25,
		quality = 75,
		itemId = 32158,
		description = "Used in various recipes. Symbolizes malleability and conductivity.",
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28944,
				amount = 5,
				itemId = 32376,
				name = "copper ore"
			}
		}
	},
	{
		amount = 1,
		experience = 240,
		category = "ingots",
		clientId = 28723,
		index = 2,
		durability = 7,
		name = "iron ingot",
		profession = 5,
		progress = 150,
		quality = 150,
		itemId = 32155,
		description = "Used in various recipes. A versatile metallic ingot.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28943,
				amount = 5,
				itemId = 32375,
				name = "iron ore"
			}
		}
	},
	{
		amount = 1,
		experience = 320,
		category = "ingots",
		clientId = 28724,
		index = 3,
		durability = 7,
		name = "steel ingot",
		profession = 5,
		progress = 225,
		quality = 200,
		itemId = 32156,
		description = "Used in various recipes. Forged from a mix of metals.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28943,
				amount = 5,
				itemId = 32375,
				name = "iron ore"
			},
			{
				clientId = 28941,
				amount = 2,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 460,
		category = "ingots",
		clientId = 28725,
		index = 4,
		durability = 8,
		name = "cobalt ingot",
		profession = 5,
		progress = 450,
		quality = 450,
		itemId = 32157,
		description = "Used in various recipes. A rare blue-hued metal.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28942,
				amount = 5,
				itemId = 32374,
				name = "cobalt ore"
			},
			{
				clientId = 28941,
				amount = 3,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 640,
		category = "ingots",
		clientId = 28727,
		index = 5,
		durability = 9,
		name = "titanium ingot",
		profession = 5,
		progress = 550,
		quality = 550,
		itemId = 32159,
		description = "Used in various recipes. Lightweight yet sturdy, resilient and versatile.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28947,
				amount = 5,
				itemId = 32379,
				name = "titanium ore"
			},
			{
				clientId = 28941,
				amount = 4,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 2160,
		category = "weapons",
		clientId = 29060,
		index = 6,
		durability = 4,
		name = "Warden's Sword",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32492,
		description = "",
		slotName = "sword",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 29059,
				amount = 1,
				itemId = 32491,
				name = "Rough Sword"
			}
		}
	},
	{
		amount = 1,
		experience = 2160,
		category = "weapons",
		clientId = 28993,
		index = 7,
		durability = 4,
		name = "Marauder's Axe",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32425,
		description = "",
		slotName = "axe",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 3,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28992,
				amount = 1,
				itemId = 32424,
				name = "Wicked Axe"
			}
		}
	},
	{
		amount = 1,
		experience = 2160,
		category = "weapons",
		clientId = 29005,
		index = 8,
		durability = 4,
		name = "Studded Flail",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32437,
		description = "",
		slotName = "club",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 3,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 29004,
				amount = 1,
				itemId = 32436,
				name = "Solid Mace"
			}
		}
	},
	{
		amount = 1,
		experience = 2160,
		category = "weapons",
		clientId = 29011,
		index = 9,
		durability = 4,
		name = "Noble Dagger",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32443,
		description = "",
		slotName = "dagger",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 29010,
				amount = 1,
				itemId = 32442,
				name = "Serrated Dagger"
			}
		}
	},
	{
		amount = 1,
		experience = 4320,
		category = "weapons",
		clientId = 28980,
		index = 11,
		durability = 4,
		name = "Warrior's Greataxe",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32412,
		description = "",
		slotName = "greataxe",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 4,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28978,
				amount = 1,
				itemId = 32410,
				name = "Rough Greataxe"
			}
		}
	},
	{
		amount = 1,
		experience = 4320,
		category = "weapons",
		clientId = 28986,
		index = 12,
		durability = 4,
		name = "Valiant Greatsword",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32418,
		description = "",
		slotName = "greatsword",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 6,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28985,
				amount = 1,
				itemId = 32417,
				name = "Burnished Greatsword"
			}
		}
	},
	{
		amount = 1,
		experience = 4320,
		category = "weapons",
		clientId = 29017,
		index = 13,
		durability = 4,
		name = "Crushing Hammer",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32449,
		description = "",
		slotName = "hammer",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 4,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 29016,
				amount = 1,
				itemId = 32448,
				name = "Shipbuilding Mallet"
			}
		}
	},
	{
		amount = 1,
		experience = 7200,
		category = "weapons",
		clientId = 29061,
		index = 14,
		durability = 6,
		name = "Lawbreaker's Sword",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32493,
		description = "",
		slotName = "sword",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 5,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 5,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 29060,
				amount = 1,
				itemId = 32492,
				name = "Warden's Sword"
			},
			{
				clientId = 37478,
				amount = 6,
				itemId = 40930,
				name = "Troll Fang"
			}
		}
	},
	{
		amount = 1,
		experience = 7200,
		category = "weapons",
		clientId = 28994,
		index = 15,
		durability = 6,
		name = "Dread Axe",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32426,
		description = "",
		slotName = "axe",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 4,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28993,
				amount = 1,
				itemId = 32425,
				name = "Marauder's Axe"
			},
			{
				clientId = 43212,
				amount = 6,
				itemId = 46664,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 7200,
		category = "weapons",
		clientId = 29006,
		index = 16,
		durability = 6,
		name = "Shieldbreaker's Flail",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32438,
		description = "",
		slotName = "club",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 4,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 29005,
				amount = 1,
				itemId = 32437,
				name = "Studded Flail"
			},
			{
				clientId = 43212,
				amount = 6,
				itemId = 46664,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 7200,
		category = "weapons",
		clientId = 29012,
		index = 17,
		durability = 6,
		name = "Ice Dagger",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32444,
		description = "",
		slotName = "dagger",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 5,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 5,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 29011,
				amount = 1,
				itemId = 32443,
				name = "Noble Dagger"
			},
			{
				clientId = 37478,
				amount = 6,
				itemId = 40930,
				name = "Troll Fang"
			}
		}
	},
	{
		amount = 1,
		experience = 14400,
		category = "weapons",
		clientId = 28981,
		index = 19,
		durability = 6,
		name = "Savage Battle Axe",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32413,
		description = "",
		slotName = "greataxe",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 8,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28980,
				amount = 1,
				itemId = 32412,
				name = "Warrior's Greataxe"
			},
			{
				clientId = 43212,
				amount = 12,
				itemId = 46664,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 14400,
		category = "weapons",
		clientId = 28987,
		index = 20,
		durability = 6,
		name = "Heroic Greatsword",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32419,
		description = "",
		slotName = "greatsword",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 10,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28986,
				amount = 1,
				itemId = 32418,
				name = "Valiant Greatsword"
			},
			{
				clientId = 37478,
				amount = 12,
				itemId = 40930,
				name = "Troll Fang"
			}
		}
	},
	{
		amount = 1,
		experience = 14400,
		category = "weapons",
		clientId = 29018,
		index = 21,
		durability = 6,
		name = "Punisher's Gavel",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32450,
		description = "",
		slotName = "hammer",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 8,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 29017,
				amount = 1,
				itemId = 32449,
				name = "Crushing Hammer"
			},
			{
				clientId = 43212,
				amount = 12,
				itemId = 46664,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 20000,
		category = "weapons",
		clientId = 29062,
		index = 22,
		durability = 7,
		name = "Guardian's Longsword",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32494,
		description = "",
		slotName = "sword",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 7,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 10,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 29061,
				amount = 1,
				itemId = 32493,
				name = "Lawbreaker's Sword"
			},
			{
				clientId = 38268,
				amount = 10,
				itemId = 41720,
				name = "Thin Blade"
			}
		}
	},
	{
		amount = 1,
		experience = 20000,
		category = "weapons",
		clientId = 28995,
		index = 23,
		durability = 7,
		name = "Stormcarver Axe",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32427,
		description = "",
		slotName = "axe",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 16,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 8,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28994,
				amount = 1,
				itemId = 32426,
				name = "Dread Axe"
			},
			{
				clientId = 38272,
				amount = 10,
				itemId = 41724,
				name = "Metallic Core"
			}
		}
	},
	{
		amount = 1,
		experience = 20000,
		category = "weapons",
		clientId = 29007,
		index = 24,
		durability = 7,
		name = "Ravenguard Morningstar",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32439,
		description = "",
		slotName = "club",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 16,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 8,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 29006,
				amount = 1,
				itemId = 32438,
				name = "Shieldbreaker's Flail"
			},
			{
				clientId = 37483,
				amount = 10,
				itemId = 40935,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		amount = 1,
		experience = 20000,
		category = "weapons",
		clientId = 29013,
		index = 25,
		durability = 7,
		name = "Heartstopper Dagger",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32445,
		description = "",
		slotName = "dagger",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 7,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 10,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 29012,
				amount = 1,
				itemId = 32444,
				name = "Ice Dagger"
			},
			{
				clientId = 38265,
				amount = 10,
				itemId = 41717,
				name = "Cunning Handle"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 28982,
		index = 27,
		durability = 7,
		name = "Hangman's Greataxe",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32414,
		description = "",
		slotName = "greataxe",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 17,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28981,
				amount = 1,
				itemId = 32413,
				name = "Savage Battle Axe"
			},
			{
				clientId = 38272,
				amount = 20,
				itemId = 41724,
				name = "Metallic Core"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 28988,
		index = 28,
		durability = 7,
		name = "Bonebiter Greatsword",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32420,
		description = "",
		slotName = "greatsword",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 12,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 20,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28987,
				amount = 1,
				itemId = 32419,
				name = "Heroic Greatsword"
			},
			{
				clientId = 38268,
				amount = 20,
				itemId = 41720,
				name = "Thin Blade"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 29019,
		index = 29,
		durability = 7,
		name = "Lawgiver's Warhammer",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32451,
		description = "",
		slotName = "hammer",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 17,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 29018,
				amount = 1,
				itemId = 32450,
				name = "Punisher's Gavel"
			},
			{
				clientId = 37483,
				amount = 20,
				itemId = 40935,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 29063,
		index = 30,
		durability = 8,
		name = "Crusader's Longsword",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32495,
		description = "",
		slotName = "sword",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 10,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 15,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 29062,
				amount = 1,
				itemId = 32494,
				name = "Guardian's Longsword"
			},
			{
				clientId = 40265,
				amount = 12,
				itemId = 43717,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 28996,
		index = 31,
		durability = 8,
		name = "Hellblade Axe",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32428,
		description = "",
		slotName = "axe",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 30,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 11,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28995,
				amount = 1,
				itemId = 32427,
				name = "Stormcarver Axe"
			},
			{
				clientId = 40268,
				amount = 12,
				itemId = 43720,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 29008,
		index = 32,
		durability = 8,
		name = "Enforcer's Mace",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32440,
		description = "",
		slotName = "club",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 30,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 11,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 29007,
				amount = 1,
				itemId = 32439,
				name = "Ravenguard Morningstar"
			},
			{
				clientId = 40274,
				amount = 12,
				itemId = 43726,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 29014,
		index = 33,
		durability = 8,
		name = "Assassin's Dagger",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32446,
		description = "",
		slotName = "dagger",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 10,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 15,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 29013,
				amount = 1,
				itemId = 32445,
				name = "Heartstopper Dagger"
			},
			{
				clientId = 40280,
				amount = 12,
				itemId = 43732,
				name = "Twisted Blades"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "weapons",
		clientId = 28983,
		index = 35,
		durability = 8,
		name = "Orcish Battle Axe",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32415,
		description = "",
		slotName = "greataxe",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 60,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 22,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28982,
				amount = 1,
				itemId = 32414,
				name = "Hangman's Greataxe"
			},
			{
				clientId = 40268,
				amount = 24,
				itemId = 43720,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "weapons",
		clientId = 28989,
		index = 36,
		durability = 8,
		name = "Samurai's Daikatana",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32421,
		description = "",
		slotName = "greatsword",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 30,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28988,
				amount = 1,
				itemId = 32420,
				name = "Bonebiter Greatsword"
			},
			{
				clientId = 40265,
				amount = 24,
				itemId = 43717,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "weapons",
		clientId = 29020,
		index = 37,
		durability = 8,
		name = "Dwarven Warhammer",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32452,
		description = "",
		slotName = "hammer",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 60,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 22,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 29019,
				amount = 1,
				itemId = 32451,
				name = "Lawgiver's Warhammer"
			},
			{
				clientId = 40274,
				amount = 24,
				itemId = 43726,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		amount = 1,
		experience = 1200,
		category = "armors",
		clientId = 28687,
		index = 38,
		durability = 4,
		name = "Crescent Armor",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32119,
		description = "",
		slotName = "plate armor",
		tier = 2,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28678,
				amount = 1,
				itemId = 32110,
				name = "Pliant Armor"
			}
		}
	},
	{
		amount = 1,
		experience = 1200,
		category = "armors",
		clientId = 28688,
		index = 39,
		durability = 4,
		name = "Crescent Helmet",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32120,
		description = "",
		slotName = "plate helmet",
		tier = 2,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28684,
				amount = 1,
				itemId = 32116,
				name = "Pliant Helmet"
			}
		}
	},
	{
		amount = 1,
		experience = 1200,
		category = "armors",
		clientId = 28691,
		index = 40,
		durability = 4,
		name = "Crescent Legs",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32123,
		description = "",
		slotName = "plate legs",
		tier = 2,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28685,
				amount = 1,
				itemId = 32117,
				name = "Pliant Legs"
			}
		}
	},
	{
		amount = 1,
		experience = 1200,
		category = "armors",
		clientId = 28695,
		index = 41,
		durability = 4,
		name = "Crescent Boots",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 32127,
		description = "",
		slotName = "plate boots",
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 28681,
				amount = 1,
				itemId = 32113,
				name = "Pliant Boots"
			}
		}
	},
	{
		amount = 1,
		experience = 6000,
		category = "armors",
		clientId = 28696,
		index = 42,
		durability = 7,
		name = "Harbinger Armor",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32128,
		description = "",
		slotName = "plate armor",
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 3,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28687,
				amount = 1,
				itemId = 32119,
				name = "Crescent Armor"
			},
			{
				clientId = 37479,
				amount = 3,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		amount = 1,
		experience = 6000,
		category = "armors",
		clientId = 28702,
		index = 43,
		durability = 7,
		name = "Harbinger Helmet",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32134,
		description = "",
		slotName = "plate helmet",
		tier = 3,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 3,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28688,
				amount = 1,
				itemId = 32120,
				name = "Crescent Helmet"
			},
			{
				clientId = 37479,
				amount = 3,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		amount = 1,
		experience = 6000,
		category = "armors",
		clientId = 28703,
		index = 44,
		durability = 7,
		name = "Harbinger Legs",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32135,
		description = "",
		slotName = "plate legs",
		tier = 3,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 3,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28691,
				amount = 1,
				itemId = 32123,
				name = "Crescent Legs"
			},
			{
				clientId = 37479,
				amount = 3,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		amount = 1,
		experience = 6000,
		category = "armors",
		clientId = 28699,
		index = 45,
		durability = 7,
		name = "Harbinger Boots",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 32131,
		description = "",
		slotName = "plate boots",
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 3,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 28695,
				amount = 1,
				itemId = 32127,
				name = "Crescent Boots"
			},
			{
				clientId = 37479,
				amount = 3,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		amount = 1,
		experience = 11300,
		category = "armors",
		clientId = 28705,
		index = 46,
		durability = 7,
		name = "Enforcer Armor",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32137,
		description = "",
		slotName = "plate armor",
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 3,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28696,
				amount = 1,
				itemId = 32128,
				name = "Harbinger Armor"
			},
			{
				clientId = 38267,
				amount = 5,
				itemId = 41719,
				name = "Internal Padding"
			}
		}
	},
	{
		amount = 1,
		experience = 11300,
		category = "armors",
		clientId = 28711,
		index = 47,
		durability = 7,
		name = "Enforcer Helmet",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32143,
		description = "",
		slotName = "plate helmet",
		tier = 4,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 3,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28702,
				amount = 1,
				itemId = 32134,
				name = "Harbinger Helmet"
			},
			{
				clientId = 38267,
				amount = 5,
				itemId = 41719,
				name = "Internal Padding"
			}
		}
	},
	{
		amount = 1,
		experience = 11300,
		category = "armors",
		clientId = 28712,
		index = 48,
		durability = 7,
		name = "Enforcer Legs",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32144,
		description = "",
		slotName = "plate legs",
		tier = 4,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 3,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28703,
				amount = 1,
				itemId = 32135,
				name = "Harbinger Legs"
			},
			{
				clientId = 38267,
				amount = 5,
				itemId = 41719,
				name = "Internal Padding"
			}
		}
	},
	{
		amount = 1,
		experience = 11300,
		category = "armors",
		clientId = 28708,
		index = 49,
		durability = 7,
		name = "Enforcer Boots",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 32140,
		description = "",
		slotName = "plate boots",
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 3,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 28699,
				amount = 1,
				itemId = 32131,
				name = "Harbinger Boots"
			},
			{
				clientId = 38267,
				amount = 5,
				itemId = 41719,
				name = "Internal Padding"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "armors",
		clientId = 28714,
		index = 50,
		durability = 9,
		name = "Protector's Armor",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32146,
		description = "",
		slotName = "plate armor",
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 5,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28705,
				amount = 1,
				itemId = 32137,
				name = "Enforcer Armor"
			},
			{
				clientId = 37507,
				amount = 6,
				itemId = 40959,
				name = "Ancient Ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "armors",
		clientId = 28720,
		index = 51,
		durability = 9,
		name = "Protector's Helmet",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32152,
		description = "",
		slotName = "plate helmet",
		tier = 5,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 5,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28711,
				amount = 1,
				itemId = 32143,
				name = "Enforcer Helmet"
			},
			{
				clientId = 37507,
				amount = 6,
				itemId = 40959,
				name = "Ancient Ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "armors",
		clientId = 28721,
		index = 52,
		durability = 9,
		name = "Protector's Legs",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32153,
		description = "",
		slotName = "plate legs",
		tier = 5,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 5,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28712,
				amount = 1,
				itemId = 32144,
				name = "Enforcer Legs"
			},
			{
				clientId = 37507,
				amount = 6,
				itemId = 40959,
				name = "Ancient Ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "armors",
		clientId = 28717,
		index = 53,
		durability = 9,
		name = "Protector's Boots",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 32149,
		description = "",
		slotName = "plate boots",
		tier = 5,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 5,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 28708,
				amount = 1,
				itemId = 32140,
				name = "Enforcer Boots"
			},
			{
				clientId = 37507,
				amount = 6,
				itemId = 40959,
				name = "Ancient Ingot"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 50,
		progress = 75,
		experience = 180,
		profession = 5,
		durability = 4,
		formatDescription = "quality",
		itemId = 31858,
		description = "Increases Attack Power of your equipped weapon by {1} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		clientId = 28426,
		index = 54,
		name = "whetstone",
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28946,
				amount = 3,
				itemId = 32378,
				name = "stone"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 150,
		progress = 175,
		experience = 480,
		profession = 5,
		durability = 6,
		formatDescription = "quality",
		itemId = 31859,
		description = "Increases Attack Power of your equipped weapon by {3} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		clientId = 28427,
		index = 55,
		name = "coarse whetstone",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28946,
				amount = 6,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 1,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 200,
		progress = 225,
		experience = 800,
		profession = 5,
		durability = 7,
		formatDescription = "quality",
		itemId = 38869,
		description = "Increases Attack Power of your equipped weapon by {5} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		clientId = 35437,
		index = 56,
		name = "Heavy Whetstone",
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				clientId = 28946,
				amount = 10,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 2,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 325,
		progress = 350,
		experience = 1200,
		profession = 5,
		durability = 8,
		formatDescription = "quality",
		itemId = 38870,
		description = "Increases Attack Power of your equipped weapon by {7} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		clientId = 35438,
		index = 57,
		name = "Solid Whetstone",
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				clientId = 28946,
				amount = 15,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 3,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 450,
		progress = 500,
		experience = 2080,
		specialization = "Craftsman",
		durability = 9,
		profession = 5,
		formatDescription = "quality",
		itemId = 31860,
		description = "Increases Attack Power of your equipped weapon by {10} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		clientId = 28428,
		index = 58,
		name = "dense whetstone",
		level = {
			single = 68,
			mass = 73
		},
		materials = {
			{
				clientId = 28946,
				amount = 25,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 5,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 800,
		category = "fishing",
		clientId = 28888,
		index = 59,
		durability = 4,
		name = "copper fishing hook",
		profession = 5,
		progress = 100,
		quality = 0,
		itemId = 32320,
		description = "",
		slotName = "fishing hook",
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1680,
		category = "fishing",
		clientId = 28886,
		index = 60,
		durability = 7,
		name = "complex fishing hook",
		profession = 5,
		progress = 200,
		quality = 0,
		itemId = 32318,
		description = "",
		slotName = "fishing hook",
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28723,
				amount = 7,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28888,
				amount = 1,
				itemId = 32320,
				name = "copper fishing hook"
			}
		}
	},
	{
		amount = 1,
		experience = 4800,
		category = "fishing",
		clientId = 28884,
		index = 61,
		durability = 7,
		name = "steel fishing hook",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 32316,
		description = "",
		slotName = "fishing hook",
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28724,
				amount = 15,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28886,
				amount = 1,
				itemId = 32318,
				name = "complex fishing hook"
			}
		}
	},
	{
		amount = 1,
		experience = 11500,
		category = "fishing",
		clientId = 28887,
		index = 62,
		durability = 8,
		name = "cobalt fishing hook",
		profession = 5,
		progress = 475,
		quality = 0,
		itemId = 32319,
		description = "",
		slotName = "fishing hook",
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28725,
				amount = 25,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28884,
				amount = 1,
				itemId = 32316,
				name = "steel fishing hook"
			}
		}
	},
	{
		amount = 1,
		slotName = "fishing hook",
		quality = 0,
		progress = 600,
		experience = 38400,
		specialization = "Craftsman",
		durability = 9,
		profession = 5,
		itemId = 32317,
		description = "",
		tier = 5,
		category = "fishing",
		clientId = 28885,
		index = 63,
		name = "titanium fishing hook",
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28887,
				amount = 1,
				itemId = 32319,
				name = "cobalt fishing hook"
			}
		}
	},
	{
		amount = 1,
		experience = 4320,
		category = "weapons",
		clientId = 37108,
		index = 64,
		durability = 4,
		name = "Swashbuckler's Blade",
		profession = 5,
		progress = 100,
		quality = 100,
		itemId = 40560,
		description = "",
		slotName = "light blade",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 6,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 37107,
				amount = 1,
				itemId = 40559,
				name = "Skirmisher's Blade"
			}
		}
	},
	{
		amount = 1,
		experience = 14400,
		category = "weapons",
		clientId = 37109,
		index = 65,
		durability = 6,
		name = "Serpentine Blade",
		profession = 5,
		progress = 200,
		quality = 100,
		itemId = 40561,
		description = "",
		slotName = "light blade",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 10,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 37108,
				amount = 1,
				itemId = 40560,
				name = "Swashbuckler's Blade"
			},
			{
				clientId = 37478,
				amount = 12,
				itemId = 40930,
				name = "Troll Fang"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "weapons",
		clientId = 37110,
		index = 66,
		durability = 7,
		name = "Duelist's Companion",
		profession = 5,
		progress = 350,
		quality = 100,
		itemId = 40562,
		description = "",
		slotName = "light blade",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 12,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 20,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 37109,
				amount = 1,
				itemId = 40561,
				name = "Serpentine Blade"
			},
			{
				clientId = 38265,
				amount = 20,
				itemId = 41717,
				name = "Cunning Handle"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "weapons",
		clientId = 37111,
		index = 67,
		durability = 8,
		name = "Ornamented Saber",
		profession = 5,
		progress = 525,
		quality = 100,
		itemId = 40563,
		description = "",
		slotName = "light blade",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 30,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 37110,
				amount = 1,
				itemId = 40562,
				name = "Duelist's Companion"
			},
			{
				clientId = 40280,
				amount = 24,
				itemId = 43732,
				name = "Twisted Blades"
			}
		}
	},
	{
		amount = 1,
		slotName = "sword",
		quality = 100,
		progress = 700,
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40610,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37158,
		index = 68,
		name = "Champion's Longsword",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 12,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 18,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 29063,
				amount = 1,
				itemId = 32495,
				name = "Crusader's Longsword"
			},
			{
				clientId = 40267,
				amount = 16,
				itemId = 43719,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		amount = 1,
		slotName = "axe",
		quality = 100,
		progress = 700,
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40606,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37154,
		index = 69,
		name = "Dragonbane Axe",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 30,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 14,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28996,
				amount = 1,
				itemId = 32428,
				name = "Hellblade Axe"
			},
			{
				clientId = 40278,
				amount = 16,
				itemId = 43730,
				name = "Sturdy Joint"
			}
		}
	},
	{
		amount = 1,
		slotName = "club",
		quality = 100,
		progress = 700,
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40608,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37156,
		index = 70,
		name = "Skullbasher Mace",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 30,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 14,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 29008,
				amount = 1,
				itemId = 32440,
				name = "Enforcer's Mace"
			},
			{
				clientId = 40275,
				amount = 16,
				itemId = 43727,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		amount = 1,
		slotName = "dagger",
		quality = 100,
		progress = 700,
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40603,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37151,
		index = 71,
		name = "Ritual Dagger",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 12,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 18,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 29014,
				amount = 1,
				itemId = 32446,
				name = "Assassin's Dagger"
			},
			{
				clientId = 40277,
				amount = 16,
				itemId = 43729,
				name = "Sharp Edges"
			}
		}
	},
	{
		amount = 1,
		slotName = "light blade",
		quality = 100,
		progress = 700,
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40564,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37112,
		index = 73,
		name = "Scarlet Thorn",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 24,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 36,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 37111,
				amount = 1,
				itemId = 40563,
				name = "Ornamented Saber"
			},
			{
				clientId = 40277,
				amount = 32,
				itemId = 43729,
				name = "Sharp Edges"
			}
		}
	},
	{
		amount = 1,
		slotName = "greataxe",
		quality = 100,
		progress = 700,
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40600,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37148,
		index = 74,
		name = "Nocturnal Greataxe",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 28,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28983,
				amount = 1,
				itemId = 32415,
				name = "Orcish Battle Axe"
			},
			{
				clientId = 40278,
				amount = 32,
				itemId = 43730,
				name = "Sturdy Joint"
			}
		}
	},
	{
		amount = 1,
		slotName = "greatsword",
		quality = 100,
		progress = 700,
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40605,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37153,
		index = 75,
		name = "Magister's Greatsword",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 24,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 36,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28989,
				amount = 1,
				itemId = 32421,
				name = "Samurai's Daikatana"
			},
			{
				clientId = 40267,
				amount = 32,
				itemId = 43719,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		amount = 1,
		slotName = "hammer",
		quality = 100,
		progress = 700,
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		durability = 12,
		profession = 5,
		itemId = 40604,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37152,
		index = 76,
		name = "Soulwarden's Hammer",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 28,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 29020,
				amount = 1,
				itemId = 32452,
				name = "Dwarven Warhammer"
			},
			{
				clientId = 40275,
				amount = 32,
				itemId = 43727,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		amount = 1,
		slotName = "plate armor",
		quality = 100,
		progress = 700,
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		durability = 12,
		profession = 5,
		itemId = 40595,
		description = "",
		tier = 6,
		category = "armors",
		clientId = 37143,
		index = 77,
		name = "Chivalry Armor",
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 6,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28714,
				amount = 1,
				itemId = 32146,
				name = "Protector's Armor"
			},
			{
				clientId = 40276,
				amount = 8,
				itemId = 43728,
				name = "Reflective Husk"
			}
		}
	},
	{
		amount = 1,
		slotName = "plate helmet",
		quality = 100,
		progress = 700,
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		durability = 12,
		profession = 5,
		itemId = 40598,
		description = "",
		tier = 6,
		category = "armors",
		clientId = 37146,
		index = 78,
		name = "Chivalry Helmet",
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 6,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28720,
				amount = 1,
				itemId = 32152,
				name = "Protector's Helmet"
			},
			{
				clientId = 40276,
				amount = 8,
				itemId = 43728,
				name = "Reflective Husk"
			}
		}
	},
	{
		amount = 1,
		slotName = "plate legs",
		quality = 100,
		progress = 700,
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		durability = 12,
		profession = 5,
		itemId = 40597,
		description = "",
		tier = 6,
		category = "armors",
		clientId = 37145,
		index = 79,
		name = "Chivalry Legs",
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 6,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28721,
				amount = 1,
				itemId = 32153,
				name = "Protector's Legs"
			},
			{
				clientId = 40276,
				amount = 8,
				itemId = 43728,
				name = "Reflective Husk"
			}
		}
	},
	{
		amount = 1,
		slotName = "plate boots",
		quality = 100,
		progress = 700,
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		durability = 12,
		profession = 5,
		itemId = 40596,
		description = "",
		tier = 6,
		category = "armors",
		clientId = 37144,
		index = 80,
		name = "Chivalry Boots",
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 6,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28717,
				amount = 1,
				itemId = 32149,
				name = "Protector's Boots"
			},
			{
				clientId = 40276,
				amount = 8,
				itemId = 43728,
				name = "Reflective Husk"
			}
		}
	},
	{
		amount = 1,
		experience = 54400,
		category = "Housing Craft",
		clientId = 37234,
		index = 81,
		durability = 7,
		name = "Forging Tools",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40686,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 100,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 50,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28941,
				amount = 20,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 10,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "Housing Craft",
		clientId = 37285,
		index = 82,
		durability = 8,
		name = "Superior Forging Tools",
		profession = 5,
		progress = 525,
		quality = 0,
		itemId = 40737,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				amount = 80,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 70,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				amount = 30,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 15,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 116000,
		category = "Housing Craft",
		clientId = 37220,
		index = 83,
		durability = 12,
		name = "Artisan Forging Tools",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40672,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 70,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				amount = 40,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 25,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 30400,
		category = "Housing Craft",
		clientId = 37289,
		index = 84,
		durability = 7,
		name = "Woodwork Tools",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40741,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 80,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 35,
				itemId = 32156,
				name = "steel ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 72000,
		category = "Housing Craft",
		clientId = 37236,
		index = 85,
		durability = 12,
		name = "Improved Woodwork Tools",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40688,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 100,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 40,
				itemId = 32159,
				name = "titanium ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 28000,
		category = "Housing Craft",
		clientId = 37217,
		index = 86,
		durability = 7,
		name = "Anvil",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40669,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 70,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 35,
				itemId = 32156,
				name = "steel ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 66000,
		category = "Housing Craft",
		clientId = 37233,
		index = 87,
		durability = 12,
		name = "Forgemaster Anvil",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40685,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 45,
				itemId = 32159,
				name = "titanium ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 10000,
		category = "Housing Craft",
		clientId = 37235,
		index = 88,
		durability = 7,
		name = "Furnace",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40687,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28724,
				amount = 20,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28737,
				amount = 5,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 28946,
				amount = 20,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 10,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 28800,
		category = "Housing Craft",
		clientId = 37232,
		index = 89,
		durability = 12,
		name = "Forge",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40684,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 40,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 10,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28737,
				amount = 5,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 28946,
				amount = 20,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 10,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "Housing Craft",
		clientId = 37281,
		index = 90,
		durability = 7,
		name = "Stove",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40733,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 50,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 20,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28737,
				amount = 15,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 28941,
				amount = 10,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 28946,
				amount = 10,
				itemId = 32378,
				name = "stone"
			}
		}
	},
	{
		amount = 1,
		experience = 6000,
		category = "Misc",
		clientId = 28740,
		index = 91,
		durability = 7,
		name = "reinforced plate",
		profession = 5,
		progress = 200,
		quality = 0,
		itemId = 32172,
		description = "Used in various recipes. The backbone of many structures in Ravendawn.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 15,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28743,
				amount = 15,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 40282,
				amount = 15,
				itemId = 43734,
				name = "Bolt"
			}
		}
	},
	{
		amount = 1,
		experience = 117000,
		category = "Housing Craft",
		clientId = 37286,
		index = 92,
		durability = 8,
		name = "Superior Stove",
		profession = 5,
		progress = 525,
		quality = 0,
		itemId = 40738,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				amount = 100,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 50,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28737,
				amount = 30,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 28941,
				amount = 20,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 45506,
				amount = 35,
				itemId = 48958,
				name = "Sturdy Plank"
			}
		}
	},
	{
		amount = 1,
		experience = 163000,
		category = "Housing Craft",
		clientId = 37221,
		index = 93,
		durability = 12,
		name = "Artisan Stove",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40673,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 100,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 80,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28737,
				amount = 40,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 28941,
				amount = 30,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 45506,
				amount = 35,
				itemId = 48958,
				name = "Sturdy Plank"
			}
		}
	},
	{
		amount = 1,
		experience = 88000,
		category = "Ship Module",
		clientId = 37260,
		index = 94,
		durability = 7,
		name = "Minor Shielding Kit",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40712,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 220,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 110,
				itemId = 32156,
				name = "steel ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 332000,
		category = "Ship Module",
		clientId = 37282,
		index = 95,
		durability = 7,
		name = "Sturdy Shielding Kit",
		profession = 5,
		progress = 500,
		quality = 0,
		itemId = 40734,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 600,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 300,
				itemId = 32157,
				name = "cobalt ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 705600,
		category = "Ship Module",
		clientId = 37263,
		index = 96,
		durability = 12,
		name = "Reinforced Shielding Kit",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40715,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				amount = 900,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 450,
				itemId = 32159,
				name = "titanium ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 32800,
		category = "Ship Module",
		clientId = 37266,
		index = 97,
		durability = 7,
		name = "Small Cannon Kit",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40718,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 40,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 15,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28745,
				amount = 10,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 37229,
				amount = 2,
				itemId = 40681,
				name = "Common Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 65840,
		category = "Ship Module",
		clientId = 37268,
		index = 98,
		durability = 6,
		name = "Simple Ship Emblems Kit",
		profession = 5,
		progress = 225,
		quality = 0,
		itemId = 40720,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 220,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28941,
				amount = 50,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 37229,
				amount = 2,
				itemId = 40681,
				name = "Common Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 134400,
		category = "Ship Module",
		clientId = 37265,
		index = 99,
		durability = 7,
		name = "Compound Ship Emblems Kit",
		profession = 5,
		progress = 500,
		quality = 0,
		itemId = 40717,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 220,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 110,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40492,
				amount = 2,
				itemId = 43944,
				name = "Swift Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 228000,
		category = "Ship Module",
		clientId = 37218,
		index = 100,
		durability = 12,
		name = "Complex Ship Emblems Kit",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40670,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				amount = 220,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 110,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 37264,
				amount = 2,
				itemId = 40716,
				name = "Reinforced Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 37600,
		category = "Ship Module",
		clientId = 37223,
		index = 101,
		durability = 7,
		name = "Basic Water Pumps Kit",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 40675,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28723,
				amount = 80,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 50,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28941,
				amount = 20,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 56000,
		category = "Ship Module",
		clientId = 37230,
		index = 102,
		durability = 7,
		name = "Enhanced Water Pumps Kit",
		profession = 5,
		progress = 500,
		quality = 0,
		itemId = 40682,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 220,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 110,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				amount = 40,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 180000,
		category = "Ship Module",
		clientId = 37261,
		index = 103,
		durability = 12,
		name = "Pressurized Water Pumps Kit",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 40713,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28725,
				amount = 220,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 110,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				amount = 60,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 64,
		category = "Misc",
		clientId = 28734,
		index = 104,
		durability = 4,
		name = "nail",
		profession = 5,
		progress = 50,
		quality = 75,
		itemId = 32166,
		description = "Used in various recipes. A basic yet crucial component for construction.",
		slotName = "",
		tier = -1,
		level = {
			single = 2,
			mass = 7
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 240,
		category = "Misc",
		clientId = 28737,
		index = 105,
		durability = 7,
		name = "iron bar",
		profession = 5,
		progress = 200,
		quality = 225,
		itemId = 32169,
		description = "Used in various recipes. Forged with strength and versatility in mind.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 1,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 800,
		category = "weapons",
		clientId = 29004,
		index = 106,
		durability = 3,
		name = "Solid Mace",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32436,
		description = "",
		slotName = "club",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 800,
		category = "weapons",
		clientId = 29059,
		index = 107,
		durability = 3,
		name = "Rough Sword",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32491,
		description = "",
		slotName = "sword",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 800,
		category = "weapons",
		clientId = 28992,
		index = 108,
		durability = 3,
		name = "Wicked Axe",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32424,
		description = "",
		slotName = "axe",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 800,
		category = "weapons",
		clientId = 29010,
		index = 109,
		durability = 3,
		name = "Serrated Dagger",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32442,
		description = "",
		slotName = "dagger",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1600,
		category = "weapons",
		clientId = 28978,
		index = 111,
		durability = 3,
		name = "Rough Greataxe",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32410,
		description = "",
		slotName = "greataxe",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1600,
		category = "weapons",
		clientId = 28985,
		index = 112,
		durability = 3,
		name = "Burnished Greatsword",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32417,
		description = "",
		slotName = "greatsword",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1600,
		category = "weapons",
		clientId = 37107,
		index = 113,
		durability = 3,
		name = "Skirmisher's Blade",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 40559,
		description = "",
		slotName = "light blade",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1600,
		category = "weapons",
		clientId = 29016,
		index = 114,
		durability = 3,
		name = "Shipbuilding Mallet",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32448,
		description = "",
		slotName = "hammer",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 600,
		category = "armors",
		clientId = 28678,
		index = 115,
		durability = 3,
		name = "Pliant Armor",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32110,
		description = "",
		slotName = "plate armor",
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 600,
		category = "armors",
		clientId = 28684,
		index = 116,
		durability = 3,
		name = "Pliant Helmet",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32116,
		description = "",
		slotName = "plate helmet",
		tier = 1,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 600,
		category = "armors",
		clientId = 28685,
		index = 117,
		durability = 3,
		name = "Pliant Legs",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32117,
		description = "",
		slotName = "plate legs",
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 600,
		category = "armors",
		clientId = 28681,
		index = 118,
		durability = 3,
		name = "Pliant Boots",
		profession = 5,
		progress = 50,
		quality = 100,
		itemId = 32113,
		description = "",
		slotName = "plate boots",
		tier = 1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 80,
		category = "Misc",
		clientId = 40282,
		index = 119,
		durability = 6,
		name = "Bolt",
		profession = 5,
		progress = 200,
		quality = 225,
		itemId = 43734,
		description = "Used in various recipes. A small piece, integral in connecting larger ones.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 1,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 215,
		category = "Misc",
		clientId = 40284,
		index = 120,
		durability = 7,
		name = "Steel Bar",
		profession = 5,
		progress = 350,
		quality = 400,
		itemId = 43736,
		description = "Used in various recipes. Cold, hard, and unyielding - the essence of strength.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 2,
				itemId = 32156,
				name = "steel ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 2400,
		category = "Misc",
		clientId = 40283,
		index = 121,
		durability = 3,
		name = "Common Plate",
		profession = 5,
		progress = 50,
		quality = 0,
		itemId = 43735,
		description = "Used in various recipes. A humble slab of metal, awaiting purpose.",
		slotName = "",
		tier = -1,
		level = {
			single = 4,
			mass = 9
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 28744,
				amount = 10,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28734,
				amount = 10,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 400,
		category = "Housing Craft",
		clientId = 41850,
		index = 122,
		durability = 4,
		name = "Stone Block",
		profession = 5,
		progress = 100,
		quality = 0,
		itemId = 45302,
		description = "Used in various recipes. Solid building material, ideal for constructing robust houses.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28946,
				amount = 20,
				itemId = 32378,
				name = "stone"
			}
		}
	},
	{
		amount = 1,
		experience = 880,
		category = "Housing Craft",
		clientId = 41846,
		index = 123,
		durability = 7,
		name = "Dense Block",
		profession = 5,
		progress = 225,
		quality = 0,
		itemId = 45298,
		description = "Used in various recipes. Massive construction material painstakingly hewn from solid stone.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28946,
				amount = 40,
				itemId = 32378,
				name = "stone"
			},
			{
				clientId = 28941,
				amount = 2,
				itemId = 32373,
				name = "coal"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "Housing Craft",
		clientId = 41849,
		index = 124,
		durability = 8,
		name = "Royal Ornaments",
		profession = 5,
		progress = 450,
		quality = 0,
		itemId = 45301,
		description = "Used in various recipes. Formed by skillfully combining an array of precious gems, radiating elegance.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28948,
				amount = 1,
				itemId = 32380,
				name = "amethyst"
			},
			{
				clientId = 28949,
				amount = 1,
				itemId = 32381,
				name = "citrine"
			},
			{
				clientId = 28952,
				amount = 1,
				itemId = 32384,
				name = "sapphire"
			},
			{
				clientId = 28950,
				amount = 1,
				itemId = 32382,
				name = "emerald"
			},
			{
				clientId = 28951,
				amount = 1,
				itemId = 32383,
				name = "ruby"
			},
			{
				clientId = 28953,
				amount = 1,
				itemId = 32385,
				name = "topaz"
			}
		}
	},
	{
		amount = 1,
		experience = 8500,
		category = "Housing Craft",
		clientId = 42778,
		index = 125,
		durability = 4,
		name = "Copper Anvil",
		profession = 5,
		progress = 75,
		quality = 0,
		itemId = 46230,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28726,
				amount = 30,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 4300,
		category = "Housing Craft",
		clientId = 42784,
		index = 126,
		durability = 3,
		name = "Basic Tools",
		profession = 5,
		progress = 50,
		quality = 0,
		itemId = 46236,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 28744,
				amount = 4,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 4400,
		category = "Moa Equipment",
		clientId = 43238,
		index = 127,
		durability = 7,
		name = "Simple Headgear",
		profession = 5,
		progress = 200,
		quality = 0,
		itemId = 46690,
		description = "Together with 'Simple Saddle' can be crafted into a 'Simple Barding'.",
		slotName = "",
		tier = -1,
		level = {
			single = 12,
			mass = 17
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 35432,
				amount = 4,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 7520,
		category = "Moa Equipment",
		clientId = 43239,
		index = 128,
		durability = 7,
		name = "Composed Headgear",
		profession = 5,
		progress = 200,
		quality = 0,
		itemId = 46691,
		description = "Together with 'Composed Saddle' can be crafted into a 'Composed Barding'.",
		slotName = "",
		tier = -1,
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				clientId = 28723,
				amount = 11,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35432,
				amount = 8,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 13200,
		category = "Moa Equipment",
		clientId = 43240,
		index = 129,
		durability = 7,
		name = "Advanced Headgear",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 46692,
		description = "Together with 'Advanced Saddle' can be crafted into a 'Advanced Barding'.",
		slotName = "",
		tier = -1,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 35433,
				amount = 7,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 40000,
		category = "Moa Equipment",
		clientId = 43241,
		index = 130,
		durability = 8,
		name = "Artisan Headgear",
		profession = 5,
		progress = 525,
		quality = 0,
		itemId = 46693,
		description = "Together with 'Artisan Saddle' can be crafted into a 'Artisan Barding'.",
		slotName = "",
		tier = -1,
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 35434,
				amount = 17,
				itemId = 38866,
				name = "Tanned Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 52000,
		category = "Moa Equipment",
		clientId = 43242,
		index = 131,
		durability = 9,
		name = "Superior Headgear",
		profession = 5,
		progress = 650,
		quality = 0,
		itemId = 46694,
		description = "Together with 'Superior Saddle' can be crafted into a 'Superior Barding'.",
		slotName = "",
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28725,
				amount = 25,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 35435,
				amount = 17,
				itemId = 38867,
				name = "Merchant's Leather"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 0,
		progress = 750,
		experience = 172000,
		specialization = "Craftsman",
		durability = 12,
		profession = 5,
		itemId = 46695,
		description = "Together with 'War Saddle' can be crafted into a 'War Barding'.",
		tier = -1,
		category = "Moa Equipment",
		clientId = 43243,
		index = 132,
		name = "War Headgear",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 12,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28951,
				amount = 10,
				itemId = 32383,
				name = "ruby"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 0,
		progress = 750,
		experience = 172000,
		specialization = "Craftsman",
		durability = 12,
		profession = 5,
		itemId = 46696,
		description = "Together with 'Explorer Saddle' can be crafted into a 'Explorer Barding'.",
		tier = -1,
		category = "Moa Equipment",
		clientId = 43244,
		index = 133,
		name = "Explorer Headgear",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 12,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28952,
				amount = 10,
				itemId = 32384,
				name = "sapphire"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 0,
		progress = 750,
		experience = 172000,
		specialization = "Craftsman",
		durability = 12,
		profession = 5,
		itemId = 46697,
		description = "Together with 'Professional Saddle' can be crafted into a 'Professional Barding'.",
		tier = -1,
		category = "Moa Equipment",
		clientId = 43245,
		index = 134,
		name = "Professional Headgear",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 35436,
				amount = 12,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 28953,
				amount = 10,
				itemId = 32385,
				name = "topaz"
			}
		}
	},
	{
		amount = 1,
		experience = 73600,
		category = "Ship Module",
		clientId = 43637,
		index = 135,
		durability = 7,
		name = "Medium Cannon Kit",
		profession = 5,
		progress = 500,
		quality = 0,
		itemId = 47089,
		description = "",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28723,
				amount = 150,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 100,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 40284,
				amount = 2,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 37229,
				amount = 2,
				itemId = 40681,
				name = "Common Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 100000,
		category = "Ship Module",
		clientId = 43636,
		index = 136,
		durability = 9,
		name = "Large Cannon Kit",
		profession = 5,
		progress = 650,
		quality = 0,
		itemId = 47088,
		description = "",
		slotName = "",
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28724,
				amount = 150,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 100,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40284,
				amount = 2,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 37229,
				amount = 2,
				itemId = 40681,
				name = "Common Wheel"
			}
		}
	},
	{
		amount = 1,
		experience = 28000,
		category = "Housing Craft",
		clientId = 47288,
		index = 137,
		durability = 4,
		name = "Weak Racks",
		profession = 5,
		progress = 75,
		quality = 0,
		itemId = 50741,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28723,
				amount = 70,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 35,
				itemId = 32156,
				name = "steel ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 66000,
		category = "Housing Craft",
		clientId = 47276,
		index = 138,
		durability = 7,
		name = "Armory Racks",
		profession = 5,
		progress = 350,
		quality = 0,
		itemId = 50729,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 45,
				itemId = 32159,
				name = "titanium ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 8500,
		category = "Housing Craft",
		clientId = 47281,
		index = 139,
		durability = 12,
		name = "Reinforced Racks",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 50734,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28726,
				amount = 30,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 28723,
				amount = 10,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 80000,
		category = "Housing Craft",
		clientId = 47279,
		index = 140,
		durability = 8,
		name = "Gear Maintenance Tools",
		profession = 5,
		progress = 525,
		quality = 0,
		itemId = 50732,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28724,
				amount = 80,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 70,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28941,
				amount = 30,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 15,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 116000,
		category = "Housing Craft",
		clientId = 47283,
		index = 141,
		durability = 12,
		name = "Thief Tools",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 50736,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 70,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				amount = 40,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 25,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 116000,
		category = "Housing Craft",
		clientId = 47287,
		index = 142,
		durability = 12,
		name = "Warmonger Tools",
		profession = 5,
		progress = 700,
		quality = 0,
		itemId = 50740,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 70,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28941,
				amount = 40,
				itemId = 32373,
				name = "coal"
			},
			{
				clientId = 35433,
				amount = 25,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionBlacksmithing] = {
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28985,
		index = 1,
		durability = 3,
		name = "Burnished Greatsword",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32417,
		description = "",
		slotName = "greatsword",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 4,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29059,
		index = 2,
		durability = 3,
		name = "Rough Sword",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32491,
		description = "",
		slotName = "sword",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 2,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28992,
		index = 3,
		durability = 3,
		name = "Wicked Axe",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32424,
		description = "",
		slotName = "axe",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29004,
		index = 4,
		durability = 3,
		name = "Solid Mace",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32436,
		description = "",
		slotName = "club",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29010,
		index = 5,
		durability = 3,
		name = "Serrated Dagger",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32442,
		description = "",
		slotName = "dagger",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 2,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28978,
		index = 7,
		durability = 3,
		name = "Rough Greataxe",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32410,
		description = "",
		slotName = "greataxe",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29016,
		index = 8,
		durability = 3,
		name = "Shipbuilding Mallet",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32448,
		description = "",
		slotName = "hammer",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 2,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28678,
		index = 9,
		durability = 3,
		name = "Pliant Armor",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32110,
		description = "",
		slotName = "plate armor",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				itemId = 38878,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38879,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28684,
		index = 10,
		durability = 3,
		name = "Pliant Helmet",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32116,
		description = "",
		slotName = "plate helmet",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				itemId = 38882,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38883,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28685,
		index = 11,
		durability = 3,
		name = "Pliant Legs",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32117,
		description = "",
		slotName = "plate legs",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				itemId = 38886,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38887,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28681,
		index = 12,
		durability = 3,
		name = "Pliant Boots",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 32113,
		description = "",
		slotName = "plate boots",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				itemId = 38890,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38891,
				name = "Coarse Leather"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 37107,
		index = 13,
		durability = 3,
		name = "Skirmisher's Blade",
		profession = 5,
		progress = 50,
		quality = 50,
		itemId = 40559,
		description = "",
		slotName = "light blade",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				itemId = 38874,
				name = "Copper Ingot"
			},
			{
				clientId = 35432,
				amount = 4,
				itemId = 38875,
				name = "Coarse Leather"
			}
		}
	}
}

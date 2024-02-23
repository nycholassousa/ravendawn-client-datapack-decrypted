-- chunkname: @/modules/game_profession/recipes/blacksmithing.lua

recipes = recipes or {}
recipes[ProfessionBlacksmithing] = {
	{
		category = "ingots",
		index = 1,
		clientId = 28726,
		amount = 1,
		itemId = 32158,
		quality = 75,
		name = "copper ingot",
		experience = 200,
		durability = 4,
		profession = 5,
		description = "Used in various recipes. Symbolizes malleability and conductivity.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32376,
				amount = 5,
				clientId = 28944,
				name = "copper ore"
			}
		}
	},
	{
		category = "ingots",
		index = 2,
		clientId = 28723,
		amount = 1,
		itemId = 32155,
		quality = 150,
		name = "iron ingot",
		experience = 240,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. A versatile metallic ingot.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32375,
				amount = 5,
				clientId = 28943,
				name = "iron ore"
			}
		}
	},
	{
		category = "ingots",
		index = 3,
		clientId = 28724,
		amount = 1,
		itemId = 32156,
		quality = 200,
		name = "steel ingot",
		experience = 320,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. Forged from a mix of metals.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32375,
				amount = 5,
				clientId = 28943,
				name = "iron ore"
			},
			{
				itemId = 32373,
				amount = 2,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "ingots",
		index = 4,
		clientId = 28725,
		amount = 1,
		itemId = 32157,
		quality = 450,
		name = "cobalt ingot",
		experience = 460,
		durability = 8,
		profession = 5,
		description = "Used in various recipes. A rare blue-hued metal.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32374,
				amount = 5,
				clientId = 28942,
				name = "cobalt ore"
			},
			{
				itemId = 32373,
				amount = 3,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "ingots",
		index = 5,
		clientId = 28727,
		amount = 1,
		itemId = 32159,
		quality = 550,
		name = "titanium ingot",
		experience = 640,
		durability = 9,
		profession = 5,
		description = "Used in various recipes. Lightweight yet sturdy, resilient and versatile.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32379,
				amount = 5,
				clientId = 28947,
				name = "titanium ore"
			},
			{
				itemId = 32373,
				amount = 4,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "weapons",
		index = 6,
		clientId = 29060,
		amount = 1,
		itemId = 32492,
		quality = 100,
		name = "Warden's Sword",
		experience = 2160,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "sword",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32491,
				amount = 1,
				clientId = 29059,
				name = "Rough Sword"
			}
		}
	},
	{
		category = "weapons",
		index = 7,
		clientId = 28993,
		amount = 1,
		itemId = 32425,
		quality = 100,
		name = "Marauder's Axe",
		experience = 2160,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "axe",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 3,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32424,
				amount = 1,
				clientId = 28992,
				name = "Wicked Axe"
			}
		}
	},
	{
		category = "weapons",
		index = 8,
		clientId = 29005,
		amount = 1,
		itemId = 32437,
		quality = 100,
		name = "Studded Flail",
		experience = 2160,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "club",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 3,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32436,
				amount = 1,
				clientId = 29004,
				name = "Solid Mace"
			}
		}
	},
	{
		category = "weapons",
		index = 9,
		clientId = 29011,
		amount = 1,
		itemId = 32443,
		quality = 100,
		name = "Noble Dagger",
		experience = 2160,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "dagger",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32442,
				amount = 1,
				clientId = 29010,
				name = "Serrated Dagger"
			}
		}
	},
	{
		category = "weapons",
		index = 11,
		clientId = 28980,
		amount = 1,
		itemId = 32412,
		quality = 100,
		name = "Warrior's Greataxe",
		experience = 4320,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "greataxe",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 4,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32410,
				amount = 1,
				clientId = 28978,
				name = "Rough Greataxe"
			}
		}
	},
	{
		category = "weapons",
		index = 12,
		clientId = 28986,
		amount = 1,
		itemId = 32418,
		quality = 100,
		name = "Valiant Greatsword",
		experience = 4320,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "greatsword",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 6,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 6,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32417,
				amount = 1,
				clientId = 28985,
				name = "Burnished Greatsword"
			}
		}
	},
	{
		category = "weapons",
		index = 13,
		clientId = 29017,
		amount = 1,
		itemId = 32449,
		quality = 100,
		name = "Crushing Hammer",
		experience = 4320,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "hammer",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 4,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32448,
				amount = 1,
				clientId = 29016,
				name = "Shipbuilding Mallet"
			}
		}
	},
	{
		category = "weapons",
		index = 14,
		clientId = 29061,
		amount = 1,
		itemId = 32493,
		quality = 100,
		name = "Lawbreaker's Sword",
		experience = 7200,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "sword",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 5,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32492,
				amount = 1,
				clientId = 29060,
				name = "Warden's Sword"
			},
			{
				itemId = 40930,
				amount = 6,
				clientId = 37478,
				name = "Troll Fang"
			}
		}
	},
	{
		category = "weapons",
		index = 15,
		clientId = 28994,
		amount = 1,
		itemId = 32426,
		quality = 100,
		name = "Dread Axe",
		experience = 7200,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "axe",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 4,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32425,
				amount = 1,
				clientId = 28993,
				name = "Marauder's Axe"
			},
			{
				itemId = 46664,
				amount = 6,
				clientId = 43212,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		category = "weapons",
		index = 16,
		clientId = 29006,
		amount = 1,
		itemId = 32438,
		quality = 100,
		name = "Shieldbreaker's Flail",
		experience = 7200,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "club",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 4,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32437,
				amount = 1,
				clientId = 29005,
				name = "Studded Flail"
			},
			{
				itemId = 46664,
				amount = 6,
				clientId = 43212,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		category = "weapons",
		index = 17,
		clientId = 29012,
		amount = 1,
		itemId = 32444,
		quality = 100,
		name = "Ice Dagger",
		experience = 7200,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "dagger",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 5,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32443,
				amount = 1,
				clientId = 29011,
				name = "Noble Dagger"
			},
			{
				itemId = 40930,
				amount = 6,
				clientId = 37478,
				name = "Troll Fang"
			}
		}
	},
	{
		category = "weapons",
		index = 19,
		clientId = 28981,
		amount = 1,
		itemId = 32413,
		quality = 100,
		name = "Savage Battle Axe",
		experience = 14400,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "greataxe",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 20,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 8,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32412,
				amount = 1,
				clientId = 28980,
				name = "Warrior's Greataxe"
			},
			{
				itemId = 46664,
				amount = 12,
				clientId = 43212,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		category = "weapons",
		index = 20,
		clientId = 28987,
		amount = 1,
		itemId = 32419,
		quality = 100,
		name = "Heroic Greatsword",
		experience = 14400,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "greatsword",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 10,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32418,
				amount = 1,
				clientId = 28986,
				name = "Valiant Greatsword"
			},
			{
				itemId = 40930,
				amount = 12,
				clientId = 37478,
				name = "Troll Fang"
			}
		}
	},
	{
		category = "weapons",
		index = 21,
		clientId = 29018,
		amount = 1,
		itemId = 32450,
		quality = 100,
		name = "Punisher's Gavel",
		experience = 14400,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "hammer",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 20,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 8,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32449,
				amount = 1,
				clientId = 29017,
				name = "Crushing Hammer"
			},
			{
				itemId = 46664,
				amount = 12,
				clientId = 43212,
				name = "Sea Cured Leather"
			}
		}
	},
	{
		category = "weapons",
		index = 22,
		clientId = 29062,
		amount = 1,
		itemId = 32494,
		quality = 100,
		name = "Guardian's Longsword",
		experience = 20000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "sword",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 7,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 10,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32493,
				amount = 1,
				clientId = 29061,
				name = "Lawbreaker's Sword"
			},
			{
				itemId = 41720,
				amount = 10,
				clientId = 38268,
				name = "Thin Blade"
			}
		}
	},
	{
		category = "weapons",
		index = 23,
		clientId = 28995,
		amount = 1,
		itemId = 32427,
		quality = 100,
		name = "Stormcarver Axe",
		experience = 20000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "axe",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 16,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32426,
				amount = 1,
				clientId = 28994,
				name = "Dread Axe"
			},
			{
				itemId = 41724,
				amount = 10,
				clientId = 38272,
				name = "Metallic Core"
			}
		}
	},
	{
		category = "weapons",
		index = 24,
		clientId = 29007,
		amount = 1,
		itemId = 32439,
		quality = 100,
		name = "Ravenguard Morningstar",
		experience = 20000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "club",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 16,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32438,
				amount = 1,
				clientId = 29006,
				name = "Shieldbreaker's Flail"
			},
			{
				itemId = 40935,
				amount = 10,
				clientId = 37483,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		category = "weapons",
		index = 25,
		clientId = 29013,
		amount = 1,
		itemId = 32445,
		quality = 100,
		name = "Heartstopper Dagger",
		experience = 20000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "dagger",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 7,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 10,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32444,
				amount = 1,
				clientId = 29012,
				name = "Ice Dagger"
			},
			{
				itemId = 41717,
				amount = 10,
				clientId = 38265,
				name = "Cunning Handle"
			}
		}
	},
	{
		category = "weapons",
		index = 27,
		clientId = 28982,
		amount = 1,
		itemId = 32414,
		quality = 100,
		name = "Hangman's Greataxe",
		experience = 40000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "greataxe",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 25,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 17,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32413,
				amount = 1,
				clientId = 28981,
				name = "Savage Battle Axe"
			},
			{
				itemId = 41724,
				amount = 20,
				clientId = 38272,
				name = "Metallic Core"
			}
		}
	},
	{
		category = "weapons",
		index = 28,
		clientId = 28988,
		amount = 1,
		itemId = 32420,
		quality = 100,
		name = "Bonebiter Greatsword",
		experience = 40000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "greatsword",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 12,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 20,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32419,
				amount = 1,
				clientId = 28987,
				name = "Heroic Greatsword"
			},
			{
				itemId = 41720,
				amount = 20,
				clientId = 38268,
				name = "Thin Blade"
			}
		}
	},
	{
		category = "weapons",
		index = 29,
		clientId = 29019,
		amount = 1,
		itemId = 32451,
		quality = 100,
		name = "Lawgiver's Warhammer",
		experience = 40000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "hammer",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 25,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 17,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32450,
				amount = 1,
				clientId = 29018,
				name = "Punisher's Gavel"
			},
			{
				itemId = 40935,
				amount = 20,
				clientId = 37483,
				name = "Rough Steel Plate"
			}
		}
	},
	{
		category = "weapons",
		index = 30,
		clientId = 29063,
		amount = 1,
		itemId = 32495,
		quality = 100,
		name = "Crusader's Longsword",
		experience = 40000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "sword",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 10,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 15,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32494,
				amount = 1,
				clientId = 29062,
				name = "Guardian's Longsword"
			},
			{
				itemId = 43717,
				amount = 12,
				clientId = 40265,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		category = "weapons",
		index = 31,
		clientId = 28996,
		amount = 1,
		itemId = 32428,
		quality = 100,
		name = "Hellblade Axe",
		experience = 40000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "axe",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 30,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 11,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32427,
				amount = 1,
				clientId = 28995,
				name = "Stormcarver Axe"
			},
			{
				itemId = 43720,
				amount = 12,
				clientId = 40268,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		category = "weapons",
		index = 32,
		clientId = 29008,
		amount = 1,
		itemId = 32440,
		quality = 100,
		name = "Enforcer's Mace",
		experience = 40000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "club",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 30,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 11,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32439,
				amount = 1,
				clientId = 29007,
				name = "Ravenguard Morningstar"
			},
			{
				itemId = 43726,
				amount = 12,
				clientId = 40274,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		category = "weapons",
		index = 33,
		clientId = 29014,
		amount = 1,
		itemId = 32446,
		quality = 100,
		name = "Assassin's Dagger",
		experience = 40000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "dagger",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 10,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 15,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32445,
				amount = 1,
				clientId = 29013,
				name = "Heartstopper Dagger"
			},
			{
				itemId = 43732,
				amount = 12,
				clientId = 40280,
				name = "Twisted Blades"
			}
		}
	},
	{
		category = "weapons",
		index = 35,
		clientId = 28983,
		amount = 1,
		itemId = 32415,
		quality = 100,
		name = "Orcish Battle Axe",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "greataxe",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 60,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 22,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32414,
				amount = 1,
				clientId = 28982,
				name = "Hangman's Greataxe"
			},
			{
				itemId = 43720,
				amount = 24,
				clientId = 40268,
				name = "Cutting Edge Scrap"
			}
		}
	},
	{
		category = "weapons",
		index = 36,
		clientId = 28989,
		amount = 1,
		itemId = 32421,
		quality = 100,
		name = "Samurai's Daikatana",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "greatsword",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 30,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32420,
				amount = 1,
				clientId = 28988,
				name = "Bonebiter Greatsword"
			},
			{
				itemId = 43717,
				amount = 24,
				clientId = 40265,
				name = "Ancient Metallic Scrap"
			}
		}
	},
	{
		category = "weapons",
		index = 37,
		clientId = 29020,
		amount = 1,
		itemId = 32452,
		quality = 100,
		name = "Dwarven Warhammer",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "hammer",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 60,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 22,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32451,
				amount = 1,
				clientId = 29019,
				name = "Lawgiver's Warhammer"
			},
			{
				itemId = 43726,
				amount = 24,
				clientId = 40274,
				name = "Heavy Metal Chunks"
			}
		}
	},
	{
		category = "armors",
		index = 38,
		clientId = 28687,
		amount = 1,
		itemId = 32119,
		quality = 100,
		name = "Crescent Armor",
		experience = 1200,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "plate armor",
		tier = 2,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32110,
				amount = 1,
				clientId = 28678,
				name = "Pliant Armor"
			}
		}
	},
	{
		category = "armors",
		index = 39,
		clientId = 28688,
		amount = 1,
		itemId = 32120,
		quality = 100,
		name = "Crescent Helmet",
		experience = 1200,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "plate helmet",
		tier = 2,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32116,
				amount = 1,
				clientId = 28684,
				name = "Pliant Helmet"
			}
		}
	},
	{
		category = "armors",
		index = 40,
		clientId = 28691,
		amount = 1,
		itemId = 32123,
		quality = 100,
		name = "Crescent Legs",
		experience = 1200,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "plate legs",
		tier = 2,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32117,
				amount = 1,
				clientId = 28685,
				name = "Pliant Legs"
			}
		}
	},
	{
		category = "armors",
		index = 41,
		clientId = 28695,
		amount = 1,
		itemId = 32127,
		quality = 100,
		name = "Crescent Boots",
		experience = 1200,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "plate boots",
		tier = 2,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32113,
				amount = 1,
				clientId = 28681,
				name = "Pliant Boots"
			}
		}
	},
	{
		category = "armors",
		index = 42,
		clientId = 28696,
		amount = 1,
		itemId = 32128,
		quality = 100,
		name = "Harbinger Armor",
		experience = 6000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "plate armor",
		tier = 3,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32119,
				amount = 1,
				clientId = 28687,
				name = "Crescent Armor"
			},
			{
				itemId = 40931,
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment"
			}
		}
	},
	{
		category = "armors",
		index = 43,
		clientId = 28702,
		amount = 1,
		itemId = 32134,
		quality = 100,
		name = "Harbinger Helmet",
		experience = 6000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "plate helmet",
		tier = 3,
		level = {
			mass = 36,
			single = 31
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32120,
				amount = 1,
				clientId = 28688,
				name = "Crescent Helmet"
			},
			{
				itemId = 40931,
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment"
			}
		}
	},
	{
		category = "armors",
		index = 44,
		clientId = 28703,
		amount = 1,
		itemId = 32135,
		quality = 100,
		name = "Harbinger Legs",
		experience = 6000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "plate legs",
		tier = 3,
		level = {
			mass = 39,
			single = 34
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32123,
				amount = 1,
				clientId = 28691,
				name = "Crescent Legs"
			},
			{
				itemId = 40931,
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment"
			}
		}
	},
	{
		category = "armors",
		index = 45,
		clientId = 28699,
		amount = 1,
		itemId = 32131,
		quality = 100,
		name = "Harbinger Boots",
		experience = 6000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "plate boots",
		tier = 3,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32127,
				amount = 1,
				clientId = 28695,
				name = "Crescent Boots"
			},
			{
				itemId = 40931,
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment"
			}
		}
	},
	{
		category = "armors",
		index = 46,
		clientId = 28705,
		amount = 1,
		itemId = 32137,
		quality = 100,
		name = "Enforcer Armor",
		experience = 11300,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "plate armor",
		tier = 4,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				itemId = 32156,
				amount = 18,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32128,
				amount = 1,
				clientId = 28696,
				name = "Harbinger Armor"
			},
			{
				itemId = 41719,
				amount = 5,
				clientId = 38267,
				name = "Internal Padding"
			}
		}
	},
	{
		category = "armors",
		index = 47,
		clientId = 28711,
		amount = 1,
		itemId = 32143,
		quality = 100,
		name = "Enforcer Helmet",
		experience = 11300,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "plate helmet",
		tier = 4,
		level = {
			mass = 51,
			single = 46
		},
		materials = {
			{
				itemId = 32156,
				amount = 18,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32134,
				amount = 1,
				clientId = 28702,
				name = "Harbinger Helmet"
			},
			{
				itemId = 41719,
				amount = 5,
				clientId = 38267,
				name = "Internal Padding"
			}
		}
	},
	{
		category = "armors",
		index = 48,
		clientId = 28712,
		amount = 1,
		itemId = 32144,
		quality = 100,
		name = "Enforcer Legs",
		experience = 11300,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "plate legs",
		tier = 4,
		level = {
			mass = 54,
			single = 49
		},
		materials = {
			{
				itemId = 32156,
				amount = 18,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32135,
				amount = 1,
				clientId = 28703,
				name = "Harbinger Legs"
			},
			{
				itemId = 41719,
				amount = 5,
				clientId = 38267,
				name = "Internal Padding"
			}
		}
	},
	{
		category = "armors",
		index = 49,
		clientId = 28708,
		amount = 1,
		itemId = 32140,
		quality = 100,
		name = "Enforcer Boots",
		experience = 11300,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "plate boots",
		tier = 4,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				itemId = 32156,
				amount = 18,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32131,
				amount = 1,
				clientId = 28699,
				name = "Harbinger Boots"
			},
			{
				itemId = 41719,
				amount = 5,
				clientId = 38267,
				name = "Internal Padding"
			}
		}
	},
	{
		category = "armors",
		index = 50,
		clientId = 28714,
		amount = 1,
		itemId = 32146,
		quality = 100,
		name = "Protector's Armor",
		experience = 24000,
		durability = 9,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "plate armor",
		tier = 5,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				itemId = 32157,
				amount = 26,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 5,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32137,
				amount = 1,
				clientId = 28705,
				name = "Enforcer Armor"
			},
			{
				itemId = 40959,
				amount = 6,
				clientId = 37507,
				name = "Ancient Ingot"
			}
		}
	},
	{
		category = "armors",
		index = 51,
		clientId = 28720,
		amount = 1,
		itemId = 32152,
		quality = 100,
		name = "Protector's Helmet",
		experience = 24000,
		durability = 9,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "plate helmet",
		tier = 5,
		level = {
			mass = 66,
			single = 61
		},
		materials = {
			{
				itemId = 32157,
				amount = 26,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 5,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32143,
				amount = 1,
				clientId = 28711,
				name = "Enforcer Helmet"
			},
			{
				itemId = 40959,
				amount = 6,
				clientId = 37507,
				name = "Ancient Ingot"
			}
		}
	},
	{
		category = "armors",
		index = 52,
		clientId = 28721,
		amount = 1,
		itemId = 32153,
		quality = 100,
		name = "Protector's Legs",
		experience = 24000,
		durability = 9,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "plate legs",
		tier = 5,
		level = {
			mass = 69,
			single = 64
		},
		materials = {
			{
				itemId = 32157,
				amount = 26,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 5,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32144,
				amount = 1,
				clientId = 28712,
				name = "Enforcer Legs"
			},
			{
				itemId = 40959,
				amount = 6,
				clientId = 37507,
				name = "Ancient Ingot"
			}
		}
	},
	{
		category = "armors",
		index = 53,
		clientId = 28717,
		amount = 1,
		itemId = 32149,
		quality = 100,
		name = "Protector's Boots",
		experience = 24000,
		durability = 9,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "plate boots",
		tier = 5,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				itemId = 32157,
				amount = 26,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 5,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32140,
				amount = 1,
				clientId = 28708,
				name = "Enforcer Boots"
			},
			{
				itemId = 40959,
				amount = 6,
				clientId = 37507,
				name = "Ancient Ingot"
			}
		}
	},
	{
		formatDescription = "quality",
		index = 54,
		clientId = 28426,
		slotName = "",
		quality = 50,
		progress = 75,
		durability = 4,
		experience = 180,
		amount = 1,
		description = "Increases Attack Power of your equipped weapon by {1} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		itemId = 31858,
		name = "whetstone",
		profession = 5,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				itemId = 32378,
				amount = 3,
				clientId = 28946,
				name = "stone"
			}
		}
	},
	{
		formatDescription = "quality",
		index = 55,
		clientId = 28427,
		slotName = "",
		quality = 150,
		progress = 175,
		durability = 6,
		experience = 480,
		amount = 1,
		description = "Increases Attack Power of your equipped weapon by {3} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		itemId = 31859,
		name = "coarse whetstone",
		profession = 5,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32378,
				amount = 6,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 1,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		formatDescription = "quality",
		index = 56,
		clientId = 35437,
		slotName = "",
		quality = 200,
		progress = 225,
		durability = 7,
		experience = 800,
		amount = 1,
		description = "Increases Attack Power of your equipped weapon by {5} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		itemId = 38869,
		name = "Heavy Whetstone",
		profession = 5,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				itemId = 32378,
				amount = 10,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 2,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		formatDescription = "quality",
		index = 57,
		clientId = 35438,
		slotName = "",
		quality = 325,
		progress = 350,
		durability = 8,
		experience = 1200,
		amount = 1,
		description = "Increases Attack Power of your equipped weapon by {7} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		itemId = 38870,
		name = "Solid Whetstone",
		profession = 5,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				itemId = 32378,
				amount = 15,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 3,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		formatDescription = "quality",
		index = 58,
		clientId = 28428,
		slotName = "",
		quality = 450,
		progress = 500,
		specialization = "Craftsman",
		experience = 2080,
		amount = 1,
		durability = 9,
		description = "Increases Attack Power of your equipped weapon by {10} for 30 minutes. This effect is doubled for two-handed weapons.",
		tier = -1,
		category = "whetstones",
		itemId = 31860,
		name = "dense whetstone",
		profession = 5,
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				itemId = 32378,
				amount = 25,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 5,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "fishing",
		index = 59,
		clientId = 28888,
		amount = 1,
		itemId = 32320,
		quality = 0,
		name = "copper fishing hook",
		experience = 800,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "fishing hook",
		tier = 1,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "fishing",
		index = 60,
		clientId = 28886,
		amount = 1,
		itemId = 32318,
		quality = 0,
		name = "complex fishing hook",
		experience = 1680,
		durability = 7,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "fishing hook",
		tier = 2,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				itemId = 32155,
				amount = 7,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32320,
				amount = 1,
				clientId = 28888,
				name = "copper fishing hook"
			}
		}
	},
	{
		category = "fishing",
		index = 61,
		clientId = 28884,
		amount = 1,
		itemId = 32316,
		quality = 0,
		name = "steel fishing hook",
		experience = 4800,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "fishing hook",
		tier = 3,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				itemId = 32156,
				amount = 15,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32318,
				amount = 1,
				clientId = 28886,
				name = "complex fishing hook"
			}
		}
	},
	{
		category = "fishing",
		index = 62,
		clientId = 28887,
		amount = 1,
		itemId = 32319,
		quality = 0,
		name = "cobalt fishing hook",
		experience = 11500,
		durability = 8,
		profession = 5,
		description = "",
		progress = 475,
		slotName = "fishing hook",
		tier = 4,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				itemId = 32157,
				amount = 25,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32316,
				amount = 1,
				clientId = 28884,
				name = "steel fishing hook"
			}
		}
	},
	{
		index = 63,
		amount = 1,
		category = "fishing",
		slotName = "fishing hook",
		quality = 0,
		progress = 600,
		specialization = "Craftsman",
		experience = 38400,
		durability = 9,
		description = "",
		tier = 5,
		clientId = 28885,
		itemId = 32317,
		name = "titanium fishing hook",
		profession = 5,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				itemId = 32159,
				amount = 60,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32319,
				amount = 1,
				clientId = 28887,
				name = "cobalt fishing hook"
			}
		}
	},
	{
		category = "weapons",
		index = 64,
		clientId = 37108,
		amount = 1,
		itemId = 40560,
		quality = 100,
		name = "Swashbuckler's Blade",
		experience = 4320,
		durability = 4,
		profession = 5,
		description = "",
		progress = 100,
		slotName = "light blade",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 6,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 6,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 40559,
				amount = 1,
				clientId = 37107,
				name = "Skirmisher's Blade"
			}
		}
	},
	{
		category = "weapons",
		index = 65,
		clientId = 37109,
		amount = 1,
		itemId = 40561,
		quality = 100,
		name = "Serpentine Blade",
		experience = 14400,
		durability = 6,
		profession = 5,
		description = "",
		progress = 200,
		slotName = "light blade",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 10,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 40560,
				amount = 1,
				clientId = 37108,
				name = "Swashbuckler's Blade"
			},
			{
				itemId = 40930,
				amount = 12,
				clientId = 37478,
				name = "Troll Fang"
			}
		}
	},
	{
		category = "weapons",
		index = 66,
		clientId = 37110,
		amount = 1,
		itemId = 40562,
		quality = 100,
		name = "Duelist's Companion",
		experience = 40000,
		durability = 7,
		profession = 5,
		description = "",
		progress = 350,
		slotName = "light blade",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32156,
				amount = 12,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 20,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 40561,
				amount = 1,
				clientId = 37109,
				name = "Serpentine Blade"
			},
			{
				itemId = 41717,
				amount = 20,
				clientId = 38265,
				name = "Cunning Handle"
			}
		}
	},
	{
		category = "weapons",
		index = 67,
		clientId = 37111,
		amount = 1,
		itemId = 40563,
		quality = 100,
		name = "Ornamented Saber",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "",
		progress = 525,
		slotName = "light blade",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 30,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 40562,
				amount = 1,
				clientId = 37110,
				name = "Duelist's Companion"
			},
			{
				itemId = 43732,
				amount = 24,
				clientId = 40280,
				name = "Twisted Blades"
			}
		}
	},
	{
		index = 68,
		amount = 1,
		category = "weapons",
		slotName = "sword",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 62000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37158,
		itemId = 40610,
		name = "Champion's Longsword",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 12,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 18,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32495,
				amount = 1,
				clientId = 29063,
				name = "Crusader's Longsword"
			},
			{
				itemId = 43719,
				amount = 16,
				clientId = 40267,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		index = 69,
		amount = 1,
		category = "weapons",
		slotName = "axe",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 62000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37154,
		itemId = 40606,
		name = "Dragonbane Axe",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 30,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 14,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32428,
				amount = 1,
				clientId = 28996,
				name = "Hellblade Axe"
			},
			{
				itemId = 43730,
				amount = 16,
				clientId = 40278,
				name = "Sturdy Joint"
			}
		}
	},
	{
		index = 70,
		amount = 1,
		category = "weapons",
		slotName = "club",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 62000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37156,
		itemId = 40608,
		name = "Skullbasher Mace",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 30,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 14,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32440,
				amount = 1,
				clientId = 29008,
				name = "Enforcer's Mace"
			},
			{
				itemId = 43727,
				amount = 16,
				clientId = 40275,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		index = 71,
		amount = 1,
		category = "weapons",
		slotName = "dagger",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 62000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37151,
		itemId = 40603,
		name = "Ritual Dagger",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 12,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 18,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32446,
				amount = 1,
				clientId = 29014,
				name = "Assassin's Dagger"
			},
			{
				itemId = 43729,
				amount = 16,
				clientId = 40277,
				name = "Sharp Edges"
			}
		}
	},
	{
		index = 73,
		amount = 1,
		category = "weapons",
		slotName = "light blade",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 124000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37112,
		itemId = 40564,
		name = "Scarlet Thorn",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 24,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 36,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 40563,
				amount = 1,
				clientId = 37111,
				name = "Ornamented Saber"
			},
			{
				itemId = 43729,
				amount = 32,
				clientId = 40277,
				name = "Sharp Edges"
			}
		}
	},
	{
		index = 74,
		amount = 1,
		category = "weapons",
		slotName = "greataxe",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 124000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37148,
		itemId = 40600,
		name = "Nocturnal Greataxe",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 60,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 28,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32415,
				amount = 1,
				clientId = 28983,
				name = "Orcish Battle Axe"
			},
			{
				itemId = 43730,
				amount = 32,
				clientId = 40278,
				name = "Sturdy Joint"
			}
		}
	},
	{
		index = 75,
		amount = 1,
		category = "weapons",
		slotName = "greatsword",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 124000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37153,
		itemId = 40605,
		name = "Magister's Greatsword",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 24,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 36,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32421,
				amount = 1,
				clientId = 28989,
				name = "Samurai's Daikatana"
			},
			{
				itemId = 43719,
				amount = 32,
				clientId = 40267,
				name = "Crude Runed Tip"
			}
		}
	},
	{
		index = 76,
		amount = 1,
		category = "weapons",
		slotName = "hammer",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Weaponsmith",
		experience = 124000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37152,
		itemId = 40604,
		name = "Soulwarden's Hammer",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 60,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 28,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32452,
				amount = 1,
				clientId = 29020,
				name = "Dwarven Warhammer"
			},
			{
				itemId = 43727,
				amount = 32,
				clientId = 40275,
				name = "Polished Plate Scraps"
			}
		}
	},
	{
		index = 77,
		amount = 1,
		category = "armors",
		slotName = "plate armor",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Armorsmith",
		experience = 33000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37143,
		itemId = 40595,
		name = "Chivalry Armor",
		profession = 5,
		level = {
			mass = 83,
			single = 78
		},
		materials = {
			{
				itemId = 32159,
				amount = 23,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 6,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32146,
				amount = 1,
				clientId = 28714,
				name = "Protector's Armor"
			},
			{
				itemId = 43728,
				amount = 8,
				clientId = 40276,
				name = "Reflective Husk"
			}
		}
	},
	{
		index = 78,
		amount = 1,
		category = "armors",
		slotName = "plate helmet",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Armorsmith",
		experience = 33000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37146,
		itemId = 40598,
		name = "Chivalry Helmet",
		profession = 5,
		level = {
			mass = 86,
			single = 81
		},
		materials = {
			{
				itemId = 32159,
				amount = 23,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 6,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32152,
				amount = 1,
				clientId = 28720,
				name = "Protector's Helmet"
			},
			{
				itemId = 43728,
				amount = 8,
				clientId = 40276,
				name = "Reflective Husk"
			}
		}
	},
	{
		index = 79,
		amount = 1,
		category = "armors",
		slotName = "plate legs",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Armorsmith",
		experience = 33000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37145,
		itemId = 40597,
		name = "Chivalry Legs",
		profession = 5,
		level = {
			mass = 89,
			single = 84
		},
		materials = {
			{
				itemId = 32159,
				amount = 23,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 6,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32153,
				amount = 1,
				clientId = 28721,
				name = "Protector's Legs"
			},
			{
				itemId = 43728,
				amount = 8,
				clientId = 40276,
				name = "Reflective Husk"
			}
		}
	},
	{
		index = 80,
		amount = 1,
		category = "armors",
		slotName = "plate boots",
		quality = 100,
		progress = 700,
		specialization = "Dwarven Armorsmith",
		experience = 33000,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37144,
		itemId = 40596,
		name = "Chivalry Boots",
		profession = 5,
		level = {
			mass = 92,
			single = 87
		},
		materials = {
			{
				itemId = 32159,
				amount = 23,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 6,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32149,
				amount = 1,
				clientId = 28717,
				name = "Protector's Boots"
			},
			{
				itemId = 43728,
				amount = 8,
				clientId = 40276,
				name = "Reflective Husk"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 81,
		clientId = 37234,
		amount = 1,
		itemId = 40686,
		quality = 0,
		name = "Forging Tools",
		experience = 54400,
		durability = 7,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 100,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 50,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32373,
				amount = 20,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 10,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 82,
		clientId = 37285,
		amount = 1,
		itemId = 40737,
		quality = 0,
		name = "Superior Forging Tools",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32156,
				amount = 80,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 70,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32373,
				amount = 30,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 15,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 83,
		clientId = 37220,
		amount = 1,
		itemId = 40672,
		quality = 0,
		name = "Artisan Forging Tools",
		experience = 116000,
		durability = 12,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 80,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 70,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32373,
				amount = 40,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 25,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 84,
		clientId = 37289,
		amount = 1,
		itemId = 40741,
		quality = 0,
		name = "Woodwork Tools",
		experience = 30400,
		durability = 7,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 80,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 35,
				clientId = 28724,
				name = "steel ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 85,
		clientId = 37236,
		amount = 1,
		itemId = 40688,
		quality = 0,
		name = "Improved Woodwork Tools",
		experience = 72000,
		durability = 12,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 100,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 40,
				clientId = 28727,
				name = "titanium ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 86,
		clientId = 37217,
		amount = 1,
		itemId = 40669,
		quality = 0,
		name = "Anvil",
		experience = 28000,
		durability = 7,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 70,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 35,
				clientId = 28724,
				name = "steel ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 87,
		clientId = 37233,
		amount = 1,
		itemId = 40685,
		quality = 0,
		name = "Forgemaster Anvil",
		experience = 66000,
		durability = 12,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 80,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 45,
				clientId = 28727,
				name = "titanium ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 88,
		clientId = 37235,
		amount = 1,
		itemId = 40687,
		quality = 0,
		name = "Furnace",
		experience = 10000,
		durability = 7,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32156,
				amount = 20,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32169,
				amount = 5,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 32378,
				amount = 20,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 10,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 89,
		clientId = 37232,
		amount = 1,
		itemId = 40684,
		quality = 0,
		name = "Forge",
		experience = 28800,
		durability = 12,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 40,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 10,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32169,
				amount = 5,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 32378,
				amount = 20,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 10,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 90,
		clientId = 37281,
		amount = 1,
		itemId = 40733,
		quality = 0,
		name = "Stove",
		experience = 24000,
		durability = 7,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 50,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 20,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32169,
				amount = 15,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 32373,
				amount = 10,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 32378,
				amount = 10,
				clientId = 28946,
				name = "stone"
			}
		}
	},
	{
		category = "Misc",
		index = 91,
		clientId = 28740,
		amount = 1,
		itemId = 32172,
		quality = 0,
		name = "reinforced plate",
		experience = 6000,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. The backbone of many structures in Ravendawn.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32155,
				amount = 15,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32175,
				amount = 15,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 43734,
				amount = 15,
				clientId = 40282,
				name = "Bolt"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 92,
		clientId = 37286,
		amount = 1,
		itemId = 40738,
		quality = 0,
		name = "Superior Stove",
		experience = 117000,
		durability = 8,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32156,
				amount = 100,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 50,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32169,
				amount = 30,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 32373,
				amount = 20,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 48958,
				amount = 35,
				clientId = 45506,
				name = "Sturdy Plank"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 93,
		clientId = 37221,
		amount = 1,
		itemId = 40673,
		quality = 0,
		name = "Artisan Stove",
		experience = 163000,
		durability = 12,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 100,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 80,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32169,
				amount = 40,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 32373,
				amount = 30,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 48958,
				amount = 35,
				clientId = 45506,
				name = "Sturdy Plank"
			}
		}
	},
	{
		category = "Ship Module",
		index = 94,
		clientId = 37260,
		amount = 1,
		itemId = 40712,
		quality = 0,
		name = "Minor Shielding Kit",
		experience = 88000,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 220,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 110,
				clientId = 28724,
				name = "steel ingot"
			}
		}
	},
	{
		category = "Ship Module",
		index = 95,
		clientId = 37282,
		amount = 1,
		itemId = 40734,
		quality = 0,
		name = "Sturdy Shielding Kit",
		experience = 332000,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32156,
				amount = 600,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 300,
				clientId = 28725,
				name = "cobalt ingot"
			}
		}
	},
	{
		category = "Ship Module",
		index = 96,
		clientId = 37263,
		amount = 1,
		itemId = 40715,
		quality = 0,
		name = "Reinforced Shielding Kit",
		experience = 705600,
		durability = 12,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32157,
				amount = 900,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 450,
				clientId = 28727,
				name = "titanium ingot"
			}
		}
	},
	{
		category = "Ship Module",
		index = 97,
		clientId = 37266,
		amount = 1,
		itemId = 40718,
		quality = 0,
		name = "Small Cannon Kit",
		experience = 32800,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 40,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 15,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32177,
				amount = 10,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 40681,
				amount = 2,
				clientId = 37229,
				name = "Common Wheel"
			}
		}
	},
	{
		category = "Ship Module",
		index = 98,
		clientId = 37268,
		amount = 1,
		itemId = 40720,
		quality = 0,
		name = "Simple Ship Emblems Kit",
		experience = 65840,
		durability = 6,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32155,
				amount = 220,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32373,
				amount = 50,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 40681,
				amount = 2,
				clientId = 37229,
				name = "Common Wheel"
			}
		}
	},
	{
		category = "Ship Module",
		index = 99,
		clientId = 37265,
		amount = 1,
		itemId = 40717,
		quality = 0,
		name = "Compound Ship Emblems Kit",
		experience = 134400,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32156,
				amount = 220,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 110,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43944,
				amount = 2,
				clientId = 40492,
				name = "Swift Wheel"
			}
		}
	},
	{
		category = "Ship Module",
		index = 100,
		clientId = 37218,
		amount = 1,
		itemId = 40670,
		quality = 0,
		name = "Complex Ship Emblems Kit",
		experience = 228000,
		durability = 12,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32157,
				amount = 220,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 110,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 40716,
				amount = 2,
				clientId = 37264,
				name = "Reinforced Wheel"
			}
		}
	},
	{
		category = "Ship Module",
		index = 101,
		clientId = 37223,
		amount = 1,
		itemId = 40675,
		quality = 0,
		name = "Basic Water Pumps Kit",
		experience = 37600,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32155,
				amount = 80,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 50,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32373,
				amount = 20,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Ship Module",
		index = 102,
		clientId = 37230,
		amount = 1,
		itemId = 40682,
		quality = 0,
		name = "Enhanced Water Pumps Kit",
		experience = 56000,
		durability = 7,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32156,
				amount = 220,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 110,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32373,
				amount = 40,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Ship Module",
		index = 103,
		clientId = 37261,
		amount = 1,
		itemId = 40713,
		quality = 0,
		name = "Pressurized Water Pumps Kit",
		experience = 180000,
		durability = 12,
		profession = 5,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32157,
				amount = 220,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 110,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32373,
				amount = 60,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Misc",
		index = 104,
		clientId = 28734,
		amount = 1,
		itemId = 32166,
		quality = 75,
		name = "nail",
		experience = 64,
		durability = 4,
		profession = 5,
		description = "Used in various recipes. A basic yet crucial component for construction.",
		progress = 50,
		slotName = "",
		tier = -1,
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				itemId = 32158,
				amount = 1,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "Misc",
		index = 105,
		clientId = 28737,
		amount = 1,
		itemId = 32169,
		quality = 225,
		name = "iron bar",
		experience = 240,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. Forged with strength and versatility in mind.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32155,
				amount = 1,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 106,
		clientId = 29004,
		amount = 1,
		itemId = 32436,
		quality = 100,
		name = "Solid Mace",
		experience = 800,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "club",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 107,
		clientId = 29059,
		amount = 1,
		itemId = 32491,
		quality = 100,
		name = "Rough Sword",
		experience = 800,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "sword",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 108,
		clientId = 28992,
		amount = 1,
		itemId = 32424,
		quality = 100,
		name = "Wicked Axe",
		experience = 800,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "axe",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 109,
		clientId = 29010,
		amount = 1,
		itemId = 32442,
		quality = 100,
		name = "Serrated Dagger",
		experience = 800,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "dagger",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 4,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 111,
		clientId = 28978,
		amount = 1,
		itemId = 32410,
		quality = 100,
		name = "Rough Greataxe",
		experience = 1600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "greataxe",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 112,
		clientId = 28985,
		amount = 1,
		itemId = 32417,
		quality = 100,
		name = "Burnished Greatsword",
		experience = 1600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "greatsword",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 113,
		clientId = 37107,
		amount = 1,
		itemId = 40559,
		quality = 100,
		name = "Skirmisher's Blade",
		experience = 1600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "light blade",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "weapons",
		index = 114,
		clientId = 29016,
		amount = 1,
		itemId = 32448,
		quality = 100,
		name = "Shipbuilding Mallet",
		experience = 1600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "hammer",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32158,
				amount = 8,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "armors",
		index = 115,
		clientId = 28678,
		amount = 1,
		itemId = 32110,
		quality = 100,
		name = "Pliant Armor",
		experience = 600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate armor",
		tier = 1,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "armors",
		index = 116,
		clientId = 28684,
		amount = 1,
		itemId = 32116,
		quality = 100,
		name = "Pliant Helmet",
		experience = 600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate helmet",
		tier = 1,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "armors",
		index = 117,
		clientId = 28685,
		amount = 1,
		itemId = 32117,
		quality = 100,
		name = "Pliant Legs",
		experience = 600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate legs",
		tier = 1,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "armors",
		index = 118,
		clientId = 28681,
		amount = 1,
		itemId = 32113,
		quality = 100,
		name = "Pliant Boots",
		experience = 600,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate boots",
		tier = 1,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			}
		}
	},
	{
		category = "Misc",
		index = 119,
		clientId = 40282,
		amount = 1,
		itemId = 43734,
		quality = 225,
		name = "Bolt",
		experience = 80,
		durability = 6,
		profession = 5,
		description = "Used in various recipes. A small piece, integral in connecting larger ones.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32155,
				amount = 1,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Misc",
		index = 120,
		clientId = 40284,
		amount = 1,
		itemId = 43736,
		quality = 400,
		name = "Steel Bar",
		experience = 215,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. Cold, hard, and unyielding - the essence of strength.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32156,
				amount = 2,
				clientId = 28724,
				name = "steel ingot"
			}
		}
	},
	{
		category = "Misc",
		index = 121,
		clientId = 40283,
		amount = 1,
		itemId = 43735,
		quality = 0,
		name = "Common Plate",
		experience = 2400,
		durability = 3,
		profession = 5,
		description = "Used in various recipes. A humble slab of metal, awaiting purpose.",
		progress = 50,
		slotName = "",
		tier = -1,
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				itemId = 32158,
				amount = 10,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 32176,
				amount = 10,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32166,
				amount = 10,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 122,
		clientId = 41850,
		amount = 1,
		itemId = 45302,
		quality = 0,
		name = "Stone Block",
		experience = 400,
		durability = 4,
		profession = 5,
		description = "Used in various recipes. Solid building material, ideal for constructing robust houses.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32378,
				amount = 20,
				clientId = 28946,
				name = "stone"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 123,
		clientId = 41846,
		amount = 1,
		itemId = 45298,
		quality = 0,
		name = "Dense Block",
		experience = 880,
		durability = 7,
		profession = 5,
		description = "Used in various recipes. Massive construction material painstakingly hewn from solid stone.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32378,
				amount = 40,
				clientId = 28946,
				name = "stone"
			},
			{
				itemId = 32373,
				amount = 2,
				clientId = 28941,
				name = "coal"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 124,
		clientId = 41849,
		amount = 1,
		itemId = 45301,
		quality = 0,
		name = "Royal Ornaments",
		experience = 24000,
		durability = 8,
		profession = 5,
		description = "Used in various recipes. Formed by skillfully combining an array of precious gems, radiating elegance.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32380,
				amount = 1,
				clientId = 28948,
				name = "amethyst"
			},
			{
				itemId = 32381,
				amount = 1,
				clientId = 28949,
				name = "citrine"
			},
			{
				itemId = 32384,
				amount = 1,
				clientId = 28952,
				name = "sapphire"
			},
			{
				itemId = 32382,
				amount = 1,
				clientId = 28950,
				name = "emerald"
			},
			{
				itemId = 32383,
				amount = 1,
				clientId = 28951,
				name = "ruby"
			},
			{
				itemId = 32385,
				amount = 1,
				clientId = 28953,
				name = "topaz"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 125,
		clientId = 42778,
		amount = 1,
		itemId = 46230,
		quality = 0,
		name = "Copper Anvil",
		experience = 8500,
		durability = 4,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 75,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32158,
				amount = 30,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 126,
		clientId = 42784,
		amount = 1,
		itemId = 46236,
		quality = 0,
		name = "Basic Tools",
		experience = 4300,
		durability = 3,
		profession = 5,
		description = "Used in housing upgrades.",
		progress = 50,
		slotName = "",
		tier = -1,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				itemId = 32158,
				amount = 10,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 32176,
				amount = 4,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "Moa Equipment",
		index = 127,
		clientId = 43238,
		amount = 1,
		itemId = 46690,
		quality = 0,
		name = "Simple Headgear",
		experience = 4400,
		durability = 7,
		profession = 5,
		description = "Together with 'Simple Saddle' can be crafted into a 'Simple Barding'.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 17,
			single = 12
		},
		materials = {
			{
				itemId = 32158,
				amount = 10,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 38864,
				amount = 4,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "Moa Equipment",
		index = 128,
		clientId = 43239,
		amount = 1,
		itemId = 46691,
		quality = 0,
		name = "Composed Headgear",
		experience = 7520,
		durability = 7,
		profession = 5,
		description = "Together with 'Composed Saddle' can be crafted into a 'Composed Barding'.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				itemId = 32155,
				amount = 11,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38864,
				amount = 8,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "Moa Equipment",
		index = 129,
		clientId = 43240,
		amount = 1,
		itemId = 46692,
		quality = 0,
		name = "Advanced Headgear",
		experience = 13200,
		durability = 7,
		profession = 5,
		description = "Together with 'Advanced Saddle' can be crafted into a 'Advanced Barding'.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				itemId = 32155,
				amount = 20,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 38865,
				amount = 7,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Moa Equipment",
		index = 130,
		clientId = 43241,
		amount = 1,
		itemId = 46693,
		quality = 0,
		name = "Artisan Headgear",
		experience = 40000,
		durability = 8,
		profession = 5,
		description = "Together with 'Artisan Saddle' can be crafted into a 'Artisan Barding'.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				itemId = 32156,
				amount = 25,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 38866,
				amount = 17,
				clientId = 35434,
				name = "Tanned Leather"
			}
		}
	},
	{
		category = "Moa Equipment",
		index = 131,
		clientId = 43242,
		amount = 1,
		itemId = 46694,
		quality = 0,
		name = "Superior Headgear",
		experience = 52000,
		durability = 9,
		profession = 5,
		description = "Together with 'Superior Saddle' can be crafted into a 'Superior Barding'.",
		progress = 650,
		slotName = "",
		tier = -1,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				itemId = 32157,
				amount = 25,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 38867,
				amount = 17,
				clientId = 35435,
				name = "Merchant's Leather"
			}
		}
	},
	{
		index = 132,
		amount = 1,
		category = "Moa Equipment",
		slotName = "",
		quality = 0,
		progress = 750,
		specialization = "Craftsman",
		experience = 172000,
		durability = 12,
		description = "Together with 'War Saddle' can be crafted into a 'War Barding'.",
		tier = -1,
		clientId = 43243,
		itemId = 46695,
		name = "War Headgear",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 22,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 12,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32383,
				amount = 10,
				clientId = 28951,
				name = "ruby"
			}
		}
	},
	{
		index = 133,
		amount = 1,
		category = "Moa Equipment",
		slotName = "",
		quality = 0,
		progress = 750,
		specialization = "Craftsman",
		experience = 172000,
		durability = 12,
		description = "Together with 'Explorer Saddle' can be crafted into a 'Explorer Barding'.",
		tier = -1,
		clientId = 43244,
		itemId = 46696,
		name = "Explorer Headgear",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 22,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 12,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32384,
				amount = 10,
				clientId = 28952,
				name = "sapphire"
			}
		}
	},
	{
		index = 134,
		amount = 1,
		category = "Moa Equipment",
		slotName = "",
		quality = 0,
		progress = 750,
		specialization = "Craftsman",
		experience = 172000,
		durability = 12,
		description = "Together with 'Professional Saddle' can be crafted into a 'Professional Barding'.",
		tier = -1,
		clientId = 43245,
		itemId = 46697,
		name = "Professional Headgear",
		profession = 5,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32159,
				amount = 22,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 38868,
				amount = 12,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32385,
				amount = 10,
				clientId = 28953,
				name = "topaz"
			}
		}
	},
	{
		category = "Ship Module",
		index = 135,
		clientId = 43637,
		amount = 1,
		itemId = 47089,
		quality = 0,
		name = "Medium Cannon Kit",
		experience = 73600,
		durability = 7,
		profession = 5,
		description = "",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32155,
				amount = 150,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 100,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 43736,
				amount = 2,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 40681,
				amount = 2,
				clientId = 37229,
				name = "Common Wheel"
			}
		}
	},
	{
		category = "Ship Module",
		index = 136,
		clientId = 43636,
		amount = 1,
		itemId = 47088,
		quality = 0,
		name = "Large Cannon Kit",
		experience = 100000,
		durability = 9,
		profession = 5,
		description = "",
		progress = 650,
		slotName = "",
		tier = -1,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				itemId = 32156,
				amount = 150,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 100,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43736,
				amount = 2,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 40681,
				amount = 2,
				clientId = 37229,
				name = "Common Wheel"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 137,
		clientId = 47288,
		amount = 1,
		itemId = 50741,
		quality = 0,
		name = "Weak Racks",
		experience = 28000,
		durability = 4,
		profession = 5,
		description = "Used for housing craft.",
		progress = 75,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32155,
				amount = 70,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 35,
				clientId = 28724,
				name = "steel ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 138,
		clientId = 47276,
		amount = 1,
		itemId = 50729,
		quality = 0,
		name = "Armory Racks",
		experience = 66000,
		durability = 7,
		profession = 5,
		description = "Used for housing craft.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32157,
				amount = 80,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 45,
				clientId = 28727,
				name = "titanium ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 139,
		clientId = 47281,
		amount = 1,
		itemId = 50734,
		quality = 0,
		name = "Reinforced Racks",
		experience = 8500,
		durability = 12,
		profession = 5,
		description = "Used for housing craft.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32158,
				amount = 30,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 32155,
				amount = 10,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 140,
		clientId = 47279,
		amount = 1,
		itemId = 50732,
		quality = 0,
		name = "Gear Maintenance Tools",
		experience = 80000,
		durability = 8,
		profession = 5,
		description = "Used for housing craft.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32156,
				amount = 80,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 70,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32373,
				amount = 30,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 15,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 141,
		clientId = 47283,
		amount = 1,
		itemId = 50736,
		quality = 0,
		name = "Thief Tools",
		experience = 116000,
		durability = 12,
		profession = 5,
		description = "Used for housing craft.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 80,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 70,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32373,
				amount = 40,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 25,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 142,
		clientId = 47287,
		amount = 1,
		itemId = 50740,
		quality = 0,
		name = "Warmonger Tools",
		experience = 116000,
		durability = 12,
		profession = 5,
		description = "Used for housing craft.",
		progress = 700,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32157,
				amount = 80,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 70,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32373,
				amount = 40,
				clientId = 28941,
				name = "coal"
			},
			{
				itemId = 38865,
				amount = 25,
				clientId = 35433,
				name = "Craftman's Leather"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionBlacksmithing] = {
	{
		category = "quest",
		index = 1,
		clientId = 28985,
		amount = 1,
		itemId = 32417,
		quality = 50,
		name = "Burnished Greatsword",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "greatsword",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 4,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 4,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 2,
		clientId = 29059,
		amount = 1,
		itemId = 32491,
		quality = 50,
		name = "Rough Sword",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "sword",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 2,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 3,
		clientId = 28992,
		amount = 1,
		itemId = 32424,
		quality = 50,
		name = "Wicked Axe",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "axe",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 3,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 4,
		clientId = 29004,
		amount = 1,
		itemId = 32436,
		quality = 50,
		name = "Solid Mace",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "club",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 3,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 5,
		clientId = 29010,
		amount = 1,
		itemId = 32442,
		quality = 50,
		name = "Serrated Dagger",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "dagger",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 2,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 7,
		clientId = 28978,
		amount = 1,
		itemId = 32410,
		quality = 50,
		name = "Rough Greataxe",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "greataxe",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 6,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 8,
		clientId = 29016,
		amount = 1,
		itemId = 32448,
		quality = 50,
		name = "Shipbuilding Mallet",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "hammer",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 6,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 2,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 9,
		clientId = 28678,
		amount = 1,
		itemId = 32110,
		quality = 50,
		name = "Pliant Armor",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate armor",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38878,
				amount = 1,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38879,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 10,
		clientId = 28684,
		amount = 1,
		itemId = 32116,
		quality = 50,
		name = "Pliant Helmet",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate helmet",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38882,
				amount = 1,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38883,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 11,
		clientId = 28685,
		amount = 1,
		itemId = 32117,
		quality = 50,
		name = "Pliant Legs",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate legs",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38886,
				amount = 1,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38887,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 12,
		clientId = 28681,
		amount = 1,
		itemId = 32113,
		quality = 50,
		name = "Pliant Boots",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "plate boots",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38890,
				amount = 1,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38891,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	},
	{
		category = "quest",
		index = 13,
		clientId = 37107,
		amount = 1,
		itemId = 40559,
		quality = 50,
		name = "Skirmisher's Blade",
		experience = 0,
		durability = 3,
		profession = 5,
		description = "",
		progress = 50,
		slotName = "light blade",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38874,
				amount = 4,
				clientId = 28726,
				name = "Copper Ingot"
			},
			{
				itemId = 38875,
				amount = 4,
				clientId = 35432,
				name = "Coarse Leather"
			}
		}
	}
}

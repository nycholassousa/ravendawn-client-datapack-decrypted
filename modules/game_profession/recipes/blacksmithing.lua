-- chunkname: @/modules/game_profession/recipes/blacksmithing.lua

recipes = recipes or {}
recipes[ProfessionBlacksmithing] = {
	{
		clientId = 28726,
		amount = 1,
		index = 1,
		category = "ingots",
		progress = 25,
		itemId = 32158,
		quality = 75,
		slotName = "",
		name = "copper ingot",
		experience = 200,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Symbolizes malleability and conductivity.",
		durability = 4,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ore",
				clientId = 28944,
				amount = 5,
				itemId = 32376
			}
		}
	},
	{
		clientId = 28723,
		amount = 1,
		index = 2,
		category = "ingots",
		progress = 150,
		itemId = 32155,
		quality = 150,
		slotName = "",
		name = "iron ingot",
		experience = 240,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. A versatile metallic ingot.",
		durability = 7,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "iron ore",
				clientId = 28943,
				amount = 5,
				itemId = 32375
			}
		}
	},
	{
		clientId = 28724,
		amount = 1,
		index = 3,
		category = "ingots",
		progress = 225,
		itemId = 32156,
		quality = 200,
		slotName = "",
		name = "steel ingot",
		experience = 320,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Forged from a mix of metals.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ore",
				clientId = 28943,
				amount = 5,
				itemId = 32375
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 2,
				itemId = 32373
			}
		}
	},
	{
		clientId = 28725,
		amount = 1,
		index = 4,
		category = "ingots",
		progress = 450,
		itemId = 32157,
		quality = 450,
		slotName = "",
		name = "cobalt ingot",
		experience = 460,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. A rare blue-hued metal.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "cobalt ore",
				clientId = 28942,
				amount = 5,
				itemId = 32374
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 3,
				itemId = 32373
			}
		}
	},
	{
		clientId = 28727,
		amount = 1,
		index = 5,
		category = "ingots",
		progress = 550,
		itemId = 32159,
		quality = 550,
		slotName = "",
		name = "titanium ingot",
		experience = 640,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Lightweight yet sturdy, resilient and versatile.",
		durability = 9,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "titanium ore",
				clientId = 28947,
				amount = 5,
				itemId = 32379
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 4,
				itemId = 32373
			}
		}
	},
	{
		clientId = 29060,
		amount = 1,
		index = 6,
		category = "weapons",
		progress = 100,
		itemId = 32492,
		quality = 100,
		slotName = "sword",
		name = "Warden's Sword",
		experience = 2160,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38864
			},
			{
				name = "Rough Sword",
				clientId = 29059,
				amount = 1,
				itemId = 32491
			}
		}
	},
	{
		clientId = 28993,
		amount = 1,
		index = 7,
		category = "weapons",
		progress = 100,
		itemId = 32425,
		quality = 100,
		slotName = "axe",
		name = "Marauder's Axe",
		experience = 2160,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 3,
				itemId = 38864
			},
			{
				name = "Wicked Axe",
				clientId = 28992,
				amount = 1,
				itemId = 32424
			}
		}
	},
	{
		clientId = 29005,
		amount = 1,
		index = 8,
		category = "weapons",
		progress = 100,
		itemId = 32437,
		quality = 100,
		slotName = "club",
		name = "Studded Flail",
		experience = 2160,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 3,
				itemId = 38864
			},
			{
				name = "Solid Mace",
				clientId = 29004,
				amount = 1,
				itemId = 32436
			}
		}
	},
	{
		clientId = 29011,
		amount = 1,
		index = 9,
		category = "weapons",
		progress = 100,
		itemId = 32443,
		quality = 100,
		slotName = "dagger",
		name = "Noble Dagger",
		experience = 2160,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38864
			},
			{
				name = "Serrated Dagger",
				clientId = 29010,
				amount = 1,
				itemId = 32442
			}
		}
	},
	{
		clientId = 28980,
		amount = 1,
		index = 11,
		category = "weapons",
		progress = 100,
		itemId = 32412,
		quality = 100,
		slotName = "greataxe",
		name = "Warrior's Greataxe",
		experience = 4320,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 4,
				itemId = 38864
			},
			{
				name = "Rough Greataxe",
				clientId = 28978,
				amount = 1,
				itemId = 32410
			}
		}
	},
	{
		clientId = 28986,
		amount = 1,
		index = 12,
		category = "weapons",
		progress = 100,
		itemId = 32418,
		quality = 100,
		slotName = "greatsword",
		name = "Valiant Greatsword",
		experience = 4320,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 6,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 6,
				itemId = 38864
			},
			{
				name = "Burnished Greatsword",
				clientId = 28985,
				amount = 1,
				itemId = 32417
			}
		}
	},
	{
		clientId = 29017,
		amount = 1,
		index = 13,
		category = "weapons",
		progress = 100,
		itemId = 32449,
		quality = 100,
		slotName = "hammer",
		name = "Crushing Hammer",
		experience = 4320,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 4,
				itemId = 38864
			},
			{
				name = "Shipbuilding Mallet",
				clientId = 29016,
				amount = 1,
				itemId = 32448
			}
		}
	},
	{
		clientId = 29061,
		amount = 1,
		index = 14,
		category = "weapons",
		progress = 200,
		itemId = 32493,
		quality = 100,
		slotName = "sword",
		name = "Lawbreaker's Sword",
		experience = 7200,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 5,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 5,
				itemId = 38865
			},
			{
				name = "Warden's Sword",
				clientId = 29060,
				amount = 1,
				itemId = 32492
			},
			{
				name = "Troll Fang",
				clientId = 37478,
				amount = 6,
				itemId = 40930
			}
		}
	},
	{
		clientId = 28994,
		amount = 1,
		index = 15,
		category = "weapons",
		progress = 200,
		itemId = 32426,
		quality = 100,
		slotName = "axe",
		name = "Dread Axe",
		experience = 7200,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 4,
				itemId = 38865
			},
			{
				name = "Marauder's Axe",
				clientId = 28993,
				amount = 1,
				itemId = 32425
			},
			{
				name = "Sea Cured Leather",
				clientId = 43212,
				amount = 6,
				itemId = 46664
			}
		}
	},
	{
		clientId = 29006,
		amount = 1,
		index = 16,
		category = "weapons",
		progress = 200,
		itemId = 32438,
		quality = 100,
		slotName = "club",
		name = "Shieldbreaker's Flail",
		experience = 7200,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 4,
				itemId = 38865
			},
			{
				name = "Studded Flail",
				clientId = 29005,
				amount = 1,
				itemId = 32437
			},
			{
				name = "Sea Cured Leather",
				clientId = 43212,
				amount = 6,
				itemId = 46664
			}
		}
	},
	{
		clientId = 29012,
		amount = 1,
		index = 17,
		category = "weapons",
		progress = 200,
		itemId = 32444,
		quality = 100,
		slotName = "dagger",
		name = "Ice Dagger",
		experience = 7200,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 5,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 5,
				itemId = 38865
			},
			{
				name = "Noble Dagger",
				clientId = 29011,
				amount = 1,
				itemId = 32443
			},
			{
				name = "Troll Fang",
				clientId = 37478,
				amount = 6,
				itemId = 40930
			}
		}
	},
	{
		clientId = 28981,
		amount = 1,
		index = 19,
		category = "weapons",
		progress = 200,
		itemId = 32413,
		quality = 100,
		slotName = "greataxe",
		name = "Savage Battle Axe",
		experience = 14400,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 20,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 8,
				itemId = 38865
			},
			{
				name = "Warrior's Greataxe",
				clientId = 28980,
				amount = 1,
				itemId = 32412
			},
			{
				name = "Sea Cured Leather",
				clientId = 43212,
				amount = 12,
				itemId = 46664
			}
		}
	},
	{
		clientId = 28987,
		amount = 1,
		index = 20,
		category = "weapons",
		progress = 200,
		itemId = 32419,
		quality = 100,
		slotName = "greatsword",
		name = "Heroic Greatsword",
		experience = 14400,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 10,
				itemId = 38865
			},
			{
				name = "Valiant Greatsword",
				clientId = 28986,
				amount = 1,
				itemId = 32418
			},
			{
				name = "Troll Fang",
				clientId = 37478,
				amount = 12,
				itemId = 40930
			}
		}
	},
	{
		clientId = 29018,
		amount = 1,
		index = 21,
		category = "weapons",
		progress = 200,
		itemId = 32450,
		quality = 100,
		slotName = "hammer",
		name = "Punisher's Gavel",
		experience = 14400,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 20,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 8,
				itemId = 38865
			},
			{
				name = "Crushing Hammer",
				clientId = 29017,
				amount = 1,
				itemId = 32449
			},
			{
				name = "Sea Cured Leather",
				clientId = 43212,
				amount = 12,
				itemId = 46664
			}
		}
	},
	{
		clientId = 29062,
		amount = 1,
		index = 22,
		category = "weapons",
		progress = 350,
		itemId = 32494,
		quality = 100,
		slotName = "sword",
		name = "Guardian's Longsword",
		experience = 20000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 7,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 10,
				itemId = 38866
			},
			{
				name = "Lawbreaker's Sword",
				clientId = 29061,
				amount = 1,
				itemId = 32493
			},
			{
				name = "Thin Blade",
				clientId = 38268,
				amount = 10,
				itemId = 41720
			}
		}
	},
	{
		clientId = 28995,
		amount = 1,
		index = 23,
		category = "weapons",
		progress = 350,
		itemId = 32427,
		quality = 100,
		slotName = "axe",
		name = "Stormcarver Axe",
		experience = 20000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 16,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 8,
				itemId = 38866
			},
			{
				name = "Dread Axe",
				clientId = 28994,
				amount = 1,
				itemId = 32426
			},
			{
				name = "Metallic Core",
				clientId = 38272,
				amount = 10,
				itemId = 41724
			}
		}
	},
	{
		clientId = 29007,
		amount = 1,
		index = 24,
		category = "weapons",
		progress = 350,
		itemId = 32439,
		quality = 100,
		slotName = "club",
		name = "Ravenguard Morningstar",
		experience = 20000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 16,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 8,
				itemId = 38866
			},
			{
				name = "Shieldbreaker's Flail",
				clientId = 29006,
				amount = 1,
				itemId = 32438
			},
			{
				name = "Rough Steel Plate",
				clientId = 37483,
				amount = 10,
				itemId = 40935
			}
		}
	},
	{
		clientId = 29013,
		amount = 1,
		index = 25,
		category = "weapons",
		progress = 350,
		itemId = 32445,
		quality = 100,
		slotName = "dagger",
		name = "Heartstopper Dagger",
		experience = 20000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 7,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 10,
				itemId = 38866
			},
			{
				name = "Ice Dagger",
				clientId = 29012,
				amount = 1,
				itemId = 32444
			},
			{
				name = "Cunning Handle",
				clientId = 38265,
				amount = 10,
				itemId = 41717
			}
		}
	},
	{
		clientId = 28982,
		amount = 1,
		index = 27,
		category = "weapons",
		progress = 350,
		itemId = 32414,
		quality = 100,
		slotName = "greataxe",
		name = "Hangman's Greataxe",
		experience = 40000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 25,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 17,
				itemId = 38866
			},
			{
				name = "Savage Battle Axe",
				clientId = 28981,
				amount = 1,
				itemId = 32413
			},
			{
				name = "Metallic Core",
				clientId = 38272,
				amount = 20,
				itemId = 41724
			}
		}
	},
	{
		clientId = 28988,
		amount = 1,
		index = 28,
		category = "weapons",
		progress = 350,
		itemId = 32420,
		quality = 100,
		slotName = "greatsword",
		name = "Bonebiter Greatsword",
		experience = 40000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 12,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 20,
				itemId = 38866
			},
			{
				name = "Heroic Greatsword",
				clientId = 28987,
				amount = 1,
				itemId = 32419
			},
			{
				name = "Thin Blade",
				clientId = 38268,
				amount = 20,
				itemId = 41720
			}
		}
	},
	{
		clientId = 29019,
		amount = 1,
		index = 29,
		category = "weapons",
		progress = 350,
		itemId = 32451,
		quality = 100,
		slotName = "hammer",
		name = "Lawgiver's Warhammer",
		experience = 40000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 25,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 17,
				itemId = 38866
			},
			{
				name = "Punisher's Gavel",
				clientId = 29018,
				amount = 1,
				itemId = 32450
			},
			{
				name = "Rough Steel Plate",
				clientId = 37483,
				amount = 20,
				itemId = 40935
			}
		}
	},
	{
		clientId = 29063,
		amount = 1,
		index = 30,
		category = "weapons",
		progress = 525,
		itemId = 32495,
		quality = 100,
		slotName = "sword",
		name = "Crusader's Longsword",
		experience = 40000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 10,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 15,
				itemId = 38867
			},
			{
				name = "Guardian's Longsword",
				clientId = 29062,
				amount = 1,
				itemId = 32494
			},
			{
				name = "Ancient Metallic Scrap",
				clientId = 40265,
				amount = 12,
				itemId = 43717
			}
		}
	},
	{
		clientId = 28996,
		amount = 1,
		index = 31,
		category = "weapons",
		progress = 525,
		itemId = 32428,
		quality = 100,
		slotName = "axe",
		name = "Hellblade Axe",
		experience = 40000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 30,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 11,
				itemId = 38867
			},
			{
				name = "Stormcarver Axe",
				clientId = 28995,
				amount = 1,
				itemId = 32427
			},
			{
				name = "Cutting Edge Scrap",
				clientId = 40268,
				amount = 12,
				itemId = 43720
			}
		}
	},
	{
		clientId = 29008,
		amount = 1,
		index = 32,
		category = "weapons",
		progress = 525,
		itemId = 32440,
		quality = 100,
		slotName = "club",
		name = "Enforcer's Mace",
		experience = 40000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 30,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 11,
				itemId = 38867
			},
			{
				name = "Ravenguard Morningstar",
				clientId = 29007,
				amount = 1,
				itemId = 32439
			},
			{
				name = "Heavy Metal Chunks",
				clientId = 40274,
				amount = 12,
				itemId = 43726
			}
		}
	},
	{
		clientId = 29014,
		amount = 1,
		index = 33,
		category = "weapons",
		progress = 525,
		itemId = 32446,
		quality = 100,
		slotName = "dagger",
		name = "Assassin's Dagger",
		experience = 40000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 10,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 15,
				itemId = 38867
			},
			{
				name = "Heartstopper Dagger",
				clientId = 29013,
				amount = 1,
				itemId = 32445
			},
			{
				name = "Twisted Blades",
				clientId = 40280,
				amount = 12,
				itemId = 43732
			}
		}
	},
	{
		clientId = 28983,
		amount = 1,
		index = 35,
		category = "weapons",
		progress = 525,
		itemId = 32415,
		quality = 100,
		slotName = "greataxe",
		name = "Orcish Battle Axe",
		experience = 80000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 60,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 22,
				itemId = 38867
			},
			{
				name = "Hangman's Greataxe",
				clientId = 28982,
				amount = 1,
				itemId = 32414
			},
			{
				name = "Cutting Edge Scrap",
				clientId = 40268,
				amount = 24,
				itemId = 43720
			}
		}
	},
	{
		clientId = 28989,
		amount = 1,
		index = 36,
		category = "weapons",
		progress = 525,
		itemId = 32421,
		quality = 100,
		slotName = "greatsword",
		name = "Samurai's Daikatana",
		experience = 80000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 30,
				itemId = 38867
			},
			{
				name = "Bonebiter Greatsword",
				clientId = 28988,
				amount = 1,
				itemId = 32420
			},
			{
				name = "Ancient Metallic Scrap",
				clientId = 40265,
				amount = 24,
				itemId = 43717
			}
		}
	},
	{
		clientId = 29020,
		amount = 1,
		index = 37,
		category = "weapons",
		progress = 525,
		itemId = 32452,
		quality = 100,
		slotName = "hammer",
		name = "Dwarven Warhammer",
		experience = 80000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 60,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 22,
				itemId = 38867
			},
			{
				name = "Lawgiver's Warhammer",
				clientId = 29019,
				amount = 1,
				itemId = 32451
			},
			{
				name = "Heavy Metal Chunks",
				clientId = 40274,
				amount = 24,
				itemId = 43726
			}
		}
	},
	{
		clientId = 28687,
		amount = 1,
		index = 38,
		category = "armors",
		progress = 100,
		itemId = 32119,
		quality = 100,
		slotName = "plate armor",
		name = "Crescent Armor",
		experience = 1200,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			},
			{
				name = "Pliant Armor",
				clientId = 28678,
				amount = 1,
				itemId = 32110
			}
		}
	},
	{
		clientId = 28688,
		amount = 1,
		index = 39,
		category = "armors",
		progress = 100,
		itemId = 32120,
		quality = 100,
		slotName = "plate helmet",
		name = "Crescent Helmet",
		experience = 1200,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			},
			{
				name = "Pliant Helmet",
				clientId = 28684,
				amount = 1,
				itemId = 32116
			}
		}
	},
	{
		clientId = 28691,
		amount = 1,
		index = 40,
		category = "armors",
		progress = 100,
		itemId = 32123,
		quality = 100,
		slotName = "plate legs",
		name = "Crescent Legs",
		experience = 1200,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			},
			{
				name = "Pliant Legs",
				clientId = 28685,
				amount = 1,
				itemId = 32117
			}
		}
	},
	{
		clientId = 28695,
		amount = 1,
		index = 41,
		category = "armors",
		progress = 100,
		itemId = 32127,
		quality = 100,
		slotName = "plate boots",
		name = "Crescent Boots",
		experience = 1200,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			},
			{
				name = "Pliant Boots",
				clientId = 28681,
				amount = 1,
				itemId = 32113
			}
		}
	},
	{
		clientId = 28696,
		amount = 1,
		index = 42,
		category = "armors",
		progress = 200,
		itemId = 32128,
		quality = 100,
		slotName = "plate armor",
		name = "Harbinger Armor",
		experience = 6000,
		profession = 5,
		tier = 3,
		description = "",
		durability = 7,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 3,
				itemId = 38865
			},
			{
				name = "Crescent Armor",
				clientId = 28687,
				amount = 1,
				itemId = 32119
			},
			{
				name = "Shell Fragment",
				clientId = 37479,
				amount = 3,
				itemId = 40931
			}
		}
	},
	{
		clientId = 28702,
		amount = 1,
		index = 43,
		category = "armors",
		progress = 200,
		itemId = 32134,
		quality = 100,
		slotName = "plate helmet",
		name = "Harbinger Helmet",
		experience = 6000,
		profession = 5,
		tier = 3,
		description = "",
		durability = 7,
		level = {
			mass = 36,
			single = 31
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 3,
				itemId = 38865
			},
			{
				name = "Crescent Helmet",
				clientId = 28688,
				amount = 1,
				itemId = 32120
			},
			{
				name = "Shell Fragment",
				clientId = 37479,
				amount = 3,
				itemId = 40931
			}
		}
	},
	{
		clientId = 28703,
		amount = 1,
		index = 44,
		category = "armors",
		progress = 200,
		itemId = 32135,
		quality = 100,
		slotName = "plate legs",
		name = "Harbinger Legs",
		experience = 6000,
		profession = 5,
		tier = 3,
		description = "",
		durability = 7,
		level = {
			mass = 39,
			single = 34
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 3,
				itemId = 38865
			},
			{
				name = "Crescent Legs",
				clientId = 28691,
				amount = 1,
				itemId = 32123
			},
			{
				name = "Shell Fragment",
				clientId = 37479,
				amount = 3,
				itemId = 40931
			}
		}
	},
	{
		clientId = 28699,
		amount = 1,
		index = 45,
		category = "armors",
		progress = 200,
		itemId = 32131,
		quality = 100,
		slotName = "plate boots",
		name = "Harbinger Boots",
		experience = 6000,
		profession = 5,
		tier = 3,
		description = "",
		durability = 7,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 3,
				itemId = 38865
			},
			{
				name = "Crescent Boots",
				clientId = 28695,
				amount = 1,
				itemId = 32127
			},
			{
				name = "Shell Fragment",
				clientId = 37479,
				amount = 3,
				itemId = 40931
			}
		}
	},
	{
		clientId = 28705,
		amount = 1,
		index = 46,
		category = "armors",
		progress = 350,
		itemId = 32137,
		quality = 100,
		slotName = "plate armor",
		name = "Enforcer Armor",
		experience = 11300,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 18,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 3,
				itemId = 38866
			},
			{
				name = "Harbinger Armor",
				clientId = 28696,
				amount = 1,
				itemId = 32128
			},
			{
				name = "Internal Padding",
				clientId = 38267,
				amount = 5,
				itemId = 41719
			}
		}
	},
	{
		clientId = 28711,
		amount = 1,
		index = 47,
		category = "armors",
		progress = 350,
		itemId = 32143,
		quality = 100,
		slotName = "plate helmet",
		name = "Enforcer Helmet",
		experience = 11300,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 51,
			single = 46
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 18,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 3,
				itemId = 38866
			},
			{
				name = "Harbinger Helmet",
				clientId = 28702,
				amount = 1,
				itemId = 32134
			},
			{
				name = "Internal Padding",
				clientId = 38267,
				amount = 5,
				itemId = 41719
			}
		}
	},
	{
		clientId = 28712,
		amount = 1,
		index = 48,
		category = "armors",
		progress = 350,
		itemId = 32144,
		quality = 100,
		slotName = "plate legs",
		name = "Enforcer Legs",
		experience = 11300,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 54,
			single = 49
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 18,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 3,
				itemId = 38866
			},
			{
				name = "Harbinger Legs",
				clientId = 28703,
				amount = 1,
				itemId = 32135
			},
			{
				name = "Internal Padding",
				clientId = 38267,
				amount = 5,
				itemId = 41719
			}
		}
	},
	{
		clientId = 28708,
		amount = 1,
		index = 49,
		category = "armors",
		progress = 350,
		itemId = 32140,
		quality = 100,
		slotName = "plate boots",
		name = "Enforcer Boots",
		experience = 11300,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 18,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 3,
				itemId = 38866
			},
			{
				name = "Harbinger Boots",
				clientId = 28699,
				amount = 1,
				itemId = 32131
			},
			{
				name = "Internal Padding",
				clientId = 38267,
				amount = 5,
				itemId = 41719
			}
		}
	},
	{
		clientId = 28714,
		amount = 1,
		index = 50,
		category = "armors",
		progress = 525,
		itemId = 32146,
		quality = 100,
		slotName = "plate armor",
		name = "Protector's Armor",
		experience = 24000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 26,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 5,
				itemId = 38867
			},
			{
				name = "Enforcer Armor",
				clientId = 28705,
				amount = 1,
				itemId = 32137
			},
			{
				name = "Ancient Ingot",
				clientId = 37507,
				amount = 6,
				itemId = 40959
			}
		}
	},
	{
		clientId = 28720,
		amount = 1,
		index = 51,
		category = "armors",
		progress = 525,
		itemId = 32152,
		quality = 100,
		slotName = "plate helmet",
		name = "Protector's Helmet",
		experience = 24000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 66,
			single = 61
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 26,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 5,
				itemId = 38867
			},
			{
				name = "Enforcer Helmet",
				clientId = 28711,
				amount = 1,
				itemId = 32143
			},
			{
				name = "Ancient Ingot",
				clientId = 37507,
				amount = 6,
				itemId = 40959
			}
		}
	},
	{
		clientId = 28721,
		amount = 1,
		index = 52,
		category = "armors",
		progress = 525,
		itemId = 32153,
		quality = 100,
		slotName = "plate legs",
		name = "Protector's Legs",
		experience = 24000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 69,
			single = 64
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 26,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 5,
				itemId = 38867
			},
			{
				name = "Enforcer Legs",
				clientId = 28712,
				amount = 1,
				itemId = 32144
			},
			{
				name = "Ancient Ingot",
				clientId = 37507,
				amount = 6,
				itemId = 40959
			}
		}
	},
	{
		clientId = 28717,
		amount = 1,
		index = 53,
		category = "armors",
		progress = 525,
		itemId = 32149,
		quality = 100,
		slotName = "plate boots",
		name = "Protector's Boots",
		experience = 24000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 26,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 5,
				itemId = 38867
			},
			{
				name = "Enforcer Boots",
				clientId = 28708,
				amount = 1,
				itemId = 32140
			},
			{
				name = "Ancient Ingot",
				clientId = 37507,
				amount = 6,
				itemId = 40959
			}
		}
	},
	{
		name = "whetstone",
		quality = 50,
		tier = -1,
		profession = 5,
		clientId = 28426,
		itemId = 31858,
		slotName = "",
		experience = 180,
		progress = 75,
		durability = 4,
		amount = 1,
		index = 54,
		category = "whetstones",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {1} for 30 minutes. This effect is doubled for two-handed weapons.",
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 3,
				itemId = 32378
			}
		}
	},
	{
		name = "coarse whetstone",
		quality = 150,
		tier = -1,
		profession = 5,
		clientId = 28427,
		itemId = 31859,
		slotName = "",
		experience = 480,
		progress = 175,
		durability = 6,
		amount = 1,
		index = 55,
		category = "whetstones",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {3} for 30 minutes. This effect is doubled for two-handed weapons.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 6,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 1,
				itemId = 32373
			}
		}
	},
	{
		name = "Heavy Whetstone",
		quality = 200,
		tier = -1,
		profession = 5,
		clientId = 35437,
		itemId = 38869,
		slotName = "",
		experience = 800,
		progress = 225,
		durability = 7,
		amount = 1,
		index = 56,
		category = "whetstones",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {5} for 30 minutes. This effect is doubled for two-handed weapons.",
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 10,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 2,
				itemId = 32373
			}
		}
	},
	{
		name = "Solid Whetstone",
		quality = 325,
		tier = -1,
		profession = 5,
		clientId = 35438,
		itemId = 38870,
		slotName = "",
		experience = 1200,
		progress = 350,
		durability = 8,
		amount = 1,
		index = 57,
		category = "whetstones",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {7} for 30 minutes. This effect is doubled for two-handed weapons.",
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 15,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 3,
				itemId = 32373
			}
		}
	},
	{
		name = "dense whetstone",
		quality = 450,
		tier = -1,
		specialization = "Craftsman",
		clientId = 28428,
		profession = 5,
		itemId = 31860,
		slotName = "",
		experience = 2080,
		progress = 500,
		durability = 9,
		amount = 1,
		index = 58,
		category = "whetstones",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {10} for 30 minutes. This effect is doubled for two-handed weapons.",
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 25,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 5,
				itemId = 32373
			}
		}
	},
	{
		clientId = 28888,
		amount = 1,
		index = 59,
		category = "fishing",
		progress = 100,
		itemId = 32320,
		quality = 0,
		slotName = "fishing hook",
		name = "copper fishing hook",
		experience = 800,
		profession = 5,
		tier = 1,
		description = "",
		durability = 4,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28886,
		amount = 1,
		index = 60,
		category = "fishing",
		progress = 200,
		itemId = 32318,
		quality = 0,
		slotName = "fishing hook",
		name = "complex fishing hook",
		experience = 1680,
		profession = 5,
		tier = 2,
		description = "",
		durability = 7,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 7,
				itemId = 32155
			},
			{
				name = "copper fishing hook",
				clientId = 28888,
				amount = 1,
				itemId = 32320
			}
		}
	},
	{
		clientId = 28884,
		amount = 1,
		index = 61,
		category = "fishing",
		progress = 350,
		itemId = 32316,
		quality = 0,
		slotName = "fishing hook",
		name = "steel fishing hook",
		experience = 4800,
		profession = 5,
		tier = 3,
		description = "",
		durability = 7,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 15,
				itemId = 32156
			},
			{
				name = "complex fishing hook",
				clientId = 28886,
				amount = 1,
				itemId = 32318
			}
		}
	},
	{
		clientId = 28887,
		amount = 1,
		index = 62,
		category = "fishing",
		progress = 475,
		itemId = 32319,
		quality = 0,
		slotName = "fishing hook",
		name = "cobalt fishing hook",
		experience = 11500,
		profession = 5,
		tier = 4,
		description = "",
		durability = 8,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 25,
				itemId = 32157
			},
			{
				name = "steel fishing hook",
				clientId = 28884,
				amount = 1,
				itemId = 32316
			}
		}
	},
	{
		slotName = "fishing hook",
		quality = 0,
		tier = 5,
		progress = 600,
		clientId = 28885,
		itemId = 32317,
		specialization = "Craftsman",
		name = "titanium fishing hook",
		experience = 38400,
		profession = 5,
		durability = 9,
		amount = 1,
		index = 63,
		category = "fishing",
		description = "",
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 60,
				itemId = 32159
			},
			{
				name = "cobalt fishing hook",
				clientId = 28887,
				amount = 1,
				itemId = 32319
			}
		}
	},
	{
		clientId = 37108,
		amount = 1,
		index = 64,
		category = "weapons",
		progress = 100,
		itemId = 40560,
		quality = 100,
		slotName = "light blade",
		name = "Swashbuckler's Blade",
		experience = 4320,
		profession = 5,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 6,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 6,
				itemId = 38864
			},
			{
				name = "Skirmisher's Blade",
				clientId = 37107,
				amount = 1,
				itemId = 40559
			}
		}
	},
	{
		clientId = 37109,
		amount = 1,
		index = 65,
		category = "weapons",
		progress = 200,
		itemId = 40561,
		quality = 100,
		slotName = "light blade",
		name = "Serpentine Blade",
		experience = 14400,
		profession = 5,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 10,
				itemId = 38865
			},
			{
				name = "Swashbuckler's Blade",
				clientId = 37108,
				amount = 1,
				itemId = 40560
			},
			{
				name = "Troll Fang",
				clientId = 37478,
				amount = 12,
				itemId = 40930
			}
		}
	},
	{
		clientId = 37110,
		amount = 1,
		index = 66,
		category = "weapons",
		progress = 350,
		itemId = 40562,
		quality = 100,
		slotName = "light blade",
		name = "Duelist's Companion",
		experience = 40000,
		profession = 5,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 12,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 20,
				itemId = 38866
			},
			{
				name = "Serpentine Blade",
				clientId = 37109,
				amount = 1,
				itemId = 40561
			},
			{
				name = "Cunning Handle",
				clientId = 38265,
				amount = 20,
				itemId = 41717
			}
		}
	},
	{
		clientId = 37111,
		amount = 1,
		index = 67,
		category = "weapons",
		progress = 525,
		itemId = 40563,
		quality = 100,
		slotName = "light blade",
		name = "Ornamented Saber",
		experience = 80000,
		profession = 5,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 30,
				itemId = 38867
			},
			{
				name = "Duelist's Companion",
				clientId = 37110,
				amount = 1,
				itemId = 40562
			},
			{
				name = "Twisted Blades",
				clientId = 40280,
				amount = 24,
				itemId = 43732
			}
		}
	},
	{
		slotName = "sword",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37158,
		itemId = 40610,
		specialization = "Dwarven Weaponsmith",
		name = "Champion's Longsword",
		experience = 62000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 68,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 12,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 18,
				itemId = 38868
			},
			{
				name = "Crusader's Longsword",
				clientId = 29063,
				amount = 1,
				itemId = 32495
			},
			{
				name = "Crude Runed Tip",
				clientId = 40267,
				amount = 16,
				itemId = 43719
			}
		}
	},
	{
		slotName = "axe",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37154,
		itemId = 40606,
		specialization = "Dwarven Weaponsmith",
		name = "Dragonbane Axe",
		experience = 62000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 69,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 30,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 14,
				itemId = 38868
			},
			{
				name = "Hellblade Axe",
				clientId = 28996,
				amount = 1,
				itemId = 32428
			},
			{
				name = "Sturdy Joint",
				clientId = 40278,
				amount = 16,
				itemId = 43730
			}
		}
	},
	{
		slotName = "club",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37156,
		itemId = 40608,
		specialization = "Dwarven Weaponsmith",
		name = "Skullbasher Mace",
		experience = 62000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 70,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 30,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 14,
				itemId = 38868
			},
			{
				name = "Enforcer's Mace",
				clientId = 29008,
				amount = 1,
				itemId = 32440
			},
			{
				name = "Polished Plate Scraps",
				clientId = 40275,
				amount = 16,
				itemId = 43727
			}
		}
	},
	{
		slotName = "dagger",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37151,
		itemId = 40603,
		specialization = "Dwarven Weaponsmith",
		name = "Ritual Dagger",
		experience = 62000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 71,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 12,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 18,
				itemId = 38868
			},
			{
				name = "Assassin's Dagger",
				clientId = 29014,
				amount = 1,
				itemId = 32446
			},
			{
				name = "Sharp Edges",
				clientId = 40277,
				amount = 16,
				itemId = 43729
			}
		}
	},
	{
		slotName = "light blade",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37112,
		itemId = 40564,
		specialization = "Dwarven Weaponsmith",
		name = "Scarlet Thorn",
		experience = 124000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 73,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 24,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 36,
				itemId = 38868
			},
			{
				name = "Ornamented Saber",
				clientId = 37111,
				amount = 1,
				itemId = 40563
			},
			{
				name = "Sharp Edges",
				clientId = 40277,
				amount = 32,
				itemId = 43729
			}
		}
	},
	{
		slotName = "greataxe",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37148,
		itemId = 40600,
		specialization = "Dwarven Weaponsmith",
		name = "Nocturnal Greataxe",
		experience = 124000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 74,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 60,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 28,
				itemId = 38868
			},
			{
				name = "Orcish Battle Axe",
				clientId = 28983,
				amount = 1,
				itemId = 32415
			},
			{
				name = "Sturdy Joint",
				clientId = 40278,
				amount = 32,
				itemId = 43730
			}
		}
	},
	{
		slotName = "greatsword",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37153,
		itemId = 40605,
		specialization = "Dwarven Weaponsmith",
		name = "Magister's Greatsword",
		experience = 124000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 75,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 24,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 36,
				itemId = 38868
			},
			{
				name = "Samurai's Daikatana",
				clientId = 28989,
				amount = 1,
				itemId = 32421
			},
			{
				name = "Crude Runed Tip",
				clientId = 40267,
				amount = 32,
				itemId = 43719
			}
		}
	},
	{
		slotName = "hammer",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37152,
		itemId = 40604,
		specialization = "Dwarven Weaponsmith",
		name = "Soulwarden's Hammer",
		experience = 124000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 76,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 60,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 28,
				itemId = 38868
			},
			{
				name = "Dwarven Warhammer",
				clientId = 29020,
				amount = 1,
				itemId = 32452
			},
			{
				name = "Polished Plate Scraps",
				clientId = 40275,
				amount = 32,
				itemId = 43727
			}
		}
	},
	{
		slotName = "plate armor",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37143,
		itemId = 40595,
		specialization = "Dwarven Armorsmith",
		name = "Chivalry Armor",
		experience = 33000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 77,
		category = "armors",
		description = "",
		level = {
			mass = 83,
			single = 78
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 23,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 6,
				itemId = 38868
			},
			{
				name = "Protector's Armor",
				clientId = 28714,
				amount = 1,
				itemId = 32146
			},
			{
				name = "Reflective Husk",
				clientId = 40276,
				amount = 8,
				itemId = 43728
			}
		}
	},
	{
		slotName = "plate helmet",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37146,
		itemId = 40598,
		specialization = "Dwarven Armorsmith",
		name = "Chivalry Helmet",
		experience = 33000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 78,
		category = "armors",
		description = "",
		level = {
			mass = 86,
			single = 81
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 23,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 6,
				itemId = 38868
			},
			{
				name = "Protector's Helmet",
				clientId = 28720,
				amount = 1,
				itemId = 32152
			},
			{
				name = "Reflective Husk",
				clientId = 40276,
				amount = 8,
				itemId = 43728
			}
		}
	},
	{
		slotName = "plate legs",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37145,
		itemId = 40597,
		specialization = "Dwarven Armorsmith",
		name = "Chivalry Legs",
		experience = 33000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 79,
		category = "armors",
		description = "",
		level = {
			mass = 89,
			single = 84
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 23,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 6,
				itemId = 38868
			},
			{
				name = "Protector's Legs",
				clientId = 28721,
				amount = 1,
				itemId = 32153
			},
			{
				name = "Reflective Husk",
				clientId = 40276,
				amount = 8,
				itemId = 43728
			}
		}
	},
	{
		slotName = "plate boots",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37144,
		itemId = 40596,
		specialization = "Dwarven Armorsmith",
		name = "Chivalry Boots",
		experience = 33000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 80,
		category = "armors",
		description = "",
		level = {
			mass = 92,
			single = 87
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 23,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 6,
				itemId = 38868
			},
			{
				name = "Protector's Boots",
				clientId = 28717,
				amount = 1,
				itemId = 32149
			},
			{
				name = "Reflective Husk",
				clientId = 40276,
				amount = 8,
				itemId = 43728
			}
		}
	},
	{
		clientId = 37234,
		amount = 1,
		index = 81,
		category = "Housing Craft",
		progress = 350,
		itemId = 40686,
		quality = 0,
		slotName = "",
		name = "Forging Tools",
		experience = 54400,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 100,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 50,
				itemId = 32156
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 20,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 10,
				itemId = 38865
			}
		}
	},
	{
		clientId = 37285,
		amount = 1,
		index = 82,
		category = "Housing Craft",
		progress = 525,
		itemId = 40737,
		quality = 0,
		slotName = "",
		name = "Superior Forging Tools",
		experience = 80000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 80,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 70,
				itemId = 32157
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 30,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 15,
				itemId = 38865
			}
		}
	},
	{
		clientId = 37220,
		amount = 1,
		index = 83,
		category = "Housing Craft",
		progress = 700,
		itemId = 40672,
		quality = 0,
		slotName = "",
		name = "Artisan Forging Tools",
		experience = 116000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 80,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 70,
				itemId = 32159
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 40,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 25,
				itemId = 38865
			}
		}
	},
	{
		clientId = 37289,
		amount = 1,
		index = 84,
		category = "Housing Craft",
		progress = 350,
		itemId = 40741,
		quality = 0,
		slotName = "",
		name = "Woodwork Tools",
		experience = 30400,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 80,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 35,
				itemId = 32156
			}
		}
	},
	{
		clientId = 37236,
		amount = 1,
		index = 85,
		category = "Housing Craft",
		progress = 700,
		itemId = 40688,
		quality = 0,
		slotName = "",
		name = "Improved Woodwork Tools",
		experience = 72000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 100,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 40,
				itemId = 32159
			}
		}
	},
	{
		clientId = 37217,
		amount = 1,
		index = 86,
		category = "Housing Craft",
		progress = 350,
		itemId = 40669,
		quality = 0,
		slotName = "",
		name = "Anvil",
		experience = 28000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 70,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 35,
				itemId = 32156
			}
		}
	},
	{
		clientId = 37233,
		amount = 1,
		index = 87,
		category = "Housing Craft",
		progress = 700,
		itemId = 40685,
		quality = 0,
		slotName = "",
		name = "Forgemaster Anvil",
		experience = 66000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 80,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 45,
				itemId = 32159
			}
		}
	},
	{
		clientId = 37235,
		amount = 1,
		index = 88,
		category = "Housing Craft",
		progress = 350,
		itemId = 40687,
		quality = 0,
		slotName = "",
		name = "Furnace",
		experience = 10000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 20,
				itemId = 32156
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 5,
				itemId = 32169
			},
			{
				name = "stone",
				clientId = 28946,
				amount = 20,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 10,
				itemId = 32373
			}
		}
	},
	{
		clientId = 37232,
		amount = 1,
		index = 89,
		category = "Housing Craft",
		progress = 700,
		itemId = 40684,
		quality = 0,
		slotName = "",
		name = "Forge",
		experience = 28800,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 40,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 10,
				itemId = 32159
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 5,
				itemId = 32169
			},
			{
				name = "stone",
				clientId = 28946,
				amount = 20,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 10,
				itemId = 32373
			}
		}
	},
	{
		clientId = 37281,
		amount = 1,
		index = 90,
		category = "Housing Craft",
		progress = 350,
		itemId = 40733,
		quality = 0,
		slotName = "",
		name = "Stove",
		experience = 24000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 50,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 20,
				itemId = 32156
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 15,
				itemId = 32169
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 10,
				itemId = 32373
			},
			{
				name = "stone",
				clientId = 28946,
				amount = 10,
				itemId = 32378
			}
		}
	},
	{
		clientId = 28740,
		amount = 1,
		index = 91,
		category = "Misc",
		progress = 200,
		itemId = 32172,
		quality = 0,
		slotName = "",
		name = "reinforced plate",
		experience = 6000,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. The backbone of many structures in Ravendawn.",
		durability = 7,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 15,
				itemId = 32155
			},
			{
				name = "refined plank",
				clientId = 28743,
				amount = 15,
				itemId = 32175
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 15,
				itemId = 43734
			}
		}
	},
	{
		clientId = 37286,
		amount = 1,
		index = 92,
		category = "Housing Craft",
		progress = 525,
		itemId = 40738,
		quality = 0,
		slotName = "",
		name = "Superior Stove",
		experience = 117000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 100,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 50,
				itemId = 32157
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 30,
				itemId = 32169
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 20,
				itemId = 32373
			},
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 35,
				itemId = 48958
			}
		}
	},
	{
		clientId = 37221,
		amount = 1,
		index = 93,
		category = "Housing Craft",
		progress = 700,
		itemId = 40673,
		quality = 0,
		slotName = "",
		name = "Artisan Stove",
		experience = 163000,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 100,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 80,
				itemId = 32159
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 40,
				itemId = 32169
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 30,
				itemId = 32373
			},
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 35,
				itemId = 48958
			}
		}
	},
	{
		clientId = 37260,
		amount = 1,
		index = 94,
		category = "Ship Module",
		progress = 350,
		itemId = 40712,
		quality = 0,
		slotName = "",
		name = "Minor Shielding Kit",
		experience = 88000,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 220,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 110,
				itemId = 32156
			}
		}
	},
	{
		clientId = 37282,
		amount = 1,
		index = 95,
		category = "Ship Module",
		progress = 500,
		itemId = 40734,
		quality = 0,
		slotName = "",
		name = "Sturdy Shielding Kit",
		experience = 332000,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 600,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 300,
				itemId = 32157
			}
		}
	},
	{
		clientId = 37263,
		amount = 1,
		index = 96,
		category = "Ship Module",
		progress = 700,
		itemId = 40715,
		quality = 0,
		slotName = "",
		name = "Reinforced Shielding Kit",
		experience = 705600,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 12,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 900,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 450,
				itemId = 32159
			}
		}
	},
	{
		clientId = 37266,
		amount = 1,
		index = 97,
		category = "Ship Module",
		progress = 350,
		itemId = 40718,
		quality = 0,
		slotName = "",
		name = "Small Cannon Kit",
		experience = 32800,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 40,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 15,
				itemId = 32156
			},
			{
				name = "treated plank",
				clientId = 28745,
				amount = 10,
				itemId = 32177
			},
			{
				name = "Common Wheel",
				clientId = 37229,
				amount = 2,
				itemId = 40681
			}
		}
	},
	{
		clientId = 37268,
		amount = 1,
		index = 98,
		category = "Ship Module",
		progress = 225,
		itemId = 40720,
		quality = 0,
		slotName = "",
		name = "Simple Ship Emblems Kit",
		experience = 65840,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 6,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 220,
				itemId = 32155
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 50,
				itemId = 32373
			},
			{
				name = "Common Wheel",
				clientId = 37229,
				amount = 2,
				itemId = 40681
			}
		}
	},
	{
		clientId = 37265,
		amount = 1,
		index = 99,
		category = "Ship Module",
		progress = 500,
		itemId = 40717,
		quality = 0,
		slotName = "",
		name = "Compound Ship Emblems Kit",
		experience = 134400,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 220,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 110,
				itemId = 32157
			},
			{
				name = "Swift Wheel",
				clientId = 40492,
				amount = 2,
				itemId = 43944
			}
		}
	},
	{
		clientId = 37218,
		amount = 1,
		index = 100,
		category = "Ship Module",
		progress = 700,
		itemId = 40670,
		quality = 0,
		slotName = "",
		name = "Complex Ship Emblems Kit",
		experience = 228000,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 12,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 220,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 110,
				itemId = 32159
			},
			{
				name = "Reinforced Wheel",
				clientId = 37264,
				amount = 2,
				itemId = 40716
			}
		}
	},
	{
		clientId = 37223,
		amount = 1,
		index = 101,
		category = "Ship Module",
		progress = 350,
		itemId = 40675,
		quality = 0,
		slotName = "",
		name = "Basic Water Pumps Kit",
		experience = 37600,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 80,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 50,
				itemId = 32156
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 20,
				itemId = 32373
			}
		}
	},
	{
		clientId = 37230,
		amount = 1,
		index = 102,
		category = "Ship Module",
		progress = 500,
		itemId = 40682,
		quality = 0,
		slotName = "",
		name = "Enhanced Water Pumps Kit",
		experience = 56000,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 220,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 110,
				itemId = 32157
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 40,
				itemId = 32373
			}
		}
	},
	{
		clientId = 37261,
		amount = 1,
		index = 103,
		category = "Ship Module",
		progress = 700,
		itemId = 40713,
		quality = 0,
		slotName = "",
		name = "Pressurized Water Pumps Kit",
		experience = 180000,
		profession = 5,
		tier = -1,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		durability = 12,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 220,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 110,
				itemId = 32159
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 60,
				itemId = 32373
			}
		}
	},
	{
		clientId = 28734,
		amount = 1,
		index = 104,
		category = "Misc",
		progress = 50,
		itemId = 32166,
		quality = 75,
		slotName = "",
		name = "nail",
		experience = 64,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. A basic yet crucial component for construction.",
		durability = 4,
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 1,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28737,
		amount = 1,
		index = 105,
		category = "Misc",
		progress = 200,
		itemId = 32169,
		quality = 225,
		slotName = "",
		name = "iron bar",
		experience = 240,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Forged with strength and versatility in mind.",
		durability = 7,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 1,
				itemId = 32155
			}
		}
	},
	{
		clientId = 29004,
		amount = 1,
		index = 106,
		category = "weapons",
		progress = 50,
		itemId = 32436,
		quality = 100,
		slotName = "club",
		name = "Solid Mace",
		experience = 800,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			}
		}
	},
	{
		clientId = 29059,
		amount = 1,
		index = 107,
		category = "weapons",
		progress = 50,
		itemId = 32491,
		quality = 100,
		slotName = "sword",
		name = "Rough Sword",
		experience = 800,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28992,
		amount = 1,
		index = 108,
		category = "weapons",
		progress = 50,
		itemId = 32424,
		quality = 100,
		slotName = "axe",
		name = "Wicked Axe",
		experience = 800,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			}
		}
	},
	{
		clientId = 29010,
		amount = 1,
		index = 109,
		category = "weapons",
		progress = 50,
		itemId = 32442,
		quality = 100,
		slotName = "dagger",
		name = "Serrated Dagger",
		experience = 800,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 4,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28978,
		amount = 1,
		index = 111,
		category = "weapons",
		progress = 50,
		itemId = 32410,
		quality = 100,
		slotName = "greataxe",
		name = "Rough Greataxe",
		experience = 1600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28985,
		amount = 1,
		index = 112,
		category = "weapons",
		progress = 50,
		itemId = 32417,
		quality = 100,
		slotName = "greatsword",
		name = "Burnished Greatsword",
		experience = 1600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			}
		}
	},
	{
		clientId = 37107,
		amount = 1,
		index = 113,
		category = "weapons",
		progress = 50,
		itemId = 40559,
		quality = 100,
		slotName = "light blade",
		name = "Skirmisher's Blade",
		experience = 1600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			}
		}
	},
	{
		clientId = 29016,
		amount = 1,
		index = 114,
		category = "weapons",
		progress = 50,
		itemId = 32448,
		quality = 100,
		slotName = "hammer",
		name = "Shipbuilding Mallet",
		experience = 1600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 8,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28678,
		amount = 1,
		index = 115,
		category = "armors",
		progress = 50,
		itemId = 32110,
		quality = 100,
		slotName = "plate armor",
		name = "Pliant Armor",
		experience = 600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28684,
		amount = 1,
		index = 116,
		category = "armors",
		progress = 50,
		itemId = 32116,
		quality = 100,
		slotName = "plate helmet",
		name = "Pliant Helmet",
		experience = 600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28685,
		amount = 1,
		index = 117,
		category = "armors",
		progress = 50,
		itemId = 32117,
		quality = 100,
		slotName = "plate legs",
		name = "Pliant Legs",
		experience = 600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			}
		}
	},
	{
		clientId = 28681,
		amount = 1,
		index = 118,
		category = "armors",
		progress = 50,
		itemId = 32113,
		quality = 100,
		slotName = "plate boots",
		name = "Pliant Boots",
		experience = 600,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			}
		}
	},
	{
		clientId = 40282,
		amount = 1,
		index = 119,
		category = "Misc",
		progress = 200,
		itemId = 43734,
		quality = 225,
		slotName = "",
		name = "Bolt",
		experience = 80,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. A small piece, integral in connecting larger ones.",
		durability = 6,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 1,
				itemId = 32155
			}
		}
	},
	{
		clientId = 40284,
		amount = 1,
		index = 120,
		category = "Misc",
		progress = 350,
		itemId = 43736,
		quality = 400,
		slotName = "",
		name = "Steel Bar",
		experience = 215,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Cold, hard, and unyielding - the essence of strength.",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 2,
				itemId = 32156
			}
		}
	},
	{
		clientId = 40283,
		amount = 1,
		index = 121,
		category = "Misc",
		progress = 50,
		itemId = 43735,
		quality = 0,
		slotName = "",
		name = "Common Plate",
		experience = 2400,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. A humble slab of metal, awaiting purpose.",
		durability = 3,
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 10,
				itemId = 32158
			},
			{
				name = "rough plank",
				clientId = 28744,
				amount = 10,
				itemId = 32176
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 10,
				itemId = 32166
			}
		}
	},
	{
		clientId = 41850,
		amount = 1,
		index = 122,
		category = "Housing Craft",
		progress = 100,
		itemId = 45302,
		quality = 0,
		slotName = "",
		name = "Stone Block",
		experience = 400,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Solid building material, ideal for constructing robust houses.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 20,
				itemId = 32378
			}
		}
	},
	{
		clientId = 41846,
		amount = 1,
		index = 123,
		category = "Housing Craft",
		progress = 225,
		itemId = 45298,
		quality = 0,
		slotName = "",
		name = "Dense Block",
		experience = 880,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Massive construction material painstakingly hewn from solid stone.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "stone",
				clientId = 28946,
				amount = 40,
				itemId = 32378
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 2,
				itemId = 32373
			}
		}
	},
	{
		clientId = 41849,
		amount = 1,
		index = 124,
		category = "Housing Craft",
		progress = 450,
		itemId = 45301,
		quality = 0,
		slotName = "",
		name = "Royal Ornaments",
		experience = 24000,
		profession = 5,
		tier = -1,
		description = "Used in various recipes. Formed by skillfully combining an array of precious gems, radiating elegance.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "amethyst",
				clientId = 28948,
				amount = 1,
				itemId = 32380
			},
			{
				name = "citrine",
				clientId = 28949,
				amount = 1,
				itemId = 32381
			},
			{
				name = "sapphire",
				clientId = 28952,
				amount = 1,
				itemId = 32384
			},
			{
				name = "emerald",
				clientId = 28950,
				amount = 1,
				itemId = 32382
			},
			{
				name = "ruby",
				clientId = 28951,
				amount = 1,
				itemId = 32383
			},
			{
				name = "topaz",
				clientId = 28953,
				amount = 1,
				itemId = 32385
			}
		}
	},
	{
		clientId = 42778,
		amount = 1,
		index = 125,
		category = "Housing Craft",
		progress = 75,
		itemId = 46230,
		quality = 0,
		slotName = "",
		name = "Copper Anvil",
		experience = 8500,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 30,
				itemId = 32158
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			}
		}
	},
	{
		clientId = 42784,
		amount = 1,
		index = 126,
		category = "Housing Craft",
		progress = 50,
		itemId = 46236,
		quality = 0,
		slotName = "",
		name = "Basic Tools",
		experience = 4300,
		profession = 5,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 3,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 10,
				itemId = 32158
			},
			{
				name = "rough plank",
				clientId = 28744,
				amount = 4,
				itemId = 32176
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			}
		}
	},
	{
		clientId = 43238,
		amount = 1,
		index = 127,
		category = "Moa Equipment",
		progress = 200,
		itemId = 46690,
		quality = 0,
		slotName = "",
		name = "Simple Headgear",
		experience = 4400,
		profession = 5,
		tier = -1,
		description = "Together with 'Simple Saddle' can be crafted into a 'Simple Barding'.",
		durability = 7,
		level = {
			mass = 17,
			single = 12
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 10,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 4,
				itemId = 38864
			}
		}
	},
	{
		clientId = 43239,
		amount = 1,
		index = 128,
		category = "Moa Equipment",
		progress = 200,
		itemId = 46691,
		quality = 0,
		slotName = "",
		name = "Composed Headgear",
		experience = 7520,
		profession = 5,
		tier = -1,
		description = "Together with 'Composed Saddle' can be crafted into a 'Composed Barding'.",
		durability = 7,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 11,
				itemId = 32155
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 8,
				itemId = 38864
			}
		}
	},
	{
		clientId = 43240,
		amount = 1,
		index = 129,
		category = "Moa Equipment",
		progress = 350,
		itemId = 46692,
		quality = 0,
		slotName = "",
		name = "Advanced Headgear",
		experience = 13200,
		profession = 5,
		tier = -1,
		description = "Together with 'Advanced Saddle' can be crafted into a 'Advanced Barding'.",
		durability = 7,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 20,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 7,
				itemId = 38865
			}
		}
	},
	{
		clientId = 43241,
		amount = 1,
		index = 130,
		category = "Moa Equipment",
		progress = 525,
		itemId = 46693,
		quality = 0,
		slotName = "",
		name = "Artisan Headgear",
		experience = 40000,
		profession = 5,
		tier = -1,
		description = "Together with 'Artisan Saddle' can be crafted into a 'Artisan Barding'.",
		durability = 8,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 25,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 17,
				itemId = 38866
			}
		}
	},
	{
		clientId = 43242,
		amount = 1,
		index = 131,
		category = "Moa Equipment",
		progress = 650,
		itemId = 46694,
		quality = 0,
		slotName = "",
		name = "Superior Headgear",
		experience = 52000,
		profession = 5,
		tier = -1,
		description = "Together with 'Superior Saddle' can be crafted into a 'Superior Barding'.",
		durability = 9,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 25,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 17,
				itemId = 38867
			}
		}
	},
	{
		slotName = "",
		quality = 0,
		tier = -1,
		progress = 750,
		clientId = 43243,
		itemId = 46695,
		specialization = "Craftsman",
		name = "War Headgear",
		experience = 172000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 132,
		category = "Moa Equipment",
		description = "Together with 'War Saddle' can be crafted into a 'War Barding'.",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 22,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 12,
				itemId = 38868
			},
			{
				name = "ruby",
				clientId = 28951,
				amount = 10,
				itemId = 32383
			}
		}
	},
	{
		slotName = "",
		quality = 0,
		tier = -1,
		progress = 750,
		clientId = 43244,
		itemId = 46696,
		specialization = "Craftsman",
		name = "Explorer Headgear",
		experience = 172000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 133,
		category = "Moa Equipment",
		description = "Together with 'Explorer Saddle' can be crafted into a 'Explorer Barding'.",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 22,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 12,
				itemId = 38868
			},
			{
				name = "sapphire",
				clientId = 28952,
				amount = 10,
				itemId = 32384
			}
		}
	},
	{
		slotName = "",
		quality = 0,
		tier = -1,
		progress = 750,
		clientId = 43245,
		itemId = 46697,
		specialization = "Craftsman",
		name = "Professional Headgear",
		experience = 172000,
		profession = 5,
		durability = 12,
		amount = 1,
		index = 134,
		category = "Moa Equipment",
		description = "Together with 'Professional Saddle' can be crafted into a 'Professional Barding'.",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 22,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 12,
				itemId = 38868
			},
			{
				name = "topaz",
				clientId = 28953,
				amount = 10,
				itemId = 32385
			}
		}
	},
	{
		clientId = 43637,
		amount = 1,
		index = 135,
		category = "Ship Module",
		progress = 500,
		itemId = 47089,
		quality = 0,
		slotName = "",
		name = "Medium Cannon Kit",
		experience = 73600,
		profession = 5,
		tier = -1,
		description = "",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 150,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 100,
				itemId = 32156
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 2,
				itemId = 43736
			},
			{
				name = "Common Wheel",
				clientId = 37229,
				amount = 2,
				itemId = 40681
			}
		}
	},
	{
		clientId = 43636,
		amount = 1,
		index = 136,
		category = "Ship Module",
		progress = 650,
		itemId = 47088,
		quality = 0,
		slotName = "",
		name = "Large Cannon Kit",
		experience = 100000,
		profession = 5,
		tier = -1,
		description = "",
		durability = 9,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 150,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 100,
				itemId = 32157
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 2,
				itemId = 43736
			},
			{
				name = "Common Wheel",
				clientId = 37229,
				amount = 2,
				itemId = 40681
			}
		}
	},
	{
		clientId = 47288,
		amount = 1,
		index = 137,
		category = "Housing Craft",
		progress = 75,
		itemId = 50741,
		quality = 0,
		slotName = "",
		name = "Weak Racks",
		experience = 28000,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 70,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 35,
				itemId = 32156
			}
		}
	},
	{
		clientId = 47276,
		amount = 1,
		index = 138,
		category = "Housing Craft",
		progress = 350,
		itemId = 50729,
		quality = 0,
		slotName = "",
		name = "Armory Racks",
		experience = 66000,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 7,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 80,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 45,
				itemId = 32159
			}
		}
	},
	{
		clientId = 47281,
		amount = 1,
		index = 139,
		category = "Housing Craft",
		progress = 700,
		itemId = 50734,
		quality = 0,
		slotName = "",
		name = "Reinforced Racks",
		experience = 8500,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 30,
				itemId = 32158
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 10,
				itemId = 32155
			}
		}
	},
	{
		clientId = 47279,
		amount = 1,
		index = 140,
		category = "Housing Craft",
		progress = 525,
		itemId = 50732,
		quality = 0,
		slotName = "",
		name = "Gear Maintenance Tools",
		experience = 80000,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 80,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 70,
				itemId = 32157
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 30,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 15,
				itemId = 38865
			}
		}
	},
	{
		clientId = 47283,
		amount = 1,
		index = 141,
		category = "Housing Craft",
		progress = 700,
		itemId = 50736,
		quality = 0,
		slotName = "",
		name = "Thief Tools",
		experience = 116000,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 80,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 70,
				itemId = 32159
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 40,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 25,
				itemId = 38865
			}
		}
	},
	{
		clientId = 47287,
		amount = 1,
		index = 142,
		category = "Housing Craft",
		progress = 700,
		itemId = 50740,
		quality = 0,
		slotName = "",
		name = "Warmonger Tools",
		experience = 116000,
		profession = 5,
		tier = -1,
		description = "Used for housing craft.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 80,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 70,
				itemId = 32159
			},
			{
				name = "coal",
				clientId = 28941,
				amount = 40,
				itemId = 32373
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 25,
				itemId = 38865
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionBlacksmithing] = {
	{
		clientId = 28985,
		amount = 1,
		index = 1,
		category = "quest",
		progress = 50,
		itemId = 32417,
		quality = 50,
		slotName = "greatsword",
		name = "Burnished Greatsword",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 4,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 4,
				itemId = 38875
			}
		}
	},
	{
		clientId = 29059,
		amount = 1,
		index = 2,
		category = "quest",
		progress = 50,
		itemId = 32491,
		quality = 50,
		slotName = "sword",
		name = "Rough Sword",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 2,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38875
			}
		}
	},
	{
		clientId = 28992,
		amount = 1,
		index = 3,
		category = "quest",
		progress = 50,
		itemId = 32424,
		quality = 50,
		slotName = "axe",
		name = "Wicked Axe",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 3,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38875
			}
		}
	},
	{
		clientId = 29004,
		amount = 1,
		index = 4,
		category = "quest",
		progress = 50,
		itemId = 32436,
		quality = 50,
		slotName = "club",
		name = "Solid Mace",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 3,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38875
			}
		}
	},
	{
		clientId = 29010,
		amount = 1,
		index = 5,
		category = "quest",
		progress = 50,
		itemId = 32442,
		quality = 50,
		slotName = "dagger",
		name = "Serrated Dagger",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 2,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38875
			}
		}
	},
	{
		clientId = 28978,
		amount = 1,
		index = 7,
		category = "quest",
		progress = 50,
		itemId = 32410,
		quality = 50,
		slotName = "greataxe",
		name = "Rough Greataxe",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 6,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38875
			}
		}
	},
	{
		clientId = 29016,
		amount = 1,
		index = 8,
		category = "quest",
		progress = 50,
		itemId = 32448,
		quality = 50,
		slotName = "hammer",
		name = "Shipbuilding Mallet",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 6,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 2,
				itemId = 38875
			}
		}
	},
	{
		clientId = 28678,
		amount = 1,
		index = 9,
		category = "quest",
		progress = 50,
		itemId = 32110,
		quality = 50,
		slotName = "plate armor",
		name = "Pliant Armor",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 1,
				itemId = 38878
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38879
			}
		}
	},
	{
		clientId = 28684,
		amount = 1,
		index = 10,
		category = "quest",
		progress = 50,
		itemId = 32116,
		quality = 50,
		slotName = "plate helmet",
		name = "Pliant Helmet",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 1,
				itemId = 38882
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38883
			}
		}
	},
	{
		clientId = 28685,
		amount = 1,
		index = 11,
		category = "quest",
		progress = 50,
		itemId = 32117,
		quality = 50,
		slotName = "plate legs",
		name = "Pliant Legs",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 1,
				itemId = 38886
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38887
			}
		}
	},
	{
		clientId = 28681,
		amount = 1,
		index = 12,
		category = "quest",
		progress = 50,
		itemId = 32113,
		quality = 50,
		slotName = "plate boots",
		name = "Pliant Boots",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 1,
				itemId = 38890
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38891
			}
		}
	},
	{
		clientId = 37107,
		amount = 1,
		index = 13,
		category = "quest",
		progress = 50,
		itemId = 40559,
		quality = 50,
		slotName = "light blade",
		name = "Skirmisher's Blade",
		experience = 0,
		profession = 5,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Copper Ingot",
				clientId = 28726,
				amount = 4,
				itemId = 38874
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 4,
				itemId = 38875
			}
		}
	}
}

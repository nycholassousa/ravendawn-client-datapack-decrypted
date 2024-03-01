-- chunkname: @/modules/game_profession/recipes/blacksmithing.lua

recipes = recipes or {}
recipes[ProfessionBlacksmithing] = {
	{
		clientId = 28726,
		index = 1,
		durability = 4,
		profession = 5,
		progress = 25,
		itemId = 32158,
		quality = 75,
		description = "Used in various recipes. Symbolizes malleability and conductivity.",
		slotName = "",
		name = "copper ingot",
		amount = 1,
		tier = -1,
		category = "ingots",
		experience = 200,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28944,
				amount = 5,
				name = "copper ore",
				itemId = 32376
			}
		}
	},
	{
		clientId = 28723,
		index = 2,
		durability = 7,
		profession = 5,
		progress = 150,
		itemId = 32155,
		quality = 150,
		description = "Used in various recipes. A versatile metallic ingot.",
		slotName = "",
		name = "iron ingot",
		amount = 1,
		tier = -1,
		category = "ingots",
		experience = 240,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28943,
				amount = 5,
				name = "iron ore",
				itemId = 32375
			}
		}
	},
	{
		clientId = 28724,
		index = 3,
		durability = 7,
		profession = 5,
		progress = 225,
		itemId = 32156,
		quality = 200,
		description = "Used in various recipes. Forged from a mix of metals.",
		slotName = "",
		name = "steel ingot",
		amount = 1,
		tier = -1,
		category = "ingots",
		experience = 320,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28943,
				amount = 5,
				name = "iron ore",
				itemId = 32375
			},
			{
				clientId = 28941,
				amount = 2,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 28725,
		index = 4,
		durability = 8,
		profession = 5,
		progress = 450,
		itemId = 32157,
		quality = 450,
		description = "Used in various recipes. A rare blue-hued metal.",
		slotName = "",
		name = "cobalt ingot",
		amount = 1,
		tier = -1,
		category = "ingots",
		experience = 460,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28942,
				amount = 5,
				name = "cobalt ore",
				itemId = 32374
			},
			{
				clientId = 28941,
				amount = 3,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 28727,
		index = 5,
		durability = 9,
		profession = 5,
		progress = 550,
		itemId = 32159,
		quality = 550,
		description = "Used in various recipes. Lightweight yet sturdy, resilient and versatile.",
		slotName = "",
		name = "titanium ingot",
		amount = 1,
		tier = -1,
		category = "ingots",
		experience = 640,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28947,
				amount = 5,
				name = "titanium ore",
				itemId = 32379
			},
			{
				clientId = 28941,
				amount = 4,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 29060,
		index = 6,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32492,
		quality = 100,
		description = "",
		slotName = "sword",
		name = "Warden's Sword",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 2160,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 29059,
				amount = 1,
				name = "Rough Sword",
				itemId = 32491
			}
		}
	},
	{
		clientId = 28993,
		index = 7,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32425,
		quality = 100,
		description = "",
		slotName = "axe",
		name = "Marauder's Axe",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 2160,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 3,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28992,
				amount = 1,
				name = "Wicked Axe",
				itemId = 32424
			}
		}
	},
	{
		clientId = 29005,
		index = 8,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32437,
		quality = 100,
		description = "",
		slotName = "club",
		name = "Studded Flail",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 2160,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 3,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 29004,
				amount = 1,
				name = "Solid Mace",
				itemId = 32436
			}
		}
	},
	{
		clientId = 29011,
		index = 9,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32443,
		quality = 100,
		description = "",
		slotName = "dagger",
		name = "Noble Dagger",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 2160,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 29010,
				amount = 1,
				name = "Serrated Dagger",
				itemId = 32442
			}
		}
	},
	{
		clientId = 28980,
		index = 11,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32412,
		quality = 100,
		description = "",
		slotName = "greataxe",
		name = "Warrior's Greataxe",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 4320,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 4,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28978,
				amount = 1,
				name = "Rough Greataxe",
				itemId = 32410
			}
		}
	},
	{
		clientId = 28986,
		index = 12,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32418,
		quality = 100,
		description = "",
		slotName = "greatsword",
		name = "Valiant Greatsword",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 4320,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 6,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28985,
				amount = 1,
				name = "Burnished Greatsword",
				itemId = 32417
			}
		}
	},
	{
		clientId = 29017,
		index = 13,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32449,
		quality = 100,
		description = "",
		slotName = "hammer",
		name = "Crushing Hammer",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 4320,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 4,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 29016,
				amount = 1,
				name = "Shipbuilding Mallet",
				itemId = 32448
			}
		}
	},
	{
		clientId = 29061,
		index = 14,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32493,
		quality = 100,
		description = "",
		slotName = "sword",
		name = "Lawbreaker's Sword",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7200,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 5,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 5,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 29060,
				amount = 1,
				name = "Warden's Sword",
				itemId = 32492
			},
			{
				clientId = 37478,
				amount = 6,
				name = "Troll Fang",
				itemId = 40930
			}
		}
	},
	{
		clientId = 28994,
		index = 15,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32426,
		quality = 100,
		description = "",
		slotName = "axe",
		name = "Dread Axe",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7200,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 4,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28993,
				amount = 1,
				name = "Marauder's Axe",
				itemId = 32425
			},
			{
				clientId = 43212,
				amount = 6,
				name = "Sea Cured Leather",
				itemId = 46664
			}
		}
	},
	{
		clientId = 29006,
		index = 16,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32438,
		quality = 100,
		description = "",
		slotName = "club",
		name = "Shieldbreaker's Flail",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7200,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 4,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 29005,
				amount = 1,
				name = "Studded Flail",
				itemId = 32437
			},
			{
				clientId = 43212,
				amount = 6,
				name = "Sea Cured Leather",
				itemId = 46664
			}
		}
	},
	{
		clientId = 29012,
		index = 17,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32444,
		quality = 100,
		description = "",
		slotName = "dagger",
		name = "Ice Dagger",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7200,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 5,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 5,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 29011,
				amount = 1,
				name = "Noble Dagger",
				itemId = 32443
			},
			{
				clientId = 37478,
				amount = 6,
				name = "Troll Fang",
				itemId = 40930
			}
		}
	},
	{
		clientId = 28981,
		index = 19,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32413,
		quality = 100,
		description = "",
		slotName = "greataxe",
		name = "Savage Battle Axe",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14400,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 8,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28980,
				amount = 1,
				name = "Warrior's Greataxe",
				itemId = 32412
			},
			{
				clientId = 43212,
				amount = 12,
				name = "Sea Cured Leather",
				itemId = 46664
			}
		}
	},
	{
		clientId = 28987,
		index = 20,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32419,
		quality = 100,
		description = "",
		slotName = "greatsword",
		name = "Heroic Greatsword",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14400,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 10,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28986,
				amount = 1,
				name = "Valiant Greatsword",
				itemId = 32418
			},
			{
				clientId = 37478,
				amount = 12,
				name = "Troll Fang",
				itemId = 40930
			}
		}
	},
	{
		clientId = 29018,
		index = 21,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 32450,
		quality = 100,
		description = "",
		slotName = "hammer",
		name = "Punisher's Gavel",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14400,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 8,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 29017,
				amount = 1,
				name = "Crushing Hammer",
				itemId = 32449
			},
			{
				clientId = 43212,
				amount = 12,
				name = "Sea Cured Leather",
				itemId = 46664
			}
		}
	},
	{
		clientId = 29062,
		index = 22,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32494,
		quality = 100,
		description = "",
		slotName = "sword",
		name = "Guardian's Longsword",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 20000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 7,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 10,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 29061,
				amount = 1,
				name = "Lawbreaker's Sword",
				itemId = 32493
			},
			{
				clientId = 38268,
				amount = 10,
				name = "Thin Blade",
				itemId = 41720
			}
		}
	},
	{
		clientId = 28995,
		index = 23,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32427,
		quality = 100,
		description = "",
		slotName = "axe",
		name = "Stormcarver Axe",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 20000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 16,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 8,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28994,
				amount = 1,
				name = "Dread Axe",
				itemId = 32426
			},
			{
				clientId = 38272,
				amount = 10,
				name = "Metallic Core",
				itemId = 41724
			}
		}
	},
	{
		clientId = 29007,
		index = 24,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32439,
		quality = 100,
		description = "",
		slotName = "club",
		name = "Ravenguard Morningstar",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 20000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 16,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 8,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 29006,
				amount = 1,
				name = "Shieldbreaker's Flail",
				itemId = 32438
			},
			{
				clientId = 37483,
				amount = 10,
				name = "Rough Steel Plate",
				itemId = 40935
			}
		}
	},
	{
		clientId = 29013,
		index = 25,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32445,
		quality = 100,
		description = "",
		slotName = "dagger",
		name = "Heartstopper Dagger",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 20000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 7,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 10,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 29012,
				amount = 1,
				name = "Ice Dagger",
				itemId = 32444
			},
			{
				clientId = 38265,
				amount = 10,
				name = "Cunning Handle",
				itemId = 41717
			}
		}
	},
	{
		clientId = 28982,
		index = 27,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32414,
		quality = 100,
		description = "",
		slotName = "greataxe",
		name = "Hangman's Greataxe",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 17,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28981,
				amount = 1,
				name = "Savage Battle Axe",
				itemId = 32413
			},
			{
				clientId = 38272,
				amount = 20,
				name = "Metallic Core",
				itemId = 41724
			}
		}
	},
	{
		clientId = 28988,
		index = 28,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32420,
		quality = 100,
		description = "",
		slotName = "greatsword",
		name = "Bonebiter Greatsword",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 12,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 20,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28987,
				amount = 1,
				name = "Heroic Greatsword",
				itemId = 32419
			},
			{
				clientId = 38268,
				amount = 20,
				name = "Thin Blade",
				itemId = 41720
			}
		}
	},
	{
		clientId = 29019,
		index = 29,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32451,
		quality = 100,
		description = "",
		slotName = "hammer",
		name = "Lawgiver's Warhammer",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 17,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 29018,
				amount = 1,
				name = "Punisher's Gavel",
				itemId = 32450
			},
			{
				clientId = 37483,
				amount = 20,
				name = "Rough Steel Plate",
				itemId = 40935
			}
		}
	},
	{
		clientId = 29063,
		index = 30,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32495,
		quality = 100,
		description = "",
		slotName = "sword",
		name = "Crusader's Longsword",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 10,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 15,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 29062,
				amount = 1,
				name = "Guardian's Longsword",
				itemId = 32494
			},
			{
				clientId = 40265,
				amount = 12,
				name = "Ancient Metallic Scrap",
				itemId = 43717
			}
		}
	},
	{
		clientId = 28996,
		index = 31,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32428,
		quality = 100,
		description = "",
		slotName = "axe",
		name = "Hellblade Axe",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 30,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 11,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28995,
				amount = 1,
				name = "Stormcarver Axe",
				itemId = 32427
			},
			{
				clientId = 40268,
				amount = 12,
				name = "Cutting Edge Scrap",
				itemId = 43720
			}
		}
	},
	{
		clientId = 29008,
		index = 32,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32440,
		quality = 100,
		description = "",
		slotName = "club",
		name = "Enforcer's Mace",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 30,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 11,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 29007,
				amount = 1,
				name = "Ravenguard Morningstar",
				itemId = 32439
			},
			{
				clientId = 40274,
				amount = 12,
				name = "Heavy Metal Chunks",
				itemId = 43726
			}
		}
	},
	{
		clientId = 29014,
		index = 33,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32446,
		quality = 100,
		description = "",
		slotName = "dagger",
		name = "Assassin's Dagger",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 10,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 15,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 29013,
				amount = 1,
				name = "Heartstopper Dagger",
				itemId = 32445
			},
			{
				clientId = 40280,
				amount = 12,
				name = "Twisted Blades",
				itemId = 43732
			}
		}
	},
	{
		clientId = 28983,
		index = 35,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32415,
		quality = 100,
		description = "",
		slotName = "greataxe",
		name = "Orcish Battle Axe",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 80000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 60,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 22,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28982,
				amount = 1,
				name = "Hangman's Greataxe",
				itemId = 32414
			},
			{
				clientId = 40268,
				amount = 24,
				name = "Cutting Edge Scrap",
				itemId = 43720
			}
		}
	},
	{
		clientId = 28989,
		index = 36,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32421,
		quality = 100,
		description = "",
		slotName = "greatsword",
		name = "Samurai's Daikatana",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 80000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 30,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28988,
				amount = 1,
				name = "Bonebiter Greatsword",
				itemId = 32420
			},
			{
				clientId = 40265,
				amount = 24,
				name = "Ancient Metallic Scrap",
				itemId = 43717
			}
		}
	},
	{
		clientId = 29020,
		index = 37,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 32452,
		quality = 100,
		description = "",
		slotName = "hammer",
		name = "Dwarven Warhammer",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 80000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 60,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 22,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 29019,
				amount = 1,
				name = "Lawgiver's Warhammer",
				itemId = 32451
			},
			{
				clientId = 40274,
				amount = 24,
				name = "Heavy Metal Chunks",
				itemId = 43726
			}
		}
	},
	{
		clientId = 28687,
		index = 38,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32119,
		quality = 100,
		description = "",
		slotName = "plate armor",
		name = "Crescent Armor",
		amount = 1,
		tier = 2,
		category = "armors",
		experience = 1200,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28678,
				amount = 1,
				name = "Pliant Armor",
				itemId = 32110
			}
		}
	},
	{
		clientId = 28688,
		index = 39,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32120,
		quality = 100,
		description = "",
		slotName = "plate helmet",
		name = "Crescent Helmet",
		amount = 1,
		tier = 2,
		category = "armors",
		experience = 1200,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28684,
				amount = 1,
				name = "Pliant Helmet",
				itemId = 32116
			}
		}
	},
	{
		clientId = 28691,
		index = 40,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32123,
		quality = 100,
		description = "",
		slotName = "plate legs",
		name = "Crescent Legs",
		amount = 1,
		tier = 2,
		category = "armors",
		experience = 1200,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28685,
				amount = 1,
				name = "Pliant Legs",
				itemId = 32117
			}
		}
	},
	{
		clientId = 28695,
		index = 41,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32127,
		quality = 100,
		description = "",
		slotName = "plate boots",
		name = "Crescent Boots",
		amount = 1,
		tier = 2,
		category = "armors",
		experience = 1200,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 28681,
				amount = 1,
				name = "Pliant Boots",
				itemId = 32113
			}
		}
	},
	{
		clientId = 28696,
		index = 42,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32128,
		quality = 100,
		description = "",
		slotName = "plate armor",
		name = "Harbinger Armor",
		amount = 1,
		tier = 3,
		category = "armors",
		experience = 6000,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 3,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28687,
				amount = 1,
				name = "Crescent Armor",
				itemId = 32119
			},
			{
				clientId = 37479,
				amount = 3,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		clientId = 28702,
		index = 43,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32134,
		quality = 100,
		description = "",
		slotName = "plate helmet",
		name = "Harbinger Helmet",
		amount = 1,
		tier = 3,
		category = "armors",
		experience = 6000,
		level = {
			mass = 36,
			single = 31
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 3,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28688,
				amount = 1,
				name = "Crescent Helmet",
				itemId = 32120
			},
			{
				clientId = 37479,
				amount = 3,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		clientId = 28703,
		index = 44,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32135,
		quality = 100,
		description = "",
		slotName = "plate legs",
		name = "Harbinger Legs",
		amount = 1,
		tier = 3,
		category = "armors",
		experience = 6000,
		level = {
			mass = 39,
			single = 34
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 3,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28691,
				amount = 1,
				name = "Crescent Legs",
				itemId = 32123
			},
			{
				clientId = 37479,
				amount = 3,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		clientId = 28699,
		index = 45,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32131,
		quality = 100,
		description = "",
		slotName = "plate boots",
		name = "Harbinger Boots",
		amount = 1,
		tier = 3,
		category = "armors",
		experience = 6000,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 3,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 28695,
				amount = 1,
				name = "Crescent Boots",
				itemId = 32127
			},
			{
				clientId = 37479,
				amount = 3,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		clientId = 28705,
		index = 46,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32137,
		quality = 100,
		description = "",
		slotName = "plate armor",
		name = "Enforcer Armor",
		amount = 1,
		tier = 4,
		category = "armors",
		experience = 11300,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 3,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28696,
				amount = 1,
				name = "Harbinger Armor",
				itemId = 32128
			},
			{
				clientId = 38267,
				amount = 5,
				name = "Internal Padding",
				itemId = 41719
			}
		}
	},
	{
		clientId = 28711,
		index = 47,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32143,
		quality = 100,
		description = "",
		slotName = "plate helmet",
		name = "Enforcer Helmet",
		amount = 1,
		tier = 4,
		category = "armors",
		experience = 11300,
		level = {
			mass = 51,
			single = 46
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 3,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28702,
				amount = 1,
				name = "Harbinger Helmet",
				itemId = 32134
			},
			{
				clientId = 38267,
				amount = 5,
				name = "Internal Padding",
				itemId = 41719
			}
		}
	},
	{
		clientId = 28712,
		index = 48,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32144,
		quality = 100,
		description = "",
		slotName = "plate legs",
		name = "Enforcer Legs",
		amount = 1,
		tier = 4,
		category = "armors",
		experience = 11300,
		level = {
			mass = 54,
			single = 49
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 3,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28703,
				amount = 1,
				name = "Harbinger Legs",
				itemId = 32135
			},
			{
				clientId = 38267,
				amount = 5,
				name = "Internal Padding",
				itemId = 41719
			}
		}
	},
	{
		clientId = 28708,
		index = 49,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32140,
		quality = 100,
		description = "",
		slotName = "plate boots",
		name = "Enforcer Boots",
		amount = 1,
		tier = 4,
		category = "armors",
		experience = 11300,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				clientId = 28724,
				amount = 18,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 3,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 28699,
				amount = 1,
				name = "Harbinger Boots",
				itemId = 32131
			},
			{
				clientId = 38267,
				amount = 5,
				name = "Internal Padding",
				itemId = 41719
			}
		}
	},
	{
		clientId = 28714,
		index = 50,
		durability = 9,
		profession = 5,
		progress = 525,
		itemId = 32146,
		quality = 100,
		description = "",
		slotName = "plate armor",
		name = "Protector's Armor",
		amount = 1,
		tier = 5,
		category = "armors",
		experience = 24000,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 5,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28705,
				amount = 1,
				name = "Enforcer Armor",
				itemId = 32137
			},
			{
				clientId = 37507,
				amount = 6,
				name = "Ancient Ingot",
				itemId = 40959
			}
		}
	},
	{
		clientId = 28720,
		index = 51,
		durability = 9,
		profession = 5,
		progress = 525,
		itemId = 32152,
		quality = 100,
		description = "",
		slotName = "plate helmet",
		name = "Protector's Helmet",
		amount = 1,
		tier = 5,
		category = "armors",
		experience = 24000,
		level = {
			mass = 66,
			single = 61
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 5,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28711,
				amount = 1,
				name = "Enforcer Helmet",
				itemId = 32143
			},
			{
				clientId = 37507,
				amount = 6,
				name = "Ancient Ingot",
				itemId = 40959
			}
		}
	},
	{
		clientId = 28721,
		index = 52,
		durability = 9,
		profession = 5,
		progress = 525,
		itemId = 32153,
		quality = 100,
		description = "",
		slotName = "plate legs",
		name = "Protector's Legs",
		amount = 1,
		tier = 5,
		category = "armors",
		experience = 24000,
		level = {
			mass = 69,
			single = 64
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 5,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28712,
				amount = 1,
				name = "Enforcer Legs",
				itemId = 32144
			},
			{
				clientId = 37507,
				amount = 6,
				name = "Ancient Ingot",
				itemId = 40959
			}
		}
	},
	{
		clientId = 28717,
		index = 53,
		durability = 9,
		profession = 5,
		progress = 525,
		itemId = 32149,
		quality = 100,
		description = "",
		slotName = "plate boots",
		name = "Protector's Boots",
		amount = 1,
		tier = 5,
		category = "armors",
		experience = 24000,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				clientId = 28725,
				amount = 26,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 5,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 28708,
				amount = 1,
				name = "Enforcer Boots",
				itemId = 32140
			},
			{
				clientId = 37507,
				amount = 6,
				name = "Ancient Ingot",
				itemId = 40959
			}
		}
	},
	{
		progress = 75,
		profession = 5,
		index = 54,
		durability = 4,
		clientId = 28426,
		tier = -1,
		itemId = 31858,
		name = "whetstone",
		category = "whetstones",
		experience = 180,
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {1} for 30 minutes. This effect is doubled for two-handed weapons.",
		amount = 1,
		slotName = "",
		quality = 50,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				clientId = 28946,
				amount = 3,
				name = "stone",
				itemId = 32378
			}
		}
	},
	{
		progress = 175,
		profession = 5,
		index = 55,
		durability = 6,
		clientId = 28427,
		tier = -1,
		itemId = 31859,
		name = "coarse whetstone",
		category = "whetstones",
		experience = 480,
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {3} for 30 minutes. This effect is doubled for two-handed weapons.",
		amount = 1,
		slotName = "",
		quality = 150,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28946,
				amount = 6,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 1,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		progress = 225,
		profession = 5,
		index = 56,
		durability = 7,
		clientId = 35437,
		tier = -1,
		itemId = 38869,
		name = "Heavy Whetstone",
		category = "whetstones",
		experience = 800,
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {5} for 30 minutes. This effect is doubled for two-handed weapons.",
		amount = 1,
		slotName = "",
		quality = 200,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				clientId = 28946,
				amount = 10,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 2,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		progress = 350,
		profession = 5,
		index = 57,
		durability = 8,
		clientId = 35438,
		tier = -1,
		itemId = 38870,
		name = "Solid Whetstone",
		category = "whetstones",
		experience = 1200,
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {7} for 30 minutes. This effect is doubled for two-handed weapons.",
		amount = 1,
		slotName = "",
		quality = 325,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				clientId = 28946,
				amount = 15,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 3,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		progress = 500,
		profession = 5,
		index = 58,
		durability = 9,
		clientId = 28428,
		tier = -1,
		itemId = 31860,
		name = "dense whetstone",
		category = "whetstones",
		experience = 2080,
		specialization = "Craftsman",
		formatDescription = "quality",
		description = "Increases Attack Power of your equipped weapon by {10} for 30 minutes. This effect is doubled for two-handed weapons.",
		amount = 1,
		slotName = "",
		quality = 450,
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				clientId = 28946,
				amount = 25,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 5,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 28888,
		index = 59,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 32320,
		quality = 0,
		description = "",
		slotName = "fishing hook",
		name = "copper fishing hook",
		amount = 1,
		tier = 1,
		category = "fishing",
		experience = 800,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28886,
		index = 60,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32318,
		quality = 0,
		description = "",
		slotName = "fishing hook",
		name = "complex fishing hook",
		amount = 1,
		tier = 2,
		category = "fishing",
		experience = 1680,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				clientId = 28723,
				amount = 7,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28888,
				amount = 1,
				name = "copper fishing hook",
				itemId = 32320
			}
		}
	},
	{
		clientId = 28884,
		index = 61,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 32316,
		quality = 0,
		description = "",
		slotName = "fishing hook",
		name = "steel fishing hook",
		amount = 1,
		tier = 3,
		category = "fishing",
		experience = 4800,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				clientId = 28724,
				amount = 15,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28886,
				amount = 1,
				name = "complex fishing hook",
				itemId = 32318
			}
		}
	},
	{
		clientId = 28887,
		index = 62,
		durability = 8,
		profession = 5,
		progress = 475,
		itemId = 32319,
		quality = 0,
		description = "",
		slotName = "fishing hook",
		name = "cobalt fishing hook",
		amount = 1,
		tier = 4,
		category = "fishing",
		experience = 11500,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				clientId = 28725,
				amount = 25,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28884,
				amount = 1,
				name = "steel fishing hook",
				itemId = 32316
			}
		}
	},
	{
		progress = 600,
		profession = 5,
		durability = 9,
		index = 63,
		clientId = 28885,
		tier = 5,
		itemId = 32317,
		name = "titanium fishing hook",
		category = "fishing",
		experience = 38400,
		specialization = "Craftsman",
		description = "",
		amount = 1,
		slotName = "fishing hook",
		quality = 0,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28887,
				amount = 1,
				name = "cobalt fishing hook",
				itemId = 32319
			}
		}
	},
	{
		clientId = 37108,
		index = 64,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 40560,
		quality = 100,
		description = "",
		slotName = "light blade",
		name = "Swashbuckler's Blade",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 4320,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 6,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 37107,
				amount = 1,
				name = "Skirmisher's Blade",
				itemId = 40559
			}
		}
	},
	{
		clientId = 37109,
		index = 65,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 40561,
		quality = 100,
		description = "",
		slotName = "light blade",
		name = "Serpentine Blade",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14400,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 10,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 37108,
				amount = 1,
				name = "Swashbuckler's Blade",
				itemId = 40560
			},
			{
				clientId = 37478,
				amount = 12,
				name = "Troll Fang",
				itemId = 40930
			}
		}
	},
	{
		clientId = 37110,
		index = 66,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40562,
		quality = 100,
		description = "",
		slotName = "light blade",
		name = "Duelist's Companion",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 40000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28724,
				amount = 12,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 20,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 37109,
				amount = 1,
				name = "Serpentine Blade",
				itemId = 40561
			},
			{
				clientId = 38265,
				amount = 20,
				name = "Cunning Handle",
				itemId = 41717
			}
		}
	},
	{
		clientId = 37111,
		index = 67,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 40563,
		quality = 100,
		description = "",
		slotName = "light blade",
		name = "Ornamented Saber",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 80000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 30,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 37110,
				amount = 1,
				name = "Duelist's Companion",
				itemId = 40562
			},
			{
				clientId = 40280,
				amount = 24,
				name = "Twisted Blades",
				itemId = 43732
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 68,
		clientId = 37158,
		tier = 6,
		itemId = 40610,
		name = "Champion's Longsword",
		category = "weapons",
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "sword",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 12,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 18,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 29063,
				amount = 1,
				name = "Crusader's Longsword",
				itemId = 32495
			},
			{
				clientId = 40267,
				amount = 16,
				name = "Crude Runed Tip",
				itemId = 43719
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 69,
		clientId = 37154,
		tier = 6,
		itemId = 40606,
		name = "Dragonbane Axe",
		category = "weapons",
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "axe",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 30,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 14,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28996,
				amount = 1,
				name = "Hellblade Axe",
				itemId = 32428
			},
			{
				clientId = 40278,
				amount = 16,
				name = "Sturdy Joint",
				itemId = 43730
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 70,
		clientId = 37156,
		tier = 6,
		itemId = 40608,
		name = "Skullbasher Mace",
		category = "weapons",
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "club",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 30,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 14,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 29008,
				amount = 1,
				name = "Enforcer's Mace",
				itemId = 32440
			},
			{
				clientId = 40275,
				amount = 16,
				name = "Polished Plate Scraps",
				itemId = 43727
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 71,
		clientId = 37151,
		tier = 6,
		itemId = 40603,
		name = "Ritual Dagger",
		category = "weapons",
		experience = 62000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "dagger",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 12,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 18,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 29014,
				amount = 1,
				name = "Assassin's Dagger",
				itemId = 32446
			},
			{
				clientId = 40277,
				amount = 16,
				name = "Sharp Edges",
				itemId = 43729
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 73,
		clientId = 37112,
		tier = 6,
		itemId = 40564,
		name = "Scarlet Thorn",
		category = "weapons",
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "light blade",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 24,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 36,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 37111,
				amount = 1,
				name = "Ornamented Saber",
				itemId = 40563
			},
			{
				clientId = 40277,
				amount = 32,
				name = "Sharp Edges",
				itemId = 43729
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 74,
		clientId = 37148,
		tier = 6,
		itemId = 40600,
		name = "Nocturnal Greataxe",
		category = "weapons",
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "greataxe",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 28,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28983,
				amount = 1,
				name = "Orcish Battle Axe",
				itemId = 32415
			},
			{
				clientId = 40278,
				amount = 32,
				name = "Sturdy Joint",
				itemId = 43730
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 75,
		clientId = 37153,
		tier = 6,
		itemId = 40605,
		name = "Magister's Greatsword",
		category = "weapons",
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "greatsword",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 24,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 36,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28989,
				amount = 1,
				name = "Samurai's Daikatana",
				itemId = 32421
			},
			{
				clientId = 40267,
				amount = 32,
				name = "Crude Runed Tip",
				itemId = 43719
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 76,
		clientId = 37152,
		tier = 6,
		itemId = 40604,
		name = "Soulwarden's Hammer",
		category = "weapons",
		experience = 124000,
		specialization = "Dwarven Weaponsmith",
		description = "",
		amount = 1,
		slotName = "hammer",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 60,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 28,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 29020,
				amount = 1,
				name = "Dwarven Warhammer",
				itemId = 32452
			},
			{
				clientId = 40275,
				amount = 32,
				name = "Polished Plate Scraps",
				itemId = 43727
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 77,
		clientId = 37143,
		tier = 6,
		itemId = 40595,
		name = "Chivalry Armor",
		category = "armors",
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		description = "",
		amount = 1,
		slotName = "plate armor",
		quality = 100,
		level = {
			mass = 83,
			single = 78
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 6,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28714,
				amount = 1,
				name = "Protector's Armor",
				itemId = 32146
			},
			{
				clientId = 40276,
				amount = 8,
				name = "Reflective Husk",
				itemId = 43728
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 78,
		clientId = 37146,
		tier = 6,
		itemId = 40598,
		name = "Chivalry Helmet",
		category = "armors",
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		description = "",
		amount = 1,
		slotName = "plate helmet",
		quality = 100,
		level = {
			mass = 86,
			single = 81
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 6,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28720,
				amount = 1,
				name = "Protector's Helmet",
				itemId = 32152
			},
			{
				clientId = 40276,
				amount = 8,
				name = "Reflective Husk",
				itemId = 43728
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 79,
		clientId = 37145,
		tier = 6,
		itemId = 40597,
		name = "Chivalry Legs",
		category = "armors",
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		description = "",
		amount = 1,
		slotName = "plate legs",
		quality = 100,
		level = {
			mass = 89,
			single = 84
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 6,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28721,
				amount = 1,
				name = "Protector's Legs",
				itemId = 32153
			},
			{
				clientId = 40276,
				amount = 8,
				name = "Reflective Husk",
				itemId = 43728
			}
		}
	},
	{
		progress = 700,
		profession = 5,
		durability = 12,
		index = 80,
		clientId = 37144,
		tier = 6,
		itemId = 40596,
		name = "Chivalry Boots",
		category = "armors",
		experience = 33000,
		specialization = "Dwarven Armorsmith",
		description = "",
		amount = 1,
		slotName = "plate boots",
		quality = 100,
		level = {
			mass = 92,
			single = 87
		},
		materials = {
			{
				clientId = 28727,
				amount = 23,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 6,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28717,
				amount = 1,
				name = "Protector's Boots",
				itemId = 32149
			},
			{
				clientId = 40276,
				amount = 8,
				name = "Reflective Husk",
				itemId = 43728
			}
		}
	},
	{
		clientId = 37234,
		index = 81,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40686,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Forging Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 54400,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 100,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 50,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28941,
				amount = 20,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 10,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 37285,
		index = 82,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 40737,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Superior Forging Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 80000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 80,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 70,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28941,
				amount = 30,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 15,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 37220,
		index = 83,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40672,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Artisan Forging Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 116000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 70,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28941,
				amount = 40,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 25,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 37289,
		index = 84,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40741,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Woodwork Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 30400,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 80,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 35,
				name = "steel ingot",
				itemId = 32156
			}
		}
	},
	{
		clientId = 37236,
		index = 85,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40688,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Improved Woodwork Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 72000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 100,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 40,
				name = "titanium ingot",
				itemId = 32159
			}
		}
	},
	{
		clientId = 37217,
		index = 86,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40669,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Anvil",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 28000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 70,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 35,
				name = "steel ingot",
				itemId = 32156
			}
		}
	},
	{
		clientId = 37233,
		index = 87,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40685,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Forgemaster Anvil",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 66000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 45,
				name = "titanium ingot",
				itemId = 32159
			}
		}
	},
	{
		clientId = 37235,
		index = 88,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40687,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Furnace",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 10000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28724,
				amount = 20,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28737,
				amount = 5,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 28946,
				amount = 20,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 10,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 37232,
		index = 89,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40684,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Forge",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 28800,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 40,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 10,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28737,
				amount = 5,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 28946,
				amount = 20,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 10,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 37281,
		index = 90,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40733,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Stove",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 24000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 50,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 20,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28737,
				amount = 15,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 28941,
				amount = 10,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 28946,
				amount = 10,
				name = "stone",
				itemId = 32378
			}
		}
	},
	{
		clientId = 28740,
		index = 91,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32172,
		quality = 0,
		description = "Used in various recipes. The backbone of many structures in Ravendawn.",
		slotName = "",
		name = "reinforced plate",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 6000,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28723,
				amount = 15,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28743,
				amount = 15,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 40282,
				amount = 15,
				name = "Bolt",
				itemId = 43734
			}
		}
	},
	{
		clientId = 37286,
		index = 92,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 40738,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Superior Stove",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 117000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 100,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 50,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28737,
				amount = 30,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 28941,
				amount = 20,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 45506,
				amount = 35,
				name = "Sturdy Plank",
				itemId = 48958
			}
		}
	},
	{
		clientId = 37221,
		index = 93,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40673,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Artisan Stove",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 163000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 100,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 80,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28737,
				amount = 40,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 28941,
				amount = 30,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 45506,
				amount = 35,
				name = "Sturdy Plank",
				itemId = 48958
			}
		}
	},
	{
		clientId = 37260,
		index = 94,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40712,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Minor Shielding Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 88000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 220,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 110,
				name = "steel ingot",
				itemId = 32156
			}
		}
	},
	{
		clientId = 37282,
		index = 95,
		durability = 7,
		profession = 5,
		progress = 500,
		itemId = 40734,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Sturdy Shielding Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 332000,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 600,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 300,
				name = "cobalt ingot",
				itemId = 32157
			}
		}
	},
	{
		clientId = 37263,
		index = 96,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40715,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Reinforced Shielding Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 705600,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 900,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 450,
				name = "titanium ingot",
				itemId = 32159
			}
		}
	},
	{
		clientId = 37266,
		index = 97,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40718,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Small Cannon Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 32800,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 40,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 15,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28745,
				amount = 10,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 37229,
				amount = 2,
				name = "Common Wheel",
				itemId = 40681
			}
		}
	},
	{
		clientId = 37268,
		index = 98,
		durability = 6,
		profession = 5,
		progress = 225,
		itemId = 40720,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Simple Ship Emblems Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 65840,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28723,
				amount = 220,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28941,
				amount = 50,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 37229,
				amount = 2,
				name = "Common Wheel",
				itemId = 40681
			}
		}
	},
	{
		clientId = 37265,
		index = 99,
		durability = 7,
		profession = 5,
		progress = 500,
		itemId = 40717,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Compound Ship Emblems Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 134400,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 220,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 110,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40492,
				amount = 2,
				name = "Swift Wheel",
				itemId = 43944
			}
		}
	},
	{
		clientId = 37218,
		index = 100,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40670,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Complex Ship Emblems Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 228000,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 220,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 110,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 37264,
				amount = 2,
				name = "Reinforced Wheel",
				itemId = 40716
			}
		}
	},
	{
		clientId = 37223,
		index = 101,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 40675,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		slotName = "",
		name = "Basic Water Pumps Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 37600,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28723,
				amount = 80,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 50,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28941,
				amount = 20,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 37230,
		index = 102,
		durability = 7,
		profession = 5,
		progress = 500,
		itemId = 40682,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder.",
		slotName = "",
		name = "Enhanced Water Pumps Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 56000,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 220,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 110,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28941,
				amount = 40,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 37261,
		index = 103,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 40713,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		slotName = "",
		name = "Pressurized Water Pumps Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 180000,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28725,
				amount = 220,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 110,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28941,
				amount = 60,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 28734,
		index = 104,
		durability = 4,
		profession = 5,
		progress = 50,
		itemId = 32166,
		quality = 75,
		description = "Used in various recipes. A basic yet crucial component for construction.",
		slotName = "",
		name = "nail",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 64,
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28737,
		index = 105,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 32169,
		quality = 225,
		description = "Used in various recipes. Forged with strength and versatility in mind.",
		slotName = "",
		name = "iron bar",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 240,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28723,
				amount = 1,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 29004,
		index = 106,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32436,
		quality = 100,
		description = "",
		slotName = "club",
		name = "Solid Mace",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 800,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 29059,
		index = 107,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32491,
		quality = 100,
		description = "",
		slotName = "sword",
		name = "Rough Sword",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 800,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28992,
		index = 108,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32424,
		quality = 100,
		description = "",
		slotName = "axe",
		name = "Wicked Axe",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 800,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 29010,
		index = 109,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32442,
		quality = 100,
		description = "",
		slotName = "dagger",
		name = "Serrated Dagger",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 800,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28978,
		index = 111,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32410,
		quality = 100,
		description = "",
		slotName = "greataxe",
		name = "Rough Greataxe",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1600,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28985,
		index = 112,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32417,
		quality = 100,
		description = "",
		slotName = "greatsword",
		name = "Burnished Greatsword",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1600,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 37107,
		index = 113,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 40559,
		quality = 100,
		description = "",
		slotName = "light blade",
		name = "Skirmisher's Blade",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1600,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 29016,
		index = 114,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32448,
		quality = 100,
		description = "",
		slotName = "hammer",
		name = "Shipbuilding Mallet",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1600,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 8,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28678,
		index = 115,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32110,
		quality = 100,
		description = "",
		slotName = "plate armor",
		name = "Pliant Armor",
		amount = 1,
		tier = 1,
		category = "armors",
		experience = 600,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28684,
		index = 116,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32116,
		quality = 100,
		description = "",
		slotName = "plate helmet",
		name = "Pliant Helmet",
		amount = 1,
		tier = 1,
		category = "armors",
		experience = 600,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28685,
		index = 117,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32117,
		quality = 100,
		description = "",
		slotName = "plate legs",
		name = "Pliant Legs",
		amount = 1,
		tier = 1,
		category = "armors",
		experience = 600,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 28681,
		index = 118,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32113,
		quality = 100,
		description = "",
		slotName = "plate boots",
		name = "Pliant Boots",
		amount = 1,
		tier = 1,
		category = "armors",
		experience = 600,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			}
		}
	},
	{
		clientId = 40282,
		index = 119,
		durability = 6,
		profession = 5,
		progress = 200,
		itemId = 43734,
		quality = 225,
		description = "Used in various recipes. A small piece, integral in connecting larger ones.",
		slotName = "",
		name = "Bolt",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 80,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28723,
				amount = 1,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 40284,
		index = 120,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 43736,
		quality = 400,
		description = "Used in various recipes. Cold, hard, and unyielding - the essence of strength.",
		slotName = "",
		name = "Steel Bar",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 215,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28724,
				amount = 2,
				name = "steel ingot",
				itemId = 32156
			}
		}
	},
	{
		clientId = 40283,
		index = 121,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 43735,
		quality = 0,
		description = "Used in various recipes. A humble slab of metal, awaiting purpose.",
		slotName = "",
		name = "Common Plate",
		amount = 1,
		tier = -1,
		category = "Misc",
		experience = 2400,
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 28744,
				amount = 10,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28734,
				amount = 10,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 41850,
		index = 122,
		durability = 4,
		profession = 5,
		progress = 100,
		itemId = 45302,
		quality = 0,
		description = "Used in various recipes. Solid building material, ideal for constructing robust houses.",
		slotName = "",
		name = "Stone Block",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 400,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28946,
				amount = 20,
				name = "stone",
				itemId = 32378
			}
		}
	},
	{
		clientId = 41846,
		index = 123,
		durability = 7,
		profession = 5,
		progress = 225,
		itemId = 45298,
		quality = 0,
		description = "Used in various recipes. Massive construction material painstakingly hewn from solid stone.",
		slotName = "",
		name = "Dense Block",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 880,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28946,
				amount = 40,
				name = "stone",
				itemId = 32378
			},
			{
				clientId = 28941,
				amount = 2,
				name = "coal",
				itemId = 32373
			}
		}
	},
	{
		clientId = 41849,
		index = 124,
		durability = 8,
		profession = 5,
		progress = 450,
		itemId = 45301,
		quality = 0,
		description = "Used in various recipes. Formed by skillfully combining an array of precious gems, radiating elegance.",
		slotName = "",
		name = "Royal Ornaments",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 24000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28948,
				amount = 1,
				name = "amethyst",
				itemId = 32380
			},
			{
				clientId = 28949,
				amount = 1,
				name = "citrine",
				itemId = 32381
			},
			{
				clientId = 28952,
				amount = 1,
				name = "sapphire",
				itemId = 32384
			},
			{
				clientId = 28950,
				amount = 1,
				name = "emerald",
				itemId = 32382
			},
			{
				clientId = 28951,
				amount = 1,
				name = "ruby",
				itemId = 32383
			},
			{
				clientId = 28953,
				amount = 1,
				name = "topaz",
				itemId = 32385
			}
		}
	},
	{
		clientId = 42778,
		index = 125,
		durability = 4,
		profession = 5,
		progress = 75,
		itemId = 46230,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Copper Anvil",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 8500,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28726,
				amount = 30,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 42784,
		index = 126,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 46236,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Basic Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 4300,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 28744,
				amount = 4,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		clientId = 43238,
		index = 127,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 46690,
		quality = 0,
		description = "Together with 'Simple Saddle' can be crafted into a 'Simple Barding'.",
		slotName = "",
		name = "Simple Headgear",
		amount = 1,
		tier = -1,
		category = "Moa Equipment",
		experience = 4400,
		level = {
			mass = 17,
			single = 12
		},
		materials = {
			{
				clientId = 28726,
				amount = 10,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 35432,
				amount = 4,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		clientId = 43239,
		index = 128,
		durability = 7,
		profession = 5,
		progress = 200,
		itemId = 46691,
		quality = 0,
		description = "Together with 'Composed Saddle' can be crafted into a 'Composed Barding'.",
		slotName = "",
		name = "Composed Headgear",
		amount = 1,
		tier = -1,
		category = "Moa Equipment",
		experience = 7520,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				clientId = 28723,
				amount = 11,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35432,
				amount = 8,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		clientId = 43240,
		index = 129,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 46692,
		quality = 0,
		description = "Together with 'Advanced Saddle' can be crafted into a 'Advanced Barding'.",
		slotName = "",
		name = "Advanced Headgear",
		amount = 1,
		tier = -1,
		category = "Moa Equipment",
		experience = 13200,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				clientId = 28723,
				amount = 20,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 35433,
				amount = 7,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 43241,
		index = 130,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 46693,
		quality = 0,
		description = "Together with 'Artisan Saddle' can be crafted into a 'Artisan Barding'.",
		slotName = "",
		name = "Artisan Headgear",
		amount = 1,
		tier = -1,
		category = "Moa Equipment",
		experience = 40000,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				clientId = 28724,
				amount = 25,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 35434,
				amount = 17,
				name = "Tanned Leather",
				itemId = 38866
			}
		}
	},
	{
		clientId = 43242,
		index = 131,
		durability = 9,
		profession = 5,
		progress = 650,
		itemId = 46694,
		quality = 0,
		description = "Together with 'Superior Saddle' can be crafted into a 'Superior Barding'.",
		slotName = "",
		name = "Superior Headgear",
		amount = 1,
		tier = -1,
		category = "Moa Equipment",
		experience = 52000,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				clientId = 28725,
				amount = 25,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 35435,
				amount = 17,
				name = "Merchant's Leather",
				itemId = 38867
			}
		}
	},
	{
		progress = 750,
		profession = 5,
		durability = 12,
		index = 132,
		clientId = 43243,
		tier = -1,
		itemId = 46695,
		name = "War Headgear",
		category = "Moa Equipment",
		experience = 172000,
		specialization = "Craftsman",
		description = "Together with 'War Saddle' can be crafted into a 'War Barding'.",
		amount = 1,
		slotName = "",
		quality = 0,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 12,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28951,
				amount = 10,
				name = "ruby",
				itemId = 32383
			}
		}
	},
	{
		progress = 750,
		profession = 5,
		durability = 12,
		index = 133,
		clientId = 43244,
		tier = -1,
		itemId = 46696,
		name = "Explorer Headgear",
		category = "Moa Equipment",
		experience = 172000,
		specialization = "Craftsman",
		description = "Together with 'Explorer Saddle' can be crafted into a 'Explorer Barding'.",
		amount = 1,
		slotName = "",
		quality = 0,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 12,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28952,
				amount = 10,
				name = "sapphire",
				itemId = 32384
			}
		}
	},
	{
		progress = 750,
		profession = 5,
		durability = 12,
		index = 134,
		clientId = 43245,
		tier = -1,
		itemId = 46697,
		name = "Professional Headgear",
		category = "Moa Equipment",
		experience = 172000,
		specialization = "Craftsman",
		description = "Together with 'Professional Saddle' can be crafted into a 'Professional Barding'.",
		amount = 1,
		slotName = "",
		quality = 0,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28727,
				amount = 22,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 35436,
				amount = 12,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 28953,
				amount = 10,
				name = "topaz",
				itemId = 32385
			}
		}
	},
	{
		clientId = 43637,
		index = 135,
		durability = 7,
		profession = 5,
		progress = 500,
		itemId = 47089,
		quality = 0,
		description = "",
		slotName = "",
		name = "Medium Cannon Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 73600,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28723,
				amount = 150,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 100,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 40284,
				amount = 2,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 37229,
				amount = 2,
				name = "Common Wheel",
				itemId = 40681
			}
		}
	},
	{
		clientId = 43636,
		index = 136,
		durability = 9,
		profession = 5,
		progress = 650,
		itemId = 47088,
		quality = 0,
		description = "",
		slotName = "",
		name = "Large Cannon Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 100000,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				clientId = 28724,
				amount = 150,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 100,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40284,
				amount = 2,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 37229,
				amount = 2,
				name = "Common Wheel",
				itemId = 40681
			}
		}
	},
	{
		clientId = 47288,
		index = 137,
		durability = 4,
		profession = 5,
		progress = 75,
		itemId = 50741,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Weak Racks",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 28000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28723,
				amount = 70,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 35,
				name = "steel ingot",
				itemId = 32156
			}
		}
	},
	{
		clientId = 47276,
		index = 138,
		durability = 7,
		profession = 5,
		progress = 350,
		itemId = 50729,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Armory Racks",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 66000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 45,
				name = "titanium ingot",
				itemId = 32159
			}
		}
	},
	{
		clientId = 47281,
		index = 139,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 50734,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Reinforced Racks",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 8500,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28726,
				amount = 30,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 28723,
				amount = 10,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 47279,
		index = 140,
		durability = 8,
		profession = 5,
		progress = 525,
		itemId = 50732,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Gear Maintenance Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 80000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28724,
				amount = 80,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 70,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28941,
				amount = 30,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 15,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 47283,
		index = 141,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 50736,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Thief Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 116000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 70,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28941,
				amount = 40,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 25,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		clientId = 47287,
		index = 142,
		durability = 12,
		profession = 5,
		progress = 700,
		itemId = 50740,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Warmonger Tools",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 116000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28725,
				amount = 80,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 70,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28941,
				amount = 40,
				name = "coal",
				itemId = 32373
			},
			{
				clientId = 35433,
				amount = 25,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionBlacksmithing] = {
	{
		clientId = 28985,
		index = 1,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32417,
		quality = 50,
		description = "",
		slotName = "greatsword",
		name = "Burnished Greatsword",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 4,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 29059,
		index = 2,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32491,
		quality = 50,
		description = "",
		slotName = "sword",
		name = "Rough Sword",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 2,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 28992,
		index = 3,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32424,
		quality = 50,
		description = "",
		slotName = "axe",
		name = "Wicked Axe",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 29004,
		index = 4,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32436,
		quality = 50,
		description = "",
		slotName = "club",
		name = "Solid Mace",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 3,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 29010,
		index = 5,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32442,
		quality = 50,
		description = "",
		slotName = "dagger",
		name = "Serrated Dagger",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 2,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 28978,
		index = 7,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32410,
		quality = 50,
		description = "",
		slotName = "greataxe",
		name = "Rough Greataxe",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 29016,
		index = 8,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32448,
		quality = 50,
		description = "",
		slotName = "hammer",
		name = "Shipbuilding Mallet",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 6,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 2,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	},
	{
		clientId = 28678,
		index = 9,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32110,
		quality = 50,
		description = "",
		slotName = "plate armor",
		name = "Pliant Armor",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				name = "Copper Ingot",
				itemId = 38878
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38879
			}
		}
	},
	{
		clientId = 28684,
		index = 10,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32116,
		quality = 50,
		description = "",
		slotName = "plate helmet",
		name = "Pliant Helmet",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				name = "Copper Ingot",
				itemId = 38882
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38883
			}
		}
	},
	{
		clientId = 28685,
		index = 11,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32117,
		quality = 50,
		description = "",
		slotName = "plate legs",
		name = "Pliant Legs",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				name = "Copper Ingot",
				itemId = 38886
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38887
			}
		}
	},
	{
		clientId = 28681,
		index = 12,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 32113,
		quality = 50,
		description = "",
		slotName = "plate boots",
		name = "Pliant Boots",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 1,
				name = "Copper Ingot",
				itemId = 38890
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38891
			}
		}
	},
	{
		clientId = 37107,
		index = 13,
		durability = 3,
		profession = 5,
		progress = 50,
		itemId = 40559,
		quality = 50,
		description = "",
		slotName = "light blade",
		name = "Skirmisher's Blade",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28726,
				amount = 4,
				name = "Copper Ingot",
				itemId = 38874
			},
			{
				clientId = 35432,
				amount = 4,
				name = "Coarse Leather",
				itemId = 38875
			}
		}
	}
}

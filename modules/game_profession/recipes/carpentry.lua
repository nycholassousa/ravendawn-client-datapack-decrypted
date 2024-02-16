-- chunkname: @/modules/game_profession/recipes/carpentry.lua

recipes = recipes or {}
recipes[ProfessionCarpentry] = {
	{
		clientId = 28744,
		amount = 1,
		index = 1,
		category = "planks",
		progress = 25,
		itemId = 32176,
		quality = 75,
		slotName = "",
		name = "rough plank",
		experience = 440,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Unpolished and rugged.",
		durability = 4,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "Small Log",
				clientId = 28977,
				amount = 5,
				itemId = 32409
			}
		}
	},
	{
		clientId = 28743,
		amount = 1,
		index = 2,
		category = "planks",
		progress = 150,
		itemId = 32175,
		quality = 150,
		slotName = "",
		name = "refined plank",
		experience = 880,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Meticulously processed for smoothness and uniformity.",
		durability = 7,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "Heavy Log",
				clientId = 45504,
				amount = 8,
				itemId = 48956
			}
		}
	},
	{
		clientId = 28745,
		amount = 1,
		index = 3,
		category = "planks",
		progress = 225,
		itemId = 32177,
		quality = 200,
		slotName = "",
		name = "treated plank",
		experience = 1360,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Enhanced for durability and resistance.",
		durability = 7,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "Heavy Log",
				clientId = 45504,
				amount = 12,
				itemId = 48956
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 2,
				itemId = 38331
			}
		}
	},
	{
		clientId = 28999,
		amount = 1,
		index = 4,
		category = "weapons",
		progress = 100,
		itemId = 32431,
		quality = 100,
		slotName = "bow",
		name = "Viper's Bow",
		experience = 3680,
		profession = 4,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 6,
				itemId = 32176
			},
			{
				name = "coarse thread",
				clientId = 28971,
				amount = 2,
				itemId = 32403
			},
			{
				name = "Oakwood Bow",
				clientId = 28998,
				amount = 1,
				itemId = 32430
			}
		}
	},
	{
		clientId = 29051,
		amount = 1,
		index = 5,
		category = "weapons",
		progress = 100,
		itemId = 32483,
		quality = 100,
		slotName = "staff",
		name = "Warlock Staff",
		experience = 3680,
		profession = 4,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 8,
				itemId = 32176
			},
			{
				name = "Mystic Staff",
				clientId = 29050,
				amount = 1,
				itemId = 32482
			}
		}
	},
	{
		clientId = 33991,
		amount = 1,
		index = 6,
		category = "weapons",
		progress = 100,
		itemId = 37423,
		quality = 100,
		slotName = "sceptre",
		name = "Tribal Sceptre",
		experience = 1840,
		profession = 4,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 4,
				itemId = 32176
			},
			{
				name = "Knotted Sceptre",
				clientId = 33990,
				amount = 1,
				itemId = 37422
			}
		}
	},
	{
		clientId = 29000,
		amount = 1,
		index = 7,
		category = "weapons",
		progress = 200,
		itemId = 32432,
		quality = 100,
		slotName = "bow",
		name = "Black Ash Bow",
		experience = 14000,
		profession = 4,
		tier = 3,
		description = "",
		durability = 5,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 10,
				itemId = 32175
			},
			{
				name = "craftman's thread",
				clientId = 28972,
				amount = 5,
				itemId = 32404
			},
			{
				name = "Viper's Bow",
				clientId = 28999,
				amount = 1,
				itemId = 32431
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
		clientId = 29052,
		amount = 1,
		index = 8,
		category = "weapons",
		progress = 200,
		itemId = 32484,
		quality = 100,
		slotName = "staff",
		name = "Cultist Staff",
		experience = 14000,
		profession = 4,
		tier = 3,
		description = "",
		durability = 5,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 16,
				itemId = 32175
			},
			{
				name = "Warlock Staff",
				clientId = 29051,
				amount = 1,
				itemId = 32483
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
		clientId = 33992,
		amount = 1,
		index = 9,
		category = "weapons",
		progress = 200,
		itemId = 37424,
		quality = 100,
		slotName = "sceptre",
		name = "Serpent Sceptre",
		experience = 7000,
		profession = 4,
		tier = 3,
		description = "",
		durability = 5,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 10,
				itemId = 32175
			},
			{
				name = "Tribal Sceptre",
				clientId = 33991,
				amount = 1,
				itemId = 37423
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
		clientId = 29001,
		amount = 1,
		index = 10,
		category = "weapons",
		progress = 350,
		itemId = 32433,
		quality = 100,
		slotName = "bow",
		name = "Bullseye Bow",
		experience = 38000,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 18,
				itemId = 32177
			},
			{
				name = "fine thread",
				clientId = 28973,
				amount = 7,
				itemId = 32405
			},
			{
				name = "Black Ash Bow",
				clientId = 29000,
				amount = 1,
				itemId = 32432
			},
			{
				name = "Sturdy String",
				clientId = 38271,
				amount = 20,
				itemId = 41723
			}
		}
	},
	{
		clientId = 29053,
		amount = 1,
		index = 11,
		category = "weapons",
		progress = 350,
		itemId = 32485,
		quality = 100,
		slotName = "staff",
		name = "Celestial Staff",
		experience = 38000,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 28,
				itemId = 32177
			},
			{
				name = "Cultist Staff",
				clientId = 29052,
				amount = 1,
				itemId = 32484
			},
			{
				name = "Ambersprite Shard",
				clientId = 40264,
				amount = 20,
				itemId = 43716
			}
		}
	},
	{
		clientId = 33993,
		amount = 1,
		index = 12,
		category = "weapons",
		progress = 350,
		itemId = 37425,
		quality = 100,
		slotName = "sceptre",
		name = "Crystal Sceptre",
		experience = 19000,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 15,
				itemId = 32177
			},
			{
				name = "Serpent Sceptre",
				clientId = 33992,
				amount = 1,
				itemId = 37424
			},
			{
				name = "Ambersprite Shard",
				clientId = 40264,
				amount = 10,
				itemId = 43716
			}
		}
	},
	{
		clientId = 29002,
		amount = 1,
		index = 13,
		category = "weapons",
		progress = 525,
		itemId = 32434,
		quality = 100,
		slotName = "bow",
		name = "Predator Bow",
		experience = 79000,
		profession = 4,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 32,
				itemId = 48958
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 14,
				itemId = 32401
			},
			{
				name = "Bullseye Bow",
				clientId = 29001,
				amount = 1,
				itemId = 32433
			},
			{
				name = "Hardwood",
				clientId = 40272,
				amount = 24,
				itemId = 43724
			}
		}
	},
	{
		clientId = 29054,
		amount = 1,
		index = 14,
		category = "weapons",
		progress = 525,
		itemId = 32486,
		quality = 100,
		slotName = "staff",
		name = "Lightshard Staff",
		experience = 79000,
		profession = 4,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 52,
				itemId = 48958
			},
			{
				name = "Celestial Staff",
				clientId = 29053,
				amount = 1,
				itemId = 32485
			},
			{
				name = "Enervating Core",
				clientId = 40270,
				amount = 24,
				itemId = 43722
			}
		}
	},
	{
		clientId = 33994,
		amount = 1,
		index = 15,
		category = "weapons",
		progress = 525,
		itemId = 37426,
		quality = 100,
		slotName = "sceptre",
		name = "Celestial Sceptre",
		experience = 39500,
		profession = 4,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 26,
				itemId = 48958
			},
			{
				name = "Crystal Sceptre",
				clientId = 33993,
				amount = 1,
				itemId = 37425
			},
			{
				name = "Enervating Core",
				clientId = 40270,
				amount = 12,
				itemId = 43722
			}
		}
	},
	{
		clientId = 28896,
		amount = 1,
		index = 16,
		category = "fishing",
		progress = 100,
		itemId = 32328,
		quality = 0,
		slotName = "fishing rod",
		name = "fishing stick",
		experience = 1040,
		profession = 4,
		tier = 1,
		description = "",
		durability = 4,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 1,
				itemId = 32176
			},
			{
				name = "coarse thread",
				clientId = 28971,
				amount = 1,
				itemId = 32403
			}
		}
	},
	{
		clientId = 28898,
		amount = 1,
		index = 17,
		category = "fishing",
		progress = 200,
		itemId = 32330,
		quality = 0,
		slotName = "fishing rod",
		name = "fishing rod",
		experience = 2080,
		profession = 4,
		tier = 2,
		description = "",
		durability = 5,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 2,
				itemId = 32176
			},
			{
				name = "coarse thread",
				clientId = 28971,
				amount = 2,
				itemId = 32403
			},
			{
				name = "fishing stick",
				clientId = 28896,
				amount = 1,
				itemId = 32328
			}
		}
	},
	{
		clientId = 28895,
		amount = 1,
		index = 18,
		category = "fishing",
		progress = 250,
		itemId = 32327,
		quality = 0,
		slotName = "fishing rod",
		name = "craftman's fishing rod",
		experience = 6240,
		profession = 4,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 3,
				itemId = 32175
			},
			{
				name = "craftman's thread",
				clientId = 28972,
				amount = 3,
				itemId = 32404
			},
			{
				name = "fishing rod",
				clientId = 28898,
				amount = 1,
				itemId = 32330
			}
		}
	},
	{
		clientId = 28899,
		amount = 1,
		index = 19,
		category = "fishing",
		progress = 350,
		itemId = 32331,
		quality = 0,
		slotName = "fishing rod",
		name = "sailor's fishing rod",
		experience = 13600,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 3,
				itemId = 32177
			},
			{
				name = "fine thread",
				clientId = 28973,
				amount = 5,
				itemId = 32405
			},
			{
				name = "craftman's fishing rod",
				clientId = 28895,
				amount = 1,
				itemId = 32327
			}
		}
	},
	{
		clientId = 28900,
		amount = 1,
		index = 20,
		category = "fishing",
		progress = 525,
		itemId = 32332,
		quality = 0,
		slotName = "fishing rod",
		name = "artisan fishing rod",
		experience = 44800,
		profession = 4,
		tier = 5,
		description = "",
		durability = 9,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 10,
				itemId = 48958
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 12,
				itemId = 32401
			},
			{
				name = "sailor's fishing rod",
				clientId = 28899,
				amount = 1,
				itemId = 32331
			}
		}
	},
	{
		slotName = "fishing rod",
		quality = 0,
		tier = 6,
		progress = 600,
		clientId = 28897,
		itemId = 32329,
		specialization = "Angler Carpenter",
		name = "lightwood angler",
		experience = 70400,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 21,
		category = "fishing",
		description = "",
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 10,
				itemId = 48955
			},
			{
				name = "artisan thread",
				clientId = 28970,
				amount = 16,
				itemId = 32402
			},
			{
				name = "artisan fishing rod",
				clientId = 28900,
				amount = 1,
				itemId = 32332
			}
		}
	},
	{
		slotName = "bow",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37155,
		itemId = 40607,
		specialization = "Fletcher",
		name = "Marksman Bow",
		experience = 115200,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 22,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 36,
				itemId = 48955
			},
			{
				name = "artisan thread",
				clientId = 28970,
				amount = 12,
				itemId = 32402
			},
			{
				name = "Predator Bow",
				clientId = 29002,
				amount = 1,
				itemId = 32434
			},
			{
				name = "Supernatural Thread",
				clientId = 40279,
				amount = 32,
				itemId = 43731
			}
		}
	},
	{
		slotName = "staff",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37150,
		itemId = 40602,
		specialization = "Fletcher",
		name = "Necromancer's Staff",
		experience = 115200,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 23,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 52,
				itemId = 48955
			},
			{
				name = "Lightshard Staff",
				clientId = 29054,
				amount = 1,
				itemId = 32486
			},
			{
				name = "Mystical Crystal",
				clientId = 40273,
				amount = 32,
				itemId = 43725
			}
		}
	},
	{
		slotName = "sceptre",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37157,
		itemId = 40609,
		specialization = "Fletcher",
		name = "Crowbone Sceptre",
		experience = 57600,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 24,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 26,
				itemId = 48955
			},
			{
				name = "Celestial Sceptre",
				clientId = 33994,
				amount = 1,
				itemId = 37426
			},
			{
				name = "Mystical Crystal",
				clientId = 40273,
				amount = 16,
				itemId = 43725
			}
		}
	},
	{
		clientId = 37219,
		amount = 1,
		index = 25,
		category = "Housing Craft",
		progress = 600,
		itemId = 40671,
		quality = 0,
		slotName = "",
		name = "Armoires",
		experience = 15400,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 10,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 5,
				itemId = 43734
			}
		}
	},
	{
		clientId = 37279,
		amount = 1,
		index = 26,
		category = "Housing Craft",
		progress = 350,
		itemId = 40731,
		quality = 0,
		slotName = "",
		name = "Square Table",
		experience = 27500,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 20,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 4,
				itemId = 43734
			}
		}
	},
	{
		clientId = 37283,
		amount = 1,
		index = 27,
		category = "Housing Craft",
		progress = 600,
		itemId = 40735,
		quality = 0,
		slotName = "",
		name = "Sturdy Square Table",
		experience = 38000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 25,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 5,
				itemId = 43734
			}
		}
	},
	{
		clientId = 37224,
		amount = 1,
		index = 28,
		category = "Housing Craft",
		progress = 350,
		itemId = 40676,
		quality = 0,
		slotName = "",
		name = "Cabinet",
		experience = 3600,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 3,
				itemId = 32177
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 1,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37244,
		amount = 1,
		index = 29,
		category = "Housing Craft",
		progress = 600,
		itemId = 40696,
		quality = 0,
		slotName = "",
		name = "Loom",
		experience = 24000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 8,
				itemId = 48958
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 5,
				itemId = 32401
			}
		}
	},
	{
		clientId = 37227,
		amount = 1,
		index = 30,
		category = "Housing Craft",
		progress = 200,
		itemId = 40679,
		quality = 0,
		slotName = "",
		name = "Chair",
		experience = 7200,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 5,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 8,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 2,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37267,
		amount = 1,
		index = 31,
		category = "Housing Craft",
		progress = 200,
		itemId = 40719,
		quality = 0,
		slotName = "",
		name = "Simple Bed",
		experience = 24000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 5,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 10,
				itemId = 32175
			},
			{
				name = "simple cloth",
				clientId = 28966,
				amount = 15,
				itemId = 32398
			},
			{
				name = "coarse thread",
				clientId = 28971,
				amount = 10,
				itemId = 32403
			}
		}
	},
	{
		clientId = 37228,
		amount = 1,
		index = 32,
		category = "Housing Craft",
		progress = 350,
		itemId = 40680,
		quality = 0,
		slotName = "",
		name = "Comfortable Bed",
		experience = 64500,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 12,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 4,
				itemId = 43734
			},
			{
				name = "merchant's cloth",
				clientId = 28964,
				amount = 10,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 10,
				itemId = 32401
			}
		}
	},
	{
		clientId = 37280,
		amount = 1,
		index = 33,
		category = "Housing Craft",
		progress = 200,
		itemId = 40732,
		quality = 0,
		slotName = "",
		name = "Storage Container",
		experience = 7360,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 5,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 8,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 1,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 1,
				itemId = 32169
			}
		}
	},
	{
		clientId = 37290,
		amount = 1,
		index = 34,
		category = "Housing Craft",
		progress = 200,
		itemId = 40742,
		quality = 0,
		slotName = "",
		name = "Work Bench",
		experience = 26000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 5,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 20,
				itemId = 32175
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 20,
				itemId = 32155
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 5,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37287,
		amount = 1,
		index = 35,
		category = "Housing Craft",
		progress = 350,
		itemId = 40739,
		quality = 0,
		slotName = "",
		name = "Superior Work Bench",
		experience = 50500,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 30,
				itemId = 32177
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 15,
				itemId = 32156
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 10,
				itemId = 32157
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 5,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37222,
		amount = 1,
		index = 36,
		category = "Housing Craft",
		progress = 600,
		itemId = 40674,
		quality = 0,
		slotName = "",
		name = "Artisan Work Bench",
		experience = 140000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 65,
				itemId = 48958
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 50,
				itemId = 32157
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 30,
				itemId = 32159
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 5,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37231,
		amount = 1,
		index = 37,
		category = "Housing Craft",
		progress = 600,
		itemId = 40683,
		quality = 0,
		slotName = "",
		name = "Fireplace",
		experience = 27600,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 18,
				itemId = 48958
			},
			{
				name = "stone",
				clientId = 28946,
				amount = 10,
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
		clientId = 37245,
		amount = 1,
		index = 38,
		category = "Housing Craft",
		progress = 600,
		itemId = 40697,
		quality = 0,
		slotName = "",
		name = "Luxury Bed",
		experience = 130000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 12,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 25,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "artisan cloth",
				clientId = 28962,
				amount = 20,
				itemId = 32394
			},
			{
				name = "artisan thread",
				clientId = 28970,
				amount = 10,
				itemId = 32402
			}
		}
	},
	{
		clientId = 37275,
		amount = 1,
		index = 39,
		category = "Ship Craft",
		progress = 100,
		itemId = 40727,
		quality = 0,
		slotName = "",
		name = "Small Hull Frame",
		experience = 48800,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 50,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 40,
				itemId = 32166
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
		clientId = 37270,
		amount = 1,
		index = 40,
		category = "Ship Craft",
		progress = 100,
		itemId = 40722,
		quality = 0,
		slotName = "",
		name = "Small Cargo Hold",
		experience = 29600,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 30,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 20,
				itemId = 32166
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 8,
				itemId = 32155
			}
		}
	},
	{
		clientId = 37274,
		amount = 1,
		index = 41,
		category = "Ship Craft",
		progress = 100,
		itemId = 40726,
		quality = 0,
		slotName = "",
		name = "Small Gun Deck",
		experience = 29600,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 30,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 20,
				itemId = 32166
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 8,
				itemId = 32155
			}
		}
	},
	{
		clientId = 37273,
		amount = 1,
		index = 42,
		category = "Ship Craft",
		progress = 100,
		itemId = 40725,
		quality = 0,
		slotName = "",
		name = "Small Fishing Storage",
		experience = 29600,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 30,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 20,
				itemId = 32166
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 8,
				itemId = 32155
			}
		}
	},
	{
		clientId = 37277,
		amount = 1,
		index = 43,
		category = "Ship Module",
		progress = 225,
		itemId = 40729,
		quality = 0,
		slotName = "",
		name = "Small Tradepack Container Kit",
		experience = 82000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 6,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 2,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37269,
		amount = 1,
		index = 44,
		category = "Ship Module",
		progress = 225,
		itemId = 40721,
		quality = 0,
		slotName = "",
		name = "Small Ammunition Cabin Kit",
		experience = 82000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 6,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 2,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37271,
		amount = 1,
		index = 45,
		category = "Ship Module",
		progress = 225,
		itemId = 40723,
		quality = 0,
		slotName = "",
		name = "Small Fishing Crane Kit",
		experience = 82000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 6,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 2,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37256,
		amount = 1,
		index = 46,
		category = "Ship Craft",
		progress = 200,
		itemId = 40708,
		quality = 0,
		slotName = "",
		name = "Medium Hull Frame",
		experience = 212000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 120,
				itemId = 32177
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 80,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 25,
				itemId = 32169
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 8,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37251,
		amount = 1,
		index = 47,
		category = "Ship Craft",
		progress = 200,
		itemId = 40703,
		quality = 0,
		slotName = "",
		name = "Medium Cargo Hold",
		experience = 88000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 40,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 10,
				itemId = 32169
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 3,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37254,
		amount = 1,
		index = 48,
		category = "Ship Craft",
		progress = 200,
		itemId = 40706,
		quality = 0,
		slotName = "",
		name = "Medium Fishing Storage",
		experience = 88000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 40,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 10,
				itemId = 32169
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 3,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37255,
		amount = 1,
		index = 49,
		category = "Ship Craft",
		progress = 200,
		itemId = 40707,
		quality = 0,
		slotName = "",
		name = "Medium Gun Deck",
		experience = 88000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 40,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 10,
				itemId = 32169
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 3,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37258,
		amount = 1,
		index = 50,
		category = "Ship Module",
		progress = 525,
		itemId = 40710,
		quality = 0,
		slotName = "",
		name = "Medium Tradepack Container Kit",
		experience = 245000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 9,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 135,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 30,
				itemId = 43734
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 4,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37250,
		amount = 1,
		index = 51,
		category = "Ship Module",
		progress = 525,
		itemId = 40702,
		quality = 0,
		slotName = "",
		name = "Medium Ammunition Cabin Kit",
		experience = 245000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 9,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 135,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 30,
				itemId = 43734
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 4,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37252,
		amount = 1,
		index = 52,
		category = "Ship Module",
		progress = 525,
		itemId = 40704,
		quality = 0,
		slotName = "",
		name = "Medium Fishing Crane Kit",
		experience = 245000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 9,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 135,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 30,
				itemId = 43734
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 4,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37241,
		amount = 1,
		index = 53,
		category = "Ship Craft",
		progress = 525,
		itemId = 40693,
		quality = 0,
		slotName = "",
		name = "Large Hull Frame",
		experience = 625000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 300,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 150,
				itemId = 43734
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 50,
				itemId = 43736
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 20,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37237,
		amount = 1,
		index = 54,
		category = "Ship Craft",
		progress = 525,
		itemId = 40689,
		quality = 0,
		slotName = "",
		name = "Large Cargo Hold",
		experience = 312000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 160,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 80,
				itemId = 43734
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 20,
				itemId = 43736
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 8,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37240,
		amount = 1,
		index = 55,
		category = "Ship Craft",
		progress = 525,
		itemId = 40692,
		quality = 0,
		slotName = "",
		name = "Large Gun Deck",
		experience = 312000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 160,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 80,
				itemId = 43734
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 20,
				itemId = 43736
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 8,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37239,
		amount = 1,
		index = 56,
		category = "Ship Craft",
		progress = 525,
		itemId = 40691,
		quality = 0,
		slotName = "",
		name = "Large Fishing Storage",
		experience = 312000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 160,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 80,
				itemId = 43734
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 20,
				itemId = 43736
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 8,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37249,
		amount = 1,
		index = 57,
		category = "Ship Craft",
		progress = 100,
		itemId = 40701,
		quality = 0,
		slotName = "",
		name = "Mast",
		experience = 20000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Ships at the Ship Builder",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 20,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 20,
				itemId = 32166
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 5,
				itemId = 32155
			}
		}
	},
	{
		clientId = 37229,
		amount = 1,
		index = 58,
		category = "Wagon Craft",
		progress = 100,
		itemId = 40681,
		quality = 0,
		slotName = "",
		name = "Common Wheel",
		experience = 1600,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 4,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 10,
				itemId = 32176
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 5,
				itemId = 32166
			}
		}
	},
	{
		clientId = 37284,
		amount = 1,
		index = 59,
		category = "Wagon Craft",
		progress = 350,
		itemId = 40736,
		quality = 0,
		slotName = "",
		name = "Sturdy Wheel",
		experience = 8800,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 7,
		level = {
			mass = 46,
			single = 41
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 16,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 5,
				itemId = 43734
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 1,
				itemId = 43738
			}
		}
	},
	{
		clientId = 37264,
		amount = 1,
		index = 60,
		category = "Wagon Craft",
		progress = 525,
		itemId = 40716,
		quality = 0,
		slotName = "",
		name = "Reinforced Wheel",
		experience = 28000,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 9,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 50,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 1,
				itemId = 43737
			}
		}
	},
	{
		clientId = 37278,
		amount = 1,
		index = 61,
		category = "Wagon Craft",
		progress = 100,
		itemId = 40730,
		quality = 0,
		slotName = "",
		name = "Small Wagon Container",
		experience = 11200,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 20,
				itemId = 32176
			},
			{
				name = "Common Plate",
				clientId = 40283,
				amount = 1,
				itemId = 43735
			}
		}
	},
	{
		clientId = 37259,
		amount = 1,
		index = 62,
		category = "Wagon Craft",
		progress = 350,
		itemId = 40711,
		quality = 0,
		slotName = "",
		name = "Medium Wagon Container",
		experience = 57600,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 7,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 20,
				itemId = 32177
			},
			{
				name = "reinforced plate",
				clientId = 28740,
				amount = 5,
				itemId = 32172
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 5,
				itemId = 32169
			}
		}
	},
	{
		clientId = 37243,
		amount = 1,
		index = 63,
		category = "Wagon Craft",
		progress = 525,
		itemId = 40695,
		quality = 0,
		slotName = "",
		name = "Large Wagon Container",
		experience = 146400,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 7,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 35,
				itemId = 48958
			},
			{
				name = "reinforced plate",
				clientId = 28740,
				amount = 15,
				itemId = 32172
			},
			{
				name = "Steel Bar",
				clientId = 40284,
				amount = 10,
				itemId = 43736
			}
		}
	},
	{
		clientId = 28998,
		amount = 1,
		index = 64,
		category = "weapons",
		progress = 50,
		itemId = 32430,
		quality = 100,
		slotName = "bow",
		name = "Oakwood Bow",
		experience = 1760,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 3,
				itemId = 32176
			},
			{
				name = "coarse thread",
				clientId = 28971,
				amount = 1,
				itemId = 32403
			}
		}
	},
	{
		clientId = 29050,
		amount = 1,
		index = 65,
		category = "weapons",
		progress = 50,
		itemId = 32482,
		quality = 100,
		slotName = "staff",
		name = "Mystic Staff",
		experience = 1760,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 4,
				itemId = 32176
			}
		}
	},
	{
		clientId = 33990,
		amount = 1,
		index = 66,
		category = "weapons",
		progress = 50,
		itemId = 37422,
		quality = 100,
		slotName = "sceptre",
		name = "Knotted Sceptre",
		experience = 880,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 2,
				itemId = 32176
			}
		}
	},
	{
		clientId = 40286,
		amount = 1,
		index = 67,
		category = "Wagon Craft",
		progress = 200,
		itemId = 43738,
		quality = 0,
		slotName = "",
		name = "Wooden Arch",
		experience = 4800,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. A basic but sturdy wooden arch.",
		durability = 5,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 15,
				itemId = 32175
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 10,
				itemId = 38331
			}
		}
	},
	{
		clientId = 40285,
		amount = 1,
		index = 68,
		category = "Wagon Craft",
		progress = 350,
		itemId = 43737,
		quality = 0,
		slotName = "",
		name = "Supple Wooden Arch",
		experience = 7600,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Crafted with precision, this arch combines flexibility with strength.",
		durability = 7,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 15,
				itemId = 32177
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 20,
				itemId = 38331
			}
		}
	},
	{
		clientId = 40492,
		amount = 1,
		index = 69,
		category = "Wagon Craft",
		progress = 225,
		itemId = 43944,
		quality = 0,
		slotName = "",
		name = "Swift Wheel",
		experience = 3040,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 6,
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 10,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 5,
				itemId = 32166
			}
		}
	},
	{
		clientId = 40491,
		amount = 1,
		index = 70,
		category = "Wagon Craft",
		progress = 225,
		itemId = 43943,
		quality = 0,
		slotName = "",
		name = "Common Wagon Container",
		experience = 29200,
		profession = 4,
		tier = -1,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		durability = 6,
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 25,
				itemId = 32175
			},
			{
				name = "Common Plate",
				clientId = 40283,
				amount = 3,
				itemId = 43735
			}
		}
	},
	{
		clientId = 41847,
		amount = 1,
		index = 74,
		category = "planks",
		progress = 100,
		itemId = 45299,
		quality = 100,
		slotName = "",
		name = "Dense Plank",
		experience = 2000,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Sturdy crafting material crafted from dense logs.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "Dense Log",
				clientId = 34371,
				amount = 4,
				itemId = 37803
			}
		}
	},
	{
		clientId = 41848,
		amount = 1,
		index = 75,
		category = "planks",
		progress = 250,
		itemId = 45300,
		quality = 250,
		slotName = "",
		name = "Heavy Plank",
		experience = 4400,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. Exceptionally robust crafting material forged from dense logs.",
		durability = 6,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "Dense Log",
				clientId = 34371,
				amount = 8,
				itemId = 37803
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 2,
				itemId = 38331
			}
		}
	},
	{
		clientId = 42777,
		amount = 1,
		index = 76,
		category = "Housing Craft",
		progress = 100,
		itemId = 46229,
		quality = 0,
		slotName = "",
		name = "Weak Table",
		experience = 3600,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 8,
				itemId = 32176
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 2,
				itemId = 32166
			}
		}
	},
	{
		clientId = 42782,
		amount = 1,
		index = 77,
		category = "Housing Craft",
		progress = 500,
		itemId = 46234,
		quality = 0,
		slotName = "",
		name = "Sturdy Container",
		experience = 41600,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 18,
				itemId = 48958
			},
			{
				name = "Common Plate",
				clientId = 40283,
				amount = 6,
				itemId = 43735
			}
		}
	},
	{
		clientId = 42781,
		amount = 1,
		index = 78,
		category = "Housing Craft",
		progress = 100,
		itemId = 46233,
		quality = 0,
		slotName = "",
		name = "Frail Loom",
		experience = 8000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 10,
				itemId = 32176
			},
			{
				name = "simple cloth",
				clientId = 28966,
				amount = 6,
				itemId = 32398
			}
		}
	},
	{
		clientId = 42783,
		amount = 1,
		index = 79,
		category = "Housing Craft",
		progress = 250,
		itemId = 46235,
		quality = 0,
		slotName = "",
		name = "Simple Loom",
		experience = 23000,
		profession = 4,
		tier = -1,
		description = "Used in housing upgrades.",
		durability = 6,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 10,
				itemId = 32177
			},
			{
				name = "fine thread",
				clientId = 28973,
				amount = 5,
				itemId = 32405
			}
		}
	},
	{
		clientId = 43638,
		amount = 1,
		index = 80,
		category = "Ship Module",
		progress = 225,
		itemId = 47090,
		quality = 0,
		slotName = "",
		name = "Small Maintenance Unit Kit",
		experience = 82000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 6,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 50,
				itemId = 32177
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 10,
				itemId = 43734
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "Wooden Arch",
				clientId = 40286,
				amount = 2,
				itemId = 43738
			}
		}
	},
	{
		clientId = 43635,
		amount = 1,
		index = 81,
		category = "Ship Module",
		progress = 525,
		itemId = 47087,
		quality = 0,
		slotName = "",
		name = "Medium Maintenance Unit Kit",
		experience = 245000,
		profession = 4,
		tier = -1,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		durability = 9,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 135,
				itemId = 48958
			},
			{
				name = "Bolt",
				clientId = 40282,
				amount = 30,
				itemId = 43734
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 20,
				itemId = 32157
			},
			{
				name = "Supple Wooden Arch",
				clientId = 40285,
				amount = 4,
				itemId = 43737
			}
		}
	},
	{
		clientId = 45506,
		amount = 1,
		index = 82,
		category = "planks",
		progress = 450,
		itemId = 48958,
		quality = 450,
		slotName = "",
		name = "Sturdy Plank",
		experience = 1500,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. A solid and dependable wooden plank.",
		durability = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Log",
				clientId = 45505,
				amount = 10,
				itemId = 48957
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 4,
				itemId = 38331
			}
		}
	},
	{
		clientId = 45503,
		amount = 1,
		index = 83,
		category = "planks",
		progress = 550,
		itemId = 48955,
		quality = 550,
		slotName = "",
		name = "Fine Plank",
		experience = 2200,
		profession = 4,
		tier = -1,
		description = "Used in various recipes. A meticulously crafted wooden plank.",
		durability = 9,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "Fine Log",
				clientId = 45502,
				amount = 10,
				itemId = 48954
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 6,
				itemId = 38331
			}
		}
	},
	{
		clientId = 29028,
		amount = 1,
		index = 84,
		category = "weapons",
		progress = 50,
		itemId = 32460,
		quality = 100,
		slotName = "buckler shield",
		name = "Wooden Buckler",
		experience = 880,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 2,
				itemId = 32176
			}
		}
	},
	{
		clientId = 29029,
		amount = 1,
		index = 85,
		category = "weapons",
		progress = 100,
		itemId = 32461,
		quality = 100,
		slotName = "buckler shield",
		name = "Sturdy Buckler",
		experience = 1840,
		profession = 4,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 3,
				itemId = 32176
			},
			{
				name = "Coarse Leather",
				clientId = 35432,
				amount = 1,
				itemId = 38864
			},
			{
				name = "Wooden Buckler",
				clientId = 29028,
				amount = 1,
				itemId = 32460
			}
		}
	},
	{
		clientId = 29030,
		amount = 1,
		index = 86,
		category = "weapons",
		progress = 200,
		itemId = 32462,
		quality = 100,
		slotName = "buckler shield",
		name = "Marauder's Shield",
		experience = 7000,
		profession = 4,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 5,
				itemId = 32175
			},
			{
				name = "Craftman's Leather",
				clientId = 35433,
				amount = 2,
				itemId = 38865
			},
			{
				name = "Sturdy Buckler",
				clientId = 29029,
				amount = 1,
				itemId = 32461
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
		clientId = 29031,
		amount = 1,
		index = 87,
		category = "weapons",
		progress = 350,
		itemId = 32463,
		quality = 100,
		slotName = "buckler shield",
		name = "Rune Shield",
		experience = 19000,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 12,
				itemId = 32177
			},
			{
				name = "Tanned Leather",
				clientId = 35434,
				amount = 3,
				itemId = 38866
			},
			{
				name = "Marauder's Shield",
				clientId = 29030,
				amount = 1,
				itemId = 32462
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
		clientId = 29032,
		amount = 1,
		index = 88,
		category = "weapons",
		progress = 525,
		itemId = 32464,
		quality = 100,
		slotName = "buckler shield",
		name = "Ravenguard's Shield",
		experience = 39500,
		profession = 4,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 20,
				itemId = 48958
			},
			{
				name = "Merchant's Leather",
				clientId = 35435,
				amount = 4,
				itemId = 38867
			},
			{
				name = "Rune Shield",
				clientId = 29031,
				amount = 1,
				itemId = 32463
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
		slotName = "buckler shield",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 37149,
		itemId = 40601,
		specialization = "Fletcher",
		name = "Nocturnal Shield",
		experience = 57600,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 89,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 22,
				itemId = 48955
			},
			{
				name = "Artisan Leather",
				clientId = 35436,
				amount = 4,
				itemId = 38868
			},
			{
				name = "Ravenguard's Shield",
				clientId = 29032,
				amount = 1,
				itemId = 32464
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
		clientId = 46241,
		amount = 1,
		index = 90,
		category = "weapons",
		progress = 50,
		itemId = 49694,
		quality = 100,
		slotName = "tower shield",
		name = "Wooden Bulwark",
		experience = 880,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 2,
				itemId = 32176
			}
		}
	},
	{
		clientId = 46242,
		amount = 1,
		index = 91,
		category = "weapons",
		progress = 100,
		itemId = 49695,
		quality = 100,
		slotName = "tower shield",
		name = "Sentinel Shield",
		experience = 1840,
		profession = 4,
		tier = 2,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 3,
				itemId = 32176
			},
			{
				name = "copper ingot",
				clientId = 28726,
				amount = 3,
				itemId = 32158
			},
			{
				name = "Wooden Bulwark",
				clientId = 46241,
				amount = 1,
				itemId = 49694
			}
		}
	},
	{
		clientId = 46243,
		amount = 1,
		index = 92,
		category = "weapons",
		progress = 200,
		itemId = 49696,
		quality = 100,
		slotName = "tower shield",
		name = "Defender's Bulwark",
		experience = 7000,
		profession = 4,
		tier = 3,
		description = "",
		durability = 6,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 6,
				itemId = 32175
			},
			{
				name = "iron ingot",
				clientId = 28723,
				amount = 8,
				itemId = 32155
			},
			{
				name = "Sentinel Shield",
				clientId = 46242,
				amount = 1,
				itemId = 49695
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
		clientId = 46244,
		amount = 1,
		index = 93,
		category = "weapons",
		progress = 350,
		itemId = 49697,
		quality = 100,
		slotName = "tower shield",
		name = "Steelclad Bulwark",
		experience = 19000,
		profession = 4,
		tier = 4,
		description = "",
		durability = 7,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 12,
				itemId = 32177
			},
			{
				name = "steel ingot",
				clientId = 28724,
				amount = 10,
				itemId = 32156
			},
			{
				name = "Defender's Bulwark",
				clientId = 46243,
				amount = 1,
				itemId = 49696
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
		clientId = 46245,
		amount = 1,
		index = 94,
		category = "weapons",
		progress = 525,
		itemId = 49698,
		quality = 100,
		slotName = "tower shield",
		name = "King's Defender",
		experience = 39500,
		profession = 4,
		tier = 5,
		description = "",
		durability = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 20,
				itemId = 48958
			},
			{
				name = "cobalt ingot",
				clientId = 28725,
				amount = 18,
				itemId = 32157
			},
			{
				name = "Steelclad Bulwark",
				clientId = 46244,
				amount = 1,
				itemId = 49697
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
		slotName = "tower shield",
		quality = 100,
		tier = 6,
		progress = 700,
		clientId = 46246,
		itemId = 49699,
		specialization = "Fletcher",
		name = "Protector's Tower Shield",
		experience = 57600,
		profession = 4,
		durability = 12,
		amount = 1,
		index = 95,
		category = "weapons",
		description = "",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "Fine Plank",
				clientId = 45503,
				amount = 22,
				itemId = 48955
			},
			{
				name = "titanium ingot",
				clientId = 28727,
				amount = 14,
				itemId = 32159
			},
			{
				name = "King's Defender",
				clientId = 46245,
				amount = 1,
				itemId = 49698
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
		clientId = 47280,
		amount = 1,
		index = 96,
		category = "Housing Craft",
		progress = 100,
		itemId = 50733,
		quality = 0,
		slotName = "",
		name = "Protective Charm",
		experience = 8000,
		profession = 4,
		tier = -1,
		description = "",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 10,
				itemId = 32176
			},
			{
				name = "simple cloth",
				clientId = 28966,
				amount = 6,
				itemId = 32398
			}
		}
	},
	{
		clientId = 47286,
		amount = 1,
		index = 97,
		category = "Housing Craft",
		progress = 250,
		itemId = 50739,
		quality = 0,
		slotName = "",
		name = "Warding Charm",
		experience = 23000,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 6,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 10,
				itemId = 32177
			},
			{
				name = "fine thread",
				clientId = 28973,
				amount = 5,
				itemId = 32405
			}
		}
	},
	{
		clientId = 47282,
		amount = 1,
		index = 98,
		category = "Housing Craft",
		progress = 600,
		itemId = 50735,
		quality = 0,
		slotName = "",
		name = "Spellbound Charm",
		experience = 35000,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 12,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 15,
				itemId = 48958
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 5,
				itemId = 32401
			}
		}
	},
	{
		clientId = 47277,
		amount = 1,
		index = 99,
		category = "Housing Craft",
		progress = 100,
		itemId = 50730,
		quality = 0,
		slotName = "",
		name = "Basic Stabilizer",
		experience = 8000,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 4,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "rough plank",
				clientId = 28744,
				amount = 10,
				itemId = 32176
			},
			{
				name = "simple cloth",
				clientId = 28966,
				amount = 6,
				itemId = 32398
			}
		}
	},
	{
		clientId = 47278,
		amount = 1,
		index = 100,
		category = "Housing Craft",
		progress = 250,
		itemId = 50731,
		quality = 0,
		slotName = "",
		name = "Energy Stabilizer",
		experience = 23000,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 6,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "treated plank",
				clientId = 28745,
				amount = 10,
				itemId = 32177
			},
			{
				name = "fine thread",
				clientId = 28973,
				amount = 5,
				itemId = 32405
			}
		}
	},
	{
		clientId = 47275,
		amount = 1,
		index = 101,
		category = "Housing Craft",
		progress = 600,
		itemId = 50728,
		quality = 0,
		slotName = "",
		name = "Arcane Stabilizer",
		experience = 35000,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 12,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 15,
				itemId = 48958
			},
			{
				name = "merchant's thread",
				clientId = 28969,
				amount = 5,
				itemId = 32401
			}
		}
	},
	{
		clientId = 47285,
		amount = 1,
		index = 102,
		category = "Housing Craft",
		progress = 200,
		itemId = 50738,
		quality = 0,
		slotName = "",
		name = "Wall Reinforcement",
		experience = 7360,
		profession = 4,
		tier = -1,
		description = "Used for housing craft.",
		durability = 5,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "refined plank",
				clientId = 28743,
				amount = 8,
				itemId = 32175
			},
			{
				name = "nail",
				clientId = 28734,
				amount = 1,
				itemId = 32166
			},
			{
				name = "iron bar",
				clientId = 28737,
				amount = 1,
				itemId = 32169
			}
		}
	},
	{
		slotName = "",
		quality = 0,
		tier = -1,
		progress = 500,
		clientId = 47284,
		itemId = 50737,
		specialization = "Joiner",
		name = "Wall Fortification",
		experience = 41500,
		profession = 4,
		durability = 8,
		amount = 1,
		index = 103,
		category = "Housing Craft",
		description = "Used for housing craft.",
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				name = "Sturdy Plank",
				clientId = 45506,
				amount = 18,
				itemId = 48958
			},
			{
				name = "Common Plate",
				clientId = 40283,
				amount = 6,
				itemId = 43735
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCarpentry] = {
	{
		clientId = 28998,
		amount = 1,
		index = 1,
		category = "quest",
		progress = 50,
		itemId = 32430,
		quality = 50,
		slotName = "bow",
		name = "Oakwood Bow",
		experience = 0,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Rough Plank",
				clientId = 28744,
				amount = 5,
				itemId = 38876
			},
			{
				name = "Coarse Thread",
				clientId = 28971,
				amount = 3,
				itemId = 38877
			}
		}
	},
	{
		clientId = 29050,
		amount = 1,
		index = 2,
		category = "quest",
		progress = 50,
		itemId = 32482,
		quality = 50,
		slotName = "staff",
		name = "Mystic Staff",
		experience = 0,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Rough Plank",
				clientId = 28744,
				amount = 9,
				itemId = 38876
			}
		}
	},
	{
		clientId = 33990,
		amount = 1,
		index = 3,
		category = "quest",
		progress = 50,
		itemId = 37422,
		quality = 50,
		slotName = "sceptre",
		name = "Knotted Sceptre",
		experience = 0,
		profession = 4,
		tier = 1,
		description = "",
		durability = 3,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Rough Plank",
				clientId = 28744,
				amount = 5,
				itemId = 38876
			}
		}
	},
	{
		clientId = 29028,
		amount = 1,
		index = 4,
		category = "quest",
		progress = 50,
		itemId = 32460,
		quality = 50,
		slotName = "buckler shield",
		name = "Wooden Buckler",
		experience = 0,
		profession = 4,
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
	}
}

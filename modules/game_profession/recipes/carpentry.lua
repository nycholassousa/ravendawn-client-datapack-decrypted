-- chunkname: @/modules/game_profession/recipes/carpentry.lua

recipes = recipes or {}
recipes[ProfessionCarpentry] = {
	{
		clientId = 28744,
		index = 1,
		durability = 4,
		profession = 4,
		progress = 25,
		itemId = 32176,
		quality = 75,
		description = "Used in various recipes. Unpolished and rugged.",
		slotName = "",
		name = "rough plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 440,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28977,
				amount = 5,
				name = "Small Log",
				itemId = 32409
			}
		}
	},
	{
		clientId = 28743,
		index = 2,
		durability = 7,
		profession = 4,
		progress = 150,
		itemId = 32175,
		quality = 150,
		description = "Used in various recipes. Meticulously processed for smoothness and uniformity.",
		slotName = "",
		name = "refined plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 880,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 45504,
				amount = 8,
				name = "Heavy Log",
				itemId = 48956
			}
		}
	},
	{
		clientId = 28745,
		index = 3,
		durability = 7,
		profession = 4,
		progress = 225,
		itemId = 32177,
		quality = 200,
		description = "Used in various recipes. Enhanced for durability and resistance.",
		slotName = "",
		name = "treated plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 1360,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 45504,
				amount = 12,
				name = "Heavy Log",
				itemId = 48956
			},
			{
				clientId = 34899,
				amount = 2,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 28999,
		index = 4,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 32431,
		quality = 100,
		description = "",
		slotName = "bow",
		name = "Viper's Bow",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 3680,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 6,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28971,
				amount = 2,
				name = "coarse thread",
				itemId = 32403
			},
			{
				clientId = 28998,
				amount = 1,
				name = "Oakwood Bow",
				itemId = 32430
			}
		}
	},
	{
		clientId = 29051,
		index = 5,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 32483,
		quality = 100,
		description = "",
		slotName = "staff",
		name = "Warlock Staff",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 3680,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 8,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 29050,
				amount = 1,
				name = "Mystic Staff",
				itemId = 32482
			}
		}
	},
	{
		clientId = 33991,
		index = 6,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 37423,
		quality = 100,
		description = "",
		slotName = "sceptre",
		name = "Tribal Sceptre",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 1840,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 4,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 33990,
				amount = 1,
				name = "Knotted Sceptre",
				itemId = 37422
			}
		}
	},
	{
		clientId = 29000,
		index = 7,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 32432,
		quality = 100,
		description = "",
		slotName = "bow",
		name = "Black Ash Bow",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28972,
				amount = 5,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				clientId = 28999,
				amount = 1,
				name = "Viper's Bow",
				itemId = 32431
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
		clientId = 29052,
		index = 8,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 32484,
		quality = 100,
		description = "",
		slotName = "staff",
		name = "Cultist Staff",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 14000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 16,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 29051,
				amount = 1,
				name = "Warlock Staff",
				itemId = 32483
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
		clientId = 33992,
		index = 9,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 37424,
		quality = 100,
		description = "",
		slotName = "sceptre",
		name = "Serpent Sceptre",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 33991,
				amount = 1,
				name = "Tribal Sceptre",
				itemId = 37423
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
		clientId = 29001,
		index = 10,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 32433,
		quality = 100,
		description = "",
		slotName = "bow",
		name = "Bullseye Bow",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 38000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 18,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28973,
				amount = 7,
				name = "fine thread",
				itemId = 32405
			},
			{
				clientId = 29000,
				amount = 1,
				name = "Black Ash Bow",
				itemId = 32432
			},
			{
				clientId = 38271,
				amount = 20,
				name = "Sturdy String",
				itemId = 41723
			}
		}
	},
	{
		clientId = 29053,
		index = 11,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 32485,
		quality = 100,
		description = "",
		slotName = "staff",
		name = "Celestial Staff",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 38000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 28,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 29052,
				amount = 1,
				name = "Cultist Staff",
				itemId = 32484
			},
			{
				clientId = 40264,
				amount = 20,
				name = "Ambersprite Shard",
				itemId = 43716
			}
		}
	},
	{
		clientId = 33993,
		index = 12,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 37425,
		quality = 100,
		description = "",
		slotName = "sceptre",
		name = "Crystal Sceptre",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 19000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 15,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 33992,
				amount = 1,
				name = "Serpent Sceptre",
				itemId = 37424
			},
			{
				clientId = 40264,
				amount = 10,
				name = "Ambersprite Shard",
				itemId = 43716
			}
		}
	},
	{
		clientId = 29002,
		index = 13,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 32434,
		quality = 100,
		description = "",
		slotName = "bow",
		name = "Predator Bow",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 79000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 32,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28969,
				amount = 14,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				clientId = 29001,
				amount = 1,
				name = "Bullseye Bow",
				itemId = 32433
			},
			{
				clientId = 40272,
				amount = 24,
				name = "Hardwood",
				itemId = 43724
			}
		}
	},
	{
		clientId = 29054,
		index = 14,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 32486,
		quality = 100,
		description = "",
		slotName = "staff",
		name = "Lightshard Staff",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 79000,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 52,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 29053,
				amount = 1,
				name = "Celestial Staff",
				itemId = 32485
			},
			{
				clientId = 40270,
				amount = 24,
				name = "Enervating Core",
				itemId = 43722
			}
		}
	},
	{
		clientId = 33994,
		index = 15,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 37426,
		quality = 100,
		description = "",
		slotName = "sceptre",
		name = "Celestial Sceptre",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 39500,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 26,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 33993,
				amount = 1,
				name = "Crystal Sceptre",
				itemId = 37425
			},
			{
				clientId = 40270,
				amount = 12,
				name = "Enervating Core",
				itemId = 43722
			}
		}
	},
	{
		clientId = 28896,
		index = 16,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 32328,
		quality = 0,
		description = "",
		slotName = "fishing rod",
		name = "fishing stick",
		amount = 1,
		tier = 1,
		category = "fishing",
		experience = 1040,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				clientId = 28744,
				amount = 1,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28971,
				amount = 1,
				name = "coarse thread",
				itemId = 32403
			}
		}
	},
	{
		clientId = 28898,
		index = 17,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 32330,
		quality = 0,
		description = "",
		slotName = "fishing rod",
		name = "fishing rod",
		amount = 1,
		tier = 2,
		category = "fishing",
		experience = 2080,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28971,
				amount = 2,
				name = "coarse thread",
				itemId = 32403
			},
			{
				clientId = 28896,
				amount = 1,
				name = "fishing stick",
				itemId = 32328
			}
		}
	},
	{
		clientId = 28895,
		index = 18,
		durability = 6,
		profession = 4,
		progress = 250,
		itemId = 32327,
		quality = 0,
		description = "",
		slotName = "fishing rod",
		name = "craftman's fishing rod",
		amount = 1,
		tier = 3,
		category = "fishing",
		experience = 6240,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				clientId = 28743,
				amount = 3,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28972,
				amount = 3,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				clientId = 28898,
				amount = 1,
				name = "fishing rod",
				itemId = 32330
			}
		}
	},
	{
		clientId = 28899,
		index = 19,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 32331,
		quality = 0,
		description = "",
		slotName = "fishing rod",
		name = "sailor's fishing rod",
		amount = 1,
		tier = 4,
		category = "fishing",
		experience = 13600,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				clientId = 28745,
				amount = 3,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28973,
				amount = 5,
				name = "fine thread",
				itemId = 32405
			},
			{
				clientId = 28895,
				amount = 1,
				name = "craftman's fishing rod",
				itemId = 32327
			}
		}
	},
	{
		clientId = 28900,
		index = 20,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 32332,
		quality = 0,
		description = "",
		slotName = "fishing rod",
		name = "artisan fishing rod",
		amount = 1,
		tier = 5,
		category = "fishing",
		experience = 44800,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				clientId = 45506,
				amount = 10,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28969,
				amount = 12,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				clientId = 28899,
				amount = 1,
				name = "sailor's fishing rod",
				itemId = 32331
			}
		}
	},
	{
		progress = 600,
		profession = 4,
		durability = 12,
		index = 21,
		clientId = 28897,
		tier = 6,
		itemId = 32329,
		name = "lightwood angler",
		category = "fishing",
		experience = 70400,
		specialization = "Angler Carpenter",
		description = "",
		amount = 1,
		slotName = "fishing rod",
		quality = 0,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				clientId = 45503,
				amount = 10,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 28970,
				amount = 16,
				name = "artisan thread",
				itemId = 32402
			},
			{
				clientId = 28900,
				amount = 1,
				name = "artisan fishing rod",
				itemId = 32332
			}
		}
	},
	{
		progress = 700,
		profession = 4,
		durability = 12,
		index = 22,
		clientId = 37155,
		tier = 6,
		itemId = 40607,
		name = "Marksman Bow",
		category = "weapons",
		experience = 115200,
		specialization = "Fletcher",
		description = "",
		amount = 1,
		slotName = "bow",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 45503,
				amount = 36,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 28970,
				amount = 12,
				name = "artisan thread",
				itemId = 32402
			},
			{
				clientId = 29002,
				amount = 1,
				name = "Predator Bow",
				itemId = 32434
			},
			{
				clientId = 40279,
				amount = 32,
				name = "Supernatural Thread",
				itemId = 43731
			}
		}
	},
	{
		progress = 700,
		profession = 4,
		durability = 12,
		index = 23,
		clientId = 37150,
		tier = 6,
		itemId = 40602,
		name = "Necromancer's Staff",
		category = "weapons",
		experience = 115200,
		specialization = "Fletcher",
		description = "",
		amount = 1,
		slotName = "staff",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 45503,
				amount = 52,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 29054,
				amount = 1,
				name = "Lightshard Staff",
				itemId = 32486
			},
			{
				clientId = 40273,
				amount = 32,
				name = "Mystical Crystal",
				itemId = 43725
			}
		}
	},
	{
		progress = 700,
		profession = 4,
		durability = 12,
		index = 24,
		clientId = 37157,
		tier = 6,
		itemId = 40609,
		name = "Crowbone Sceptre",
		category = "weapons",
		experience = 57600,
		specialization = "Fletcher",
		description = "",
		amount = 1,
		slotName = "sceptre",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 45503,
				amount = 26,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 33994,
				amount = 1,
				name = "Celestial Sceptre",
				itemId = 37426
			},
			{
				clientId = 40273,
				amount = 16,
				name = "Mystical Crystal",
				itemId = 43725
			}
		}
	},
	{
		clientId = 37219,
		index = 25,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40671,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Armoires",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 15400,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 10,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 5,
				name = "Bolt",
				itemId = 43734
			}
		}
	},
	{
		clientId = 37279,
		index = 26,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40731,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Square Table",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 27500,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 20,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 4,
				name = "Bolt",
				itemId = 43734
			}
		}
	},
	{
		clientId = 37283,
		index = 27,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40735,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Sturdy Square Table",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 38000,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 25,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 5,
				name = "Bolt",
				itemId = 43734
			}
		}
	},
	{
		clientId = 37224,
		index = 28,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40676,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Cabinet",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 3600,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 3,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28734,
				amount = 1,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37244,
		index = 29,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40696,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Loom",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 24000,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 8,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28969,
				amount = 5,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		clientId = 37227,
		index = 30,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 40679,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Chair",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 7200,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 2,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37267,
		index = 31,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 40719,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Simple Bed",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 24000,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28966,
				amount = 15,
				name = "simple cloth",
				itemId = 32398
			},
			{
				clientId = 28971,
				amount = 10,
				name = "coarse thread",
				itemId = 32403
			}
		}
	},
	{
		clientId = 37228,
		index = 32,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40680,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Comfortable Bed",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 64500,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 4,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28964,
				amount = 10,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				clientId = 28969,
				amount = 10,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		clientId = 37280,
		index = 33,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 40732,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Storage Container",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 7360,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 1,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 1,
				name = "iron bar",
				itemId = 32169
			}
		}
	},
	{
		clientId = 37290,
		index = 34,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 40742,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Work Bench",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 26000,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28743,
				amount = 20,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28723,
				amount = 20,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28734,
				amount = 5,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37287,
		index = 35,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40739,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Superior Work Bench",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 50500,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 30,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28724,
				amount = 15,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 28725,
				amount = 10,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28734,
				amount = 5,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37222,
		index = 36,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40674,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Artisan Work Bench",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 140000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 65,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28725,
				amount = 50,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 28727,
				amount = 30,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 28734,
				amount = 5,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37231,
		index = 37,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40683,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Fireplace",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 27600,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28946,
				amount = 10,
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
		clientId = 37245,
		index = 38,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 40697,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Luxury Bed",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 130000,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 25,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28962,
				amount = 20,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				clientId = 28970,
				amount = 10,
				name = "artisan thread",
				itemId = 32402
			}
		}
	},
	{
		clientId = 37275,
		index = 39,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40727,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Small Hull Frame",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 48800,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28743,
				amount = 50,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 40,
				name = "nail",
				itemId = 32166
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
		clientId = 37270,
		index = 40,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40722,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Small Cargo Hold",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 29600,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 20,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28723,
				amount = 8,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 37274,
		index = 41,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40726,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Small Gun Deck",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 29600,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 20,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28723,
				amount = 8,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 37273,
		index = 42,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40725,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Small Fishing Storage",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 29600,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 20,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28723,
				amount = 8,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 37277,
		index = 43,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 40729,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Small Tradepack Container Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 82000,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 40286,
				amount = 2,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37269,
		index = 44,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 40721,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Small Ammunition Cabin Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 82000,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 40286,
				amount = 2,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37271,
		index = 45,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 40723,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Small Fishing Crane Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 82000,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 40286,
				amount = 2,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37256,
		index = 46,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 40708,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Medium Hull Frame",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 212000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28745,
				amount = 120,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28734,
				amount = 80,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 25,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 40286,
				amount = 8,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37251,
		index = 47,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 40703,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Medium Cargo Hold",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 88000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28734,
				amount = 40,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 10,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 40286,
				amount = 3,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37254,
		index = 48,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 40706,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Medium Fishing Storage",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 88000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28734,
				amount = 40,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 10,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 40286,
				amount = 3,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37255,
		index = 49,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 40707,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Medium Gun Deck",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 88000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28734,
				amount = 40,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 10,
				name = "iron bar",
				itemId = 32169
			},
			{
				clientId = 40286,
				amount = 3,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37258,
		index = 50,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 40710,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Medium Tradepack Container Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 245000,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 30,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40285,
				amount = 4,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37250,
		index = 51,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 40702,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Medium Ammunition Cabin Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 245000,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 30,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40285,
				amount = 4,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37252,
		index = 52,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 40704,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Medium Fishing Crane Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 245000,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 30,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40285,
				amount = 4,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37241,
		index = 53,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 40693,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Large Hull Frame",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 625000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 300,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 150,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40284,
				amount = 50,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 40285,
				amount = 20,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37237,
		index = 54,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 40689,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Large Cargo Hold",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 312000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 80,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40284,
				amount = 20,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 40285,
				amount = 8,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37240,
		index = 55,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 40692,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Large Gun Deck",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 312000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 80,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40284,
				amount = 20,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 40285,
				amount = 8,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37239,
		index = 56,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 40691,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Large Fishing Storage",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 312000,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 80,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40284,
				amount = 20,
				name = "Steel Bar",
				itemId = 43736
			},
			{
				clientId = 40285,
				amount = 8,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37249,
		index = 57,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40701,
		quality = 0,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		name = "Mast",
		amount = 1,
		tier = -1,
		category = "Ship Craft",
		experience = 20000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28743,
				amount = 20,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 20,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28723,
				amount = 5,
				name = "iron ingot",
				itemId = 32155
			}
		}
	},
	{
		clientId = 37229,
		index = 58,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40681,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Common Wheel",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 1600,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28734,
				amount = 5,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 37284,
		index = 59,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40736,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Sturdy Wheel",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 8800,
		level = {
			mass = 46,
			single = 41
		},
		materials = {
			{
				clientId = 28745,
				amount = 16,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 5,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40286,
				amount = 1,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 37264,
		index = 60,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 40716,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Reinforced Wheel",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 28000,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				clientId = 45506,
				amount = 50,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 40285,
				amount = 1,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 37278,
		index = 61,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 40730,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Small Wagon Container",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 11200,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 20,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 40283,
				amount = 1,
				name = "Common Plate",
				itemId = 43735
			}
		}
	},
	{
		clientId = 37259,
		index = 62,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 40711,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Medium Wagon Container",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 57600,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				clientId = 28745,
				amount = 20,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28740,
				amount = 5,
				name = "reinforced plate",
				itemId = 32172
			},
			{
				clientId = 28737,
				amount = 5,
				name = "iron bar",
				itemId = 32169
			}
		}
	},
	{
		clientId = 37243,
		index = 63,
		durability = 7,
		profession = 4,
		progress = 525,
		itemId = 40695,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Large Wagon Container",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 146400,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 35,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28740,
				amount = 15,
				name = "reinforced plate",
				itemId = 32172
			},
			{
				clientId = 40284,
				amount = 10,
				name = "Steel Bar",
				itemId = 43736
			}
		}
	},
	{
		clientId = 28998,
		index = 64,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32430,
		quality = 100,
		description = "",
		slotName = "bow",
		name = "Oakwood Bow",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1760,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28971,
				amount = 1,
				name = "coarse thread",
				itemId = 32403
			}
		}
	},
	{
		clientId = 29050,
		index = 65,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32482,
		quality = 100,
		description = "",
		slotName = "staff",
		name = "Mystic Staff",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 1760,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 4,
				name = "rough plank",
				itemId = 32176
			}
		}
	},
	{
		clientId = 33990,
		index = 66,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 37422,
		quality = 100,
		description = "",
		slotName = "sceptre",
		name = "Knotted Sceptre",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 880,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				name = "rough plank",
				itemId = 32176
			}
		}
	},
	{
		clientId = 40286,
		index = 67,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 43738,
		quality = 0,
		description = "Used in various recipes. A basic but sturdy wooden arch.",
		slotName = "",
		name = "Wooden Arch",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 4800,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28743,
				amount = 15,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 34899,
				amount = 10,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 40285,
		index = 68,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 43737,
		quality = 0,
		description = "Used in various recipes. Crafted with precision, this arch combines flexibility with strength.",
		slotName = "",
		name = "Supple Wooden Arch",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 7600,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 15,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 34899,
				amount = 20,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 40492,
		index = 69,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 43944,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Swift Wheel",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 3040,
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 5,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 40491,
		index = 70,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 43943,
		quality = 0,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		name = "Common Wagon Container",
		amount = 1,
		tier = -1,
		category = "Wagon Craft",
		experience = 29200,
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				clientId = 28743,
				amount = 25,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 40283,
				amount = 3,
				name = "Common Plate",
				itemId = 43735
			}
		}
	},
	{
		clientId = 41847,
		index = 74,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 45299,
		quality = 100,
		description = "Used in various recipes. Sturdy crafting material crafted from dense logs.",
		slotName = "",
		name = "Dense Plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 2000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 34371,
				amount = 4,
				name = "Dense Log",
				itemId = 37803
			}
		}
	},
	{
		clientId = 41848,
		index = 75,
		durability = 6,
		profession = 4,
		progress = 250,
		itemId = 45300,
		quality = 250,
		description = "Used in various recipes. Exceptionally robust crafting material forged from dense logs.",
		slotName = "",
		name = "Heavy Plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 4400,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 34371,
				amount = 8,
				name = "Dense Log",
				itemId = 37803
			},
			{
				clientId = 34899,
				amount = 2,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 42777,
		index = 76,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 46229,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Weak Table",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 3600,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 8,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28734,
				amount = 2,
				name = "nail",
				itemId = 32166
			}
		}
	},
	{
		clientId = 42782,
		index = 77,
		durability = 8,
		profession = 4,
		progress = 500,
		itemId = 46234,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Sturdy Container",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 41600,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40283,
				amount = 6,
				name = "Common Plate",
				itemId = 43735
			}
		}
	},
	{
		clientId = 42781,
		index = 78,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 46233,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Frail Loom",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 8000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28966,
				amount = 6,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		clientId = 42783,
		index = 79,
		durability = 6,
		profession = 4,
		progress = 250,
		itemId = 46235,
		quality = 0,
		description = "Used in housing upgrades.",
		slotName = "",
		name = "Simple Loom",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 23000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28973,
				amount = 5,
				name = "fine thread",
				itemId = 32405
			}
		}
	},
	{
		clientId = 43638,
		index = 80,
		durability = 6,
		profession = 4,
		progress = 225,
		itemId = 47090,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Small Maintenance Unit Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 82000,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 40282,
				amount = 10,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 40286,
				amount = 2,
				name = "Wooden Arch",
				itemId = 43738
			}
		}
	},
	{
		clientId = 43635,
		index = 81,
		durability = 9,
		profession = 4,
		progress = 525,
		itemId = 47087,
		quality = 0,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		name = "Medium Maintenance Unit Kit",
		amount = 1,
		tier = -1,
		category = "Ship Module",
		experience = 245000,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40282,
				amount = 30,
				name = "Bolt",
				itemId = 43734
			},
			{
				clientId = 28725,
				amount = 20,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 40285,
				amount = 4,
				name = "Supple Wooden Arch",
				itemId = 43737
			}
		}
	},
	{
		clientId = 45506,
		index = 82,
		durability = 8,
		profession = 4,
		progress = 450,
		itemId = 48958,
		quality = 450,
		description = "Used in various recipes. A solid and dependable wooden plank.",
		slotName = "",
		name = "Sturdy Plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 1500,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 45505,
				amount = 10,
				name = "Sturdy Log",
				itemId = 48957
			},
			{
				clientId = 34899,
				amount = 4,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 45503,
		index = 83,
		durability = 9,
		profession = 4,
		progress = 550,
		itemId = 48955,
		quality = 550,
		description = "Used in various recipes. A meticulously crafted wooden plank.",
		slotName = "",
		name = "Fine Plank",
		amount = 1,
		tier = -1,
		category = "planks",
		experience = 2200,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 45502,
				amount = 10,
				name = "Fine Log",
				itemId = 48954
			},
			{
				clientId = 34899,
				amount = 6,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		clientId = 29028,
		index = 84,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32460,
		quality = 100,
		description = "",
		slotName = "buckler shield",
		name = "Wooden Buckler",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 880,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				name = "rough plank",
				itemId = 32176
			}
		}
	},
	{
		clientId = 29029,
		index = 85,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 32461,
		quality = 100,
		description = "",
		slotName = "buckler shield",
		name = "Sturdy Buckler",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 1840,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 35432,
				amount = 1,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				clientId = 29028,
				amount = 1,
				name = "Wooden Buckler",
				itemId = 32460
			}
		}
	},
	{
		clientId = 29030,
		index = 86,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 32462,
		quality = 100,
		description = "",
		slotName = "buckler shield",
		name = "Marauder's Shield",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 5,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 35433,
				amount = 2,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				clientId = 29029,
				amount = 1,
				name = "Sturdy Buckler",
				itemId = 32461
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
		clientId = 29031,
		index = 87,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 32463,
		quality = 100,
		description = "",
		slotName = "buckler shield",
		name = "Rune Shield",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 19000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 35434,
				amount = 3,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				clientId = 29030,
				amount = 1,
				name = "Marauder's Shield",
				itemId = 32462
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
		clientId = 29032,
		index = 88,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 32464,
		quality = 100,
		description = "",
		slotName = "buckler shield",
		name = "Ravenguard's Shield",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 39500,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 20,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 35435,
				amount = 4,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				clientId = 29031,
				amount = 1,
				name = "Rune Shield",
				itemId = 32463
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
		progress = 700,
		profession = 4,
		durability = 12,
		index = 89,
		clientId = 37149,
		tier = 6,
		itemId = 40601,
		name = "Nocturnal Shield",
		category = "weapons",
		experience = 57600,
		specialization = "Fletcher",
		description = "",
		amount = 1,
		slotName = "buckler shield",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 45503,
				amount = 22,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 35436,
				amount = 4,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				clientId = 29032,
				amount = 1,
				name = "Ravenguard's Shield",
				itemId = 32464
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
		clientId = 46241,
		index = 90,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 49694,
		quality = 100,
		description = "",
		slotName = "tower shield",
		name = "Wooden Bulwark",
		amount = 1,
		tier = 1,
		category = "weapons",
		experience = 880,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				name = "rough plank",
				itemId = 32176
			}
		}
	},
	{
		clientId = 46242,
		index = 91,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 49695,
		quality = 100,
		description = "",
		slotName = "tower shield",
		name = "Sentinel Shield",
		amount = 1,
		tier = 2,
		category = "weapons",
		experience = 1840,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28726,
				amount = 3,
				name = "copper ingot",
				itemId = 32158
			},
			{
				clientId = 46241,
				amount = 1,
				name = "Wooden Bulwark",
				itemId = 49694
			}
		}
	},
	{
		clientId = 46243,
		index = 92,
		durability = 6,
		profession = 4,
		progress = 200,
		itemId = 49696,
		quality = 100,
		description = "",
		slotName = "tower shield",
		name = "Defender's Bulwark",
		amount = 1,
		tier = 3,
		category = "weapons",
		experience = 7000,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 6,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28723,
				amount = 8,
				name = "iron ingot",
				itemId = 32155
			},
			{
				clientId = 46242,
				amount = 1,
				name = "Sentinel Shield",
				itemId = 49695
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
		clientId = 46244,
		index = 93,
		durability = 7,
		profession = 4,
		progress = 350,
		itemId = 49697,
		quality = 100,
		description = "",
		slotName = "tower shield",
		name = "Steelclad Bulwark",
		amount = 1,
		tier = 4,
		category = "weapons",
		experience = 19000,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28724,
				amount = 10,
				name = "steel ingot",
				itemId = 32156
			},
			{
				clientId = 46243,
				amount = 1,
				name = "Defender's Bulwark",
				itemId = 49696
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
		clientId = 46245,
		index = 94,
		durability = 8,
		profession = 4,
		progress = 525,
		itemId = 49698,
		quality = 100,
		description = "",
		slotName = "tower shield",
		name = "King's Defender",
		amount = 1,
		tier = 5,
		category = "weapons",
		experience = 39500,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 20,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28725,
				amount = 18,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				clientId = 46244,
				amount = 1,
				name = "Steelclad Bulwark",
				itemId = 49697
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
		progress = 700,
		profession = 4,
		durability = 12,
		index = 95,
		clientId = 46246,
		tier = 6,
		itemId = 49699,
		name = "Protector's Tower Shield",
		category = "weapons",
		experience = 57600,
		specialization = "Fletcher",
		description = "",
		amount = 1,
		slotName = "tower shield",
		quality = 100,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 45503,
				amount = 22,
				name = "Fine Plank",
				itemId = 48955
			},
			{
				clientId = 28727,
				amount = 14,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				clientId = 46245,
				amount = 1,
				name = "King's Defender",
				itemId = 49698
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
		clientId = 47280,
		index = 96,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 50733,
		quality = 0,
		description = "",
		slotName = "",
		name = "Protective Charm",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 8000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28966,
				amount = 6,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		clientId = 47286,
		index = 97,
		durability = 6,
		profession = 4,
		progress = 250,
		itemId = 50739,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Warding Charm",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 23000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28973,
				amount = 5,
				name = "fine thread",
				itemId = 32405
			}
		}
	},
	{
		clientId = 47282,
		index = 98,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 50735,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Spellbound Charm",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 35000,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 15,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28969,
				amount = 5,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		clientId = 47277,
		index = 99,
		durability = 4,
		profession = 4,
		progress = 100,
		itemId = 50730,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Basic Stabilizer",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 8000,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				name = "rough plank",
				itemId = 32176
			},
			{
				clientId = 28966,
				amount = 6,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		clientId = 47278,
		index = 100,
		durability = 6,
		profession = 4,
		progress = 250,
		itemId = 50731,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Energy Stabilizer",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 23000,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				name = "treated plank",
				itemId = 32177
			},
			{
				clientId = 28973,
				amount = 5,
				name = "fine thread",
				itemId = 32405
			}
		}
	},
	{
		clientId = 47275,
		index = 101,
		durability = 12,
		profession = 4,
		progress = 600,
		itemId = 50728,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Arcane Stabilizer",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 35000,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 15,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 28969,
				amount = 5,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		clientId = 47285,
		index = 102,
		durability = 5,
		profession = 4,
		progress = 200,
		itemId = 50738,
		quality = 0,
		description = "Used for housing craft.",
		slotName = "",
		name = "Wall Reinforcement",
		amount = 1,
		tier = -1,
		category = "Housing Craft",
		experience = 7360,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				name = "refined plank",
				itemId = 32175
			},
			{
				clientId = 28734,
				amount = 1,
				name = "nail",
				itemId = 32166
			},
			{
				clientId = 28737,
				amount = 1,
				name = "iron bar",
				itemId = 32169
			}
		}
	},
	{
		progress = 500,
		profession = 4,
		durability = 8,
		index = 103,
		clientId = 47284,
		tier = -1,
		itemId = 50737,
		name = "Wall Fortification",
		category = "Housing Craft",
		experience = 41500,
		specialization = "Joiner",
		description = "Used for housing craft.",
		amount = 1,
		slotName = "",
		quality = 0,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				name = "Sturdy Plank",
				itemId = 48958
			},
			{
				clientId = 40283,
				amount = 6,
				name = "Common Plate",
				itemId = 43735
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCarpentry] = {
	{
		clientId = 28998,
		index = 1,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32430,
		quality = 50,
		description = "",
		slotName = "bow",
		name = "Oakwood Bow",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 5,
				name = "Rough Plank",
				itemId = 38876
			},
			{
				clientId = 28971,
				amount = 3,
				name = "Coarse Thread",
				itemId = 38877
			}
		}
	},
	{
		clientId = 29050,
		index = 2,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32482,
		quality = 50,
		description = "",
		slotName = "staff",
		name = "Mystic Staff",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 9,
				name = "Rough Plank",
				itemId = 38876
			}
		}
	},
	{
		clientId = 33990,
		index = 3,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 37422,
		quality = 50,
		description = "",
		slotName = "sceptre",
		name = "Knotted Sceptre",
		amount = 1,
		tier = 1,
		category = "quest",
		experience = 0,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 5,
				name = "Rough Plank",
				itemId = 38876
			}
		}
	},
	{
		clientId = 29028,
		index = 4,
		durability = 3,
		profession = 4,
		progress = 50,
		itemId = 32460,
		quality = 50,
		description = "",
		slotName = "buckler shield",
		name = "Wooden Buckler",
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
	}
}

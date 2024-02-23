-- chunkname: @/modules/game_profession/recipes/carpentry.lua

recipes = recipes or {}
recipes[ProfessionCarpentry] = {
	{
		category = "planks",
		index = 1,
		clientId = 28744,
		amount = 1,
		itemId = 32176,
		quality = 75,
		name = "rough plank",
		experience = 440,
		durability = 4,
		profession = 4,
		description = "Used in various recipes. Unpolished and rugged.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32409,
				amount = 5,
				clientId = 28977,
				name = "Small Log"
			}
		}
	},
	{
		category = "planks",
		index = 2,
		clientId = 28743,
		amount = 1,
		itemId = 32175,
		quality = 150,
		name = "refined plank",
		experience = 880,
		durability = 7,
		profession = 4,
		description = "Used in various recipes. Meticulously processed for smoothness and uniformity.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 48956,
				amount = 8,
				clientId = 45504,
				name = "Heavy Log"
			}
		}
	},
	{
		category = "planks",
		index = 3,
		clientId = 28745,
		amount = 1,
		itemId = 32177,
		quality = 200,
		name = "treated plank",
		experience = 1360,
		durability = 7,
		profession = 4,
		description = "Used in various recipes. Enhanced for durability and resistance.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 48956,
				amount = 12,
				clientId = 45504,
				name = "Heavy Log"
			},
			{
				itemId = 38331,
				amount = 2,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "weapons",
		index = 4,
		clientId = 28999,
		amount = 1,
		itemId = 32431,
		quality = 100,
		name = "Viper's Bow",
		experience = 3680,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "bow",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 6,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32403,
				amount = 2,
				clientId = 28971,
				name = "coarse thread"
			},
			{
				itemId = 32430,
				amount = 1,
				clientId = 28998,
				name = "Oakwood Bow"
			}
		}
	},
	{
		category = "weapons",
		index = 5,
		clientId = 29051,
		amount = 1,
		itemId = 32483,
		quality = 100,
		name = "Warlock Staff",
		experience = 3680,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "staff",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 8,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32482,
				amount = 1,
				clientId = 29050,
				name = "Mystic Staff"
			}
		}
	},
	{
		category = "weapons",
		index = 6,
		clientId = 33991,
		amount = 1,
		itemId = 37423,
		quality = 100,
		name = "Tribal Sceptre",
		experience = 1840,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "sceptre",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 4,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 37422,
				amount = 1,
				clientId = 33990,
				name = "Knotted Sceptre"
			}
		}
	},
	{
		category = "weapons",
		index = 7,
		clientId = 29000,
		amount = 1,
		itemId = 32432,
		quality = 100,
		name = "Black Ash Bow",
		experience = 14000,
		durability = 5,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "bow",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 10,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32404,
				amount = 5,
				clientId = 28972,
				name = "craftman's thread"
			},
			{
				itemId = 32431,
				amount = 1,
				clientId = 28999,
				name = "Viper's Bow"
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
		index = 8,
		clientId = 29052,
		amount = 1,
		itemId = 32484,
		quality = 100,
		name = "Cultist Staff",
		experience = 14000,
		durability = 5,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "staff",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 16,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32483,
				amount = 1,
				clientId = 29051,
				name = "Warlock Staff"
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
		index = 9,
		clientId = 33992,
		amount = 1,
		itemId = 37424,
		quality = 100,
		name = "Serpent Sceptre",
		experience = 7000,
		durability = 5,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "sceptre",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 10,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 37423,
				amount = 1,
				clientId = 33991,
				name = "Tribal Sceptre"
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
		index = 10,
		clientId = 29001,
		amount = 1,
		itemId = 32433,
		quality = 100,
		name = "Bullseye Bow",
		experience = 38000,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "bow",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32177,
				amount = 18,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32405,
				amount = 7,
				clientId = 28973,
				name = "fine thread"
			},
			{
				itemId = 32432,
				amount = 1,
				clientId = 29000,
				name = "Black Ash Bow"
			},
			{
				itemId = 41723,
				amount = 20,
				clientId = 38271,
				name = "Sturdy String"
			}
		}
	},
	{
		category = "weapons",
		index = 11,
		clientId = 29053,
		amount = 1,
		itemId = 32485,
		quality = 100,
		name = "Celestial Staff",
		experience = 38000,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "staff",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32177,
				amount = 28,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32484,
				amount = 1,
				clientId = 29052,
				name = "Cultist Staff"
			},
			{
				itemId = 43716,
				amount = 20,
				clientId = 40264,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		category = "weapons",
		index = 12,
		clientId = 33993,
		amount = 1,
		itemId = 37425,
		quality = 100,
		name = "Crystal Sceptre",
		experience = 19000,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "sceptre",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32177,
				amount = 15,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 37424,
				amount = 1,
				clientId = 33992,
				name = "Serpent Sceptre"
			},
			{
				itemId = 43716,
				amount = 10,
				clientId = 40264,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		category = "weapons",
		index = 13,
		clientId = 29002,
		amount = 1,
		itemId = 32434,
		quality = 100,
		name = "Predator Bow",
		experience = 79000,
		durability = 9,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "bow",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 48958,
				amount = 32,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32401,
				amount = 14,
				clientId = 28969,
				name = "merchant's thread"
			},
			{
				itemId = 32433,
				amount = 1,
				clientId = 29001,
				name = "Bullseye Bow"
			},
			{
				itemId = 43724,
				amount = 24,
				clientId = 40272,
				name = "Hardwood"
			}
		}
	},
	{
		category = "weapons",
		index = 14,
		clientId = 29054,
		amount = 1,
		itemId = 32486,
		quality = 100,
		name = "Lightshard Staff",
		experience = 79000,
		durability = 9,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "staff",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 48958,
				amount = 52,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32485,
				amount = 1,
				clientId = 29053,
				name = "Celestial Staff"
			},
			{
				itemId = 43722,
				amount = 24,
				clientId = 40270,
				name = "Enervating Core"
			}
		}
	},
	{
		category = "weapons",
		index = 15,
		clientId = 33994,
		amount = 1,
		itemId = 37426,
		quality = 100,
		name = "Celestial Sceptre",
		experience = 39500,
		durability = 9,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "sceptre",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 48958,
				amount = 26,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 37425,
				amount = 1,
				clientId = 33993,
				name = "Crystal Sceptre"
			},
			{
				itemId = 43722,
				amount = 12,
				clientId = 40270,
				name = "Enervating Core"
			}
		}
	},
	{
		category = "fishing",
		index = 16,
		clientId = 28896,
		amount = 1,
		itemId = 32328,
		quality = 0,
		name = "fishing stick",
		experience = 1040,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "fishing rod",
		tier = 1,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				itemId = 32176,
				amount = 1,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32403,
				amount = 1,
				clientId = 28971,
				name = "coarse thread"
			}
		}
	},
	{
		category = "fishing",
		index = 17,
		clientId = 28898,
		amount = 1,
		itemId = 32330,
		quality = 0,
		name = "fishing rod",
		experience = 2080,
		durability = 5,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "fishing rod",
		tier = 2,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32176,
				amount = 2,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32403,
				amount = 2,
				clientId = 28971,
				name = "coarse thread"
			},
			{
				itemId = 32328,
				amount = 1,
				clientId = 28896,
				name = "fishing stick"
			}
		}
	},
	{
		category = "fishing",
		index = 18,
		clientId = 28895,
		amount = 1,
		itemId = 32327,
		quality = 0,
		name = "craftman's fishing rod",
		experience = 6240,
		durability = 6,
		profession = 4,
		description = "",
		progress = 250,
		slotName = "fishing rod",
		tier = 3,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				itemId = 32175,
				amount = 3,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32404,
				amount = 3,
				clientId = 28972,
				name = "craftman's thread"
			},
			{
				itemId = 32330,
				amount = 1,
				clientId = 28898,
				name = "fishing rod"
			}
		}
	},
	{
		category = "fishing",
		index = 19,
		clientId = 28899,
		amount = 1,
		itemId = 32331,
		quality = 0,
		name = "sailor's fishing rod",
		experience = 13600,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "fishing rod",
		tier = 4,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				itemId = 32177,
				amount = 3,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32405,
				amount = 5,
				clientId = 28973,
				name = "fine thread"
			},
			{
				itemId = 32327,
				amount = 1,
				clientId = 28895,
				name = "craftman's fishing rod"
			}
		}
	},
	{
		category = "fishing",
		index = 20,
		clientId = 28900,
		amount = 1,
		itemId = 32332,
		quality = 0,
		name = "artisan fishing rod",
		experience = 44800,
		durability = 9,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "fishing rod",
		tier = 5,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				itemId = 48958,
				amount = 10,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32401,
				amount = 12,
				clientId = 28969,
				name = "merchant's thread"
			},
			{
				itemId = 32331,
				amount = 1,
				clientId = 28899,
				name = "sailor's fishing rod"
			}
		}
	},
	{
		index = 21,
		amount = 1,
		category = "fishing",
		slotName = "fishing rod",
		quality = 0,
		progress = 600,
		specialization = "Angler Carpenter",
		experience = 70400,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 28897,
		itemId = 32329,
		name = "lightwood angler",
		profession = 4,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				itemId = 48955,
				amount = 10,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 32402,
				amount = 16,
				clientId = 28970,
				name = "artisan thread"
			},
			{
				itemId = 32332,
				amount = 1,
				clientId = 28900,
				name = "artisan fishing rod"
			}
		}
	},
	{
		index = 22,
		amount = 1,
		category = "weapons",
		slotName = "bow",
		quality = 100,
		progress = 700,
		specialization = "Fletcher",
		experience = 115200,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37155,
		itemId = 40607,
		name = "Marksman Bow",
		profession = 4,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 48955,
				amount = 36,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 32402,
				amount = 12,
				clientId = 28970,
				name = "artisan thread"
			},
			{
				itemId = 32434,
				amount = 1,
				clientId = 29002,
				name = "Predator Bow"
			},
			{
				itemId = 43731,
				amount = 32,
				clientId = 40279,
				name = "Supernatural Thread"
			}
		}
	},
	{
		index = 23,
		amount = 1,
		category = "weapons",
		slotName = "staff",
		quality = 100,
		progress = 700,
		specialization = "Fletcher",
		experience = 115200,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37150,
		itemId = 40602,
		name = "Necromancer's Staff",
		profession = 4,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 48955,
				amount = 52,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 32486,
				amount = 1,
				clientId = 29054,
				name = "Lightshard Staff"
			},
			{
				itemId = 43725,
				amount = 32,
				clientId = 40273,
				name = "Mystical Crystal"
			}
		}
	},
	{
		index = 24,
		amount = 1,
		category = "weapons",
		slotName = "sceptre",
		quality = 100,
		progress = 700,
		specialization = "Fletcher",
		experience = 57600,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37157,
		itemId = 40609,
		name = "Crowbone Sceptre",
		profession = 4,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 48955,
				amount = 26,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 37426,
				amount = 1,
				clientId = 33994,
				name = "Celestial Sceptre"
			},
			{
				itemId = 43725,
				amount = 16,
				clientId = 40273,
				name = "Mystical Crystal"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 25,
		clientId = 37219,
		amount = 1,
		itemId = 40671,
		quality = 0,
		name = "Armoires",
		experience = 15400,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 10,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 5,
				clientId = 40282,
				name = "Bolt"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 26,
		clientId = 37279,
		amount = 1,
		itemId = 40731,
		quality = 0,
		name = "Square Table",
		experience = 27500,
		durability = 7,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				itemId = 32177,
				amount = 20,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 4,
				clientId = 40282,
				name = "Bolt"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 27,
		clientId = 37283,
		amount = 1,
		itemId = 40735,
		quality = 0,
		name = "Sturdy Square Table",
		experience = 38000,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 25,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 5,
				clientId = 40282,
				name = "Bolt"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 28,
		clientId = 37224,
		amount = 1,
		itemId = 40676,
		quality = 0,
		name = "Cabinet",
		experience = 3600,
		durability = 7,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 60,
			single = 45
		},
		materials = {
			{
				itemId = 32177,
				amount = 3,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32166,
				amount = 1,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 29,
		clientId = 37244,
		amount = 1,
		itemId = 40696,
		quality = 0,
		name = "Loom",
		experience = 24000,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 8,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32401,
				amount = 5,
				clientId = 28969,
				name = "merchant's thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 30,
		clientId = 37227,
		amount = 1,
		itemId = 40679,
		quality = 0,
		name = "Chair",
		experience = 7200,
		durability = 5,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				itemId = 32175,
				amount = 8,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 2,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 31,
		clientId = 37267,
		amount = 1,
		itemId = 40719,
		quality = 0,
		name = "Simple Bed",
		experience = 24000,
		durability = 5,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 20
		},
		materials = {
			{
				itemId = 32175,
				amount = 10,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32398,
				amount = 15,
				clientId = 28966,
				name = "simple cloth"
			},
			{
				itemId = 32403,
				amount = 10,
				clientId = 28971,
				name = "coarse thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 32,
		clientId = 37228,
		amount = 1,
		itemId = 40680,
		quality = 0,
		name = "Comfortable Bed",
		experience = 64500,
		durability = 7,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32177,
				amount = 12,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 4,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32396,
				amount = 10,
				clientId = 28964,
				name = "merchant's cloth"
			},
			{
				itemId = 32401,
				amount = 10,
				clientId = 28969,
				name = "merchant's thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 33,
		clientId = 37280,
		amount = 1,
		itemId = 40732,
		quality = 0,
		name = "Storage Container",
		experience = 7360,
		durability = 5,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32175,
				amount = 8,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 1,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 1,
				clientId = 28737,
				name = "iron bar"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 34,
		clientId = 37290,
		amount = 1,
		itemId = 40742,
		quality = 0,
		name = "Work Bench",
		experience = 26000,
		durability = 5,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32175,
				amount = 20,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32155,
				amount = 20,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32166,
				amount = 5,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 35,
		clientId = 37287,
		amount = 1,
		itemId = 40739,
		quality = 0,
		name = "Superior Work Bench",
		experience = 50500,
		durability = 7,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32177,
				amount = 30,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32156,
				amount = 15,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 32157,
				amount = 10,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32166,
				amount = 5,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 36,
		clientId = 37222,
		amount = 1,
		itemId = 40674,
		quality = 0,
		name = "Artisan Work Bench",
		experience = 140000,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 65,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32157,
				amount = 50,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 32159,
				amount = 30,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 32166,
				amount = 5,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 37,
		clientId = 37231,
		amount = 1,
		itemId = 40683,
		quality = 0,
		name = "Fireplace",
		experience = 27600,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 85,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 18,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32378,
				amount = 10,
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
		category = "Housing Craft",
		index = 38,
		clientId = 37245,
		amount = 1,
		itemId = 40697,
		quality = 0,
		name = "Luxury Bed",
		experience = 130000,
		durability = 12,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 48958,
				amount = 25,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32394,
				amount = 20,
				clientId = 28962,
				name = "artisan cloth"
			},
			{
				itemId = 32402,
				amount = 10,
				clientId = 28970,
				name = "artisan thread"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 39,
		clientId = 37275,
		amount = 1,
		itemId = 40727,
		quality = 0,
		name = "Small Hull Frame",
		experience = 48800,
		durability = 4,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32175,
				amount = 50,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 40,
				clientId = 28734,
				name = "nail"
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
		category = "Ship Craft",
		index = 40,
		clientId = 37270,
		amount = 1,
		itemId = 40722,
		quality = 0,
		name = "Small Cargo Hold",
		experience = 29600,
		durability = 4,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32175,
				amount = 30,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 20,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32155,
				amount = 8,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 41,
		clientId = 37274,
		amount = 1,
		itemId = 40726,
		quality = 0,
		name = "Small Gun Deck",
		experience = 29600,
		durability = 4,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32175,
				amount = 30,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 20,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32155,
				amount = 8,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 42,
		clientId = 37273,
		amount = 1,
		itemId = 40725,
		quality = 0,
		name = "Small Fishing Storage",
		experience = 29600,
		durability = 4,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32175,
				amount = 30,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 20,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32155,
				amount = 8,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Ship Module",
		index = 43,
		clientId = 37277,
		amount = 1,
		itemId = 40729,
		quality = 0,
		name = "Small Tradepack Container Kit",
		experience = 82000,
		durability = 6,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 43738,
				amount = 2,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 44,
		clientId = 37269,
		amount = 1,
		itemId = 40721,
		quality = 0,
		name = "Small Ammunition Cabin Kit",
		experience = 82000,
		durability = 6,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 43738,
				amount = 2,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 45,
		clientId = 37271,
		amount = 1,
		itemId = 40723,
		quality = 0,
		name = "Small Fishing Crane Kit",
		experience = 82000,
		durability = 6,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 43738,
				amount = 2,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 46,
		clientId = 37256,
		amount = 1,
		itemId = 40708,
		quality = 0,
		name = "Medium Hull Frame",
		experience = 212000,
		durability = 6,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32177,
				amount = 120,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32166,
				amount = 80,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 25,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 43738,
				amount = 8,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 47,
		clientId = 37251,
		amount = 1,
		itemId = 40703,
		quality = 0,
		name = "Medium Cargo Hold",
		experience = 88000,
		durability = 6,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32166,
				amount = 40,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 10,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 43738,
				amount = 3,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 48,
		clientId = 37254,
		amount = 1,
		itemId = 40706,
		quality = 0,
		name = "Medium Fishing Storage",
		experience = 88000,
		durability = 6,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32166,
				amount = 40,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 10,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 43738,
				amount = 3,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 49,
		clientId = 37255,
		amount = 1,
		itemId = 40707,
		quality = 0,
		name = "Medium Gun Deck",
		experience = 88000,
		durability = 6,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32166,
				amount = 40,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 10,
				clientId = 28737,
				name = "iron bar"
			},
			{
				itemId = 43738,
				amount = 3,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 50,
		clientId = 37258,
		amount = 1,
		itemId = 40710,
		quality = 0,
		name = "Medium Tradepack Container Kit",
		experience = 245000,
		durability = 9,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 48958,
				amount = 135,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 30,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43737,
				amount = 4,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 51,
		clientId = 37250,
		amount = 1,
		itemId = 40702,
		quality = 0,
		name = "Medium Ammunition Cabin Kit",
		experience = 245000,
		durability = 9,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 48958,
				amount = 135,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 30,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43737,
				amount = 4,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 52,
		clientId = 37252,
		amount = 1,
		itemId = 40704,
		quality = 0,
		name = "Medium Fishing Crane Kit",
		experience = 245000,
		durability = 9,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 48958,
				amount = 135,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 30,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43737,
				amount = 4,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 53,
		clientId = 37241,
		amount = 1,
		itemId = 40693,
		quality = 0,
		name = "Large Hull Frame",
		experience = 625000,
		durability = 8,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 300,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 150,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43736,
				amount = 50,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 43737,
				amount = 20,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 54,
		clientId = 37237,
		amount = 1,
		itemId = 40689,
		quality = 0,
		name = "Large Cargo Hold",
		experience = 312000,
		durability = 8,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 160,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 80,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43736,
				amount = 20,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 43737,
				amount = 8,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 55,
		clientId = 37240,
		amount = 1,
		itemId = 40692,
		quality = 0,
		name = "Large Gun Deck",
		experience = 312000,
		durability = 8,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 160,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 80,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43736,
				amount = 20,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 43737,
				amount = 8,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 56,
		clientId = 37239,
		amount = 1,
		itemId = 40691,
		quality = 0,
		name = "Large Fishing Storage",
		experience = 312000,
		durability = 8,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 160,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 80,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43736,
				amount = 20,
				clientId = 40284,
				name = "Steel Bar"
			},
			{
				itemId = 43737,
				amount = 8,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Ship Craft",
		index = 57,
		clientId = 37249,
		amount = 1,
		itemId = 40701,
		quality = 0,
		name = "Mast",
		experience = 20000,
		durability = 4,
		profession = 4,
		description = "Used for crafting Ships at the Ship Builder",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32175,
				amount = 20,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 20,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32155,
				amount = 5,
				clientId = 28723,
				name = "iron ingot"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 58,
		clientId = 37229,
		amount = 1,
		itemId = 40681,
		quality = 0,
		name = "Common Wheel",
		experience = 1600,
		durability = 4,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				itemId = 32176,
				amount = 10,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32166,
				amount = 5,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 59,
		clientId = 37284,
		amount = 1,
		itemId = 40736,
		quality = 0,
		name = "Sturdy Wheel",
		experience = 8800,
		durability = 7,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 46,
			single = 41
		},
		materials = {
			{
				itemId = 32177,
				amount = 16,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 5,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43738,
				amount = 1,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 60,
		clientId = 37264,
		amount = 1,
		itemId = 40716,
		quality = 0,
		name = "Reinforced Wheel",
		experience = 28000,
		durability = 9,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				itemId = 48958,
				amount = 50,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 43737,
				amount = 1,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 61,
		clientId = 37278,
		amount = 1,
		itemId = 40730,
		quality = 0,
		name = "Small Wagon Container",
		experience = 11200,
		durability = 4,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 20,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 43735,
				amount = 1,
				clientId = 40283,
				name = "Common Plate"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 62,
		clientId = 37259,
		amount = 1,
		itemId = 40711,
		quality = 0,
		name = "Medium Wagon Container",
		experience = 57600,
		durability = 7,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				itemId = 32177,
				amount = 20,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32172,
				amount = 5,
				clientId = 28740,
				name = "reinforced plate"
			},
			{
				itemId = 32169,
				amount = 5,
				clientId = 28737,
				name = "iron bar"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 63,
		clientId = 37243,
		amount = 1,
		itemId = 40695,
		quality = 0,
		name = "Large Wagon Container",
		experience = 146400,
		durability = 7,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				itemId = 48958,
				amount = 35,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32172,
				amount = 15,
				clientId = 28740,
				name = "reinforced plate"
			},
			{
				itemId = 43736,
				amount = 10,
				clientId = 40284,
				name = "Steel Bar"
			}
		}
	},
	{
		category = "weapons",
		index = 64,
		clientId = 28998,
		amount = 1,
		itemId = 32430,
		quality = 100,
		name = "Oakwood Bow",
		experience = 1760,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "bow",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32176,
				amount = 3,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32403,
				amount = 1,
				clientId = 28971,
				name = "coarse thread"
			}
		}
	},
	{
		category = "weapons",
		index = 65,
		clientId = 29050,
		amount = 1,
		itemId = 32482,
		quality = 100,
		name = "Mystic Staff",
		experience = 1760,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "staff",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32176,
				amount = 4,
				clientId = 28744,
				name = "rough plank"
			}
		}
	},
	{
		category = "weapons",
		index = 66,
		clientId = 33990,
		amount = 1,
		itemId = 37422,
		quality = 100,
		name = "Knotted Sceptre",
		experience = 880,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "sceptre",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32176,
				amount = 2,
				clientId = 28744,
				name = "rough plank"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 67,
		clientId = 40286,
		amount = 1,
		itemId = 43738,
		quality = 0,
		name = "Wooden Arch",
		experience = 4800,
		durability = 5,
		profession = 4,
		description = "Used in various recipes. A basic but sturdy wooden arch.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32175,
				amount = 15,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 38331,
				amount = 10,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 68,
		clientId = 40285,
		amount = 1,
		itemId = 43737,
		quality = 0,
		name = "Supple Wooden Arch",
		experience = 7600,
		durability = 7,
		profession = 4,
		description = "Used in various recipes. Crafted with precision, this arch combines flexibility with strength.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32177,
				amount = 15,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 38331,
				amount = 20,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 69,
		clientId = 40492,
		amount = 1,
		itemId = 43944,
		quality = 0,
		name = "Swift Wheel",
		experience = 3040,
		durability = 6,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				itemId = 32175,
				amount = 10,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 5,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Wagon Craft",
		index = 70,
		clientId = 40491,
		amount = 1,
		itemId = 43943,
		quality = 0,
		name = "Common Wagon Container",
		experience = 29200,
		durability = 6,
		profession = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				itemId = 32175,
				amount = 25,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 43735,
				amount = 3,
				clientId = 40283,
				name = "Common Plate"
			}
		}
	},
	{
		category = "planks",
		index = 74,
		clientId = 41847,
		amount = 1,
		itemId = 45299,
		quality = 100,
		name = "Dense Plank",
		experience = 2000,
		durability = 4,
		profession = 4,
		description = "Used in various recipes. Sturdy crafting material crafted from dense logs.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 37803,
				amount = 4,
				clientId = 34371,
				name = "Dense Log"
			}
		}
	},
	{
		category = "planks",
		index = 75,
		clientId = 41848,
		amount = 1,
		itemId = 45300,
		quality = 250,
		name = "Heavy Plank",
		experience = 4400,
		durability = 6,
		profession = 4,
		description = "Used in various recipes. Exceptionally robust crafting material forged from dense logs.",
		progress = 250,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 37803,
				amount = 8,
				clientId = 34371,
				name = "Dense Log"
			},
			{
				itemId = 38331,
				amount = 2,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 76,
		clientId = 42777,
		amount = 1,
		itemId = 46229,
		quality = 0,
		name = "Weak Table",
		experience = 3600,
		durability = 4,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 8,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32166,
				amount = 2,
				clientId = 28734,
				name = "nail"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 77,
		clientId = 42782,
		amount = 1,
		itemId = 46234,
		quality = 0,
		name = "Sturdy Container",
		experience = 41600,
		durability = 8,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 18,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43735,
				amount = 6,
				clientId = 40283,
				name = "Common Plate"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 78,
		clientId = 42781,
		amount = 1,
		itemId = 46233,
		quality = 0,
		name = "Frail Loom",
		experience = 8000,
		durability = 4,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 10,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32398,
				amount = 6,
				clientId = 28966,
				name = "simple cloth"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 79,
		clientId = 42783,
		amount = 1,
		itemId = 46235,
		quality = 0,
		name = "Simple Loom",
		experience = 23000,
		durability = 6,
		profession = 4,
		description = "Used in housing upgrades.",
		progress = 250,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32177,
				amount = 10,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32405,
				amount = 5,
				clientId = 28973,
				name = "fine thread"
			}
		}
	},
	{
		category = "Ship Module",
		index = 80,
		clientId = 43638,
		amount = 1,
		itemId = 47090,
		quality = 0,
		name = "Small Maintenance Unit Kit",
		experience = 82000,
		durability = 6,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 32177,
				amount = 50,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 43734,
				amount = 10,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 43738,
				amount = 2,
				clientId = 40286,
				name = "Wooden Arch"
			}
		}
	},
	{
		category = "Ship Module",
		index = 81,
		clientId = 43635,
		amount = 1,
		itemId = 47087,
		quality = 0,
		name = "Medium Maintenance Unit Kit",
		experience = 245000,
		durability = 9,
		profession = 4,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 48958,
				amount = 135,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43734,
				amount = 30,
				clientId = 40282,
				name = "Bolt"
			},
			{
				itemId = 32157,
				amount = 20,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 43737,
				amount = 4,
				clientId = 40285,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		category = "planks",
		index = 82,
		clientId = 45506,
		amount = 1,
		itemId = 48958,
		quality = 450,
		name = "Sturdy Plank",
		experience = 1500,
		durability = 8,
		profession = 4,
		description = "Used in various recipes. A solid and dependable wooden plank.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 48957,
				amount = 10,
				clientId = 45505,
				name = "Sturdy Log"
			},
			{
				itemId = 38331,
				amount = 4,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "planks",
		index = 83,
		clientId = 45503,
		amount = 1,
		itemId = 48955,
		quality = 550,
		name = "Fine Plank",
		experience = 2200,
		durability = 9,
		profession = 4,
		description = "Used in various recipes. A meticulously crafted wooden plank.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 48954,
				amount = 10,
				clientId = 45502,
				name = "Fine Log"
			},
			{
				itemId = 38331,
				amount = 6,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		category = "weapons",
		index = 84,
		clientId = 29028,
		amount = 1,
		itemId = 32460,
		quality = 100,
		name = "Wooden Buckler",
		experience = 880,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "buckler shield",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32176,
				amount = 2,
				clientId = 28744,
				name = "rough plank"
			}
		}
	},
	{
		category = "weapons",
		index = 85,
		clientId = 29029,
		amount = 1,
		itemId = 32461,
		quality = 100,
		name = "Sturdy Buckler",
		experience = 1840,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "buckler shield",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 3,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 38864,
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather"
			},
			{
				itemId = 32460,
				amount = 1,
				clientId = 29028,
				name = "Wooden Buckler"
			}
		}
	},
	{
		category = "weapons",
		index = 86,
		clientId = 29030,
		amount = 1,
		itemId = 32462,
		quality = 100,
		name = "Marauder's Shield",
		experience = 7000,
		durability = 6,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "buckler shield",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 5,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 38865,
				amount = 2,
				clientId = 35433,
				name = "Craftman's Leather"
			},
			{
				itemId = 32461,
				amount = 1,
				clientId = 29029,
				name = "Sturdy Buckler"
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
		index = 87,
		clientId = 29031,
		amount = 1,
		itemId = 32463,
		quality = 100,
		name = "Rune Shield",
		experience = 19000,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "buckler shield",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32177,
				amount = 12,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 38866,
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather"
			},
			{
				itemId = 32462,
				amount = 1,
				clientId = 29030,
				name = "Marauder's Shield"
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
		index = 88,
		clientId = 29032,
		amount = 1,
		itemId = 32464,
		quality = 100,
		name = "Ravenguard's Shield",
		experience = 39500,
		durability = 8,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "buckler shield",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 48958,
				amount = 20,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 38867,
				amount = 4,
				clientId = 35435,
				name = "Merchant's Leather"
			},
			{
				itemId = 32463,
				amount = 1,
				clientId = 29031,
				name = "Rune Shield"
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
		index = 89,
		amount = 1,
		category = "weapons",
		slotName = "buckler shield",
		quality = 100,
		progress = 700,
		specialization = "Fletcher",
		experience = 57600,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 37149,
		itemId = 40601,
		name = "Nocturnal Shield",
		profession = 4,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 48955,
				amount = 22,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 38868,
				amount = 4,
				clientId = 35436,
				name = "Artisan Leather"
			},
			{
				itemId = 32464,
				amount = 1,
				clientId = 29032,
				name = "Ravenguard's Shield"
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
		category = "weapons",
		index = 90,
		clientId = 46241,
		amount = 1,
		itemId = 49694,
		quality = 100,
		name = "Wooden Bulwark",
		experience = 880,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "tower shield",
		tier = 1,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32176,
				amount = 2,
				clientId = 28744,
				name = "rough plank"
			}
		}
	},
	{
		category = "weapons",
		index = 91,
		clientId = 46242,
		amount = 1,
		itemId = 49695,
		quality = 100,
		name = "Sentinel Shield",
		experience = 1840,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "tower shield",
		tier = 2,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 3,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32158,
				amount = 3,
				clientId = 28726,
				name = "copper ingot"
			},
			{
				itemId = 49694,
				amount = 1,
				clientId = 46241,
				name = "Wooden Bulwark"
			}
		}
	},
	{
		category = "weapons",
		index = 92,
		clientId = 46243,
		amount = 1,
		itemId = 49696,
		quality = 100,
		name = "Defender's Bulwark",
		experience = 7000,
		durability = 6,
		profession = 4,
		description = "",
		progress = 200,
		slotName = "tower shield",
		tier = 3,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 6,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32155,
				amount = 8,
				clientId = 28723,
				name = "iron ingot"
			},
			{
				itemId = 49695,
				amount = 1,
				clientId = 46242,
				name = "Sentinel Shield"
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
		index = 93,
		clientId = 46244,
		amount = 1,
		itemId = 49697,
		quality = 100,
		name = "Steelclad Bulwark",
		experience = 19000,
		durability = 7,
		profession = 4,
		description = "",
		progress = 350,
		slotName = "tower shield",
		tier = 4,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32177,
				amount = 12,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32156,
				amount = 10,
				clientId = 28724,
				name = "steel ingot"
			},
			{
				itemId = 49696,
				amount = 1,
				clientId = 46243,
				name = "Defender's Bulwark"
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
		index = 94,
		clientId = 46245,
		amount = 1,
		itemId = 49698,
		quality = 100,
		name = "King's Defender",
		experience = 39500,
		durability = 8,
		profession = 4,
		description = "",
		progress = 525,
		slotName = "tower shield",
		tier = 5,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 48958,
				amount = 20,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32157,
				amount = 18,
				clientId = 28725,
				name = "cobalt ingot"
			},
			{
				itemId = 49697,
				amount = 1,
				clientId = 46244,
				name = "Steelclad Bulwark"
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
		index = 95,
		amount = 1,
		category = "weapons",
		slotName = "tower shield",
		quality = 100,
		progress = 700,
		specialization = "Fletcher",
		experience = 57600,
		durability = 12,
		description = "",
		tier = 6,
		clientId = 46246,
		itemId = 49699,
		name = "Protector's Tower Shield",
		profession = 4,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 48955,
				amount = 22,
				clientId = 45503,
				name = "Fine Plank"
			},
			{
				itemId = 32159,
				amount = 14,
				clientId = 28727,
				name = "titanium ingot"
			},
			{
				itemId = 49698,
				amount = 1,
				clientId = 46245,
				name = "King's Defender"
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
		category = "Housing Craft",
		index = 96,
		clientId = 47280,
		amount = 1,
		itemId = 50733,
		quality = 0,
		name = "Protective Charm",
		experience = 8000,
		durability = 4,
		profession = 4,
		description = "",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 10,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32398,
				amount = 6,
				clientId = 28966,
				name = "simple cloth"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 97,
		clientId = 47286,
		amount = 1,
		itemId = 50739,
		quality = 0,
		name = "Warding Charm",
		experience = 23000,
		durability = 6,
		profession = 4,
		description = "Used for housing craft.",
		progress = 250,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32177,
				amount = 10,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32405,
				amount = 5,
				clientId = 28973,
				name = "fine thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 98,
		clientId = 47282,
		amount = 1,
		itemId = 50735,
		quality = 0,
		name = "Spellbound Charm",
		experience = 35000,
		durability = 12,
		profession = 4,
		description = "Used for housing craft.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 15,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32401,
				amount = 5,
				clientId = 28969,
				name = "merchant's thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 99,
		clientId = 47277,
		amount = 1,
		itemId = 50730,
		quality = 0,
		name = "Basic Stabilizer",
		experience = 8000,
		durability = 4,
		profession = 4,
		description = "Used for housing craft.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32176,
				amount = 10,
				clientId = 28744,
				name = "rough plank"
			},
			{
				itemId = 32398,
				amount = 6,
				clientId = 28966,
				name = "simple cloth"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 100,
		clientId = 47278,
		amount = 1,
		itemId = 50731,
		quality = 0,
		name = "Energy Stabilizer",
		experience = 23000,
		durability = 6,
		profession = 4,
		description = "Used for housing craft.",
		progress = 250,
		slotName = "",
		tier = -1,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32177,
				amount = 10,
				clientId = 28745,
				name = "treated plank"
			},
			{
				itemId = 32405,
				amount = 5,
				clientId = 28973,
				name = "fine thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 101,
		clientId = 47275,
		amount = 1,
		itemId = 50728,
		quality = 0,
		name = "Arcane Stabilizer",
		experience = 35000,
		durability = 12,
		profession = 4,
		description = "Used for housing craft.",
		progress = 600,
		slotName = "",
		tier = -1,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 15,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 32401,
				amount = 5,
				clientId = 28969,
				name = "merchant's thread"
			}
		}
	},
	{
		category = "Housing Craft",
		index = 102,
		clientId = 47285,
		amount = 1,
		itemId = 50738,
		quality = 0,
		name = "Wall Reinforcement",
		experience = 7360,
		durability = 5,
		profession = 4,
		description = "Used for housing craft.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 32175,
				amount = 8,
				clientId = 28743,
				name = "refined plank"
			},
			{
				itemId = 32166,
				amount = 1,
				clientId = 28734,
				name = "nail"
			},
			{
				itemId = 32169,
				amount = 1,
				clientId = 28737,
				name = "iron bar"
			}
		}
	},
	{
		index = 103,
		amount = 1,
		category = "Housing Craft",
		slotName = "",
		quality = 0,
		progress = 500,
		specialization = "Joiner",
		experience = 41500,
		durability = 8,
		description = "Used for housing craft.",
		tier = -1,
		clientId = 47284,
		itemId = 50737,
		name = "Wall Fortification",
		profession = 4,
		level = {
			mass = 65,
			single = 50
		},
		materials = {
			{
				itemId = 48958,
				amount = 18,
				clientId = 45506,
				name = "Sturdy Plank"
			},
			{
				itemId = 43735,
				amount = 6,
				clientId = 40283,
				name = "Common Plate"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCarpentry] = {
	{
		category = "quest",
		index = 1,
		clientId = 28998,
		amount = 1,
		itemId = 32430,
		quality = 50,
		name = "Oakwood Bow",
		experience = 0,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "bow",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38876,
				amount = 5,
				clientId = 28744,
				name = "Rough Plank"
			},
			{
				itemId = 38877,
				amount = 3,
				clientId = 28971,
				name = "Coarse Thread"
			}
		}
	},
	{
		category = "quest",
		index = 2,
		clientId = 29050,
		amount = 1,
		itemId = 32482,
		quality = 50,
		name = "Mystic Staff",
		experience = 0,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "staff",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38876,
				amount = 9,
				clientId = 28744,
				name = "Rough Plank"
			}
		}
	},
	{
		category = "quest",
		index = 3,
		clientId = 33990,
		amount = 1,
		itemId = 37422,
		quality = 50,
		name = "Knotted Sceptre",
		experience = 0,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "sceptre",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38876,
				amount = 5,
				clientId = 28744,
				name = "Rough Plank"
			}
		}
	},
	{
		category = "quest",
		index = 4,
		clientId = 29028,
		amount = 1,
		itemId = 32460,
		quality = 50,
		name = "Wooden Buckler",
		experience = 0,
		durability = 3,
		profession = 4,
		description = "",
		progress = 50,
		slotName = "buckler shield",
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
	}
}

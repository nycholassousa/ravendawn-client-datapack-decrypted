-- chunkname: @/modules/game_profession/recipes/carpentry.lua

recipes = recipes or {}
recipes[ProfessionCarpentry] = {
	{
		durability = 4,
		description = "Used in various recipes. Unpolished and rugged.",
		index = 1,
		category = "planks",
		experience = 440,
		amount = 1,
		name = "rough plank",
		clientId = 28744,
		profession = 4,
		slotName = "",
		quality = 75,
		progress = 25,
		itemId = 32176,
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28977,
				itemId = 32409,
				amount = 5,
				name = "Small Log"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Meticulously processed for smoothness and uniformity.",
		index = 2,
		category = "planks",
		experience = 880,
		amount = 1,
		name = "refined plank",
		clientId = 28743,
		profession = 4,
		slotName = "",
		quality = 150,
		progress = 150,
		itemId = 32175,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 45504,
				itemId = 48956,
				amount = 8,
				name = "Heavy Log"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Enhanced for durability and resistance.",
		index = 3,
		category = "planks",
		experience = 1360,
		amount = 1,
		name = "treated plank",
		clientId = 28745,
		profession = 4,
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 32177,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 45504,
				itemId = 48956,
				amount = 12,
				name = "Heavy Log"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 2,
				name = "Oil"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 4,
		category = "weapons",
		experience = 3680,
		amount = 1,
		name = "Viper's Bow",
		clientId = 28999,
		profession = 4,
		slotName = "bow",
		quality = 100,
		progress = 100,
		itemId = 32431,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 6,
				name = "rough plank"
			},
			{
				clientId = 28971,
				itemId = 32403,
				amount = 2,
				name = "coarse thread"
			},
			{
				clientId = 28998,
				itemId = 32430,
				amount = 1,
				name = "Oakwood Bow"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 5,
		category = "weapons",
		experience = 3680,
		amount = 1,
		name = "Warlock Staff",
		clientId = 29051,
		profession = 4,
		slotName = "staff",
		quality = 100,
		progress = 100,
		itemId = 32483,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 8,
				name = "rough plank"
			},
			{
				clientId = 29050,
				itemId = 32482,
				amount = 1,
				name = "Mystic Staff"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 6,
		category = "weapons",
		experience = 1840,
		amount = 1,
		name = "Tribal Sceptre",
		clientId = 33991,
		profession = 4,
		slotName = "sceptre",
		quality = 100,
		progress = 100,
		itemId = 37423,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 4,
				name = "rough plank"
			},
			{
				clientId = 33990,
				itemId = 37422,
				amount = 1,
				name = "Knotted Sceptre"
			}
		}
	},
	{
		durability = 5,
		description = "",
		index = 7,
		category = "weapons",
		experience = 14000,
		amount = 1,
		name = "Black Ash Bow",
		clientId = 29000,
		profession = 4,
		slotName = "bow",
		quality = 100,
		progress = 200,
		itemId = 32432,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 10,
				name = "refined plank"
			},
			{
				clientId = 28972,
				itemId = 32404,
				amount = 5,
				name = "craftman's thread"
			},
			{
				clientId = 28999,
				itemId = 32431,
				amount = 1,
				name = "Viper's Bow"
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
		durability = 5,
		description = "",
		index = 8,
		category = "weapons",
		experience = 14000,
		amount = 1,
		name = "Cultist Staff",
		clientId = 29052,
		profession = 4,
		slotName = "staff",
		quality = 100,
		progress = 200,
		itemId = 32484,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 16,
				name = "refined plank"
			},
			{
				clientId = 29051,
				itemId = 32483,
				amount = 1,
				name = "Warlock Staff"
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
		durability = 5,
		description = "",
		index = 9,
		category = "weapons",
		experience = 7000,
		amount = 1,
		name = "Serpent Sceptre",
		clientId = 33992,
		profession = 4,
		slotName = "sceptre",
		quality = 100,
		progress = 200,
		itemId = 37424,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 10,
				name = "refined plank"
			},
			{
				clientId = 33991,
				itemId = 37423,
				amount = 1,
				name = "Tribal Sceptre"
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
		durability = 7,
		description = "",
		index = 10,
		category = "weapons",
		experience = 38000,
		amount = 1,
		name = "Bullseye Bow",
		clientId = 29001,
		profession = 4,
		slotName = "bow",
		quality = 100,
		progress = 350,
		itemId = 32433,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 18,
				name = "treated plank"
			},
			{
				clientId = 28973,
				itemId = 32405,
				amount = 7,
				name = "fine thread"
			},
			{
				clientId = 29000,
				itemId = 32432,
				amount = 1,
				name = "Black Ash Bow"
			},
			{
				clientId = 38271,
				itemId = 41723,
				amount = 20,
				name = "Sturdy String"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 11,
		category = "weapons",
		experience = 38000,
		amount = 1,
		name = "Celestial Staff",
		clientId = 29053,
		profession = 4,
		slotName = "staff",
		quality = 100,
		progress = 350,
		itemId = 32485,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 28,
				name = "treated plank"
			},
			{
				clientId = 29052,
				itemId = 32484,
				amount = 1,
				name = "Cultist Staff"
			},
			{
				clientId = 40264,
				itemId = 43716,
				amount = 20,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 12,
		category = "weapons",
		experience = 19000,
		amount = 1,
		name = "Crystal Sceptre",
		clientId = 33993,
		profession = 4,
		slotName = "sceptre",
		quality = 100,
		progress = 350,
		itemId = 37425,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 15,
				name = "treated plank"
			},
			{
				clientId = 33992,
				itemId = 37424,
				amount = 1,
				name = "Serpent Sceptre"
			},
			{
				clientId = 40264,
				itemId = 43716,
				amount = 10,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 13,
		category = "weapons",
		experience = 79000,
		amount = 1,
		name = "Predator Bow",
		clientId = 29002,
		profession = 4,
		slotName = "bow",
		quality = 100,
		progress = 525,
		itemId = 32434,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 32,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 14,
				name = "merchant's thread"
			},
			{
				clientId = 29001,
				itemId = 32433,
				amount = 1,
				name = "Bullseye Bow"
			},
			{
				clientId = 40272,
				itemId = 43724,
				amount = 24,
				name = "Hardwood"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 14,
		category = "weapons",
		experience = 79000,
		amount = 1,
		name = "Lightshard Staff",
		clientId = 29054,
		profession = 4,
		slotName = "staff",
		quality = 100,
		progress = 525,
		itemId = 32486,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 52,
				name = "Sturdy Plank"
			},
			{
				clientId = 29053,
				itemId = 32485,
				amount = 1,
				name = "Celestial Staff"
			},
			{
				clientId = 40270,
				itemId = 43722,
				amount = 24,
				name = "Enervating Core"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 15,
		category = "weapons",
		experience = 39500,
		amount = 1,
		name = "Celestial Sceptre",
		clientId = 33994,
		profession = 4,
		slotName = "sceptre",
		quality = 100,
		progress = 525,
		itemId = 37426,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 26,
				name = "Sturdy Plank"
			},
			{
				clientId = 33993,
				itemId = 37425,
				amount = 1,
				name = "Crystal Sceptre"
			},
			{
				clientId = 40270,
				itemId = 43722,
				amount = 12,
				name = "Enervating Core"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 16,
		category = "fishing",
		experience = 1040,
		amount = 1,
		name = "fishing stick",
		clientId = 28896,
		profession = 4,
		slotName = "fishing rod",
		quality = 0,
		progress = 100,
		itemId = 32328,
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 1,
				name = "rough plank"
			},
			{
				clientId = 28971,
				itemId = 32403,
				amount = 1,
				name = "coarse thread"
			}
		}
	},
	{
		durability = 5,
		description = "",
		index = 17,
		category = "fishing",
		experience = 2080,
		amount = 1,
		name = "fishing rod",
		clientId = 28898,
		profession = 4,
		slotName = "fishing rod",
		quality = 0,
		progress = 200,
		itemId = 32330,
		tier = 2,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 2,
				name = "rough plank"
			},
			{
				clientId = 28971,
				itemId = 32403,
				amount = 2,
				name = "coarse thread"
			},
			{
				clientId = 28896,
				itemId = 32328,
				amount = 1,
				name = "fishing stick"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 18,
		category = "fishing",
		experience = 6240,
		amount = 1,
		name = "craftman's fishing rod",
		clientId = 28895,
		profession = 4,
		slotName = "fishing rod",
		quality = 0,
		progress = 250,
		itemId = 32327,
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 3,
				name = "refined plank"
			},
			{
				clientId = 28972,
				itemId = 32404,
				amount = 3,
				name = "craftman's thread"
			},
			{
				clientId = 28898,
				itemId = 32330,
				amount = 1,
				name = "fishing rod"
			}
		}
	},
	{
		durability = 7,
		description = "",
		index = 19,
		category = "fishing",
		experience = 13600,
		amount = 1,
		name = "sailor's fishing rod",
		clientId = 28899,
		profession = 4,
		slotName = "fishing rod",
		quality = 0,
		progress = 350,
		itemId = 32331,
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 3,
				name = "treated plank"
			},
			{
				clientId = 28973,
				itemId = 32405,
				amount = 5,
				name = "fine thread"
			},
			{
				clientId = 28895,
				itemId = 32327,
				amount = 1,
				name = "craftman's fishing rod"
			}
		}
	},
	{
		durability = 9,
		description = "",
		index = 20,
		category = "fishing",
		experience = 44800,
		amount = 1,
		name = "artisan fishing rod",
		clientId = 28900,
		profession = 4,
		slotName = "fishing rod",
		quality = 0,
		progress = 525,
		itemId = 32332,
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 10,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 12,
				name = "merchant's thread"
			},
			{
				clientId = 28899,
				itemId = 32331,
				amount = 1,
				name = "sailor's fishing rod"
			}
		}
	},
	{
		durability = 12,
		index = 21,
		description = "",
		experience = 70400,
		name = "lightwood angler",
		amount = 1,
		specialization = "Angler Carpenter",
		tier = 6,
		category = "fishing",
		profession = 4,
		clientId = 28897,
		slotName = "fishing rod",
		quality = 0,
		progress = 600,
		itemId = 32329,
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 10,
				name = "Fine Plank"
			},
			{
				clientId = 28970,
				itemId = 32402,
				amount = 16,
				name = "artisan thread"
			},
			{
				clientId = 28900,
				itemId = 32332,
				amount = 1,
				name = "artisan fishing rod"
			}
		}
	},
	{
		durability = 12,
		index = 22,
		description = "",
		experience = 115200,
		name = "Marksman Bow",
		amount = 1,
		specialization = "Fletcher",
		tier = 6,
		category = "weapons",
		profession = 4,
		clientId = 37155,
		slotName = "bow",
		quality = 100,
		progress = 700,
		itemId = 40607,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 36,
				name = "Fine Plank"
			},
			{
				clientId = 28970,
				itemId = 32402,
				amount = 12,
				name = "artisan thread"
			},
			{
				clientId = 29002,
				itemId = 32434,
				amount = 1,
				name = "Predator Bow"
			},
			{
				clientId = 40279,
				itemId = 43731,
				amount = 32,
				name = "Supernatural Thread"
			}
		}
	},
	{
		durability = 12,
		index = 23,
		description = "",
		experience = 115200,
		name = "Necromancer's Staff",
		amount = 1,
		specialization = "Fletcher",
		tier = 6,
		category = "weapons",
		profession = 4,
		clientId = 37150,
		slotName = "staff",
		quality = 100,
		progress = 700,
		itemId = 40602,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 52,
				name = "Fine Plank"
			},
			{
				clientId = 29054,
				itemId = 32486,
				amount = 1,
				name = "Lightshard Staff"
			},
			{
				clientId = 40273,
				itemId = 43725,
				amount = 32,
				name = "Mystical Crystal"
			}
		}
	},
	{
		durability = 12,
		index = 24,
		description = "",
		experience = 57600,
		name = "Crowbone Sceptre",
		amount = 1,
		specialization = "Fletcher",
		tier = 6,
		category = "weapons",
		profession = 4,
		clientId = 37157,
		slotName = "sceptre",
		quality = 100,
		progress = 700,
		itemId = 40609,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 26,
				name = "Fine Plank"
			},
			{
				clientId = 33994,
				itemId = 37426,
				amount = 1,
				name = "Celestial Sceptre"
			},
			{
				clientId = 40273,
				itemId = 43725,
				amount = 16,
				name = "Mystical Crystal"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 25,
		category = "Housing Craft",
		experience = 15400,
		amount = 1,
		name = "Armoires",
		clientId = 37219,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40671,
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 10,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 5,
				name = "Bolt"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 26,
		category = "Housing Craft",
		experience = 27500,
		amount = 1,
		name = "Square Table",
		clientId = 37279,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40731,
		tier = -1,
		level = {
			single = 45,
			mass = 60
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 20,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 4,
				name = "Bolt"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 27,
		category = "Housing Craft",
		experience = 38000,
		amount = 1,
		name = "Sturdy Square Table",
		clientId = 37283,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40735,
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 25,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 5,
				name = "Bolt"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 28,
		category = "Housing Craft",
		experience = 3600,
		amount = 1,
		name = "Cabinet",
		clientId = 37224,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40676,
		tier = -1,
		level = {
			single = 45,
			mass = 60
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 3,
				name = "treated plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 1,
				name = "nail"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 29,
		category = "Housing Craft",
		experience = 24000,
		amount = 1,
		name = "Loom",
		clientId = 37244,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40696,
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 8,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 5,
				name = "merchant's thread"
			}
		}
	},
	{
		durability = 5,
		description = "Used in housing upgrades.",
		index = 30,
		category = "Housing Craft",
		experience = 7200,
		amount = 1,
		name = "Chair",
		clientId = 37227,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40679,
		tier = -1,
		level = {
			single = 20,
			mass = 35
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 8,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 2,
				name = "nail"
			}
		}
	},
	{
		durability = 5,
		description = "Used in housing upgrades.",
		index = 31,
		category = "Housing Craft",
		experience = 24000,
		amount = 1,
		name = "Simple Bed",
		clientId = 37267,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40719,
		tier = -1,
		level = {
			single = 20,
			mass = 35
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 10,
				name = "refined plank"
			},
			{
				clientId = 28966,
				itemId = 32398,
				amount = 15,
				name = "simple cloth"
			},
			{
				clientId = 28971,
				itemId = 32403,
				amount = 10,
				name = "coarse thread"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 32,
		category = "Housing Craft",
		experience = 64500,
		amount = 1,
		name = "Comfortable Bed",
		clientId = 37228,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40680,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 12,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 4,
				name = "Bolt"
			},
			{
				clientId = 28964,
				itemId = 32396,
				amount = 10,
				name = "merchant's cloth"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 10,
				name = "merchant's thread"
			}
		}
	},
	{
		durability = 5,
		description = "Used in housing upgrades.",
		index = 33,
		category = "Housing Craft",
		experience = 7360,
		amount = 1,
		name = "Storage Container",
		clientId = 37280,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40732,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 8,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 1,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 1,
				name = "iron bar"
			}
		}
	},
	{
		durability = 5,
		description = "Used in housing upgrades.",
		index = 34,
		category = "Housing Craft",
		experience = 26000,
		amount = 1,
		name = "Work Bench",
		clientId = 37290,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40742,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 20,
				name = "refined plank"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 20,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 5,
				name = "nail"
			}
		}
	},
	{
		durability = 7,
		description = "Used in housing upgrades.",
		index = 35,
		category = "Housing Craft",
		experience = 50500,
		amount = 1,
		name = "Superior Work Bench",
		clientId = 37287,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40739,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 30,
				name = "treated plank"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 15,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 10,
				name = "cobalt ingot"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 5,
				name = "nail"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 36,
		category = "Housing Craft",
		experience = 140000,
		amount = 1,
		name = "Artisan Work Bench",
		clientId = 37222,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40674,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 65,
				name = "Sturdy Plank"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 50,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 30,
				name = "titanium ingot"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 5,
				name = "nail"
			}
		}
	},
	{
		durability = 12,
		description = "Used in housing upgrades.",
		index = 37,
		category = "Housing Craft",
		experience = 27600,
		amount = 1,
		name = "Fireplace",
		clientId = 37231,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40683,
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 18,
				name = "Sturdy Plank"
			},
			{
				clientId = 28946,
				itemId = 32378,
				amount = 10,
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
		durability = 12,
		description = "Used in housing upgrades.",
		index = 38,
		category = "Housing Craft",
		experience = 130000,
		amount = 1,
		name = "Luxury Bed",
		clientId = 37245,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 40697,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 25,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 28962,
				itemId = 32394,
				amount = 20,
				name = "artisan cloth"
			},
			{
				clientId = 28970,
				itemId = 32402,
				amount = 10,
				name = "artisan thread"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Ships at the Ship Builder",
		index = 39,
		category = "Ship Craft",
		experience = 48800,
		amount = 1,
		name = "Small Hull Frame",
		clientId = 37275,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40727,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 50,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 40,
				name = "nail"
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
		durability = 4,
		description = "Used for crafting Ships at the Ship Builder",
		index = 40,
		category = "Ship Craft",
		experience = 29600,
		amount = 1,
		name = "Small Cargo Hold",
		clientId = 37270,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40722,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 30,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 20,
				name = "nail"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 8,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Ships at the Ship Builder",
		index = 41,
		category = "Ship Craft",
		experience = 29600,
		amount = 1,
		name = "Small Gun Deck",
		clientId = 37274,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40726,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 30,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 20,
				name = "nail"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 8,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Ships at the Ship Builder",
		index = 42,
		category = "Ship Craft",
		experience = 29600,
		amount = 1,
		name = "Small Fishing Storage",
		clientId = 37273,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40725,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 30,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 20,
				name = "nail"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 8,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 43,
		category = "Ship Module",
		experience = 82000,
		amount = 1,
		name = "Small Tradepack Container Kit",
		clientId = 37277,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 40729,
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 2,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 44,
		category = "Ship Module",
		experience = 82000,
		amount = 1,
		name = "Small Ammunition Cabin Kit",
		clientId = 37269,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 40721,
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 2,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 45,
		category = "Ship Module",
		experience = 82000,
		amount = 1,
		name = "Small Fishing Crane Kit",
		clientId = 37271,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 40723,
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 2,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Ships at the Ship Builder",
		index = 46,
		category = "Ship Craft",
		experience = 212000,
		amount = 1,
		name = "Medium Hull Frame",
		clientId = 37256,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40708,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 120,
				name = "treated plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 80,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 25,
				name = "iron bar"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 8,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Ships at the Ship Builder",
		index = 47,
		category = "Ship Craft",
		experience = 88000,
		amount = 1,
		name = "Medium Cargo Hold",
		clientId = 37251,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40703,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 40,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 10,
				name = "iron bar"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 3,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Ships at the Ship Builder",
		index = 48,
		category = "Ship Craft",
		experience = 88000,
		amount = 1,
		name = "Medium Fishing Storage",
		clientId = 37254,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40706,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 40,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 10,
				name = "iron bar"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 3,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Ships at the Ship Builder",
		index = 49,
		category = "Ship Craft",
		experience = 88000,
		amount = 1,
		name = "Medium Gun Deck",
		clientId = 37255,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 40707,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 40,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 10,
				name = "iron bar"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 3,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 9,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 50,
		category = "Ship Module",
		experience = 245000,
		amount = 1,
		name = "Medium Tradepack Container Kit",
		clientId = 37258,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40710,
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 135,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 30,
				name = "Bolt"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 4,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 9,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 51,
		category = "Ship Module",
		experience = 245000,
		amount = 1,
		name = "Medium Ammunition Cabin Kit",
		clientId = 37250,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40702,
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 135,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 30,
				name = "Bolt"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 4,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 9,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 52,
		category = "Ship Module",
		experience = 245000,
		amount = 1,
		name = "Medium Fishing Crane Kit",
		clientId = 37252,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40704,
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 135,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 30,
				name = "Bolt"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 4,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 8,
		description = "Used for crafting Ships at the Ship Builder",
		index = 53,
		category = "Ship Craft",
		experience = 625000,
		amount = 1,
		name = "Large Hull Frame",
		clientId = 37241,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40693,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 300,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 150,
				name = "Bolt"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 50,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 20,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 8,
		description = "Used for crafting Ships at the Ship Builder",
		index = 54,
		category = "Ship Craft",
		experience = 312000,
		amount = 1,
		name = "Large Cargo Hold",
		clientId = 37237,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40689,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 160,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 80,
				name = "Bolt"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 20,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 8,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 8,
		description = "Used for crafting Ships at the Ship Builder",
		index = 55,
		category = "Ship Craft",
		experience = 312000,
		amount = 1,
		name = "Large Gun Deck",
		clientId = 37240,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40692,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 160,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 80,
				name = "Bolt"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 20,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 8,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 8,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 56,
		category = "Ship Craft",
		experience = 312000,
		amount = 1,
		name = "Large Fishing Storage",
		clientId = 37239,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40691,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 160,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 80,
				name = "Bolt"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 20,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 8,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Ships at the Ship Builder",
		index = 57,
		category = "Ship Craft",
		experience = 20000,
		amount = 1,
		name = "Mast",
		clientId = 37249,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40701,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 20,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 20,
				name = "nail"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 5,
				name = "iron ingot"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 58,
		category = "Wagon Craft",
		experience = 1600,
		amount = 1,
		name = "Common Wheel",
		clientId = 37229,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40681,
		tier = -1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 10,
				name = "rough plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 5,
				name = "nail"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 59,
		category = "Wagon Craft",
		experience = 8800,
		amount = 1,
		name = "Sturdy Wheel",
		clientId = 37284,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40736,
		tier = -1,
		level = {
			single = 41,
			mass = 46
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 16,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 5,
				name = "Bolt"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 1,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 9,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 60,
		category = "Wagon Craft",
		experience = 28000,
		amount = 1,
		name = "Reinforced Wheel",
		clientId = 37264,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40716,
		tier = -1,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 50,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 1,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 4,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 61,
		category = "Wagon Craft",
		experience = 11200,
		amount = 1,
		name = "Small Wagon Container",
		clientId = 37278,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 40730,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 20,
				name = "rough plank"
			},
			{
				clientId = 40283,
				itemId = 43735,
				amount = 1,
				name = "Common Plate"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 62,
		category = "Wagon Craft",
		experience = 57600,
		amount = 1,
		name = "Medium Wagon Container",
		clientId = 37259,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 40711,
		tier = -1,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 20,
				name = "treated plank"
			},
			{
				clientId = 28740,
				itemId = 32172,
				amount = 5,
				name = "reinforced plate"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 5,
				name = "iron bar"
			}
		}
	},
	{
		durability = 7,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 63,
		category = "Wagon Craft",
		experience = 146400,
		amount = 1,
		name = "Large Wagon Container",
		clientId = 37243,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40695,
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 35,
				name = "Sturdy Plank"
			},
			{
				clientId = 28740,
				itemId = 32172,
				amount = 15,
				name = "reinforced plate"
			},
			{
				clientId = 40284,
				itemId = 43736,
				amount = 10,
				name = "Steel Bar"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 64,
		category = "weapons",
		experience = 1760,
		amount = 1,
		name = "Oakwood Bow",
		clientId = 28998,
		profession = 4,
		slotName = "bow",
		quality = 100,
		progress = 50,
		itemId = 32430,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 3,
				name = "rough plank"
			},
			{
				clientId = 28971,
				itemId = 32403,
				amount = 1,
				name = "coarse thread"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 65,
		category = "weapons",
		experience = 1760,
		amount = 1,
		name = "Mystic Staff",
		clientId = 29050,
		profession = 4,
		slotName = "staff",
		quality = 100,
		progress = 50,
		itemId = 32482,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 4,
				name = "rough plank"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 66,
		category = "weapons",
		experience = 880,
		amount = 1,
		name = "Knotted Sceptre",
		clientId = 33990,
		profession = 4,
		slotName = "sceptre",
		quality = 100,
		progress = 50,
		itemId = 37422,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 2,
				name = "rough plank"
			}
		}
	},
	{
		durability = 5,
		description = "Used in various recipes. A basic but sturdy wooden arch.",
		index = 67,
		category = "Wagon Craft",
		experience = 4800,
		amount = 1,
		name = "Wooden Arch",
		clientId = 40286,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 43738,
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 15,
				name = "refined plank"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 10,
				name = "Oil"
			}
		}
	},
	{
		durability = 7,
		description = "Used in various recipes. Crafted with precision, this arch combines flexibility with strength.",
		index = 68,
		category = "Wagon Craft",
		experience = 7600,
		amount = 1,
		name = "Supple Wooden Arch",
		clientId = 40285,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 350,
		itemId = 43737,
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 15,
				name = "treated plank"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 20,
				name = "Oil"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 69,
		category = "Wagon Craft",
		experience = 3040,
		amount = 1,
		name = "Swift Wheel",
		clientId = 40492,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 43944,
		tier = -1,
		level = {
			single = 26,
			mass = 31
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 10,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 5,
				name = "nail"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		index = 70,
		category = "Wagon Craft",
		experience = 29200,
		amount = 1,
		name = "Common Wagon Container",
		clientId = 40491,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 43943,
		tier = -1,
		level = {
			single = 27,
			mass = 32
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 25,
				name = "refined plank"
			},
			{
				clientId = 40283,
				itemId = 43735,
				amount = 3,
				name = "Common Plate"
			}
		}
	},
	{
		durability = 4,
		description = "Used in various recipes. Sturdy crafting material crafted from dense logs.",
		index = 74,
		category = "planks",
		experience = 2000,
		amount = 1,
		name = "Dense Plank",
		clientId = 41847,
		profession = 4,
		slotName = "",
		quality = 100,
		progress = 100,
		itemId = 45299,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 34371,
				itemId = 37803,
				amount = 4,
				name = "Dense Log"
			}
		}
	},
	{
		durability = 6,
		description = "Used in various recipes. Exceptionally robust crafting material forged from dense logs.",
		index = 75,
		category = "planks",
		experience = 4400,
		amount = 1,
		name = "Heavy Plank",
		clientId = 41848,
		profession = 4,
		slotName = "",
		quality = 250,
		progress = 250,
		itemId = 45300,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 34371,
				itemId = 37803,
				amount = 8,
				name = "Dense Log"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 2,
				name = "Oil"
			}
		}
	},
	{
		durability = 4,
		description = "Used in housing upgrades.",
		index = 76,
		category = "Housing Craft",
		experience = 3600,
		amount = 1,
		name = "Weak Table",
		clientId = 42777,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 46229,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 8,
				name = "rough plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 2,
				name = "nail"
			}
		}
	},
	{
		durability = 8,
		description = "Used in housing upgrades.",
		index = 77,
		category = "Housing Craft",
		experience = 41600,
		amount = 1,
		name = "Sturdy Container",
		clientId = 42782,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 46234,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 18,
				name = "Sturdy Plank"
			},
			{
				clientId = 40283,
				itemId = 43735,
				amount = 6,
				name = "Common Plate"
			}
		}
	},
	{
		durability = 4,
		description = "Used in housing upgrades.",
		index = 78,
		category = "Housing Craft",
		experience = 8000,
		amount = 1,
		name = "Frail Loom",
		clientId = 42781,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 46233,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 10,
				name = "rough plank"
			},
			{
				clientId = 28966,
				itemId = 32398,
				amount = 6,
				name = "simple cloth"
			}
		}
	},
	{
		durability = 6,
		description = "Used in housing upgrades.",
		index = 79,
		category = "Housing Craft",
		experience = 23000,
		amount = 1,
		name = "Simple Loom",
		clientId = 42783,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 250,
		itemId = 46235,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 10,
				name = "treated plank"
			},
			{
				clientId = 28973,
				itemId = 32405,
				amount = 5,
				name = "fine thread"
			}
		}
	},
	{
		durability = 6,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 80,
		category = "Ship Module",
		experience = 82000,
		amount = 1,
		name = "Small Maintenance Unit Kit",
		clientId = 43638,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 225,
		itemId = 47090,
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 50,
				name = "treated plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 10,
				name = "Bolt"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				itemId = 43738,
				amount = 2,
				name = "Wooden Arch"
			}
		}
	},
	{
		durability = 9,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		index = 81,
		category = "Ship Module",
		experience = 245000,
		amount = 1,
		name = "Medium Maintenance Unit Kit",
		clientId = 43635,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 47087,
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 135,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				itemId = 43734,
				amount = 30,
				name = "Bolt"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 20,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				itemId = 43737,
				amount = 4,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		durability = 8,
		description = "Used in various recipes. A solid and dependable wooden plank.",
		index = 82,
		category = "planks",
		experience = 1500,
		amount = 1,
		name = "Sturdy Plank",
		clientId = 45506,
		profession = 4,
		slotName = "",
		quality = 450,
		progress = 450,
		itemId = 48958,
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45505,
				itemId = 48957,
				amount = 10,
				name = "Sturdy Log"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 4,
				name = "Oil"
			}
		}
	},
	{
		durability = 9,
		description = "Used in various recipes. A meticulously crafted wooden plank.",
		index = 83,
		category = "planks",
		experience = 2200,
		amount = 1,
		name = "Fine Plank",
		clientId = 45503,
		profession = 4,
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 48955,
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45502,
				itemId = 48954,
				amount = 10,
				name = "Fine Log"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 6,
				name = "Oil"
			}
		}
	},
	{
		durability = 3,
		description = "",
		index = 84,
		category = "weapons",
		experience = 880,
		amount = 1,
		name = "Wooden Buckler",
		clientId = 29028,
		profession = 4,
		slotName = "buckler shield",
		quality = 100,
		progress = 50,
		itemId = 32460,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 2,
				name = "rough plank"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 85,
		category = "weapons",
		experience = 1840,
		amount = 1,
		name = "Sturdy Buckler",
		clientId = 29029,
		profession = 4,
		slotName = "buckler shield",
		quality = 100,
		progress = 100,
		itemId = 32461,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 3,
				name = "rough plank"
			},
			{
				clientId = 35432,
				itemId = 38864,
				amount = 1,
				name = "Coarse Leather"
			},
			{
				clientId = 29028,
				itemId = 32460,
				amount = 1,
				name = "Wooden Buckler"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 86,
		category = "weapons",
		experience = 7000,
		amount = 1,
		name = "Marauder's Shield",
		clientId = 29030,
		profession = 4,
		slotName = "buckler shield",
		quality = 100,
		progress = 200,
		itemId = 32462,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 5,
				name = "refined plank"
			},
			{
				clientId = 35433,
				itemId = 38865,
				amount = 2,
				name = "Craftman's Leather"
			},
			{
				clientId = 29029,
				itemId = 32461,
				amount = 1,
				name = "Sturdy Buckler"
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
		durability = 7,
		description = "",
		index = 87,
		category = "weapons",
		experience = 19000,
		amount = 1,
		name = "Rune Shield",
		clientId = 29031,
		profession = 4,
		slotName = "buckler shield",
		quality = 100,
		progress = 350,
		itemId = 32463,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 12,
				name = "treated plank"
			},
			{
				clientId = 35434,
				itemId = 38866,
				amount = 3,
				name = "Tanned Leather"
			},
			{
				clientId = 29030,
				itemId = 32462,
				amount = 1,
				name = "Marauder's Shield"
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
		durability = 8,
		description = "",
		index = 88,
		category = "weapons",
		experience = 39500,
		amount = 1,
		name = "Ravenguard's Shield",
		clientId = 29032,
		profession = 4,
		slotName = "buckler shield",
		quality = 100,
		progress = 525,
		itemId = 32464,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 20,
				name = "Sturdy Plank"
			},
			{
				clientId = 35435,
				itemId = 38867,
				amount = 4,
				name = "Merchant's Leather"
			},
			{
				clientId = 29031,
				itemId = 32463,
				amount = 1,
				name = "Rune Shield"
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
		durability = 12,
		index = 89,
		description = "",
		experience = 57600,
		name = "Nocturnal Shield",
		amount = 1,
		specialization = "Fletcher",
		tier = 6,
		category = "weapons",
		profession = 4,
		clientId = 37149,
		slotName = "buckler shield",
		quality = 100,
		progress = 700,
		itemId = 40601,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 22,
				name = "Fine Plank"
			},
			{
				clientId = 35436,
				itemId = 38868,
				amount = 4,
				name = "Artisan Leather"
			},
			{
				clientId = 29032,
				itemId = 32464,
				amount = 1,
				name = "Ravenguard's Shield"
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
		durability = 3,
		description = "",
		index = 90,
		category = "weapons",
		experience = 880,
		amount = 1,
		name = "Wooden Bulwark",
		clientId = 46241,
		profession = 4,
		slotName = "tower shield",
		quality = 100,
		progress = 50,
		itemId = 49694,
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 2,
				name = "rough plank"
			}
		}
	},
	{
		durability = 4,
		description = "",
		index = 91,
		category = "weapons",
		experience = 1840,
		amount = 1,
		name = "Sentinel Shield",
		clientId = 46242,
		profession = 4,
		slotName = "tower shield",
		quality = 100,
		progress = 100,
		itemId = 49695,
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 3,
				name = "rough plank"
			},
			{
				clientId = 28726,
				itemId = 32158,
				amount = 3,
				name = "copper ingot"
			},
			{
				clientId = 46241,
				itemId = 49694,
				amount = 1,
				name = "Wooden Bulwark"
			}
		}
	},
	{
		durability = 6,
		description = "",
		index = 92,
		category = "weapons",
		experience = 7000,
		amount = 1,
		name = "Defender's Bulwark",
		clientId = 46243,
		profession = 4,
		slotName = "tower shield",
		quality = 100,
		progress = 200,
		itemId = 49696,
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 6,
				name = "refined plank"
			},
			{
				clientId = 28723,
				itemId = 32155,
				amount = 8,
				name = "iron ingot"
			},
			{
				clientId = 46242,
				itemId = 49695,
				amount = 1,
				name = "Sentinel Shield"
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
		durability = 7,
		description = "",
		index = 93,
		category = "weapons",
		experience = 19000,
		amount = 1,
		name = "Steelclad Bulwark",
		clientId = 46244,
		profession = 4,
		slotName = "tower shield",
		quality = 100,
		progress = 350,
		itemId = 49697,
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 12,
				name = "treated plank"
			},
			{
				clientId = 28724,
				itemId = 32156,
				amount = 10,
				name = "steel ingot"
			},
			{
				clientId = 46243,
				itemId = 49696,
				amount = 1,
				name = "Defender's Bulwark"
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
		durability = 8,
		description = "",
		index = 94,
		category = "weapons",
		experience = 39500,
		amount = 1,
		name = "King's Defender",
		clientId = 46245,
		profession = 4,
		slotName = "tower shield",
		quality = 100,
		progress = 525,
		itemId = 49698,
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 20,
				name = "Sturdy Plank"
			},
			{
				clientId = 28725,
				itemId = 32157,
				amount = 18,
				name = "cobalt ingot"
			},
			{
				clientId = 46244,
				itemId = 49697,
				amount = 1,
				name = "Steelclad Bulwark"
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
		durability = 12,
		index = 95,
		description = "",
		experience = 57600,
		name = "Protector's Tower Shield",
		amount = 1,
		specialization = "Fletcher",
		tier = 6,
		category = "weapons",
		profession = 4,
		clientId = 46246,
		slotName = "tower shield",
		quality = 100,
		progress = 700,
		itemId = 49699,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				itemId = 48955,
				amount = 22,
				name = "Fine Plank"
			},
			{
				clientId = 28727,
				itemId = 32159,
				amount = 14,
				name = "titanium ingot"
			},
			{
				clientId = 46245,
				itemId = 49698,
				amount = 1,
				name = "King's Defender"
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
		durability = 4,
		description = "",
		index = 96,
		category = "Housing Craft",
		experience = 8000,
		amount = 1,
		name = "Protective Charm",
		clientId = 47280,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 50733,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 10,
				name = "rough plank"
			},
			{
				clientId = 28966,
				itemId = 32398,
				amount = 6,
				name = "simple cloth"
			}
		}
	},
	{
		durability = 6,
		description = "Used for housing craft.",
		index = 97,
		category = "Housing Craft",
		experience = 23000,
		amount = 1,
		name = "Warding Charm",
		clientId = 47286,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 250,
		itemId = 50739,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 10,
				name = "treated plank"
			},
			{
				clientId = 28973,
				itemId = 32405,
				amount = 5,
				name = "fine thread"
			}
		}
	},
	{
		durability = 12,
		description = "Used for housing craft.",
		index = 98,
		category = "Housing Craft",
		experience = 35000,
		amount = 1,
		name = "Spellbound Charm",
		clientId = 47282,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 50735,
		tier = -1,
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 15,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 5,
				name = "merchant's thread"
			}
		}
	},
	{
		durability = 4,
		description = "Used for housing craft.",
		index = 99,
		category = "Housing Craft",
		experience = 8000,
		amount = 1,
		name = "Basic Stabilizer",
		clientId = 47277,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 100,
		itemId = 50730,
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				itemId = 32176,
				amount = 10,
				name = "rough plank"
			},
			{
				clientId = 28966,
				itemId = 32398,
				amount = 6,
				name = "simple cloth"
			}
		}
	},
	{
		durability = 6,
		description = "Used for housing craft.",
		index = 100,
		category = "Housing Craft",
		experience = 23000,
		amount = 1,
		name = "Energy Stabilizer",
		clientId = 47278,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 250,
		itemId = 50731,
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				itemId = 32177,
				amount = 10,
				name = "treated plank"
			},
			{
				clientId = 28973,
				itemId = 32405,
				amount = 5,
				name = "fine thread"
			}
		}
	},
	{
		durability = 12,
		description = "Used for housing craft.",
		index = 101,
		category = "Housing Craft",
		experience = 35000,
		amount = 1,
		name = "Arcane Stabilizer",
		clientId = 47275,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 600,
		itemId = 50728,
		tier = -1,
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 15,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				itemId = 32401,
				amount = 5,
				name = "merchant's thread"
			}
		}
	},
	{
		durability = 5,
		description = "Used for housing craft.",
		index = 102,
		category = "Housing Craft",
		experience = 7360,
		amount = 1,
		name = "Wall Reinforcement",
		clientId = 47285,
		profession = 4,
		slotName = "",
		quality = 0,
		progress = 200,
		itemId = 50738,
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				itemId = 32175,
				amount = 8,
				name = "refined plank"
			},
			{
				clientId = 28734,
				itemId = 32166,
				amount = 1,
				name = "nail"
			},
			{
				clientId = 28737,
				itemId = 32169,
				amount = 1,
				name = "iron bar"
			}
		}
	},
	{
		durability = 8,
		index = 103,
		description = "Used for housing craft.",
		experience = 41500,
		name = "Wall Fortification",
		amount = 1,
		specialization = "Joiner",
		tier = -1,
		category = "Housing Craft",
		profession = 4,
		clientId = 47284,
		slotName = "",
		quality = 0,
		progress = 500,
		itemId = 50737,
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				itemId = 48958,
				amount = 18,
				name = "Sturdy Plank"
			},
			{
				clientId = 40283,
				itemId = 43735,
				amount = 6,
				name = "Common Plate"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCarpentry] = {
	{
		durability = 3,
		description = "",
		index = 1,
		category = "quest",
		experience = 0,
		amount = 1,
		name = "Oakwood Bow",
		clientId = 28998,
		profession = 4,
		slotName = "bow",
		quality = 50,
		progress = 50,
		itemId = 32430,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				itemId = 38876,
				amount = 5,
				name = "Rough Plank"
			},
			{
				clientId = 28971,
				itemId = 38877,
				amount = 3,
				name = "Coarse Thread"
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
		name = "Mystic Staff",
		clientId = 29050,
		profession = 4,
		slotName = "staff",
		quality = 50,
		progress = 50,
		itemId = 32482,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				itemId = 38876,
				amount = 9,
				name = "Rough Plank"
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
		name = "Knotted Sceptre",
		clientId = 33990,
		profession = 4,
		slotName = "sceptre",
		quality = 50,
		progress = 50,
		itemId = 37422,
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				itemId = 38876,
				amount = 5,
				name = "Rough Plank"
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
		name = "Wooden Buckler",
		clientId = 29028,
		profession = 4,
		slotName = "buckler shield",
		quality = 50,
		progress = 50,
		itemId = 32460,
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
	}
}

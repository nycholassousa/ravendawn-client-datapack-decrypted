-- chunkname: @/modules/game_profession/recipes/carpentry.lua

recipes = recipes or {}
recipes[ProfessionCarpentry] = {
	{
		amount = 1,
		experience = 440,
		category = "planks",
		clientId = 28744,
		index = 1,
		durability = 4,
		name = "rough plank",
		profession = 4,
		progress = 25,
		quality = 75,
		itemId = 32176,
		description = "Used in various recipes. Unpolished and rugged.",
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28977,
				amount = 5,
				itemId = 32409,
				name = "Small Log"
			}
		}
	},
	{
		amount = 1,
		experience = 880,
		category = "planks",
		clientId = 28743,
		index = 2,
		durability = 7,
		name = "refined plank",
		profession = 4,
		progress = 150,
		quality = 150,
		itemId = 32175,
		description = "Used in various recipes. Meticulously processed for smoothness and uniformity.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 45504,
				amount = 8,
				itemId = 48956,
				name = "Heavy Log"
			}
		}
	},
	{
		amount = 1,
		experience = 1360,
		category = "planks",
		clientId = 28745,
		index = 3,
		durability = 7,
		name = "treated plank",
		profession = 4,
		progress = 225,
		quality = 200,
		itemId = 32177,
		description = "Used in various recipes. Enhanced for durability and resistance.",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 45504,
				amount = 12,
				itemId = 48956,
				name = "Heavy Log"
			},
			{
				clientId = 34899,
				amount = 2,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 3680,
		category = "weapons",
		clientId = 28999,
		index = 4,
		durability = 4,
		name = "Viper's Bow",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 32431,
		description = "",
		slotName = "bow",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 6,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28971,
				amount = 2,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				clientId = 28998,
				amount = 1,
				itemId = 32430,
				name = "Oakwood Bow"
			}
		}
	},
	{
		amount = 1,
		experience = 3680,
		category = "weapons",
		clientId = 29051,
		index = 5,
		durability = 4,
		name = "Warlock Staff",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 32483,
		description = "",
		slotName = "staff",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 8,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 29050,
				amount = 1,
				itemId = 32482,
				name = "Mystic Staff"
			}
		}
	},
	{
		amount = 1,
		experience = 1840,
		category = "weapons",
		clientId = 33991,
		index = 6,
		durability = 4,
		name = "Tribal Sceptre",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 37423,
		description = "",
		slotName = "sceptre",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 4,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 33990,
				amount = 1,
				itemId = 37422,
				name = "Knotted Sceptre"
			}
		}
	},
	{
		amount = 1,
		experience = 14000,
		category = "weapons",
		clientId = 29000,
		index = 7,
		durability = 5,
		name = "Black Ash Bow",
		profession = 4,
		progress = 200,
		quality = 100,
		itemId = 32432,
		description = "",
		slotName = "bow",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28972,
				amount = 5,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				clientId = 28999,
				amount = 1,
				itemId = 32431,
				name = "Viper's Bow"
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
		experience = 14000,
		category = "weapons",
		clientId = 29052,
		index = 8,
		durability = 5,
		name = "Cultist Staff",
		profession = 4,
		progress = 200,
		quality = 100,
		itemId = 32484,
		description = "",
		slotName = "staff",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 16,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 29051,
				amount = 1,
				itemId = 32483,
				name = "Warlock Staff"
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
		experience = 7000,
		category = "weapons",
		clientId = 33992,
		index = 9,
		durability = 5,
		name = "Serpent Sceptre",
		profession = 4,
		progress = 200,
		quality = 100,
		itemId = 37424,
		description = "",
		slotName = "sceptre",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 33991,
				amount = 1,
				itemId = 37423,
				name = "Tribal Sceptre"
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
		experience = 38000,
		category = "weapons",
		clientId = 29001,
		index = 10,
		durability = 7,
		name = "Bullseye Bow",
		profession = 4,
		progress = 350,
		quality = 100,
		itemId = 32433,
		description = "",
		slotName = "bow",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 18,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28973,
				amount = 7,
				itemId = 32405,
				name = "fine thread"
			},
			{
				clientId = 29000,
				amount = 1,
				itemId = 32432,
				name = "Black Ash Bow"
			},
			{
				clientId = 38271,
				amount = 20,
				itemId = 41723,
				name = "Sturdy String"
			}
		}
	},
	{
		amount = 1,
		experience = 38000,
		category = "weapons",
		clientId = 29053,
		index = 11,
		durability = 7,
		name = "Celestial Staff",
		profession = 4,
		progress = 350,
		quality = 100,
		itemId = 32485,
		description = "",
		slotName = "staff",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 28,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 29052,
				amount = 1,
				itemId = 32484,
				name = "Cultist Staff"
			},
			{
				clientId = 40264,
				amount = 20,
				itemId = 43716,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		amount = 1,
		experience = 19000,
		category = "weapons",
		clientId = 33993,
		index = 12,
		durability = 7,
		name = "Crystal Sceptre",
		profession = 4,
		progress = 350,
		quality = 100,
		itemId = 37425,
		description = "",
		slotName = "sceptre",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 15,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 33992,
				amount = 1,
				itemId = 37424,
				name = "Serpent Sceptre"
			},
			{
				clientId = 40264,
				amount = 10,
				itemId = 43716,
				name = "Ambersprite Shard"
			}
		}
	},
	{
		amount = 1,
		experience = 79000,
		category = "weapons",
		clientId = 29002,
		index = 13,
		durability = 9,
		name = "Predator Bow",
		profession = 4,
		progress = 525,
		quality = 100,
		itemId = 32434,
		description = "",
		slotName = "bow",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 32,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				amount = 14,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				clientId = 29001,
				amount = 1,
				itemId = 32433,
				name = "Bullseye Bow"
			},
			{
				clientId = 40272,
				amount = 24,
				itemId = 43724,
				name = "Hardwood"
			}
		}
	},
	{
		amount = 1,
		experience = 79000,
		category = "weapons",
		clientId = 29054,
		index = 14,
		durability = 9,
		name = "Lightshard Staff",
		profession = 4,
		progress = 525,
		quality = 100,
		itemId = 32486,
		description = "",
		slotName = "staff",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 52,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 29053,
				amount = 1,
				itemId = 32485,
				name = "Celestial Staff"
			},
			{
				clientId = 40270,
				amount = 24,
				itemId = 43722,
				name = "Enervating Core"
			}
		}
	},
	{
		amount = 1,
		experience = 39500,
		category = "weapons",
		clientId = 33994,
		index = 15,
		durability = 9,
		name = "Celestial Sceptre",
		profession = 4,
		progress = 525,
		quality = 100,
		itemId = 37426,
		description = "",
		slotName = "sceptre",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 26,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 33993,
				amount = 1,
				itemId = 37425,
				name = "Crystal Sceptre"
			},
			{
				clientId = 40270,
				amount = 12,
				itemId = 43722,
				name = "Enervating Core"
			}
		}
	},
	{
		amount = 1,
		experience = 1040,
		category = "fishing",
		clientId = 28896,
		index = 16,
		durability = 4,
		name = "fishing stick",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 32328,
		description = "",
		slotName = "fishing rod",
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28744,
				amount = 1,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28971,
				amount = 1,
				itemId = 32403,
				name = "coarse thread"
			}
		}
	},
	{
		amount = 1,
		experience = 2080,
		category = "fishing",
		clientId = 28898,
		index = 17,
		durability = 5,
		name = "fishing rod",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 32330,
		description = "",
		slotName = "fishing rod",
		tier = 2,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28971,
				amount = 2,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				clientId = 28896,
				amount = 1,
				itemId = 32328,
				name = "fishing stick"
			}
		}
	},
	{
		amount = 1,
		experience = 6240,
		category = "fishing",
		clientId = 28895,
		index = 18,
		durability = 6,
		name = "craftman's fishing rod",
		profession = 4,
		progress = 250,
		quality = 0,
		itemId = 32327,
		description = "",
		slotName = "fishing rod",
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				clientId = 28743,
				amount = 3,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28972,
				amount = 3,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				clientId = 28898,
				amount = 1,
				itemId = 32330,
				name = "fishing rod"
			}
		}
	},
	{
		amount = 1,
		experience = 13600,
		category = "fishing",
		clientId = 28899,
		index = 19,
		durability = 7,
		name = "sailor's fishing rod",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 32331,
		description = "",
		slotName = "fishing rod",
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				clientId = 28745,
				amount = 3,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28973,
				amount = 5,
				itemId = 32405,
				name = "fine thread"
			},
			{
				clientId = 28895,
				amount = 1,
				itemId = 32327,
				name = "craftman's fishing rod"
			}
		}
	},
	{
		amount = 1,
		experience = 44800,
		category = "fishing",
		clientId = 28900,
		index = 20,
		durability = 9,
		name = "artisan fishing rod",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 32332,
		description = "",
		slotName = "fishing rod",
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				clientId = 45506,
				amount = 10,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				amount = 12,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				clientId = 28899,
				amount = 1,
				itemId = 32331,
				name = "sailor's fishing rod"
			}
		}
	},
	{
		amount = 1,
		slotName = "fishing rod",
		quality = 0,
		progress = 600,
		experience = 70400,
		specialization = "Angler Carpenter",
		durability = 12,
		profession = 4,
		itemId = 32329,
		description = "",
		tier = 6,
		category = "fishing",
		clientId = 28897,
		index = 21,
		name = "lightwood angler",
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 45503,
				amount = 10,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 28970,
				amount = 16,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				clientId = 28900,
				amount = 1,
				itemId = 32332,
				name = "artisan fishing rod"
			}
		}
	},
	{
		amount = 1,
		slotName = "bow",
		quality = 100,
		progress = 700,
		experience = 115200,
		specialization = "Fletcher",
		durability = 12,
		profession = 4,
		itemId = 40607,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37155,
		index = 22,
		name = "Marksman Bow",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				amount = 36,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 28970,
				amount = 12,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				clientId = 29002,
				amount = 1,
				itemId = 32434,
				name = "Predator Bow"
			},
			{
				clientId = 40279,
				amount = 32,
				itemId = 43731,
				name = "Supernatural Thread"
			}
		}
	},
	{
		amount = 1,
		slotName = "staff",
		quality = 100,
		progress = 700,
		experience = 115200,
		specialization = "Fletcher",
		durability = 12,
		profession = 4,
		itemId = 40602,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37150,
		index = 23,
		name = "Necromancer's Staff",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				amount = 52,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 29054,
				amount = 1,
				itemId = 32486,
				name = "Lightshard Staff"
			},
			{
				clientId = 40273,
				amount = 32,
				itemId = 43725,
				name = "Mystical Crystal"
			}
		}
	},
	{
		amount = 1,
		slotName = "sceptre",
		quality = 100,
		progress = 700,
		experience = 57600,
		specialization = "Fletcher",
		durability = 12,
		profession = 4,
		itemId = 40609,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37157,
		index = 24,
		name = "Crowbone Sceptre",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				amount = 26,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 33994,
				amount = 1,
				itemId = 37426,
				name = "Celestial Sceptre"
			},
			{
				clientId = 40273,
				amount = 16,
				itemId = 43725,
				name = "Mystical Crystal"
			}
		}
	},
	{
		amount = 1,
		experience = 15400,
		category = "Housing Craft",
		clientId = 37219,
		index = 25,
		durability = 12,
		name = "Armoires",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40671,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				amount = 10,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 5,
				itemId = 43734,
				name = "Bolt"
			}
		}
	},
	{
		amount = 1,
		experience = 27500,
		category = "Housing Craft",
		clientId = 37279,
		index = 26,
		durability = 7,
		name = "Square Table",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40731,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 60
		},
		materials = {
			{
				clientId = 28745,
				amount = 20,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 4,
				itemId = 43734,
				name = "Bolt"
			}
		}
	},
	{
		amount = 1,
		experience = 38000,
		category = "Housing Craft",
		clientId = 37283,
		index = 27,
		durability = 12,
		name = "Sturdy Square Table",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40735,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				amount = 25,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 5,
				itemId = 43734,
				name = "Bolt"
			}
		}
	},
	{
		amount = 1,
		experience = 3600,
		category = "Housing Craft",
		clientId = 37224,
		index = 28,
		durability = 7,
		name = "Cabinet",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40676,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 60
		},
		materials = {
			{
				clientId = 28745,
				amount = 3,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28734,
				amount = 1,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "Housing Craft",
		clientId = 37244,
		index = 29,
		durability = 12,
		name = "Loom",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40696,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				amount = 8,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				amount = 5,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		amount = 1,
		experience = 7200,
		category = "Housing Craft",
		clientId = 37227,
		index = 30,
		durability = 5,
		name = "Chair",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40679,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 35
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 2,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 24000,
		category = "Housing Craft",
		clientId = 37267,
		index = 31,
		durability = 5,
		name = "Simple Bed",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40719,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 35
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28966,
				amount = 15,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				clientId = 28971,
				amount = 10,
				itemId = 32403,
				name = "coarse thread"
			}
		}
	},
	{
		amount = 1,
		experience = 64500,
		category = "Housing Craft",
		clientId = 37228,
		index = 32,
		durability = 7,
		name = "Comfortable Bed",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40680,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 4,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28964,
				amount = 10,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				clientId = 28969,
				amount = 10,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		amount = 1,
		experience = 7360,
		category = "Housing Craft",
		clientId = 37280,
		index = 33,
		durability = 5,
		name = "Storage Container",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40732,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 1,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 1,
				itemId = 32169,
				name = "iron bar"
			}
		}
	},
	{
		amount = 1,
		experience = 26000,
		category = "Housing Craft",
		clientId = 37290,
		index = 34,
		durability = 5,
		name = "Work Bench",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40742,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 20,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28723,
				amount = 20,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28734,
				amount = 5,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 50500,
		category = "Housing Craft",
		clientId = 37287,
		index = 35,
		durability = 7,
		name = "Superior Work Bench",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40739,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				amount = 30,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28724,
				amount = 15,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 28725,
				amount = 10,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28734,
				amount = 5,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 140000,
		category = "Housing Craft",
		clientId = 37222,
		index = 36,
		durability = 12,
		name = "Artisan Work Bench",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40674,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45506,
				amount = 65,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28725,
				amount = 50,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 28727,
				amount = 30,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 28734,
				amount = 5,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 27600,
		category = "Housing Craft",
		clientId = 37231,
		index = 37,
		durability = 12,
		name = "Fireplace",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40683,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 85
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28946,
				amount = 10,
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
		experience = 130000,
		category = "Housing Craft",
		clientId = 37245,
		index = 38,
		durability = 12,
		name = "Luxury Bed",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 40697,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45506,
				amount = 25,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28962,
				amount = 20,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				clientId = 28970,
				amount = 10,
				itemId = 32402,
				name = "artisan thread"
			}
		}
	},
	{
		amount = 1,
		experience = 48800,
		category = "Ship Craft",
		clientId = 37275,
		index = 39,
		durability = 4,
		name = "Small Hull Frame",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40727,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				amount = 50,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 40,
				itemId = 32166,
				name = "nail"
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
		experience = 29600,
		category = "Ship Craft",
		clientId = 37270,
		index = 40,
		durability = 4,
		name = "Small Cargo Hold",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40722,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 20,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28723,
				amount = 8,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 29600,
		category = "Ship Craft",
		clientId = 37274,
		index = 41,
		durability = 4,
		name = "Small Gun Deck",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40726,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 20,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28723,
				amount = 8,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 29600,
		category = "Ship Craft",
		clientId = 37273,
		index = 42,
		durability = 4,
		name = "Small Fishing Storage",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40725,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				amount = 30,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 20,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28723,
				amount = 8,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 82000,
		category = "Ship Module",
		clientId = 37277,
		index = 43,
		durability = 6,
		name = "Small Tradepack Container Kit",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 40729,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				amount = 2,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 82000,
		category = "Ship Module",
		clientId = 37269,
		index = 44,
		durability = 6,
		name = "Small Ammunition Cabin Kit",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 40721,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				amount = 2,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 82000,
		category = "Ship Module",
		clientId = 37271,
		index = 45,
		durability = 6,
		name = "Small Fishing Crane Kit",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 40723,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				amount = 2,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 212000,
		category = "Ship Craft",
		clientId = 37256,
		index = 46,
		durability = 6,
		name = "Medium Hull Frame",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40708,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 120,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28734,
				amount = 80,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 25,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 40286,
				amount = 8,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 88000,
		category = "Ship Craft",
		clientId = 37251,
		index = 47,
		durability = 6,
		name = "Medium Cargo Hold",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40703,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28734,
				amount = 40,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 10,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 40286,
				amount = 3,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 88000,
		category = "Ship Craft",
		clientId = 37254,
		index = 48,
		durability = 6,
		name = "Medium Fishing Storage",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40706,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28734,
				amount = 40,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 10,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 40286,
				amount = 3,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 88000,
		category = "Ship Craft",
		clientId = 37255,
		index = 49,
		durability = 6,
		name = "Medium Gun Deck",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 40707,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28734,
				amount = 40,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 10,
				itemId = 32169,
				name = "iron bar"
			},
			{
				clientId = 40286,
				amount = 3,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 245000,
		category = "Ship Module",
		clientId = 37258,
		index = 50,
		durability = 9,
		name = "Medium Tradepack Container Kit",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40710,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 30,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				amount = 4,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 245000,
		category = "Ship Module",
		clientId = 37250,
		index = 51,
		durability = 9,
		name = "Medium Ammunition Cabin Kit",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40702,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 30,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				amount = 4,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 245000,
		category = "Ship Module",
		clientId = 37252,
		index = 52,
		durability = 9,
		name = "Medium Fishing Crane Kit",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40704,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 30,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				amount = 4,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 625000,
		category = "Ship Craft",
		clientId = 37241,
		index = 53,
		durability = 8,
		name = "Large Hull Frame",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40693,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 300,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 150,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40284,
				amount = 50,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				amount = 20,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 312000,
		category = "Ship Craft",
		clientId = 37237,
		index = 54,
		durability = 8,
		name = "Large Cargo Hold",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40689,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 80,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40284,
				amount = 20,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				amount = 8,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 312000,
		category = "Ship Craft",
		clientId = 37240,
		index = 55,
		durability = 8,
		name = "Large Gun Deck",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40692,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 80,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40284,
				amount = 20,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				amount = 8,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 312000,
		category = "Ship Craft",
		clientId = 37239,
		index = 56,
		durability = 8,
		name = "Large Fishing Storage",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40691,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 160,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 80,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40284,
				amount = 20,
				itemId = 43736,
				name = "Steel Bar"
			},
			{
				clientId = 40285,
				amount = 8,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 20000,
		category = "Ship Craft",
		clientId = 37249,
		index = 57,
		durability = 4,
		name = "Mast",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40701,
		description = "Used for crafting Ships at the Ship Builder",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28743,
				amount = 20,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 20,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28723,
				amount = 5,
				itemId = 32155,
				name = "iron ingot"
			}
		}
	},
	{
		amount = 1,
		experience = 1600,
		category = "Wagon Craft",
		clientId = 37229,
		index = 58,
		durability = 4,
		name = "Common Wheel",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40681,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28734,
				amount = 5,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 8800,
		category = "Wagon Craft",
		clientId = 37284,
		index = 59,
		durability = 7,
		name = "Sturdy Wheel",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40736,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 41,
			mass = 46
		},
		materials = {
			{
				clientId = 28745,
				amount = 16,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 5,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40286,
				amount = 1,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 28000,
		category = "Wagon Craft",
		clientId = 37264,
		index = 60,
		durability = 9,
		name = "Reinforced Wheel",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40716,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				clientId = 45506,
				amount = 50,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 40285,
				amount = 1,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 11200,
		category = "Wagon Craft",
		clientId = 37278,
		index = 61,
		durability = 4,
		name = "Small Wagon Container",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 40730,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 20,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 40283,
				amount = 1,
				itemId = 43735,
				name = "Common Plate"
			}
		}
	},
	{
		amount = 1,
		experience = 57600,
		category = "Wagon Craft",
		clientId = 37259,
		index = 62,
		durability = 7,
		name = "Medium Wagon Container",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 40711,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				clientId = 28745,
				amount = 20,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28740,
				amount = 5,
				itemId = 32172,
				name = "reinforced plate"
			},
			{
				clientId = 28737,
				amount = 5,
				itemId = 32169,
				name = "iron bar"
			}
		}
	},
	{
		amount = 1,
		experience = 146400,
		category = "Wagon Craft",
		clientId = 37243,
		index = 63,
		durability = 7,
		name = "Large Wagon Container",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 40695,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 35,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28740,
				amount = 15,
				itemId = 32172,
				name = "reinforced plate"
			},
			{
				clientId = 40284,
				amount = 10,
				itemId = 43736,
				name = "Steel Bar"
			}
		}
	},
	{
		amount = 1,
		experience = 1760,
		category = "weapons",
		clientId = 28998,
		index = 64,
		durability = 3,
		name = "Oakwood Bow",
		profession = 4,
		progress = 50,
		quality = 100,
		itemId = 32430,
		description = "",
		slotName = "bow",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28971,
				amount = 1,
				itemId = 32403,
				name = "coarse thread"
			}
		}
	},
	{
		amount = 1,
		experience = 1760,
		category = "weapons",
		clientId = 29050,
		index = 65,
		durability = 3,
		name = "Mystic Staff",
		profession = 4,
		progress = 50,
		quality = 100,
		itemId = 32482,
		description = "",
		slotName = "staff",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				amount = 4,
				itemId = 32176,
				name = "rough plank"
			}
		}
	},
	{
		amount = 1,
		experience = 880,
		category = "weapons",
		clientId = 33990,
		index = 66,
		durability = 3,
		name = "Knotted Sceptre",
		profession = 4,
		progress = 50,
		quality = 100,
		itemId = 37422,
		description = "",
		slotName = "sceptre",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				itemId = 32176,
				name = "rough plank"
			}
		}
	},
	{
		amount = 1,
		experience = 4800,
		category = "Wagon Craft",
		clientId = 40286,
		index = 67,
		durability = 5,
		name = "Wooden Arch",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 43738,
		description = "Used in various recipes. A basic but sturdy wooden arch.",
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28743,
				amount = 15,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 34899,
				amount = 10,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 7600,
		category = "Wagon Craft",
		clientId = 40285,
		index = 68,
		durability = 7,
		name = "Supple Wooden Arch",
		profession = 4,
		progress = 350,
		quality = 0,
		itemId = 43737,
		description = "Used in various recipes. Crafted with precision, this arch combines flexibility with strength.",
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28745,
				amount = 15,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 34899,
				amount = 20,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 3040,
		category = "Wagon Craft",
		clientId = 40492,
		index = 69,
		durability = 6,
		name = "Swift Wheel",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 43944,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 26,
			mass = 31
		},
		materials = {
			{
				clientId = 28743,
				amount = 10,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 5,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 29200,
		category = "Wagon Craft",
		clientId = 40491,
		index = 70,
		durability = 6,
		name = "Common Wagon Container",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 43943,
		description = "Used for crafting Wagons at the Wagon Crafter.",
		slotName = "",
		tier = -1,
		level = {
			single = 27,
			mass = 32
		},
		materials = {
			{
				clientId = 28743,
				amount = 25,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 40283,
				amount = 3,
				itemId = 43735,
				name = "Common Plate"
			}
		}
	},
	{
		amount = 1,
		experience = 2000,
		category = "planks",
		clientId = 41847,
		index = 74,
		durability = 4,
		name = "Dense Plank",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 45299,
		description = "Used in various recipes. Sturdy crafting material crafted from dense logs.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 34371,
				amount = 4,
				itemId = 37803,
				name = "Dense Log"
			}
		}
	},
	{
		amount = 1,
		experience = 4400,
		category = "planks",
		clientId = 41848,
		index = 75,
		durability = 6,
		name = "Heavy Plank",
		profession = 4,
		progress = 250,
		quality = 250,
		itemId = 45300,
		description = "Used in various recipes. Exceptionally robust crafting material forged from dense logs.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 34371,
				amount = 8,
				itemId = 37803,
				name = "Dense Log"
			},
			{
				clientId = 34899,
				amount = 2,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 3600,
		category = "Housing Craft",
		clientId = 42777,
		index = 76,
		durability = 4,
		name = "Weak Table",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 46229,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 8,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28734,
				amount = 2,
				itemId = 32166,
				name = "nail"
			}
		}
	},
	{
		amount = 1,
		experience = 41600,
		category = "Housing Craft",
		clientId = 42782,
		index = 77,
		durability = 8,
		name = "Sturdy Container",
		profession = 4,
		progress = 500,
		quality = 0,
		itemId = 46234,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40283,
				amount = 6,
				itemId = 43735,
				name = "Common Plate"
			}
		}
	},
	{
		amount = 1,
		experience = 8000,
		category = "Housing Craft",
		clientId = 42781,
		index = 78,
		durability = 4,
		name = "Frail Loom",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 46233,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28966,
				amount = 6,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		amount = 1,
		experience = 23000,
		category = "Housing Craft",
		clientId = 42783,
		index = 79,
		durability = 6,
		name = "Simple Loom",
		profession = 4,
		progress = 250,
		quality = 0,
		itemId = 46235,
		description = "Used in housing upgrades.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28973,
				amount = 5,
				itemId = 32405,
				name = "fine thread"
			}
		}
	},
	{
		amount = 1,
		experience = 82000,
		category = "Ship Module",
		clientId = 43638,
		index = 80,
		durability = 6,
		name = "Small Maintenance Unit Kit",
		profession = 4,
		progress = 225,
		quality = 0,
		itemId = 47090,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28745,
				amount = 50,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 40282,
				amount = 10,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 40286,
				amount = 2,
				itemId = 43738,
				name = "Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 245000,
		category = "Ship Module",
		clientId = 43635,
		index = 81,
		durability = 9,
		name = "Medium Maintenance Unit Kit",
		profession = 4,
		progress = 525,
		quality = 0,
		itemId = 47087,
		description = "Used for crafting ship cabins for your ship at the Ship Builder.",
		slotName = "",
		tier = -1,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 45506,
				amount = 135,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40282,
				amount = 30,
				itemId = 43734,
				name = "Bolt"
			},
			{
				clientId = 28725,
				amount = 20,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 40285,
				amount = 4,
				itemId = 43737,
				name = "Supple Wooden Arch"
			}
		}
	},
	{
		amount = 1,
		experience = 1500,
		category = "planks",
		clientId = 45506,
		index = 82,
		durability = 8,
		name = "Sturdy Plank",
		profession = 4,
		progress = 450,
		quality = 450,
		itemId = 48958,
		description = "Used in various recipes. A solid and dependable wooden plank.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 45505,
				amount = 10,
				itemId = 48957,
				name = "Sturdy Log"
			},
			{
				clientId = 34899,
				amount = 4,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 2200,
		category = "planks",
		clientId = 45503,
		index = 83,
		durability = 9,
		name = "Fine Plank",
		profession = 4,
		progress = 550,
		quality = 550,
		itemId = 48955,
		description = "Used in various recipes. A meticulously crafted wooden plank.",
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 45502,
				amount = 10,
				itemId = 48954,
				name = "Fine Log"
			},
			{
				clientId = 34899,
				amount = 6,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 1,
		experience = 880,
		category = "weapons",
		clientId = 29028,
		index = 84,
		durability = 3,
		name = "Wooden Buckler",
		profession = 4,
		progress = 50,
		quality = 100,
		itemId = 32460,
		description = "",
		slotName = "buckler shield",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				itemId = 32176,
				name = "rough plank"
			}
		}
	},
	{
		amount = 1,
		experience = 1840,
		category = "weapons",
		clientId = 29029,
		index = 85,
		durability = 4,
		name = "Sturdy Buckler",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 32461,
		description = "",
		slotName = "buckler shield",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 35432,
				amount = 1,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				clientId = 29028,
				amount = 1,
				itemId = 32460,
				name = "Wooden Buckler"
			}
		}
	},
	{
		amount = 1,
		experience = 7000,
		category = "weapons",
		clientId = 29030,
		index = 86,
		durability = 6,
		name = "Marauder's Shield",
		profession = 4,
		progress = 200,
		quality = 100,
		itemId = 32462,
		description = "",
		slotName = "buckler shield",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 5,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 35433,
				amount = 2,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				clientId = 29029,
				amount = 1,
				itemId = 32461,
				name = "Sturdy Buckler"
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
		experience = 19000,
		category = "weapons",
		clientId = 29031,
		index = 87,
		durability = 7,
		name = "Rune Shield",
		profession = 4,
		progress = 350,
		quality = 100,
		itemId = 32463,
		description = "",
		slotName = "buckler shield",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 35434,
				amount = 3,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				clientId = 29030,
				amount = 1,
				itemId = 32462,
				name = "Marauder's Shield"
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
		experience = 39500,
		category = "weapons",
		clientId = 29032,
		index = 88,
		durability = 8,
		name = "Ravenguard's Shield",
		profession = 4,
		progress = 525,
		quality = 100,
		itemId = 32464,
		description = "",
		slotName = "buckler shield",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 20,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 35435,
				amount = 4,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				clientId = 29031,
				amount = 1,
				itemId = 32463,
				name = "Rune Shield"
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
		slotName = "buckler shield",
		quality = 100,
		progress = 700,
		experience = 57600,
		specialization = "Fletcher",
		durability = 12,
		profession = 4,
		itemId = 40601,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 37149,
		index = 89,
		name = "Nocturnal Shield",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				amount = 22,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 35436,
				amount = 4,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				clientId = 29032,
				amount = 1,
				itemId = 32464,
				name = "Ravenguard's Shield"
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
		experience = 880,
		category = "weapons",
		clientId = 46241,
		index = 90,
		durability = 3,
		name = "Wooden Bulwark",
		profession = 4,
		progress = 50,
		quality = 100,
		itemId = 49694,
		description = "",
		slotName = "tower shield",
		tier = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28744,
				amount = 2,
				itemId = 32176,
				name = "rough plank"
			}
		}
	},
	{
		amount = 1,
		experience = 1840,
		category = "weapons",
		clientId = 46242,
		index = 91,
		durability = 4,
		name = "Sentinel Shield",
		profession = 4,
		progress = 100,
		quality = 100,
		itemId = 49695,
		description = "",
		slotName = "tower shield",
		tier = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 3,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28726,
				amount = 3,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				clientId = 46241,
				amount = 1,
				itemId = 49694,
				name = "Wooden Bulwark"
			}
		}
	},
	{
		amount = 1,
		experience = 7000,
		category = "weapons",
		clientId = 46243,
		index = 92,
		durability = 6,
		name = "Defender's Bulwark",
		profession = 4,
		progress = 200,
		quality = 100,
		itemId = 49696,
		description = "",
		slotName = "tower shield",
		tier = 3,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 6,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28723,
				amount = 8,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				clientId = 46242,
				amount = 1,
				itemId = 49695,
				name = "Sentinel Shield"
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
		experience = 19000,
		category = "weapons",
		clientId = 46244,
		index = 93,
		durability = 7,
		name = "Steelclad Bulwark",
		profession = 4,
		progress = 350,
		quality = 100,
		itemId = 49697,
		description = "",
		slotName = "tower shield",
		tier = 4,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28745,
				amount = 12,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28724,
				amount = 10,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				clientId = 46243,
				amount = 1,
				itemId = 49696,
				name = "Defender's Bulwark"
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
		experience = 39500,
		category = "weapons",
		clientId = 46245,
		index = 94,
		durability = 8,
		name = "King's Defender",
		profession = 4,
		progress = 525,
		quality = 100,
		itemId = 49698,
		description = "",
		slotName = "tower shield",
		tier = 5,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 45506,
				amount = 20,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28725,
				amount = 18,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				clientId = 46244,
				amount = 1,
				itemId = 49697,
				name = "Steelclad Bulwark"
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
		slotName = "tower shield",
		quality = 100,
		progress = 700,
		experience = 57600,
		specialization = "Fletcher",
		durability = 12,
		profession = 4,
		itemId = 49699,
		description = "",
		tier = 6,
		category = "weapons",
		clientId = 46246,
		index = 95,
		name = "Protector's Tower Shield",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 45503,
				amount = 22,
				itemId = 48955,
				name = "Fine Plank"
			},
			{
				clientId = 28727,
				amount = 14,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				clientId = 46245,
				amount = 1,
				itemId = 49698,
				name = "King's Defender"
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
		experience = 8000,
		category = "Housing Craft",
		clientId = 47280,
		index = 96,
		durability = 4,
		name = "Protective Charm",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 50733,
		description = "",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28966,
				amount = 6,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		amount = 1,
		experience = 23000,
		category = "Housing Craft",
		clientId = 47286,
		index = 97,
		durability = 6,
		name = "Warding Charm",
		profession = 4,
		progress = 250,
		quality = 0,
		itemId = 50739,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28973,
				amount = 5,
				itemId = 32405,
				name = "fine thread"
			}
		}
	},
	{
		amount = 1,
		experience = 35000,
		category = "Housing Craft",
		clientId = 47282,
		index = 98,
		durability = 12,
		name = "Spellbound Charm",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 50735,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 15,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				amount = 5,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		amount = 1,
		experience = 8000,
		category = "Housing Craft",
		clientId = 47277,
		index = 99,
		durability = 4,
		name = "Basic Stabilizer",
		profession = 4,
		progress = 100,
		quality = 0,
		itemId = 50730,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28744,
				amount = 10,
				itemId = 32176,
				name = "rough plank"
			},
			{
				clientId = 28966,
				amount = 6,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		amount = 1,
		experience = 23000,
		category = "Housing Craft",
		clientId = 47278,
		index = 100,
		durability = 6,
		name = "Energy Stabilizer",
		profession = 4,
		progress = 250,
		quality = 0,
		itemId = 50731,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28745,
				amount = 10,
				itemId = 32177,
				name = "treated plank"
			},
			{
				clientId = 28973,
				amount = 5,
				itemId = 32405,
				name = "fine thread"
			}
		}
	},
	{
		amount = 1,
		experience = 35000,
		category = "Housing Craft",
		clientId = 47275,
		index = 101,
		durability = 12,
		name = "Arcane Stabilizer",
		profession = 4,
		progress = 600,
		quality = 0,
		itemId = 50728,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 15,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 28969,
				amount = 5,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		amount = 1,
		experience = 7360,
		category = "Housing Craft",
		clientId = 47285,
		index = 102,
		durability = 5,
		name = "Wall Reinforcement",
		profession = 4,
		progress = 200,
		quality = 0,
		itemId = 50738,
		description = "Used for housing craft.",
		slotName = "",
		tier = -1,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 28743,
				amount = 8,
				itemId = 32175,
				name = "refined plank"
			},
			{
				clientId = 28734,
				amount = 1,
				itemId = 32166,
				name = "nail"
			},
			{
				clientId = 28737,
				amount = 1,
				itemId = 32169,
				name = "iron bar"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 0,
		progress = 500,
		experience = 41500,
		specialization = "Joiner",
		durability = 8,
		profession = 4,
		itemId = 50737,
		description = "Used for housing craft.",
		tier = -1,
		category = "Housing Craft",
		clientId = 47284,
		index = 103,
		name = "Wall Fortification",
		level = {
			single = 50,
			mass = 65
		},
		materials = {
			{
				clientId = 45506,
				amount = 18,
				itemId = 48958,
				name = "Sturdy Plank"
			},
			{
				clientId = 40283,
				amount = 6,
				itemId = 43735,
				name = "Common Plate"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCarpentry] = {
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 28998,
		index = 1,
		durability = 3,
		name = "Oakwood Bow",
		profession = 4,
		progress = 50,
		quality = 50,
		itemId = 32430,
		description = "",
		slotName = "bow",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 5,
				itemId = 38876,
				name = "Rough Plank"
			},
			{
				clientId = 28971,
				amount = 3,
				itemId = 38877,
				name = "Coarse Thread"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29050,
		index = 2,
		durability = 3,
		name = "Mystic Staff",
		profession = 4,
		progress = 50,
		quality = 50,
		itemId = 32482,
		description = "",
		slotName = "staff",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 9,
				itemId = 38876,
				name = "Rough Plank"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 33990,
		index = 3,
		durability = 3,
		name = "Knotted Sceptre",
		profession = 4,
		progress = 50,
		quality = 50,
		itemId = 37422,
		description = "",
		slotName = "sceptre",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				clientId = 28744,
				amount = 5,
				itemId = 38876,
				name = "Rough Plank"
			}
		}
	},
	{
		amount = 1,
		experience = 0,
		category = "quest",
		clientId = 29028,
		index = 4,
		durability = 3,
		name = "Wooden Buckler",
		profession = 4,
		progress = 50,
		quality = 50,
		itemId = 32460,
		description = "",
		slotName = "buckler shield",
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
	}
}

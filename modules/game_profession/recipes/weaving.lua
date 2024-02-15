-- chunkname: @/modules/game_profession/recipes/weaving.lua

recipes = recipes or {}
recipes[ProfessionWeaving] = {
	{
		tier = -1,
		name = "Coarse Leather",
		profession = 7,
		itemId = 38864,
		index = 1,
		experience = 610,
		durability = 4,
		slotName = "",
		clientId = 35432,
		amount = 1,
		category = "leather",
		description = "Used in various recipes. Its rough texture provides a sense of rugged resilience.",
		quality = 75,
		progress = 25,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "Hide",
				amount = 2,
				clientId = 35353,
				itemId = 38785
			}
		}
	},
	{
		tier = -1,
		name = "Craftman's Leather",
		profession = 7,
		itemId = 38865,
		index = 2,
		experience = 1200,
		durability = 6,
		slotName = "",
		clientId = 35433,
		amount = 1,
		category = "leather",
		description = "Used in various recipes. Skillfully treated and refined leather.",
		quality = 150,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "Hide",
				amount = 4,
				clientId = 35353,
				itemId = 38785
			}
		}
	},
	{
		tier = -1,
		name = "Tanned Leather",
		profession = 7,
		itemId = 38866,
		index = 3,
		experience = 1850,
		durability = 7,
		slotName = "",
		clientId = 35434,
		amount = 1,
		category = "leather",
		description = "Used in various recipes. Smooth and flexible, it's a display of a meticulous tanning process.",
		quality = 200,
		progress = 225,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "Hide",
				amount = 6,
				clientId = 35353,
				itemId = 38785
			}
		}
	},
	{
		tier = -1,
		name = "Merchant's Leather",
		profession = 7,
		itemId = 38867,
		index = 4,
		experience = 2400,
		durability = 8,
		slotName = "",
		clientId = 35435,
		amount = 1,
		category = "leather",
		description = "Used in various recipes. Its polished appearance signifies quality and sophistication.",
		quality = 425,
		progress = 450,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Hide",
				amount = 8,
				clientId = 35353,
				itemId = 38785
			}
		}
	},
	{
		tier = -1,
		name = "Artisan Leather",
		profession = 7,
		itemId = 38868,
		index = 5,
		experience = 3050,
		durability = 9,
		slotName = "",
		clientId = 35436,
		amount = 1,
		category = "leather",
		description = "Used in various recipes. Masterfully crafted, it's reserved only for the finest creations.",
		quality = 525,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "Hide",
				amount = 10,
				clientId = 35353,
				itemId = 38785
			}
		}
	},
	{
		tier = -1,
		name = "coarse thread",
		profession = 7,
		itemId = 32403,
		index = 6,
		experience = 610,
		durability = 4,
		slotName = "",
		clientId = 28971,
		amount = 1,
		category = "threads",
		description = "Used in various recipes. Despite its unrefined appearance, it's suitable for crafting durable items.",
		quality = 75,
		progress = 25,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "cotton",
				amount = 3,
				clientId = 28879,
				itemId = 32311
			}
		}
	},
	{
		tier = -1,
		name = "craftman's thread",
		profession = 7,
		itemId = 32404,
		index = 7,
		experience = 1200,
		durability = 6,
		slotName = "",
		clientId = 28972,
		amount = 1,
		category = "threads",
		description = "Used in various recipes. Stitching together sturdy creations, it stands up to the rigors of daily use.",
		quality = 150,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "cotton",
				amount = 6,
				clientId = 28879,
				itemId = 32311
			}
		}
	},
	{
		tier = -1,
		name = "fine thread",
		profession = 7,
		itemId = 32405,
		index = 8,
		experience = 1850,
		durability = 7,
		slotName = "",
		clientId = 28973,
		amount = 1,
		category = "threads",
		description = "Used in various recipes. Delicate and refined, its slender fibers allow for intricate stitching.",
		quality = 200,
		progress = 225,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "cotton",
				amount = 9,
				clientId = 28879,
				itemId = 32311
			}
		}
	},
	{
		tier = -1,
		name = "merchant's thread",
		profession = 7,
		itemId = 32401,
		index = 9,
		experience = 2400,
		durability = 8,
		slotName = "",
		clientId = 28969,
		amount = 1,
		category = "threads",
		description = "Used in various recipes. The lifeline of intricate textiles.",
		quality = 425,
		progress = 450,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "cotton",
				amount = 12,
				clientId = 28879,
				itemId = 32311
			}
		}
	},
	{
		tier = -1,
		name = "artisan thread",
		profession = 7,
		itemId = 32402,
		index = 10,
		experience = 3050,
		durability = 9,
		slotName = "",
		clientId = 28970,
		amount = 1,
		category = "threads",
		description = "Used in various recipes. The foundation for textiles that transcend to become works of art.",
		quality = 525,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cotton",
				amount = 15,
				clientId = 28879,
				itemId = 32311
			}
		}
	},
	{
		tier = -1,
		name = "simple cloth",
		profession = 7,
		itemId = 32398,
		index = 11,
		experience = 610,
		durability = 4,
		slotName = "",
		clientId = 28966,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		quality = 75,
		progress = 25,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "wool",
				amount = 2,
				clientId = 28425,
				itemId = 31857
			}
		}
	},
	{
		tier = -1,
		name = "craftman's cloth",
		profession = 7,
		itemId = 32395,
		index = 12,
		experience = 1200,
		durability = 6,
		slotName = "",
		clientId = 28963,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		quality = 150,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "wool",
				amount = 4,
				clientId = 28425,
				itemId = 31857
			}
		}
	},
	{
		tier = -1,
		name = "silk",
		profession = 7,
		itemId = 32397,
		index = 13,
		experience = 1850,
		durability = 7,
		slotName = "",
		clientId = 28965,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		quality = 175,
		progress = 225,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "wool",
				amount = 6,
				clientId = 28425,
				itemId = 31857
			}
		}
	},
	{
		tier = -1,
		name = "merchant's cloth",
		profession = 7,
		itemId = 32396,
		index = 14,
		experience = 2400,
		durability = 8,
		slotName = "",
		clientId = 28964,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		quality = 425,
		progress = 450,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "wool",
				amount = 8,
				clientId = 28425,
				itemId = 31857
			}
		}
	},
	{
		tier = -1,
		name = "artisan cloth",
		profession = 7,
		itemId = 32394,
		index = 15,
		experience = 3050,
		durability = 9,
		slotName = "",
		clientId = 28962,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		quality = 525,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "wool",
				amount = 10,
				clientId = 28425,
				itemId = 31857
			}
		}
	},
	{
		tier = 2,
		name = "Viper's Armor",
		profession = 7,
		itemId = 32030,
		index = 16,
		experience = 1280,
		durability = 4,
		slotName = "cloth armor",
		clientId = 28598,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Shadecloth Armor",
				amount = 1,
				clientId = 28589,
				itemId = 32021
			}
		}
	},
	{
		tier = 2,
		name = "Viper's Helmet",
		profession = 7,
		itemId = 32036,
		index = 17,
		experience = 1280,
		durability = 4,
		slotName = "cloth helmet",
		clientId = 28604,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Shadecloth Helmet",
				amount = 1,
				clientId = 28595,
				itemId = 32027
			}
		}
	},
	{
		tier = 2,
		name = "Viper's Legs",
		profession = 7,
		itemId = 32037,
		index = 18,
		experience = 1280,
		durability = 4,
		slotName = "cloth legs",
		clientId = 28605,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Shadecloth Legs",
				amount = 1,
				clientId = 28596,
				itemId = 32028
			}
		}
	},
	{
		tier = 2,
		name = "Viper's Boots",
		profession = 7,
		itemId = 32033,
		index = 19,
		experience = 1280,
		durability = 4,
		slotName = "cloth boots",
		clientId = 28601,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Shadecloth Boots",
				amount = 1,
				clientId = 28592,
				itemId = 32024
			}
		}
	},
	{
		tier = 3,
		name = "Profane Armor",
		profession = 7,
		itemId = 32039,
		index = 20,
		experience = 6000,
		durability = 7,
		slotName = "cloth armor",
		clientId = 28607,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 2,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Viper's Armor",
				amount = 1,
				clientId = 28598,
				itemId = 32030
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Profane Helmet",
		profession = 7,
		itemId = 32045,
		index = 21,
		experience = 6000,
		durability = 7,
		slotName = "cloth helmet",
		clientId = 28613,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 36,
			single = 31
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 2,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Viper's Helmet",
				amount = 1,
				clientId = 28604,
				itemId = 32036
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Profane Legs",
		profession = 7,
		itemId = 32046,
		index = 22,
		experience = 6000,
		durability = 7,
		slotName = "cloth legs",
		clientId = 28614,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 39,
			single = 34
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 2,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Viper's Legs",
				amount = 1,
				clientId = 28605,
				itemId = 32037
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Profane Boots",
		profession = 7,
		itemId = 32042,
		index = 23,
		experience = 6000,
		durability = 7,
		slotName = "cloth boots",
		clientId = 28610,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 2,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Viper's Boots",
				amount = 1,
				clientId = 28601,
				itemId = 32033
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 4,
		name = "Celestial Armor",
		profession = 7,
		itemId = 32048,
		index = 24,
		experience = 11000,
		durability = 7,
		slotName = "cloth armor",
		clientId = 28616,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Profane Armor",
				amount = 1,
				clientId = 28607,
				itemId = 32039
			},
			{
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495,
				itemId = 40947
			}
		}
	},
	{
		tier = 4,
		name = "Celestial Helmet",
		profession = 7,
		itemId = 32054,
		index = 25,
		experience = 11000,
		durability = 7,
		slotName = "cloth helmet",
		clientId = 28622,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 51,
			single = 46
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Profane Helmet",
				amount = 1,
				clientId = 28613,
				itemId = 32045
			},
			{
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495,
				itemId = 40947
			}
		}
	},
	{
		tier = 4,
		name = "Celestial Legs",
		profession = 7,
		itemId = 32055,
		index = 26,
		experience = 11000,
		durability = 7,
		slotName = "cloth legs",
		clientId = 28623,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 54,
			single = 49
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Profane Legs",
				amount = 1,
				clientId = 28614,
				itemId = 32046
			},
			{
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495,
				itemId = 40947
			}
		}
	},
	{
		tier = 4,
		name = "Celestial Boots",
		profession = 7,
		itemId = 32051,
		index = 27,
		experience = 11000,
		durability = 7,
		slotName = "cloth boots",
		clientId = 28619,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Profane Boots",
				amount = 1,
				clientId = 28610,
				itemId = 32042
			},
			{
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495,
				itemId = 40947
			}
		}
	},
	{
		tier = 5,
		name = "Mystic Armor",
		profession = 7,
		itemId = 32064,
		index = 28,
		experience = 24000,
		durability = 9,
		slotName = "cloth armor",
		clientId = 28632,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 7,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 3,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Celestial Armor",
				amount = 1,
				clientId = 28616,
				itemId = 32048
			},
			{
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271,
				itemId = 43723
			}
		}
	},
	{
		tier = 5,
		name = "Mystic Helmet",
		profession = 7,
		itemId = 32065,
		index = 29,
		experience = 24000,
		durability = 9,
		slotName = "cloth helmet",
		clientId = 28633,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 66,
			single = 61
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 7,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 3,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Celestial Helmet",
				amount = 1,
				clientId = 28622,
				itemId = 32054
			},
			{
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271,
				itemId = 43723
			}
		}
	},
	{
		tier = 5,
		name = "Mystic Legs",
		profession = 7,
		itemId = 32063,
		index = 30,
		experience = 24000,
		durability = 9,
		slotName = "cloth legs",
		clientId = 28631,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 69,
			single = 64
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 3,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 7,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Celestial Legs",
				amount = 1,
				clientId = 28623,
				itemId = 32055
			},
			{
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271,
				itemId = 43723
			}
		}
	},
	{
		tier = 5,
		name = "Mystic Boots",
		profession = 7,
		itemId = 32057,
		index = 31,
		experience = 24000,
		durability = 9,
		slotName = "cloth boots",
		clientId = 28625,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 3,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 7,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Celestial Boots",
				amount = 1,
				clientId = 28619,
				itemId = 32051
			},
			{
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271,
				itemId = 43723
			}
		}
	},
	{
		tier = 2,
		name = "Nomad Armor",
		profession = 7,
		itemId = 32075,
		index = 32,
		experience = 1280,
		durability = 4,
		slotName = "leather armor",
		clientId = 28643,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Hide Armor",
				amount = 1,
				clientId = 28634,
				itemId = 32066
			}
		}
	},
	{
		tier = 2,
		name = "Nomad Helmet",
		profession = 7,
		itemId = 32081,
		index = 33,
		experience = 1280,
		durability = 4,
		slotName = "leather helmet",
		clientId = 28649,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Hide Helmet",
				amount = 1,
				clientId = 28640,
				itemId = 32072
			}
		}
	},
	{
		tier = 2,
		name = "Nomad Legs",
		profession = 7,
		itemId = 32082,
		index = 34,
		experience = 1280,
		durability = 4,
		slotName = "leather legs",
		clientId = 28650,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Hide Legs",
				amount = 1,
				clientId = 28641,
				itemId = 32073
			}
		}
	},
	{
		tier = 2,
		name = "Nomad Boots",
		profession = 7,
		itemId = 32078,
		index = 35,
		experience = 1280,
		durability = 4,
		slotName = "leather boots",
		clientId = 28646,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 100,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			},
			{
				name = "coarse thread",
				amount = 1,
				clientId = 28971,
				itemId = 32403
			},
			{
				name = "Hide Boots",
				amount = 1,
				clientId = 28637,
				itemId = 32069
			}
		}
	},
	{
		tier = 3,
		name = "Bruiser's Armor",
		profession = 7,
		itemId = 32084,
		index = 36,
		experience = 6000,
		durability = 7,
		slotName = "leather armor",
		clientId = 28652,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 33,
			single = 28
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 2,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Nomad Armor",
				amount = 1,
				clientId = 28643,
				itemId = 32075
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Bruiser's Helmet",
		profession = 7,
		itemId = 32090,
		index = 37,
		experience = 6000,
		durability = 7,
		slotName = "leather helmet",
		clientId = 28658,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 36,
			single = 31
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 2,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Nomad Helmet",
				amount = 1,
				clientId = 28649,
				itemId = 32081
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Bruiser's Legs",
		profession = 7,
		itemId = 32091,
		index = 38,
		experience = 6000,
		durability = 7,
		slotName = "leather legs",
		clientId = 28659,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 39,
			single = 34
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 2,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Nomad Legs",
				amount = 1,
				clientId = 28650,
				itemId = 32082
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 3,
		name = "Bruiser's Boots",
		profession = 7,
		itemId = 32087,
		index = 39,
		experience = 6000,
		durability = 7,
		slotName = "leather boots",
		clientId = 28655,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 225,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 2,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			},
			{
				name = "Nomad Boots",
				amount = 1,
				clientId = 28646,
				itemId = 32078
			},
			{
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479,
				itemId = 40931
			}
		}
	},
	{
		tier = 4,
		name = "Outlaw Armor",
		profession = 7,
		itemId = 32093,
		index = 40,
		experience = 11000,
		durability = 7,
		slotName = "leather armor",
		clientId = 28661,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 48,
			single = 43
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Bruiser's Armor",
				amount = 1,
				clientId = 28652,
				itemId = 32084
			},
			{
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624,
				itemId = 41076
			}
		}
	},
	{
		tier = 4,
		name = "Outlaw Helmet",
		profession = 7,
		itemId = 32099,
		index = 41,
		experience = 11000,
		durability = 7,
		slotName = "leather helmet",
		clientId = 28667,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 51,
			single = 46
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Bruiser's Helmet",
				amount = 1,
				clientId = 28658,
				itemId = 32090
			},
			{
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624,
				itemId = 41076
			}
		}
	},
	{
		tier = 4,
		name = "Outlaw Legs",
		profession = 7,
		itemId = 32100,
		index = 42,
		experience = 11000,
		durability = 7,
		slotName = "leather legs",
		clientId = 28668,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 54,
			single = 49
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Bruiser's Legs",
				amount = 1,
				clientId = 28659,
				itemId = 32091
			},
			{
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624,
				itemId = 41076
			}
		}
	},
	{
		tier = 4,
		name = "Outlaw Boots",
		profession = 7,
		itemId = 32096,
		index = 43,
		experience = 11000,
		durability = 7,
		slotName = "leather boots",
		clientId = 28664,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 350,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Bruiser's Boots",
				amount = 1,
				clientId = 28655,
				itemId = 32087
			},
			{
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624,
				itemId = 41076
			}
		}
	},
	{
		tier = 5,
		name = "Studded Armor",
		profession = 7,
		itemId = 32102,
		index = 44,
		experience = 24000,
		durability = 9,
		slotName = "leather armor",
		clientId = 28670,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 63,
			single = 58
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 7,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 3,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Outlaw Armor",
				amount = 1,
				clientId = 28661,
				itemId = 32093
			},
			{
				name = "Composite Leather",
				amount = 6,
				clientId = 40266,
				itemId = 43718
			}
		}
	},
	{
		tier = 5,
		name = "Studded Helmet",
		profession = 7,
		itemId = 32109,
		index = 45,
		experience = 24000,
		durability = 9,
		slotName = "leather helmet",
		clientId = 28677,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 66,
			single = 61
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 7,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 3,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Outlaw Helmet",
				amount = 1,
				clientId = 28667,
				itemId = 32099
			},
			{
				name = "Composite Leather",
				amount = 6,
				clientId = 40266,
				itemId = 43718
			}
		}
	},
	{
		tier = 5,
		name = "Studded Legs",
		profession = 7,
		itemId = 32107,
		index = 46,
		experience = 24000,
		durability = 9,
		slotName = "leather legs",
		clientId = 28675,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 69,
			single = 64
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 3,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 7,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Outlaw Legs",
				amount = 1,
				clientId = 28668,
				itemId = 32100
			},
			{
				name = "Composite Leather",
				amount = 6,
				clientId = 40266,
				itemId = 43718
			}
		}
	},
	{
		tier = 5,
		name = "Studded Boots",
		profession = 7,
		itemId = 32104,
		index = 47,
		experience = 24000,
		durability = 9,
		slotName = "leather boots",
		clientId = 28672,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 525,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 3,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 7,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Outlaw Boots",
				amount = 1,
				clientId = 28664,
				itemId = 32096
			},
			{
				name = "Composite Leather",
				amount = 6,
				clientId = 40266,
				itemId = 43718
			}
		}
	},
	{
		tier = 1,
		name = "Fry Cook Bracers",
		profession = 7,
		itemId = 38620,
		index = 48,
		experience = 19200,
		durability = 7,
		slotName = "crafting bracers",
		clientId = 35188,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 225,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 8,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 8,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Fry Cook Helmet",
		profession = 7,
		itemId = 38621,
		index = 49,
		experience = 9600,
		durability = 6,
		slotName = "crafting helmet",
		clientId = 35189,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Fry Cook Armor",
		profession = 7,
		itemId = 38618,
		index = 50,
		experience = 9600,
		durability = 6,
		slotName = "crafting armor",
		clientId = 35186,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Fry Cook Legs",
		profession = 7,
		itemId = 38622,
		index = 51,
		experience = 9600,
		durability = 6,
		slotName = "crafting legs",
		clientId = 35190,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Fry Cook Boots",
		profession = 7,
		itemId = 38619,
		index = 52,
		experience = 9600,
		durability = 6,
		slotName = "crafting boots",
		clientId = 35187,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 2,
		name = "Sous Chef Bracers",
		profession = 7,
		itemId = 38625,
		index = 53,
		experience = 38400,
		durability = 7,
		slotName = "crafting bracers",
		clientId = 35193,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "silk",
				amount = 12,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 9,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Fry Cook Bracers",
				amount = 1,
				clientId = 35188,
				itemId = 38620
			}
		}
	},
	{
		tier = 2,
		name = "Sous Chef Helmet",
		profession = 7,
		itemId = 38626,
		index = 54,
		experience = 19200,
		durability = 7,
		slotName = "crafting helmet",
		clientId = 35194,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				name = "silk",
				amount = 8,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Fry Cook Helmet",
				amount = 1,
				clientId = 35189,
				itemId = 38621
			}
		}
	},
	{
		tier = 2,
		name = "Sous Chef Armor",
		profession = 7,
		itemId = 38623,
		index = 55,
		experience = 19200,
		durability = 7,
		slotName = "crafting armor",
		clientId = 35191,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "silk",
				amount = 8,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Fry Cook Armor",
				amount = 1,
				clientId = 35186,
				itemId = 38618
			}
		}
	},
	{
		tier = 2,
		name = "Sous Chef Legs",
		profession = 7,
		itemId = 38627,
		index = 56,
		experience = 19200,
		durability = 7,
		slotName = "crafting legs",
		clientId = 35195,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Fry Cook Legs",
				amount = 1,
				clientId = 35190,
				itemId = 38622
			}
		}
	},
	{
		tier = 2,
		name = "Sous Chef Boots",
		profession = 7,
		itemId = 38624,
		index = 57,
		experience = 19200,
		durability = 7,
		slotName = "crafting boots",
		clientId = 35192,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Fry Cook Boots",
				amount = 1,
				clientId = 35187,
				itemId = 38619
			}
		}
	},
	{
		tier = 3,
		name = "Master of Cuisine Bracers",
		profession = 7,
		itemId = 38630,
		index = 58,
		experience = 76800,
		durability = 9,
		slotName = "crafting bracers",
		clientId = 35198,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 16,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 16,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Sous Chef Bracers",
				amount = 1,
				clientId = 35193,
				itemId = 38625
			}
		}
	},
	{
		tier = 3,
		name = "Master of Cuisine Helmet",
		profession = 7,
		itemId = 38631,
		index = 59,
		experience = 38400,
		durability = 9,
		slotName = "crafting helmet",
		clientId = 35199,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Sous Chef Helmet",
				amount = 1,
				clientId = 35194,
				itemId = 38626
			}
		}
	},
	{
		tier = 3,
		name = "Master of Cuisine Armor",
		profession = 7,
		itemId = 38628,
		index = 60,
		experience = 38400,
		durability = 9,
		slotName = "crafting armor",
		clientId = 35196,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 61,
			single = 56
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Sous Chef Armor",
				amount = 1,
				clientId = 35191,
				itemId = 38623
			}
		}
	},
	{
		tier = 3,
		name = "Master of Cuisine Legs",
		profession = 7,
		itemId = 38632,
		index = 61,
		experience = 38400,
		durability = 8,
		slotName = "crafting legs",
		clientId = 35200,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Sous Chef Legs",
				amount = 1,
				clientId = 35195,
				itemId = 38627
			}
		}
	},
	{
		tier = 3,
		name = "Master of Cuisine Boots",
		profession = 7,
		itemId = 38629,
		index = 62,
		experience = 38400,
		durability = 8,
		slotName = "crafting boots",
		clientId = 35197,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Sous Chef Boots",
				amount = 1,
				clientId = 35192,
				itemId = 38624
			}
		}
	},
	{
		tier = 1,
		name = "Loom Apprentice Gloves",
		profession = 7,
		itemId = 38635,
		index = 63,
		experience = 19200,
		durability = 7,
		slotName = "crafting gloves",
		clientId = 35203,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 225,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 8,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 8,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Loom Apprentice Helmet",
		profession = 7,
		itemId = 38636,
		index = 64,
		experience = 9600,
		durability = 6,
		slotName = "crafting helmet",
		clientId = 35204,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Loom Apprentice Armor",
		profession = 7,
		itemId = 38633,
		index = 65,
		experience = 9600,
		durability = 6,
		slotName = "crafting armor",
		clientId = 35201,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Loom Apprentice Legs",
		profession = 7,
		itemId = 38637,
		index = 66,
		experience = 9600,
		durability = 6,
		slotName = "crafting legs",
		clientId = 35205,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Loom Apprentice Boots",
		profession = 7,
		itemId = 38634,
		index = 67,
		experience = 9600,
		durability = 6,
		slotName = "crafting boots",
		clientId = 35202,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 2,
		name = "Threadspinner Gloves",
		profession = 7,
		itemId = 38640,
		index = 68,
		experience = 38400,
		durability = 7,
		slotName = "crafting gloves",
		clientId = 35208,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "silk",
				amount = 12,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 9,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Loom Apprentice Gloves",
				amount = 1,
				clientId = 35203,
				itemId = 38635
			}
		}
	},
	{
		tier = 2,
		name = "Threadspinner Helmet",
		profession = 7,
		itemId = 38641,
		index = 69,
		experience = 19200,
		durability = 7,
		slotName = "crafting helmet",
		clientId = 35209,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				name = "silk",
				amount = 8,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Loom Apprentice Helmet",
				amount = 1,
				clientId = 35204,
				itemId = 38636
			}
		}
	},
	{
		tier = 2,
		name = "Threadspinner Armor",
		profession = 7,
		itemId = 38638,
		index = 70,
		experience = 19200,
		durability = 7,
		slotName = "crafting armor",
		clientId = 35206,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "silk",
				amount = 8,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Loom Apprentice Armor",
				amount = 1,
				clientId = 35201,
				itemId = 38633
			}
		}
	},
	{
		tier = 2,
		name = "Threadspinner Legs",
		profession = 7,
		itemId = 38642,
		index = 71,
		experience = 19200,
		durability = 7,
		slotName = "crafting legs",
		clientId = 35210,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Loom Apprentice Legs",
				amount = 1,
				clientId = 35205,
				itemId = 38637
			}
		}
	},
	{
		tier = 2,
		name = "Threadspinner Boots",
		profession = 7,
		itemId = 38639,
		index = 72,
		experience = 19200,
		durability = 7,
		slotName = "crafting boots",
		clientId = 35207,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "silk",
				amount = 3,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Loom Apprentice Boots",
				amount = 1,
				clientId = 35202,
				itemId = 38634
			}
		}
	},
	{
		tier = 3,
		name = "Master Tailor Bracers",
		profession = 7,
		itemId = 38645,
		index = 73,
		experience = 76800,
		durability = 9,
		slotName = "crafting bracers",
		clientId = 35213,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 16,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 16,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Threadspinner Gloves",
				amount = 1,
				clientId = 35208,
				itemId = 38640
			}
		}
	},
	{
		tier = 3,
		name = "Master Tailor Helmet",
		profession = 7,
		itemId = 38646,
		index = 74,
		experience = 38400,
		durability = 9,
		slotName = "crafting helmet",
		clientId = 35214,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Threadspinner Helmet",
				amount = 1,
				clientId = 35209,
				itemId = 38641
			}
		}
	},
	{
		tier = 3,
		name = "Master Tailor Armor",
		profession = 7,
		itemId = 38643,
		index = 75,
		experience = 38400,
		durability = 9,
		slotName = "crafting armor",
		clientId = 35211,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 61,
			single = 56
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Threadspinner Armor",
				amount = 1,
				clientId = 35206,
				itemId = 38638
			}
		}
	},
	{
		tier = 3,
		name = "Master Tailor Legs",
		profession = 7,
		itemId = 38647,
		index = 76,
		experience = 38400,
		durability = 8,
		slotName = "crafting legs",
		clientId = 35215,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Threadspinner Legs",
				amount = 1,
				clientId = 35210,
				itemId = 38642
			}
		}
	},
	{
		tier = 3,
		name = "Master Tailor Boots",
		profession = 7,
		itemId = 38644,
		index = 77,
		experience = 38400,
		durability = 8,
		slotName = "crafting boots",
		clientId = 35212,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Threadspinner Boots",
				amount = 1,
				clientId = 35207,
				itemId = 38639
			}
		}
	},
	{
		tier = 1,
		name = "Workshop Assistant Gloves",
		profession = 7,
		itemId = 38605,
		index = 78,
		experience = 19200,
		durability = 7,
		slotName = "crafting gloves",
		clientId = 35173,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 225,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 8,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 8,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Workshop Assistant Helmet",
		profession = 7,
		itemId = 38606,
		index = 79,
		experience = 9600,
		durability = 6,
		slotName = "crafting helmet",
		clientId = 35174,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Workshop Assistant Armor",
		profession = 7,
		itemId = 38603,
		index = 80,
		experience = 9600,
		durability = 6,
		slotName = "crafting armor",
		clientId = 35171,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Workshop Assistant Legs",
		profession = 7,
		itemId = 38607,
		index = 81,
		experience = 9600,
		durability = 6,
		slotName = "crafting legs",
		clientId = 35175,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Workshop Assistant Boots",
		profession = 7,
		itemId = 38604,
		index = 82,
		experience = 9600,
		durability = 6,
		slotName = "crafting boots",
		clientId = 35172,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 2,
		name = "Woodworker Gloves",
		profession = 7,
		itemId = 38610,
		index = 83,
		experience = 38400,
		durability = 7,
		slotName = "crafting gloves",
		clientId = 35178,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 12,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 9,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Workshop Assistant Gloves",
				amount = 1,
				clientId = 35173,
				itemId = 38605
			}
		}
	},
	{
		tier = 2,
		name = "Woodworker Helmet",
		profession = 7,
		itemId = 38611,
		index = 84,
		experience = 19200,
		durability = 7,
		slotName = "crafting helmet",
		clientId = 35179,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Workshop Assistant Helmet",
				amount = 1,
				clientId = 35174,
				itemId = 38606
			}
		}
	},
	{
		tier = 2,
		name = "Woodworker Armor",
		profession = 7,
		itemId = 38608,
		index = 85,
		experience = 19200,
		durability = 7,
		slotName = "crafting armor",
		clientId = 35176,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Workshop Assistant Armor",
				amount = 1,
				clientId = 35171,
				itemId = 38603
			}
		}
	},
	{
		tier = 2,
		name = "Woodworker Legs",
		profession = 7,
		itemId = 38612,
		index = 86,
		experience = 19200,
		durability = 7,
		slotName = "crafting legs",
		clientId = 35180,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Workshop Assistant Legs",
				amount = 1,
				clientId = 35175,
				itemId = 38607
			}
		}
	},
	{
		tier = 2,
		name = "Woodworker Boots",
		profession = 7,
		itemId = 38609,
		index = 87,
		experience = 19200,
		durability = 7,
		slotName = "crafting boots",
		clientId = 35177,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Workshop Assistant Boots",
				amount = 1,
				clientId = 35172,
				itemId = 38604
			}
		}
	},
	{
		tier = 3,
		name = "Master Mason Gloves",
		profession = 7,
		itemId = 38615,
		index = 88,
		experience = 76800,
		durability = 9,
		slotName = "crafting gloves",
		clientId = 35183,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 16,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 16,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Woodworker Gloves",
				amount = 1,
				clientId = 35178,
				itemId = 38610
			}
		}
	},
	{
		tier = 3,
		name = "Master Mason Helmet",
		profession = 7,
		itemId = 38616,
		index = 89,
		experience = 38400,
		durability = 9,
		slotName = "crafting helmet",
		clientId = 35184,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Woodworker Helmet",
				amount = 1,
				clientId = 35179,
				itemId = 38611
			}
		}
	},
	{
		tier = 3,
		name = "Master Mason Armor",
		profession = 7,
		itemId = 38613,
		index = 90,
		experience = 38400,
		durability = 9,
		slotName = "crafting armor",
		clientId = 35181,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 61,
			single = 56
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Woodworker Armor",
				amount = 1,
				clientId = 35176,
				itemId = 38608
			}
		}
	},
	{
		tier = 3,
		name = "Master Mason Legs",
		profession = 7,
		itemId = 38617,
		index = 91,
		experience = 38400,
		durability = 8,
		slotName = "crafting legs",
		clientId = 35185,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Woodworker Legs",
				amount = 1,
				clientId = 35180,
				itemId = 38612
			}
		}
	},
	{
		tier = 3,
		name = "Master Mason Boots",
		profession = 7,
		itemId = 38614,
		index = 92,
		experience = 38400,
		durability = 8,
		slotName = "crafting boots",
		clientId = 35182,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Woodworker Boots",
				amount = 1,
				clientId = 35177,
				itemId = 38609
			}
		}
	},
	{
		tier = 1,
		name = "Apprentice Anvil Bracers",
		profession = 7,
		itemId = 38590,
		index = 93,
		experience = 19200,
		durability = 7,
		slotName = "crafting bracers",
		clientId = 35158,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 225,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 8,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 8,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Apprentice Anvil Helmet",
		profession = 7,
		itemId = 38591,
		index = 94,
		experience = 9600,
		durability = 6,
		slotName = "crafting helmet",
		clientId = 35159,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 24,
			single = 19
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Apprentice Anvil Armor",
		profession = 7,
		itemId = 38588,
		index = 95,
		experience = 9600,
		durability = 6,
		slotName = "crafting armor",
		clientId = 35156,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 200,
		level = {
			mass = 21,
			single = 16
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 3,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Apprentice Anvil Legs",
		profession = 7,
		itemId = 38592,
		index = 96,
		experience = 9600,
		durability = 6,
		slotName = "crafting legs",
		clientId = 35160,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 1,
		name = "Apprentice Anvil Boots",
		profession = 7,
		itemId = 38589,
		index = 97,
		experience = 9600,
		durability = 6,
		slotName = "crafting boots",
		clientId = 35157,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = 2,
		name = "Silversmith Bracers",
		profession = 7,
		itemId = 38595,
		index = 98,
		experience = 38400,
		durability = 7,
		slotName = "crafting bracers",
		clientId = 35163,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 12,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 9,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Apprentice Anvil Bracers",
				amount = 1,
				clientId = 35158,
				itemId = 38590
			}
		}
	},
	{
		tier = 2,
		name = "Silversmith Helmet",
		profession = 7,
		itemId = 38596,
		index = 99,
		experience = 19200,
		durability = 7,
		slotName = "crafting helmet",
		clientId = 35164,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Apprentice Anvil Helmet",
				amount = 1,
				clientId = 35159,
				itemId = 38591
			}
		}
	},
	{
		tier = 2,
		name = "Silversmith Armor",
		profession = 7,
		itemId = 38593,
		index = 100,
		experience = 19200,
		durability = 7,
		slotName = "crafting armor",
		clientId = 35161,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 350,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 3,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Apprentice Anvil Armor",
				amount = 1,
				clientId = 35156,
				itemId = 38588
			}
		}
	},
	{
		tier = 2,
		name = "Silversmith Legs",
		profession = 7,
		itemId = 38597,
		index = 101,
		experience = 19200,
		durability = 7,
		slotName = "crafting legs",
		clientId = 35165,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 38,
			single = 33
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Apprentice Anvil Legs",
				amount = 1,
				clientId = 35160,
				itemId = 38592
			}
		}
	},
	{
		tier = 2,
		name = "Silversmith Boots",
		profession = 7,
		itemId = 38594,
		index = 102,
		experience = 19200,
		durability = 7,
		slotName = "crafting boots",
		clientId = 35162,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 250,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 8,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Apprentice Anvil Boots",
				amount = 1,
				clientId = 35157,
				itemId = 38589
			}
		}
	},
	{
		tier = 3,
		name = "Forgemaster Bracers",
		profession = 7,
		itemId = 38600,
		index = 103,
		experience = 76800,
		durability = 9,
		slotName = "crafting bracers",
		clientId = 35168,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 16,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 16,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Silversmith Bracers",
				amount = 1,
				clientId = 35163,
				itemId = 38595
			}
		}
	},
	{
		tier = 3,
		name = "Forgemaster Helmet",
		profession = 7,
		itemId = 38601,
		index = 104,
		experience = 38400,
		durability = 9,
		slotName = "crafting helmet",
		clientId = 35169,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 64,
			single = 59
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Silversmith Helmet",
				amount = 1,
				clientId = 35164,
				itemId = 38596
			}
		}
	},
	{
		tier = 3,
		name = "Forgemaster Armor",
		profession = 7,
		itemId = 38598,
		index = 105,
		experience = 38400,
		durability = 9,
		slotName = "crafting armor",
		clientId = 35166,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 61,
			single = 56
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 4,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Silversmith Armor",
				amount = 1,
				clientId = 35161,
				itemId = 38593
			}
		}
	},
	{
		tier = 3,
		name = "Forgemaster Legs",
		profession = 7,
		itemId = 38602,
		index = 106,
		experience = 38400,
		durability = 8,
		slotName = "crafting legs",
		clientId = 35170,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Silversmith Legs",
				amount = 1,
				clientId = 35165,
				itemId = 38597
			}
		}
	},
	{
		tier = 3,
		name = "Forgemaster Boots",
		profession = 7,
		itemId = 38599,
		index = 107,
		experience = 38400,
		durability = 8,
		slotName = "crafting boots",
		clientId = 35167,
		amount = 1,
		category = "crafting",
		description = "",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 12,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Silversmith Boots",
				amount = 1,
				clientId = 35162,
				itemId = 38594
			}
		}
	},
	{
		tier = -1,
		name = "simple cloth",
		profession = 7,
		itemId = 32398,
		index = 108,
		experience = 610,
		durability = 4,
		slotName = "",
		clientId = 28966,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		quality = 75,
		progress = 25,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "spool of hair",
				amount = 6,
				clientId = 34475,
				itemId = 37907
			}
		}
	},
	{
		tier = -1,
		name = "craftman's cloth",
		profession = 7,
		itemId = 32395,
		index = 109,
		experience = 1200,
		durability = 6,
		slotName = "",
		clientId = 28963,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		quality = 150,
		progress = 150,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "spool of hair",
				amount = 12,
				clientId = 34475,
				itemId = 37907
			}
		}
	},
	{
		tier = -1,
		name = "silk",
		profession = 7,
		itemId = 32397,
		index = 110,
		experience = 1850,
		durability = 7,
		slotName = "",
		clientId = 28965,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		quality = 175,
		progress = 225,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "spool of hair",
				amount = 18,
				clientId = 34475,
				itemId = 37907
			}
		}
	},
	{
		tier = -1,
		name = "merchant's cloth",
		profession = 7,
		itemId = 32396,
		index = 111,
		experience = 2400,
		durability = 8,
		slotName = "",
		clientId = 28964,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		quality = 425,
		progress = 450,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "spool of hair",
				amount = 24,
				clientId = 34475,
				itemId = 37907
			}
		}
	},
	{
		tier = -1,
		name = "artisan cloth",
		profession = 7,
		itemId = 32394,
		index = 112,
		experience = 3050,
		durability = 9,
		slotName = "",
		clientId = 28962,
		amount = 1,
		category = "cloth",
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		quality = 525,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "spool of hair",
				amount = 30,
				clientId = 34475,
				itemId = 37907
			}
		}
	},
	{
		slotName = "cloth armor",
		profession = 7,
		name = "Warlock Armor",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40578,
		index = 113,
		experience = 33000,
		durability = 12,
		clientId = 37126,
		category = "armors",
		specialization = "Tailor",
		level = {
			mass = 83,
			single = 78
		},
		materials = {
			{
				name = "artisan cloth",
				amount = 7,
				clientId = 28962,
				itemId = 32394
			},
			{
				name = "artisan thread",
				amount = 4,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Mystic Armor",
				amount = 1,
				clientId = 28632,
				itemId = 32064
			},
			{
				name = "Winterwool",
				amount = 8,
				clientId = 40281,
				itemId = 43733
			}
		}
	},
	{
		slotName = "cloth helmet",
		profession = 7,
		name = "Warlock Helmet",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40584,
		index = 114,
		experience = 33000,
		durability = 12,
		clientId = 37132,
		category = "armors",
		specialization = "Tailor",
		level = {
			mass = 86,
			single = 81
		},
		materials = {
			{
				name = "artisan cloth",
				amount = 7,
				clientId = 28962,
				itemId = 32394
			},
			{
				name = "artisan thread",
				amount = 4,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Mystic Helmet",
				amount = 1,
				clientId = 28633,
				itemId = 32065
			},
			{
				name = "Winterwool",
				amount = 8,
				clientId = 40281,
				itemId = 43733
			}
		}
	},
	{
		slotName = "cloth legs",
		profession = 7,
		name = "Warlock Legs",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40585,
		index = 115,
		experience = 33000,
		durability = 12,
		clientId = 37133,
		category = "armors",
		specialization = "Tailor",
		level = {
			mass = 89,
			single = 84
		},
		materials = {
			{
				name = "artisan cloth",
				amount = 4,
				clientId = 28962,
				itemId = 32394
			},
			{
				name = "artisan thread",
				amount = 7,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Mystic Legs",
				amount = 1,
				clientId = 28631,
				itemId = 32063
			},
			{
				name = "Winterwool",
				amount = 8,
				clientId = 40281,
				itemId = 43733
			}
		}
	},
	{
		slotName = "cloth boots",
		profession = 7,
		name = "Warlock Boots",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40599,
		index = 116,
		experience = 33000,
		durability = 12,
		clientId = 37147,
		category = "armors",
		specialization = "Tailor",
		level = {
			mass = 92,
			single = 87
		},
		materials = {
			{
				name = "artisan cloth",
				amount = 4,
				clientId = 28962,
				itemId = 32394
			},
			{
				name = "artisan thread",
				amount = 7,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Mystic Boots",
				amount = 1,
				clientId = 28625,
				itemId = 32057
			},
			{
				name = "Winterwool",
				amount = 8,
				clientId = 40281,
				itemId = 43733
			}
		}
	},
	{
		slotName = "leather armor",
		profession = 7,
		name = "Guerrila Armor",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40591,
		index = 117,
		experience = 33000,
		durability = 12,
		clientId = 37139,
		category = "armors",
		specialization = "Patchworker",
		level = {
			mass = 83,
			single = 78
		},
		materials = {
			{
				name = "Artisan Leather",
				amount = 7,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "artisan thread",
				amount = 4,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Studded Armor",
				amount = 1,
				clientId = 28670,
				itemId = 32102
			},
			{
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269,
				itemId = 43721
			}
		}
	},
	{
		slotName = "leather helmet",
		profession = 7,
		name = "Guerrila Helmet",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40593,
		index = 118,
		experience = 33000,
		durability = 12,
		clientId = 37141,
		category = "armors",
		specialization = "Patchworker",
		level = {
			mass = 86,
			single = 81
		},
		materials = {
			{
				name = "Artisan Leather",
				amount = 7,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "artisan thread",
				amount = 4,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Studded Helmet",
				amount = 1,
				clientId = 28677,
				itemId = 32109
			},
			{
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269,
				itemId = 43721
			}
		}
	},
	{
		slotName = "leather legs",
		profession = 7,
		name = "Guerrila Legs",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40594,
		index = 119,
		experience = 33000,
		durability = 12,
		clientId = 37142,
		category = "armors",
		specialization = "Patchworker",
		level = {
			mass = 89,
			single = 84
		},
		materials = {
			{
				name = "Artisan Leather",
				amount = 4,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "artisan thread",
				amount = 7,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Studded Legs",
				amount = 1,
				clientId = 28675,
				itemId = 32107
			},
			{
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269,
				itemId = 43721
			}
		}
	},
	{
		slotName = "leather boots",
		profession = 7,
		name = "Guerrila Boots",
		amount = 1,
		description = "",
		quality = 100,
		progress = 700,
		tier = 6,
		itemId = 40592,
		index = 120,
		experience = 33000,
		durability = 12,
		clientId = 37140,
		category = "armors",
		specialization = "Patchworker",
		level = {
			mass = 92,
			single = 87
		},
		materials = {
			{
				name = "Artisan Leather",
				amount = 4,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "artisan thread",
				amount = 7,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Studded Boots",
				amount = 1,
				clientId = 28672,
				itemId = 32104
			},
			{
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269,
				itemId = 43721
			}
		}
	},
	{
		tier = -1,
		name = "Small Sail Kit",
		profession = 7,
		itemId = 40728,
		index = 121,
		experience = 216000,
		durability = 4,
		slotName = "",
		clientId = 37276,
		amount = 1,
		category = "Ship Module",
		description = "Used for crafting a Sail at the Ship Builder.",
		quality = 0,
		progress = 100,
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 60,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "Craftman's Leather",
				amount = 30,
				clientId = 35433,
				itemId = 38865
			},
			{
				name = "craftman's thread",
				amount = 90,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = -1,
		name = "Medium Sail Kit",
		profession = 7,
		itemId = 40709,
		index = 122,
		experience = 552000,
		durability = 7,
		slotName = "",
		clientId = 37257,
		amount = 1,
		category = "Ship Module",
		description = "Used for crafting a Sail at the Ship Builder.",
		quality = 0,
		progress = 300,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "silk",
				amount = 100,
				clientId = 28965,
				itemId = 32397
			},
			{
				name = "Tanned Leather",
				amount = 50,
				clientId = 35434,
				itemId = 38866
			},
			{
				name = "fine thread",
				amount = 150,
				clientId = 28973,
				itemId = 32405
			}
		}
	},
	{
		slotName = "",
		profession = 7,
		name = "Large Sail Kit",
		amount = 1,
		description = "Used for crafting a Sail at the Ship Builder.",
		quality = 0,
		progress = 525,
		tier = -1,
		itemId = 40694,
		index = 123,
		experience = 1728000,
		durability = 8,
		clientId = 37242,
		category = "Ship Module",
		specialization = "Sailmaker",
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 240,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "Merchant's Leather",
				amount = 120,
				clientId = 35435,
				itemId = 38867
			},
			{
				name = "merchant's thread",
				amount = 360,
				clientId = 28969,
				itemId = 32401
			}
		}
	},
	{
		tier = -1,
		name = "Thread Spool",
		profession = 7,
		itemId = 40740,
		index = 124,
		experience = 9500,
		durability = 7,
		slotName = "",
		clientId = 37288,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 225,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "craftman's thread",
				amount = 8,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = -1,
		name = "Luxury Thread Spool",
		profession = 7,
		itemId = 40700,
		index = 125,
		experience = 60000,
		durability = 8,
		slotName = "",
		clientId = 37248,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "merchant's thread",
				amount = 25,
				clientId = 28969,
				itemId = 32401
			}
		}
	},
	{
		tier = -1,
		name = "Cloth Roll",
		profession = 7,
		itemId = 40678,
		index = 126,
		experience = 24000,
		durability = 7,
		slotName = "",
		clientId = 37226,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 225,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 15,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = -1,
		name = "Refined Cloth Roll",
		profession = 7,
		itemId = 40714,
		index = 127,
		experience = 60000,
		durability = 8,
		slotName = "",
		clientId = 37262,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 15,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 5,
				clientId = 28969,
				itemId = 32401
			}
		}
	},
	{
		tier = -1,
		name = "Luxury Cloth Roll",
		profession = 7,
		itemId = 40699,
		index = 128,
		experience = 101000,
		durability = 9,
		slotName = "",
		clientId = 37247,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "artisan cloth",
				amount = 20,
				clientId = 28962,
				itemId = 32394
			},
			{
				name = "artisan thread",
				amount = 15,
				clientId = 28970,
				itemId = 32402
			}
		}
	},
	{
		tier = -1,
		name = "Carpet",
		profession = 7,
		itemId = 40677,
		index = 129,
		experience = 18000,
		durability = 7,
		slotName = "",
		clientId = 37225,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 225,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "craftman's cloth",
				amount = 10,
				clientId = 28963,
				itemId = 32395
			},
			{
				name = "craftman's thread",
				amount = 5,
				clientId = 28972,
				itemId = 32404
			}
		}
	},
	{
		tier = -1,
		name = "Luxury Carpet",
		profession = 7,
		itemId = 40698,
		index = 130,
		experience = 72000,
		durability = 8,
		slotName = "",
		clientId = 37246,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 525,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "merchant's cloth",
				amount = 15,
				clientId = 28964,
				itemId = 32396
			},
			{
				name = "merchant's thread",
				amount = 15,
				clientId = 28969,
				itemId = 32401
			}
		}
	},
	{
		tier = -1,
		name = "Small Fishing Nets Kit",
		profession = 7,
		itemId = 40724,
		index = 131,
		experience = 119200,
		durability = 7,
		slotName = "",
		clientId = 37272,
		amount = 1,
		category = "Ship Module",
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		quality = 0,
		progress = 300,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "fine thread",
				amount = 50,
				clientId = 28973,
				itemId = 32405
			},
			{
				name = "Tanned Leather",
				amount = 15,
				clientId = 35434,
				itemId = 38866
			}
		}
	},
	{
		tier = -1,
		name = "Medium Fishing Nets Kit",
		profession = 7,
		itemId = 40705,
		index = 132,
		experience = 384000,
		durability = 7,
		slotName = "",
		clientId = 37253,
		amount = 1,
		category = "Ship Module",
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		quality = 0,
		progress = 500,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "merchant's thread",
				amount = 130,
				clientId = 28969,
				itemId = 32401
			},
			{
				name = "Merchant's Leather",
				amount = 30,
				clientId = 35435,
				itemId = 38867
			}
		}
	},
	{
		tier = -1,
		name = "Large Fishing Nets Kit",
		profession = 7,
		itemId = 40690,
		index = 133,
		experience = 1272000,
		durability = 9,
		slotName = "",
		clientId = 37238,
		amount = 1,
		category = "Ship Module",
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		quality = 0,
		progress = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "artisan thread",
				amount = 320,
				clientId = 28970,
				itemId = 32402
			},
			{
				name = "Artisan Leather",
				amount = 100,
				clientId = 35436,
				itemId = 38868
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Armor",
		profession = 7,
		itemId = 32021,
		index = 134,
		experience = 640,
		durability = 3,
		slotName = "cloth armor",
		clientId = 28589,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Helmet",
		profession = 7,
		itemId = 32027,
		index = 135,
		experience = 640,
		durability = 3,
		slotName = "cloth helmet",
		clientId = 28595,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Legs",
		profession = 7,
		itemId = 32028,
		index = 136,
		experience = 640,
		durability = 3,
		slotName = "cloth legs",
		clientId = 28596,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Boots",
		profession = 7,
		itemId = 32024,
		index = 137,
		experience = 640,
		durability = 3,
		slotName = "cloth boots",
		clientId = 28592,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				name = "simple cloth",
				amount = 1,
				clientId = 28966,
				itemId = 32398
			}
		}
	},
	{
		tier = 1,
		name = "Hide Armor",
		profession = 7,
		itemId = 32066,
		index = 138,
		experience = 640,
		durability = 3,
		slotName = "leather armor",
		clientId = 28634,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = 1,
		name = "Hide Helmet",
		profession = 7,
		itemId = 32072,
		index = 139,
		experience = 640,
		durability = 3,
		slotName = "leather helmet",
		clientId = 28640,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = 1,
		name = "Hide Legs",
		profession = 7,
		itemId = 32073,
		index = 140,
		experience = 640,
		durability = 3,
		slotName = "leather legs",
		clientId = 28641,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 12,
			single = 7
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = 1,
		name = "Hide Boots",
		profession = 7,
		itemId = 32069,
		index = 141,
		experience = 640,
		durability = 3,
		slotName = "leather boots",
		clientId = 28637,
		amount = 1,
		category = "armors",
		description = "",
		quality = 100,
		progress = 50,
		level = {
			mass = 14,
			single = 9
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = -1,
		name = "Cheap Rug",
		profession = 7,
		itemId = 46232,
		index = 142,
		experience = 4800,
		durability = 3,
		slotName = "",
		clientId = 42780,
		amount = 1,
		category = "Housing Craft",
		description = "Used in housing upgrades.",
		quality = 0,
		progress = 50,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "simple cloth",
				amount = 5,
				clientId = 28966,
				itemId = 32398
			},
			{
				name = "Coarse Leather",
				amount = 3,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = -1,
		name = "Simple Saddle",
		profession = 7,
		itemId = 46698,
		index = 143,
		experience = 6400,
		durability = 7,
		slotName = "",
		clientId = 43246,
		amount = 1,
		category = "Moa Equipment",
		description = "Together with 'Simple Headgear' can be crafted into a 'Simple Barding'.",
		quality = 0,
		progress = 180,
		level = {
			mass = 17,
			single = 12
		},
		materials = {
			{
				name = "copper ingot",
				amount = 4,
				clientId = 28726,
				itemId = 32158
			},
			{
				name = "Coarse Leather",
				amount = 10,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = -1,
		name = "Composed Saddle",
		profession = 7,
		itemId = 46699,
		index = 144,
		experience = 8800,
		durability = 7,
		slotName = "",
		clientId = 43247,
		amount = 1,
		category = "Moa Equipment",
		description = "Together with 'Composed Headgear' can be crafted into a 'Composed Barding'.",
		quality = 0,
		progress = 200,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				name = "iron ingot",
				amount = 8,
				clientId = 28723,
				itemId = 32155
			},
			{
				name = "Coarse Leather",
				amount = 11,
				clientId = 35432,
				itemId = 38864
			}
		}
	},
	{
		tier = -1,
		name = "Advanced Saddle",
		profession = 7,
		itemId = 46700,
		index = 145,
		experience = 26400,
		durability = 7,
		slotName = "",
		clientId = 43248,
		amount = 1,
		category = "Moa Equipment",
		description = "Together with 'Advanced Headgear' can be crafted into a 'Advanced Barding'.",
		quality = 0,
		progress = 350,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "iron ingot",
				amount = 10,
				clientId = 28723,
				itemId = 32155
			},
			{
				name = "Craftman's Leather",
				amount = 20,
				clientId = 35433,
				itemId = 38865
			}
		}
	},
	{
		tier = -1,
		name = "Artisan Saddle",
		profession = 7,
		itemId = 46701,
		index = 146,
		experience = 51200,
		durability = 8,
		slotName = "",
		clientId = 43249,
		amount = 1,
		category = "Moa Equipment",
		description = "Together with 'Artisan Headgear' can be crafted into a 'Artisan Barding'.",
		quality = 0,
		progress = 525,
		level = {
			mass = 53,
			single = 48
		},
		materials = {
			{
				name = "steel ingot",
				amount = 17,
				clientId = 28724,
				itemId = 32156
			},
			{
				name = "Tanned Leather",
				amount = 25,
				clientId = 35434,
				itemId = 38866
			}
		}
	},
	{
		tier = -1,
		name = "Superior Saddle",
		profession = 7,
		itemId = 46702,
		index = 147,
		experience = 57600,
		durability = 9,
		slotName = "",
		clientId = 43250,
		amount = 1,
		category = "Moa Equipment",
		description = "Together with 'Superior Headgear' can be crafted into a 'Superior Barding'.",
		quality = 0,
		progress = 650,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				name = "cobalt ingot",
				amount = 10,
				clientId = 28725,
				itemId = 32157
			},
			{
				name = "Merchant's Leather",
				amount = 22,
				clientId = 35435,
				itemId = 38867
			}
		}
	},
	{
		slotName = "",
		profession = 7,
		name = "War Saddle",
		amount = 1,
		description = "Together with 'War Headgear' can be crafted into a 'War Barding'.",
		quality = 0,
		progress = 750,
		tier = -1,
		itemId = 46703,
		index = 148,
		experience = 194400,
		durability = 12,
		clientId = 43251,
		category = "Moa Equipment",
		specialization = "Patchworker",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				amount = 12,
				clientId = 28727,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "ruby",
				amount = 10,
				clientId = 28951,
				itemId = 32383
			}
		}
	},
	{
		slotName = "",
		profession = 7,
		name = "Explorer Saddle",
		amount = 1,
		description = "Together with 'Explorer Headgear' can be crafted into a 'Explorer Barding'.",
		quality = 0,
		progress = 750,
		tier = -1,
		itemId = 46704,
		index = 149,
		experience = 194400,
		durability = 12,
		clientId = 43252,
		category = "Moa Equipment",
		specialization = "Patchworker",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				amount = 12,
				clientId = 28727,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "sapphire",
				amount = 10,
				clientId = 28952,
				itemId = 32384
			}
		}
	},
	{
		slotName = "",
		profession = 7,
		name = "Professional Saddle",
		amount = 1,
		description = "Together with 'Professional Headgear' can be crafted into a 'Professional Barding'.",
		quality = 0,
		progress = 750,
		tier = -1,
		itemId = 46705,
		index = 150,
		experience = 194400,
		durability = 12,
		clientId = 43253,
		category = "Moa Equipment",
		specialization = "Patchworker",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "titanium ingot",
				amount = 12,
				clientId = 28727,
				itemId = 32159
			},
			{
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436,
				itemId = 38868
			},
			{
				name = "topaz",
				amount = 10,
				clientId = 28953,
				itemId = 32385
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionWeaving] = {
	{
		tier = 1,
		name = "Shadecloth Armor",
		profession = 7,
		itemId = 32021,
		index = 1,
		experience = 0,
		durability = 3,
		slotName = "cloth armor",
		clientId = 28589,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966,
				itemId = 38881
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38880
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Helmet",
		profession = 7,
		itemId = 32027,
		index = 2,
		experience = 0,
		durability = 3,
		slotName = "cloth helmet",
		clientId = 28595,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966,
				itemId = 38885
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38884
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Legs",
		profession = 7,
		itemId = 32028,
		index = 3,
		experience = 0,
		durability = 3,
		slotName = "cloth legs",
		clientId = 28596,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966,
				itemId = 38889
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38888
			}
		}
	},
	{
		tier = 1,
		name = "Shadecloth Boots",
		profession = 7,
		itemId = 32024,
		index = 4,
		experience = 0,
		durability = 3,
		slotName = "cloth boots",
		clientId = 28592,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966,
				itemId = 38893
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38892
			}
		}
	},
	{
		tier = 1,
		name = "Hide Armor",
		profession = 7,
		itemId = 32066,
		index = 5,
		experience = 0,
		durability = 3,
		slotName = "leather armor",
		clientId = 28634,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38879
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38880
			}
		}
	},
	{
		tier = 1,
		name = "Hide Helmet",
		profession = 7,
		itemId = 32072,
		index = 6,
		experience = 0,
		durability = 3,
		slotName = "leather helmet",
		clientId = 28640,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38883
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38884
			}
		}
	},
	{
		tier = 1,
		name = "Hide Legs",
		profession = 7,
		itemId = 32073,
		index = 7,
		experience = 0,
		durability = 3,
		slotName = "leather legs",
		clientId = 28641,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38887
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38888
			}
		}
	},
	{
		tier = 1,
		name = "Hide Boots",
		profession = 7,
		itemId = 32069,
		index = 8,
		experience = 0,
		durability = 3,
		slotName = "leather boots",
		clientId = 28637,
		amount = 1,
		category = "quest",
		description = "",
		quality = 50,
		progress = 50,
		level = {
			single = 1
		},
		materials = {
			{
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432,
				itemId = 38891
			},
			{
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971,
				itemId = 38892
			}
		}
	}
}

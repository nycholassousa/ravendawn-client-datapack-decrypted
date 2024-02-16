-- chunkname: @/modules/game_profession/recipes/weaving.lua

recipes = recipes or {}
recipes[ProfessionWeaving] = {
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38864,
		index = 1,
		experience = 610,
		durability = 4,
		progress = 25,
		clientId = 35432,
		name = "Coarse Leather",
		category = "leather",
		amount = 1,
		quality = 75,
		description = "Used in various recipes. Its rough texture provides a sense of rugged resilience.",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 2,
				clientId = 35353,
				name = "Hide",
				itemId = 38785
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38865,
		index = 2,
		experience = 1200,
		durability = 6,
		progress = 150,
		clientId = 35433,
		name = "Craftman's Leather",
		category = "leather",
		amount = 1,
		quality = 150,
		description = "Used in various recipes. Skillfully treated and refined leather.",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 4,
				clientId = 35353,
				name = "Hide",
				itemId = 38785
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38866,
		index = 3,
		experience = 1850,
		durability = 7,
		progress = 225,
		clientId = 35434,
		name = "Tanned Leather",
		category = "leather",
		amount = 1,
		quality = 200,
		description = "Used in various recipes. Smooth and flexible, it's a display of a meticulous tanning process.",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 6,
				clientId = 35353,
				name = "Hide",
				itemId = 38785
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38867,
		index = 4,
		experience = 2400,
		durability = 8,
		progress = 450,
		clientId = 35435,
		name = "Merchant's Leather",
		category = "leather",
		amount = 1,
		quality = 425,
		description = "Used in various recipes. Its polished appearance signifies quality and sophistication.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 8,
				clientId = 35353,
				name = "Hide",
				itemId = 38785
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38868,
		index = 5,
		experience = 3050,
		durability = 9,
		progress = 550,
		clientId = 35436,
		name = "Artisan Leather",
		category = "leather",
		amount = 1,
		quality = 525,
		description = "Used in various recipes. Masterfully crafted, it's reserved only for the finest creations.",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 10,
				clientId = 35353,
				name = "Hide",
				itemId = 38785
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32403,
		index = 6,
		experience = 610,
		durability = 4,
		progress = 25,
		clientId = 28971,
		name = "coarse thread",
		category = "threads",
		amount = 1,
		quality = 75,
		description = "Used in various recipes. Despite its unrefined appearance, it's suitable for crafting durable items.",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 3,
				clientId = 28879,
				name = "cotton",
				itemId = 32311
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32404,
		index = 7,
		experience = 1200,
		durability = 6,
		progress = 150,
		clientId = 28972,
		name = "craftman's thread",
		category = "threads",
		amount = 1,
		quality = 150,
		description = "Used in various recipes. Stitching together sturdy creations, it stands up to the rigors of daily use.",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 6,
				clientId = 28879,
				name = "cotton",
				itemId = 32311
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32405,
		index = 8,
		experience = 1850,
		durability = 7,
		progress = 225,
		clientId = 28973,
		name = "fine thread",
		category = "threads",
		amount = 1,
		quality = 200,
		description = "Used in various recipes. Delicate and refined, its slender fibers allow for intricate stitching.",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 9,
				clientId = 28879,
				name = "cotton",
				itemId = 32311
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32401,
		index = 9,
		experience = 2400,
		durability = 8,
		progress = 450,
		clientId = 28969,
		name = "merchant's thread",
		category = "threads",
		amount = 1,
		quality = 425,
		description = "Used in various recipes. The lifeline of intricate textiles.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 12,
				clientId = 28879,
				name = "cotton",
				itemId = 32311
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32402,
		index = 10,
		experience = 3050,
		durability = 9,
		progress = 550,
		clientId = 28970,
		name = "artisan thread",
		category = "threads",
		amount = 1,
		quality = 525,
		description = "Used in various recipes. The foundation for textiles that transcend to become works of art.",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 15,
				clientId = 28879,
				name = "cotton",
				itemId = 32311
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32398,
		index = 11,
		experience = 610,
		durability = 4,
		progress = 25,
		clientId = 28966,
		name = "simple cloth",
		category = "cloth",
		amount = 1,
		quality = 75,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 2,
				clientId = 28425,
				name = "wool",
				itemId = 31857
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32395,
		index = 12,
		experience = 1200,
		durability = 6,
		progress = 150,
		clientId = 28963,
		name = "craftman's cloth",
		category = "cloth",
		amount = 1,
		quality = 150,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 4,
				clientId = 28425,
				name = "wool",
				itemId = 31857
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32397,
		index = 13,
		experience = 1850,
		durability = 7,
		progress = 225,
		clientId = 28965,
		name = "silk",
		category = "cloth",
		amount = 1,
		quality = 175,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 6,
				clientId = 28425,
				name = "wool",
				itemId = 31857
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32396,
		index = 14,
		experience = 2400,
		durability = 8,
		progress = 450,
		clientId = 28964,
		name = "merchant's cloth",
		category = "cloth",
		amount = 1,
		quality = 425,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 8,
				clientId = 28425,
				name = "wool",
				itemId = 31857
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32394,
		index = 15,
		experience = 3050,
		durability = 9,
		progress = 550,
		clientId = 28962,
		name = "artisan cloth",
		category = "cloth",
		amount = 1,
		quality = 525,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 10,
				clientId = 28425,
				name = "wool",
				itemId = 31857
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "cloth armor",
		itemId = 32030,
		index = 16,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28598,
		name = "Viper's Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28589,
				name = "Shadecloth Armor",
				itemId = 32021
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "cloth helmet",
		itemId = 32036,
		index = 17,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28604,
		name = "Viper's Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28595,
				name = "Shadecloth Helmet",
				itemId = 32027
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "cloth legs",
		itemId = 32037,
		index = 18,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28605,
		name = "Viper's Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28596,
				name = "Shadecloth Legs",
				itemId = 32028
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "cloth boots",
		itemId = 32033,
		index = 19,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28601,
		name = "Viper's Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28592,
				name = "Shadecloth Boots",
				itemId = 32024
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "cloth armor",
		itemId = 32039,
		index = 20,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28607,
		name = "Profane Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 2,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28598,
				name = "Viper's Armor",
				itemId = 32030
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "cloth helmet",
		itemId = 32045,
		index = 21,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28613,
		name = "Profane Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 2,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28604,
				name = "Viper's Helmet",
				itemId = 32036
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "cloth legs",
		itemId = 32046,
		index = 22,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28614,
		name = "Profane Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				amount = 2,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28605,
				name = "Viper's Legs",
				itemId = 32037
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "cloth boots",
		itemId = 32042,
		index = 23,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28610,
		name = "Profane Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				amount = 2,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28601,
				name = "Viper's Boots",
				itemId = 32033
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "cloth armor",
		itemId = 32048,
		index = 24,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28616,
		name = "Celestial Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28607,
				name = "Profane Armor",
				itemId = 32039
			},
			{
				amount = 5,
				clientId = 37495,
				name = "Phantasmagorical Cloth",
				itemId = 40947
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "cloth helmet",
		itemId = 32054,
		index = 25,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28622,
		name = "Celestial Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28613,
				name = "Profane Helmet",
				itemId = 32045
			},
			{
				amount = 5,
				clientId = 37495,
				name = "Phantasmagorical Cloth",
				itemId = 40947
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "cloth legs",
		itemId = 32055,
		index = 26,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28623,
		name = "Celestial Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28614,
				name = "Profane Legs",
				itemId = 32046
			},
			{
				amount = 5,
				clientId = 37495,
				name = "Phantasmagorical Cloth",
				itemId = 40947
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "cloth boots",
		itemId = 32051,
		index = 27,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28619,
		name = "Celestial Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28610,
				name = "Profane Boots",
				itemId = 32042
			},
			{
				amount = 5,
				clientId = 37495,
				name = "Phantasmagorical Cloth",
				itemId = 40947
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "cloth armor",
		itemId = 32064,
		index = 28,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28632,
		name = "Mystic Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				amount = 7,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 3,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28616,
				name = "Celestial Armor",
				itemId = 32048
			},
			{
				amount = 6,
				clientId = 40271,
				name = "Greenweave Bolt",
				itemId = 43723
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "cloth helmet",
		itemId = 32065,
		index = 29,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28633,
		name = "Mystic Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				amount = 7,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 3,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28622,
				name = "Celestial Helmet",
				itemId = 32054
			},
			{
				amount = 6,
				clientId = 40271,
				name = "Greenweave Bolt",
				itemId = 43723
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "cloth legs",
		itemId = 32063,
		index = 30,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28631,
		name = "Mystic Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				amount = 3,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 7,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28623,
				name = "Celestial Legs",
				itemId = 32055
			},
			{
				amount = 6,
				clientId = 40271,
				name = "Greenweave Bolt",
				itemId = 43723
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "cloth boots",
		itemId = 32057,
		index = 31,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28625,
		name = "Mystic Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				amount = 3,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 7,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28619,
				name = "Celestial Boots",
				itemId = 32051
			},
			{
				amount = 6,
				clientId = 40271,
				name = "Greenweave Bolt",
				itemId = 43723
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "leather armor",
		itemId = 32075,
		index = 32,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28643,
		name = "Nomad Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28634,
				name = "Hide Armor",
				itemId = 32066
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "leather helmet",
		itemId = 32081,
		index = 33,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28649,
		name = "Nomad Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28640,
				name = "Hide Helmet",
				itemId = 32072
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "leather legs",
		itemId = 32082,
		index = 34,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28650,
		name = "Nomad Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28641,
				name = "Hide Legs",
				itemId = 32073
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "leather boots",
		itemId = 32078,
		index = 35,
		experience = 1280,
		durability = 4,
		progress = 100,
		clientId = 28646,
		name = "Nomad Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			},
			{
				amount = 1,
				clientId = 28971,
				name = "coarse thread",
				itemId = 32403
			},
			{
				amount = 1,
				clientId = 28637,
				name = "Hide Boots",
				itemId = 32069
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "leather armor",
		itemId = 32084,
		index = 36,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28652,
		name = "Bruiser's Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 2,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28643,
				name = "Nomad Armor",
				itemId = 32075
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "leather helmet",
		itemId = 32090,
		index = 37,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28658,
		name = "Bruiser's Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 2,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28649,
				name = "Nomad Helmet",
				itemId = 32081
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "leather legs",
		itemId = 32091,
		index = 38,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28659,
		name = "Bruiser's Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				amount = 2,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28650,
				name = "Nomad Legs",
				itemId = 32082
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "leather boots",
		itemId = 32087,
		index = 39,
		experience = 6000,
		durability = 7,
		progress = 225,
		clientId = 28655,
		name = "Bruiser's Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				amount = 2,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			},
			{
				amount = 1,
				clientId = 28646,
				name = "Nomad Boots",
				itemId = 32078
			},
			{
				amount = 3,
				clientId = 37479,
				name = "Shell Fragment",
				itemId = 40931
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "leather armor",
		itemId = 32093,
		index = 40,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28661,
		name = "Outlaw Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28652,
				name = "Bruiser's Armor",
				itemId = 32084
			},
			{
				amount = 5,
				clientId = 37624,
				name = "Kaiman Scale",
				itemId = 41076
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "leather helmet",
		itemId = 32099,
		index = 41,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28667,
		name = "Outlaw Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28658,
				name = "Bruiser's Helmet",
				itemId = 32090
			},
			{
				amount = 5,
				clientId = 37624,
				name = "Kaiman Scale",
				itemId = 41076
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "leather legs",
		itemId = 32100,
		index = 42,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28668,
		name = "Outlaw Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28659,
				name = "Bruiser's Legs",
				itemId = 32091
			},
			{
				amount = 5,
				clientId = 37624,
				name = "Kaiman Scale",
				itemId = 41076
			}
		}
	},
	{
		profession = 7,
		tier = 4,
		slotName = "leather boots",
		itemId = 32096,
		index = 43,
		experience = 11000,
		durability = 7,
		progress = 350,
		clientId = 28664,
		name = "Outlaw Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 28655,
				name = "Bruiser's Boots",
				itemId = 32087
			},
			{
				amount = 5,
				clientId = 37624,
				name = "Kaiman Scale",
				itemId = 41076
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "leather armor",
		itemId = 32102,
		index = 44,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28670,
		name = "Studded Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				amount = 7,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 3,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28661,
				name = "Outlaw Armor",
				itemId = 32093
			},
			{
				amount = 6,
				clientId = 40266,
				name = "Composite Leather",
				itemId = 43718
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "leather helmet",
		itemId = 32109,
		index = 45,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28677,
		name = "Studded Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				amount = 7,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 3,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28667,
				name = "Outlaw Helmet",
				itemId = 32099
			},
			{
				amount = 6,
				clientId = 40266,
				name = "Composite Leather",
				itemId = 43718
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "leather legs",
		itemId = 32107,
		index = 46,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28675,
		name = "Studded Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				amount = 3,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 7,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28668,
				name = "Outlaw Legs",
				itemId = 32100
			},
			{
				amount = 6,
				clientId = 40266,
				name = "Composite Leather",
				itemId = 43718
			}
		}
	},
	{
		profession = 7,
		tier = 5,
		slotName = "leather boots",
		itemId = 32104,
		index = 47,
		experience = 24000,
		durability = 9,
		progress = 525,
		clientId = 28672,
		name = "Studded Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				amount = 3,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 7,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 28664,
				name = "Outlaw Boots",
				itemId = 32096
			},
			{
				amount = 6,
				clientId = 40266,
				name = "Composite Leather",
				itemId = 43718
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting bracers",
		itemId = 38620,
		index = 48,
		experience = 19200,
		durability = 7,
		progress = 225,
		clientId = 35188,
		name = "Fry Cook Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 8,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38621,
		index = 49,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35189,
		name = "Fry Cook Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38618,
		index = 50,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35186,
		name = "Fry Cook Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38622,
		index = 51,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35190,
		name = "Fry Cook Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38619,
		index = 52,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35187,
		name = "Fry Cook Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting bracers",
		itemId = 38625,
		index = 53,
		experience = 38400,
		durability = 7,
		progress = 350,
		clientId = 35193,
		name = "Sous Chef Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 9,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35188,
				name = "Fry Cook Bracers",
				itemId = 38620
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38626,
		index = 54,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35194,
		name = "Sous Chef Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35189,
				name = "Fry Cook Helmet",
				itemId = 38621
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38623,
		index = 55,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35191,
		name = "Sous Chef Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35186,
				name = "Fry Cook Armor",
				itemId = 38618
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38627,
		index = 56,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35195,
		name = "Sous Chef Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35190,
				name = "Fry Cook Legs",
				itemId = 38622
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38624,
		index = 57,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35192,
		name = "Sous Chef Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35187,
				name = "Fry Cook Boots",
				itemId = 38619
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38630,
		index = 58,
		experience = 76800,
		durability = 9,
		progress = 525,
		clientId = 35198,
		name = "Master of Cuisine Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 16,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35193,
				name = "Sous Chef Bracers",
				itemId = 38625
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38631,
		index = 59,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35199,
		name = "Master of Cuisine Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35194,
				name = "Sous Chef Helmet",
				itemId = 38626
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38628,
		index = 60,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35196,
		name = "Master of Cuisine Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35191,
				name = "Sous Chef Armor",
				itemId = 38623
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38632,
		index = 61,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35200,
		name = "Master of Cuisine Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35195,
				name = "Sous Chef Legs",
				itemId = 38627
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38629,
		index = 62,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35197,
		name = "Master of Cuisine Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35192,
				name = "Sous Chef Boots",
				itemId = 38624
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting gloves",
		itemId = 38635,
		index = 63,
		experience = 19200,
		durability = 7,
		progress = 225,
		clientId = 35203,
		name = "Loom Apprentice Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 8,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38636,
		index = 64,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35204,
		name = "Loom Apprentice Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38633,
		index = 65,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35201,
		name = "Loom Apprentice Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38637,
		index = 66,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35205,
		name = "Loom Apprentice Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38634,
		index = 67,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35202,
		name = "Loom Apprentice Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting gloves",
		itemId = 38640,
		index = 68,
		experience = 38400,
		durability = 7,
		progress = 350,
		clientId = 35208,
		name = "Threadspinner Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 9,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35203,
				name = "Loom Apprentice Gloves",
				itemId = 38635
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38641,
		index = 69,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35209,
		name = "Threadspinner Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35204,
				name = "Loom Apprentice Helmet",
				itemId = 38636
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38638,
		index = 70,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35206,
		name = "Threadspinner Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35201,
				name = "Loom Apprentice Armor",
				itemId = 38633
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38642,
		index = 71,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35210,
		name = "Threadspinner Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35205,
				name = "Loom Apprentice Legs",
				itemId = 38637
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38639,
		index = 72,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35207,
		name = "Threadspinner Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35202,
				name = "Loom Apprentice Boots",
				itemId = 38634
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38645,
		index = 73,
		experience = 76800,
		durability = 9,
		progress = 525,
		clientId = 35213,
		name = "Master Tailor Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 16,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35208,
				name = "Threadspinner Gloves",
				itemId = 38640
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38646,
		index = 74,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35214,
		name = "Master Tailor Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35209,
				name = "Threadspinner Helmet",
				itemId = 38641
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38643,
		index = 75,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35211,
		name = "Master Tailor Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35206,
				name = "Threadspinner Armor",
				itemId = 38638
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38647,
		index = 76,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35215,
		name = "Master Tailor Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35210,
				name = "Threadspinner Legs",
				itemId = 38642
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38644,
		index = 77,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35212,
		name = "Master Tailor Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35207,
				name = "Threadspinner Boots",
				itemId = 38639
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting gloves",
		itemId = 38605,
		index = 78,
		experience = 19200,
		durability = 7,
		progress = 225,
		clientId = 35173,
		name = "Workshop Assistant Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 8,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38606,
		index = 79,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35174,
		name = "Workshop Assistant Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38603,
		index = 80,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35171,
		name = "Workshop Assistant Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38607,
		index = 81,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35175,
		name = "Workshop Assistant Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38604,
		index = 82,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35172,
		name = "Workshop Assistant Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting gloves",
		itemId = 38610,
		index = 83,
		experience = 38400,
		durability = 7,
		progress = 350,
		clientId = 35178,
		name = "Woodworker Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 9,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35173,
				name = "Workshop Assistant Gloves",
				itemId = 38605
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38611,
		index = 84,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35179,
		name = "Woodworker Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35174,
				name = "Workshop Assistant Helmet",
				itemId = 38606
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38608,
		index = 85,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35176,
		name = "Woodworker Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35171,
				name = "Workshop Assistant Armor",
				itemId = 38603
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38612,
		index = 86,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35180,
		name = "Woodworker Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35175,
				name = "Workshop Assistant Legs",
				itemId = 38607
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38609,
		index = 87,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35177,
		name = "Woodworker Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35172,
				name = "Workshop Assistant Boots",
				itemId = 38604
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting gloves",
		itemId = 38615,
		index = 88,
		experience = 76800,
		durability = 9,
		progress = 525,
		clientId = 35183,
		name = "Master Mason Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 16,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35178,
				name = "Woodworker Gloves",
				itemId = 38610
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38616,
		index = 89,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35184,
		name = "Master Mason Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35179,
				name = "Woodworker Helmet",
				itemId = 38611
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38613,
		index = 90,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35181,
		name = "Master Mason Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35176,
				name = "Woodworker Armor",
				itemId = 38608
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38617,
		index = 91,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35185,
		name = "Master Mason Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35180,
				name = "Woodworker Legs",
				itemId = 38612
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38614,
		index = 92,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35182,
		name = "Master Mason Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35177,
				name = "Woodworker Boots",
				itemId = 38609
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting bracers",
		itemId = 38590,
		index = 93,
		experience = 19200,
		durability = 7,
		progress = 225,
		clientId = 35158,
		name = "Apprentice Anvil Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 8,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38591,
		index = 94,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35159,
		name = "Apprentice Anvil Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38588,
		index = 95,
		experience = 9600,
		durability = 6,
		progress = 200,
		clientId = 35156,
		name = "Apprentice Anvil Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 3,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38592,
		index = 96,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35160,
		name = "Apprentice Anvil Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38589,
		index = 97,
		experience = 9600,
		durability = 6,
		progress = 150,
		clientId = 35157,
		name = "Apprentice Anvil Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting bracers",
		itemId = 38595,
		index = 98,
		experience = 38400,
		durability = 7,
		progress = 350,
		clientId = 35163,
		name = "Silversmith Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 9,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35158,
				name = "Apprentice Anvil Bracers",
				itemId = 38590
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38596,
		index = 99,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35164,
		name = "Silversmith Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35159,
				name = "Apprentice Anvil Helmet",
				itemId = 38591
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38593,
		index = 100,
		experience = 19200,
		durability = 7,
		progress = 350,
		clientId = 35161,
		name = "Silversmith Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 3,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35156,
				name = "Apprentice Anvil Armor",
				itemId = 38588
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38597,
		index = 101,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35165,
		name = "Silversmith Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35160,
				name = "Apprentice Anvil Legs",
				itemId = 38592
			}
		}
	},
	{
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38594,
		index = 102,
		experience = 19200,
		durability = 7,
		progress = 250,
		clientId = 35162,
		name = "Silversmith Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 8,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 1,
				clientId = 35157,
				name = "Apprentice Anvil Boots",
				itemId = 38589
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38600,
		index = 103,
		experience = 76800,
		durability = 9,
		progress = 525,
		clientId = 35168,
		name = "Forgemaster Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 16,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35163,
				name = "Silversmith Bracers",
				itemId = 38595
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38601,
		index = 104,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35169,
		name = "Forgemaster Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35164,
				name = "Silversmith Helmet",
				itemId = 38596
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38598,
		index = 105,
		experience = 38400,
		durability = 9,
		progress = 525,
		clientId = 35166,
		name = "Forgemaster Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 4,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35161,
				name = "Silversmith Armor",
				itemId = 38593
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38602,
		index = 106,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35170,
		name = "Forgemaster Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35165,
				name = "Silversmith Legs",
				itemId = 38597
			}
		}
	},
	{
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38599,
		index = 107,
		experience = 38400,
		durability = 8,
		progress = 525,
		clientId = 35167,
		name = "Forgemaster Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		description = "",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 12,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 1,
				clientId = 35162,
				name = "Silversmith Boots",
				itemId = 38594
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32398,
		index = 108,
		experience = 610,
		durability = 4,
		progress = 25,
		clientId = 28966,
		name = "simple cloth",
		category = "cloth",
		amount = 1,
		quality = 75,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 6,
				clientId = 34475,
				name = "spool of hair",
				itemId = 37907
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32395,
		index = 109,
		experience = 1200,
		durability = 6,
		progress = 150,
		clientId = 28963,
		name = "craftman's cloth",
		category = "cloth",
		amount = 1,
		quality = 150,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 12,
				clientId = 34475,
				name = "spool of hair",
				itemId = 37907
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32397,
		index = 110,
		experience = 1850,
		durability = 7,
		progress = 225,
		clientId = 28965,
		name = "silk",
		category = "cloth",
		amount = 1,
		quality = 175,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 18,
				clientId = 34475,
				name = "spool of hair",
				itemId = 37907
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32396,
		index = 111,
		experience = 2400,
		durability = 8,
		progress = 450,
		clientId = 28964,
		name = "merchant's cloth",
		category = "cloth",
		amount = 1,
		quality = 425,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 24,
				clientId = 34475,
				name = "spool of hair",
				itemId = 37907
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32394,
		index = 112,
		experience = 3050,
		durability = 9,
		progress = 550,
		clientId = 28962,
		name = "artisan cloth",
		category = "cloth",
		amount = 1,
		quality = 525,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 30,
				clientId = 34475,
				name = "spool of hair",
				itemId = 37907
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Armor",
		slotName = "cloth armor",
		quality = 100,
		progress = 700,
		itemId = 40578,
		index = 113,
		experience = 33000,
		durability = 12,
		clientId = 37126,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				amount = 7,
				clientId = 28962,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				amount = 4,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28632,
				name = "Mystic Armor",
				itemId = 32064
			},
			{
				amount = 8,
				clientId = 40281,
				name = "Winterwool",
				itemId = 43733
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Helmet",
		slotName = "cloth helmet",
		quality = 100,
		progress = 700,
		itemId = 40584,
		index = 114,
		experience = 33000,
		durability = 12,
		clientId = 37132,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				amount = 7,
				clientId = 28962,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				amount = 4,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28633,
				name = "Mystic Helmet",
				itemId = 32065
			},
			{
				amount = 8,
				clientId = 40281,
				name = "Winterwool",
				itemId = 43733
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Legs",
		slotName = "cloth legs",
		quality = 100,
		progress = 700,
		itemId = 40585,
		index = 115,
		experience = 33000,
		durability = 12,
		clientId = 37133,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				amount = 4,
				clientId = 28962,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				amount = 7,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28631,
				name = "Mystic Legs",
				itemId = 32063
			},
			{
				amount = 8,
				clientId = 40281,
				name = "Winterwool",
				itemId = 43733
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Boots",
		slotName = "cloth boots",
		quality = 100,
		progress = 700,
		itemId = 40599,
		index = 116,
		experience = 33000,
		durability = 12,
		clientId = 37147,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				amount = 4,
				clientId = 28962,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				amount = 7,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28625,
				name = "Mystic Boots",
				itemId = 32057
			},
			{
				amount = 8,
				clientId = 40281,
				name = "Winterwool",
				itemId = 43733
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Armor",
		slotName = "leather armor",
		quality = 100,
		progress = 700,
		itemId = 40591,
		index = 117,
		experience = 33000,
		durability = 12,
		clientId = 37139,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				amount = 7,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 4,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28670,
				name = "Studded Armor",
				itemId = 32102
			},
			{
				amount = 8,
				clientId = 40269,
				name = "Draconic Hide",
				itemId = 43721
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Helmet",
		slotName = "leather helmet",
		quality = 100,
		progress = 700,
		itemId = 40593,
		index = 118,
		experience = 33000,
		durability = 12,
		clientId = 37141,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				amount = 7,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 4,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28677,
				name = "Studded Helmet",
				itemId = 32109
			},
			{
				amount = 8,
				clientId = 40269,
				name = "Draconic Hide",
				itemId = 43721
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Legs",
		slotName = "leather legs",
		quality = 100,
		progress = 700,
		itemId = 40594,
		index = 119,
		experience = 33000,
		durability = 12,
		clientId = 37142,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				amount = 4,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 7,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28675,
				name = "Studded Legs",
				itemId = 32107
			},
			{
				amount = 8,
				clientId = 40269,
				name = "Draconic Hide",
				itemId = 43721
			}
		}
	},
	{
		profession = 7,
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Boots",
		slotName = "leather boots",
		quality = 100,
		progress = 700,
		itemId = 40592,
		index = 120,
		experience = 33000,
		durability = 12,
		clientId = 37140,
		category = "armors",
		amount = 1,
		description = "",
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				amount = 4,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 7,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 1,
				clientId = 28672,
				name = "Studded Boots",
				itemId = 32104
			},
			{
				amount = 8,
				clientId = 40269,
				name = "Draconic Hide",
				itemId = 43721
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40728,
		index = 121,
		experience = 216000,
		durability = 4,
		progress = 100,
		clientId = 37276,
		name = "Small Sail Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		description = "Used for crafting a Sail at the Ship Builder.",
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				amount = 60,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 30,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			},
			{
				amount = 90,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40709,
		index = 122,
		experience = 552000,
		durability = 7,
		progress = 300,
		clientId = 37257,
		name = "Medium Sail Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		description = "Used for crafting a Sail at the Ship Builder.",
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				amount = 100,
				clientId = 28965,
				name = "silk",
				itemId = 32397
			},
			{
				amount = 50,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			},
			{
				amount = 150,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		specialization = "Sailmaker",
		name = "Large Sail Kit",
		slotName = "",
		quality = 0,
		progress = 525,
		itemId = 40694,
		index = 123,
		experience = 1728000,
		durability = 8,
		clientId = 37242,
		category = "Ship Module",
		amount = 1,
		description = "Used for crafting a Sail at the Ship Builder.",
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				amount = 240,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 120,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			},
			{
				amount = 360,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40740,
		index = 124,
		experience = 9500,
		durability = 7,
		progress = 225,
		clientId = 37288,
		name = "Thread Spool",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 8,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40700,
		index = 125,
		experience = 60000,
		durability = 8,
		progress = 525,
		clientId = 37248,
		name = "Luxury Thread Spool",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 25,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40678,
		index = 126,
		experience = 24000,
		durability = 7,
		progress = 225,
		clientId = 37226,
		name = "Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 15,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40714,
		index = 127,
		experience = 60000,
		durability = 8,
		progress = 525,
		clientId = 37262,
		name = "Refined Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 15,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 5,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40699,
		index = 128,
		experience = 101000,
		durability = 9,
		progress = 550,
		clientId = 37247,
		name = "Luxury Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 20,
				clientId = 28962,
				name = "artisan cloth",
				itemId = 32394
			},
			{
				amount = 15,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40677,
		index = 129,
		experience = 18000,
		durability = 7,
		progress = 225,
		clientId = 37225,
		name = "Carpet",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 10,
				clientId = 28963,
				name = "craftman's cloth",
				itemId = 32395
			},
			{
				amount = 5,
				clientId = 28972,
				name = "craftman's thread",
				itemId = 32404
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40698,
		index = 130,
		experience = 72000,
		durability = 8,
		progress = 525,
		clientId = 37246,
		name = "Luxury Carpet",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 15,
				clientId = 28964,
				name = "merchant's cloth",
				itemId = 32396
			},
			{
				amount = 15,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40724,
		index = 131,
		experience = 119200,
		durability = 7,
		progress = 300,
		clientId = 37272,
		name = "Small Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				amount = 50,
				clientId = 28973,
				name = "fine thread",
				itemId = 32405
			},
			{
				amount = 15,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40705,
		index = 132,
		experience = 384000,
		durability = 7,
		progress = 500,
		clientId = 37253,
		name = "Medium Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				amount = 130,
				clientId = 28969,
				name = "merchant's thread",
				itemId = 32401
			},
			{
				amount = 30,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40690,
		index = 133,
		experience = 1272000,
		durability = 9,
		progress = 550,
		clientId = 37238,
		name = "Large Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 320,
				clientId = 28970,
				name = "artisan thread",
				itemId = 32402
			},
			{
				amount = 100,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth armor",
		itemId = 32021,
		index = 134,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28589,
		name = "Shadecloth Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth helmet",
		itemId = 32027,
		index = 135,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28595,
		name = "Shadecloth Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth legs",
		itemId = 32028,
		index = 136,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28596,
		name = "Shadecloth Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth boots",
		itemId = 32024,
		index = 137,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28592,
		name = "Shadecloth Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather armor",
		itemId = 32066,
		index = 138,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28634,
		name = "Hide Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather helmet",
		itemId = 32072,
		index = 139,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28640,
		name = "Hide Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather legs",
		itemId = 32073,
		index = 140,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28641,
		name = "Hide Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather boots",
		itemId = 32069,
		index = 141,
		experience = 640,
		durability = 3,
		progress = 50,
		clientId = 28637,
		name = "Hide Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		description = "",
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46232,
		index = 142,
		experience = 4800,
		durability = 3,
		progress = 50,
		clientId = 42780,
		name = "Cheap Rug",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		description = "Used in housing upgrades.",
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 5,
				clientId = 28966,
				name = "simple cloth",
				itemId = 32398
			},
			{
				amount = 3,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46698,
		index = 143,
		experience = 6400,
		durability = 7,
		progress = 180,
		clientId = 43246,
		name = "Simple Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		description = "Together with 'Simple Headgear' can be crafted into a 'Simple Barding'.",
		level = {
			single = 12,
			mass = 17
		},
		materials = {
			{
				amount = 4,
				clientId = 28726,
				name = "copper ingot",
				itemId = 32158
			},
			{
				amount = 10,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46699,
		index = 144,
		experience = 8800,
		durability = 7,
		progress = 200,
		clientId = 43247,
		name = "Composed Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		description = "Together with 'Composed Headgear' can be crafted into a 'Composed Barding'.",
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				amount = 8,
				clientId = 28723,
				name = "iron ingot",
				itemId = 32155
			},
			{
				amount = 11,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38864
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46700,
		index = 145,
		experience = 26400,
		durability = 7,
		progress = 350,
		clientId = 43248,
		name = "Advanced Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		description = "Together with 'Advanced Headgear' can be crafted into a 'Advanced Barding'.",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 10,
				clientId = 28723,
				name = "iron ingot",
				itemId = 32155
			},
			{
				amount = 20,
				clientId = 35433,
				name = "Craftman's Leather",
				itemId = 38865
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46701,
		index = 146,
		experience = 51200,
		durability = 8,
		progress = 525,
		clientId = 43249,
		name = "Artisan Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		description = "Together with 'Artisan Headgear' can be crafted into a 'Artisan Barding'.",
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				amount = 17,
				clientId = 28724,
				name = "steel ingot",
				itemId = 32156
			},
			{
				amount = 25,
				clientId = 35434,
				name = "Tanned Leather",
				itemId = 38866
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46702,
		index = 147,
		experience = 57600,
		durability = 9,
		progress = 650,
		clientId = 43250,
		name = "Superior Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		description = "Together with 'Superior Headgear' can be crafted into a 'Superior Barding'.",
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				amount = 10,
				clientId = 28725,
				name = "cobalt ingot",
				itemId = 32157
			},
			{
				amount = 22,
				clientId = 35435,
				name = "Merchant's Leather",
				itemId = 38867
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		specialization = "Patchworker",
		name = "War Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46703,
		index = 148,
		experience = 194400,
		durability = 12,
		clientId = 43251,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'War Headgear' can be crafted into a 'War Barding'.",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				amount = 22,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 10,
				clientId = 28951,
				name = "ruby",
				itemId = 32383
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		specialization = "Patchworker",
		name = "Explorer Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46704,
		index = 149,
		experience = 194400,
		durability = 12,
		clientId = 43252,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'Explorer Headgear' can be crafted into a 'Explorer Barding'.",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				amount = 22,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 10,
				clientId = 28952,
				name = "sapphire",
				itemId = 32384
			}
		}
	},
	{
		profession = 7,
		tier = -1,
		specialization = "Patchworker",
		name = "Professional Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		itemId = 46705,
		index = 150,
		experience = 194400,
		durability = 12,
		clientId = 43253,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'Professional Headgear' can be crafted into a 'Professional Barding'.",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				name = "titanium ingot",
				itemId = 32159
			},
			{
				amount = 22,
				clientId = 35436,
				name = "Artisan Leather",
				itemId = 38868
			},
			{
				amount = 10,
				clientId = 28953,
				name = "topaz",
				itemId = 32385
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionWeaving] = {
	{
		profession = 7,
		tier = 1,
		slotName = "cloth armor",
		itemId = 32021,
		index = 1,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28589,
		name = "Shadecloth Armor",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "Simple Cloth",
				itemId = 38881
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38880
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth helmet",
		itemId = 32027,
		index = 2,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28595,
		name = "Shadecloth Helmet",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "Simple Cloth",
				itemId = 38885
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38884
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth legs",
		itemId = 32028,
		index = 3,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28596,
		name = "Shadecloth Legs",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "Simple Cloth",
				itemId = 38889
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38888
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "cloth boots",
		itemId = 32024,
		index = 4,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28592,
		name = "Shadecloth Boots",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				name = "Simple Cloth",
				itemId = 38893
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38892
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather armor",
		itemId = 32066,
		index = 5,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28634,
		name = "Hide Armor",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38879
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38880
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather helmet",
		itemId = 32072,
		index = 6,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28640,
		name = "Hide Helmet",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38883
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38884
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather legs",
		itemId = 32073,
		index = 7,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28641,
		name = "Hide Legs",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38887
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38888
			}
		}
	},
	{
		profession = 7,
		tier = 1,
		slotName = "leather boots",
		itemId = 32069,
		index = 8,
		experience = 0,
		durability = 3,
		progress = 50,
		clientId = 28637,
		name = "Hide Boots",
		category = "quest",
		amount = 1,
		quality = 50,
		description = "",
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				name = "Coarse Leather",
				itemId = 38891
			},
			{
				amount = 1,
				clientId = 28971,
				name = "Coarse Thread",
				itemId = 38892
			}
		}
	}
}

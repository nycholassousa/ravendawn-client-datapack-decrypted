-- chunkname: @/modules/game_profession/recipes/weaving.lua

recipes = recipes or {}
recipes[ProfessionWeaving] = {
	{
		itemId = 38864,
		index = 1,
		experience = 610,
		durability = 4,
		name = "Coarse Leather",
		clientId = 35432,
		category = "leather",
		amount = 1,
		quality = 75,
		profession = 7,
		description = "Used in various recipes. Its rough texture provides a sense of rugged resilience.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 2,
				clientId = 35353,
				itemId = 38785,
				name = "Hide"
			}
		}
	},
	{
		itemId = 38865,
		index = 2,
		experience = 1200,
		durability = 6,
		name = "Craftman's Leather",
		clientId = 35433,
		category = "leather",
		amount = 1,
		quality = 150,
		profession = 7,
		description = "Used in various recipes. Skillfully treated and refined leather.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 4,
				clientId = 35353,
				itemId = 38785,
				name = "Hide"
			}
		}
	},
	{
		itemId = 38866,
		index = 3,
		experience = 1850,
		durability = 7,
		name = "Tanned Leather",
		clientId = 35434,
		category = "leather",
		amount = 1,
		quality = 200,
		profession = 7,
		description = "Used in various recipes. Smooth and flexible, it's a display of a meticulous tanning process.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 6,
				clientId = 35353,
				itemId = 38785,
				name = "Hide"
			}
		}
	},
	{
		itemId = 38867,
		index = 4,
		experience = 2400,
		durability = 8,
		name = "Merchant's Leather",
		clientId = 35435,
		category = "leather",
		amount = 1,
		quality = 425,
		profession = 7,
		description = "Used in various recipes. Its polished appearance signifies quality and sophistication.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 8,
				clientId = 35353,
				itemId = 38785,
				name = "Hide"
			}
		}
	},
	{
		itemId = 38868,
		index = 5,
		experience = 3050,
		durability = 9,
		name = "Artisan Leather",
		clientId = 35436,
		category = "leather",
		amount = 1,
		quality = 525,
		profession = 7,
		description = "Used in various recipes. Masterfully crafted, it's reserved only for the finest creations.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 10,
				clientId = 35353,
				itemId = 38785,
				name = "Hide"
			}
		}
	},
	{
		itemId = 32403,
		index = 6,
		experience = 610,
		durability = 4,
		name = "coarse thread",
		clientId = 28971,
		category = "threads",
		amount = 1,
		quality = 75,
		profession = 7,
		description = "Used in various recipes. Despite its unrefined appearance, it's suitable for crafting durable items.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 3,
				clientId = 28879,
				itemId = 32311,
				name = "cotton"
			}
		}
	},
	{
		itemId = 32404,
		index = 7,
		experience = 1200,
		durability = 6,
		name = "craftman's thread",
		clientId = 28972,
		category = "threads",
		amount = 1,
		quality = 150,
		profession = 7,
		description = "Used in various recipes. Stitching together sturdy creations, it stands up to the rigors of daily use.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 6,
				clientId = 28879,
				itemId = 32311,
				name = "cotton"
			}
		}
	},
	{
		itemId = 32405,
		index = 8,
		experience = 1850,
		durability = 7,
		name = "fine thread",
		clientId = 28973,
		category = "threads",
		amount = 1,
		quality = 200,
		profession = 7,
		description = "Used in various recipes. Delicate and refined, its slender fibers allow for intricate stitching.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 9,
				clientId = 28879,
				itemId = 32311,
				name = "cotton"
			}
		}
	},
	{
		itemId = 32401,
		index = 9,
		experience = 2400,
		durability = 8,
		name = "merchant's thread",
		clientId = 28969,
		category = "threads",
		amount = 1,
		quality = 425,
		profession = 7,
		description = "Used in various recipes. The lifeline of intricate textiles.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 12,
				clientId = 28879,
				itemId = 32311,
				name = "cotton"
			}
		}
	},
	{
		itemId = 32402,
		index = 10,
		experience = 3050,
		durability = 9,
		name = "artisan thread",
		clientId = 28970,
		category = "threads",
		amount = 1,
		quality = 525,
		profession = 7,
		description = "Used in various recipes. The foundation for textiles that transcend to become works of art.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 15,
				clientId = 28879,
				itemId = 32311,
				name = "cotton"
			}
		}
	},
	{
		itemId = 32398,
		index = 11,
		experience = 610,
		durability = 4,
		name = "simple cloth",
		clientId = 28966,
		category = "cloth",
		amount = 1,
		quality = 75,
		profession = 7,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 2,
				clientId = 28425,
				itemId = 31857,
				name = "wool"
			}
		}
	},
	{
		itemId = 32395,
		index = 12,
		experience = 1200,
		durability = 6,
		name = "craftman's cloth",
		clientId = 28963,
		category = "cloth",
		amount = 1,
		quality = 150,
		profession = 7,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 4,
				clientId = 28425,
				itemId = 31857,
				name = "wool"
			}
		}
	},
	{
		itemId = 32397,
		index = 13,
		experience = 1850,
		durability = 7,
		name = "silk",
		clientId = 28965,
		category = "cloth",
		amount = 1,
		quality = 175,
		profession = 7,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 6,
				clientId = 28425,
				itemId = 31857,
				name = "wool"
			}
		}
	},
	{
		itemId = 32396,
		index = 14,
		experience = 2400,
		durability = 8,
		name = "merchant's cloth",
		clientId = 28964,
		category = "cloth",
		amount = 1,
		quality = 425,
		profession = 7,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 8,
				clientId = 28425,
				itemId = 31857,
				name = "wool"
			}
		}
	},
	{
		itemId = 32394,
		index = 15,
		experience = 3050,
		durability = 9,
		name = "artisan cloth",
		clientId = 28962,
		category = "cloth",
		amount = 1,
		quality = 525,
		profession = 7,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 10,
				clientId = 28425,
				itemId = 31857,
				name = "wool"
			}
		}
	},
	{
		itemId = 32030,
		index = 16,
		experience = 1280,
		durability = 4,
		name = "Viper's Armor",
		clientId = 28598,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "cloth armor",
		tier = 2,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28589,
				itemId = 32021,
				name = "Shadecloth Armor"
			}
		}
	},
	{
		itemId = 32036,
		index = 17,
		experience = 1280,
		durability = 4,
		name = "Viper's Helmet",
		clientId = 28604,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "cloth helmet",
		tier = 2,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28595,
				itemId = 32027,
				name = "Shadecloth Helmet"
			}
		}
	},
	{
		itemId = 32037,
		index = 18,
		experience = 1280,
		durability = 4,
		name = "Viper's Legs",
		clientId = 28605,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "cloth legs",
		tier = 2,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28596,
				itemId = 32028,
				name = "Shadecloth Legs"
			}
		}
	},
	{
		itemId = 32033,
		index = 19,
		experience = 1280,
		durability = 4,
		name = "Viper's Boots",
		clientId = 28601,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "cloth boots",
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28592,
				itemId = 32024,
				name = "Shadecloth Boots"
			}
		}
	},
	{
		itemId = 32039,
		index = 20,
		experience = 6000,
		durability = 7,
		name = "Profane Armor",
		clientId = 28607,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "cloth armor",
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 2,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28598,
				itemId = 32030,
				name = "Viper's Armor"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32045,
		index = 21,
		experience = 6000,
		durability = 7,
		name = "Profane Helmet",
		clientId = 28613,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "cloth helmet",
		tier = 3,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 2,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28604,
				itemId = 32036,
				name = "Viper's Helmet"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32046,
		index = 22,
		experience = 6000,
		durability = 7,
		name = "Profane Legs",
		clientId = 28614,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "cloth legs",
		tier = 3,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				amount = 2,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28605,
				itemId = 32037,
				name = "Viper's Legs"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32042,
		index = 23,
		experience = 6000,
		durability = 7,
		name = "Profane Boots",
		clientId = 28610,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "cloth boots",
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				amount = 2,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28601,
				itemId = 32033,
				name = "Viper's Boots"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32048,
		index = 24,
		experience = 11000,
		durability = 7,
		name = "Celestial Armor",
		clientId = 28616,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "cloth armor",
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28607,
				itemId = 32039,
				name = "Profane Armor"
			},
			{
				amount = 5,
				clientId = 37495,
				itemId = 40947,
				name = "Phantasmagorical Cloth"
			}
		}
	},
	{
		itemId = 32054,
		index = 25,
		experience = 11000,
		durability = 7,
		name = "Celestial Helmet",
		clientId = 28622,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "cloth helmet",
		tier = 4,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28613,
				itemId = 32045,
				name = "Profane Helmet"
			},
			{
				amount = 5,
				clientId = 37495,
				itemId = 40947,
				name = "Phantasmagorical Cloth"
			}
		}
	},
	{
		itemId = 32055,
		index = 26,
		experience = 11000,
		durability = 7,
		name = "Celestial Legs",
		clientId = 28623,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "cloth legs",
		tier = 4,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28614,
				itemId = 32046,
				name = "Profane Legs"
			},
			{
				amount = 5,
				clientId = 37495,
				itemId = 40947,
				name = "Phantasmagorical Cloth"
			}
		}
	},
	{
		itemId = 32051,
		index = 27,
		experience = 11000,
		durability = 7,
		name = "Celestial Boots",
		clientId = 28619,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "cloth boots",
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28610,
				itemId = 32042,
				name = "Profane Boots"
			},
			{
				amount = 5,
				clientId = 37495,
				itemId = 40947,
				name = "Phantasmagorical Cloth"
			}
		}
	},
	{
		itemId = 32064,
		index = 28,
		experience = 24000,
		durability = 9,
		name = "Mystic Armor",
		clientId = 28632,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "cloth armor",
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				amount = 7,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 3,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28616,
				itemId = 32048,
				name = "Celestial Armor"
			},
			{
				amount = 6,
				clientId = 40271,
				itemId = 43723,
				name = "Greenweave Bolt"
			}
		}
	},
	{
		itemId = 32065,
		index = 29,
		experience = 24000,
		durability = 9,
		name = "Mystic Helmet",
		clientId = 28633,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "cloth helmet",
		tier = 5,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				amount = 7,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 3,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28622,
				itemId = 32054,
				name = "Celestial Helmet"
			},
			{
				amount = 6,
				clientId = 40271,
				itemId = 43723,
				name = "Greenweave Bolt"
			}
		}
	},
	{
		itemId = 32063,
		index = 30,
		experience = 24000,
		durability = 9,
		name = "Mystic Legs",
		clientId = 28631,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "cloth legs",
		tier = 5,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				amount = 3,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 7,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28623,
				itemId = 32055,
				name = "Celestial Legs"
			},
			{
				amount = 6,
				clientId = 40271,
				itemId = 43723,
				name = "Greenweave Bolt"
			}
		}
	},
	{
		itemId = 32057,
		index = 31,
		experience = 24000,
		durability = 9,
		name = "Mystic Boots",
		clientId = 28625,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "cloth boots",
		tier = 5,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				amount = 3,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 7,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28619,
				itemId = 32051,
				name = "Celestial Boots"
			},
			{
				amount = 6,
				clientId = 40271,
				itemId = 43723,
				name = "Greenweave Bolt"
			}
		}
	},
	{
		itemId = 32075,
		index = 32,
		experience = 1280,
		durability = 4,
		name = "Nomad Armor",
		clientId = 28643,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "leather armor",
		tier = 2,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28634,
				itemId = 32066,
				name = "Hide Armor"
			}
		}
	},
	{
		itemId = 32081,
		index = 33,
		experience = 1280,
		durability = 4,
		name = "Nomad Helmet",
		clientId = 28649,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "leather helmet",
		tier = 2,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28640,
				itemId = 32072,
				name = "Hide Helmet"
			}
		}
	},
	{
		itemId = 32082,
		index = 34,
		experience = 1280,
		durability = 4,
		name = "Nomad Legs",
		clientId = 28650,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "leather legs",
		tier = 2,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28641,
				itemId = 32073,
				name = "Hide Legs"
			}
		}
	},
	{
		itemId = 32078,
		index = 35,
		experience = 1280,
		durability = 4,
		name = "Nomad Boots",
		clientId = 28646,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 100,
		slotName = "leather boots",
		tier = 2,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 32403,
				name = "coarse thread"
			},
			{
				amount = 1,
				clientId = 28637,
				itemId = 32069,
				name = "Hide Boots"
			}
		}
	},
	{
		itemId = 32084,
		index = 36,
		experience = 6000,
		durability = 7,
		name = "Bruiser's Armor",
		clientId = 28652,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "leather armor",
		tier = 3,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 2,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28643,
				itemId = 32075,
				name = "Nomad Armor"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32090,
		index = 37,
		experience = 6000,
		durability = 7,
		name = "Bruiser's Helmet",
		clientId = 28658,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "leather helmet",
		tier = 3,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 2,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28649,
				itemId = 32081,
				name = "Nomad Helmet"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32091,
		index = 38,
		experience = 6000,
		durability = 7,
		name = "Bruiser's Legs",
		clientId = 28659,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "leather legs",
		tier = 3,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				amount = 2,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28650,
				itemId = 32082,
				name = "Nomad Legs"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32087,
		index = 39,
		experience = 6000,
		durability = 7,
		name = "Bruiser's Boots",
		clientId = 28655,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "leather boots",
		tier = 3,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				amount = 2,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			},
			{
				amount = 1,
				clientId = 28646,
				itemId = 32078,
				name = "Nomad Boots"
			},
			{
				amount = 3,
				clientId = 37479,
				itemId = 40931,
				name = "Shell Fragment"
			}
		}
	},
	{
		itemId = 32093,
		index = 40,
		experience = 11000,
		durability = 7,
		name = "Outlaw Armor",
		clientId = 28661,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "leather armor",
		tier = 4,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28652,
				itemId = 32084,
				name = "Bruiser's Armor"
			},
			{
				amount = 5,
				clientId = 37624,
				itemId = 41076,
				name = "Kaiman Scale"
			}
		}
	},
	{
		itemId = 32099,
		index = 41,
		experience = 11000,
		durability = 7,
		name = "Outlaw Helmet",
		clientId = 28667,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "leather helmet",
		tier = 4,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28658,
				itemId = 32090,
				name = "Bruiser's Helmet"
			},
			{
				amount = 5,
				clientId = 37624,
				itemId = 41076,
				name = "Kaiman Scale"
			}
		}
	},
	{
		itemId = 32100,
		index = 42,
		experience = 11000,
		durability = 7,
		name = "Outlaw Legs",
		clientId = 28668,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "leather legs",
		tier = 4,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28659,
				itemId = 32091,
				name = "Bruiser's Legs"
			},
			{
				amount = 5,
				clientId = 37624,
				itemId = 41076,
				name = "Kaiman Scale"
			}
		}
	},
	{
		itemId = 32096,
		index = 43,
		experience = 11000,
		durability = 7,
		name = "Outlaw Boots",
		clientId = 28664,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "leather boots",
		tier = 4,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 28655,
				itemId = 32087,
				name = "Bruiser's Boots"
			},
			{
				amount = 5,
				clientId = 37624,
				itemId = 41076,
				name = "Kaiman Scale"
			}
		}
	},
	{
		itemId = 32102,
		index = 44,
		experience = 24000,
		durability = 9,
		name = "Studded Armor",
		clientId = 28670,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "leather armor",
		tier = 5,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				amount = 7,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 3,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28661,
				itemId = 32093,
				name = "Outlaw Armor"
			},
			{
				amount = 6,
				clientId = 40266,
				itemId = 43718,
				name = "Composite Leather"
			}
		}
	},
	{
		itemId = 32109,
		index = 45,
		experience = 24000,
		durability = 9,
		name = "Studded Helmet",
		clientId = 28677,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "leather helmet",
		tier = 5,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				amount = 7,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 3,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28667,
				itemId = 32099,
				name = "Outlaw Helmet"
			},
			{
				amount = 6,
				clientId = 40266,
				itemId = 43718,
				name = "Composite Leather"
			}
		}
	},
	{
		itemId = 32107,
		index = 46,
		experience = 24000,
		durability = 9,
		name = "Studded Legs",
		clientId = 28675,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "leather legs",
		tier = 5,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				amount = 3,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 7,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28668,
				itemId = 32100,
				name = "Outlaw Legs"
			},
			{
				amount = 6,
				clientId = 40266,
				itemId = 43718,
				name = "Composite Leather"
			}
		}
	},
	{
		itemId = 32104,
		index = 47,
		experience = 24000,
		durability = 9,
		name = "Studded Boots",
		clientId = 28672,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "leather boots",
		tier = 5,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				amount = 3,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 7,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 28664,
				itemId = 32096,
				name = "Outlaw Boots"
			},
			{
				amount = 6,
				clientId = 40266,
				itemId = 43718,
				name = "Composite Leather"
			}
		}
	},
	{
		itemId = 38620,
		index = 48,
		experience = 19200,
		durability = 7,
		name = "Fry Cook Bracers",
		clientId = 35188,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "crafting bracers",
		tier = 1,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 8,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38621,
		index = 49,
		experience = 9600,
		durability = 6,
		name = "Fry Cook Helmet",
		clientId = 35189,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting helmet",
		tier = 1,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38618,
		index = 50,
		experience = 9600,
		durability = 6,
		name = "Fry Cook Armor",
		clientId = 35186,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting armor",
		tier = 1,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38622,
		index = 51,
		experience = 9600,
		durability = 6,
		name = "Fry Cook Legs",
		clientId = 35190,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting legs",
		tier = 1,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38619,
		index = 52,
		experience = 9600,
		durability = 6,
		name = "Fry Cook Boots",
		clientId = 35187,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting boots",
		tier = 1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38625,
		index = 53,
		experience = 38400,
		durability = 7,
		name = "Sous Chef Bracers",
		clientId = 35193,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting bracers",
		tier = 2,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 9,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35188,
				itemId = 38620,
				name = "Fry Cook Bracers"
			}
		}
	},
	{
		itemId = 38626,
		index = 54,
		experience = 19200,
		durability = 7,
		name = "Sous Chef Helmet",
		clientId = 35194,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting helmet",
		tier = 2,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35189,
				itemId = 38621,
				name = "Fry Cook Helmet"
			}
		}
	},
	{
		itemId = 38623,
		index = 55,
		experience = 19200,
		durability = 7,
		name = "Sous Chef Armor",
		clientId = 35191,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting armor",
		tier = 2,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35186,
				itemId = 38618,
				name = "Fry Cook Armor"
			}
		}
	},
	{
		itemId = 38627,
		index = 56,
		experience = 19200,
		durability = 7,
		name = "Sous Chef Legs",
		clientId = 35195,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting legs",
		tier = 2,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35190,
				itemId = 38622,
				name = "Fry Cook Legs"
			}
		}
	},
	{
		itemId = 38624,
		index = 57,
		experience = 19200,
		durability = 7,
		name = "Sous Chef Boots",
		clientId = 35192,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting boots",
		tier = 2,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35187,
				itemId = 38619,
				name = "Fry Cook Boots"
			}
		}
	},
	{
		itemId = 38630,
		index = 58,
		experience = 76800,
		durability = 9,
		name = "Master of Cuisine Bracers",
		clientId = 35198,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting bracers",
		tier = 3,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 16,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35193,
				itemId = 38625,
				name = "Sous Chef Bracers"
			}
		}
	},
	{
		itemId = 38631,
		index = 59,
		experience = 38400,
		durability = 9,
		name = "Master of Cuisine Helmet",
		clientId = 35199,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting helmet",
		tier = 3,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35194,
				itemId = 38626,
				name = "Sous Chef Helmet"
			}
		}
	},
	{
		itemId = 38628,
		index = 60,
		experience = 38400,
		durability = 9,
		name = "Master of Cuisine Armor",
		clientId = 35196,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting armor",
		tier = 3,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35191,
				itemId = 38623,
				name = "Sous Chef Armor"
			}
		}
	},
	{
		itemId = 38632,
		index = 61,
		experience = 38400,
		durability = 8,
		name = "Master of Cuisine Legs",
		clientId = 35200,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting legs",
		tier = 3,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35195,
				itemId = 38627,
				name = "Sous Chef Legs"
			}
		}
	},
	{
		itemId = 38629,
		index = 62,
		experience = 38400,
		durability = 8,
		name = "Master of Cuisine Boots",
		clientId = 35197,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting boots",
		tier = 3,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35192,
				itemId = 38624,
				name = "Sous Chef Boots"
			}
		}
	},
	{
		itemId = 38635,
		index = 63,
		experience = 19200,
		durability = 7,
		name = "Loom Apprentice Gloves",
		clientId = 35203,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "crafting gloves",
		tier = 1,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 8,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38636,
		index = 64,
		experience = 9600,
		durability = 6,
		name = "Loom Apprentice Helmet",
		clientId = 35204,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting helmet",
		tier = 1,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38633,
		index = 65,
		experience = 9600,
		durability = 6,
		name = "Loom Apprentice Armor",
		clientId = 35201,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting armor",
		tier = 1,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38637,
		index = 66,
		experience = 9600,
		durability = 6,
		name = "Loom Apprentice Legs",
		clientId = 35205,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting legs",
		tier = 1,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38634,
		index = 67,
		experience = 9600,
		durability = 6,
		name = "Loom Apprentice Boots",
		clientId = 35202,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting boots",
		tier = 1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38640,
		index = 68,
		experience = 38400,
		durability = 7,
		name = "Threadspinner Gloves",
		clientId = 35208,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting gloves",
		tier = 2,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 9,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35203,
				itemId = 38635,
				name = "Loom Apprentice Gloves"
			}
		}
	},
	{
		itemId = 38641,
		index = 69,
		experience = 19200,
		durability = 7,
		name = "Threadspinner Helmet",
		clientId = 35209,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting helmet",
		tier = 2,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35204,
				itemId = 38636,
				name = "Loom Apprentice Helmet"
			}
		}
	},
	{
		itemId = 38638,
		index = 70,
		experience = 19200,
		durability = 7,
		name = "Threadspinner Armor",
		clientId = 35206,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting armor",
		tier = 2,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35201,
				itemId = 38633,
				name = "Loom Apprentice Armor"
			}
		}
	},
	{
		itemId = 38642,
		index = 71,
		experience = 19200,
		durability = 7,
		name = "Threadspinner Legs",
		clientId = 35210,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting legs",
		tier = 2,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35205,
				itemId = 38637,
				name = "Loom Apprentice Legs"
			}
		}
	},
	{
		itemId = 38639,
		index = 72,
		experience = 19200,
		durability = 7,
		name = "Threadspinner Boots",
		clientId = 35207,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting boots",
		tier = 2,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35202,
				itemId = 38634,
				name = "Loom Apprentice Boots"
			}
		}
	},
	{
		itemId = 38645,
		index = 73,
		experience = 76800,
		durability = 9,
		name = "Master Tailor Bracers",
		clientId = 35213,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting bracers",
		tier = 3,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 16,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35208,
				itemId = 38640,
				name = "Threadspinner Gloves"
			}
		}
	},
	{
		itemId = 38646,
		index = 74,
		experience = 38400,
		durability = 9,
		name = "Master Tailor Helmet",
		clientId = 35214,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting helmet",
		tier = 3,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35209,
				itemId = 38641,
				name = "Threadspinner Helmet"
			}
		}
	},
	{
		itemId = 38643,
		index = 75,
		experience = 38400,
		durability = 9,
		name = "Master Tailor Armor",
		clientId = 35211,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting armor",
		tier = 3,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35206,
				itemId = 38638,
				name = "Threadspinner Armor"
			}
		}
	},
	{
		itemId = 38647,
		index = 76,
		experience = 38400,
		durability = 8,
		name = "Master Tailor Legs",
		clientId = 35215,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting legs",
		tier = 3,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35210,
				itemId = 38642,
				name = "Threadspinner Legs"
			}
		}
	},
	{
		itemId = 38644,
		index = 77,
		experience = 38400,
		durability = 8,
		name = "Master Tailor Boots",
		clientId = 35212,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting boots",
		tier = 3,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35207,
				itemId = 38639,
				name = "Threadspinner Boots"
			}
		}
	},
	{
		itemId = 38605,
		index = 78,
		experience = 19200,
		durability = 7,
		name = "Workshop Assistant Gloves",
		clientId = 35173,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "crafting gloves",
		tier = 1,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 8,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38606,
		index = 79,
		experience = 9600,
		durability = 6,
		name = "Workshop Assistant Helmet",
		clientId = 35174,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting helmet",
		tier = 1,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38603,
		index = 80,
		experience = 9600,
		durability = 6,
		name = "Workshop Assistant Armor",
		clientId = 35171,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting armor",
		tier = 1,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38607,
		index = 81,
		experience = 9600,
		durability = 6,
		name = "Workshop Assistant Legs",
		clientId = 35175,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting legs",
		tier = 1,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38604,
		index = 82,
		experience = 9600,
		durability = 6,
		name = "Workshop Assistant Boots",
		clientId = 35172,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting boots",
		tier = 1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38610,
		index = 83,
		experience = 38400,
		durability = 7,
		name = "Woodworker Gloves",
		clientId = 35178,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting gloves",
		tier = 2,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 9,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35173,
				itemId = 38605,
				name = "Workshop Assistant Gloves"
			}
		}
	},
	{
		itemId = 38611,
		index = 84,
		experience = 19200,
		durability = 7,
		name = "Woodworker Helmet",
		clientId = 35179,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting helmet",
		tier = 2,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35174,
				itemId = 38606,
				name = "Workshop Assistant Helmet"
			}
		}
	},
	{
		itemId = 38608,
		index = 85,
		experience = 19200,
		durability = 7,
		name = "Woodworker Armor",
		clientId = 35176,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting armor",
		tier = 2,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35171,
				itemId = 38603,
				name = "Workshop Assistant Armor"
			}
		}
	},
	{
		itemId = 38612,
		index = 86,
		experience = 19200,
		durability = 7,
		name = "Woodworker Legs",
		clientId = 35180,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting legs",
		tier = 2,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35175,
				itemId = 38607,
				name = "Workshop Assistant Legs"
			}
		}
	},
	{
		itemId = 38609,
		index = 87,
		experience = 19200,
		durability = 7,
		name = "Woodworker Boots",
		clientId = 35177,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting boots",
		tier = 2,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35172,
				itemId = 38604,
				name = "Workshop Assistant Boots"
			}
		}
	},
	{
		itemId = 38615,
		index = 88,
		experience = 76800,
		durability = 9,
		name = "Master Mason Gloves",
		clientId = 35183,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting gloves",
		tier = 3,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 16,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35178,
				itemId = 38610,
				name = "Woodworker Gloves"
			}
		}
	},
	{
		itemId = 38616,
		index = 89,
		experience = 38400,
		durability = 9,
		name = "Master Mason Helmet",
		clientId = 35184,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting helmet",
		tier = 3,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35179,
				itemId = 38611,
				name = "Woodworker Helmet"
			}
		}
	},
	{
		itemId = 38613,
		index = 90,
		experience = 38400,
		durability = 9,
		name = "Master Mason Armor",
		clientId = 35181,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting armor",
		tier = 3,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35176,
				itemId = 38608,
				name = "Woodworker Armor"
			}
		}
	},
	{
		itemId = 38617,
		index = 91,
		experience = 38400,
		durability = 8,
		name = "Master Mason Legs",
		clientId = 35185,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting legs",
		tier = 3,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35180,
				itemId = 38612,
				name = "Woodworker Legs"
			}
		}
	},
	{
		itemId = 38614,
		index = 92,
		experience = 38400,
		durability = 8,
		name = "Master Mason Boots",
		clientId = 35182,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting boots",
		tier = 3,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35177,
				itemId = 38609,
				name = "Woodworker Boots"
			}
		}
	},
	{
		itemId = 38590,
		index = 93,
		experience = 19200,
		durability = 7,
		name = "Apprentice Anvil Bracers",
		clientId = 35158,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 225,
		slotName = "crafting bracers",
		tier = 1,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				amount = 8,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 8,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38591,
		index = 94,
		experience = 9600,
		durability = 6,
		name = "Apprentice Anvil Helmet",
		clientId = 35159,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting helmet",
		tier = 1,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38588,
		index = 95,
		experience = 9600,
		durability = 6,
		name = "Apprentice Anvil Armor",
		clientId = 35156,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 200,
		slotName = "crafting armor",
		tier = 1,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				amount = 5,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 3,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38592,
		index = 96,
		experience = 9600,
		durability = 6,
		name = "Apprentice Anvil Legs",
		clientId = 35160,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting legs",
		tier = 1,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38589,
		index = 97,
		experience = 9600,
		durability = 6,
		name = "Apprentice Anvil Boots",
		clientId = 35157,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 150,
		slotName = "crafting boots",
		tier = 1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 3,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 38595,
		index = 98,
		experience = 38400,
		durability = 7,
		name = "Silversmith Bracers",
		clientId = 35163,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting bracers",
		tier = 2,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				amount = 12,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 9,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35158,
				itemId = 38590,
				name = "Apprentice Anvil Bracers"
			}
		}
	},
	{
		itemId = 38596,
		index = 99,
		experience = 19200,
		durability = 7,
		name = "Silversmith Helmet",
		clientId = 35164,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting helmet",
		tier = 2,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35159,
				itemId = 38591,
				name = "Apprentice Anvil Helmet"
			}
		}
	},
	{
		itemId = 38593,
		index = 100,
		experience = 19200,
		durability = 7,
		name = "Silversmith Armor",
		clientId = 35161,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 350,
		slotName = "crafting armor",
		tier = 2,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 8,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 3,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35156,
				itemId = 38588,
				name = "Apprentice Anvil Armor"
			}
		}
	},
	{
		itemId = 38597,
		index = 101,
		experience = 19200,
		durability = 7,
		name = "Silversmith Legs",
		clientId = 35165,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting legs",
		tier = 2,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35160,
				itemId = 38592,
				name = "Apprentice Anvil Legs"
			}
		}
	},
	{
		itemId = 38594,
		index = 102,
		experience = 19200,
		durability = 7,
		name = "Silversmith Boots",
		clientId = 35162,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 250,
		slotName = "crafting boots",
		tier = 2,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 3,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 8,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 1,
				clientId = 35157,
				itemId = 38589,
				name = "Apprentice Anvil Boots"
			}
		}
	},
	{
		itemId = 38600,
		index = 103,
		experience = 76800,
		durability = 9,
		name = "Forgemaster Bracers",
		clientId = 35168,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting bracers",
		tier = 3,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				amount = 16,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 16,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35163,
				itemId = 38595,
				name = "Silversmith Bracers"
			}
		}
	},
	{
		itemId = 38601,
		index = 104,
		experience = 38400,
		durability = 9,
		name = "Forgemaster Helmet",
		clientId = 35169,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting helmet",
		tier = 3,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35164,
				itemId = 38596,
				name = "Silversmith Helmet"
			}
		}
	},
	{
		itemId = 38598,
		index = 105,
		experience = 38400,
		durability = 9,
		name = "Forgemaster Armor",
		clientId = 35166,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting armor",
		tier = 3,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				amount = 12,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 4,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35161,
				itemId = 38593,
				name = "Silversmith Armor"
			}
		}
	},
	{
		itemId = 38602,
		index = 106,
		experience = 38400,
		durability = 8,
		name = "Forgemaster Legs",
		clientId = 35170,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting legs",
		tier = 3,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35165,
				itemId = 38597,
				name = "Silversmith Legs"
			}
		}
	},
	{
		itemId = 38599,
		index = 107,
		experience = 38400,
		durability = 8,
		name = "Forgemaster Boots",
		clientId = 35167,
		category = "crafting",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "",
		progress = 525,
		slotName = "crafting boots",
		tier = 3,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 4,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 12,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 1,
				clientId = 35162,
				itemId = 38594,
				name = "Silversmith Boots"
			}
		}
	},
	{
		itemId = 32398,
		index = 108,
		experience = 610,
		durability = 4,
		name = "simple cloth",
		clientId = 28966,
		category = "cloth",
		amount = 1,
		quality = 75,
		profession = 7,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		progress = 25,
		slotName = "",
		tier = -1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				amount = 6,
				clientId = 34475,
				itemId = 37907,
				name = "spool of hair"
			}
		}
	},
	{
		itemId = 32395,
		index = 109,
		experience = 1200,
		durability = 6,
		name = "craftman's cloth",
		clientId = 28963,
		category = "cloth",
		amount = 1,
		quality = 150,
		profession = 7,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		progress = 150,
		slotName = "",
		tier = -1,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				amount = 12,
				clientId = 34475,
				itemId = 37907,
				name = "spool of hair"
			}
		}
	},
	{
		itemId = 32397,
		index = 110,
		experience = 1850,
		durability = 7,
		name = "silk",
		clientId = 28965,
		category = "cloth",
		amount = 1,
		quality = 175,
		profession = 7,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				amount = 18,
				clientId = 34475,
				itemId = 37907,
				name = "spool of hair"
			}
		}
	},
	{
		itemId = 32396,
		index = 111,
		experience = 2400,
		durability = 8,
		name = "merchant's cloth",
		clientId = 28964,
		category = "cloth",
		amount = 1,
		quality = 425,
		profession = 7,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		progress = 450,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 24,
				clientId = 34475,
				itemId = 37907,
				name = "spool of hair"
			}
		}
	},
	{
		itemId = 32394,
		index = 112,
		experience = 3050,
		durability = 9,
		name = "artisan cloth",
		clientId = 28962,
		category = "cloth",
		amount = 1,
		quality = 525,
		profession = 7,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 30,
				clientId = 34475,
				itemId = 37907,
				name = "spool of hair"
			}
		}
	},
	{
		itemId = 40578,
		index = 113,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37126,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Armor",
		slotName = "cloth armor",
		quality = 100,
		progress = 700,
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				amount = 7,
				clientId = 28962,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				amount = 4,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28632,
				itemId = 32064,
				name = "Mystic Armor"
			},
			{
				amount = 8,
				clientId = 40281,
				itemId = 43733,
				name = "Winterwool"
			}
		}
	},
	{
		itemId = 40584,
		index = 114,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37132,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Helmet",
		slotName = "cloth helmet",
		quality = 100,
		progress = 700,
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				amount = 7,
				clientId = 28962,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				amount = 4,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28633,
				itemId = 32065,
				name = "Mystic Helmet"
			},
			{
				amount = 8,
				clientId = 40281,
				itemId = 43733,
				name = "Winterwool"
			}
		}
	},
	{
		itemId = 40585,
		index = 115,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37133,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Legs",
		slotName = "cloth legs",
		quality = 100,
		progress = 700,
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				amount = 4,
				clientId = 28962,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				amount = 7,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28631,
				itemId = 32063,
				name = "Mystic Legs"
			},
			{
				amount = 8,
				clientId = 40281,
				itemId = 43733,
				name = "Winterwool"
			}
		}
	},
	{
		itemId = 40599,
		index = 116,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37147,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Tailor",
		name = "Warlock Boots",
		slotName = "cloth boots",
		quality = 100,
		progress = 700,
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				amount = 4,
				clientId = 28962,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				amount = 7,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28625,
				itemId = 32057,
				name = "Mystic Boots"
			},
			{
				amount = 8,
				clientId = 40281,
				itemId = 43733,
				name = "Winterwool"
			}
		}
	},
	{
		itemId = 40591,
		index = 117,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37139,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Armor",
		slotName = "leather armor",
		quality = 100,
		progress = 700,
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				amount = 7,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 4,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28670,
				itemId = 32102,
				name = "Studded Armor"
			},
			{
				amount = 8,
				clientId = 40269,
				itemId = 43721,
				name = "Draconic Hide"
			}
		}
	},
	{
		itemId = 40593,
		index = 118,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37141,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Helmet",
		slotName = "leather helmet",
		quality = 100,
		progress = 700,
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				amount = 7,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 4,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28677,
				itemId = 32109,
				name = "Studded Helmet"
			},
			{
				amount = 8,
				clientId = 40269,
				itemId = 43721,
				name = "Draconic Hide"
			}
		}
	},
	{
		itemId = 40594,
		index = 119,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37142,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Legs",
		slotName = "leather legs",
		quality = 100,
		progress = 700,
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				amount = 4,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 7,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28675,
				itemId = 32107,
				name = "Studded Legs"
			},
			{
				amount = 8,
				clientId = 40269,
				itemId = 43721,
				name = "Draconic Hide"
			}
		}
	},
	{
		itemId = 40592,
		index = 120,
		experience = 33000,
		durability = 12,
		profession = 7,
		clientId = 37140,
		category = "armors",
		amount = 1,
		description = "",
		tier = 6,
		specialization = "Patchworker",
		name = "Guerrila Boots",
		slotName = "leather boots",
		quality = 100,
		progress = 700,
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				amount = 4,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 7,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 1,
				clientId = 28672,
				itemId = 32104,
				name = "Studded Boots"
			},
			{
				amount = 8,
				clientId = 40269,
				itemId = 43721,
				name = "Draconic Hide"
			}
		}
	},
	{
		itemId = 40728,
		index = 121,
		experience = 216000,
		durability = 4,
		name = "Small Sail Kit",
		clientId = 37276,
		category = "Ship Module",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used for crafting a Sail at the Ship Builder.",
		progress = 100,
		slotName = "",
		tier = -1,
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				amount = 60,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 30,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			},
			{
				amount = 90,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 40709,
		index = 122,
		experience = 552000,
		durability = 7,
		name = "Medium Sail Kit",
		clientId = 37257,
		category = "Ship Module",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used for crafting a Sail at the Ship Builder.",
		progress = 300,
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				amount = 100,
				clientId = 28965,
				itemId = 32397,
				name = "silk"
			},
			{
				amount = 50,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			},
			{
				amount = 150,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			}
		}
	},
	{
		itemId = 40694,
		index = 123,
		experience = 1728000,
		durability = 8,
		profession = 7,
		clientId = 37242,
		category = "Ship Module",
		amount = 1,
		description = "Used for crafting a Sail at the Ship Builder.",
		tier = -1,
		specialization = "Sailmaker",
		name = "Large Sail Kit",
		slotName = "",
		quality = 0,
		progress = 525,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				amount = 240,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 120,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			},
			{
				amount = 360,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		itemId = 40740,
		index = 124,
		experience = 9500,
		durability = 7,
		name = "Thread Spool",
		clientId = 37288,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 8,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 40700,
		index = 125,
		experience = 60000,
		durability = 8,
		name = "Luxury Thread Spool",
		clientId = 37248,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 25,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		itemId = 40678,
		index = 126,
		experience = 24000,
		durability = 7,
		name = "Cloth Roll",
		clientId = 37226,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 15,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 40714,
		index = 127,
		experience = 60000,
		durability = 8,
		name = "Refined Cloth Roll",
		clientId = 37262,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 15,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 5,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		itemId = 40699,
		index = 128,
		experience = 101000,
		durability = 9,
		name = "Luxury Cloth Roll",
		clientId = 37247,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 20,
				clientId = 28962,
				itemId = 32394,
				name = "artisan cloth"
			},
			{
				amount = 15,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			}
		}
	},
	{
		itemId = 40677,
		index = 129,
		experience = 18000,
		durability = 7,
		name = "Carpet",
		clientId = 37225,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 225,
		slotName = "",
		tier = -1,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				amount = 10,
				clientId = 28963,
				itemId = 32395,
				name = "craftman's cloth"
			},
			{
				amount = 5,
				clientId = 28972,
				itemId = 32404,
				name = "craftman's thread"
			}
		}
	},
	{
		itemId = 40698,
		index = 130,
		experience = 72000,
		durability = 8,
		name = "Luxury Carpet",
		clientId = 37246,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				amount = 15,
				clientId = 28964,
				itemId = 32396,
				name = "merchant's cloth"
			},
			{
				amount = 15,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			}
		}
	},
	{
		itemId = 40724,
		index = 131,
		experience = 119200,
		durability = 7,
		name = "Small Fishing Nets Kit",
		clientId = 37272,
		category = "Ship Module",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 300,
		slotName = "",
		tier = -1,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				amount = 50,
				clientId = 28973,
				itemId = 32405,
				name = "fine thread"
			},
			{
				amount = 15,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			}
		}
	},
	{
		itemId = 40705,
		index = 132,
		experience = 384000,
		durability = 7,
		name = "Medium Fishing Nets Kit",
		clientId = 37253,
		category = "Ship Module",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 500,
		slotName = "",
		tier = -1,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				amount = 130,
				clientId = 28969,
				itemId = 32401,
				name = "merchant's thread"
			},
			{
				amount = 30,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			}
		}
	},
	{
		itemId = 40690,
		index = 133,
		experience = 1272000,
		durability = 9,
		name = "Large Fishing Nets Kit",
		clientId = 37238,
		category = "Ship Module",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		progress = 550,
		slotName = "",
		tier = -1,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				amount = 320,
				clientId = 28970,
				itemId = 32402,
				name = "artisan thread"
			},
			{
				amount = 100,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			}
		}
	},
	{
		itemId = 32021,
		index = 134,
		experience = 640,
		durability = 3,
		name = "Shadecloth Armor",
		clientId = 28589,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth armor",
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		itemId = 32027,
		index = 135,
		experience = 640,
		durability = 3,
		name = "Shadecloth Helmet",
		clientId = 28595,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth helmet",
		tier = 1,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		itemId = 32028,
		index = 136,
		experience = 640,
		durability = 3,
		name = "Shadecloth Legs",
		clientId = 28596,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth legs",
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		itemId = 32024,
		index = 137,
		experience = 640,
		durability = 3,
		name = "Shadecloth Boots",
		clientId = 28592,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth boots",
		tier = 1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			}
		}
	},
	{
		itemId = 32066,
		index = 138,
		experience = 640,
		durability = 3,
		name = "Hide Armor",
		clientId = 28634,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather armor",
		tier = 1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 32072,
		index = 139,
		experience = 640,
		durability = 3,
		name = "Hide Helmet",
		clientId = 28640,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather helmet",
		tier = 1,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 32073,
		index = 140,
		experience = 640,
		durability = 3,
		name = "Hide Legs",
		clientId = 28641,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather legs",
		tier = 1,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 32069,
		index = 141,
		experience = 640,
		durability = 3,
		name = "Hide Boots",
		clientId = 28637,
		category = "armors",
		amount = 1,
		quality = 100,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather boots",
		tier = 1,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 46232,
		index = 142,
		experience = 4800,
		durability = 3,
		name = "Cheap Rug",
		clientId = 42780,
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Used in housing upgrades.",
		progress = 50,
		slotName = "",
		tier = -1,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				amount = 5,
				clientId = 28966,
				itemId = 32398,
				name = "simple cloth"
			},
			{
				amount = 3,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 46698,
		index = 143,
		experience = 6400,
		durability = 7,
		name = "Simple Saddle",
		clientId = 43246,
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Together with 'Simple Headgear' can be crafted into a 'Simple Barding'.",
		progress = 180,
		slotName = "",
		tier = -1,
		level = {
			single = 12,
			mass = 17
		},
		materials = {
			{
				amount = 4,
				clientId = 28726,
				itemId = 32158,
				name = "copper ingot"
			},
			{
				amount = 10,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 46699,
		index = 144,
		experience = 8800,
		durability = 7,
		name = "Composed Saddle",
		clientId = 43247,
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Together with 'Composed Headgear' can be crafted into a 'Composed Barding'.",
		progress = 200,
		slotName = "",
		tier = -1,
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				amount = 8,
				clientId = 28723,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				amount = 11,
				clientId = 35432,
				itemId = 38864,
				name = "Coarse Leather"
			}
		}
	},
	{
		itemId = 46700,
		index = 145,
		experience = 26400,
		durability = 7,
		name = "Advanced Saddle",
		clientId = 43248,
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Together with 'Advanced Headgear' can be crafted into a 'Advanced Barding'.",
		progress = 350,
		slotName = "",
		tier = -1,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				amount = 10,
				clientId = 28723,
				itemId = 32155,
				name = "iron ingot"
			},
			{
				amount = 20,
				clientId = 35433,
				itemId = 38865,
				name = "Craftman's Leather"
			}
		}
	},
	{
		itemId = 46701,
		index = 146,
		experience = 51200,
		durability = 8,
		name = "Artisan Saddle",
		clientId = 43249,
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Together with 'Artisan Headgear' can be crafted into a 'Artisan Barding'.",
		progress = 525,
		slotName = "",
		tier = -1,
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				amount = 17,
				clientId = 28724,
				itemId = 32156,
				name = "steel ingot"
			},
			{
				amount = 25,
				clientId = 35434,
				itemId = 38866,
				name = "Tanned Leather"
			}
		}
	},
	{
		itemId = 46702,
		index = 147,
		experience = 57600,
		durability = 9,
		name = "Superior Saddle",
		clientId = 43250,
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		profession = 7,
		description = "Together with 'Superior Headgear' can be crafted into a 'Superior Barding'.",
		progress = 650,
		slotName = "",
		tier = -1,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				amount = 10,
				clientId = 28725,
				itemId = 32157,
				name = "cobalt ingot"
			},
			{
				amount = 22,
				clientId = 35435,
				itemId = 38867,
				name = "Merchant's Leather"
			}
		}
	},
	{
		itemId = 46703,
		index = 148,
		experience = 194400,
		durability = 12,
		profession = 7,
		clientId = 43251,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'War Headgear' can be crafted into a 'War Barding'.",
		tier = -1,
		specialization = "Patchworker",
		name = "War Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				amount = 22,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 10,
				clientId = 28951,
				itemId = 32383,
				name = "ruby"
			}
		}
	},
	{
		itemId = 46704,
		index = 149,
		experience = 194400,
		durability = 12,
		profession = 7,
		clientId = 43252,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'Explorer Headgear' can be crafted into a 'Explorer Barding'.",
		tier = -1,
		specialization = "Patchworker",
		name = "Explorer Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				amount = 22,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 10,
				clientId = 28952,
				itemId = 32384,
				name = "sapphire"
			}
		}
	},
	{
		itemId = 46705,
		index = 150,
		experience = 194400,
		durability = 12,
		profession = 7,
		clientId = 43253,
		category = "Moa Equipment",
		amount = 1,
		description = "Together with 'Professional Headgear' can be crafted into a 'Professional Barding'.",
		tier = -1,
		specialization = "Patchworker",
		name = "Professional Saddle",
		slotName = "",
		quality = 0,
		progress = 750,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				amount = 12,
				clientId = 28727,
				itemId = 32159,
				name = "titanium ingot"
			},
			{
				amount = 22,
				clientId = 35436,
				itemId = 38868,
				name = "Artisan Leather"
			},
			{
				amount = 10,
				clientId = 28953,
				itemId = 32385,
				name = "topaz"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionWeaving] = {
	{
		itemId = 32021,
		index = 1,
		experience = 0,
		durability = 3,
		name = "Shadecloth Armor",
		clientId = 28589,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth armor",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 38881,
				name = "Simple Cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38880,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32027,
		index = 2,
		experience = 0,
		durability = 3,
		name = "Shadecloth Helmet",
		clientId = 28595,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth helmet",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 38885,
				name = "Simple Cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38884,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32028,
		index = 3,
		experience = 0,
		durability = 3,
		name = "Shadecloth Legs",
		clientId = 28596,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth legs",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 38889,
				name = "Simple Cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38888,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32024,
		index = 4,
		experience = 0,
		durability = 3,
		name = "Shadecloth Boots",
		clientId = 28592,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "cloth boots",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 28966,
				itemId = 38893,
				name = "Simple Cloth"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38892,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32066,
		index = 5,
		experience = 0,
		durability = 3,
		name = "Hide Armor",
		clientId = 28634,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather armor",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38879,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38880,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32072,
		index = 6,
		experience = 0,
		durability = 3,
		name = "Hide Helmet",
		clientId = 28640,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather helmet",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38883,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38884,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32073,
		index = 7,
		experience = 0,
		durability = 3,
		name = "Hide Legs",
		clientId = 28641,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather legs",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38887,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38888,
				name = "Coarse Thread"
			}
		}
	},
	{
		itemId = 32069,
		index = 8,
		experience = 0,
		durability = 3,
		name = "Hide Boots",
		clientId = 28637,
		category = "quest",
		amount = 1,
		quality = 50,
		profession = 7,
		description = "",
		progress = 50,
		slotName = "leather boots",
		tier = 1,
		level = {
			single = 1
		},
		materials = {
			{
				amount = 1,
				clientId = 35432,
				itemId = 38891,
				name = "Coarse Leather"
			},
			{
				amount = 1,
				clientId = 28971,
				itemId = 38892,
				name = "Coarse Thread"
			}
		}
	}
}

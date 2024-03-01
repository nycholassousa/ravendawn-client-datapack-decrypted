-- chunkname: @/modules/game_profession/recipes/weaving.lua

recipes = recipes or {}
recipes[ProfessionWeaving] = {
	{
		experience = 610,
		durability = 4,
		clientId = 35432,
		name = "Coarse Leather",
		category = "leather",
		amount = 1,
		quality = 75,
		progress = 25,
		description = "Used in various recipes. Its rough texture provides a sense of rugged resilience.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38864,
		index = 1,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				itemId = 38785,
				name = "Hide",
				amount = 2,
				clientId = 35353
			}
		}
	},
	{
		experience = 1200,
		durability = 6,
		clientId = 35433,
		name = "Craftman's Leather",
		category = "leather",
		amount = 1,
		quality = 150,
		progress = 150,
		description = "Used in various recipes. Skillfully treated and refined leather.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38865,
		index = 2,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 38785,
				name = "Hide",
				amount = 4,
				clientId = 35353
			}
		}
	},
	{
		experience = 1850,
		durability = 7,
		clientId = 35434,
		name = "Tanned Leather",
		category = "leather",
		amount = 1,
		quality = 200,
		progress = 225,
		description = "Used in various recipes. Smooth and flexible, it's a display of a meticulous tanning process.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38866,
		index = 3,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 38785,
				name = "Hide",
				amount = 6,
				clientId = 35353
			}
		}
	},
	{
		experience = 2400,
		durability = 8,
		clientId = 35435,
		name = "Merchant's Leather",
		category = "leather",
		amount = 1,
		quality = 425,
		progress = 450,
		description = "Used in various recipes. Its polished appearance signifies quality and sophistication.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38867,
		index = 4,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 38785,
				name = "Hide",
				amount = 8,
				clientId = 35353
			}
		}
	},
	{
		experience = 3050,
		durability = 9,
		clientId = 35436,
		name = "Artisan Leather",
		category = "leather",
		amount = 1,
		quality = 525,
		progress = 550,
		description = "Used in various recipes. Masterfully crafted, it's reserved only for the finest creations.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 38868,
		index = 5,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 38785,
				name = "Hide",
				amount = 10,
				clientId = 35353
			}
		}
	},
	{
		experience = 610,
		durability = 4,
		clientId = 28971,
		name = "coarse thread",
		category = "threads",
		amount = 1,
		quality = 75,
		progress = 25,
		description = "Used in various recipes. Despite its unrefined appearance, it's suitable for crafting durable items.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32403,
		index = 6,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				itemId = 32311,
				name = "cotton",
				amount = 3,
				clientId = 28879
			}
		}
	},
	{
		experience = 1200,
		durability = 6,
		clientId = 28972,
		name = "craftman's thread",
		category = "threads",
		amount = 1,
		quality = 150,
		progress = 150,
		description = "Used in various recipes. Stitching together sturdy creations, it stands up to the rigors of daily use.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32404,
		index = 7,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 32311,
				name = "cotton",
				amount = 6,
				clientId = 28879
			}
		}
	},
	{
		experience = 1850,
		durability = 7,
		clientId = 28973,
		name = "fine thread",
		category = "threads",
		amount = 1,
		quality = 200,
		progress = 225,
		description = "Used in various recipes. Delicate and refined, its slender fibers allow for intricate stitching.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32405,
		index = 8,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 32311,
				name = "cotton",
				amount = 9,
				clientId = 28879
			}
		}
	},
	{
		experience = 2400,
		durability = 8,
		clientId = 28969,
		name = "merchant's thread",
		category = "threads",
		amount = 1,
		quality = 425,
		progress = 450,
		description = "Used in various recipes. The lifeline of intricate textiles.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32401,
		index = 9,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32311,
				name = "cotton",
				amount = 12,
				clientId = 28879
			}
		}
	},
	{
		experience = 3050,
		durability = 9,
		clientId = 28970,
		name = "artisan thread",
		category = "threads",
		amount = 1,
		quality = 525,
		progress = 550,
		description = "Used in various recipes. The foundation for textiles that transcend to become works of art.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32402,
		index = 10,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 32311,
				name = "cotton",
				amount = 15,
				clientId = 28879
			}
		}
	},
	{
		experience = 610,
		durability = 4,
		clientId = 28966,
		name = "simple cloth",
		category = "cloth",
		amount = 1,
		quality = 75,
		progress = 25,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32398,
		index = 11,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				itemId = 31857,
				name = "wool",
				amount = 2,
				clientId = 28425
			}
		}
	},
	{
		experience = 1200,
		durability = 6,
		clientId = 28963,
		name = "craftman's cloth",
		category = "cloth",
		amount = 1,
		quality = 150,
		progress = 150,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32395,
		index = 12,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 31857,
				name = "wool",
				amount = 4,
				clientId = 28425
			}
		}
	},
	{
		experience = 1850,
		durability = 7,
		clientId = 28965,
		name = "silk",
		category = "cloth",
		amount = 1,
		quality = 175,
		progress = 225,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32397,
		index = 13,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 31857,
				name = "wool",
				amount = 6,
				clientId = 28425
			}
		}
	},
	{
		experience = 2400,
		durability = 8,
		clientId = 28964,
		name = "merchant's cloth",
		category = "cloth",
		amount = 1,
		quality = 425,
		progress = 450,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32396,
		index = 14,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 31857,
				name = "wool",
				amount = 8,
				clientId = 28425
			}
		}
	},
	{
		experience = 3050,
		durability = 9,
		clientId = 28962,
		name = "artisan cloth",
		category = "cloth",
		amount = 1,
		quality = 525,
		progress = 550,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32394,
		index = 15,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 31857,
				name = "wool",
				amount = 10,
				clientId = 28425
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28598,
		name = "Viper's Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "cloth armor",
		itemId = 32030,
		index = 16,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32021,
				name = "Shadecloth Armor",
				amount = 1,
				clientId = 28589
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28604,
		name = "Viper's Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "cloth helmet",
		itemId = 32036,
		index = 17,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32027,
				name = "Shadecloth Helmet",
				amount = 1,
				clientId = 28595
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28605,
		name = "Viper's Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "cloth legs",
		itemId = 32037,
		index = 18,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32028,
				name = "Shadecloth Legs",
				amount = 1,
				clientId = 28596
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28601,
		name = "Viper's Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "cloth boots",
		itemId = 32033,
		index = 19,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32024,
				name = "Shadecloth Boots",
				amount = 1,
				clientId = 28592
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28607,
		name = "Profane Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "cloth armor",
		itemId = 32039,
		index = 20,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 2,
				clientId = 28972
			},
			{
				itemId = 32030,
				name = "Viper's Armor",
				amount = 1,
				clientId = 28598
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28613,
		name = "Profane Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "cloth helmet",
		itemId = 32045,
		index = 21,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 2,
				clientId = 28972
			},
			{
				itemId = 32036,
				name = "Viper's Helmet",
				amount = 1,
				clientId = 28604
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28614,
		name = "Profane Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "cloth legs",
		itemId = 32046,
		index = 22,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 2,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			},
			{
				itemId = 32037,
				name = "Viper's Legs",
				amount = 1,
				clientId = 28605
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28610,
		name = "Profane Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "cloth boots",
		itemId = 32042,
		index = 23,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 2,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			},
			{
				itemId = 32033,
				name = "Viper's Boots",
				amount = 1,
				clientId = 28601
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28616,
		name = "Celestial Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "cloth armor",
		itemId = 32048,
		index = 24,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32039,
				name = "Profane Armor",
				amount = 1,
				clientId = 28607
			},
			{
				itemId = 40947,
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28622,
		name = "Celestial Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "cloth helmet",
		itemId = 32054,
		index = 25,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32045,
				name = "Profane Helmet",
				amount = 1,
				clientId = 28613
			},
			{
				itemId = 40947,
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28623,
		name = "Celestial Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "cloth legs",
		itemId = 32055,
		index = 26,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32046,
				name = "Profane Legs",
				amount = 1,
				clientId = 28614
			},
			{
				itemId = 40947,
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28619,
		name = "Celestial Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "cloth boots",
		itemId = 32051,
		index = 27,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32042,
				name = "Profane Boots",
				amount = 1,
				clientId = 28610
			},
			{
				itemId = 40947,
				name = "Phantasmagorical Cloth",
				amount = 5,
				clientId = 37495
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28632,
		name = "Mystic Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "cloth armor",
		itemId = 32064,
		index = 28,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 7,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 3,
				clientId = 28969
			},
			{
				itemId = 32048,
				name = "Celestial Armor",
				amount = 1,
				clientId = 28616
			},
			{
				itemId = 43723,
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28633,
		name = "Mystic Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "cloth helmet",
		itemId = 32065,
		index = 29,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 7,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 3,
				clientId = 28969
			},
			{
				itemId = 32054,
				name = "Celestial Helmet",
				amount = 1,
				clientId = 28622
			},
			{
				itemId = 43723,
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28631,
		name = "Mystic Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "cloth legs",
		itemId = 32063,
		index = 30,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 3,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 7,
				clientId = 28969
			},
			{
				itemId = 32055,
				name = "Celestial Legs",
				amount = 1,
				clientId = 28623
			},
			{
				itemId = 43723,
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28625,
		name = "Mystic Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "cloth boots",
		itemId = 32057,
		index = 31,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 3,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 7,
				clientId = 28969
			},
			{
				itemId = 32051,
				name = "Celestial Boots",
				amount = 1,
				clientId = 28619
			},
			{
				itemId = 43723,
				name = "Greenweave Bolt",
				amount = 6,
				clientId = 40271
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28643,
		name = "Nomad Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "leather armor",
		itemId = 32075,
		index = 32,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32066,
				name = "Hide Armor",
				amount = 1,
				clientId = 28634
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28649,
		name = "Nomad Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "leather helmet",
		itemId = 32081,
		index = 33,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32072,
				name = "Hide Helmet",
				amount = 1,
				clientId = 28640
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28650,
		name = "Nomad Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "leather legs",
		itemId = 32082,
		index = 34,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32073,
				name = "Hide Legs",
				amount = 1,
				clientId = 28641
			}
		}
	},
	{
		experience = 1280,
		durability = 4,
		clientId = 28646,
		name = "Nomad Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 100,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "leather boots",
		itemId = 32078,
		index = 35,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 32403,
				name = "coarse thread",
				amount = 1,
				clientId = 28971
			},
			{
				itemId = 32069,
				name = "Hide Boots",
				amount = 1,
				clientId = 28637
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28652,
		name = "Bruiser's Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "leather armor",
		itemId = 32084,
		index = 36,
		level = {
			single = 28,
			mass = 33
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 2,
				clientId = 28972
			},
			{
				itemId = 32075,
				name = "Nomad Armor",
				amount = 1,
				clientId = 28643
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28658,
		name = "Bruiser's Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "leather helmet",
		itemId = 32090,
		index = 37,
		level = {
			single = 31,
			mass = 36
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 2,
				clientId = 28972
			},
			{
				itemId = 32081,
				name = "Nomad Helmet",
				amount = 1,
				clientId = 28649
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28659,
		name = "Bruiser's Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "leather legs",
		itemId = 32091,
		index = 38,
		level = {
			single = 34,
			mass = 39
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 2,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			},
			{
				itemId = 32082,
				name = "Nomad Legs",
				amount = 1,
				clientId = 28650
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 6000,
		durability = 7,
		clientId = 28655,
		name = "Bruiser's Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 225,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "leather boots",
		itemId = 32087,
		index = 39,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 2,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			},
			{
				itemId = 32078,
				name = "Nomad Boots",
				amount = 1,
				clientId = 28646
			},
			{
				itemId = 40931,
				name = "Shell Fragment",
				amount = 3,
				clientId = 37479
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28661,
		name = "Outlaw Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "leather armor",
		itemId = 32093,
		index = 40,
		level = {
			single = 43,
			mass = 48
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32084,
				name = "Bruiser's Armor",
				amount = 1,
				clientId = 28652
			},
			{
				itemId = 41076,
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28667,
		name = "Outlaw Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "leather helmet",
		itemId = 32099,
		index = 41,
		level = {
			single = 46,
			mass = 51
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32090,
				name = "Bruiser's Helmet",
				amount = 1,
				clientId = 28658
			},
			{
				itemId = 41076,
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28668,
		name = "Outlaw Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "leather legs",
		itemId = 32100,
		index = 42,
		level = {
			single = 49,
			mass = 54
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32091,
				name = "Bruiser's Legs",
				amount = 1,
				clientId = 28659
			},
			{
				itemId = 41076,
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624
			}
		}
	},
	{
		experience = 11000,
		durability = 7,
		clientId = 28664,
		name = "Outlaw Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 350,
		description = "",
		profession = 7,
		tier = 4,
		slotName = "leather boots",
		itemId = 32096,
		index = 43,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 32087,
				name = "Bruiser's Boots",
				amount = 1,
				clientId = 28655
			},
			{
				itemId = 41076,
				name = "Kaiman Scale",
				amount = 5,
				clientId = 37624
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28670,
		name = "Studded Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "leather armor",
		itemId = 32102,
		index = 44,
		level = {
			single = 58,
			mass = 63
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 7,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 3,
				clientId = 28969
			},
			{
				itemId = 32093,
				name = "Outlaw Armor",
				amount = 1,
				clientId = 28661
			},
			{
				itemId = 43718,
				name = "Composite Leather",
				amount = 6,
				clientId = 40266
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28677,
		name = "Studded Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "leather helmet",
		itemId = 32109,
		index = 45,
		level = {
			single = 61,
			mass = 66
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 7,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 3,
				clientId = 28969
			},
			{
				itemId = 32099,
				name = "Outlaw Helmet",
				amount = 1,
				clientId = 28667
			},
			{
				itemId = 43718,
				name = "Composite Leather",
				amount = 6,
				clientId = 40266
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28675,
		name = "Studded Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "leather legs",
		itemId = 32107,
		index = 46,
		level = {
			single = 64,
			mass = 69
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 3,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 7,
				clientId = 28969
			},
			{
				itemId = 32100,
				name = "Outlaw Legs",
				amount = 1,
				clientId = 28668
			},
			{
				itemId = 43718,
				name = "Composite Leather",
				amount = 6,
				clientId = 40266
			}
		}
	},
	{
		experience = 24000,
		durability = 9,
		clientId = 28672,
		name = "Studded Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 525,
		description = "",
		profession = 7,
		tier = 5,
		slotName = "leather boots",
		itemId = 32104,
		index = 47,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 3,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 7,
				clientId = 28969
			},
			{
				itemId = 32096,
				name = "Outlaw Boots",
				amount = 1,
				clientId = 28664
			},
			{
				itemId = 43718,
				name = "Composite Leather",
				amount = 6,
				clientId = 40266
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35188,
		name = "Fry Cook Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting bracers",
		itemId = 38620,
		index = 48,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 8,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 8,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35189,
		name = "Fry Cook Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38621,
		index = 49,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35186,
		name = "Fry Cook Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38618,
		index = 50,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35190,
		name = "Fry Cook Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38622,
		index = 51,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35187,
		name = "Fry Cook Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38619,
		index = 52,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 38400,
		durability = 7,
		clientId = 35193,
		name = "Sous Chef Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting bracers",
		itemId = 38625,
		index = 53,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 12,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 9,
				clientId = 28973
			},
			{
				itemId = 38620,
				name = "Fry Cook Bracers",
				amount = 1,
				clientId = 35188
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35194,
		name = "Sous Chef Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38626,
		index = 54,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 8,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38621,
				name = "Fry Cook Helmet",
				amount = 1,
				clientId = 35189
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35191,
		name = "Sous Chef Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38623,
		index = 55,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 8,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38618,
				name = "Fry Cook Armor",
				amount = 1,
				clientId = 35186
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35195,
		name = "Sous Chef Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38627,
		index = 56,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38622,
				name = "Fry Cook Legs",
				amount = 1,
				clientId = 35190
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35192,
		name = "Sous Chef Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38624,
		index = 57,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38619,
				name = "Fry Cook Boots",
				amount = 1,
				clientId = 35187
			}
		}
	},
	{
		experience = 76800,
		durability = 9,
		clientId = 35198,
		name = "Master of Cuisine Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38630,
		index = 58,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 16,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 16,
				clientId = 28969
			},
			{
				itemId = 38625,
				name = "Sous Chef Bracers",
				amount = 1,
				clientId = 35193
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35199,
		name = "Master of Cuisine Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38631,
		index = 59,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38626,
				name = "Sous Chef Helmet",
				amount = 1,
				clientId = 35194
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35196,
		name = "Master of Cuisine Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38628,
		index = 60,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38623,
				name = "Sous Chef Armor",
				amount = 1,
				clientId = 35191
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35200,
		name = "Master of Cuisine Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38632,
		index = 61,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38627,
				name = "Sous Chef Legs",
				amount = 1,
				clientId = 35195
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35197,
		name = "Master of Cuisine Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38629,
		index = 62,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38624,
				name = "Sous Chef Boots",
				amount = 1,
				clientId = 35192
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35203,
		name = "Loom Apprentice Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting gloves",
		itemId = 38635,
		index = 63,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 8,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 8,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35204,
		name = "Loom Apprentice Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38636,
		index = 64,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35201,
		name = "Loom Apprentice Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38633,
		index = 65,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 5,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35205,
		name = "Loom Apprentice Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38637,
		index = 66,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35202,
		name = "Loom Apprentice Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38634,
		index = 67,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 3,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 38400,
		durability = 7,
		clientId = 35208,
		name = "Threadspinner Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting gloves",
		itemId = 38640,
		index = 68,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 12,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 9,
				clientId = 28973
			},
			{
				itemId = 38635,
				name = "Loom Apprentice Gloves",
				amount = 1,
				clientId = 35203
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35209,
		name = "Threadspinner Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38641,
		index = 69,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 8,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38636,
				name = "Loom Apprentice Helmet",
				amount = 1,
				clientId = 35204
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35206,
		name = "Threadspinner Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38638,
		index = 70,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 8,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38633,
				name = "Loom Apprentice Armor",
				amount = 1,
				clientId = 35201
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35210,
		name = "Threadspinner Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38642,
		index = 71,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38637,
				name = "Loom Apprentice Legs",
				amount = 1,
				clientId = 35205
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35207,
		name = "Threadspinner Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38639,
		index = 72,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 3,
				clientId = 28965
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38634,
				name = "Loom Apprentice Boots",
				amount = 1,
				clientId = 35202
			}
		}
	},
	{
		experience = 76800,
		durability = 9,
		clientId = 35213,
		name = "Master Tailor Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38645,
		index = 73,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 16,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 16,
				clientId = 28969
			},
			{
				itemId = 38640,
				name = "Threadspinner Gloves",
				amount = 1,
				clientId = 35208
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35214,
		name = "Master Tailor Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38646,
		index = 74,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38641,
				name = "Threadspinner Helmet",
				amount = 1,
				clientId = 35209
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35211,
		name = "Master Tailor Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38643,
		index = 75,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 12,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38638,
				name = "Threadspinner Armor",
				amount = 1,
				clientId = 35206
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35215,
		name = "Master Tailor Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38647,
		index = 76,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38642,
				name = "Threadspinner Legs",
				amount = 1,
				clientId = 35210
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35212,
		name = "Master Tailor Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38644,
		index = 77,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 4,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38639,
				name = "Threadspinner Boots",
				amount = 1,
				clientId = 35207
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35173,
		name = "Workshop Assistant Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting gloves",
		itemId = 38605,
		index = 78,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 8,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 8,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35174,
		name = "Workshop Assistant Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38606,
		index = 79,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35171,
		name = "Workshop Assistant Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38603,
		index = 80,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35175,
		name = "Workshop Assistant Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38607,
		index = 81,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35172,
		name = "Workshop Assistant Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38604,
		index = 82,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 38400,
		durability = 7,
		clientId = 35178,
		name = "Woodworker Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting gloves",
		itemId = 38610,
		index = 83,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 12,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 9,
				clientId = 28973
			},
			{
				itemId = 38605,
				name = "Workshop Assistant Gloves",
				amount = 1,
				clientId = 35173
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35179,
		name = "Woodworker Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38611,
		index = 84,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38606,
				name = "Workshop Assistant Helmet",
				amount = 1,
				clientId = 35174
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35176,
		name = "Woodworker Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38608,
		index = 85,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38603,
				name = "Workshop Assistant Armor",
				amount = 1,
				clientId = 35171
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35180,
		name = "Woodworker Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38612,
		index = 86,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38607,
				name = "Workshop Assistant Legs",
				amount = 1,
				clientId = 35175
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35177,
		name = "Woodworker Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38609,
		index = 87,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38604,
				name = "Workshop Assistant Boots",
				amount = 1,
				clientId = 35172
			}
		}
	},
	{
		experience = 76800,
		durability = 9,
		clientId = 35183,
		name = "Master Mason Gloves",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting gloves",
		itemId = 38615,
		index = 88,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 16,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 16,
				clientId = 28969
			},
			{
				itemId = 38610,
				name = "Woodworker Gloves",
				amount = 1,
				clientId = 35178
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35184,
		name = "Master Mason Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38616,
		index = 89,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38611,
				name = "Woodworker Helmet",
				amount = 1,
				clientId = 35179
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35181,
		name = "Master Mason Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38613,
		index = 90,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38608,
				name = "Woodworker Armor",
				amount = 1,
				clientId = 35176
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35185,
		name = "Master Mason Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38617,
		index = 91,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38612,
				name = "Woodworker Legs",
				amount = 1,
				clientId = 35180
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35182,
		name = "Master Mason Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38614,
		index = 92,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38609,
				name = "Woodworker Boots",
				amount = 1,
				clientId = 35177
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35158,
		name = "Apprentice Anvil Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting bracers",
		itemId = 38590,
		index = 93,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 8,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 8,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35159,
		name = "Apprentice Anvil Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting helmet",
		itemId = 38591,
		index = 94,
		level = {
			single = 19,
			mass = 24
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35156,
		name = "Apprentice Anvil Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting armor",
		itemId = 38588,
		index = 95,
		level = {
			single = 16,
			mass = 21
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 5,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 3,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35160,
		name = "Apprentice Anvil Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting legs",
		itemId = 38592,
		index = 96,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 9600,
		durability = 6,
		clientId = 35157,
		name = "Apprentice Anvil Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 150,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "crafting boots",
		itemId = 38589,
		index = 97,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 3,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 38400,
		durability = 7,
		clientId = 35163,
		name = "Silversmith Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting bracers",
		itemId = 38595,
		index = 98,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 12,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 9,
				clientId = 28973
			},
			{
				itemId = 38590,
				name = "Apprentice Anvil Bracers",
				amount = 1,
				clientId = 35158
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35164,
		name = "Silversmith Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting helmet",
		itemId = 38596,
		index = 99,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38591,
				name = "Apprentice Anvil Helmet",
				amount = 1,
				clientId = 35159
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35161,
		name = "Silversmith Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting armor",
		itemId = 38593,
		index = 100,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 8,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 3,
				clientId = 28973
			},
			{
				itemId = 38588,
				name = "Apprentice Anvil Armor",
				amount = 1,
				clientId = 35156
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35165,
		name = "Silversmith Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting legs",
		itemId = 38597,
		index = 101,
		level = {
			single = 33,
			mass = 38
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38592,
				name = "Apprentice Anvil Legs",
				amount = 1,
				clientId = 35160
			}
		}
	},
	{
		experience = 19200,
		durability = 7,
		clientId = 35162,
		name = "Silversmith Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 250,
		description = "",
		profession = 7,
		tier = 2,
		slotName = "crafting boots",
		itemId = 38594,
		index = 102,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 3,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 8,
				clientId = 28973
			},
			{
				itemId = 38589,
				name = "Apprentice Anvil Boots",
				amount = 1,
				clientId = 35157
			}
		}
	},
	{
		experience = 76800,
		durability = 9,
		clientId = 35168,
		name = "Forgemaster Bracers",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting bracers",
		itemId = 38600,
		index = 103,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 16,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 16,
				clientId = 28969
			},
			{
				itemId = 38595,
				name = "Silversmith Bracers",
				amount = 1,
				clientId = 35163
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35169,
		name = "Forgemaster Helmet",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting helmet",
		itemId = 38601,
		index = 104,
		level = {
			single = 59,
			mass = 64
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38596,
				name = "Silversmith Helmet",
				amount = 1,
				clientId = 35164
			}
		}
	},
	{
		experience = 38400,
		durability = 9,
		clientId = 35166,
		name = "Forgemaster Armor",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting armor",
		itemId = 38598,
		index = 105,
		level = {
			single = 56,
			mass = 61
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 12,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 4,
				clientId = 28969
			},
			{
				itemId = 38593,
				name = "Silversmith Armor",
				amount = 1,
				clientId = 35161
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35170,
		name = "Forgemaster Legs",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting legs",
		itemId = 38602,
		index = 106,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38597,
				name = "Silversmith Legs",
				amount = 1,
				clientId = 35165
			}
		}
	},
	{
		experience = 38400,
		durability = 8,
		clientId = 35167,
		name = "Forgemaster Boots",
		category = "crafting",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "",
		profession = 7,
		tier = 3,
		slotName = "crafting boots",
		itemId = 38599,
		index = 107,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 4,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 12,
				clientId = 28969
			},
			{
				itemId = 38594,
				name = "Silversmith Boots",
				amount = 1,
				clientId = 35162
			}
		}
	},
	{
		experience = 610,
		durability = 4,
		clientId = 28966,
		name = "simple cloth",
		category = "cloth",
		amount = 1,
		quality = 75,
		progress = 25,
		description = "Used in various recipes. Unassuming yet versatile, serves as the material for everyday textiles.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32398,
		index = 108,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				itemId = 37907,
				name = "spool of hair",
				amount = 6,
				clientId = 34475
			}
		}
	},
	{
		experience = 1200,
		durability = 6,
		clientId = 28963,
		name = "craftman's cloth",
		category = "cloth",
		amount = 1,
		quality = 150,
		progress = 150,
		description = "Used in various recipes. Sturdy and reliable, a material for those who value utility in their creations.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32395,
		index = 109,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				itemId = 37907,
				name = "spool of hair",
				amount = 12,
				clientId = 34475
			}
		}
	},
	{
		experience = 1850,
		durability = 7,
		clientId = 28965,
		name = "silk",
		category = "cloth",
		amount = 1,
		quality = 175,
		progress = 225,
		description = "Used in various recipes. Luxurious and smooth, Silk is the epitome of opulence in the textile world.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32397,
		index = 110,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				itemId = 37907,
				name = "spool of hair",
				amount = 18,
				clientId = 34475
			}
		}
	},
	{
		experience = 2400,
		durability = 8,
		clientId = 28964,
		name = "merchant's cloth",
		category = "cloth",
		amount = 1,
		quality = 425,
		progress = 450,
		description = "Used in various recipes. Its subtle sheen and tasteful patterns carry an air of sophistication.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32396,
		index = 111,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 37907,
				name = "spool of hair",
				amount = 24,
				clientId = 34475
			}
		}
	},
	{
		experience = 3050,
		durability = 9,
		clientId = 28962,
		name = "artisan cloth",
		category = "cloth",
		amount = 1,
		quality = 525,
		progress = 550,
		description = "Used in various recipes. Its luxurious texture makes it perfect for creating fine garments.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 32394,
		index = 112,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 37907,
				name = "spool of hair",
				amount = 30,
				clientId = 34475
			}
		}
	},
	{
		specialization = "Tailor",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				itemId = 32394,
				name = "artisan cloth",
				amount = 7,
				clientId = 28962
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 4,
				clientId = 28970
			},
			{
				itemId = 32064,
				name = "Mystic Armor",
				amount = 1,
				clientId = 28632
			},
			{
				itemId = 43733,
				name = "Winterwool",
				amount = 8,
				clientId = 40281
			}
		}
	},
	{
		specialization = "Tailor",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				itemId = 32394,
				name = "artisan cloth",
				amount = 7,
				clientId = 28962
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 4,
				clientId = 28970
			},
			{
				itemId = 32065,
				name = "Mystic Helmet",
				amount = 1,
				clientId = 28633
			},
			{
				itemId = 43733,
				name = "Winterwool",
				amount = 8,
				clientId = 40281
			}
		}
	},
	{
		specialization = "Tailor",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				itemId = 32394,
				name = "artisan cloth",
				amount = 4,
				clientId = 28962
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 7,
				clientId = 28970
			},
			{
				itemId = 32063,
				name = "Mystic Legs",
				amount = 1,
				clientId = 28631
			},
			{
				itemId = 43733,
				name = "Winterwool",
				amount = 8,
				clientId = 40281
			}
		}
	},
	{
		specialization = "Tailor",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				itemId = 32394,
				name = "artisan cloth",
				amount = 4,
				clientId = 28962
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 7,
				clientId = 28970
			},
			{
				itemId = 32057,
				name = "Mystic Boots",
				amount = 1,
				clientId = 28625
			},
			{
				itemId = 43733,
				name = "Winterwool",
				amount = 8,
				clientId = 40281
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 78,
			mass = 83
		},
		materials = {
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 7,
				clientId = 35436
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 4,
				clientId = 28970
			},
			{
				itemId = 32102,
				name = "Studded Armor",
				amount = 1,
				clientId = 28670
			},
			{
				itemId = 43721,
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 81,
			mass = 86
		},
		materials = {
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 7,
				clientId = 35436
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 4,
				clientId = 28970
			},
			{
				itemId = 32109,
				name = "Studded Helmet",
				amount = 1,
				clientId = 28677
			},
			{
				itemId = 43721,
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 84,
			mass = 89
		},
		materials = {
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 4,
				clientId = 35436
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 7,
				clientId = 28970
			},
			{
				itemId = 32107,
				name = "Studded Legs",
				amount = 1,
				clientId = 28675
			},
			{
				itemId = 43721,
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "",
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
		profession = 7,
		tier = 6,
		level = {
			single = 87,
			mass = 92
		},
		materials = {
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 4,
				clientId = 35436
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 7,
				clientId = 28970
			},
			{
				itemId = 32104,
				name = "Studded Boots",
				amount = 1,
				clientId = 28672
			},
			{
				itemId = 43721,
				name = "Draconic Hide",
				amount = 8,
				clientId = 40269
			}
		}
	},
	{
		experience = 216000,
		durability = 4,
		clientId = 37276,
		name = "Small Sail Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		progress = 100,
		description = "Used for crafting a Sail at the Ship Builder.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40728,
		index = 121,
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 60,
				clientId = 28963
			},
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 30,
				clientId = 35433
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 90,
				clientId = 28972
			}
		}
	},
	{
		experience = 552000,
		durability = 7,
		clientId = 37257,
		name = "Medium Sail Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		progress = 300,
		description = "Used for crafting a Sail at the Ship Builder.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40709,
		index = 122,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				itemId = 32397,
				name = "silk",
				amount = 100,
				clientId = 28965
			},
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 50,
				clientId = 35434
			},
			{
				itemId = 32405,
				name = "fine thread",
				amount = 150,
				clientId = 28973
			}
		}
	},
	{
		specialization = "Sailmaker",
		description = "Used for crafting a Sail at the Ship Builder.",
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
		profession = 7,
		tier = -1,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 240,
				clientId = 28964
			},
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 120,
				clientId = 35435
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 360,
				clientId = 28969
			}
		}
	},
	{
		experience = 9500,
		durability = 7,
		clientId = 37288,
		name = "Thread Spool",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40740,
		index = 124,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 8,
				clientId = 28972
			}
		}
	},
	{
		experience = 60000,
		durability = 8,
		clientId = 37248,
		name = "Luxury Thread Spool",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40700,
		index = 125,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 25,
				clientId = 28969
			}
		}
	},
	{
		experience = 24000,
		durability = 7,
		clientId = 37226,
		name = "Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40678,
		index = 126,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 15,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 60000,
		durability = 8,
		clientId = 37262,
		name = "Refined Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40714,
		index = 127,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 15,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 5,
				clientId = 28969
			}
		}
	},
	{
		experience = 101000,
		durability = 9,
		clientId = 37247,
		name = "Luxury Cloth Roll",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 550,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40699,
		index = 128,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 32394,
				name = "artisan cloth",
				amount = 20,
				clientId = 28962
			},
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 15,
				clientId = 28970
			}
		}
	},
	{
		experience = 18000,
		durability = 7,
		clientId = 37225,
		name = "Carpet",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 225,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40677,
		index = 129,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				itemId = 32395,
				name = "craftman's cloth",
				amount = 10,
				clientId = 28963
			},
			{
				itemId = 32404,
				name = "craftman's thread",
				amount = 5,
				clientId = 28972
			}
		}
	},
	{
		experience = 72000,
		durability = 8,
		clientId = 37246,
		name = "Luxury Carpet",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40698,
		index = 130,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				itemId = 32396,
				name = "merchant's cloth",
				amount = 15,
				clientId = 28964
			},
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 15,
				clientId = 28969
			}
		}
	},
	{
		experience = 119200,
		durability = 7,
		clientId = 37272,
		name = "Small Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		progress = 300,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40724,
		index = 131,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				itemId = 32405,
				name = "fine thread",
				amount = 50,
				clientId = 28973
			},
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 15,
				clientId = 35434
			}
		}
	},
	{
		experience = 384000,
		durability = 7,
		clientId = 37253,
		name = "Medium Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		progress = 500,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40705,
		index = 132,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				itemId = 32401,
				name = "merchant's thread",
				amount = 130,
				clientId = 28969
			},
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 30,
				clientId = 35435
			}
		}
	},
	{
		experience = 1272000,
		durability = 9,
		clientId = 37238,
		name = "Large Fishing Nets Kit",
		category = "Ship Module",
		amount = 1,
		quality = 0,
		progress = 550,
		description = "Used for crafting ship modules for your ship at the Ship Builder",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 40690,
		index = 133,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				itemId = 32402,
				name = "artisan thread",
				amount = 320,
				clientId = 28970
			},
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 100,
				clientId = 35436
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28589,
		name = "Shadecloth Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth armor",
		itemId = 32021,
		index = 134,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28595,
		name = "Shadecloth Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth helmet",
		itemId = 32027,
		index = 135,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28596,
		name = "Shadecloth Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth legs",
		itemId = 32028,
		index = 136,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28592,
		name = "Shadecloth Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth boots",
		itemId = 32024,
		index = 137,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 1,
				clientId = 28966
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28634,
		name = "Hide Armor",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather armor",
		itemId = 32066,
		index = 138,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28640,
		name = "Hide Helmet",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather helmet",
		itemId = 32072,
		index = 139,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28641,
		name = "Hide Legs",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather legs",
		itemId = 32073,
		index = 140,
		level = {
			single = 7,
			mass = 12
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			}
		}
	},
	{
		experience = 640,
		durability = 3,
		clientId = 28637,
		name = "Hide Boots",
		category = "armors",
		amount = 1,
		quality = 100,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather boots",
		itemId = 32069,
		index = 141,
		level = {
			single = 9,
			mass = 14
		},
		materials = {
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			}
		}
	},
	{
		experience = 4800,
		durability = 3,
		clientId = 42780,
		name = "Cheap Rug",
		category = "Housing Craft",
		amount = 1,
		quality = 0,
		progress = 50,
		description = "Used in housing upgrades.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46232,
		index = 142,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				itemId = 32398,
				name = "simple cloth",
				amount = 5,
				clientId = 28966
			},
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 3,
				clientId = 35432
			}
		}
	},
	{
		experience = 6400,
		durability = 7,
		clientId = 43246,
		name = "Simple Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		progress = 180,
		description = "Together with 'Simple Headgear' can be crafted into a 'Simple Barding'.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46698,
		index = 143,
		level = {
			single = 12,
			mass = 17
		},
		materials = {
			{
				itemId = 32158,
				name = "copper ingot",
				amount = 4,
				clientId = 28726
			},
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 10,
				clientId = 35432
			}
		}
	},
	{
		experience = 8800,
		durability = 7,
		clientId = 43247,
		name = "Composed Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		progress = 200,
		description = "Together with 'Composed Headgear' can be crafted into a 'Composed Barding'.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46699,
		index = 144,
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				itemId = 32155,
				name = "iron ingot",
				amount = 8,
				clientId = 28723
			},
			{
				itemId = 38864,
				name = "Coarse Leather",
				amount = 11,
				clientId = 35432
			}
		}
	},
	{
		experience = 26400,
		durability = 7,
		clientId = 43248,
		name = "Advanced Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		progress = 350,
		description = "Together with 'Advanced Headgear' can be crafted into a 'Advanced Barding'.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46700,
		index = 145,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				itemId = 32155,
				name = "iron ingot",
				amount = 10,
				clientId = 28723
			},
			{
				itemId = 38865,
				name = "Craftman's Leather",
				amount = 20,
				clientId = 35433
			}
		}
	},
	{
		experience = 51200,
		durability = 8,
		clientId = 43249,
		name = "Artisan Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		progress = 525,
		description = "Together with 'Artisan Headgear' can be crafted into a 'Artisan Barding'.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46701,
		index = 146,
		level = {
			single = 48,
			mass = 53
		},
		materials = {
			{
				itemId = 32156,
				name = "steel ingot",
				amount = 17,
				clientId = 28724
			},
			{
				itemId = 38866,
				name = "Tanned Leather",
				amount = 25,
				clientId = 35434
			}
		}
	},
	{
		experience = 57600,
		durability = 9,
		clientId = 43250,
		name = "Superior Saddle",
		category = "Moa Equipment",
		amount = 1,
		quality = 0,
		progress = 650,
		description = "Together with 'Superior Headgear' can be crafted into a 'Superior Barding'.",
		profession = 7,
		tier = -1,
		slotName = "",
		itemId = 46702,
		index = 147,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				itemId = 32157,
				name = "cobalt ingot",
				amount = 10,
				clientId = 28725
			},
			{
				itemId = 38867,
				name = "Merchant's Leather",
				amount = 22,
				clientId = 35435
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "Together with 'War Headgear' can be crafted into a 'War Barding'.",
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
		profession = 7,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				itemId = 32159,
				name = "titanium ingot",
				amount = 12,
				clientId = 28727
			},
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436
			},
			{
				itemId = 32383,
				name = "ruby",
				amount = 10,
				clientId = 28951
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "Together with 'Explorer Headgear' can be crafted into a 'Explorer Barding'.",
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
		profession = 7,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				itemId = 32159,
				name = "titanium ingot",
				amount = 12,
				clientId = 28727
			},
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436
			},
			{
				itemId = 32384,
				name = "sapphire",
				amount = 10,
				clientId = 28952
			}
		}
	},
	{
		specialization = "Patchworker",
		description = "Together with 'Professional Headgear' can be crafted into a 'Professional Barding'.",
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
		profession = 7,
		tier = -1,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				itemId = 32159,
				name = "titanium ingot",
				amount = 12,
				clientId = 28727
			},
			{
				itemId = 38868,
				name = "Artisan Leather",
				amount = 22,
				clientId = 35436
			},
			{
				itemId = 32385,
				name = "topaz",
				amount = 10,
				clientId = 28953
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionWeaving] = {
	{
		experience = 0,
		durability = 3,
		clientId = 28589,
		name = "Shadecloth Armor",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth armor",
		itemId = 32021,
		index = 1,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38881,
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 38880,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28595,
		name = "Shadecloth Helmet",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth helmet",
		itemId = 32027,
		index = 2,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38885,
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 38884,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28596,
		name = "Shadecloth Legs",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth legs",
		itemId = 32028,
		index = 3,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38889,
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 38888,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28592,
		name = "Shadecloth Boots",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "cloth boots",
		itemId = 32024,
		index = 4,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38893,
				name = "Simple Cloth",
				amount = 1,
				clientId = 28966
			},
			{
				itemId = 38892,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28634,
		name = "Hide Armor",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather armor",
		itemId = 32066,
		index = 5,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38879,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 38880,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28640,
		name = "Hide Helmet",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather helmet",
		itemId = 32072,
		index = 6,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38883,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 38884,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28641,
		name = "Hide Legs",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather legs",
		itemId = 32073,
		index = 7,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38887,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 38888,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	},
	{
		experience = 0,
		durability = 3,
		clientId = 28637,
		name = "Hide Boots",
		category = "quest",
		amount = 1,
		quality = 50,
		progress = 50,
		description = "",
		profession = 7,
		tier = 1,
		slotName = "leather boots",
		itemId = 32069,
		index = 8,
		level = {
			single = 1
		},
		materials = {
			{
				itemId = 38891,
				name = "Coarse Leather",
				amount = 1,
				clientId = 35432
			},
			{
				itemId = 38892,
				name = "Coarse Thread",
				amount = 1,
				clientId = 28971
			}
		}
	}
}

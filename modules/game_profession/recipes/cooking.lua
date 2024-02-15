-- chunkname: @/modules/game_profession/recipes/cooking.lua

recipes = recipes or {}
recipes[ProfessionCooking] = {
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 400,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 32192,
		description = "Channel and restore {50} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 28760,
		index = 1,
		name = "Beer",
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 28881,
				amount = 2,
				itemId = 32313,
				name = "wheat"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 2080,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32314,
		description = "Channel and restore {175} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 28882,
		index = 2,
		name = "Wine",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28831,
				amount = 4,
				itemId = 32263,
				name = "grape"
			},
			{
				clientId = 42107,
				amount = 1,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		experience = 2080,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32193,
		description = "Increase Mana Regeneration and Health Regeneration by {15} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 28761,
		index = 3,
		name = "Whiskey",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28866,
				amount = 4,
				itemId = 32298,
				name = "corn"
			},
			{
				clientId = 42107,
				amount = 1,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 330,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 32199,
		description = "Increase Mana Regeneration and Health Regeneration by {5} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 28767,
		index = 4,
		name = "Vodka",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28874,
				amount = 5,
				itemId = 32306,
				name = "potato"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		experience = 3200,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32315,
		description = "Increase Mana Regeneration and Health Regeneration by {25} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 28883,
		index = 5,
		name = "Rum",
		level = {
			single = 32,
			mass = 37
		},
		materials = {
			{
				clientId = 28822,
				amount = 2,
				itemId = 32254,
				name = "apple"
			},
			{
				clientId = 42107,
				amount = 1,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 690,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32186,
		description = "Increase Defense Power by {6} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28754,
		index = 6,
		name = "Bun",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 33553,
				amount = 5,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 200,
		experience = 1260,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32191,
		description = "Increase Defense Power by {8} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28759,
		index = 7,
		name = "Scone",
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 33553,
				amount = 5,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				amount = 1,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		experience = 1840,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32197,
		description = "Increase Defense Power by {12} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28765,
		index = 8,
		name = "Muffin",
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 33553,
				amount = 4,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				amount = 1,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 44381,
				amount = 2,
				itemId = 47833,
				name = "Honey"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 4400,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32188,
		description = "Increase Defense Power by {16} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28756,
		index = 9,
		name = "Croissant",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				amount = 2,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 44381,
				amount = 2,
				itemId = 47833,
				name = "Honey"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 4000,
		specialization = "Pastry Expert",
		durability = 9,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 32189,
		description = "Increase Defense Power by {25} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28757,
		index = 10,
		name = "Danish",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 42118,
				amount = 4,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				amount = 2,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 44381,
				amount = 2,
				itemId = 47833,
				name = "Honey"
			},
			{
				clientId = 28827,
				amount = 3,
				itemId = 32259,
				name = "strawberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		experience = 930,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32198,
		description = "Increase Attack Power by {6} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28766,
		index = 11,
		name = "Cookies",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		experience = 1380,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32196,
		description = "Increase Attack Power by {8} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28764,
		index = 12,
		name = "Deluxe Cookies",
		level = {
			single = 27,
			mass = 32
		},
		materials = {
			{
				clientId = 33553,
				amount = 9,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 42749,
				amount = 1,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		experience = 1600,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 32187,
		description = "Increase Attack Power by {12} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28755,
		index = 13,
		name = "Cake",
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				amount = 1,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 425,
		progress = 450,
		experience = 5450,
		profession = 8,
		durability = 8,
		formatDescription = "foodquality",
		itemId = 32190,
		description = "Increase Attack Power by {16} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28758,
		index = 14,
		name = "Deluxe Cake",
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 42118,
				amount = 8,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 28929,
				amount = 1,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 600,
		progress = 600,
		experience = 5520,
		specialization = "Pastry Expert",
		durability = 10,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 32185,
		description = "Increase Attack Power by {25} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 28753,
		index = 15,
		name = "Pie",
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				amount = 2,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 28824,
				amount = 2,
				itemId = 32256,
				name = "sunberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		experience = 7680,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38298,
		description = "Increase Intelligence by {20} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34866,
		index = 16,
		name = "Settler's Stew",
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28874,
				amount = 20,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 28878,
				amount = 20,
				itemId = 32310,
				name = "bean"
			},
			{
				clientId = 42106,
				amount = 4,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 8300,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38297,
		description = "Increase Wisdom by {40} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34865,
		index = 17,
		name = "Sailor's Seastew",
		level = {
			single = 69,
			mass = 74
		},
		materials = {
			{
				clientId = 40825,
				amount = 5,
				itemId = 44277,
				name = "Black Fish Roe"
			},
			{
				clientId = 28863,
				amount = 6,
				itemId = 32295,
				name = "brocolli"
			},
			{
				clientId = 28871,
				amount = 10,
				itemId = 32303,
				name = "pea"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		experience = 4000,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38293,
		description = "Increase Dexterity by {10} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34861,
		index = 18,
		name = "Roasted Chicken and Veggies",
		level = {
			single = 23,
			mass = 28
		},
		materials = {
			{
				clientId = 28750,
				amount = 1,
				itemId = 32182,
				name = "chicken"
			},
			{
				clientId = 28865,
				amount = 1,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28927,
				amount = 1,
				itemId = 32359,
				name = "cheese"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 8200,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38289,
		description = "Increase Might by {40} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34857,
		index = 19,
		name = "Firered Chicken Kebab",
		level = {
			single = 66,
			mass = 71
		},
		materials = {
			{
				clientId = 28750,
				amount = 3,
				itemId = 32182,
				name = "chicken"
			},
			{
				clientId = 28869,
				amount = 2,
				itemId = 32301,
				name = "garlic"
			},
			{
				clientId = 28832,
				amount = 1,
				itemId = 32264,
				name = "orange"
			},
			{
				clientId = 42126,
				amount = 1,
				itemId = 45578,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		experience = 2960,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38281,
		description = "Increase Intelligence by {10} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34849,
		index = 20,
		name = "Charred Meat Kebab",
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28931,
				amount = 2,
				itemId = 32363,
				name = "beef"
			},
			{
				clientId = 28865,
				amount = 2,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28864,
				amount = 2,
				itemId = 32296,
				name = "cabbage"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 10000,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38291,
		description = "Increase Intelligence by {40} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34859,
		index = 21,
		name = "Lyderian Chopped Tenderloin",
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				clientId = 28931,
				amount = 4,
				itemId = 32363,
				name = "beef"
			},
			{
				clientId = 28869,
				amount = 6,
				itemId = 32301,
				name = "garlic"
			},
			{
				clientId = 42126,
				amount = 2,
				itemId = 45578,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 3400,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38301,
		description = "Increase Might by {10} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34869,
		index = 22,
		name = "Smoked Sausage",
		level = {
			single = 21,
			mass = 26
		},
		materials = {
			{
				clientId = 28932,
				amount = 2,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			},
			{
				clientId = 28874,
				amount = 4,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 28872,
				amount = 2,
				itemId = 32304,
				name = "pepper"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 450,
		progress = 500,
		experience = 13280,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38279,
		description = "Increase Dexterity by {30} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34847,
		index = 23,
		name = "Acornchar Sausage",
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				clientId = 28932,
				amount = 3,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 42112,
				amount = 2,
				itemId = 45564,
				name = "Gourmet Seasoning"
			},
			{
				clientId = 28829,
				amount = 2,
				itemId = 32261,
				name = "acorn"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		experience = 2160,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38296,
		description = "Increase Vitality by {20} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34864,
		index = 24,
		name = "Rum Downslider",
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 40829,
				amount = 5,
				itemId = 44281,
				name = "Fish Roe"
			},
			{
				clientId = 28864,
				amount = 2,
				itemId = 32296,
				name = "cabbage"
			},
			{
				clientId = 42123,
				amount = 1,
				itemId = 45575,
				name = "Seafood Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 500,
		progress = 550,
		experience = 5900,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38285,
		description = "Increase Wisdom by {30} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34853,
		index = 25,
		name = "Freshfish Roll",
		level = {
			single = 54,
			mass = 59
		},
		materials = {
			{
				clientId = 40833,
				amount = 5,
				itemId = 44285,
				name = "Red Fish Roe"
			},
			{
				clientId = 28927,
				amount = 1,
				itemId = 32359,
				name = "cheese"
			},
			{
				clientId = 42112,
				amount = 2,
				itemId = 45564,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 300,
		progress = 350,
		experience = 3500,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38284,
		description = "Increase Wisdom by {20} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34852,
		index = 26,
		name = "Fillet Lucien",
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				clientId = 28931,
				amount = 1,
				itemId = 32363,
				name = "beef"
			},
			{
				clientId = 33553,
				amount = 5,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 28875,
				amount = 1,
				itemId = 32307,
				name = "pumpkin"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 9840,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38294,
		description = "Increase Dexterity by {40} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34862,
		index = 27,
		name = "Rohna Roasted Ham",
		level = {
			single = 68,
			mass = 73
		},
		materials = {
			{
				clientId = 28932,
				amount = 4,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 42126,
				amount = 2,
				itemId = 45578,
				name = "Spicy Seasoning"
			},
			{
				clientId = 28870,
				amount = 5,
				itemId = 32302,
				name = "onion"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		experience = 6680,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38292,
		description = "Increase Wisdom by {10} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34860,
		index = 28,
		name = "Ravendawnian Porridge",
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				clientId = 28881,
				amount = 5,
				itemId = 32313,
				name = "wheat"
			},
			{
				clientId = 28822,
				amount = 3,
				itemId = 32254,
				name = "apple"
			},
			{
				clientId = 28929,
				amount = 3,
				itemId = 32361,
				name = "milk"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 13280,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38302,
		description = "Increase Vitality by {40} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34870,
		index = 29,
		name = "Sweetened Beans",
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 28878,
				amount = 15,
				itemId = 32310,
				name = "bean"
			},
			{
				clientId = 28822,
				amount = 4,
				itemId = 32254,
				name = "apple"
			},
			{
				clientId = 28823,
				amount = 2,
				itemId = 32255,
				name = "banana"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 4720,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38287,
		description = "Increase Vitality by {10} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34855,
		index = 30,
		name = "Fruit Pancakes",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 28928,
				amount = 4,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 33553,
				amount = 6,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28831,
				amount = 5,
				itemId = 32263,
				name = "grape"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 425,
		progress = 450,
		experience = 7200,
		profession = 8,
		durability = 8,
		formatDescription = "foodquality",
		itemId = 38290,
		description = "Increase Intelligence by {30} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34858,
		index = 31,
		name = "Lucien's Waffles",
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				itemId = 32298,
				name = "corn"
			},
			{
				clientId = 28928,
				amount = 6,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 42118,
				amount = 5,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 28827,
				amount = 8,
				itemId = 32259,
				name = "strawberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		experience = 8700,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38283,
		description = "Increase Dexterity by {20} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34851,
		index = 32,
		name = "Dwarven Purple Shank",
		level = {
			single = 38,
			mass = 43
		},
		materials = {
			{
				clientId = 28932,
				amount = 2,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 28831,
				amount = 7,
				itemId = 32263,
				name = "grape"
			},
			{
				clientId = 28828,
				amount = 2,
				itemId = 32260,
				name = "watermelon"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 18240,
		specialization = "Gourmet Chef",
		durability = 9,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 38280,
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {10} for 30 minutes",
		tier = -1,
		category = "meals",
		clientId = 34848,
		index = 33,
		name = "Bittersweet Roast",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28931,
				amount = 6,
				itemId = 32363,
				name = "beef"
			},
			{
				clientId = 28863,
				amount = 5,
				itemId = 32295,
				name = "brocolli"
			},
			{
				clientId = 28830,
				amount = 5,
				itemId = 32262,
				name = "cherry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		experience = 2400,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38300,
		description = "Increase Might by {20} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34868,
		index = 34,
		name = "Shaked Fruitmilk",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 28827,
				amount = 2,
				itemId = 32259,
				name = "strawberry"
			},
			{
				clientId = 28825,
				amount = 10,
				itemId = 32257,
				name = "blueberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 4300,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38286,
		description = "Increase Might by {30} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 34854,
		index = 35,
		name = "Frozen Sweet Berries",
		level = {
			single = 51,
			mass = 56
		},
		materials = {
			{
				clientId = 28825,
				amount = 10,
				itemId = 32257,
				name = "blueberry"
			},
			{
				clientId = 28830,
				amount = 1,
				itemId = 32262,
				name = "cherry"
			},
			{
				clientId = 28826,
				amount = 2,
				itemId = 32258,
				name = "moonberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		experience = 13200,
		specialization = "Gourmet Chef",
		durability = 12,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 38288,
		description = "Increase Movement Speed by {15%} for 30 minutes",
		tier = -1,
		category = "meals",
		clientId = 34856,
		index = 36,
		name = "Iced Fruitmilk",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28929,
				amount = 5,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 28832,
				amount = 2,
				itemId = 32264,
				name = "orange"
			},
			{
				clientId = 28824,
				amount = 3,
				itemId = 32256,
				name = "sunberry"
			},
			{
				clientId = 28826,
				amount = 3,
				itemId = 32258,
				name = "moonberry"
			}
		}
	},
	{
		amount = 20,
		slotName = "",
		quality = 100,
		progress = 100,
		experience = 1300,
		profession = 8,
		durability = 4,
		formatDescription = "",
		itemId = 36985,
		description = "Required for cooking certain recipes.",
		tier = -1,
		category = "ingredient",
		clientId = 33553,
		index = 37,
		name = "Ground Flour",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28866,
				amount = 10,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 10,
		slotName = "",
		quality = 100,
		progress = 100,
		experience = 650,
		profession = 8,
		durability = 4,
		formatDescription = "",
		itemId = 36985,
		description = "Required for cooking certain recipes.",
		tier = -1,
		category = "ingredient",
		clientId = 33553,
		index = 38,
		name = "Ground Flour",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28881,
				amount = 10,
				itemId = 32313,
				name = "wheat"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 50,
		progress = 50,
		experience = 130,
		profession = 8,
		durability = 3,
		formatDescription = "",
		itemId = 38331,
		description = "Required for cooking certain recipes.",
		tier = -1,
		category = "ingredient",
		clientId = 34899,
		index = 39,
		name = "Oil",
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28866,
				amount = 1,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 10,
		slotName = "",
		quality = 100,
		progress = 150,
		experience = 1720,
		profession = 8,
		durability = 6,
		formatDescription = "",
		itemId = 38328,
		description = "Used in husbandry.",
		tier = -1,
		category = "misc",
		clientId = 34896,
		index = 40,
		name = "Basic Animal Feed",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28881,
				amount = 3,
				itemId = 32313,
				name = "wheat"
			},
			{
				clientId = 28865,
				amount = 2,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28866,
				amount = 2,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 10,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 10000,
		profession = 8,
		durability = 7,
		formatDescription = "",
		itemId = 38329,
		description = "Used in husbandry.",
		tier = -1,
		category = "misc",
		clientId = 34897,
		index = 41,
		name = "Complex Animal Feed",
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28829,
				amount = 1,
				itemId = 32261,
				name = "acorn"
			},
			{
				clientId = 28822,
				amount = 2,
				itemId = 32254,
				name = "apple"
			},
			{
				clientId = 28875,
				amount = 1,
				itemId = 32307,
				name = "pumpkin"
			},
			{
				clientId = 28871,
				amount = 5,
				itemId = 32303,
				name = "pea"
			}
		}
	},
	{
		amount = 1,
		slotName = "",
		quality = 500,
		progress = 500,
		experience = 360,
		profession = 8,
		durability = 9,
		formatDescription = "",
		itemId = 38332,
		description = "Required for cooking certain recipes.",
		tier = -1,
		category = "ingredient",
		clientId = 34900,
		index = 42,
		name = "Spiced Oil",
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				clientId = 34899,
				amount = 1,
				itemId = 38331,
				name = "Oil"
			},
			{
				clientId = 28872,
				amount = 2,
				itemId = 32304,
				name = "pepper"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 1280,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 38829,
		description = "Channel and restore {100} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 35397,
		index = 43,
		name = "Apple Cider",
		level = {
			single = 17,
			mass = 22
		},
		materials = {
			{
				clientId = 28822,
				amount = 1,
				itemId = 32254,
				name = "apple"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 300,
		progress = 350,
		experience = 4640,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 38832,
		description = "Channel and restore {325} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 35400,
		index = 44,
		name = "Blueberry Wine",
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28831,
				amount = 7,
				itemId = 32263,
				name = "grape"
			},
			{
				clientId = 28825,
				amount = 10,
				itemId = 32257,
				name = "blueberry"
			},
			{
				clientId = 42107,
				amount = 2,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 600,
		progress = 600,
		experience = 8800,
		specialization = "Sommelier",
		durability = 10,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 38831,
		description = "Increase Mana Regeneration and Health Regeneration by {60} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 35399,
		index = 45,
		name = "Strawberry Whiskey",
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 28866,
				amount = 14,
				itemId = 32298,
				name = "corn"
			},
			{
				clientId = 28827,
				amount = 10,
				itemId = 32259,
				name = "strawberry"
			},
			{
				clientId = 42107,
				amount = 3,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 6560,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38830,
		description = "Increase Mana Regeneration and Health Regeneration by {45} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 35398,
		index = 46,
		name = "Banana Vodka",
		level = {
			single = 57,
			mass = 62
		},
		materials = {
			{
				clientId = 28874,
				amount = 20,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 28823,
				amount = 2,
				itemId = 32255,
				name = "banana"
			},
			{
				clientId = 42107,
				amount = 2,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 6560,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 38833,
		description = "Channel and restore {400} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 35401,
		index = 47,
		name = "Spiced Rum",
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28822,
				amount = 4,
				itemId = 32254,
				name = "apple"
			},
			{
				clientId = 34900,
				amount = 1,
				itemId = 38332,
				name = "Spiced Oil"
			},
			{
				clientId = 42107,
				amount = 2,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		experience = 13600,
		specialization = "Gourmet Chef",
		durability = 12,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 38834,
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {15} for 30 minutes",
		tier = -1,
		category = "meals",
		clientId = 35402,
		index = 48,
		name = "Shanks n' Mash",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28932,
				amount = 4,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 28869,
				amount = 15,
				itemId = 32301,
				name = "garlic"
			},
			{
				clientId = 28929,
				amount = 8,
				itemId = 32361,
				name = "milk"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 150,
		experience = 640,
		profession = 8,
		durability = 6,
		formatDescription = "",
		itemId = 41613,
		description = "Standard Moa feed. Sold by Jebediah at the Ravencrest Farms or crafted at a cooking station.",
		tier = -1,
		category = "misc",
		clientId = 38161,
		index = 49,
		name = "Moa Ration",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28866,
				amount = 1,
				itemId = 32298,
				name = "corn"
			},
			{
				clientId = 28881,
				amount = 1,
				itemId = 32313,
				name = "wheat"
			},
			{
				clientId = 28874,
				amount = 1,
				itemId = 32306,
				name = "potato"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		experience = 1200,
		profession = 8,
		durability = 5,
		formatDescription = "foodquality",
		itemId = 45561,
		description = "Increase Wisdom by {4} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42109,
		index = 50,
		name = "Corn Chowder",
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 2,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 368,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 46201,
		description = "Used in various recipes. A creamy and rich delight churned from milk.",
		tier = -1,
		category = "ingredient",
		clientId = 42749,
		index = 51,
		name = "Butter",
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				itemId = 32361,
				name = "milk"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 800,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 45562,
		description = "Increase Defense Power by {1} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42110,
		index = 52,
		name = "Corn on a Cob",
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28866,
				amount = 2,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 480,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 46200,
		description = "Increase Healing Power by {4} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42748,
		index = 53,
		name = "Glademire Crackers",
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				itemId = 36985,
				name = "Ground Flour"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		experience = 1200,
		profession = 8,
		durability = 5,
		formatDescription = "foodquality",
		itemId = 45580,
		description = "Increase Vitality by {4} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42128,
		index = 54,
		name = "Corn Salad",
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 20,
		slotName = "",
		quality = 325,
		progress = 350,
		experience = 530,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45570,
		description = "Used in various recipes. A finely milled flour, imbued with fine ingredients.",
		tier = -1,
		category = "ingredient",
		clientId = 42118,
		index = 55,
		name = "Rich Flour",
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 33553,
				amount = 20,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 34370,
				amount = 1,
				itemId = 37802,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		experience = 2400,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45563,
		description = "Increase Healing Power by {8} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42111,
		index = 56,
		name = "Cornbread",
		level = {
			single = 26,
			mass = 31
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28866,
				amount = 4,
				itemId = 32298,
				name = "corn"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 8800,
		specialization = "Sommelier",
		durability = 9,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 46175,
		description = "Channel and restore {600} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 42723,
		index = 57,
		name = "Eclipse",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28826,
				amount = 5,
				itemId = 32258,
				name = "moonberry"
			},
			{
				clientId = 28824,
				amount = 4,
				itemId = 32256,
				name = "sunberry"
			},
			{
				clientId = 42107,
				amount = 3,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 175,
		experience = 1000,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45564,
		description = "Used in various recipes. A highly sophisticated blend of flavorful herbs and spices.",
		tier = -1,
		category = "ingredient",
		clientId = 42112,
		index = 58,
		name = "Gourmet Seasoning",
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 33551,
				amount = 3,
				itemId = 36983,
				name = "salt"
			},
			{
				clientId = 28870,
				amount = 1,
				itemId = 32302,
				name = "onion"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 150,
		experience = 1280,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 46176,
		description = "Increase Mana Regeneration and Health Regeneration by {10} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 42724,
		index = 59,
		name = "Landing Brandy",
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28822,
				amount = 1,
				itemId = 32254,
				name = "apple"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 930,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45565,
		description = "Increase Healing Power by {6} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42113,
		index = 60,
		name = "Loaf Bread",
		level = {
			single = 21,
			mass = 26
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 910,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45566,
		description = "Increase Might by {6} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42114,
		index = 61,
		name = "Lyderian Fries",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28874,
				amount = 12,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 34899,
				amount = 1,
				itemId = 38331,
				name = "Oil"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		experience = 520,
		profession = 8,
		durability = 5,
		formatDescription = "foodquality",
		itemId = 45567,
		description = "Increase Might by {4} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42115,
		index = 62,
		name = "Mashed Potatoes",
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28874,
				amount = 8,
				itemId = 32306,
				name = "potato"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 1760,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45568,
		description = "Increase Dexterity by {6} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42116,
		index = 63,
		name = "Omelet",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 28929,
				amount = 2,
				itemId = 32361,
				name = "milk"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		experience = 3200,
		profession = 8,
		durability = 7,
		formatDescription = "",
		itemId = 46173,
		description = "Channel and restore {250} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		category = "drinks",
		clientId = 42721,
		index = 64,
		name = "Orange Liqueur",
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28832,
				amount = 1,
				itemId = 32264,
				name = "orange"
			},
			{
				clientId = 42107,
				amount = 1,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 620,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 45569,
		description = "Increase Healing Power by {1} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42117,
		index = 65,
		name = "Potato Bread",
		level = {
			single = 4,
			mass = 9
		},
		materials = {
			{
				clientId = 28874,
				amount = 3,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 28866,
				amount = 1,
				itemId = 32298,
				name = "corn"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 480,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45571,
		description = "Increase Defense Power by {4} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42119,
		index = 67,
		name = "Rohna Crackers",
		level = {
			single = 14,
			mass = 19
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				itemId = 36985,
				name = "Ground Flour"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 5740,
		specialization = "Pastry Expert",
		durability = 9,
		profession = 8,
		formatDescription = "foodquality",
		itemId = 45572,
		description = "Increase Healing Power by {25} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42120,
		index = 68,
		name = "Rye Bread",
		level = {
			single = 71,
			mass = 76
		},
		materials = {
			{
				clientId = 42118,
				amount = 7,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				amount = 2,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 28871,
				amount = 2,
				itemId = 32303,
				name = "pea"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 450,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45573,
		description = "Increase Attack Power by {4} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42121,
		index = 69,
		name = "Sajecho Hardtack",
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				clientId = 33553,
				amount = 2,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 40832,
				amount = 2,
				itemId = 44284,
				name = "Orange Scales"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		experience = 640,
		profession = 8,
		durability = 5,
		formatDescription = "foodquality",
		itemId = 45574,
		description = "Increase Dexterity by {4} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42122,
		index = 70,
		name = "Scrambled Eggs",
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 50,
		progress = 50,
		experience = 560,
		profession = 8,
		durability = 3,
		formatDescription = "foodquality",
		itemId = 45575,
		description = "Used in various recipes. This flavorful blend captures the essence of the sea.",
		tier = -1,
		category = "ingredient",
		clientId = 42123,
		index = 71,
		name = "Seafood Seasoning",
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 33551,
				amount = 1,
				itemId = 36983,
				name = "salt"
			},
			{
				clientId = 40832,
				amount = 5,
				itemId = 44284,
				name = "Orange Scales"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 1000,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45576,
		description = "Increase Wisdom by {6} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42124,
		index = 72,
		name = "Silky Scrambled Eggs",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 42749,
				amount = 1,
				itemId = 46201,
				name = "Butter"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 4230,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45577,
		description = "Increase Healing Power by {16} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42125,
		index = 73,
		name = "Sourdought Bagel",
		level = {
			single = 51,
			mass = 56
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 28929,
				amount = 1,
				itemId = 32361,
				name = "milk"
			},
			{
				clientId = 42112,
				amount = 1,
				itemId = 45564,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 2048,
		profession = 8,
		durability = 9,
		formatDescription = "foodquality",
		itemId = 45578,
		description = "Used in various recipes. Ignite your taste buds with this fiery fusion of spices.",
		tier = -1,
		category = "ingredient",
		clientId = 42126,
		index = 74,
		name = "Spicy Seasoning",
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 33551,
				amount = 5,
				itemId = 36983,
				name = "salt"
			},
			{
				clientId = 28872,
				amount = 2,
				itemId = 32304,
				name = "pepper"
			},
			{
				clientId = 34370,
				amount = 1,
				itemId = 37802,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 920,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45579,
		description = "Increase Vitality by {6} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42127,
		index = 75,
		name = "Steamed Carrots",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28865,
				amount = 4,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 42106,
				amount = 1,
				itemId = 45558,
				name = "Basic Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 2800,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 46177,
		description = "Increase Vitality by {30} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42725,
		index = 76,
		name = "Blueberry Pie",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 42749,
				amount = 2,
				itemId = 46201,
				name = "Butter"
			},
			{
				clientId = 42118,
				amount = 2,
				itemId = 45570,
				name = "Rich Flour"
			},
			{
				clientId = 28825,
				amount = 10,
				itemId = 32257,
				name = "blueberry"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 4640,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 46174,
		description = "Increase Mana Regeneration and Health Regeneration by {35} for 20 minutes.",
		tier = -1,
		category = "drinks",
		clientId = 42722,
		index = 77,
		name = "Boozemelon",
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				clientId = 28828,
				amount = 1,
				itemId = 32260,
				name = "watermelon"
			},
			{
				clientId = 28875,
				amount = 1,
				itemId = 32307,
				name = "pumpkin"
			},
			{
				clientId = 42107,
				amount = 2,
				itemId = 45559,
				name = "Brewer Yeast"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 470,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45559,
		description = "Used in various recipes. A vital ingredient in the art of brewing.",
		tier = -1,
		category = "ingredient",
		clientId = 42107,
		index = 78,
		name = "Brewer Yeast",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 40832,
				amount = 5,
				itemId = 44284,
				name = "Orange Scales"
			},
			{
				clientId = 28881,
				amount = 3,
				itemId = 32313,
				name = "wheat"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		experience = 1000,
		profession = 8,
		durability = 6,
		formatDescription = "foodquality",
		itemId = 45560,
		description = "Increase Intelligence by {6} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42108,
		index = 79,
		name = "Carrot Soup",
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28865,
				amount = 5,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28874,
				amount = 3,
				itemId = 32306,
				name = "potato"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		experience = 2640,
		profession = 8,
		durability = 5,
		formatDescription = "foodquality",
		itemId = 45555,
		description = "Increase Intelligence by {4} for 30 minutes.",
		tier = -1,
		category = "meals",
		clientId = 42103,
		index = 80,
		name = "Apple Puree",
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28822,
				amount = 2,
				itemId = 32254,
				name = "apple"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 250,
		progress = 275,
		experience = 1920,
		profession = 8,
		durability = 7,
		formatDescription = "foodquality",
		itemId = 45556,
		description = "Increase Healing Power by {12} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42104,
		index = 81,
		name = "Bagel",
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 33553,
				amount = 4,
				itemId = 36985,
				name = "Ground Flour"
			},
			{
				clientId = 28928,
				amount = 2,
				itemId = 32360,
				name = "egg"
			},
			{
				clientId = 42112,
				amount = 1,
				itemId = 45564,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		experience = 260,
		profession = 8,
		durability = 4,
		formatDescription = "foodquality",
		itemId = 45557,
		description = "Increase Attack Power by {1} for 30 minutes.",
		tier = -1,
		category = "baked goods",
		clientId = 42105,
		index = 82,
		name = "Baked Potatoes",
		level = {
			single = 2,
			mass = 7
		},
		materials = {
			{
				clientId = 28874,
				amount = 4,
				itemId = 32306,
				name = "potato"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 50,
		progress = 50,
		experience = 290,
		profession = 8,
		durability = 3,
		formatDescription = "foodquality",
		itemId = 45558,
		description = "Used in various recipes. Essential flavor enhancer for a wide range of dishes.",
		tier = -1,
		category = "ingredient",
		clientId = 42106,
		index = 83,
		name = "Basic Seasoning",
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 33551,
				amount = 1,
				itemId = 36983,
				name = "salt"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		experience = 1280,
		profession = 8,
		durability = 7,
		formatDescription = "",
		itemId = 47101,
		description = "Ration of superior quality frequently used by dedicated moa owners. Increases experience received by the moa by 20%, Speed by 20 and Strength by 8 for the next 5000 steps.",
		tier = -1,
		category = "misc",
		clientId = 43649,
		index = 84,
		name = "Superior Ration",
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28874,
				amount = 1,
				itemId = 32306,
				name = "potato"
			},
			{
				clientId = 28932,
				amount = 1,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 28865,
				amount = 2,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 38161,
				amount = 1,
				itemId = 41613,
				name = "Moa Ration"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		experience = 1760,
		profession = 8,
		durability = 7,
		formatDescription = "",
		itemId = 47097,
		description = "Ration of superior quality prepared with fresh farm ingredients. Increases experience received by the moa by 30%, Speed by 30 and Strength by 12 for the next 6000 steps.",
		tier = -1,
		category = "misc",
		clientId = 43645,
		index = 85,
		name = "Rustic Ration",
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28865,
				amount = 3,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28932,
				amount = 1,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 28864,
				amount = 1,
				itemId = 32296,
				name = "cabbage"
			},
			{
				clientId = 43649,
				amount = 1,
				itemId = 47101,
				name = "Superior Ration"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		experience = 2640,
		profession = 8,
		durability = 7,
		formatDescription = "",
		itemId = 47092,
		description = "Masterfully prepared moa ration, heavy in nutrients and vitamins.  Increases experience received by the moa by 40%, Speed by 40 and Strength by 16 for the next 7500 steps.",
		tier = -1,
		category = "misc",
		clientId = 43640,
		index = 86,
		name = "Gourmet Ration",
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28865,
				amount = 1,
				itemId = 32297,
				name = "carrot"
			},
			{
				clientId = 28932,
				amount = 1,
				itemId = 32364,
				name = "shank"
			},
			{
				clientId = 28875,
				amount = 1,
				itemId = 32307,
				name = "pumpkin"
			},
			{
				clientId = 43645,
				amount = 1,
				itemId = 47097,
				name = "Rustic Ration"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 500,
		progress = 500,
		experience = 3500,
		profession = 8,
		durability = 8,
		formatDescription = "",
		itemId = 47098,
		description = "Masterfully prepared moa ration with carefully selected seafood treats.  Increases experience received by the moa by 50%, Speed by 50 and Strength by 20 for the next 10000 steps.",
		tier = -1,
		category = "misc",
		clientId = 43646,
		index = 87,
		name = "Seafood Extravaganza",
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28864,
				amount = 2,
				itemId = 32296,
				name = "cabbage"
			},
			{
				clientId = 40828,
				amount = 5,
				itemId = 44280,
				name = "Fish Oil"
			},
			{
				clientId = 28871,
				amount = 5,
				itemId = 32303,
				name = "pea"
			},
			{
				clientId = 43640,
				amount = 1,
				itemId = 47092,
				name = "Gourmet Ration"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		experience = 4540,
		profession = 8,
		durability = 9,
		formatDescription = "",
		itemId = 47094,
		description = "A questionable recipe capable of putting moas in a strange frenzied state. Increases experience received by the moa by 60%, Speed by 60 and Strength by 24 for the next 15000 steps.",
		tier = -1,
		category = "misc",
		clientId = 43642,
		index = 88,
		name = "Uncanny Ration",
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28864,
				amount = 2,
				itemId = 32296,
				name = "cabbage"
			},
			{
				clientId = 40828,
				amount = 5,
				itemId = 44280,
				name = "Fish Oil"
			},
			{
				clientId = 28863,
				amount = 4,
				itemId = 32295,
				name = "brocolli"
			},
			{
				clientId = 43646,
				amount = 1,
				itemId = 47098,
				name = "Seafood Extravaganza"
			}
		}
	},
	{
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		experience = 5700,
		profession = 8,
		durability = 10,
		formatDescription = "",
		itemId = 47095,
		description = "A true delicacy made with exotic seasoning loved by all moas.  Increases experience received by the moa by 75%, Speed by 75 and Strength by 30 for the next 25000 steps.",
		tier = -1,
		category = "misc",
		clientId = 43643,
		index = 89,
		name = "Moa's Delight",
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28875,
				amount = 2,
				itemId = 32307,
				name = "pumpkin"
			},
			{
				clientId = 40828,
				amount = 5,
				itemId = 44280,
				name = "Fish Oil"
			},
			{
				clientId = 28872,
				amount = 3,
				itemId = 32304,
				name = "pepper"
			},
			{
				clientId = 43642,
				amount = 1,
				itemId = 47094,
				name = "Uncanny Ration"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCooking] = {}

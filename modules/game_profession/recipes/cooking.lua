-- chunkname: @/modules/game_profession/recipes/cooking.lua

recipes = recipes or {}
recipes[ProfessionCooking] = {
	{
		durability = 4,
		amount = 5,
		index = 1,
		description = "Channel and restore {50} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 400,
		formatDescription = "foodquality",
		clientId = 28760,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Beer",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 32192,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 28881,
				itemId = 32313,
				amount = 2,
				name = "wheat"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 2,
		description = "Channel and restore {175} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 2080,
		formatDescription = "foodquality",
		clientId = 28882,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Wine",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 32314,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28831,
				itemId = 32263,
				amount = 4,
				name = "grape"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 1,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 3,
		description = "Increase Mana Regeneration and Health Regeneration by {15} for 20 minutes.",
		experience = 2080,
		formatDescription = "foodquality",
		clientId = 28761,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Whiskey",
		slotName = "",
		quality = 175,
		progress = 200,
		itemId = 32193,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 4,
				name = "corn"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 1,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 4,
		amount = 5,
		index = 4,
		description = "Increase Mana Regeneration and Health Regeneration by {5} for 20 minutes.",
		experience = 330,
		formatDescription = "foodquality",
		clientId = 28767,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Vodka",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 32199,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 5,
				name = "potato"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 5,
		description = "Increase Mana Regeneration and Health Regeneration by {25} for 20 minutes.",
		experience = 3200,
		formatDescription = "foodquality",
		clientId = 28883,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Rum",
		slotName = "",
		quality = 225,
		progress = 250,
		itemId = 32315,
		level = {
			single = 32,
			mass = 37
		},
		materials = {
			{
				clientId = 28822,
				itemId = 32254,
				amount = 2,
				name = "apple"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 1,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 6,
		description = "Increase Defense Power by {6} for 30 minutes.",
		experience = 690,
		formatDescription = "foodquality",
		clientId = 28754,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Bun",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 32186,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 5,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 7,
		description = "Increase Defense Power by {8} for 30 minutes.",
		experience = 1260,
		formatDescription = "foodquality",
		clientId = 28759,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Scone",
		slotName = "",
		quality = 200,
		progress = 200,
		itemId = 32191,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 5,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 1,
				name = "milk"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 8,
		description = "Increase Defense Power by {12} for 30 minutes.",
		experience = 1840,
		formatDescription = "foodquality",
		clientId = 28765,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Muffin",
		slotName = "",
		quality = 225,
		progress = 250,
		itemId = 32197,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 4,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 1,
				name = "milk"
			},
			{
				clientId = 44381,
				itemId = 47833,
				amount = 2,
				name = "Honey"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 9,
		description = "Increase Defense Power by {16} for 30 minutes.",
		experience = 4400,
		formatDescription = "foodquality",
		clientId = 28756,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Croissant",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 32188,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 5,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 2,
				name = "Butter"
			},
			{
				clientId = 44381,
				itemId = 47833,
				amount = 2,
				name = "Honey"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 10,
		description = "Increase Defense Power by {25} for 30 minutes.",
		experience = 4000,
		formatDescription = "foodquality",
		clientId = 28757,
		specialization = "Pastry Expert",
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Danish",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 32189,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 4,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 2,
				name = "Butter"
			},
			{
				clientId = 44381,
				itemId = 47833,
				amount = 2,
				name = "Honey"
			},
			{
				clientId = 28827,
				itemId = 32259,
				amount = 3,
				name = "strawberry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 11,
		description = "Increase Attack Power by {6} for 30 minutes.",
		experience = 930,
		formatDescription = "foodquality",
		clientId = 28766,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Cookies",
		slotName = "",
		quality = 175,
		progress = 200,
		itemId = 32198,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 8,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 12,
		description = "Increase Attack Power by {8} for 30 minutes.",
		experience = 1380,
		formatDescription = "foodquality",
		clientId = 28764,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Deluxe Cookies",
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 32196,
		level = {
			single = 27,
			mass = 32
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 9,
				name = "Ground Flour"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 1,
				name = "Butter"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 13,
		description = "Increase Attack Power by {12} for 30 minutes.",
		experience = 1600,
		formatDescription = "foodquality",
		clientId = 28755,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Cake",
		slotName = "",
		quality = 275,
		progress = 300,
		itemId = 32187,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 6,
				name = "Ground Flour"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 1,
				name = "milk"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			}
		}
	},
	{
		durability = 8,
		amount = 5,
		index = 14,
		description = "Increase Attack Power by {16} for 30 minutes.",
		experience = 5450,
		formatDescription = "foodquality",
		clientId = 28758,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Deluxe Cake",
		slotName = "",
		quality = 425,
		progress = 450,
		itemId = 32190,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 8,
				name = "Rich Flour"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 1,
				name = "milk"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			}
		}
	},
	{
		durability = 10,
		amount = 5,
		index = 15,
		description = "Increase Attack Power by {25} for 30 minutes.",
		experience = 5520,
		formatDescription = "foodquality",
		clientId = 28753,
		specialization = "Pastry Expert",
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Pie",
		slotName = "",
		quality = 600,
		progress = 600,
		itemId = 32185,
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 5,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 2,
				name = "Butter"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 28824,
				itemId = 32256,
				amount = 2,
				name = "sunberry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 16,
		description = "Increase Intelligence by {20} for 30 minutes.",
		experience = 7680,
		formatDescription = "foodquality",
		clientId = 34866,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Settler's Stew",
		slotName = "",
		quality = 275,
		progress = 300,
		itemId = 38298,
		level = {
			single = 37,
			mass = 42
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 20,
				name = "potato"
			},
			{
				clientId = 28878,
				itemId = 32310,
				amount = 4,
				name = "bean"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 4,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 17,
		description = "Increase Wisdom by {40} for 30 minutes.",
		experience = 8300,
		formatDescription = "foodquality",
		clientId = 34865,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Sailor's Seastew",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38297,
		level = {
			single = 69,
			mass = 74
		},
		materials = {
			{
				clientId = 40825,
				itemId = 44277,
				amount = 5,
				name = "Black Fish Roe"
			},
			{
				clientId = 28863,
				itemId = 32295,
				amount = 6,
				name = "brocolli"
			},
			{
				clientId = 28871,
				itemId = 32303,
				amount = 10,
				name = "pea"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 18,
		description = "Increase Dexterity by {10} for 30 minutes.",
		experience = 4000,
		formatDescription = "foodquality",
		clientId = 34861,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Roasted Chicken and Veggies",
		slotName = "",
		quality = 175,
		progress = 200,
		itemId = 38293,
		level = {
			single = 23,
			mass = 28
		},
		materials = {
			{
				clientId = 28750,
				itemId = 32182,
				amount = 1,
				name = "chicken"
			},
			{
				clientId = 28865,
				itemId = 32297,
				amount = 1,
				name = "carrot"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 19,
		description = "Increase Might by {40} for 30 minutes.",
		experience = 8200,
		formatDescription = "foodquality",
		clientId = 34857,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Firered Chicken Kebab",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38289,
		level = {
			single = 66,
			mass = 71
		},
		materials = {
			{
				clientId = 28750,
				itemId = 32182,
				amount = 3,
				name = "chicken"
			},
			{
				clientId = 28869,
				itemId = 32301,
				amount = 2,
				name = "garlic"
			},
			{
				clientId = 28832,
				itemId = 32264,
				amount = 1,
				name = "orange"
			},
			{
				clientId = 42126,
				itemId = 45578,
				amount = 1,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 20,
		description = "Increase Intelligence by {10} for 30 minutes.",
		experience = 2960,
		formatDescription = "foodquality",
		clientId = 34849,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Charred Meat Kebab",
		slotName = "",
		quality = 175,
		progress = 200,
		itemId = 38281,
		level = {
			single = 22,
			mass = 27
		},
		materials = {
			{
				clientId = 28931,
				itemId = 32363,
				amount = 2,
				name = "beef"
			},
			{
				clientId = 28865,
				itemId = 32297,
				amount = 2,
				name = "carrot"
			},
			{
				clientId = 28864,
				itemId = 32296,
				amount = 2,
				name = "cabbage"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 21,
		description = "Increase Intelligence by {40} for 30 minutes.",
		experience = 10000,
		formatDescription = "foodquality",
		clientId = 34859,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Lyderian Chopped Tenderloin",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38291,
		level = {
			single = 67,
			mass = 72
		},
		materials = {
			{
				clientId = 28931,
				itemId = 32363,
				amount = 4,
				name = "beef"
			},
			{
				clientId = 28869,
				itemId = 32301,
				amount = 6,
				name = "garlic"
			},
			{
				clientId = 42126,
				itemId = 45578,
				amount = 2,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 22,
		description = "Increase Might by {10} for 30 minutes.",
		experience = 3400,
		formatDescription = "foodquality",
		clientId = 34869,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Smoked Sausage",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 38301,
		level = {
			single = 21,
			mass = 26
		},
		materials = {
			{
				clientId = 28932,
				itemId = 32364,
				amount = 2,
				name = "shank"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			},
			{
				clientId = 28874,
				itemId = 32306,
				amount = 4,
				name = "potato"
			},
			{
				clientId = 28872,
				itemId = 32304,
				amount = 2,
				name = "pepper"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 23,
		description = "Increase Dexterity by {30} for 30 minutes.",
		experience = 13280,
		formatDescription = "foodquality",
		clientId = 34847,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Acornchar Sausage",
		slotName = "",
		quality = 450,
		progress = 500,
		itemId = 38279,
		level = {
			single = 53,
			mass = 58
		},
		materials = {
			{
				clientId = 28932,
				itemId = 32364,
				amount = 3,
				name = "shank"
			},
			{
				clientId = 42112,
				itemId = 45564,
				amount = 2,
				name = "Gourmet Seasoning"
			},
			{
				clientId = 28829,
				itemId = 32261,
				amount = 2,
				name = "acorn"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 24,
		description = "Increase Vitality by {20} for 30 minutes.",
		experience = 2160,
		formatDescription = "foodquality",
		clientId = 34864,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Rum Downslider",
		slotName = "",
		quality = 225,
		progress = 250,
		itemId = 38296,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 40829,
				itemId = 44281,
				amount = 5,
				name = "Fish Roe"
			},
			{
				clientId = 28864,
				itemId = 32296,
				amount = 2,
				name = "cabbage"
			},
			{
				clientId = 42123,
				itemId = 45575,
				amount = 1,
				name = "Seafood Seasoning"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 25,
		description = "Increase Wisdom by {30} for 30 minutes.",
		experience = 5900,
		formatDescription = "foodquality",
		clientId = 34853,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Freshfish Roll",
		slotName = "",
		quality = 500,
		progress = 550,
		itemId = 38285,
		level = {
			single = 54,
			mass = 59
		},
		materials = {
			{
				clientId = 40833,
				itemId = 44285,
				amount = 5,
				name = "Red Fish Roe"
			},
			{
				clientId = 28927,
				itemId = 32359,
				amount = 1,
				name = "cheese"
			},
			{
				clientId = 42112,
				itemId = 45564,
				amount = 2,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 26,
		description = "Increase Wisdom by {20} for 30 minutes.",
		experience = 3500,
		formatDescription = "foodquality",
		clientId = 34852,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Fillet Lucien",
		slotName = "",
		quality = 300,
		progress = 350,
		itemId = 38284,
		level = {
			single = 39,
			mass = 44
		},
		materials = {
			{
				clientId = 28931,
				itemId = 32363,
				amount = 1,
				name = "beef"
			},
			{
				clientId = 33553,
				itemId = 36985,
				amount = 5,
				name = "Ground Flour"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 28875,
				itemId = 32307,
				amount = 1,
				name = "pumpkin"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 27,
		description = "Increase Dexterity by {40} for 30 minutes.",
		experience = 9840,
		formatDescription = "foodquality",
		clientId = 34862,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Rohna Roasted Ham",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38294,
		level = {
			single = 68,
			mass = 73
		},
		materials = {
			{
				clientId = 28932,
				itemId = 32364,
				amount = 4,
				name = "shank"
			},
			{
				clientId = 42126,
				itemId = 45578,
				amount = 2,
				name = "Spicy Seasoning"
			},
			{
				clientId = 28870,
				itemId = 32302,
				amount = 5,
				name = "onion"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 28,
		description = "Increase Wisdom by {10} for 30 minutes.",
		experience = 6680,
		formatDescription = "foodquality",
		clientId = 34860,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Ravendawnian Porridge",
		slotName = "",
		quality = 175,
		progress = 200,
		itemId = 38292,
		level = {
			single = 24,
			mass = 29
		},
		materials = {
			{
				clientId = 28881,
				itemId = 32313,
				amount = 5,
				name = "wheat"
			},
			{
				clientId = 28822,
				itemId = 32254,
				amount = 3,
				name = "apple"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 3,
				name = "milk"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 29,
		description = "Increase Vitality by {40} for 30 minutes.",
		experience = 13280,
		formatDescription = "foodquality",
		clientId = 34870,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Sweetened Beans",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38302,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 28878,
				itemId = 32310,
				amount = 15,
				name = "bean"
			},
			{
				clientId = 28822,
				itemId = 32254,
				amount = 4,
				name = "apple"
			},
			{
				clientId = 28823,
				itemId = 32255,
				amount = 2,
				name = "banana"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 30,
		description = "Increase Vitality by {10} for 30 minutes.",
		experience = 4720,
		formatDescription = "foodquality",
		clientId = 34855,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Fruit Pancakes",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 38287,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28929,
				itemId = 32361,
				amount = 2,
				name = "milk"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 4,
				name = "egg"
			},
			{
				clientId = 33553,
				itemId = 36985,
				amount = 6,
				name = "Ground Flour"
			},
			{
				clientId = 28831,
				itemId = 32263,
				amount = 5,
				name = "grape"
			}
		}
	},
	{
		durability = 8,
		amount = 5,
		index = 31,
		description = "Increase Intelligence by {30} for 30 minutes.",
		experience = 7200,
		formatDescription = "foodquality",
		clientId = 34858,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Lucien's Waffles",
		slotName = "",
		quality = 425,
		progress = 450,
		itemId = 38290,
		level = {
			single = 52,
			mass = 57
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 3,
				name = "corn"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 6,
				name = "egg"
			},
			{
				clientId = 42118,
				itemId = 45570,
				amount = 5,
				name = "Rich Flour"
			},
			{
				clientId = 28827,
				itemId = 32259,
				amount = 8,
				name = "strawberry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 32,
		description = "Increase Dexterity by {20} for 30 minutes.",
		experience = 8700,
		formatDescription = "foodquality",
		clientId = 34851,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Dwarven Purple Shank",
		slotName = "",
		quality = 275,
		progress = 300,
		itemId = 38283,
		level = {
			single = 38,
			mass = 43
		},
		materials = {
			{
				clientId = 28932,
				itemId = 32364,
				amount = 2,
				name = "shank"
			},
			{
				clientId = 28831,
				itemId = 32263,
				amount = 7,
				name = "grape"
			},
			{
				clientId = 28828,
				itemId = 32260,
				amount = 2,
				name = "watermelon"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 33,
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {10} for 30 minutes",
		experience = 18240,
		formatDescription = "foodquality",
		clientId = 34848,
		specialization = "Gourmet Chef",
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Bittersweet Roast",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38280,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28931,
				itemId = 32363,
				amount = 6,
				name = "beef"
			},
			{
				clientId = 28863,
				itemId = 32295,
				amount = 5,
				name = "brocolli"
			},
			{
				clientId = 28830,
				itemId = 32262,
				amount = 5,
				name = "cherry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 34,
		description = "Increase Might by {20} for 30 minutes.",
		experience = 2400,
		formatDescription = "foodquality",
		clientId = 34868,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Shaked Fruitmilk",
		slotName = "",
		quality = 225,
		progress = 250,
		itemId = 38300,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 28929,
				itemId = 32361,
				amount = 2,
				name = "milk"
			},
			{
				clientId = 28827,
				itemId = 32259,
				amount = 2,
				name = "strawberry"
			},
			{
				clientId = 28825,
				itemId = 32257,
				amount = 10,
				name = "blueberry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 35,
		description = "Increase Might by {30} for 30 minutes.",
		experience = 4300,
		formatDescription = "foodquality",
		clientId = 34854,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Frozen Sweet Berries",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 38286,
		level = {
			single = 51,
			mass = 56
		},
		materials = {
			{
				clientId = 28825,
				itemId = 32257,
				amount = 10,
				name = "blueberry"
			},
			{
				clientId = 28830,
				itemId = 32262,
				amount = 1,
				name = "cherry"
			},
			{
				clientId = 28826,
				itemId = 32258,
				amount = 2,
				name = "moonberry"
			}
		}
	},
	{
		durability = 12,
		amount = 5,
		index = 36,
		description = "Increase Movement Speed by {15%} for 30 minutes",
		experience = 13200,
		formatDescription = "foodquality",
		clientId = 34856,
		specialization = "Gourmet Chef",
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Iced Fruitmilk",
		slotName = "",
		quality = 650,
		progress = 650,
		itemId = 38288,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28929,
				itemId = 32361,
				amount = 5,
				name = "milk"
			},
			{
				clientId = 28832,
				itemId = 32264,
				amount = 2,
				name = "orange"
			},
			{
				clientId = 28824,
				itemId = 32256,
				amount = 3,
				name = "sunberry"
			},
			{
				clientId = 28826,
				itemId = 32258,
				amount = 3,
				name = "moonberry"
			}
		}
	},
	{
		durability = 4,
		amount = 20,
		index = 37,
		description = "Required for cooking certain recipes.",
		experience = 1300,
		formatDescription = "",
		clientId = 33553,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Ground Flour",
		slotName = "",
		quality = 100,
		progress = 100,
		itemId = 36985,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 10,
				name = "corn"
			}
		}
	},
	{
		durability = 4,
		amount = 10,
		index = 38,
		description = "Required for cooking certain recipes.",
		experience = 650,
		formatDescription = "",
		clientId = 33553,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Ground Flour",
		slotName = "",
		quality = 100,
		progress = 100,
		itemId = 36985,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28881,
				itemId = 32313,
				amount = 10,
				name = "wheat"
			}
		}
	},
	{
		durability = 3,
		amount = 1,
		index = 39,
		description = "Required for cooking certain recipes.",
		experience = 130,
		formatDescription = "",
		clientId = 34899,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Oil",
		slotName = "",
		quality = 50,
		progress = 50,
		itemId = 38331,
		level = {
			single = 1,
			mass = 6
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 1,
				name = "corn"
			}
		}
	},
	{
		durability = 6,
		amount = 10,
		index = 40,
		description = "Used in husbandry.",
		experience = 1720,
		formatDescription = "",
		clientId = 34896,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Basic Animal Feed",
		slotName = "",
		quality = 100,
		progress = 150,
		itemId = 38328,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28881,
				itemId = 32313,
				amount = 3,
				name = "wheat"
			},
			{
				clientId = 28865,
				itemId = 32297,
				amount = 2,
				name = "carrot"
			},
			{
				clientId = 28866,
				itemId = 32298,
				amount = 2,
				name = "corn"
			}
		}
	},
	{
		durability = 7,
		amount = 10,
		index = 41,
		description = "Used in husbandry.",
		experience = 10000,
		formatDescription = "",
		clientId = 34897,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Complex Animal Feed",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 38329,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 28829,
				itemId = 32261,
				amount = 1,
				name = "acorn"
			},
			{
				clientId = 28822,
				itemId = 32254,
				amount = 2,
				name = "apple"
			},
			{
				clientId = 28875,
				itemId = 32307,
				amount = 1,
				name = "pumpkin"
			},
			{
				clientId = 28871,
				itemId = 32303,
				amount = 5,
				name = "pea"
			}
		}
	},
	{
		durability = 9,
		amount = 1,
		index = 42,
		description = "Required for cooking certain recipes.",
		experience = 360,
		formatDescription = "",
		clientId = 34900,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Spiced Oil",
		slotName = "",
		quality = 500,
		progress = 500,
		itemId = 38332,
		level = {
			single = 62,
			mass = 67
		},
		materials = {
			{
				clientId = 34899,
				itemId = 38331,
				amount = 1,
				name = "Oil"
			},
			{
				clientId = 28872,
				itemId = 32304,
				amount = 2,
				name = "pepper"
			}
		}
	},
	{
		durability = 4,
		amount = 5,
		index = 43,
		description = "Channel and restore {100} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 1280,
		formatDescription = "foodquality",
		clientId = 35397,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Apple Cider",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 38829,
		level = {
			single = 17,
			mass = 22
		},
		materials = {
			{
				clientId = 28822,
				itemId = 32254,
				amount = 1,
				name = "apple"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 44,
		description = "Channel and restore {325} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 4640,
		formatDescription = "foodquality",
		clientId = 35400,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Blueberry Wine",
		slotName = "",
		quality = 300,
		progress = 350,
		itemId = 38832,
		level = {
			single = 40,
			mass = 45
		},
		materials = {
			{
				clientId = 28831,
				itemId = 32263,
				amount = 7,
				name = "grape"
			},
			{
				clientId = 28825,
				itemId = 32257,
				amount = 10,
				name = "blueberry"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 2,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 10,
		amount = 5,
		index = 45,
		description = "Increase Mana Regeneration and Health Regeneration by {60} for 20 minutes.",
		experience = 8800,
		formatDescription = "foodquality",
		clientId = 35399,
		specialization = "Sommelier",
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Strawberry Whiskey",
		slotName = "",
		quality = 600,
		progress = 600,
		itemId = 38831,
		level = {
			single = 72,
			mass = 77
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 14,
				name = "corn"
			},
			{
				clientId = 28827,
				itemId = 32259,
				amount = 10,
				name = "strawberry"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 3,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 46,
		description = "Increase Mana Regeneration and Health Regeneration by {45} for 20 minutes.",
		experience = 6560,
		formatDescription = "foodquality",
		clientId = 35398,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Banana Vodka",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38830,
		level = {
			single = 57,
			mass = 62
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 20,
				name = "potato"
			},
			{
				clientId = 28823,
				itemId = 32255,
				amount = 2,
				name = "banana"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 2,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 47,
		description = "Channel and restore {400} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 6560,
		formatDescription = "foodquality",
		clientId = 35401,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Spiced Rum",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 38833,
		level = {
			single = 55,
			mass = 60
		},
		materials = {
			{
				clientId = 28822,
				itemId = 32254,
				amount = 4,
				name = "apple"
			},
			{
				clientId = 34900,
				itemId = 38332,
				amount = 1,
				name = "Spiced Oil"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 2,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 12,
		amount = 5,
		index = 48,
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {15} for 30 minutes",
		experience = 13600,
		formatDescription = "foodquality",
		clientId = 35402,
		specialization = "Gourmet Chef",
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Shanks n' Mash",
		slotName = "",
		quality = 650,
		progress = 650,
		itemId = 38834,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28932,
				itemId = 32364,
				amount = 4,
				name = "shank"
			},
			{
				clientId = 28869,
				itemId = 32301,
				amount = 15,
				name = "garlic"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 8,
				name = "milk"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 49,
		description = "Standard Moa feed. Sold by Jebediah at the Ravencrest Farms or crafted at a cooking station.",
		experience = 640,
		formatDescription = "",
		clientId = 38161,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Moa Ration",
		slotName = "",
		quality = 100,
		progress = 150,
		itemId = 41613,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 1,
				name = "corn"
			},
			{
				clientId = 28881,
				itemId = 32313,
				amount = 1,
				name = "wheat"
			},
			{
				clientId = 28874,
				itemId = 32306,
				amount = 1,
				name = "potato"
			}
		}
	},
	{
		durability = 5,
		amount = 5,
		index = 50,
		description = "Increase Wisdom by {4} for 30 minutes.",
		experience = 1200,
		formatDescription = "foodquality",
		clientId = 42109,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Corn Chowder",
		slotName = "",
		quality = 100,
		progress = 125,
		itemId = 45561,
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 3,
				name = "corn"
			}
		}
	},
	{
		durability = 6,
		amount = 2,
		index = 51,
		description = "Used in various recipes. A creamy and rich delight churned from milk.",
		experience = 368,
		formatDescription = "foodquality",
		clientId = 42749,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Butter",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 46201,
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				clientId = 28929,
				itemId = 32361,
				amount = 2,
				name = "milk"
			}
		}
	},
	{
		durability = 4,
		amount = 5,
		index = 52,
		description = "Increase Defense Power by {1} for 30 minutes.",
		experience = 800,
		formatDescription = "foodquality",
		clientId = 42110,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Corn on a Cob",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 45562,
		level = {
			single = 3,
			mass = 8
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 2,
				name = "corn"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 53,
		description = "Increase Healing Power by {4} for 30 minutes.",
		experience = 480,
		formatDescription = "foodquality",
		clientId = 42748,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Glademire Crackers",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 46200,
		level = {
			single = 15,
			mass = 20
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 6,
				name = "Ground Flour"
			}
		}
	},
	{
		durability = 5,
		amount = 5,
		index = 54,
		description = "Increase Vitality by {4} for 30 minutes.",
		experience = 1200,
		formatDescription = "foodquality",
		clientId = 42128,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Corn Salad",
		slotName = "",
		quality = 100,
		progress = 125,
		itemId = 45580,
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28866,
				itemId = 32298,
				amount = 3,
				name = "corn"
			}
		}
	},
	{
		durability = 7,
		amount = 20,
		index = 55,
		description = "Used in various recipes. A finely milled flour, imbued with fine ingredients.",
		experience = 530,
		formatDescription = "foodquality",
		clientId = 42118,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Rich Flour",
		slotName = "",
		quality = 325,
		progress = 350,
		itemId = 45570,
		level = {
			single = 45,
			mass = 50
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 20,
				name = "Ground Flour"
			},
			{
				clientId = 34370,
				itemId = 37802,
				amount = 1,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 56,
		description = "Increase Healing Power by {8} for 30 minutes.",
		experience = 2400,
		formatDescription = "foodquality",
		clientId = 42111,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Cornbread",
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 45563,
		level = {
			single = 26,
			mass = 31
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 8,
				name = "Ground Flour"
			},
			{
				clientId = 28866,
				itemId = 32298,
				amount = 4,
				name = "corn"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 57,
		description = "Channel and restore {600} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 8800,
		formatDescription = "foodquality",
		clientId = 42723,
		specialization = "Sommelier",
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Eclipse",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 46175,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28826,
				itemId = 32258,
				amount = 5,
				name = "moonberry"
			},
			{
				clientId = 28824,
				itemId = 32256,
				amount = 4,
				name = "sunberry"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 3,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 58,
		description = "Used in various recipes. A highly sophisticated blend of flavorful herbs and spices.",
		experience = 1000,
		formatDescription = "foodquality",
		clientId = 42112,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Gourmet Seasoning",
		slotName = "",
		quality = 150,
		progress = 175,
		itemId = 45564,
		level = {
			single = 25,
			mass = 30
		},
		materials = {
			{
				clientId = 33551,
				itemId = 36983,
				amount = 3,
				name = "salt"
			},
			{
				clientId = 28870,
				itemId = 32302,
				amount = 1,
				name = "onion"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 59,
		description = "Increase Mana Regeneration and Health Regeneration by {10} for 20 minutes.",
		experience = 1280,
		formatDescription = "foodquality",
		clientId = 42724,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Landing Brandy",
		slotName = "",
		quality = 100,
		progress = 150,
		itemId = 46176,
		level = {
			single = 10,
			mass = 15
		},
		materials = {
			{
				clientId = 28822,
				itemId = 32254,
				amount = 1,
				name = "apple"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 60,
		description = "Increase Healing Power by {6} for 30 minutes.",
		experience = 930,
		formatDescription = "foodquality",
		clientId = 42113,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Loaf Bread",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 45565,
		level = {
			single = 21,
			mass = 26
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 8,
				name = "Ground Flour"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 61,
		description = "Increase Might by {6} for 30 minutes.",
		experience = 910,
		formatDescription = "foodquality",
		clientId = 42114,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Lyderian Fries",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45566,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 12,
				name = "potato"
			},
			{
				clientId = 34899,
				itemId = 38331,
				amount = 1,
				name = "Oil"
			}
		}
	},
	{
		durability = 5,
		amount = 5,
		index = 62,
		description = "Increase Might by {4} for 30 minutes.",
		experience = 520,
		formatDescription = "foodquality",
		clientId = 42115,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Mashed Potatoes",
		slotName = "",
		quality = 100,
		progress = 125,
		itemId = 45567,
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 8,
				name = "potato"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 63,
		description = "Increase Dexterity by {6} for 30 minutes.",
		experience = 1760,
		formatDescription = "foodquality",
		clientId = 42116,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Omelet",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45568,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 2,
				name = "milk"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 64,
		description = "Channel and restore {250} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		experience = 3200,
		formatDescription = "",
		clientId = 42721,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Orange Liqueur",
		slotName = "",
		quality = 200,
		progress = 225,
		itemId = 46173,
		level = {
			single = 30,
			mass = 35
		},
		materials = {
			{
				clientId = 28832,
				itemId = 32264,
				amount = 1,
				name = "orange"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 1,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 4,
		amount = 5,
		index = 65,
		description = "Increase Healing Power by {1} for 30 minutes.",
		experience = 620,
		formatDescription = "foodquality",
		clientId = 42117,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Potato Bread",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 45569,
		level = {
			single = 4,
			mass = 9
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 3,
				name = "potato"
			},
			{
				clientId = 28866,
				itemId = 32298,
				amount = 1,
				name = "corn"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 67,
		description = "Increase Defense Power by {4} for 30 minutes.",
		experience = 480,
		formatDescription = "foodquality",
		clientId = 42119,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Rohna Crackers",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45571,
		level = {
			single = 14,
			mass = 19
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 6,
				name = "Ground Flour"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 68,
		description = "Increase Healing Power by {25} for 30 minutes.",
		experience = 5740,
		formatDescription = "foodquality",
		clientId = 42120,
		specialization = "Pastry Expert",
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Rye Bread",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 45572,
		level = {
			single = 71,
			mass = 76
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 7,
				name = "Rich Flour"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 2,
				name = "Butter"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 28871,
				itemId = 32303,
				amount = 2,
				name = "pea"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 69,
		description = "Increase Attack Power by {4} for 30 minutes.",
		experience = 450,
		formatDescription = "foodquality",
		clientId = 42121,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Sajecho Hardtack",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45573,
		level = {
			single = 13,
			mass = 18
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 2,
				name = "Ground Flour"
			},
			{
				clientId = 40832,
				itemId = 44284,
				amount = 2,
				name = "Orange Scales"
			}
		}
	},
	{
		durability = 5,
		amount = 5,
		index = 70,
		description = "Increase Dexterity by {4} for 30 minutes.",
		experience = 640,
		formatDescription = "foodquality",
		clientId = 42122,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Scrambled Eggs",
		slotName = "",
		quality = 100,
		progress = 125,
		itemId = 45574,
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			}
		}
	},
	{
		durability = 3,
		amount = 5,
		index = 71,
		description = "Used in various recipes. This flavorful blend captures the essence of the sea.",
		experience = 560,
		formatDescription = "foodquality",
		clientId = 42123,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Seafood Seasoning",
		slotName = "",
		quality = 50,
		progress = 50,
		itemId = 45575,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 33551,
				itemId = 36983,
				amount = 1,
				name = "salt"
			},
			{
				clientId = 40832,
				itemId = 44284,
				amount = 5,
				name = "Orange Scales"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 72,
		description = "Increase Wisdom by {6} for 30 minutes.",
		experience = 1000,
		formatDescription = "foodquality",
		clientId = 42124,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Silky Scrambled Eggs",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45576,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 42749,
				itemId = 46201,
				amount = 1,
				name = "Butter"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 73,
		description = "Increase Healing Power by {16} for 30 minutes.",
		experience = 4230,
		formatDescription = "foodquality",
		clientId = 42125,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Sourdought Bagel",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 45577,
		level = {
			single = 51,
			mass = 56
		},
		materials = {
			{
				clientId = 42118,
				itemId = 45570,
				amount = 5,
				name = "Rich Flour"
			},
			{
				clientId = 28929,
				itemId = 32361,
				amount = 1,
				name = "milk"
			},
			{
				clientId = 42112,
				itemId = 45564,
				amount = 1,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 74,
		description = "Used in various recipes. Ignite your taste buds with this fiery fusion of spices.",
		experience = 2048,
		formatDescription = "foodquality",
		clientId = 42126,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Spicy Seasoning",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 45578,
		level = {
			single = 65,
			mass = 70
		},
		materials = {
			{
				clientId = 33551,
				itemId = 36983,
				amount = 5,
				name = "salt"
			},
			{
				clientId = 28872,
				itemId = 32304,
				amount = 2,
				name = "pepper"
			},
			{
				clientId = 34370,
				itemId = 37802,
				amount = 1,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 75,
		description = "Increase Vitality by {6} for 30 minutes.",
		experience = 920,
		formatDescription = "foodquality",
		clientId = 42127,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Steamed Carrots",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45579,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28865,
				itemId = 32297,
				amount = 4,
				name = "carrot"
			},
			{
				clientId = 42106,
				itemId = 45558,
				amount = 1,
				name = "Basic Seasoning"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 76,
		description = "Increase Vitality by {30} for 30 minutes.",
		experience = 2800,
		formatDescription = "foodquality",
		clientId = 42725,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Blueberry Pie",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 46177,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 42749,
				itemId = 46201,
				amount = 2,
				name = "Butter"
			},
			{
				clientId = 42118,
				itemId = 45570,
				amount = 2,
				name = "Rich Flour"
			},
			{
				clientId = 28825,
				itemId = 32257,
				amount = 10,
				name = "blueberry"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 77,
		description = "Increase Mana Regeneration and Health Regeneration by {35} for 20 minutes.",
		experience = 4640,
		formatDescription = "foodquality",
		clientId = 42722,
		tier = -1,
		category = "drinks",
		profession = 8,
		name = "Boozemelon",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 46174,
		level = {
			single = 42,
			mass = 47
		},
		materials = {
			{
				clientId = 28828,
				itemId = 32260,
				amount = 1,
				name = "watermelon"
			},
			{
				clientId = 28875,
				itemId = 32307,
				amount = 1,
				name = "pumpkin"
			},
			{
				clientId = 42107,
				itemId = 45559,
				amount = 2,
				name = "Brewer Yeast"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 78,
		description = "Used in various recipes. A vital ingredient in the art of brewing.",
		experience = 470,
		formatDescription = "foodquality",
		clientId = 42107,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Brewer Yeast",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 45559,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 40832,
				itemId = 44284,
				amount = 5,
				name = "Orange Scales"
			},
			{
				clientId = 28881,
				itemId = 32313,
				amount = 3,
				name = "wheat"
			}
		}
	},
	{
		durability = 6,
		amount = 5,
		index = 79,
		description = "Increase Intelligence by {6} for 30 minutes.",
		experience = 1000,
		formatDescription = "foodquality",
		clientId = 42108,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Carrot Soup",
		slotName = "",
		quality = 125,
		progress = 175,
		itemId = 45560,
		level = {
			single = 18,
			mass = 23
		},
		materials = {
			{
				clientId = 28865,
				itemId = 32297,
				amount = 5,
				name = "carrot"
			},
			{
				clientId = 28874,
				itemId = 32306,
				amount = 3,
				name = "potato"
			}
		}
	},
	{
		durability = 5,
		amount = 5,
		index = 80,
		description = "Increase Intelligence by {4} for 30 minutes.",
		experience = 2640,
		formatDescription = "foodquality",
		clientId = 42103,
		tier = -1,
		category = "meals",
		profession = 8,
		name = "Apple Puree",
		slotName = "",
		quality = 100,
		progress = 125,
		itemId = 45555,
		level = {
			single = 8,
			mass = 13
		},
		materials = {
			{
				clientId = 28822,
				itemId = 32254,
				amount = 2,
				name = "apple"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 81,
		description = "Increase Healing Power by {12} for 30 minutes.",
		experience = 1920,
		formatDescription = "foodquality",
		clientId = 42104,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Bagel",
		slotName = "",
		quality = 250,
		progress = 275,
		itemId = 45556,
		level = {
			single = 36,
			mass = 41
		},
		materials = {
			{
				clientId = 33553,
				itemId = 36985,
				amount = 4,
				name = "Ground Flour"
			},
			{
				clientId = 28928,
				itemId = 32360,
				amount = 2,
				name = "egg"
			},
			{
				clientId = 42112,
				itemId = 45564,
				amount = 1,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		durability = 4,
		amount = 5,
		index = 82,
		description = "Increase Attack Power by {1} for 30 minutes.",
		experience = 260,
		formatDescription = "foodquality",
		clientId = 42105,
		tier = -1,
		category = "baked goods",
		profession = 8,
		name = "Baked Potatoes",
		slotName = "",
		quality = 75,
		progress = 75,
		itemId = 45557,
		level = {
			single = 2,
			mass = 7
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 4,
				name = "potato"
			}
		}
	},
	{
		durability = 3,
		amount = 5,
		index = 83,
		description = "Used in various recipes. Essential flavor enhancer for a wide range of dishes.",
		experience = 290,
		formatDescription = "foodquality",
		clientId = 42106,
		tier = -1,
		category = "ingredient",
		profession = 8,
		name = "Basic Seasoning",
		slotName = "",
		quality = 50,
		progress = 50,
		itemId = 45558,
		level = {
			single = 5,
			mass = 10
		},
		materials = {
			{
				clientId = 33551,
				itemId = 36983,
				amount = 1,
				name = "salt"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 84,
		description = "Ration of superior quality frequently used by dedicated moa owners. Increases experience received by the moa by 20%, Speed by 20 and Strength by 8 for the next 5000 steps.",
		experience = 1280,
		formatDescription = "",
		clientId = 43649,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Superior Ration",
		slotName = "",
		quality = 150,
		progress = 200,
		itemId = 47101,
		level = {
			single = 20,
			mass = 25
		},
		materials = {
			{
				clientId = 28874,
				itemId = 32306,
				amount = 1,
				name = "potato"
			},
			{
				clientId = 28932,
				itemId = 32364,
				amount = 1,
				name = "shank"
			},
			{
				clientId = 28865,
				itemId = 32297,
				amount = 2,
				name = "carrot"
			},
			{
				clientId = 38161,
				itemId = 41613,
				amount = 1,
				name = "Moa Ration"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 85,
		description = "Ration of superior quality prepared with fresh farm ingredients. Increases experience received by the moa by 30%, Speed by 30 and Strength by 12 for the next 6000 steps.",
		experience = 1760,
		formatDescription = "",
		clientId = 43645,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Rustic Ration",
		slotName = "",
		quality = 225,
		progress = 250,
		itemId = 47097,
		level = {
			single = 35,
			mass = 40
		},
		materials = {
			{
				clientId = 28865,
				itemId = 32297,
				amount = 3,
				name = "carrot"
			},
			{
				clientId = 28932,
				itemId = 32364,
				amount = 1,
				name = "shank"
			},
			{
				clientId = 28864,
				itemId = 32296,
				amount = 1,
				name = "cabbage"
			},
			{
				clientId = 43649,
				itemId = 47101,
				amount = 1,
				name = "Superior Ration"
			}
		}
	},
	{
		durability = 7,
		amount = 5,
		index = 86,
		description = "Masterfully prepared moa ration, heavy in nutrients and vitamins.  Increases experience received by the moa by 40%, Speed by 40 and Strength by 16 for the next 7500 steps.",
		experience = 2640,
		formatDescription = "",
		clientId = 43640,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Gourmet Ration",
		slotName = "",
		quality = 350,
		progress = 375,
		itemId = 47092,
		level = {
			single = 50,
			mass = 55
		},
		materials = {
			{
				clientId = 28865,
				itemId = 32297,
				amount = 1,
				name = "carrot"
			},
			{
				clientId = 28932,
				itemId = 32364,
				amount = 1,
				name = "shank"
			},
			{
				clientId = 28875,
				itemId = 32307,
				amount = 1,
				name = "pumpkin"
			},
			{
				clientId = 43645,
				itemId = 47097,
				amount = 1,
				name = "Rustic Ration"
			}
		}
	},
	{
		durability = 8,
		amount = 5,
		index = 87,
		description = "Masterfully prepared moa ration with carefully selected seafood treats.  Increases experience received by the moa by 50%, Speed by 50 and Strength by 20 for the next 10000 steps.",
		experience = 3500,
		formatDescription = "",
		clientId = 43646,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Seafood Extravaganza",
		slotName = "",
		quality = 500,
		progress = 500,
		itemId = 47098,
		level = {
			single = 60,
			mass = 65
		},
		materials = {
			{
				clientId = 28864,
				itemId = 32296,
				amount = 2,
				name = "cabbage"
			},
			{
				clientId = 40828,
				itemId = 44280,
				amount = 5,
				name = "Fish Oil"
			},
			{
				clientId = 28871,
				itemId = 32303,
				amount = 5,
				name = "pea"
			},
			{
				clientId = 43640,
				itemId = 47092,
				amount = 1,
				name = "Gourmet Ration"
			}
		}
	},
	{
		durability = 9,
		amount = 5,
		index = 88,
		description = "A questionable recipe capable of putting moas in a strange frenzied state. Increases experience received by the moa by 60%, Speed by 60 and Strength by 24 for the next 15000 steps.",
		experience = 4540,
		formatDescription = "",
		clientId = 43642,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Uncanny Ration",
		slotName = "",
		quality = 550,
		progress = 550,
		itemId = 47094,
		level = {
			single = 70,
			mass = 75
		},
		materials = {
			{
				clientId = 28864,
				itemId = 32296,
				amount = 2,
				name = "cabbage"
			},
			{
				clientId = 40828,
				itemId = 44280,
				amount = 5,
				name = "Fish Oil"
			},
			{
				clientId = 28863,
				itemId = 32295,
				amount = 4,
				name = "brocolli"
			},
			{
				clientId = 43646,
				itemId = 47098,
				amount = 1,
				name = "Seafood Extravaganza"
			}
		}
	},
	{
		durability = 10,
		amount = 5,
		index = 89,
		description = "A true delicacy made with exotic seasoning loved by all moas.  Increases experience received by the moa by 75%, Speed by 75 and Strength by 30 for the next 25000 steps.",
		experience = 5700,
		formatDescription = "",
		clientId = 43643,
		tier = -1,
		category = "misc",
		profession = 8,
		name = "Moa's Delight",
		slotName = "",
		quality = 650,
		progress = 650,
		itemId = 47095,
		level = {
			single = 75,
			mass = 80
		},
		materials = {
			{
				clientId = 28875,
				itemId = 32307,
				amount = 2,
				name = "pumpkin"
			},
			{
				clientId = 40828,
				itemId = 44280,
				amount = 5,
				name = "Fish Oil"
			},
			{
				clientId = 28872,
				itemId = 32304,
				amount = 3,
				name = "pepper"
			},
			{
				clientId = 43642,
				itemId = 47094,
				amount = 1,
				name = "Uncanny Ration"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCooking] = {}

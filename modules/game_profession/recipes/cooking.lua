-- chunkname: @/modules/game_profession/recipes/cooking.lua

recipes = recipes or {}
recipes[ProfessionCooking] = {
	{
		formatDescription = "foodquality",
		index = 1,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "drinks",
		experience = 400,
		durability = 4,
		description = "Channel and restore {50} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 28760,
		itemId = 32192,
		name = "Beer",
		profession = 8,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				itemId = 32313,
				amount = 2,
				clientId = 28881,
				name = "wheat"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 2,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "drinks",
		experience = 2080,
		durability = 7,
		description = "Channel and restore {175} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 28882,
		itemId = 32314,
		name = "Wine",
		profession = 8,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32263,
				amount = 4,
				clientId = 28831,
				name = "grape"
			},
			{
				itemId = 45559,
				amount = 1,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 3,
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		category = "drinks",
		experience = 2080,
		durability = 7,
		description = "Increase Mana Regeneration and Health Regeneration by {15} for 20 minutes.",
		tier = -1,
		clientId = 28761,
		itemId = 32193,
		name = "Whiskey",
		profession = 8,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				itemId = 32298,
				amount = 4,
				clientId = 28866,
				name = "corn"
			},
			{
				itemId = 45559,
				amount = 1,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 4,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "drinks",
		experience = 330,
		durability = 4,
		description = "Increase Mana Regeneration and Health Regeneration by {5} for 20 minutes.",
		tier = -1,
		clientId = 28767,
		itemId = 32199,
		name = "Vodka",
		profession = 8,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32306,
				amount = 5,
				clientId = 28874,
				name = "potato"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 5,
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		category = "drinks",
		experience = 3200,
		durability = 7,
		description = "Increase Mana Regeneration and Health Regeneration by {25} for 20 minutes.",
		tier = -1,
		clientId = 28883,
		itemId = 32315,
		name = "Rum",
		profession = 8,
		level = {
			mass = 37,
			single = 32
		},
		materials = {
			{
				itemId = 32254,
				amount = 2,
				clientId = 28822,
				name = "apple"
			},
			{
				itemId = 45559,
				amount = 1,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 6,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "baked goods",
		experience = 690,
		durability = 7,
		description = "Increase Defense Power by {6} for 30 minutes.",
		tier = -1,
		clientId = 28754,
		itemId = 32186,
		name = "Bun",
		profession = 8,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 36985,
				amount = 5,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 7,
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 200,
		category = "baked goods",
		experience = 1260,
		durability = 7,
		description = "Increase Defense Power by {8} for 30 minutes.",
		tier = -1,
		clientId = 28759,
		itemId = 32191,
		name = "Scone",
		profession = 8,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 36985,
				amount = 5,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32361,
				amount = 1,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 8,
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		category = "baked goods",
		experience = 1840,
		durability = 7,
		description = "Increase Defense Power by {12} for 30 minutes.",
		tier = -1,
		clientId = 28765,
		itemId = 32197,
		name = "Muffin",
		profession = 8,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 36985,
				amount = 4,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32361,
				amount = 1,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 47833,
				amount = 2,
				clientId = 44381,
				name = "Honey"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 9,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "baked goods",
		experience = 4400,
		durability = 7,
		description = "Increase Defense Power by {16} for 30 minutes.",
		tier = -1,
		clientId = 28756,
		itemId = 32188,
		name = "Croissant",
		profession = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 45570,
				amount = 5,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 46201,
				amount = 2,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 47833,
				amount = 2,
				clientId = 44381,
				name = "Honey"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 10,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		specialization = "Pastry Expert",
		experience = 4000,
		durability = 9,
		category = "baked goods",
		description = "Increase Defense Power by {25} for 30 minutes.",
		tier = -1,
		clientId = 28757,
		itemId = 32189,
		name = "Danish",
		profession = 8,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 45570,
				amount = 4,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 46201,
				amount = 2,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 47833,
				amount = 2,
				clientId = 44381,
				name = "Honey"
			},
			{
				itemId = 32259,
				amount = 3,
				clientId = 28827,
				name = "strawberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 11,
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		category = "baked goods",
		experience = 930,
		durability = 7,
		description = "Increase Attack Power by {6} for 30 minutes.",
		tier = -1,
		clientId = 28766,
		itemId = 32198,
		name = "Cookies",
		profession = 8,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				itemId = 36985,
				amount = 8,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 12,
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		category = "baked goods",
		experience = 1380,
		durability = 7,
		description = "Increase Attack Power by {8} for 30 minutes.",
		tier = -1,
		clientId = 28764,
		itemId = 32196,
		name = "Deluxe Cookies",
		profession = 8,
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				itemId = 36985,
				amount = 9,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 46201,
				amount = 1,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 13,
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		category = "baked goods",
		experience = 1600,
		durability = 7,
		description = "Increase Attack Power by {12} for 30 minutes.",
		tier = -1,
		clientId = 28755,
		itemId = 32187,
		name = "Cake",
		profession = 8,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				itemId = 36985,
				amount = 6,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32361,
				amount = 1,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 14,
		amount = 5,
		slotName = "",
		quality = 425,
		progress = 450,
		category = "baked goods",
		experience = 5450,
		durability = 8,
		description = "Increase Attack Power by {16} for 30 minutes.",
		tier = -1,
		clientId = 28758,
		itemId = 32190,
		name = "Deluxe Cake",
		profession = 8,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				itemId = 45570,
				amount = 8,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 32361,
				amount = 1,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 15,
		amount = 5,
		slotName = "",
		quality = 600,
		progress = 600,
		specialization = "Pastry Expert",
		experience = 5520,
		durability = 10,
		category = "baked goods",
		description = "Increase Attack Power by {25} for 30 minutes.",
		tier = -1,
		clientId = 28753,
		itemId = 32185,
		name = "Pie",
		profession = 8,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				itemId = 45570,
				amount = 5,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 46201,
				amount = 2,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 32256,
				amount = 2,
				clientId = 28824,
				name = "sunberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 16,
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		category = "meals",
		experience = 7680,
		durability = 7,
		description = "Increase Intelligence by {20} for 30 minutes.",
		tier = -1,
		clientId = 34866,
		itemId = 38298,
		name = "Settler's Stew",
		profession = 8,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				itemId = 32306,
				amount = 20,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 32310,
				amount = 20,
				clientId = 28878,
				name = "bean"
			},
			{
				itemId = 45558,
				amount = 4,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 17,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "meals",
		experience = 8300,
		durability = 9,
		description = "Increase Wisdom by {40} for 30 minutes.",
		tier = -1,
		clientId = 34865,
		itemId = 38297,
		name = "Sailor's Seastew",
		profession = 8,
		level = {
			mass = 74,
			single = 69
		},
		materials = {
			{
				itemId = 44277,
				amount = 5,
				clientId = 40825,
				name = "Black Fish Roe"
			},
			{
				itemId = 32295,
				amount = 6,
				clientId = 28863,
				name = "brocolli"
			},
			{
				itemId = 32303,
				amount = 10,
				clientId = 28871,
				name = "pea"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 18,
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		category = "meals",
		experience = 4000,
		durability = 7,
		description = "Increase Dexterity by {10} for 30 minutes.",
		tier = -1,
		clientId = 34861,
		itemId = 38293,
		name = "Roasted Chicken and Veggies",
		profession = 8,
		level = {
			mass = 28,
			single = 23
		},
		materials = {
			{
				itemId = 32182,
				amount = 1,
				clientId = 28750,
				name = "chicken"
			},
			{
				itemId = 32297,
				amount = 1,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32359,
				amount = 1,
				clientId = 28927,
				name = "cheese"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 19,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "meals",
		experience = 8200,
		durability = 9,
		description = "Increase Might by {40} for 30 minutes.",
		tier = -1,
		clientId = 34857,
		itemId = 38289,
		name = "Firered Chicken Kebab",
		profession = 8,
		level = {
			mass = 71,
			single = 66
		},
		materials = {
			{
				itemId = 32182,
				amount = 3,
				clientId = 28750,
				name = "chicken"
			},
			{
				itemId = 32301,
				amount = 2,
				clientId = 28869,
				name = "garlic"
			},
			{
				itemId = 32264,
				amount = 1,
				clientId = 28832,
				name = "orange"
			},
			{
				itemId = 45578,
				amount = 1,
				clientId = 42126,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 20,
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		category = "meals",
		experience = 2960,
		durability = 7,
		description = "Increase Intelligence by {10} for 30 minutes.",
		tier = -1,
		clientId = 34849,
		itemId = 38281,
		name = "Charred Meat Kebab",
		profession = 8,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				itemId = 32363,
				amount = 2,
				clientId = 28931,
				name = "beef"
			},
			{
				itemId = 32297,
				amount = 2,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32296,
				amount = 2,
				clientId = 28864,
				name = "cabbage"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 21,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "meals",
		experience = 10000,
		durability = 9,
		description = "Increase Intelligence by {40} for 30 minutes.",
		tier = -1,
		clientId = 34859,
		itemId = 38291,
		name = "Lyderian Chopped Tenderloin",
		profession = 8,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				itemId = 32363,
				amount = 4,
				clientId = 28931,
				name = "beef"
			},
			{
				itemId = 32301,
				amount = 6,
				clientId = 28869,
				name = "garlic"
			},
			{
				itemId = 45578,
				amount = 2,
				clientId = 42126,
				name = "Spicy Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 22,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "meals",
		experience = 3400,
		durability = 7,
		description = "Increase Might by {10} for 30 minutes.",
		tier = -1,
		clientId = 34869,
		itemId = 38301,
		name = "Smoked Sausage",
		profession = 8,
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				itemId = 32364,
				amount = 2,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			},
			{
				itemId = 32306,
				amount = 4,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 32304,
				amount = 2,
				clientId = 28872,
				name = "pepper"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 23,
		amount = 5,
		slotName = "",
		quality = 450,
		progress = 500,
		category = "meals",
		experience = 13280,
		durability = 9,
		description = "Increase Dexterity by {30} for 30 minutes.",
		tier = -1,
		clientId = 34847,
		itemId = 38279,
		name = "Acornchar Sausage",
		profession = 8,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				itemId = 32364,
				amount = 3,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 45564,
				amount = 2,
				clientId = 42112,
				name = "Gourmet Seasoning"
			},
			{
				itemId = 32261,
				amount = 2,
				clientId = 28829,
				name = "acorn"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 24,
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		category = "meals",
		experience = 2160,
		durability = 7,
		description = "Increase Vitality by {20} for 30 minutes.",
		tier = -1,
		clientId = 34864,
		itemId = 38296,
		name = "Rum Downslider",
		profession = 8,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 44281,
				amount = 5,
				clientId = 40829,
				name = "Fish Roe"
			},
			{
				itemId = 32296,
				amount = 2,
				clientId = 28864,
				name = "cabbage"
			},
			{
				itemId = 45575,
				amount = 1,
				clientId = 42123,
				name = "Seafood Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 25,
		amount = 5,
		slotName = "",
		quality = 500,
		progress = 550,
		category = "meals",
		experience = 5900,
		durability = 9,
		description = "Increase Wisdom by {30} for 30 minutes.",
		tier = -1,
		clientId = 34853,
		itemId = 38285,
		name = "Freshfish Roll",
		profession = 8,
		level = {
			mass = 59,
			single = 54
		},
		materials = {
			{
				itemId = 44285,
				amount = 5,
				clientId = 40833,
				name = "Red Fish Roe"
			},
			{
				itemId = 32359,
				amount = 1,
				clientId = 28927,
				name = "cheese"
			},
			{
				itemId = 45564,
				amount = 2,
				clientId = 42112,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 26,
		amount = 5,
		slotName = "",
		quality = 300,
		progress = 350,
		category = "meals",
		experience = 3500,
		durability = 7,
		description = "Increase Wisdom by {20} for 30 minutes.",
		tier = -1,
		clientId = 34852,
		itemId = 38284,
		name = "Fillet Lucien",
		profession = 8,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				itemId = 32363,
				amount = 1,
				clientId = 28931,
				name = "beef"
			},
			{
				itemId = 36985,
				amount = 5,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 32307,
				amount = 1,
				clientId = 28875,
				name = "pumpkin"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 27,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "meals",
		experience = 9840,
		durability = 9,
		description = "Increase Dexterity by {40} for 30 minutes.",
		tier = -1,
		clientId = 34862,
		itemId = 38294,
		name = "Rohna Roasted Ham",
		profession = 8,
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				itemId = 32364,
				amount = 4,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 45578,
				amount = 2,
				clientId = 42126,
				name = "Spicy Seasoning"
			},
			{
				itemId = 32302,
				amount = 5,
				clientId = 28870,
				name = "onion"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 28,
		amount = 5,
		slotName = "",
		quality = 175,
		progress = 200,
		category = "meals",
		experience = 6680,
		durability = 7,
		description = "Increase Wisdom by {10} for 30 minutes.",
		tier = -1,
		clientId = 34860,
		itemId = 38292,
		name = "Ravendawnian Porridge",
		profession = 8,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				itemId = 32313,
				amount = 5,
				clientId = 28881,
				name = "wheat"
			},
			{
				itemId = 32254,
				amount = 3,
				clientId = 28822,
				name = "apple"
			},
			{
				itemId = 32361,
				amount = 3,
				clientId = 28929,
				name = "milk"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 29,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "meals",
		experience = 13280,
		durability = 9,
		description = "Increase Vitality by {40} for 30 minutes.",
		tier = -1,
		clientId = 34870,
		itemId = 38302,
		name = "Sweetened Beans",
		profession = 8,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 32310,
				amount = 15,
				clientId = 28878,
				name = "bean"
			},
			{
				itemId = 32254,
				amount = 4,
				clientId = 28822,
				name = "apple"
			},
			{
				itemId = 32255,
				amount = 2,
				clientId = 28823,
				name = "banana"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 30,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "meals",
		experience = 4720,
		durability = 7,
		description = "Increase Vitality by {10} for 30 minutes.",
		tier = -1,
		clientId = 34855,
		itemId = 38287,
		name = "Fruit Pancakes",
		profession = 8,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32361,
				amount = 2,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 32360,
				amount = 4,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 36985,
				amount = 6,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32263,
				amount = 5,
				clientId = 28831,
				name = "grape"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 31,
		amount = 5,
		slotName = "",
		quality = 425,
		progress = 450,
		category = "meals",
		experience = 7200,
		durability = 8,
		description = "Increase Intelligence by {30} for 30 minutes.",
		tier = -1,
		clientId = 34858,
		itemId = 38290,
		name = "Lucien's Waffles",
		profession = 8,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				itemId = 32298,
				amount = 3,
				clientId = 28866,
				name = "corn"
			},
			{
				itemId = 32360,
				amount = 6,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 45570,
				amount = 5,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 32259,
				amount = 8,
				clientId = 28827,
				name = "strawberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 32,
		amount = 5,
		slotName = "",
		quality = 275,
		progress = 300,
		category = "meals",
		experience = 8700,
		durability = 7,
		description = "Increase Dexterity by {20} for 30 minutes.",
		tier = -1,
		clientId = 34851,
		itemId = 38283,
		name = "Dwarven Purple Shank",
		profession = 8,
		level = {
			mass = 43,
			single = 38
		},
		materials = {
			{
				itemId = 32364,
				amount = 2,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 32263,
				amount = 7,
				clientId = 28831,
				name = "grape"
			},
			{
				itemId = 32260,
				amount = 2,
				clientId = 28828,
				name = "watermelon"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 33,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		specialization = "Gourmet Chef",
		experience = 18240,
		durability = 9,
		category = "meals",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {10} for 30 minutes",
		tier = -1,
		clientId = 34848,
		itemId = 38280,
		name = "Bittersweet Roast",
		profession = 8,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32363,
				amount = 6,
				clientId = 28931,
				name = "beef"
			},
			{
				itemId = 32295,
				amount = 5,
				clientId = 28863,
				name = "brocolli"
			},
			{
				itemId = 32262,
				amount = 5,
				clientId = 28830,
				name = "cherry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 34,
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		category = "meals",
		experience = 2400,
		durability = 7,
		description = "Increase Might by {20} for 30 minutes.",
		tier = -1,
		clientId = 34868,
		itemId = 38300,
		name = "Shaked Fruitmilk",
		profession = 8,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				itemId = 32361,
				amount = 2,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 32259,
				amount = 2,
				clientId = 28827,
				name = "strawberry"
			},
			{
				itemId = 32257,
				amount = 10,
				clientId = 28825,
				name = "blueberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 35,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "meals",
		experience = 4300,
		durability = 7,
		description = "Increase Might by {30} for 30 minutes.",
		tier = -1,
		clientId = 34854,
		itemId = 38286,
		name = "Frozen Sweet Berries",
		profession = 8,
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				itemId = 32257,
				amount = 10,
				clientId = 28825,
				name = "blueberry"
			},
			{
				itemId = 32262,
				amount = 1,
				clientId = 28830,
				name = "cherry"
			},
			{
				itemId = 32258,
				amount = 2,
				clientId = 28826,
				name = "moonberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 36,
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		specialization = "Gourmet Chef",
		experience = 13200,
		durability = 12,
		category = "meals",
		description = "Increase Movement Speed by {15%} for 30 minutes",
		tier = -1,
		clientId = 34856,
		itemId = 38288,
		name = "Iced Fruitmilk",
		profession = 8,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32361,
				amount = 5,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 32264,
				amount = 2,
				clientId = 28832,
				name = "orange"
			},
			{
				itemId = 32256,
				amount = 3,
				clientId = 28824,
				name = "sunberry"
			},
			{
				itemId = 32258,
				amount = 3,
				clientId = 28826,
				name = "moonberry"
			}
		}
	},
	{
		formatDescription = "",
		index = 37,
		amount = 20,
		slotName = "",
		quality = 100,
		progress = 100,
		category = "ingredient",
		experience = 1300,
		durability = 4,
		description = "Required for cooking certain recipes.",
		tier = -1,
		clientId = 33553,
		itemId = 36985,
		name = "Ground Flour",
		profession = 8,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32298,
				amount = 10,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "",
		index = 38,
		amount = 10,
		slotName = "",
		quality = 100,
		progress = 100,
		category = "ingredient",
		experience = 650,
		durability = 4,
		description = "Required for cooking certain recipes.",
		tier = -1,
		clientId = 33553,
		itemId = 36985,
		name = "Ground Flour",
		profession = 8,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32313,
				amount = 10,
				clientId = 28881,
				name = "wheat"
			}
		}
	},
	{
		formatDescription = "",
		index = 39,
		amount = 1,
		slotName = "",
		quality = 50,
		progress = 50,
		category = "ingredient",
		experience = 130,
		durability = 3,
		description = "Required for cooking certain recipes.",
		tier = -1,
		clientId = 34899,
		itemId = 38331,
		name = "Oil",
		profession = 8,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				itemId = 32298,
				amount = 1,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "",
		index = 40,
		amount = 10,
		slotName = "",
		quality = 100,
		progress = 150,
		category = "misc",
		experience = 1720,
		durability = 6,
		description = "Used in husbandry.",
		tier = -1,
		clientId = 34896,
		itemId = 38328,
		name = "Basic Animal Feed",
		profession = 8,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32313,
				amount = 3,
				clientId = 28881,
				name = "wheat"
			},
			{
				itemId = 32297,
				amount = 2,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32298,
				amount = 2,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "",
		index = 41,
		amount = 10,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "misc",
		experience = 10000,
		durability = 7,
		description = "Used in husbandry.",
		tier = -1,
		clientId = 34897,
		itemId = 38329,
		name = "Complex Animal Feed",
		profession = 8,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 32261,
				amount = 1,
				clientId = 28829,
				name = "acorn"
			},
			{
				itemId = 32254,
				amount = 2,
				clientId = 28822,
				name = "apple"
			},
			{
				itemId = 32307,
				amount = 1,
				clientId = 28875,
				name = "pumpkin"
			},
			{
				itemId = 32303,
				amount = 5,
				clientId = 28871,
				name = "pea"
			}
		}
	},
	{
		formatDescription = "",
		index = 42,
		amount = 1,
		slotName = "",
		quality = 500,
		progress = 500,
		category = "ingredient",
		experience = 360,
		durability = 9,
		description = "Required for cooking certain recipes.",
		tier = -1,
		clientId = 34900,
		itemId = 38332,
		name = "Spiced Oil",
		profession = 8,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				itemId = 38331,
				amount = 1,
				clientId = 34899,
				name = "Oil"
			},
			{
				itemId = 32304,
				amount = 2,
				clientId = 28872,
				name = "pepper"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 43,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "drinks",
		experience = 1280,
		durability = 4,
		description = "Channel and restore {100} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 35397,
		itemId = 38829,
		name = "Apple Cider",
		profession = 8,
		level = {
			mass = 22,
			single = 17
		},
		materials = {
			{
				itemId = 32254,
				amount = 1,
				clientId = 28822,
				name = "apple"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 44,
		amount = 5,
		slotName = "",
		quality = 300,
		progress = 350,
		category = "drinks",
		experience = 4640,
		durability = 7,
		description = "Channel and restore {325} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 35400,
		itemId = 38832,
		name = "Blueberry Wine",
		profession = 8,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				itemId = 32263,
				amount = 7,
				clientId = 28831,
				name = "grape"
			},
			{
				itemId = 32257,
				amount = 10,
				clientId = 28825,
				name = "blueberry"
			},
			{
				itemId = 45559,
				amount = 2,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 45,
		amount = 5,
		slotName = "",
		quality = 600,
		progress = 600,
		specialization = "Sommelier",
		experience = 8800,
		durability = 10,
		category = "drinks",
		description = "Increase Mana Regeneration and Health Regeneration by {60} for 20 minutes.",
		tier = -1,
		clientId = 35399,
		itemId = 38831,
		name = "Strawberry Whiskey",
		profession = 8,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				itemId = 32298,
				amount = 14,
				clientId = 28866,
				name = "corn"
			},
			{
				itemId = 32259,
				amount = 10,
				clientId = 28827,
				name = "strawberry"
			},
			{
				itemId = 45559,
				amount = 3,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 46,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "drinks",
		experience = 6560,
		durability = 9,
		description = "Increase Mana Regeneration and Health Regeneration by {45} for 20 minutes.",
		tier = -1,
		clientId = 35398,
		itemId = 38830,
		name = "Banana Vodka",
		profession = 8,
		level = {
			mass = 62,
			single = 57
		},
		materials = {
			{
				itemId = 32306,
				amount = 20,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 32255,
				amount = 2,
				clientId = 28823,
				name = "banana"
			},
			{
				itemId = 45559,
				amount = 2,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 47,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "drinks",
		experience = 6560,
		durability = 9,
		description = "Channel and restore {400} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 35401,
		itemId = 38833,
		name = "Spiced Rum",
		profession = 8,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				itemId = 32254,
				amount = 4,
				clientId = 28822,
				name = "apple"
			},
			{
				itemId = 38332,
				amount = 1,
				clientId = 34900,
				name = "Spiced Oil"
			},
			{
				itemId = 45559,
				amount = 2,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 48,
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		specialization = "Gourmet Chef",
		experience = 13600,
		durability = 12,
		category = "meals",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {15} for 30 minutes",
		tier = -1,
		clientId = 35402,
		itemId = 38834,
		name = "Shanks n' Mash",
		profession = 8,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32364,
				amount = 4,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 32301,
				amount = 15,
				clientId = 28869,
				name = "garlic"
			},
			{
				itemId = 32361,
				amount = 8,
				clientId = 28929,
				name = "milk"
			}
		}
	},
	{
		formatDescription = "",
		index = 49,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 150,
		category = "misc",
		experience = 640,
		durability = 6,
		description = "Standard Moa feed. Sold by Jebediah at the Ravencrest Farms or crafted at a cooking station.",
		tier = -1,
		clientId = 38161,
		itemId = 41613,
		name = "Moa Ration",
		profession = 8,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32298,
				amount = 1,
				clientId = 28866,
				name = "corn"
			},
			{
				itemId = 32313,
				amount = 1,
				clientId = 28881,
				name = "wheat"
			},
			{
				itemId = 32306,
				amount = 1,
				clientId = 28874,
				name = "potato"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 50,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		category = "meals",
		experience = 1200,
		durability = 5,
		description = "Increase Wisdom by {4} for 30 minutes.",
		tier = -1,
		clientId = 42109,
		itemId = 45561,
		name = "Corn Chowder",
		profession = 8,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				itemId = 32298,
				amount = 3,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 51,
		amount = 2,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "ingredient",
		experience = 368,
		durability = 6,
		description = "Used in various recipes. A creamy and rich delight churned from milk.",
		tier = -1,
		clientId = 42749,
		itemId = 46201,
		name = "Butter",
		profession = 8,
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				itemId = 32361,
				amount = 2,
				clientId = 28929,
				name = "milk"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 52,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "baked goods",
		experience = 800,
		durability = 4,
		description = "Increase Defense Power by {1} for 30 minutes.",
		tier = -1,
		clientId = 42110,
		itemId = 45562,
		name = "Corn on a Cob",
		profession = 8,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				itemId = 32298,
				amount = 2,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 53,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "baked goods",
		experience = 480,
		durability = 6,
		description = "Increase Healing Power by {4} for 30 minutes.",
		tier = -1,
		clientId = 42748,
		itemId = 46200,
		name = "Glademire Crackers",
		profession = 8,
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				itemId = 36985,
				amount = 6,
				clientId = 33553,
				name = "Ground Flour"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 54,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		category = "meals",
		experience = 1200,
		durability = 5,
		description = "Increase Vitality by {4} for 30 minutes.",
		tier = -1,
		clientId = 42128,
		itemId = 45580,
		name = "Corn Salad",
		profession = 8,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				itemId = 32298,
				amount = 3,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 55,
		amount = 20,
		slotName = "",
		quality = 325,
		progress = 350,
		category = "ingredient",
		experience = 530,
		durability = 7,
		description = "Used in various recipes. A finely milled flour, imbued with fine ingredients.",
		tier = -1,
		clientId = 42118,
		itemId = 45570,
		name = "Rich Flour",
		profession = 8,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				itemId = 36985,
				amount = 20,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 37802,
				amount = 1,
				clientId = 34370,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 56,
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		category = "baked goods",
		experience = 2400,
		durability = 7,
		description = "Increase Healing Power by {8} for 30 minutes.",
		tier = -1,
		clientId = 42111,
		itemId = 45563,
		name = "Cornbread",
		profession = 8,
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				itemId = 36985,
				amount = 8,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32298,
				amount = 4,
				clientId = 28866,
				name = "corn"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 57,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		specialization = "Sommelier",
		experience = 8800,
		durability = 9,
		category = "drinks",
		description = "Channel and restore {600} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 42723,
		itemId = 46175,
		name = "Eclipse",
		profession = 8,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32258,
				amount = 5,
				clientId = 28826,
				name = "moonberry"
			},
			{
				itemId = 32256,
				amount = 4,
				clientId = 28824,
				name = "sunberry"
			},
			{
				itemId = 45559,
				amount = 3,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 58,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 175,
		category = "ingredient",
		experience = 1000,
		durability = 7,
		description = "Used in various recipes. A highly sophisticated blend of flavorful herbs and spices.",
		tier = -1,
		clientId = 42112,
		itemId = 45564,
		name = "Gourmet Seasoning",
		profession = 8,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				itemId = 36983,
				amount = 3,
				clientId = 33551,
				name = "salt"
			},
			{
				itemId = 32302,
				amount = 1,
				clientId = 28870,
				name = "onion"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 59,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 150,
		category = "drinks",
		experience = 1280,
		durability = 6,
		description = "Increase Mana Regeneration and Health Regeneration by {10} for 20 minutes.",
		tier = -1,
		clientId = 42724,
		itemId = 46176,
		name = "Landing Brandy",
		profession = 8,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				itemId = 32254,
				amount = 1,
				clientId = 28822,
				name = "apple"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 60,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "baked goods",
		experience = 930,
		durability = 7,
		description = "Increase Healing Power by {6} for 30 minutes.",
		tier = -1,
		clientId = 42113,
		itemId = 45565,
		name = "Loaf Bread",
		profession = 8,
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				itemId = 36985,
				amount = 8,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 61,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "meals",
		experience = 910,
		durability = 6,
		description = "Increase Might by {6} for 30 minutes.",
		tier = -1,
		clientId = 42114,
		itemId = 45566,
		name = "Lyderian Fries",
		profession = 8,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32306,
				amount = 12,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 38331,
				amount = 1,
				clientId = 34899,
				name = "Oil"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 62,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		category = "meals",
		experience = 520,
		durability = 5,
		description = "Increase Might by {4} for 30 minutes.",
		tier = -1,
		clientId = 42115,
		itemId = 45567,
		name = "Mashed Potatoes",
		profession = 8,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				itemId = 32306,
				amount = 8,
				clientId = 28874,
				name = "potato"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 63,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "meals",
		experience = 1760,
		durability = 6,
		description = "Increase Dexterity by {6} for 30 minutes.",
		tier = -1,
		clientId = 42116,
		itemId = 45568,
		name = "Omelet",
		profession = 8,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 32361,
				amount = 2,
				clientId = 28929,
				name = "milk"
			}
		}
	},
	{
		formatDescription = "",
		index = 64,
		amount = 5,
		slotName = "",
		quality = 200,
		progress = 225,
		category = "drinks",
		experience = 3200,
		durability = 7,
		description = "Channel and restore {250} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		tier = -1,
		clientId = 42721,
		itemId = 46173,
		name = "Orange Liqueur",
		profession = 8,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				itemId = 32264,
				amount = 1,
				clientId = 28832,
				name = "orange"
			},
			{
				itemId = 45559,
				amount = 1,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 65,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "baked goods",
		experience = 620,
		durability = 4,
		description = "Increase Healing Power by {1} for 30 minutes.",
		tier = -1,
		clientId = 42117,
		itemId = 45569,
		name = "Potato Bread",
		profession = 8,
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				itemId = 32306,
				amount = 3,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 32298,
				amount = 1,
				clientId = 28866,
				name = "corn"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 67,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "baked goods",
		experience = 480,
		durability = 6,
		description = "Increase Defense Power by {4} for 30 minutes.",
		tier = -1,
		clientId = 42119,
		itemId = 45571,
		name = "Rohna Crackers",
		profession = 8,
		level = {
			mass = 19,
			single = 14
		},
		materials = {
			{
				itemId = 36985,
				amount = 6,
				clientId = 33553,
				name = "Ground Flour"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 68,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		specialization = "Pastry Expert",
		experience = 5740,
		durability = 9,
		category = "baked goods",
		description = "Increase Healing Power by {25} for 30 minutes.",
		tier = -1,
		clientId = 42120,
		itemId = 45572,
		name = "Rye Bread",
		profession = 8,
		level = {
			mass = 76,
			single = 71
		},
		materials = {
			{
				itemId = 45570,
				amount = 7,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 46201,
				amount = 2,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 32303,
				amount = 2,
				clientId = 28871,
				name = "pea"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 69,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "baked goods",
		experience = 450,
		durability = 6,
		description = "Increase Attack Power by {4} for 30 minutes.",
		tier = -1,
		clientId = 42121,
		itemId = 45573,
		name = "Sajecho Hardtack",
		profession = 8,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				itemId = 36985,
				amount = 2,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 44284,
				amount = 2,
				clientId = 40832,
				name = "Orange Scales"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 70,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		category = "meals",
		experience = 640,
		durability = 5,
		description = "Increase Dexterity by {4} for 30 minutes.",
		tier = -1,
		clientId = 42122,
		itemId = 45574,
		name = "Scrambled Eggs",
		profession = 8,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 71,
		amount = 5,
		slotName = "",
		quality = 50,
		progress = 50,
		category = "ingredient",
		experience = 560,
		durability = 3,
		description = "Used in various recipes. This flavorful blend captures the essence of the sea.",
		tier = -1,
		clientId = 42123,
		itemId = 45575,
		name = "Seafood Seasoning",
		profession = 8,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				itemId = 36983,
				amount = 1,
				clientId = 33551,
				name = "salt"
			},
			{
				itemId = 44284,
				amount = 5,
				clientId = 40832,
				name = "Orange Scales"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 72,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "meals",
		experience = 1000,
		durability = 6,
		description = "Increase Wisdom by {6} for 30 minutes.",
		tier = -1,
		clientId = 42124,
		itemId = 45576,
		name = "Silky Scrambled Eggs",
		profession = 8,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 46201,
				amount = 1,
				clientId = 42749,
				name = "Butter"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 73,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "baked goods",
		experience = 4230,
		durability = 7,
		description = "Increase Healing Power by {16} for 30 minutes.",
		tier = -1,
		clientId = 42125,
		itemId = 45577,
		name = "Sourdought Bagel",
		profession = 8,
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				itemId = 45570,
				amount = 5,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 32361,
				amount = 1,
				clientId = 28929,
				name = "milk"
			},
			{
				itemId = 45564,
				amount = 1,
				clientId = 42112,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 74,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "ingredient",
		experience = 2048,
		durability = 9,
		description = "Used in various recipes. Ignite your taste buds with this fiery fusion of spices.",
		tier = -1,
		clientId = 42126,
		itemId = 45578,
		name = "Spicy Seasoning",
		profession = 8,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				itemId = 36983,
				amount = 5,
				clientId = 33551,
				name = "salt"
			},
			{
				itemId = 32304,
				amount = 2,
				clientId = 28872,
				name = "pepper"
			},
			{
				itemId = 37802,
				amount = 1,
				clientId = 34370,
				name = "Three-Leaf Clover"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 75,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "meals",
		experience = 920,
		durability = 6,
		description = "Increase Vitality by {6} for 30 minutes.",
		tier = -1,
		clientId = 42127,
		itemId = 45579,
		name = "Steamed Carrots",
		profession = 8,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32297,
				amount = 4,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 45558,
				amount = 1,
				clientId = 42106,
				name = "Basic Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 76,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "meals",
		experience = 2800,
		durability = 7,
		description = "Increase Vitality by {30} for 30 minutes.",
		tier = -1,
		clientId = 42725,
		itemId = 46177,
		name = "Blueberry Pie",
		profession = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 46201,
				amount = 2,
				clientId = 42749,
				name = "Butter"
			},
			{
				itemId = 45570,
				amount = 2,
				clientId = 42118,
				name = "Rich Flour"
			},
			{
				itemId = 32257,
				amount = 10,
				clientId = 28825,
				name = "blueberry"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 77,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "drinks",
		experience = 4640,
		durability = 7,
		description = "Increase Mana Regeneration and Health Regeneration by {35} for 20 minutes.",
		tier = -1,
		clientId = 42722,
		itemId = 46174,
		name = "Boozemelon",
		profession = 8,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				itemId = 32260,
				amount = 1,
				clientId = 28828,
				name = "watermelon"
			},
			{
				itemId = 32307,
				amount = 1,
				clientId = 28875,
				name = "pumpkin"
			},
			{
				itemId = 45559,
				amount = 2,
				clientId = 42107,
				name = "Brewer Yeast"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 78,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "ingredient",
		experience = 470,
		durability = 7,
		description = "Used in various recipes. A vital ingredient in the art of brewing.",
		tier = -1,
		clientId = 42107,
		itemId = 45559,
		name = "Brewer Yeast",
		profession = 8,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 44284,
				amount = 5,
				clientId = 40832,
				name = "Orange Scales"
			},
			{
				itemId = 32313,
				amount = 3,
				clientId = 28881,
				name = "wheat"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 79,
		amount = 5,
		slotName = "",
		quality = 125,
		progress = 175,
		category = "meals",
		experience = 1000,
		durability = 6,
		description = "Increase Intelligence by {6} for 30 minutes.",
		tier = -1,
		clientId = 42108,
		itemId = 45560,
		name = "Carrot Soup",
		profession = 8,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				itemId = 32297,
				amount = 5,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32306,
				amount = 3,
				clientId = 28874,
				name = "potato"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 80,
		amount = 5,
		slotName = "",
		quality = 100,
		progress = 125,
		category = "meals",
		experience = 2640,
		durability = 5,
		description = "Increase Intelligence by {4} for 30 minutes.",
		tier = -1,
		clientId = 42103,
		itemId = 45555,
		name = "Apple Puree",
		profession = 8,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				itemId = 32254,
				amount = 2,
				clientId = 28822,
				name = "apple"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 81,
		amount = 5,
		slotName = "",
		quality = 250,
		progress = 275,
		category = "baked goods",
		experience = 1920,
		durability = 7,
		description = "Increase Healing Power by {12} for 30 minutes.",
		tier = -1,
		clientId = 42104,
		itemId = 45556,
		name = "Bagel",
		profession = 8,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				itemId = 36985,
				amount = 4,
				clientId = 33553,
				name = "Ground Flour"
			},
			{
				itemId = 32360,
				amount = 2,
				clientId = 28928,
				name = "egg"
			},
			{
				itemId = 45564,
				amount = 1,
				clientId = 42112,
				name = "Gourmet Seasoning"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 82,
		amount = 5,
		slotName = "",
		quality = 75,
		progress = 75,
		category = "baked goods",
		experience = 260,
		durability = 4,
		description = "Increase Attack Power by {1} for 30 minutes.",
		tier = -1,
		clientId = 42105,
		itemId = 45557,
		name = "Baked Potatoes",
		profession = 8,
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				itemId = 32306,
				amount = 4,
				clientId = 28874,
				name = "potato"
			}
		}
	},
	{
		formatDescription = "foodquality",
		index = 83,
		amount = 5,
		slotName = "",
		quality = 50,
		progress = 50,
		category = "ingredient",
		experience = 290,
		durability = 3,
		description = "Used in various recipes. Essential flavor enhancer for a wide range of dishes.",
		tier = -1,
		clientId = 42106,
		itemId = 45558,
		name = "Basic Seasoning",
		profession = 8,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				itemId = 36983,
				amount = 1,
				clientId = 33551,
				name = "salt"
			}
		}
	},
	{
		formatDescription = "",
		index = 84,
		amount = 5,
		slotName = "",
		quality = 150,
		progress = 200,
		category = "misc",
		experience = 1280,
		durability = 7,
		description = "Ration of superior quality frequently used by dedicated moa owners. Increases experience received by the moa by 20%, Speed by 20 and Strength by 8 for the next 5000 steps.",
		tier = -1,
		clientId = 43649,
		itemId = 47101,
		name = "Superior Ration",
		profession = 8,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				itemId = 32306,
				amount = 1,
				clientId = 28874,
				name = "potato"
			},
			{
				itemId = 32364,
				amount = 1,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 32297,
				amount = 2,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 41613,
				amount = 1,
				clientId = 38161,
				name = "Moa Ration"
			}
		}
	},
	{
		formatDescription = "",
		index = 85,
		amount = 5,
		slotName = "",
		quality = 225,
		progress = 250,
		category = "misc",
		experience = 1760,
		durability = 7,
		description = "Ration of superior quality prepared with fresh farm ingredients. Increases experience received by the moa by 30%, Speed by 30 and Strength by 12 for the next 6000 steps.",
		tier = -1,
		clientId = 43645,
		itemId = 47097,
		name = "Rustic Ration",
		profession = 8,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				itemId = 32297,
				amount = 3,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32364,
				amount = 1,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 32296,
				amount = 1,
				clientId = 28864,
				name = "cabbage"
			},
			{
				itemId = 47101,
				amount = 1,
				clientId = 43649,
				name = "Superior Ration"
			}
		}
	},
	{
		formatDescription = "",
		index = 86,
		amount = 5,
		slotName = "",
		quality = 350,
		progress = 375,
		category = "misc",
		experience = 2640,
		durability = 7,
		description = "Masterfully prepared moa ration, heavy in nutrients and vitamins.  Increases experience received by the moa by 40%, Speed by 40 and Strength by 16 for the next 7500 steps.",
		tier = -1,
		clientId = 43640,
		itemId = 47092,
		name = "Gourmet Ration",
		profession = 8,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				itemId = 32297,
				amount = 1,
				clientId = 28865,
				name = "carrot"
			},
			{
				itemId = 32364,
				amount = 1,
				clientId = 28932,
				name = "shank"
			},
			{
				itemId = 32307,
				amount = 1,
				clientId = 28875,
				name = "pumpkin"
			},
			{
				itemId = 47097,
				amount = 1,
				clientId = 43645,
				name = "Rustic Ration"
			}
		}
	},
	{
		formatDescription = "",
		index = 87,
		amount = 5,
		slotName = "",
		quality = 500,
		progress = 500,
		category = "misc",
		experience = 3500,
		durability = 8,
		description = "Masterfully prepared moa ration with carefully selected seafood treats.  Increases experience received by the moa by 50%, Speed by 50 and Strength by 20 for the next 10000 steps.",
		tier = -1,
		clientId = 43646,
		itemId = 47098,
		name = "Seafood Extravaganza",
		profession = 8,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				itemId = 32296,
				amount = 2,
				clientId = 28864,
				name = "cabbage"
			},
			{
				itemId = 44280,
				amount = 5,
				clientId = 40828,
				name = "Fish Oil"
			},
			{
				itemId = 32303,
				amount = 5,
				clientId = 28871,
				name = "pea"
			},
			{
				itemId = 47092,
				amount = 1,
				clientId = 43640,
				name = "Gourmet Ration"
			}
		}
	},
	{
		formatDescription = "",
		index = 88,
		amount = 5,
		slotName = "",
		quality = 550,
		progress = 550,
		category = "misc",
		experience = 4540,
		durability = 9,
		description = "A questionable recipe capable of putting moas in a strange frenzied state. Increases experience received by the moa by 60%, Speed by 60 and Strength by 24 for the next 15000 steps.",
		tier = -1,
		clientId = 43642,
		itemId = 47094,
		name = "Uncanny Ration",
		profession = 8,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				itemId = 32296,
				amount = 2,
				clientId = 28864,
				name = "cabbage"
			},
			{
				itemId = 44280,
				amount = 5,
				clientId = 40828,
				name = "Fish Oil"
			},
			{
				itemId = 32295,
				amount = 4,
				clientId = 28863,
				name = "brocolli"
			},
			{
				itemId = 47098,
				amount = 1,
				clientId = 43646,
				name = "Seafood Extravaganza"
			}
		}
	},
	{
		formatDescription = "",
		index = 89,
		amount = 5,
		slotName = "",
		quality = 650,
		progress = 650,
		category = "misc",
		experience = 5700,
		durability = 10,
		description = "A true delicacy made with exotic seasoning loved by all moas.  Increases experience received by the moa by 75%, Speed by 75 and Strength by 30 for the next 25000 steps.",
		tier = -1,
		clientId = 43643,
		itemId = 47095,
		name = "Moa's Delight",
		profession = 8,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				itemId = 32307,
				amount = 2,
				clientId = 28875,
				name = "pumpkin"
			},
			{
				itemId = 44280,
				amount = 5,
				clientId = 40828,
				name = "Fish Oil"
			},
			{
				itemId = 32304,
				amount = 3,
				clientId = 28872,
				name = "pepper"
			},
			{
				itemId = 47094,
				amount = 1,
				clientId = 43642,
				name = "Uncanny Ration"
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCooking] = {}

-- chunkname: @/modules/game_profession/recipes/cooking.lua

recipes = recipes or {}
recipes[ProfessionCooking] = {
	{
		name = "Beer",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 28760,
		itemId = 32192,
		slotName = "",
		experience = 400,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 1,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {50} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "wheat",
				clientId = 28881,
				amount = 2,
				itemId = 32313
			}
		}
	},
	{
		name = "Wine",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 28882,
		itemId = 32314,
		slotName = "",
		experience = 2080,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 2,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {175} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "grape",
				clientId = 28831,
				amount = 4,
				itemId = 32263
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 1,
				itemId = 45559
			}
		}
	},
	{
		name = "Whiskey",
		quality = 175,
		tier = -1,
		profession = 8,
		clientId = 28761,
		itemId = 32193,
		slotName = "",
		experience = 2080,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 3,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {15} for 20 minutes.",
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 4,
				itemId = 32298
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 1,
				itemId = 45559
			}
		}
	},
	{
		name = "Vodka",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 28767,
		itemId = 32199,
		slotName = "",
		experience = 330,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 4,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {5} for 20 minutes.",
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 5,
				itemId = 32306
			}
		}
	},
	{
		name = "Rum",
		quality = 225,
		tier = -1,
		profession = 8,
		clientId = 28883,
		itemId = 32315,
		slotName = "",
		experience = 3200,
		progress = 250,
		durability = 7,
		amount = 5,
		index = 5,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {25} for 20 minutes.",
		level = {
			mass = 37,
			single = 32
		},
		materials = {
			{
				name = "apple",
				clientId = 28822,
				amount = 2,
				itemId = 32254
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 1,
				itemId = 45559
			}
		}
	},
	{
		name = "Bun",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 28754,
		itemId = 32186,
		slotName = "",
		experience = 690,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 6,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {6} for 30 minutes.",
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 5,
				itemId = 36985
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Scone",
		quality = 200,
		tier = -1,
		profession = 8,
		clientId = 28759,
		itemId = 32191,
		slotName = "",
		experience = 1260,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 7,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {8} for 30 minutes.",
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 5,
				itemId = 36985
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 1,
				itemId = 32361
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Muffin",
		quality = 225,
		tier = -1,
		profession = 8,
		clientId = 28765,
		itemId = 32197,
		slotName = "",
		experience = 1840,
		progress = 250,
		durability = 7,
		amount = 5,
		index = 8,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {12} for 30 minutes.",
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 4,
				itemId = 36985
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 1,
				itemId = 32361
			},
			{
				name = "Honey",
				clientId = 44381,
				amount = 2,
				itemId = 47833
			}
		}
	},
	{
		name = "Croissant",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 28756,
		itemId = 32188,
		slotName = "",
		experience = 4400,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 9,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {16} for 30 minutes.",
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 5,
				itemId = 45570
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 2,
				itemId = 46201
			},
			{
				name = "Honey",
				clientId = 44381,
				amount = 2,
				itemId = 47833
			}
		}
	},
	{
		name = "Danish",
		quality = 550,
		tier = -1,
		specialization = "Pastry Expert",
		clientId = 28757,
		profession = 8,
		itemId = 32189,
		slotName = "",
		experience = 4000,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 10,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {25} for 30 minutes.",
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 4,
				itemId = 45570
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 2,
				itemId = 46201
			},
			{
				name = "Honey",
				clientId = 44381,
				amount = 2,
				itemId = 47833
			},
			{
				name = "strawberry",
				clientId = 28827,
				amount = 3,
				itemId = 32259
			}
		}
	},
	{
		name = "Cookies",
		quality = 175,
		tier = -1,
		profession = 8,
		clientId = 28766,
		itemId = 32198,
		slotName = "",
		experience = 930,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 11,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {6} for 30 minutes.",
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 8,
				itemId = 36985
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Deluxe Cookies",
		quality = 200,
		tier = -1,
		profession = 8,
		clientId = 28764,
		itemId = 32196,
		slotName = "",
		experience = 1380,
		progress = 225,
		durability = 7,
		amount = 5,
		index = 12,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {8} for 30 minutes.",
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 9,
				itemId = 36985
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 1,
				itemId = 46201
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Cake",
		quality = 275,
		tier = -1,
		profession = 8,
		clientId = 28755,
		itemId = 32187,
		slotName = "",
		experience = 1600,
		progress = 300,
		durability = 7,
		amount = 5,
		index = 13,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {12} for 30 minutes.",
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 6,
				itemId = 36985
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 1,
				itemId = 32361
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			}
		}
	},
	{
		name = "Deluxe Cake",
		quality = 425,
		tier = -1,
		profession = 8,
		clientId = 28758,
		itemId = 32190,
		slotName = "",
		experience = 5450,
		progress = 450,
		durability = 8,
		amount = 5,
		index = 14,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {16} for 30 minutes.",
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 8,
				itemId = 45570
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 1,
				itemId = 32361
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			}
		}
	},
	{
		name = "Pie",
		quality = 600,
		tier = -1,
		specialization = "Pastry Expert",
		clientId = 28753,
		profession = 8,
		itemId = 32185,
		slotName = "",
		experience = 5520,
		progress = 600,
		durability = 10,
		amount = 5,
		index = 15,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {25} for 30 minutes.",
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 5,
				itemId = 45570
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 2,
				itemId = 46201
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "sunberry",
				clientId = 28824,
				amount = 2,
				itemId = 32256
			}
		}
	},
	{
		name = "Settler's Stew",
		quality = 275,
		tier = -1,
		profession = 8,
		clientId = 34866,
		itemId = 38298,
		slotName = "",
		experience = 7680,
		progress = 300,
		durability = 7,
		amount = 5,
		index = 16,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {20} for 30 minutes.",
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 20,
				itemId = 32306
			},
			{
				name = "bean",
				clientId = 28878,
				amount = 20,
				itemId = 32310
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 4,
				itemId = 45558
			}
		}
	},
	{
		name = "Sailor's Seastew",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 34865,
		itemId = 38297,
		slotName = "",
		experience = 8300,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 17,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {40} for 30 minutes.",
		level = {
			mass = 74,
			single = 69
		},
		materials = {
			{
				name = "Black Fish Roe",
				clientId = 40825,
				amount = 5,
				itemId = 44277
			},
			{
				name = "brocolli",
				clientId = 28863,
				amount = 6,
				itemId = 32295
			},
			{
				name = "pea",
				clientId = 28871,
				amount = 10,
				itemId = 32303
			}
		}
	},
	{
		name = "Roasted Chicken and Veggies",
		quality = 175,
		tier = -1,
		profession = 8,
		clientId = 34861,
		itemId = 38293,
		slotName = "",
		experience = 4000,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 18,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {10} for 30 minutes.",
		level = {
			mass = 28,
			single = 23
		},
		materials = {
			{
				name = "chicken",
				clientId = 28750,
				amount = 1,
				itemId = 32182
			},
			{
				name = "carrot",
				clientId = 28865,
				amount = 1,
				itemId = 32297
			},
			{
				name = "cheese",
				clientId = 28927,
				amount = 1,
				itemId = 32359
			}
		}
	},
	{
		name = "Firered Chicken Kebab",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 34857,
		itemId = 38289,
		slotName = "",
		experience = 8200,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 19,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {40} for 30 minutes.",
		level = {
			mass = 71,
			single = 66
		},
		materials = {
			{
				name = "chicken",
				clientId = 28750,
				amount = 3,
				itemId = 32182
			},
			{
				name = "garlic",
				clientId = 28869,
				amount = 2,
				itemId = 32301
			},
			{
				name = "orange",
				clientId = 28832,
				amount = 1,
				itemId = 32264
			},
			{
				name = "Spicy Seasoning",
				clientId = 42126,
				amount = 1,
				itemId = 45578
			}
		}
	},
	{
		name = "Charred Meat Kebab",
		quality = 175,
		tier = -1,
		profession = 8,
		clientId = 34849,
		itemId = 38281,
		slotName = "",
		experience = 2960,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 20,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {10} for 30 minutes.",
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				name = "beef",
				clientId = 28931,
				amount = 2,
				itemId = 32363
			},
			{
				name = "carrot",
				clientId = 28865,
				amount = 2,
				itemId = 32297
			},
			{
				name = "cabbage",
				clientId = 28864,
				amount = 2,
				itemId = 32296
			}
		}
	},
	{
		name = "Lyderian Chopped Tenderloin",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 34859,
		itemId = 38291,
		slotName = "",
		experience = 10000,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 21,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {40} for 30 minutes.",
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				name = "beef",
				clientId = 28931,
				amount = 4,
				itemId = 32363
			},
			{
				name = "garlic",
				clientId = 28869,
				amount = 6,
				itemId = 32301
			},
			{
				name = "Spicy Seasoning",
				clientId = 42126,
				amount = 2,
				itemId = 45578
			}
		}
	},
	{
		name = "Smoked Sausage",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 34869,
		itemId = 38301,
		slotName = "",
		experience = 3400,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 22,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {10} for 30 minutes.",
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				name = "shank",
				clientId = 28932,
				amount = 2,
				itemId = 32364
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			},
			{
				name = "potato",
				clientId = 28874,
				amount = 4,
				itemId = 32306
			},
			{
				name = "pepper",
				clientId = 28872,
				amount = 2,
				itemId = 32304
			}
		}
	},
	{
		name = "Acornchar Sausage",
		quality = 450,
		tier = -1,
		profession = 8,
		clientId = 34847,
		itemId = 38279,
		slotName = "",
		experience = 13280,
		progress = 500,
		durability = 9,
		amount = 5,
		index = 23,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {30} for 30 minutes.",
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				name = "shank",
				clientId = 28932,
				amount = 3,
				itemId = 32364
			},
			{
				name = "Gourmet Seasoning",
				clientId = 42112,
				amount = 2,
				itemId = 45564
			},
			{
				name = "acorn",
				clientId = 28829,
				amount = 2,
				itemId = 32261
			}
		}
	},
	{
		name = "Rum Downslider",
		quality = 225,
		tier = -1,
		profession = 8,
		clientId = 34864,
		itemId = 38296,
		slotName = "",
		experience = 2160,
		progress = 250,
		durability = 7,
		amount = 5,
		index = 24,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {20} for 30 minutes.",
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "Fish Roe",
				clientId = 40829,
				amount = 5,
				itemId = 44281
			},
			{
				name = "cabbage",
				clientId = 28864,
				amount = 2,
				itemId = 32296
			},
			{
				name = "Seafood Seasoning",
				clientId = 42123,
				amount = 1,
				itemId = 45575
			}
		}
	},
	{
		name = "Freshfish Roll",
		quality = 500,
		tier = -1,
		profession = 8,
		clientId = 34853,
		itemId = 38285,
		slotName = "",
		experience = 5900,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 25,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {30} for 30 minutes.",
		level = {
			mass = 59,
			single = 54
		},
		materials = {
			{
				name = "Red Fish Roe",
				clientId = 40833,
				amount = 5,
				itemId = 44285
			},
			{
				name = "cheese",
				clientId = 28927,
				amount = 1,
				itemId = 32359
			},
			{
				name = "Gourmet Seasoning",
				clientId = 42112,
				amount = 2,
				itemId = 45564
			}
		}
	},
	{
		name = "Fillet Lucien",
		quality = 300,
		tier = -1,
		profession = 8,
		clientId = 34852,
		itemId = 38284,
		slotName = "",
		experience = 3500,
		progress = 350,
		durability = 7,
		amount = 5,
		index = 26,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {20} for 30 minutes.",
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				name = "beef",
				clientId = 28931,
				amount = 1,
				itemId = 32363
			},
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 5,
				itemId = 36985
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "pumpkin",
				clientId = 28875,
				amount = 1,
				itemId = 32307
			}
		}
	},
	{
		name = "Rohna Roasted Ham",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 34862,
		itemId = 38294,
		slotName = "",
		experience = 9840,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 27,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {40} for 30 minutes.",
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				name = "shank",
				clientId = 28932,
				amount = 4,
				itemId = 32364
			},
			{
				name = "Spicy Seasoning",
				clientId = 42126,
				amount = 2,
				itemId = 45578
			},
			{
				name = "onion",
				clientId = 28870,
				amount = 5,
				itemId = 32302
			}
		}
	},
	{
		name = "Ravendawnian Porridge",
		quality = 175,
		tier = -1,
		profession = 8,
		clientId = 34860,
		itemId = 38292,
		slotName = "",
		experience = 6680,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 28,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {10} for 30 minutes.",
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				name = "wheat",
				clientId = 28881,
				amount = 5,
				itemId = 32313
			},
			{
				name = "apple",
				clientId = 28822,
				amount = 3,
				itemId = 32254
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 3,
				itemId = 32361
			}
		}
	},
	{
		name = "Sweetened Beans",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 34870,
		itemId = 38302,
		slotName = "",
		experience = 13280,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 29,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {40} for 30 minutes.",
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "bean",
				clientId = 28878,
				amount = 15,
				itemId = 32310
			},
			{
				name = "apple",
				clientId = 28822,
				amount = 4,
				itemId = 32254
			},
			{
				name = "banana",
				clientId = 28823,
				amount = 2,
				itemId = 32255
			}
		}
	},
	{
		name = "Fruit Pancakes",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 34855,
		itemId = 38287,
		slotName = "",
		experience = 4720,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 30,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {10} for 30 minutes.",
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "milk",
				clientId = 28929,
				amount = 2,
				itemId = 32361
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 4,
				itemId = 32360
			},
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 6,
				itemId = 36985
			},
			{
				name = "grape",
				clientId = 28831,
				amount = 5,
				itemId = 32263
			}
		}
	},
	{
		name = "Lucien's Waffles",
		quality = 425,
		tier = -1,
		profession = 8,
		clientId = 34858,
		itemId = 38290,
		slotName = "",
		experience = 7200,
		progress = 450,
		durability = 8,
		amount = 5,
		index = 31,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {30} for 30 minutes.",
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 3,
				itemId = 32298
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 6,
				itemId = 32360
			},
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 5,
				itemId = 45570
			},
			{
				name = "strawberry",
				clientId = 28827,
				amount = 8,
				itemId = 32259
			}
		}
	},
	{
		name = "Dwarven Purple Shank",
		quality = 275,
		tier = -1,
		profession = 8,
		clientId = 34851,
		itemId = 38283,
		slotName = "",
		experience = 8700,
		progress = 300,
		durability = 7,
		amount = 5,
		index = 32,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {20} for 30 minutes.",
		level = {
			mass = 43,
			single = 38
		},
		materials = {
			{
				name = "shank",
				clientId = 28932,
				amount = 2,
				itemId = 32364
			},
			{
				name = "grape",
				clientId = 28831,
				amount = 7,
				itemId = 32263
			},
			{
				name = "watermelon",
				clientId = 28828,
				amount = 2,
				itemId = 32260
			}
		}
	},
	{
		name = "Bittersweet Roast",
		quality = 550,
		tier = -1,
		specialization = "Gourmet Chef",
		clientId = 34848,
		profession = 8,
		itemId = 38280,
		slotName = "",
		experience = 18240,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 33,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {10} for 30 minutes",
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "beef",
				clientId = 28931,
				amount = 6,
				itemId = 32363
			},
			{
				name = "brocolli",
				clientId = 28863,
				amount = 5,
				itemId = 32295
			},
			{
				name = "cherry",
				clientId = 28830,
				amount = 5,
				itemId = 32262
			}
		}
	},
	{
		name = "Shaked Fruitmilk",
		quality = 225,
		tier = -1,
		profession = 8,
		clientId = 34868,
		itemId = 38300,
		slotName = "",
		experience = 2400,
		progress = 250,
		durability = 7,
		amount = 5,
		index = 34,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {20} for 30 minutes.",
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "milk",
				clientId = 28929,
				amount = 2,
				itemId = 32361
			},
			{
				name = "strawberry",
				clientId = 28827,
				amount = 2,
				itemId = 32259
			},
			{
				name = "blueberry",
				clientId = 28825,
				amount = 10,
				itemId = 32257
			}
		}
	},
	{
		name = "Frozen Sweet Berries",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 34854,
		itemId = 38286,
		slotName = "",
		experience = 4300,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 35,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {30} for 30 minutes.",
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				name = "blueberry",
				clientId = 28825,
				amount = 10,
				itemId = 32257
			},
			{
				name = "cherry",
				clientId = 28830,
				amount = 1,
				itemId = 32262
			},
			{
				name = "moonberry",
				clientId = 28826,
				amount = 2,
				itemId = 32258
			}
		}
	},
	{
		name = "Iced Fruitmilk",
		quality = 650,
		tier = -1,
		specialization = "Gourmet Chef",
		clientId = 34856,
		profession = 8,
		itemId = 38288,
		slotName = "",
		experience = 13200,
		progress = 650,
		durability = 12,
		amount = 5,
		index = 36,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Movement Speed by {15%} for 30 minutes",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "milk",
				clientId = 28929,
				amount = 5,
				itemId = 32361
			},
			{
				name = "orange",
				clientId = 28832,
				amount = 2,
				itemId = 32264
			},
			{
				name = "sunberry",
				clientId = 28824,
				amount = 3,
				itemId = 32256
			},
			{
				name = "moonberry",
				clientId = 28826,
				amount = 3,
				itemId = 32258
			}
		}
	},
	{
		name = "Ground Flour",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 33553,
		itemId = 36985,
		slotName = "",
		experience = 1300,
		progress = 100,
		durability = 4,
		amount = 20,
		index = 37,
		category = "ingredient",
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 10,
				itemId = 32298
			}
		}
	},
	{
		name = "Ground Flour",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 33553,
		itemId = 36985,
		slotName = "",
		experience = 650,
		progress = 100,
		durability = 4,
		amount = 10,
		index = 38,
		category = "ingredient",
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "wheat",
				clientId = 28881,
				amount = 10,
				itemId = 32313
			}
		}
	},
	{
		name = "Oil",
		quality = 50,
		tier = -1,
		profession = 8,
		clientId = 34899,
		itemId = 38331,
		slotName = "",
		experience = 130,
		progress = 50,
		durability = 3,
		amount = 1,
		index = 39,
		category = "ingredient",
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 1,
				itemId = 32298
			}
		}
	},
	{
		name = "Basic Animal Feed",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 34896,
		itemId = 38328,
		slotName = "",
		experience = 1720,
		progress = 150,
		durability = 6,
		amount = 10,
		index = 40,
		category = "misc",
		formatDescription = "",
		description = "Used in husbandry.",
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "wheat",
				clientId = 28881,
				amount = 3,
				itemId = 32313
			},
			{
				name = "carrot",
				clientId = 28865,
				amount = 2,
				itemId = 32297
			},
			{
				name = "corn",
				clientId = 28866,
				amount = 2,
				itemId = 32298
			}
		}
	},
	{
		name = "Complex Animal Feed",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 34897,
		itemId = 38329,
		slotName = "",
		experience = 10000,
		progress = 375,
		durability = 7,
		amount = 10,
		index = 41,
		category = "misc",
		formatDescription = "",
		description = "Used in husbandry.",
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "acorn",
				clientId = 28829,
				amount = 1,
				itemId = 32261
			},
			{
				name = "apple",
				clientId = 28822,
				amount = 2,
				itemId = 32254
			},
			{
				name = "pumpkin",
				clientId = 28875,
				amount = 1,
				itemId = 32307
			},
			{
				name = "pea",
				clientId = 28871,
				amount = 5,
				itemId = 32303
			}
		}
	},
	{
		name = "Spiced Oil",
		quality = 500,
		tier = -1,
		profession = 8,
		clientId = 34900,
		itemId = 38332,
		slotName = "",
		experience = 360,
		progress = 500,
		durability = 9,
		amount = 1,
		index = 42,
		category = "ingredient",
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				name = "Oil",
				clientId = 34899,
				amount = 1,
				itemId = 38331
			},
			{
				name = "pepper",
				clientId = 28872,
				amount = 2,
				itemId = 32304
			}
		}
	},
	{
		name = "Apple Cider",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 35397,
		itemId = 38829,
		slotName = "",
		experience = 1280,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 43,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {100} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 22,
			single = 17
		},
		materials = {
			{
				name = "apple",
				clientId = 28822,
				amount = 1,
				itemId = 32254
			}
		}
	},
	{
		name = "Blueberry Wine",
		quality = 300,
		tier = -1,
		profession = 8,
		clientId = 35400,
		itemId = 38832,
		slotName = "",
		experience = 4640,
		progress = 350,
		durability = 7,
		amount = 5,
		index = 44,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {325} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				name = "grape",
				clientId = 28831,
				amount = 7,
				itemId = 32263
			},
			{
				name = "blueberry",
				clientId = 28825,
				amount = 10,
				itemId = 32257
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 2,
				itemId = 45559
			}
		}
	},
	{
		name = "Strawberry Whiskey",
		quality = 600,
		tier = -1,
		specialization = "Sommelier",
		clientId = 35399,
		profession = 8,
		itemId = 38831,
		slotName = "",
		experience = 8800,
		progress = 600,
		durability = 10,
		amount = 5,
		index = 45,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {60} for 20 minutes.",
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 14,
				itemId = 32298
			},
			{
				name = "strawberry",
				clientId = 28827,
				amount = 10,
				itemId = 32259
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 3,
				itemId = 45559
			}
		}
	},
	{
		name = "Banana Vodka",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 35398,
		itemId = 38830,
		slotName = "",
		experience = 6560,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 46,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {45} for 20 minutes.",
		level = {
			mass = 62,
			single = 57
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 20,
				itemId = 32306
			},
			{
				name = "banana",
				clientId = 28823,
				amount = 2,
				itemId = 32255
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 2,
				itemId = 45559
			}
		}
	},
	{
		name = "Spiced Rum",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 35401,
		itemId = 38833,
		slotName = "",
		experience = 6560,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 47,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {400} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				name = "apple",
				clientId = 28822,
				amount = 4,
				itemId = 32254
			},
			{
				name = "Spiced Oil",
				clientId = 34900,
				amount = 1,
				itemId = 38332
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 2,
				itemId = 45559
			}
		}
	},
	{
		name = "Shanks n' Mash",
		quality = 650,
		tier = -1,
		specialization = "Gourmet Chef",
		clientId = 35402,
		profession = 8,
		itemId = 38834,
		slotName = "",
		experience = 13600,
		progress = 650,
		durability = 12,
		amount = 5,
		index = 48,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {15} for 30 minutes",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "shank",
				clientId = 28932,
				amount = 4,
				itemId = 32364
			},
			{
				name = "garlic",
				clientId = 28869,
				amount = 15,
				itemId = 32301
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 8,
				itemId = 32361
			}
		}
	},
	{
		name = "Moa Ration",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 38161,
		itemId = 41613,
		slotName = "",
		experience = 640,
		progress = 150,
		durability = 6,
		amount = 5,
		index = 49,
		category = "misc",
		formatDescription = "",
		description = "Standard Moa feed. Sold by Jebediah at the Ravencrest Farms or crafted at a cooking station.",
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 1,
				itemId = 32298
			},
			{
				name = "wheat",
				clientId = 28881,
				amount = 1,
				itemId = 32313
			},
			{
				name = "potato",
				clientId = 28874,
				amount = 1,
				itemId = 32306
			}
		}
	},
	{
		name = "Corn Chowder",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42109,
		itemId = 45561,
		slotName = "",
		experience = 1200,
		progress = 125,
		durability = 5,
		amount = 5,
		index = 50,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {4} for 30 minutes.",
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 3,
				itemId = 32298
			}
		}
	},
	{
		name = "Butter",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42749,
		itemId = 46201,
		slotName = "",
		experience = 368,
		progress = 175,
		durability = 6,
		amount = 2,
		index = 51,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. A creamy and rich delight churned from milk.",
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				name = "milk",
				clientId = 28929,
				amount = 2,
				itemId = 32361
			}
		}
	},
	{
		name = "Corn on a Cob",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 42110,
		itemId = 45562,
		slotName = "",
		experience = 800,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 52,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {1} for 30 minutes.",
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 2,
				itemId = 32298
			}
		}
	},
	{
		name = "Glademire Crackers",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42748,
		itemId = 46200,
		slotName = "",
		experience = 480,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 53,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {4} for 30 minutes.",
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 6,
				itemId = 36985
			}
		}
	},
	{
		name = "Corn Salad",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42128,
		itemId = 45580,
		slotName = "",
		experience = 1200,
		progress = 125,
		durability = 5,
		amount = 5,
		index = 54,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {4} for 30 minutes.",
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				name = "corn",
				clientId = 28866,
				amount = 3,
				itemId = 32298
			}
		}
	},
	{
		name = "Rich Flour",
		quality = 325,
		tier = -1,
		profession = 8,
		clientId = 42118,
		itemId = 45570,
		slotName = "",
		experience = 530,
		progress = 350,
		durability = 7,
		amount = 20,
		index = 55,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. A finely milled flour, imbued with fine ingredients.",
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 20,
				itemId = 36985
			},
			{
				name = "Three-Leaf Clover",
				clientId = 34370,
				amount = 1,
				itemId = 37802
			}
		}
	},
	{
		name = "Cornbread",
		quality = 200,
		tier = -1,
		profession = 8,
		clientId = 42111,
		itemId = 45563,
		slotName = "",
		experience = 2400,
		progress = 225,
		durability = 7,
		amount = 5,
		index = 56,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {8} for 30 minutes.",
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 8,
				itemId = 36985
			},
			{
				name = "corn",
				clientId = 28866,
				amount = 4,
				itemId = 32298
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Eclipse",
		quality = 550,
		tier = -1,
		specialization = "Sommelier",
		clientId = 42723,
		profession = 8,
		itemId = 46175,
		slotName = "",
		experience = 8800,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 57,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Channel and restore {600} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "moonberry",
				clientId = 28826,
				amount = 5,
				itemId = 32258
			},
			{
				name = "sunberry",
				clientId = 28824,
				amount = 4,
				itemId = 32256
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 3,
				itemId = 45559
			}
		}
	},
	{
		name = "Gourmet Seasoning",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 42112,
		itemId = 45564,
		slotName = "",
		experience = 1000,
		progress = 175,
		durability = 7,
		amount = 5,
		index = 58,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. A highly sophisticated blend of flavorful herbs and spices.",
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				name = "salt",
				clientId = 33551,
				amount = 3,
				itemId = 36983
			},
			{
				name = "onion",
				clientId = 28870,
				amount = 1,
				itemId = 32302
			}
		}
	},
	{
		name = "Landing Brandy",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42724,
		itemId = 46176,
		slotName = "",
		experience = 1280,
		progress = 150,
		durability = 6,
		amount = 5,
		index = 59,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {10} for 20 minutes.",
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				name = "apple",
				clientId = 28822,
				amount = 1,
				itemId = 32254
			}
		}
	},
	{
		name = "Loaf Bread",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 42113,
		itemId = 45565,
		slotName = "",
		experience = 930,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 60,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {6} for 30 minutes.",
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 8,
				itemId = 36985
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Lyderian Fries",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42114,
		itemId = 45566,
		slotName = "",
		experience = 910,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 61,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {6} for 30 minutes.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 12,
				itemId = 32306
			},
			{
				name = "Oil",
				clientId = 34899,
				amount = 1,
				itemId = 38331
			}
		}
	},
	{
		name = "Mashed Potatoes",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42115,
		itemId = 45567,
		slotName = "",
		experience = 520,
		progress = 125,
		durability = 5,
		amount = 5,
		index = 62,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Might by {4} for 30 minutes.",
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 8,
				itemId = 32306
			}
		}
	},
	{
		name = "Omelet",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42116,
		itemId = 45568,
		slotName = "",
		experience = 1760,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 63,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {6} for 30 minutes.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 2,
				itemId = 32361
			}
		}
	},
	{
		name = "Orange Liqueur",
		quality = 200,
		tier = -1,
		profession = 8,
		clientId = 42721,
		itemId = 46173,
		slotName = "",
		experience = 3200,
		progress = 225,
		durability = 7,
		amount = 5,
		index = 64,
		category = "drinks",
		formatDescription = "",
		description = "Channel and restore {250} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				name = "orange",
				clientId = 28832,
				amount = 1,
				itemId = 32264
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 1,
				itemId = 45559
			}
		}
	},
	{
		name = "Potato Bread",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 42117,
		itemId = 45569,
		slotName = "",
		experience = 620,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 65,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {1} for 30 minutes.",
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 3,
				itemId = 32306
			},
			{
				name = "corn",
				clientId = 28866,
				amount = 1,
				itemId = 32298
			}
		}
	},
	{
		name = "Rohna Crackers",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42119,
		itemId = 45571,
		slotName = "",
		experience = 480,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 67,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {4} for 30 minutes.",
		level = {
			mass = 19,
			single = 14
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 6,
				itemId = 36985
			}
		}
	},
	{
		name = "Rye Bread",
		quality = 550,
		tier = -1,
		specialization = "Pastry Expert",
		clientId = 42120,
		profession = 8,
		itemId = 45572,
		slotName = "",
		experience = 5740,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 68,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {25} for 30 minutes.",
		level = {
			mass = 76,
			single = 71
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 7,
				itemId = 45570
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 2,
				itemId = 46201
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "pea",
				clientId = 28871,
				amount = 2,
				itemId = 32303
			}
		}
	},
	{
		name = "Sajecho Hardtack",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42121,
		itemId = 45573,
		slotName = "",
		experience = 450,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 69,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {4} for 30 minutes.",
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 2,
				itemId = 36985
			},
			{
				name = "Orange Scales",
				clientId = 40832,
				amount = 2,
				itemId = 44284
			}
		}
	},
	{
		name = "Scrambled Eggs",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42122,
		itemId = 45574,
		slotName = "",
		experience = 640,
		progress = 125,
		durability = 5,
		amount = 5,
		index = 70,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Dexterity by {4} for 30 minutes.",
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			}
		}
	},
	{
		name = "Seafood Seasoning",
		quality = 50,
		tier = -1,
		profession = 8,
		clientId = 42123,
		itemId = 45575,
		slotName = "",
		experience = 560,
		progress = 50,
		durability = 3,
		amount = 5,
		index = 71,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. This flavorful blend captures the essence of the sea.",
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "salt",
				clientId = 33551,
				amount = 1,
				itemId = 36983
			},
			{
				name = "Orange Scales",
				clientId = 40832,
				amount = 5,
				itemId = 44284
			}
		}
	},
	{
		name = "Silky Scrambled Eggs",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42124,
		itemId = 45576,
		slotName = "",
		experience = 1000,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 72,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Wisdom by {6} for 30 minutes.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "Butter",
				clientId = 42749,
				amount = 1,
				itemId = 46201
			}
		}
	},
	{
		name = "Sourdought Bagel",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 42125,
		itemId = 45577,
		slotName = "",
		experience = 4230,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 73,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {16} for 30 minutes.",
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 5,
				itemId = 45570
			},
			{
				name = "milk",
				clientId = 28929,
				amount = 1,
				itemId = 32361
			},
			{
				name = "Gourmet Seasoning",
				clientId = 42112,
				amount = 1,
				itemId = 45564
			}
		}
	},
	{
		name = "Spicy Seasoning",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 42126,
		itemId = 45578,
		slotName = "",
		experience = 2048,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 74,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. Ignite your taste buds with this fiery fusion of spices.",
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				name = "salt",
				clientId = 33551,
				amount = 5,
				itemId = 36983
			},
			{
				name = "pepper",
				clientId = 28872,
				amount = 2,
				itemId = 32304
			},
			{
				name = "Three-Leaf Clover",
				clientId = 34370,
				amount = 1,
				itemId = 37802
			}
		}
	},
	{
		name = "Steamed Carrots",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42127,
		itemId = 45579,
		slotName = "",
		experience = 920,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 75,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {6} for 30 minutes.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "carrot",
				clientId = 28865,
				amount = 4,
				itemId = 32297
			},
			{
				name = "Basic Seasoning",
				clientId = 42106,
				amount = 1,
				itemId = 45558
			}
		}
	},
	{
		name = "Blueberry Pie",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 42725,
		itemId = 46177,
		slotName = "",
		experience = 2800,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 76,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Vitality by {30} for 30 minutes.",
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "Butter",
				clientId = 42749,
				amount = 2,
				itemId = 46201
			},
			{
				name = "Rich Flour",
				clientId = 42118,
				amount = 2,
				itemId = 45570
			},
			{
				name = "blueberry",
				clientId = 28825,
				amount = 10,
				itemId = 32257
			}
		}
	},
	{
		name = "Boozemelon",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 42722,
		itemId = 46174,
		slotName = "",
		experience = 4640,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 77,
		category = "drinks",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {35} for 20 minutes.",
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				name = "watermelon",
				clientId = 28828,
				amount = 1,
				itemId = 32260
			},
			{
				name = "pumpkin",
				clientId = 28875,
				amount = 1,
				itemId = 32307
			},
			{
				name = "Brewer Yeast",
				clientId = 42107,
				amount = 2,
				itemId = 45559
			}
		}
	},
	{
		name = "Brewer Yeast",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 42107,
		itemId = 45559,
		slotName = "",
		experience = 470,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 78,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. A vital ingredient in the art of brewing.",
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "Orange Scales",
				clientId = 40832,
				amount = 5,
				itemId = 44284
			},
			{
				name = "wheat",
				clientId = 28881,
				amount = 3,
				itemId = 32313
			}
		}
	},
	{
		name = "Carrot Soup",
		quality = 125,
		tier = -1,
		profession = 8,
		clientId = 42108,
		itemId = 45560,
		slotName = "",
		experience = 1000,
		progress = 175,
		durability = 6,
		amount = 5,
		index = 79,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {6} for 30 minutes.",
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				name = "carrot",
				clientId = 28865,
				amount = 5,
				itemId = 32297
			},
			{
				name = "potato",
				clientId = 28874,
				amount = 3,
				itemId = 32306
			}
		}
	},
	{
		name = "Apple Puree",
		quality = 100,
		tier = -1,
		profession = 8,
		clientId = 42103,
		itemId = 45555,
		slotName = "",
		experience = 2640,
		progress = 125,
		durability = 5,
		amount = 5,
		index = 80,
		category = "meals",
		formatDescription = "foodquality",
		description = "Increase Intelligence by {4} for 30 minutes.",
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				name = "apple",
				clientId = 28822,
				amount = 2,
				itemId = 32254
			}
		}
	},
	{
		name = "Bagel",
		quality = 250,
		tier = -1,
		profession = 8,
		clientId = 42104,
		itemId = 45556,
		slotName = "",
		experience = 1920,
		progress = 275,
		durability = 7,
		amount = 5,
		index = 81,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {12} for 30 minutes.",
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				name = "Ground Flour",
				clientId = 33553,
				amount = 4,
				itemId = 36985
			},
			{
				name = "egg",
				clientId = 28928,
				amount = 2,
				itemId = 32360
			},
			{
				name = "Gourmet Seasoning",
				clientId = 42112,
				amount = 1,
				itemId = 45564
			}
		}
	},
	{
		name = "Baked Potatoes",
		quality = 75,
		tier = -1,
		profession = 8,
		clientId = 42105,
		itemId = 45557,
		slotName = "",
		experience = 260,
		progress = 75,
		durability = 4,
		amount = 5,
		index = 82,
		category = "baked goods",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {1} for 30 minutes.",
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 4,
				itemId = 32306
			}
		}
	},
	{
		name = "Basic Seasoning",
		quality = 50,
		tier = -1,
		profession = 8,
		clientId = 42106,
		itemId = 45558,
		slotName = "",
		experience = 290,
		progress = 50,
		durability = 3,
		amount = 5,
		index = 83,
		category = "ingredient",
		formatDescription = "foodquality",
		description = "Used in various recipes. Essential flavor enhancer for a wide range of dishes.",
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				name = "salt",
				clientId = 33551,
				amount = 1,
				itemId = 36983
			}
		}
	},
	{
		name = "Superior Ration",
		quality = 150,
		tier = -1,
		profession = 8,
		clientId = 43649,
		itemId = 47101,
		slotName = "",
		experience = 1280,
		progress = 200,
		durability = 7,
		amount = 5,
		index = 84,
		category = "misc",
		formatDescription = "",
		description = "Ration of superior quality frequently used by dedicated moa owners. Increases experience received by the moa by 20%, Speed by 20 and Strength by 8 for the next 5000 steps.",
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				name = "potato",
				clientId = 28874,
				amount = 1,
				itemId = 32306
			},
			{
				name = "shank",
				clientId = 28932,
				amount = 1,
				itemId = 32364
			},
			{
				name = "carrot",
				clientId = 28865,
				amount = 2,
				itemId = 32297
			},
			{
				name = "Moa Ration",
				clientId = 38161,
				amount = 1,
				itemId = 41613
			}
		}
	},
	{
		name = "Rustic Ration",
		quality = 225,
		tier = -1,
		profession = 8,
		clientId = 43645,
		itemId = 47097,
		slotName = "",
		experience = 1760,
		progress = 250,
		durability = 7,
		amount = 5,
		index = 85,
		category = "misc",
		formatDescription = "",
		description = "Ration of superior quality prepared with fresh farm ingredients. Increases experience received by the moa by 30%, Speed by 30 and Strength by 12 for the next 6000 steps.",
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				name = "carrot",
				clientId = 28865,
				amount = 3,
				itemId = 32297
			},
			{
				name = "shank",
				clientId = 28932,
				amount = 1,
				itemId = 32364
			},
			{
				name = "cabbage",
				clientId = 28864,
				amount = 1,
				itemId = 32296
			},
			{
				name = "Superior Ration",
				clientId = 43649,
				amount = 1,
				itemId = 47101
			}
		}
	},
	{
		name = "Gourmet Ration",
		quality = 350,
		tier = -1,
		profession = 8,
		clientId = 43640,
		itemId = 47092,
		slotName = "",
		experience = 2640,
		progress = 375,
		durability = 7,
		amount = 5,
		index = 86,
		category = "misc",
		formatDescription = "",
		description = "Masterfully prepared moa ration, heavy in nutrients and vitamins.  Increases experience received by the moa by 40%, Speed by 40 and Strength by 16 for the next 7500 steps.",
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				name = "carrot",
				clientId = 28865,
				amount = 1,
				itemId = 32297
			},
			{
				name = "shank",
				clientId = 28932,
				amount = 1,
				itemId = 32364
			},
			{
				name = "pumpkin",
				clientId = 28875,
				amount = 1,
				itemId = 32307
			},
			{
				name = "Rustic Ration",
				clientId = 43645,
				amount = 1,
				itemId = 47097
			}
		}
	},
	{
		name = "Seafood Extravaganza",
		quality = 500,
		tier = -1,
		profession = 8,
		clientId = 43646,
		itemId = 47098,
		slotName = "",
		experience = 3500,
		progress = 500,
		durability = 8,
		amount = 5,
		index = 87,
		category = "misc",
		formatDescription = "",
		description = "Masterfully prepared moa ration with carefully selected seafood treats.  Increases experience received by the moa by 50%, Speed by 50 and Strength by 20 for the next 10000 steps.",
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				name = "cabbage",
				clientId = 28864,
				amount = 2,
				itemId = 32296
			},
			{
				name = "Fish Oil",
				clientId = 40828,
				amount = 5,
				itemId = 44280
			},
			{
				name = "pea",
				clientId = 28871,
				amount = 5,
				itemId = 32303
			},
			{
				name = "Gourmet Ration",
				clientId = 43640,
				amount = 1,
				itemId = 47092
			}
		}
	},
	{
		name = "Uncanny Ration",
		quality = 550,
		tier = -1,
		profession = 8,
		clientId = 43642,
		itemId = 47094,
		slotName = "",
		experience = 4540,
		progress = 550,
		durability = 9,
		amount = 5,
		index = 88,
		category = "misc",
		formatDescription = "",
		description = "A questionable recipe capable of putting moas in a strange frenzied state. Increases experience received by the moa by 60%, Speed by 60 and Strength by 24 for the next 15000 steps.",
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				name = "cabbage",
				clientId = 28864,
				amount = 2,
				itemId = 32296
			},
			{
				name = "Fish Oil",
				clientId = 40828,
				amount = 5,
				itemId = 44280
			},
			{
				name = "brocolli",
				clientId = 28863,
				amount = 4,
				itemId = 32295
			},
			{
				name = "Seafood Extravaganza",
				clientId = 43646,
				amount = 1,
				itemId = 47098
			}
		}
	},
	{
		name = "Moa's Delight",
		quality = 650,
		tier = -1,
		profession = 8,
		clientId = 43643,
		itemId = 47095,
		slotName = "",
		experience = 5700,
		progress = 650,
		durability = 10,
		amount = 5,
		index = 89,
		category = "misc",
		formatDescription = "",
		description = "A true delicacy made with exotic seasoning loved by all moas.  Increases experience received by the moa by 75%, Speed by 75 and Strength by 30 for the next 25000 steps.",
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				name = "pumpkin",
				clientId = 28875,
				amount = 2,
				itemId = 32307
			},
			{
				name = "Fish Oil",
				clientId = 40828,
				amount = 5,
				itemId = 44280
			},
			{
				name = "pepper",
				clientId = 28872,
				amount = 3,
				itemId = 32304
			},
			{
				name = "Uncanny Ration",
				clientId = 43642,
				amount = 1,
				itemId = 47094
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCooking] = {}

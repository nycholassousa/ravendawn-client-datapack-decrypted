-- chunkname: @/modules/game_profession/recipes/cooking.lua

recipes = recipes or {}
recipes[ProfessionCooking] = {
	{
		progress = 75,
		profession = 8,
		index = 1,
		durability = 4,
		clientId = 28760,
		tier = -1,
		itemId = 32192,
		name = "Beer",
		category = "drinks",
		experience = 400,
		formatDescription = "foodquality",
		description = "Channel and restore {50} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				clientId = 28881,
				amount = 2,
				name = "wheat",
				itemId = 32313
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 2,
		durability = 7,
		clientId = 28882,
		tier = -1,
		itemId = 32314,
		name = "Wine",
		category = "drinks",
		experience = 2080,
		formatDescription = "foodquality",
		description = "Channel and restore {175} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28831,
				amount = 4,
				name = "grape",
				itemId = 32263
			},
			{
				clientId = 42107,
				amount = 1,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 3,
		durability = 7,
		clientId = 28761,
		tier = -1,
		itemId = 32193,
		name = "Whiskey",
		category = "drinks",
		experience = 2080,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {15} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 175,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				clientId = 28866,
				amount = 4,
				name = "corn",
				itemId = 32298
			},
			{
				clientId = 42107,
				amount = 1,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 75,
		profession = 8,
		index = 4,
		durability = 4,
		clientId = 28767,
		tier = -1,
		itemId = 32199,
		name = "Vodka",
		category = "drinks",
		experience = 330,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {5} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28874,
				amount = 5,
				name = "potato",
				itemId = 32306
			}
		}
	},
	{
		progress = 250,
		profession = 8,
		index = 5,
		durability = 7,
		clientId = 28883,
		tier = -1,
		itemId = 32315,
		name = "Rum",
		category = "drinks",
		experience = 3200,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {25} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 225,
		level = {
			mass = 37,
			single = 32
		},
		materials = {
			{
				clientId = 28822,
				amount = 2,
				name = "apple",
				itemId = 32254
			},
			{
				clientId = 42107,
				amount = 1,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 6,
		durability = 7,
		clientId = 28754,
		tier = -1,
		itemId = 32186,
		name = "Bun",
		category = "baked goods",
		experience = 690,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 33553,
				amount = 5,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 7,
		durability = 7,
		clientId = 28759,
		tier = -1,
		itemId = 32191,
		name = "Scone",
		category = "baked goods",
		experience = 1260,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {8} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 200,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 33553,
				amount = 5,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28929,
				amount = 1,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 250,
		profession = 8,
		index = 8,
		durability = 7,
		clientId = 28765,
		tier = -1,
		itemId = 32197,
		name = "Muffin",
		category = "baked goods",
		experience = 1840,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {12} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 225,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 33553,
				amount = 4,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28929,
				amount = 1,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 44381,
				amount = 2,
				name = "Honey",
				itemId = 47833
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 9,
		durability = 7,
		clientId = 28756,
		tier = -1,
		itemId = 32188,
		name = "Croissant",
		category = "baked goods",
		experience = 4400,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {16} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 42749,
				amount = 2,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 44381,
				amount = 2,
				name = "Honey",
				itemId = 47833
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 10,
		durability = 9,
		clientId = 28757,
		tier = -1,
		itemId = 32189,
		name = "Danish",
		category = "baked goods",
		experience = 4000,
		specialization = "Pastry Expert",
		formatDescription = "foodquality",
		description = "Increase Defense Power by {25} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 42118,
				amount = 4,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 42749,
				amount = 2,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 44381,
				amount = 2,
				name = "Honey",
				itemId = 47833
			},
			{
				clientId = 28827,
				amount = 3,
				name = "strawberry",
				itemId = 32259
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 11,
		durability = 7,
		clientId = 28766,
		tier = -1,
		itemId = 32198,
		name = "Cookies",
		category = "baked goods",
		experience = 930,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 175,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 225,
		profession = 8,
		index = 12,
		durability = 7,
		clientId = 28764,
		tier = -1,
		itemId = 32196,
		name = "Deluxe Cookies",
		category = "baked goods",
		experience = 1380,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {8} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 200,
		level = {
			mass = 32,
			single = 27
		},
		materials = {
			{
				clientId = 33553,
				amount = 9,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 42749,
				amount = 1,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 300,
		profession = 8,
		index = 13,
		durability = 7,
		clientId = 28755,
		tier = -1,
		itemId = 32187,
		name = "Cake",
		category = "baked goods",
		experience = 1600,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {12} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 275,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28929,
				amount = 1,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			}
		}
	},
	{
		progress = 450,
		profession = 8,
		index = 14,
		durability = 8,
		clientId = 28758,
		tier = -1,
		itemId = 32190,
		name = "Deluxe Cake",
		category = "baked goods",
		experience = 5450,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {16} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 425,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				clientId = 42118,
				amount = 8,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 28929,
				amount = 1,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			}
		}
	},
	{
		progress = 600,
		profession = 8,
		index = 15,
		durability = 10,
		clientId = 28753,
		tier = -1,
		itemId = 32185,
		name = "Pie",
		category = "baked goods",
		experience = 5520,
		specialization = "Pastry Expert",
		formatDescription = "foodquality",
		description = "Increase Attack Power by {25} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 600,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 42749,
				amount = 2,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 28824,
				amount = 2,
				name = "sunberry",
				itemId = 32256
			}
		}
	},
	{
		progress = 300,
		profession = 8,
		index = 16,
		durability = 7,
		clientId = 34866,
		tier = -1,
		itemId = 38298,
		name = "Settler's Stew",
		category = "meals",
		experience = 7680,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {20} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 275,
		level = {
			mass = 42,
			single = 37
		},
		materials = {
			{
				clientId = 28874,
				amount = 20,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 28878,
				amount = 20,
				name = "bean",
				itemId = 32310
			},
			{
				clientId = 42106,
				amount = 4,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 17,
		durability = 9,
		clientId = 34865,
		tier = -1,
		itemId = 38297,
		name = "Sailor's Seastew",
		category = "meals",
		experience = 8300,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {40} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 74,
			single = 69
		},
		materials = {
			{
				clientId = 40825,
				amount = 5,
				name = "Black Fish Roe",
				itemId = 44277
			},
			{
				clientId = 28863,
				amount = 6,
				name = "brocolli",
				itemId = 32295
			},
			{
				clientId = 28871,
				amount = 10,
				name = "pea",
				itemId = 32303
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 18,
		durability = 7,
		clientId = 34861,
		tier = -1,
		itemId = 38293,
		name = "Roasted Chicken and Veggies",
		category = "meals",
		experience = 4000,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {10} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 175,
		level = {
			mass = 28,
			single = 23
		},
		materials = {
			{
				clientId = 28750,
				amount = 1,
				name = "chicken",
				itemId = 32182
			},
			{
				clientId = 28865,
				amount = 1,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28927,
				amount = 1,
				name = "cheese",
				itemId = 32359
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 19,
		durability = 9,
		clientId = 34857,
		tier = -1,
		itemId = 38289,
		name = "Firered Chicken Kebab",
		category = "meals",
		experience = 8200,
		formatDescription = "foodquality",
		description = "Increase Might by {40} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 71,
			single = 66
		},
		materials = {
			{
				clientId = 28750,
				amount = 3,
				name = "chicken",
				itemId = 32182
			},
			{
				clientId = 28869,
				amount = 2,
				name = "garlic",
				itemId = 32301
			},
			{
				clientId = 28832,
				amount = 1,
				name = "orange",
				itemId = 32264
			},
			{
				clientId = 42126,
				amount = 1,
				name = "Spicy Seasoning",
				itemId = 45578
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 20,
		durability = 7,
		clientId = 34849,
		tier = -1,
		itemId = 38281,
		name = "Charred Meat Kebab",
		category = "meals",
		experience = 2960,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {10} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 175,
		level = {
			mass = 27,
			single = 22
		},
		materials = {
			{
				clientId = 28931,
				amount = 2,
				name = "beef",
				itemId = 32363
			},
			{
				clientId = 28865,
				amount = 2,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28864,
				amount = 2,
				name = "cabbage",
				itemId = 32296
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 21,
		durability = 9,
		clientId = 34859,
		tier = -1,
		itemId = 38291,
		name = "Lyderian Chopped Tenderloin",
		category = "meals",
		experience = 10000,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {40} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 72,
			single = 67
		},
		materials = {
			{
				clientId = 28931,
				amount = 4,
				name = "beef",
				itemId = 32363
			},
			{
				clientId = 28869,
				amount = 6,
				name = "garlic",
				itemId = 32301
			},
			{
				clientId = 42126,
				amount = 2,
				name = "Spicy Seasoning",
				itemId = 45578
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 22,
		durability = 7,
		clientId = 34869,
		tier = -1,
		itemId = 38301,
		name = "Smoked Sausage",
		category = "meals",
		experience = 3400,
		formatDescription = "foodquality",
		description = "Increase Might by {10} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				clientId = 28932,
				amount = 2,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			},
			{
				clientId = 28874,
				amount = 4,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 28872,
				amount = 2,
				name = "pepper",
				itemId = 32304
			}
		}
	},
	{
		progress = 500,
		profession = 8,
		index = 23,
		durability = 9,
		clientId = 34847,
		tier = -1,
		itemId = 38279,
		name = "Acornchar Sausage",
		category = "meals",
		experience = 13280,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {30} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 450,
		level = {
			mass = 58,
			single = 53
		},
		materials = {
			{
				clientId = 28932,
				amount = 3,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 42112,
				amount = 2,
				name = "Gourmet Seasoning",
				itemId = 45564
			},
			{
				clientId = 28829,
				amount = 2,
				name = "acorn",
				itemId = 32261
			}
		}
	},
	{
		progress = 250,
		profession = 8,
		index = 24,
		durability = 7,
		clientId = 34864,
		tier = -1,
		itemId = 38296,
		name = "Rum Downslider",
		category = "meals",
		experience = 2160,
		formatDescription = "foodquality",
		description = "Increase Vitality by {20} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 225,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 40829,
				amount = 5,
				name = "Fish Roe",
				itemId = 44281
			},
			{
				clientId = 28864,
				amount = 2,
				name = "cabbage",
				itemId = 32296
			},
			{
				clientId = 42123,
				amount = 1,
				name = "Seafood Seasoning",
				itemId = 45575
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 25,
		durability = 9,
		clientId = 34853,
		tier = -1,
		itemId = 38285,
		name = "Freshfish Roll",
		category = "meals",
		experience = 5900,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {30} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 500,
		level = {
			mass = 59,
			single = 54
		},
		materials = {
			{
				clientId = 40833,
				amount = 5,
				name = "Red Fish Roe",
				itemId = 44285
			},
			{
				clientId = 28927,
				amount = 1,
				name = "cheese",
				itemId = 32359
			},
			{
				clientId = 42112,
				amount = 2,
				name = "Gourmet Seasoning",
				itemId = 45564
			}
		}
	},
	{
		progress = 350,
		profession = 8,
		index = 26,
		durability = 7,
		clientId = 34852,
		tier = -1,
		itemId = 38284,
		name = "Fillet Lucien",
		category = "meals",
		experience = 3500,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {20} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 300,
		level = {
			mass = 44,
			single = 39
		},
		materials = {
			{
				clientId = 28931,
				amount = 1,
				name = "beef",
				itemId = 32363
			},
			{
				clientId = 33553,
				amount = 5,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 28875,
				amount = 1,
				name = "pumpkin",
				itemId = 32307
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 27,
		durability = 9,
		clientId = 34862,
		tier = -1,
		itemId = 38294,
		name = "Rohna Roasted Ham",
		category = "meals",
		experience = 9840,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {40} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 73,
			single = 68
		},
		materials = {
			{
				clientId = 28932,
				amount = 4,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 42126,
				amount = 2,
				name = "Spicy Seasoning",
				itemId = 45578
			},
			{
				clientId = 28870,
				amount = 5,
				name = "onion",
				itemId = 32302
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 28,
		durability = 7,
		clientId = 34860,
		tier = -1,
		itemId = 38292,
		name = "Ravendawnian Porridge",
		category = "meals",
		experience = 6680,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {10} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 175,
		level = {
			mass = 29,
			single = 24
		},
		materials = {
			{
				clientId = 28881,
				amount = 5,
				name = "wheat",
				itemId = 32313
			},
			{
				clientId = 28822,
				amount = 3,
				name = "apple",
				itemId = 32254
			},
			{
				clientId = 28929,
				amount = 3,
				name = "milk",
				itemId = 32361
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 29,
		durability = 9,
		clientId = 34870,
		tier = -1,
		itemId = 38302,
		name = "Sweetened Beans",
		category = "meals",
		experience = 13280,
		formatDescription = "foodquality",
		description = "Increase Vitality by {40} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 28878,
				amount = 15,
				name = "bean",
				itemId = 32310
			},
			{
				clientId = 28822,
				amount = 4,
				name = "apple",
				itemId = 32254
			},
			{
				clientId = 28823,
				amount = 2,
				name = "banana",
				itemId = 32255
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 30,
		durability = 7,
		clientId = 34855,
		tier = -1,
		itemId = 38287,
		name = "Fruit Pancakes",
		category = "meals",
		experience = 4720,
		formatDescription = "foodquality",
		description = "Increase Vitality by {10} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 28928,
				amount = 4,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 33553,
				amount = 6,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28831,
				amount = 5,
				name = "grape",
				itemId = 32263
			}
		}
	},
	{
		progress = 450,
		profession = 8,
		index = 31,
		durability = 8,
		clientId = 34858,
		tier = -1,
		itemId = 38290,
		name = "Lucien's Waffles",
		category = "meals",
		experience = 7200,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {30} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 425,
		level = {
			mass = 57,
			single = 52
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				name = "corn",
				itemId = 32298
			},
			{
				clientId = 28928,
				amount = 6,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 42118,
				amount = 5,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 28827,
				amount = 8,
				name = "strawberry",
				itemId = 32259
			}
		}
	},
	{
		progress = 300,
		profession = 8,
		index = 32,
		durability = 7,
		clientId = 34851,
		tier = -1,
		itemId = 38283,
		name = "Dwarven Purple Shank",
		category = "meals",
		experience = 8700,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {20} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 275,
		level = {
			mass = 43,
			single = 38
		},
		materials = {
			{
				clientId = 28932,
				amount = 2,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 28831,
				amount = 7,
				name = "grape",
				itemId = 32263
			},
			{
				clientId = 28828,
				amount = 2,
				name = "watermelon",
				itemId = 32260
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 33,
		durability = 9,
		clientId = 34848,
		tier = -1,
		itemId = 38280,
		name = "Bittersweet Roast",
		category = "meals",
		experience = 18240,
		specialization = "Gourmet Chef",
		formatDescription = "foodquality",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {10} for 30 minutes",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28931,
				amount = 6,
				name = "beef",
				itemId = 32363
			},
			{
				clientId = 28863,
				amount = 5,
				name = "brocolli",
				itemId = 32295
			},
			{
				clientId = 28830,
				amount = 5,
				name = "cherry",
				itemId = 32262
			}
		}
	},
	{
		progress = 250,
		profession = 8,
		index = 34,
		durability = 7,
		clientId = 34868,
		tier = -1,
		itemId = 38300,
		name = "Shaked Fruitmilk",
		category = "meals",
		experience = 2400,
		formatDescription = "foodquality",
		description = "Increase Might by {20} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 225,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 28827,
				amount = 2,
				name = "strawberry",
				itemId = 32259
			},
			{
				clientId = 28825,
				amount = 10,
				name = "blueberry",
				itemId = 32257
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 35,
		durability = 7,
		clientId = 34854,
		tier = -1,
		itemId = 38286,
		name = "Frozen Sweet Berries",
		category = "meals",
		experience = 4300,
		formatDescription = "foodquality",
		description = "Increase Might by {30} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				clientId = 28825,
				amount = 10,
				name = "blueberry",
				itemId = 32257
			},
			{
				clientId = 28830,
				amount = 1,
				name = "cherry",
				itemId = 32262
			},
			{
				clientId = 28826,
				amount = 2,
				name = "moonberry",
				itemId = 32258
			}
		}
	},
	{
		progress = 650,
		profession = 8,
		index = 36,
		durability = 12,
		clientId = 34856,
		tier = -1,
		itemId = 38288,
		name = "Iced Fruitmilk",
		category = "meals",
		experience = 13200,
		specialization = "Gourmet Chef",
		formatDescription = "foodquality",
		description = "Increase Movement Speed by {15%} for 30 minutes",
		amount = 5,
		slotName = "",
		quality = 650,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28929,
				amount = 5,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 28832,
				amount = 2,
				name = "orange",
				itemId = 32264
			},
			{
				clientId = 28824,
				amount = 3,
				name = "sunberry",
				itemId = 32256
			},
			{
				clientId = 28826,
				amount = 3,
				name = "moonberry",
				itemId = 32258
			}
		}
	},
	{
		progress = 100,
		profession = 8,
		index = 37,
		durability = 4,
		clientId = 33553,
		tier = -1,
		itemId = 36985,
		name = "Ground Flour",
		category = "ingredient",
		experience = 1300,
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		amount = 20,
		slotName = "",
		quality = 100,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28866,
				amount = 10,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 100,
		profession = 8,
		index = 38,
		durability = 4,
		clientId = 33553,
		tier = -1,
		itemId = 36985,
		name = "Ground Flour",
		category = "ingredient",
		experience = 650,
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		amount = 10,
		slotName = "",
		quality = 100,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28881,
				amount = 10,
				name = "wheat",
				itemId = 32313
			}
		}
	},
	{
		progress = 50,
		profession = 8,
		index = 39,
		durability = 3,
		clientId = 34899,
		tier = -1,
		itemId = 38331,
		name = "Oil",
		category = "ingredient",
		experience = 130,
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		amount = 1,
		slotName = "",
		quality = 50,
		level = {
			mass = 6,
			single = 1
		},
		materials = {
			{
				clientId = 28866,
				amount = 1,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 150,
		profession = 8,
		index = 40,
		durability = 6,
		clientId = 34896,
		tier = -1,
		itemId = 38328,
		name = "Basic Animal Feed",
		category = "misc",
		experience = 1720,
		formatDescription = "",
		description = "Used in husbandry.",
		amount = 10,
		slotName = "",
		quality = 100,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28881,
				amount = 3,
				name = "wheat",
				itemId = 32313
			},
			{
				clientId = 28865,
				amount = 2,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28866,
				amount = 2,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 41,
		durability = 7,
		clientId = 34897,
		tier = -1,
		itemId = 38329,
		name = "Complex Animal Feed",
		category = "misc",
		experience = 10000,
		formatDescription = "",
		description = "Used in husbandry.",
		amount = 10,
		slotName = "",
		quality = 350,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 28829,
				amount = 1,
				name = "acorn",
				itemId = 32261
			},
			{
				clientId = 28822,
				amount = 2,
				name = "apple",
				itemId = 32254
			},
			{
				clientId = 28875,
				amount = 1,
				name = "pumpkin",
				itemId = 32307
			},
			{
				clientId = 28871,
				amount = 5,
				name = "pea",
				itemId = 32303
			}
		}
	},
	{
		progress = 500,
		profession = 8,
		index = 42,
		durability = 9,
		clientId = 34900,
		tier = -1,
		itemId = 38332,
		name = "Spiced Oil",
		category = "ingredient",
		experience = 360,
		formatDescription = "",
		description = "Required for cooking certain recipes.",
		amount = 1,
		slotName = "",
		quality = 500,
		level = {
			mass = 67,
			single = 62
		},
		materials = {
			{
				clientId = 34899,
				amount = 1,
				name = "Oil",
				itemId = 38331
			},
			{
				clientId = 28872,
				amount = 2,
				name = "pepper",
				itemId = 32304
			}
		}
	},
	{
		progress = 75,
		profession = 8,
		index = 43,
		durability = 4,
		clientId = 35397,
		tier = -1,
		itemId = 38829,
		name = "Apple Cider",
		category = "drinks",
		experience = 1280,
		formatDescription = "foodquality",
		description = "Channel and restore {100} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 22,
			single = 17
		},
		materials = {
			{
				clientId = 28822,
				amount = 1,
				name = "apple",
				itemId = 32254
			}
		}
	},
	{
		progress = 350,
		profession = 8,
		index = 44,
		durability = 7,
		clientId = 35400,
		tier = -1,
		itemId = 38832,
		name = "Blueberry Wine",
		category = "drinks",
		experience = 4640,
		formatDescription = "foodquality",
		description = "Channel and restore {325} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 300,
		level = {
			mass = 45,
			single = 40
		},
		materials = {
			{
				clientId = 28831,
				amount = 7,
				name = "grape",
				itemId = 32263
			},
			{
				clientId = 28825,
				amount = 10,
				name = "blueberry",
				itemId = 32257
			},
			{
				clientId = 42107,
				amount = 2,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 600,
		profession = 8,
		index = 45,
		durability = 10,
		clientId = 35399,
		tier = -1,
		itemId = 38831,
		name = "Strawberry Whiskey",
		category = "drinks",
		experience = 8800,
		specialization = "Sommelier",
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {60} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 600,
		level = {
			mass = 77,
			single = 72
		},
		materials = {
			{
				clientId = 28866,
				amount = 14,
				name = "corn",
				itemId = 32298
			},
			{
				clientId = 28827,
				amount = 10,
				name = "strawberry",
				itemId = 32259
			},
			{
				clientId = 42107,
				amount = 3,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 46,
		durability = 9,
		clientId = 35398,
		tier = -1,
		itemId = 38830,
		name = "Banana Vodka",
		category = "drinks",
		experience = 6560,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {45} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 62,
			single = 57
		},
		materials = {
			{
				clientId = 28874,
				amount = 20,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 28823,
				amount = 2,
				name = "banana",
				itemId = 32255
			},
			{
				clientId = 42107,
				amount = 2,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 47,
		durability = 9,
		clientId = 35401,
		tier = -1,
		itemId = 38833,
		name = "Spiced Rum",
		category = "drinks",
		experience = 6560,
		formatDescription = "foodquality",
		description = "Channel and restore {400} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 60,
			single = 55
		},
		materials = {
			{
				clientId = 28822,
				amount = 4,
				name = "apple",
				itemId = 32254
			},
			{
				clientId = 34900,
				amount = 1,
				name = "Spiced Oil",
				itemId = 38332
			},
			{
				clientId = 42107,
				amount = 2,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 650,
		profession = 8,
		index = 48,
		durability = 12,
		clientId = 35402,
		tier = -1,
		itemId = 38834,
		name = "Shanks n' Mash",
		category = "meals",
		experience = 13600,
		specialization = "Gourmet Chef",
		formatDescription = "foodquality",
		description = "Increase Vitality, Might, Intelligence, Dexterity and Wisdom by {15} for 30 minutes",
		amount = 5,
		slotName = "",
		quality = 650,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28932,
				amount = 4,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 28869,
				amount = 15,
				name = "garlic",
				itemId = 32301
			},
			{
				clientId = 28929,
				amount = 8,
				name = "milk",
				itemId = 32361
			}
		}
	},
	{
		progress = 150,
		profession = 8,
		index = 49,
		durability = 6,
		clientId = 38161,
		tier = -1,
		itemId = 41613,
		name = "Moa Ration",
		category = "misc",
		experience = 640,
		formatDescription = "",
		description = "Standard Moa feed. Sold by Jebediah at the Ravencrest Farms or crafted at a cooking station.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28866,
				amount = 1,
				name = "corn",
				itemId = 32298
			},
			{
				clientId = 28881,
				amount = 1,
				name = "wheat",
				itemId = 32313
			},
			{
				clientId = 28874,
				amount = 1,
				name = "potato",
				itemId = 32306
			}
		}
	},
	{
		progress = 125,
		profession = 8,
		index = 50,
		durability = 5,
		clientId = 42109,
		tier = -1,
		itemId = 45561,
		name = "Corn Chowder",
		category = "meals",
		experience = 1200,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 51,
		durability = 6,
		clientId = 42749,
		tier = -1,
		itemId = 46201,
		name = "Butter",
		category = "ingredient",
		experience = 368,
		formatDescription = "foodquality",
		description = "Used in various recipes. A creamy and rich delight churned from milk.",
		amount = 2,
		slotName = "",
		quality = 125,
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				clientId = 28929,
				amount = 2,
				name = "milk",
				itemId = 32361
			}
		}
	},
	{
		progress = 75,
		profession = 8,
		index = 52,
		durability = 4,
		clientId = 42110,
		tier = -1,
		itemId = 45562,
		name = "Corn on a Cob",
		category = "baked goods",
		experience = 800,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {1} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 8,
			single = 3
		},
		materials = {
			{
				clientId = 28866,
				amount = 2,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 53,
		durability = 6,
		clientId = 42748,
		tier = -1,
		itemId = 46200,
		name = "Glademire Crackers",
		category = "baked goods",
		experience = 480,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 20,
			single = 15
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				name = "Ground Flour",
				itemId = 36985
			}
		}
	},
	{
		progress = 125,
		profession = 8,
		index = 54,
		durability = 5,
		clientId = 42128,
		tier = -1,
		itemId = 45580,
		name = "Corn Salad",
		category = "meals",
		experience = 1200,
		formatDescription = "foodquality",
		description = "Increase Vitality by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				clientId = 28866,
				amount = 3,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 350,
		profession = 8,
		index = 55,
		durability = 7,
		clientId = 42118,
		tier = -1,
		itemId = 45570,
		name = "Rich Flour",
		category = "ingredient",
		experience = 530,
		formatDescription = "foodquality",
		description = "Used in various recipes. A finely milled flour, imbued with fine ingredients.",
		amount = 20,
		slotName = "",
		quality = 325,
		level = {
			mass = 50,
			single = 45
		},
		materials = {
			{
				clientId = 33553,
				amount = 20,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 34370,
				amount = 1,
				name = "Three-Leaf Clover",
				itemId = 37802
			}
		}
	},
	{
		progress = 225,
		profession = 8,
		index = 56,
		durability = 7,
		clientId = 42111,
		tier = -1,
		itemId = 45563,
		name = "Cornbread",
		category = "baked goods",
		experience = 2400,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {8} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 200,
		level = {
			mass = 31,
			single = 26
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28866,
				amount = 4,
				name = "corn",
				itemId = 32298
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 57,
		durability = 9,
		clientId = 42723,
		tier = -1,
		itemId = 46175,
		name = "Eclipse",
		category = "drinks",
		experience = 8800,
		specialization = "Sommelier",
		formatDescription = "foodquality",
		description = "Channel and restore {600} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28826,
				amount = 5,
				name = "moonberry",
				itemId = 32258
			},
			{
				clientId = 28824,
				amount = 4,
				name = "sunberry",
				itemId = 32256
			},
			{
				clientId = 42107,
				amount = 3,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 58,
		durability = 7,
		clientId = 42112,
		tier = -1,
		itemId = 45564,
		name = "Gourmet Seasoning",
		category = "ingredient",
		experience = 1000,
		formatDescription = "foodquality",
		description = "Used in various recipes. A highly sophisticated blend of flavorful herbs and spices.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 30,
			single = 25
		},
		materials = {
			{
				clientId = 33551,
				amount = 3,
				name = "salt",
				itemId = 36983
			},
			{
				clientId = 28870,
				amount = 1,
				name = "onion",
				itemId = 32302
			}
		}
	},
	{
		progress = 150,
		profession = 8,
		index = 59,
		durability = 6,
		clientId = 42724,
		tier = -1,
		itemId = 46176,
		name = "Landing Brandy",
		category = "drinks",
		experience = 1280,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {10} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 15,
			single = 10
		},
		materials = {
			{
				clientId = 28822,
				amount = 1,
				name = "apple",
				itemId = 32254
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 60,
		durability = 7,
		clientId = 42113,
		tier = -1,
		itemId = 45565,
		name = "Loaf Bread",
		category = "baked goods",
		experience = 930,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 26,
			single = 21
		},
		materials = {
			{
				clientId = 33553,
				amount = 8,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 61,
		durability = 6,
		clientId = 42114,
		tier = -1,
		itemId = 45566,
		name = "Lyderian Fries",
		category = "meals",
		experience = 910,
		formatDescription = "foodquality",
		description = "Increase Might by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28874,
				amount = 12,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 34899,
				amount = 1,
				name = "Oil",
				itemId = 38331
			}
		}
	},
	{
		progress = 125,
		profession = 8,
		index = 62,
		durability = 5,
		clientId = 42115,
		tier = -1,
		itemId = 45567,
		name = "Mashed Potatoes",
		category = "meals",
		experience = 520,
		formatDescription = "foodquality",
		description = "Increase Might by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				clientId = 28874,
				amount = 8,
				name = "potato",
				itemId = 32306
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 63,
		durability = 6,
		clientId = 42116,
		tier = -1,
		itemId = 45568,
		name = "Omelet",
		category = "meals",
		experience = 1760,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 28929,
				amount = 2,
				name = "milk",
				itemId = 32361
			}
		}
	},
	{
		progress = 225,
		profession = 8,
		index = 64,
		durability = 7,
		clientId = 42721,
		tier = -1,
		itemId = 46173,
		name = "Orange Liqueur",
		category = "drinks",
		experience = 3200,
		formatDescription = "",
		description = "Channel and restore {250} Health and Mana per second for 15 seconds. Being damaged cancels the effect. 15 seconds cooldown.",
		amount = 5,
		slotName = "",
		quality = 200,
		level = {
			mass = 35,
			single = 30
		},
		materials = {
			{
				clientId = 28832,
				amount = 1,
				name = "orange",
				itemId = 32264
			},
			{
				clientId = 42107,
				amount = 1,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 75,
		profession = 8,
		index = 65,
		durability = 4,
		clientId = 42117,
		tier = -1,
		itemId = 45569,
		name = "Potato Bread",
		category = "baked goods",
		experience = 620,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {1} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 9,
			single = 4
		},
		materials = {
			{
				clientId = 28874,
				amount = 3,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 28866,
				amount = 1,
				name = "corn",
				itemId = 32298
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 67,
		durability = 6,
		clientId = 42119,
		tier = -1,
		itemId = 45571,
		name = "Rohna Crackers",
		category = "baked goods",
		experience = 480,
		formatDescription = "foodquality",
		description = "Increase Defense Power by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 19,
			single = 14
		},
		materials = {
			{
				clientId = 33553,
				amount = 6,
				name = "Ground Flour",
				itemId = 36985
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 68,
		durability = 9,
		clientId = 42120,
		tier = -1,
		itemId = 45572,
		name = "Rye Bread",
		category = "baked goods",
		experience = 5740,
		specialization = "Pastry Expert",
		formatDescription = "foodquality",
		description = "Increase Healing Power by {25} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 76,
			single = 71
		},
		materials = {
			{
				clientId = 42118,
				amount = 7,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 42749,
				amount = 2,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 28871,
				amount = 2,
				name = "pea",
				itemId = 32303
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 69,
		durability = 6,
		clientId = 42121,
		tier = -1,
		itemId = 45573,
		name = "Sajecho Hardtack",
		category = "baked goods",
		experience = 450,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 18,
			single = 13
		},
		materials = {
			{
				clientId = 33553,
				amount = 2,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 40832,
				amount = 2,
				name = "Orange Scales",
				itemId = 44284
			}
		}
	},
	{
		progress = 125,
		profession = 8,
		index = 70,
		durability = 5,
		clientId = 42122,
		tier = -1,
		itemId = 45574,
		name = "Scrambled Eggs",
		category = "meals",
		experience = 640,
		formatDescription = "foodquality",
		description = "Increase Dexterity by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			}
		}
	},
	{
		progress = 50,
		profession = 8,
		index = 71,
		durability = 3,
		clientId = 42123,
		tier = -1,
		itemId = 45575,
		name = "Seafood Seasoning",
		category = "ingredient",
		experience = 560,
		formatDescription = "foodquality",
		description = "Used in various recipes. This flavorful blend captures the essence of the sea.",
		amount = 5,
		slotName = "",
		quality = 50,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				clientId = 33551,
				amount = 1,
				name = "salt",
				itemId = 36983
			},
			{
				clientId = 40832,
				amount = 5,
				name = "Orange Scales",
				itemId = 44284
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 72,
		durability = 6,
		clientId = 42124,
		tier = -1,
		itemId = 45576,
		name = "Silky Scrambled Eggs",
		category = "meals",
		experience = 1000,
		formatDescription = "foodquality",
		description = "Increase Wisdom by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 42749,
				amount = 1,
				name = "Butter",
				itemId = 46201
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 73,
		durability = 7,
		clientId = 42125,
		tier = -1,
		itemId = 45577,
		name = "Sourdought Bagel",
		category = "baked goods",
		experience = 4230,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {16} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 56,
			single = 51
		},
		materials = {
			{
				clientId = 42118,
				amount = 5,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 28929,
				amount = 1,
				name = "milk",
				itemId = 32361
			},
			{
				clientId = 42112,
				amount = 1,
				name = "Gourmet Seasoning",
				itemId = 45564
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 74,
		durability = 9,
		clientId = 42126,
		tier = -1,
		itemId = 45578,
		name = "Spicy Seasoning",
		category = "ingredient",
		experience = 2048,
		formatDescription = "foodquality",
		description = "Used in various recipes. Ignite your taste buds with this fiery fusion of spices.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 70,
			single = 65
		},
		materials = {
			{
				clientId = 33551,
				amount = 5,
				name = "salt",
				itemId = 36983
			},
			{
				clientId = 28872,
				amount = 2,
				name = "pepper",
				itemId = 32304
			},
			{
				clientId = 34370,
				amount = 1,
				name = "Three-Leaf Clover",
				itemId = 37802
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 75,
		durability = 6,
		clientId = 42127,
		tier = -1,
		itemId = 45579,
		name = "Steamed Carrots",
		category = "meals",
		experience = 920,
		formatDescription = "foodquality",
		description = "Increase Vitality by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28865,
				amount = 4,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 42106,
				amount = 1,
				name = "Basic Seasoning",
				itemId = 45558
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 76,
		durability = 7,
		clientId = 42725,
		tier = -1,
		itemId = 46177,
		name = "Blueberry Pie",
		category = "meals",
		experience = 2800,
		formatDescription = "foodquality",
		description = "Increase Vitality by {30} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 42749,
				amount = 2,
				name = "Butter",
				itemId = 46201
			},
			{
				clientId = 42118,
				amount = 2,
				name = "Rich Flour",
				itemId = 45570
			},
			{
				clientId = 28825,
				amount = 10,
				name = "blueberry",
				itemId = 32257
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 77,
		durability = 7,
		clientId = 42722,
		tier = -1,
		itemId = 46174,
		name = "Boozemelon",
		category = "drinks",
		experience = 4640,
		formatDescription = "foodquality",
		description = "Increase Mana Regeneration and Health Regeneration by {35} for 20 minutes.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 47,
			single = 42
		},
		materials = {
			{
				clientId = 28828,
				amount = 1,
				name = "watermelon",
				itemId = 32260
			},
			{
				clientId = 28875,
				amount = 1,
				name = "pumpkin",
				itemId = 32307
			},
			{
				clientId = 42107,
				amount = 2,
				name = "Brewer Yeast",
				itemId = 45559
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 78,
		durability = 7,
		clientId = 42107,
		tier = -1,
		itemId = 45559,
		name = "Brewer Yeast",
		category = "ingredient",
		experience = 470,
		formatDescription = "foodquality",
		description = "Used in various recipes. A vital ingredient in the art of brewing.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 40832,
				amount = 5,
				name = "Orange Scales",
				itemId = 44284
			},
			{
				clientId = 28881,
				amount = 3,
				name = "wheat",
				itemId = 32313
			}
		}
	},
	{
		progress = 175,
		profession = 8,
		index = 79,
		durability = 6,
		clientId = 42108,
		tier = -1,
		itemId = 45560,
		name = "Carrot Soup",
		category = "meals",
		experience = 1000,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {6} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 125,
		level = {
			mass = 23,
			single = 18
		},
		materials = {
			{
				clientId = 28865,
				amount = 5,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28874,
				amount = 3,
				name = "potato",
				itemId = 32306
			}
		}
	},
	{
		progress = 125,
		profession = 8,
		index = 80,
		durability = 5,
		clientId = 42103,
		tier = -1,
		itemId = 45555,
		name = "Apple Puree",
		category = "meals",
		experience = 2640,
		formatDescription = "foodquality",
		description = "Increase Intelligence by {4} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 100,
		level = {
			mass = 13,
			single = 8
		},
		materials = {
			{
				clientId = 28822,
				amount = 2,
				name = "apple",
				itemId = 32254
			}
		}
	},
	{
		progress = 275,
		profession = 8,
		index = 81,
		durability = 7,
		clientId = 42104,
		tier = -1,
		itemId = 45556,
		name = "Bagel",
		category = "baked goods",
		experience = 1920,
		formatDescription = "foodquality",
		description = "Increase Healing Power by {12} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 250,
		level = {
			mass = 41,
			single = 36
		},
		materials = {
			{
				clientId = 33553,
				amount = 4,
				name = "Ground Flour",
				itemId = 36985
			},
			{
				clientId = 28928,
				amount = 2,
				name = "egg",
				itemId = 32360
			},
			{
				clientId = 42112,
				amount = 1,
				name = "Gourmet Seasoning",
				itemId = 45564
			}
		}
	},
	{
		progress = 75,
		profession = 8,
		index = 82,
		durability = 4,
		clientId = 42105,
		tier = -1,
		itemId = 45557,
		name = "Baked Potatoes",
		category = "baked goods",
		experience = 260,
		formatDescription = "foodquality",
		description = "Increase Attack Power by {1} for 30 minutes.",
		amount = 5,
		slotName = "",
		quality = 75,
		level = {
			mass = 7,
			single = 2
		},
		materials = {
			{
				clientId = 28874,
				amount = 4,
				name = "potato",
				itemId = 32306
			}
		}
	},
	{
		progress = 50,
		profession = 8,
		index = 83,
		durability = 3,
		clientId = 42106,
		tier = -1,
		itemId = 45558,
		name = "Basic Seasoning",
		category = "ingredient",
		experience = 290,
		formatDescription = "foodquality",
		description = "Used in various recipes. Essential flavor enhancer for a wide range of dishes.",
		amount = 5,
		slotName = "",
		quality = 50,
		level = {
			mass = 10,
			single = 5
		},
		materials = {
			{
				clientId = 33551,
				amount = 1,
				name = "salt",
				itemId = 36983
			}
		}
	},
	{
		progress = 200,
		profession = 8,
		index = 84,
		durability = 7,
		clientId = 43649,
		tier = -1,
		itemId = 47101,
		name = "Superior Ration",
		category = "misc",
		experience = 1280,
		formatDescription = "",
		description = "Ration of superior quality frequently used by dedicated moa owners. Increases experience received by the moa by 20%, Speed by 20 and Strength by 8 for the next 5000 steps.",
		amount = 5,
		slotName = "",
		quality = 150,
		level = {
			mass = 25,
			single = 20
		},
		materials = {
			{
				clientId = 28874,
				amount = 1,
				name = "potato",
				itemId = 32306
			},
			{
				clientId = 28932,
				amount = 1,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 28865,
				amount = 2,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 38161,
				amount = 1,
				name = "Moa Ration",
				itemId = 41613
			}
		}
	},
	{
		progress = 250,
		profession = 8,
		index = 85,
		durability = 7,
		clientId = 43645,
		tier = -1,
		itemId = 47097,
		name = "Rustic Ration",
		category = "misc",
		experience = 1760,
		formatDescription = "",
		description = "Ration of superior quality prepared with fresh farm ingredients. Increases experience received by the moa by 30%, Speed by 30 and Strength by 12 for the next 6000 steps.",
		amount = 5,
		slotName = "",
		quality = 225,
		level = {
			mass = 40,
			single = 35
		},
		materials = {
			{
				clientId = 28865,
				amount = 3,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28932,
				amount = 1,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 28864,
				amount = 1,
				name = "cabbage",
				itemId = 32296
			},
			{
				clientId = 43649,
				amount = 1,
				name = "Superior Ration",
				itemId = 47101
			}
		}
	},
	{
		progress = 375,
		profession = 8,
		index = 86,
		durability = 7,
		clientId = 43640,
		tier = -1,
		itemId = 47092,
		name = "Gourmet Ration",
		category = "misc",
		experience = 2640,
		formatDescription = "",
		description = "Masterfully prepared moa ration, heavy in nutrients and vitamins.  Increases experience received by the moa by 40%, Speed by 40 and Strength by 16 for the next 7500 steps.",
		amount = 5,
		slotName = "",
		quality = 350,
		level = {
			mass = 55,
			single = 50
		},
		materials = {
			{
				clientId = 28865,
				amount = 1,
				name = "carrot",
				itemId = 32297
			},
			{
				clientId = 28932,
				amount = 1,
				name = "shank",
				itemId = 32364
			},
			{
				clientId = 28875,
				amount = 1,
				name = "pumpkin",
				itemId = 32307
			},
			{
				clientId = 43645,
				amount = 1,
				name = "Rustic Ration",
				itemId = 47097
			}
		}
	},
	{
		progress = 500,
		profession = 8,
		index = 87,
		durability = 8,
		clientId = 43646,
		tier = -1,
		itemId = 47098,
		name = "Seafood Extravaganza",
		category = "misc",
		experience = 3500,
		formatDescription = "",
		description = "Masterfully prepared moa ration with carefully selected seafood treats.  Increases experience received by the moa by 50%, Speed by 50 and Strength by 20 for the next 10000 steps.",
		amount = 5,
		slotName = "",
		quality = 500,
		level = {
			mass = 65,
			single = 60
		},
		materials = {
			{
				clientId = 28864,
				amount = 2,
				name = "cabbage",
				itemId = 32296
			},
			{
				clientId = 40828,
				amount = 5,
				name = "Fish Oil",
				itemId = 44280
			},
			{
				clientId = 28871,
				amount = 5,
				name = "pea",
				itemId = 32303
			},
			{
				clientId = 43640,
				amount = 1,
				name = "Gourmet Ration",
				itemId = 47092
			}
		}
	},
	{
		progress = 550,
		profession = 8,
		index = 88,
		durability = 9,
		clientId = 43642,
		tier = -1,
		itemId = 47094,
		name = "Uncanny Ration",
		category = "misc",
		experience = 4540,
		formatDescription = "",
		description = "A questionable recipe capable of putting moas in a strange frenzied state. Increases experience received by the moa by 60%, Speed by 60 and Strength by 24 for the next 15000 steps.",
		amount = 5,
		slotName = "",
		quality = 550,
		level = {
			mass = 75,
			single = 70
		},
		materials = {
			{
				clientId = 28864,
				amount = 2,
				name = "cabbage",
				itemId = 32296
			},
			{
				clientId = 40828,
				amount = 5,
				name = "Fish Oil",
				itemId = 44280
			},
			{
				clientId = 28863,
				amount = 4,
				name = "brocolli",
				itemId = 32295
			},
			{
				clientId = 43646,
				amount = 1,
				name = "Seafood Extravaganza",
				itemId = 47098
			}
		}
	},
	{
		progress = 650,
		profession = 8,
		index = 89,
		durability = 10,
		clientId = 43643,
		tier = -1,
		itemId = 47095,
		name = "Moa's Delight",
		category = "misc",
		experience = 5700,
		formatDescription = "",
		description = "A true delicacy made with exotic seasoning loved by all moas.  Increases experience received by the moa by 75%, Speed by 75 and Strength by 30 for the next 25000 steps.",
		amount = 5,
		slotName = "",
		quality = 650,
		level = {
			mass = 80,
			single = 75
		},
		materials = {
			{
				clientId = 28875,
				amount = 2,
				name = "pumpkin",
				itemId = 32307
			},
			{
				clientId = 40828,
				amount = 5,
				name = "Fish Oil",
				itemId = 44280
			},
			{
				clientId = 28872,
				amount = 3,
				name = "pepper",
				itemId = 32304
			},
			{
				clientId = 43642,
				amount = 1,
				name = "Uncanny Ration",
				itemId = 47094
			}
		}
	}
}
questRecipes = questRecipes or {}
questRecipes[ProfessionCooking] = {}

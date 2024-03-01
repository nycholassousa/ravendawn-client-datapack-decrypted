-- chunkname: @/modules/game_tradepacks/recipes.lua

recipes = {
	[TRADEPACK_CATEGORY_QUEST] = {
		{
			itemid = 42725,
			name = "Farmer's Basic",
			active = true,
			clientId = 39273,
			id = 1,
			route_multiplier = 1,
			materials = {
				{
					amount = 3,
					source = "Husbandry",
					clientId = 39435,
					name = "hide",
					itemid = 42887
				},
				{
					amount = 3,
					source = "Husbandry",
					clientId = 39437,
					name = "shank",
					itemid = 42889
				},
				{
					amount = 2,
					source = "Farming",
					clientId = 39436,
					name = "potato",
					itemid = 42888
				}
			}
		}
	},
	[TRADEPACK_CATEGORY_DEFAULT] = {
		{
			itemid = 36986,
			name = "Crisp Produce",
			minimumLevel = 55,
			clientId = 33554,
			id = 1,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 10,
					source = "Farming",
					clientId = 28822,
					name = "apple",
					itemid = 32254
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28863,
					name = "brocolli",
					itemid = 32295
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28871,
					name = "pea",
					itemid = 32303
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28878,
					name = "beans",
					itemid = 32310
				}
			}
		},
		{
			itemid = 36987,
			name = "Dairy Delivery",
			minimumLevel = 35,
			clientId = 33555,
			id = 2,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 15,
					source = "Husbandry",
					clientId = 28929,
					name = "milk",
					itemid = 32361
				},
				{
					amount = 1,
					source = "Husbandry",
					clientId = 28927,
					name = "cheese",
					itemid = 32359
				},
				{
					amount = 30,
					source = "Husbandry",
					clientId = 28928,
					name = "egg",
					itemid = 32360
				}
			}
		},
		{
			itemid = 36988,
			name = "Exotic Fruits",
			minimumLevel = 55,
			clientId = 33556,
			id = 3,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 4,
					source = "Farming",
					clientId = 28828,
					name = "watermelon",
					itemid = 32260
				},
				{
					amount = 8,
					source = "Farming",
					clientId = 28824,
					name = "sunberry",
					itemid = 32256
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28826,
					name = "moonberry",
					itemid = 32258
				}
			}
		},
		{
			itemid = 45305,
			name = "Settler's Rations",
			minimumLevel = 25,
			clientId = 41853,
			id = 4,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 30,
					source = "Farming",
					clientId = 28881,
					name = "wheat",
					itemid = 32313
				},
				{
					amount = 35,
					source = "Farming",
					clientId = 28865,
					name = "carrot",
					itemid = 32297
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28866,
					name = "corn",
					itemid = 32298
				}
			}
		},
		{
			itemid = 36990,
			name = "Fried Chicken",
			minimumLevel = 50,
			clientId = 33558,
			id = 5,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 12,
					source = "Husbandry",
					clientId = 28750,
					name = "chicken",
					itemid = 32182
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28870,
					name = "onion",
					itemid = 32302
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28869,
					name = "garlic",
					itemid = 32301
				},
				{
					amount = 20,
					source = "Cooking",
					clientId = 33553,
					name = "ground flour",
					itemid = 36985
				}
			}
		},
		{
			itemid = 36991,
			name = "Strawberry Cakes",
			minimumLevel = 35,
			clientId = 33559,
			id = 6,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 50,
					source = "Cooking",
					clientId = 33553,
					name = "ground flour",
					itemid = 36985
				},
				{
					amount = 10,
					source = "Husbandry",
					clientId = 28929,
					name = "milk",
					itemid = 32361
				},
				{
					amount = 40,
					source = "Farming",
					clientId = 28827,
					name = "strawberry",
					itemid = 32259
				},
				{
					amount = 10,
					source = "Husbandry",
					clientId = 44381,
					name = "honey",
					itemid = 47833
				}
			}
		},
		{
			itemid = 36992,
			name = "Berry Basket",
			minimumLevel = 55,
			clientId = 33560,
			id = 7,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 30,
					source = "Farming",
					clientId = 28827,
					name = "strawberry",
					itemid = 32259
				},
				{
					amount = 50,
					source = "Farming",
					clientId = 28825,
					name = "blueberry",
					itemid = 32257
				},
				{
					amount = 4,
					source = "Farming",
					clientId = 28826,
					name = "moonberry",
					itemid = 32258
				},
				{
					amount = 8,
					source = "Farming",
					clientId = 28824,
					name = "sunberry",
					itemid = 32256
				}
			}
		},
		{
			itemid = 36995,
			name = "Margrove Ale Ingredients",
			minimumLevel = 50,
			clientId = 33563,
			id = 8,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 30,
					source = "Farming",
					clientId = 28881,
					name = "wheat",
					itemid = 32313
				},
				{
					amount = 3,
					source = "Farming",
					clientId = 28829,
					name = "acorn",
					itemid = 32261
				},
				{
					amount = 2,
					source = "Farming",
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307
				}
			}
		},
		{
			itemid = 45303,
			name = "Noble Delicacies",
			minimumLevel = 60,
			clientId = 41851,
			id = 9,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 10,
					source = "Farming",
					clientId = 28826,
					name = "moonberry",
					itemid = 32258
				},
				{
					amount = 2,
					source = "Farming",
					clientId = 28829,
					name = "acorn",
					itemid = 32261
				},
				{
					amount = 12,
					source = "Farming",
					clientId = 28872,
					name = "pepper",
					itemid = 32304
				}
			}
		},
		{
			itemid = 45304,
			name = "Sajecho's Spices",
			minimumLevel = 35,
			clientId = 41852,
			id = 10,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 5,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				},
				{
					amount = 4,
					source = "Farming",
					clientId = 28832,
					name = "orange",
					itemid = 32264
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28870,
					name = "onion",
					itemid = 32302
				}
			}
		},
		{
			itemid = 36998,
			name = "Seabreeze Rum",
			minimumLevel = 45,
			clientId = 33566,
			id = 11,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 10,
					source = "Farming",
					clientId = 28866,
					name = "corn",
					itemid = 32298
				},
				{
					amount = 8,
					source = "Farming",
					clientId = 28864,
					name = "cabbage",
					itemid = 32296
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28823,
					name = "banana",
					itemid = 32255
				},
				{
					amount = 30,
					source = "Farming",
					clientId = 28825,
					name = "blueberry",
					itemid = 32257
				}
			}
		},
		{
			itemid = 36999,
			name = "Aged Meat",
			minimumLevel = 50,
			clientId = 33567,
			id = 12,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 12,
					source = "Husbandry",
					clientId = 28931,
					name = "beef",
					itemid = 32363
				},
				{
					amount = 5,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28869,
					name = "garlic",
					itemid = 32301
				}
			}
		},
		{
			itemid = 37000,
			name = "Pickled Vegetables",
			minimumLevel = 35,
			clientId = 33568,
			id = 13,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 15,
					source = "Farming",
					clientId = 28864,
					name = "cabbage",
					itemid = 32296
				},
				{
					amount = 50,
					source = "Farming",
					clientId = 28865,
					name = "carrot",
					itemid = 32297
				},
				{
					amount = 8,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				}
			}
		},
		{
			itemid = 37001,
			name = "Vegetable Stew",
			minimumLevel = 55,
			clientId = 33569,
			id = 14,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 5,
					source = "Farming",
					clientId = 28863,
					name = "brocolli",
					itemid = 32295
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307
				},
				{
					amount = 25,
					source = "Farming",
					clientId = 28878,
					name = "beans",
					itemid = 32310
				},
				{
					amount = 40,
					source = "Farming",
					clientId = 28874,
					name = "potato",
					itemid = 32306
				}
			}
		},
		{
			itemid = 37002,
			name = "Pie Making Kit",
			minimumLevel = 60,
			clientId = 33570,
			id = 15,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 5,
					source = "Farming",
					clientId = 28822,
					name = "apple",
					itemid = 32254
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28824,
					name = "sunberry",
					itemid = 32256
				},
				{
					amount = 4,
					source = "Farming",
					clientId = 28830,
					name = "cherry",
					itemid = 32262
				},
				{
					amount = 30,
					source = "Cooking",
					clientId = 33553,
					name = "ground flour",
					itemid = 36985
				}
			}
		},
		{
			itemid = 37003,
			name = "Bakers Basics",
			minimumLevel = 25,
			clientId = 33571,
			id = 16,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 15,
					source = "Husbandry",
					clientId = 28929,
					name = "milk",
					itemid = 32361
				},
				{
					amount = 30,
					source = "Husbandry",
					clientId = 28928,
					name = "egg",
					itemid = 32360
				},
				{
					amount = 35,
					source = "Cooking",
					clientId = 33553,
					name = "ground flour",
					itemid = 36985
				}
			}
		},
		{
			itemid = 37004,
			name = "Juicers Box",
			minimumLevel = 60,
			clientId = 33572,
			id = 17,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 5,
					source = "Farming",
					clientId = 28822,
					name = "apple",
					itemid = 32254
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28827,
					name = "strawberry",
					itemid = 32259
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28830,
					name = "cherry",
					itemid = 32262
				},
				{
					amount = 3,
					source = "Farming",
					clientId = 28823,
					name = "banana",
					itemid = 32255
				}
			}
		},
		{
			itemid = 37005,
			name = "Sailor's Remedy",
			minimumLevel = 45,
			clientId = 33573,
			id = 18,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 20,
					source = "Farming",
					clientId = 28865,
					name = "carrot",
					itemid = 32297
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28832,
					name = "orange",
					itemid = 32264
				},
				{
					amount = 20,
					source = "Farming",
					clientId = 28878,
					name = "beans",
					itemid = 32310
				}
			}
		},
		{
			itemid = 37006,
			name = "Rohna Smoked Ham",
			minimumLevel = 50,
			clientId = 33574,
			id = 19,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 5,
					source = "Husbandry",
					clientId = 28932,
					name = "shank",
					itemid = 32364
				},
				{
					amount = 2,
					source = "Farming",
					clientId = 28829,
					name = "acorn",
					itemid = 32261
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28871,
					name = "pea",
					itemid = 32303
				},
				{
					amount = 5,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				}
			}
		},
		{
			itemid = 37007,
			name = "Barbecue Specialty",
			minimumLevel = 35,
			clientId = 33575,
			id = 20,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 10,
					source = "Husbandry",
					clientId = 28931,
					name = "beef",
					itemid = 32363
				},
				{
					amount = 5,
					source = "Husbandry",
					clientId = 28750,
					name = "chicken",
					itemid = 32182
				},
				{
					amount = 30,
					source = "Mining",
					clientId = 28941,
					name = "coal",
					itemid = 32373
				},
				{
					amount = 6,
					source = "Husbandry",
					clientId = 44381,
					name = "honey",
					itemid = 47833
				}
			}
		},
		{
			itemid = 37008,
			name = "Ravencrest Greens",
			minimumLevel = 55,
			clientId = 33576,
			id = 21,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 10,
					source = "Farming",
					clientId = 28863,
					name = "brocolli",
					itemid = 32295
				},
				{
					amount = 25,
					source = "Farming",
					clientId = 28871,
					name = "pea",
					itemid = 32303
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28864,
					name = "cabbage",
					itemid = 32296
				}
			}
		},
		{
			itemid = 37009,
			name = "Kabbar's Omelets",
			minimumLevel = 60,
			clientId = 33577,
			id = 22,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 30,
					source = "Husbandry",
					clientId = 28928,
					name = "egg",
					itemid = 32360
				},
				{
					amount = 1,
					source = "Husbandry",
					clientId = 28927,
					name = "cheese",
					itemid = 32359
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28872,
					name = "pepper",
					itemid = 32304
				}
			}
		},
		{
			itemid = 37010,
			name = "Sombreshade's Pie",
			minimumLevel = 45,
			clientId = 33578,
			id = 23,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 5,
					source = "Farming",
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307
				},
				{
					amount = 10,
					source = "Husbandry",
					clientId = 28929,
					name = "milk",
					itemid = 32361
				},
				{
					amount = 20,
					source = "Cooking",
					clientId = 33553,
					name = "ground flour",
					itemid = 36985
				},
				{
					amount = 13,
					source = "Husbandry",
					clientId = 44381,
					name = "honey",
					itemid = 47833
				}
			}
		},
		{
			itemid = 37011,
			name = "General Spices",
			minimumLevel = 60,
			clientId = 33579,
			id = 24,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 15,
					source = "Farming",
					clientId = 28869,
					name = "garlic",
					itemid = 32301
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28870,
					name = "onion",
					itemid = 32302
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28872,
					name = "pepper",
					itemid = 32304
				},
				{
					amount = 5,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				}
			}
		},
		{
			itemid = 37012,
			name = "Basic Rations",
			minimumLevel = 25,
			clientId = 33580,
			id = 25,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 15,
					source = "Farming",
					clientId = 28881,
					name = "wheat",
					itemid = 32313
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28866,
					name = "corn",
					itemid = 32298
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28822,
					name = "apple",
					itemid = 32254
				}
			}
		},
		{
			itemid = 37013,
			name = "Butcher's Box",
			minimumLevel = 35,
			clientId = 33581,
			id = 26,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 8,
					source = "Husbandry",
					clientId = 28750,
					name = "chicken",
					itemid = 32182
				},
				{
					amount = 5,
					source = "Husbandry",
					clientId = 28931,
					name = "beef",
					itemid = 32363
				},
				{
					amount = 5,
					source = "Husbandry",
					clientId = 28932,
					name = "shank",
					itemid = 32364
				},
				{
					amount = 1,
					source = "Husbandry",
					clientId = 28927,
					name = "cheese",
					itemid = 32359
				}
			}
		},
		{
			itemid = 37014,
			name = "Fruit Basket",
			minimumLevel = 60,
			clientId = 33582,
			id = 27,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 20,
					source = "Farming",
					clientId = 28831,
					name = "grape",
					itemid = 32263
				},
				{
					amount = 2,
					source = "Farming",
					clientId = 28828,
					name = "watermelon",
					itemid = 32260
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28830,
					name = "cherry",
					itemid = 32262
				}
			}
		},
		{
			itemid = 37016,
			name = "Winemakers Kit",
			minimumLevel = 50,
			clientId = 33584,
			id = 28,
			route_multiplier = 1.2,
			unlockCommunityPercent = 10,
			materials = {
				{
					amount = 40,
					source = "Farming",
					clientId = 28831,
					name = "grape",
					itemid = 32263
				},
				{
					amount = 15,
					source = "Farming",
					clientId = 28825,
					name = "blueberry",
					itemid = 32257
				},
				{
					amount = 5,
					source = "Farming",
					clientId = 28826,
					name = "moonberry",
					itemid = 32258
				}
			}
		},
		{
			itemid = 37017,
			name = "Ravencrest Finest Wears",
			minimumLevel = 25,
			clientId = 33585,
			id = 29,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 8,
					source = "Farming",
					clientId = 28879,
					name = "cotton",
					itemid = 32311
				},
				{
					amount = 8,
					source = "Husbandry",
					clientId = 28425,
					name = "wool",
					itemid = 31857
				},
				{
					amount = 8,
					source = "Husbandry",
					clientId = 35353,
					name = "hide",
					itemid = 38785
				}
			}
		},
		{
			itemid = 37018,
			name = "Brined Shank",
			minimumLevel = 60,
			clientId = 33586,
			id = 30,
			route_multiplier = 1.2,
			unlockCommunityPercent = 5,
			materials = {
				{
					amount = 10,
					source = "Husbandry",
					clientId = 28932,
					name = "shank",
					itemid = 32364
				},
				{
					amount = 8,
					source = "Mining",
					clientId = 33551,
					name = "salt",
					itemid = 36983
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28872,
					name = "pepper",
					itemid = 32304
				}
			}
		},
		{
			itemid = 37019,
			name = "Sajecho Fruit Basket",
			minimumLevel = 45,
			clientId = 33587,
			id = 31,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 2,
					source = "Farming",
					clientId = 28823,
					name = "banana",
					itemid = 32255
				},
				{
					amount = 1,
					source = "Farming",
					clientId = 28828,
					name = "watermelon",
					itemid = 32260
				},
				{
					amount = 4,
					source = "Farming",
					clientId = 28832,
					name = "orange",
					itemid = 32264
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28831,
					name = "grape",
					itemid = 32263
				}
			}
		},
		{
			itemid = 42940,
			name = "Campfire Roast",
			active = true,
			clientId = 39488,
			id = 32,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 22,
					source = "Woodcutting",
					clientId = 28977,
					name = "small log",
					itemid = 32409
				},
				{
					amount = 130,
					source = "Mining",
					clientId = 28946,
					name = "stone",
					itemid = 32378
				},
				{
					amount = 8,
					source = "Husbandry",
					clientId = 28750,
					name = "chicken",
					itemid = 32182
				}
			}
		},
		{
			itemid = 42942,
			name = "Slums Provisions",
			active = true,
			clientId = 39490,
			id = 33,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					source = "Farming",
					clientId = 28879,
					name = "cotton",
					itemid = 32311
				},
				{
					amount = 8,
					source = "Husbandry",
					clientId = 28932,
					name = "shank",
					itemid = 32364
				},
				{
					amount = 80,
					source = "Farming",
					clientId = 28874,
					name = "potato",
					itemid = 32306
				}
			}
		},
		{
			itemid = 36993,
			name = "Building Materials",
			active = true,
			clientId = 33561,
			id = 34,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 100,
					source = "Mining",
					clientId = 28946,
					name = "stone",
					itemid = 32378
				},
				{
					amount = 22,
					source = "Woodcutting",
					clientId = 28977,
					name = "small log",
					itemid = 32409
				},
				{
					amount = 10,
					source = "Husbandry",
					clientId = 35353,
					name = "hide",
					itemid = 38785
				}
			}
		},
		{
			itemid = 36994,
			name = "Kindling Kit",
			minimumLevel = 25,
			clientId = 33562,
			id = 35,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 38,
					source = "Woodcutting",
					clientId = 28977,
					name = "small log",
					itemid = 32409
				},
				{
					amount = 40,
					source = "Mining",
					clientId = 28941,
					name = "coal",
					itemid = 32373
				},
				{
					amount = 10,
					source = "Farming",
					clientId = 28879,
					name = "cotton",
					itemid = 32311
				}
			}
		},
		{
			itemid = 37015,
			name = "Glaceforde Explorers Kit",
			minimumLevel = 25,
			clientId = 33583,
			id = 36,
			route_multiplier = 1.2,
			unlockCommunityPercent = 15,
			materials = {
				{
					amount = 10,
					source = "Husbandry",
					clientId = 28425,
					name = "wool",
					itemid = 31857
				},
				{
					amount = 30,
					source = "Woodcutting",
					clientId = 28977,
					name = "small log",
					itemid = 32409
				},
				{
					amount = 40,
					source = "Mining",
					clientId = 28941,
					name = "coal",
					itemid = 32373
				}
			}
		},
		{
			itemid = 42941,
			name = "Crafting Basics",
			active = true,
			clientId = 39489,
			id = 37,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 40,
					source = "Mining",
					clientId = 28944,
					name = "copper ore",
					itemid = 32376
				},
				{
					amount = 10,
					source = "Husbandry",
					clientId = 35353,
					name = "hide",
					itemid = 38785
				},
				{
					amount = 25,
					source = "Woodcutting",
					clientId = 28977,
					name = "small log",
					itemid = 32409
				}
			}
		}
	}
}

-- chunkname: @/modules/game_tradepacks/recipes.lua

recipes = {
	[TRADEPACK_CATEGORY_QUEST] = {
		{
			id = 1,
			clientId = 39273,
			active = true,
			name = "Farmer's Basic",
			itemid = 42725,
			route_multiplier = 1,
			materials = {
				{
					amount = 3,
					name = "hide",
					source = "Husbandry",
					clientId = 39435,
					itemid = 42887
				},
				{
					amount = 3,
					name = "shank",
					source = "Husbandry",
					clientId = 39437,
					itemid = 42889
				},
				{
					amount = 2,
					name = "potato",
					source = "Farming",
					clientId = 39436,
					itemid = 42888
				}
			}
		}
	},
	[TRADEPACK_CATEGORY_DEFAULT] = {
		{
			id = 1,
			unlockCommunityPercent = 10,
			minimumLevel = 55,
			clientId = 33554,
			name = "Crisp Produce",
			itemid = 36986,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "apple",
					source = "Farming",
					clientId = 28822,
					itemid = 32254
				},
				{
					amount = 5,
					name = "brocolli",
					source = "Farming",
					clientId = 28863,
					itemid = 32295
				},
				{
					amount = 10,
					name = "pea",
					source = "Farming",
					clientId = 28871,
					itemid = 32303
				},
				{
					amount = 5,
					name = "beans",
					source = "Farming",
					clientId = 28878,
					itemid = 32310
				}
			}
		},
		{
			id = 2,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 33555,
			name = "Dairy Delivery",
			itemid = 36987,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 15,
					name = "milk",
					source = "Husbandry",
					clientId = 28929,
					itemid = 32361
				},
				{
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927,
					itemid = 32359
				},
				{
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928,
					itemid = 32360
				}
			}
		},
		{
			id = 3,
			unlockCommunityPercent = 10,
			minimumLevel = 55,
			clientId = 33556,
			name = "Exotic Fruits",
			itemid = 36988,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 4,
					name = "watermelon",
					source = "Farming",
					clientId = 28828,
					itemid = 32260
				},
				{
					amount = 8,
					name = "sunberry",
					source = "Farming",
					clientId = 28824,
					itemid = 32256
				},
				{
					amount = 5,
					name = "moonberry",
					source = "Farming",
					clientId = 28826,
					itemid = 32258
				}
			}
		},
		{
			id = 4,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 41853,
			name = "Settler's Rations",
			itemid = 45305,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 30,
					name = "wheat",
					source = "Farming",
					clientId = 28881,
					itemid = 32313
				},
				{
					amount = 35,
					name = "carrot",
					source = "Farming",
					clientId = 28865,
					itemid = 32297
				},
				{
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866,
					itemid = 32298
				}
			}
		},
		{
			id = 5,
			unlockCommunityPercent = 10,
			minimumLevel = 50,
			clientId = 33558,
			name = "Fried Chicken",
			itemid = 36990,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 12,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750,
					itemid = 32182
				},
				{
					amount = 10,
					name = "onion",
					source = "Farming",
					clientId = 28870,
					itemid = 32302
				},
				{
					amount = 10,
					name = "garlic",
					source = "Farming",
					clientId = 28869,
					itemid = 32301
				},
				{
					amount = 20,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553,
					itemid = 36985
				}
			}
		},
		{
			id = 6,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 33559,
			name = "Strawberry Cakes",
			itemid = 36991,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 50,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553,
					itemid = 36985
				},
				{
					amount = 10,
					name = "milk",
					source = "Husbandry",
					clientId = 28929,
					itemid = 32361
				},
				{
					amount = 40,
					name = "strawberry",
					source = "Farming",
					clientId = 28827,
					itemid = 32259
				},
				{
					amount = 10,
					name = "honey",
					source = "Husbandry",
					clientId = 44381,
					itemid = 47833
				}
			}
		},
		{
			id = 7,
			unlockCommunityPercent = 10,
			minimumLevel = 55,
			clientId = 33560,
			name = "Berry Basket",
			itemid = 36992,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 30,
					name = "strawberry",
					source = "Farming",
					clientId = 28827,
					itemid = 32259
				},
				{
					amount = 50,
					name = "blueberry",
					source = "Farming",
					clientId = 28825,
					itemid = 32257
				},
				{
					amount = 4,
					name = "moonberry",
					source = "Farming",
					clientId = 28826,
					itemid = 32258
				},
				{
					amount = 8,
					name = "sunberry",
					source = "Farming",
					clientId = 28824,
					itemid = 32256
				}
			}
		},
		{
			id = 8,
			unlockCommunityPercent = 10,
			minimumLevel = 50,
			clientId = 33563,
			name = "Margrove Ale Ingredients",
			itemid = 36995,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 30,
					name = "wheat",
					source = "Farming",
					clientId = 28881,
					itemid = 32313
				},
				{
					amount = 3,
					name = "acorn",
					source = "Farming",
					clientId = 28829,
					itemid = 32261
				},
				{
					amount = 2,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875,
					itemid = 32307
				}
			}
		},
		{
			id = 9,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 41851,
			name = "Noble Delicacies",
			itemid = 45303,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "moonberry",
					source = "Farming",
					clientId = 28826,
					itemid = 32258
				},
				{
					amount = 2,
					name = "acorn",
					source = "Farming",
					clientId = 28829,
					itemid = 32261
				},
				{
					amount = 12,
					name = "pepper",
					source = "Farming",
					clientId = 28872,
					itemid = 32304
				}
			}
		},
		{
			id = 10,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 41852,
			name = "Sajecho's Spices",
			itemid = 45304,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				},
				{
					amount = 4,
					name = "orange",
					source = "Farming",
					clientId = 28832,
					itemid = 32264
				},
				{
					amount = 15,
					name = "onion",
					source = "Farming",
					clientId = 28870,
					itemid = 32302
				}
			}
		},
		{
			id = 11,
			unlockCommunityPercent = 15,
			minimumLevel = 45,
			clientId = 33566,
			name = "Seabreeze Rum",
			itemid = 36998,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866,
					itemid = 32298
				},
				{
					amount = 8,
					name = "cabbage",
					source = "Farming",
					clientId = 28864,
					itemid = 32296
				},
				{
					amount = 5,
					name = "banana",
					source = "Farming",
					clientId = 28823,
					itemid = 32255
				},
				{
					amount = 30,
					name = "blueberry",
					source = "Farming",
					clientId = 28825,
					itemid = 32257
				}
			}
		},
		{
			id = 12,
			unlockCommunityPercent = 10,
			minimumLevel = 50,
			clientId = 33567,
			name = "Aged Meat",
			itemid = 36999,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 12,
					name = "beef",
					source = "Husbandry",
					clientId = 28931,
					itemid = 32363
				},
				{
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				},
				{
					amount = 15,
					name = "garlic",
					source = "Farming",
					clientId = 28869,
					itemid = 32301
				}
			}
		},
		{
			id = 13,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 33568,
			name = "Pickled Vegetables",
			itemid = 37000,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 15,
					name = "cabbage",
					source = "Farming",
					clientId = 28864,
					itemid = 32296
				},
				{
					amount = 50,
					name = "carrot",
					source = "Farming",
					clientId = 28865,
					itemid = 32297
				},
				{
					amount = 8,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				}
			}
		},
		{
			id = 14,
			unlockCommunityPercent = 10,
			minimumLevel = 55,
			clientId = 33569,
			name = "Vegetable Stew",
			itemid = 37001,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "brocolli",
					source = "Farming",
					clientId = 28863,
					itemid = 32295
				},
				{
					amount = 5,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875,
					itemid = 32307
				},
				{
					amount = 25,
					name = "beans",
					source = "Farming",
					clientId = 28878,
					itemid = 32310
				},
				{
					amount = 40,
					name = "potato",
					source = "Farming",
					clientId = 28874,
					itemid = 32306
				}
			}
		},
		{
			id = 15,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33570,
			name = "Pie Making Kit",
			itemid = 37002,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "apple",
					source = "Farming",
					clientId = 28822,
					itemid = 32254
				},
				{
					amount = 5,
					name = "sunberry",
					source = "Farming",
					clientId = 28824,
					itemid = 32256
				},
				{
					amount = 4,
					name = "cherry",
					source = "Farming",
					clientId = 28830,
					itemid = 32262
				},
				{
					amount = 30,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553,
					itemid = 36985
				}
			}
		},
		{
			id = 16,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 33571,
			name = "Bakers Basics",
			itemid = 37003,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 15,
					name = "milk",
					source = "Husbandry",
					clientId = 28929,
					itemid = 32361
				},
				{
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928,
					itemid = 32360
				},
				{
					amount = 35,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553,
					itemid = 36985
				}
			}
		},
		{
			id = 17,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33572,
			name = "Juicers Box",
			itemid = 37004,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "apple",
					source = "Farming",
					clientId = 28822,
					itemid = 32254
				},
				{
					amount = 15,
					name = "strawberry",
					source = "Farming",
					clientId = 28827,
					itemid = 32259
				},
				{
					amount = 5,
					name = "cherry",
					source = "Farming",
					clientId = 28830,
					itemid = 32262
				},
				{
					amount = 3,
					name = "banana",
					source = "Farming",
					clientId = 28823,
					itemid = 32255
				}
			}
		},
		{
			id = 18,
			unlockCommunityPercent = 15,
			minimumLevel = 45,
			clientId = 33573,
			name = "Sailor's Remedy",
			itemid = 37005,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 20,
					name = "carrot",
					source = "Farming",
					clientId = 28865,
					itemid = 32297
				},
				{
					amount = 5,
					name = "orange",
					source = "Farming",
					clientId = 28832,
					itemid = 32264
				},
				{
					amount = 20,
					name = "beans",
					source = "Farming",
					clientId = 28878,
					itemid = 32310
				}
			}
		},
		{
			id = 19,
			unlockCommunityPercent = 10,
			minimumLevel = 50,
			clientId = 33574,
			name = "Rohna Smoked Ham",
			itemid = 37006,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "shank",
					source = "Husbandry",
					clientId = 28932,
					itemid = 32364
				},
				{
					amount = 2,
					name = "acorn",
					source = "Farming",
					clientId = 28829,
					itemid = 32261
				},
				{
					amount = 10,
					name = "pea",
					source = "Farming",
					clientId = 28871,
					itemid = 32303
				},
				{
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				}
			}
		},
		{
			id = 20,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 33575,
			name = "Barbecue Specialty",
			itemid = 37007,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "beef",
					source = "Husbandry",
					clientId = 28931,
					itemid = 32363
				},
				{
					amount = 5,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750,
					itemid = 32182
				},
				{
					amount = 30,
					name = "coal",
					source = "Mining",
					clientId = 28941,
					itemid = 32373
				},
				{
					amount = 6,
					name = "honey",
					source = "Husbandry",
					clientId = 44381,
					itemid = 47833
				}
			}
		},
		{
			id = 21,
			unlockCommunityPercent = 10,
			minimumLevel = 55,
			clientId = 33576,
			name = "Ravencrest Greens",
			itemid = 37008,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "brocolli",
					source = "Farming",
					clientId = 28863,
					itemid = 32295
				},
				{
					amount = 25,
					name = "pea",
					source = "Farming",
					clientId = 28871,
					itemid = 32303
				},
				{
					amount = 15,
					name = "cabbage",
					source = "Farming",
					clientId = 28864,
					itemid = 32296
				}
			}
		},
		{
			id = 22,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33577,
			name = "Kabbar's Omelets",
			itemid = 37009,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928,
					itemid = 32360
				},
				{
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927,
					itemid = 32359
				},
				{
					amount = 15,
					name = "pepper",
					source = "Farming",
					clientId = 28872,
					itemid = 32304
				}
			}
		},
		{
			id = 23,
			unlockCommunityPercent = 15,
			minimumLevel = 45,
			clientId = 33578,
			name = "Sombreshade's Pie",
			itemid = 37010,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 5,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875,
					itemid = 32307
				},
				{
					amount = 10,
					name = "milk",
					source = "Husbandry",
					clientId = 28929,
					itemid = 32361
				},
				{
					amount = 20,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553,
					itemid = 36985
				},
				{
					amount = 13,
					name = "honey",
					source = "Husbandry",
					clientId = 44381,
					itemid = 47833
				}
			}
		},
		{
			id = 24,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33579,
			name = "General Spices",
			itemid = 37011,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 15,
					name = "garlic",
					source = "Farming",
					clientId = 28869,
					itemid = 32301
				},
				{
					amount = 15,
					name = "onion",
					source = "Farming",
					clientId = 28870,
					itemid = 32302
				},
				{
					amount = 10,
					name = "pepper",
					source = "Farming",
					clientId = 28872,
					itemid = 32304
				},
				{
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				}
			}
		},
		{
			id = 25,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 33580,
			name = "Basic Rations",
			itemid = 37012,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 15,
					name = "wheat",
					source = "Farming",
					clientId = 28881,
					itemid = 32313
				},
				{
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866,
					itemid = 32298
				},
				{
					amount = 10,
					name = "apple",
					source = "Farming",
					clientId = 28822,
					itemid = 32254
				}
			}
		},
		{
			id = 26,
			unlockCommunityPercent = 15,
			minimumLevel = 35,
			clientId = 33581,
			name = "Butcher's Box",
			itemid = 37013,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 8,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750,
					itemid = 32182
				},
				{
					amount = 5,
					name = "beef",
					source = "Husbandry",
					clientId = 28931,
					itemid = 32363
				},
				{
					amount = 5,
					name = "shank",
					source = "Husbandry",
					clientId = 28932,
					itemid = 32364
				},
				{
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927,
					itemid = 32359
				}
			}
		},
		{
			id = 27,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33582,
			name = "Fruit Basket",
			itemid = 37014,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 20,
					name = "grape",
					source = "Farming",
					clientId = 28831,
					itemid = 32263
				},
				{
					amount = 2,
					name = "watermelon",
					source = "Farming",
					clientId = 28828,
					itemid = 32260
				},
				{
					amount = 5,
					name = "cherry",
					source = "Farming",
					clientId = 28830,
					itemid = 32262
				}
			}
		},
		{
			id = 28,
			unlockCommunityPercent = 10,
			minimumLevel = 50,
			clientId = 33584,
			name = "Winemakers Kit",
			itemid = 37016,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 40,
					name = "grape",
					source = "Farming",
					clientId = 28831,
					itemid = 32263
				},
				{
					amount = 15,
					name = "blueberry",
					source = "Farming",
					clientId = 28825,
					itemid = 32257
				},
				{
					amount = 5,
					name = "moonberry",
					source = "Farming",
					clientId = 28826,
					itemid = 32258
				}
			}
		},
		{
			id = 29,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 33585,
			name = "Ravencrest Finest Wears",
			itemid = 37017,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 8,
					name = "cotton",
					source = "Farming",
					clientId = 28879,
					itemid = 32311
				},
				{
					amount = 8,
					name = "wool",
					source = "Husbandry",
					clientId = 28425,
					itemid = 31857
				},
				{
					amount = 8,
					name = "hide",
					source = "Husbandry",
					clientId = 35353,
					itemid = 38785
				}
			}
		},
		{
			id = 30,
			unlockCommunityPercent = 5,
			minimumLevel = 60,
			clientId = 33586,
			name = "Brined Shank",
			itemid = 37018,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "shank",
					source = "Husbandry",
					clientId = 28932,
					itemid = 32364
				},
				{
					amount = 8,
					name = "salt",
					source = "Mining",
					clientId = 33551,
					itemid = 36983
				},
				{
					amount = 10,
					name = "pepper",
					source = "Farming",
					clientId = 28872,
					itemid = 32304
				}
			}
		},
		{
			id = 31,
			unlockCommunityPercent = 15,
			minimumLevel = 45,
			clientId = 33587,
			name = "Sajecho Fruit Basket",
			itemid = 37019,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 2,
					name = "banana",
					source = "Farming",
					clientId = 28823,
					itemid = 32255
				},
				{
					amount = 1,
					name = "watermelon",
					source = "Farming",
					clientId = 28828,
					itemid = 32260
				},
				{
					amount = 4,
					name = "orange",
					source = "Farming",
					clientId = 28832,
					itemid = 32264
				},
				{
					amount = 10,
					name = "grape",
					source = "Farming",
					clientId = 28831,
					itemid = 32263
				}
			}
		},
		{
			id = 32,
			clientId = 39488,
			active = true,
			name = "Campfire Roast",
			itemid = 42940,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 22,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977,
					itemid = 32409
				},
				{
					amount = 130,
					name = "stone",
					source = "Mining",
					clientId = 28946,
					itemid = 32378
				},
				{
					amount = 8,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750,
					itemid = 32182
				}
			}
		},
		{
			id = 33,
			clientId = 39490,
			active = true,
			name = "Slums Provisions",
			itemid = 42942,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "cotton",
					source = "Farming",
					clientId = 28879,
					itemid = 32311
				},
				{
					amount = 8,
					name = "shank",
					source = "Husbandry",
					clientId = 28932,
					itemid = 32364
				},
				{
					amount = 80,
					name = "potato",
					source = "Farming",
					clientId = 28874,
					itemid = 32306
				}
			}
		},
		{
			id = 34,
			clientId = 33561,
			active = true,
			name = "Building Materials",
			itemid = 36993,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 100,
					name = "stone",
					source = "Mining",
					clientId = 28946,
					itemid = 32378
				},
				{
					amount = 22,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977,
					itemid = 32409
				},
				{
					amount = 10,
					name = "hide",
					source = "Husbandry",
					clientId = 35353,
					itemid = 38785
				}
			}
		},
		{
			id = 35,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 33562,
			name = "Kindling Kit",
			itemid = 36994,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 38,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977,
					itemid = 32409
				},
				{
					amount = 40,
					name = "coal",
					source = "Mining",
					clientId = 28941,
					itemid = 32373
				},
				{
					amount = 10,
					name = "cotton",
					source = "Farming",
					clientId = 28879,
					itemid = 32311
				}
			}
		},
		{
			id = 36,
			unlockCommunityPercent = 15,
			minimumLevel = 25,
			clientId = 33583,
			name = "Glaceforde Explorers Kit",
			itemid = 37015,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 10,
					name = "wool",
					source = "Husbandry",
					clientId = 28425,
					itemid = 31857
				},
				{
					amount = 30,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977,
					itemid = 32409
				},
				{
					amount = 40,
					name = "coal",
					source = "Mining",
					clientId = 28941,
					itemid = 32373
				}
			}
		},
		{
			id = 37,
			clientId = 39489,
			active = true,
			name = "Crafting Basics",
			itemid = 42941,
			route_multiplier = 1.2,
			materials = {
				{
					amount = 40,
					name = "copper ore",
					source = "Mining",
					clientId = 28944,
					itemid = 32376
				},
				{
					amount = 10,
					name = "hide",
					source = "Husbandry",
					clientId = 35353,
					itemid = 38785
				},
				{
					amount = 25,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977,
					itemid = 32409
				}
			}
		}
	}
}

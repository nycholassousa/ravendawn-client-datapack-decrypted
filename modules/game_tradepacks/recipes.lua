-- chunkname: @/modules/game_tradepacks/recipes.lua

recipes = {
	[TRADEPACK_CATEGORY_QUEST] = {
		{
			clientId = 39273,
			itemid = 42725,
			route_multiplier = 1,
			name = "Farmer's Basic",
			id = 1,
			active = true,
			materials = {
				{
					clientId = 39435,
					name = "hide",
					itemid = 42887,
					amount = 3,
					source = "Husbandry"
				},
				{
					clientId = 39437,
					name = "shank",
					itemid = 42889,
					amount = 3,
					source = "Husbandry"
				},
				{
					clientId = 39436,
					name = "potato",
					itemid = 42888,
					amount = 2,
					source = "Farming"
				}
			}
		}
	},
	[TRADEPACK_CATEGORY_DEFAULT] = {
		{
			clientId = 33554,
			itemid = 36986,
			route_multiplier = 1.2,
			name = "Crisp Produce",
			id = 1,
			minimumLevel = 55,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28822,
					name = "apple",
					itemid = 32254,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28863,
					name = "brocolli",
					itemid = 32295,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28871,
					name = "pea",
					itemid = 32303,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28878,
					name = "beans",
					itemid = 32310,
					amount = 5,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33555,
			itemid = 36987,
			route_multiplier = 1.2,
			name = "Dairy Delivery",
			id = 2,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28929,
					name = "milk",
					itemid = 32361,
					amount = 15,
					source = "Husbandry"
				},
				{
					clientId = 28927,
					name = "cheese",
					itemid = 32359,
					amount = 1,
					source = "Husbandry"
				},
				{
					clientId = 28928,
					name = "egg",
					itemid = 32360,
					amount = 30,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33556,
			itemid = 36988,
			route_multiplier = 1.2,
			name = "Exotic Fruits",
			id = 3,
			minimumLevel = 55,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28828,
					name = "watermelon",
					itemid = 32260,
					amount = 4,
					source = "Farming"
				},
				{
					clientId = 28824,
					name = "sunberry",
					itemid = 32256,
					amount = 8,
					source = "Farming"
				},
				{
					clientId = 28826,
					name = "moonberry",
					itemid = 32258,
					amount = 5,
					source = "Farming"
				}
			}
		},
		{
			clientId = 41853,
			itemid = 45305,
			route_multiplier = 1.2,
			name = "Settler's Rations",
			id = 4,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28881,
					name = "wheat",
					itemid = 32313,
					amount = 30,
					source = "Farming"
				},
				{
					clientId = 28865,
					name = "carrot",
					itemid = 32297,
					amount = 35,
					source = "Farming"
				},
				{
					clientId = 28866,
					name = "corn",
					itemid = 32298,
					amount = 10,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33558,
			itemid = 36990,
			route_multiplier = 1.2,
			name = "Fried Chicken",
			id = 5,
			minimumLevel = 50,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28750,
					name = "chicken",
					itemid = 32182,
					amount = 12,
					source = "Husbandry"
				},
				{
					clientId = 28870,
					name = "onion",
					itemid = 32302,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28869,
					name = "garlic",
					itemid = 32301,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 33553,
					name = "ground flour",
					itemid = 36985,
					amount = 20,
					source = "Cooking"
				}
			}
		},
		{
			clientId = 33559,
			itemid = 36991,
			route_multiplier = 1.2,
			name = "Strawberry Cakes",
			id = 6,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 33553,
					name = "ground flour",
					itemid = 36985,
					amount = 50,
					source = "Cooking"
				},
				{
					clientId = 28929,
					name = "milk",
					itemid = 32361,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 28827,
					name = "strawberry",
					itemid = 32259,
					amount = 40,
					source = "Farming"
				},
				{
					clientId = 44381,
					name = "honey",
					itemid = 47833,
					amount = 10,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33560,
			itemid = 36992,
			route_multiplier = 1.2,
			name = "Berry Basket",
			id = 7,
			minimumLevel = 55,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28827,
					name = "strawberry",
					itemid = 32259,
					amount = 30,
					source = "Farming"
				},
				{
					clientId = 28825,
					name = "blueberry",
					itemid = 32257,
					amount = 50,
					source = "Farming"
				},
				{
					clientId = 28826,
					name = "moonberry",
					itemid = 32258,
					amount = 4,
					source = "Farming"
				},
				{
					clientId = 28824,
					name = "sunberry",
					itemid = 32256,
					amount = 8,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33563,
			itemid = 36995,
			route_multiplier = 1.2,
			name = "Margrove Ale Ingredients",
			id = 8,
			minimumLevel = 50,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28881,
					name = "wheat",
					itemid = 32313,
					amount = 30,
					source = "Farming"
				},
				{
					clientId = 28829,
					name = "acorn",
					itemid = 32261,
					amount = 3,
					source = "Farming"
				},
				{
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307,
					amount = 2,
					source = "Farming"
				}
			}
		},
		{
			clientId = 41851,
			itemid = 45303,
			route_multiplier = 1.2,
			name = "Noble Delicacies",
			id = 9,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28826,
					name = "moonberry",
					itemid = 32258,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28829,
					name = "acorn",
					itemid = 32261,
					amount = 2,
					source = "Farming"
				},
				{
					clientId = 28872,
					name = "pepper",
					itemid = 32304,
					amount = 12,
					source = "Farming"
				}
			}
		},
		{
			clientId = 41852,
			itemid = 45304,
			route_multiplier = 1.2,
			name = "Sajecho's Spices",
			id = 10,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 5,
					source = "Mining"
				},
				{
					clientId = 28832,
					name = "orange",
					itemid = 32264,
					amount = 4,
					source = "Farming"
				},
				{
					clientId = 28870,
					name = "onion",
					itemid = 32302,
					amount = 15,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33566,
			itemid = 36998,
			route_multiplier = 1.2,
			name = "Seabreeze Rum",
			id = 11,
			minimumLevel = 45,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28866,
					name = "corn",
					itemid = 32298,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28864,
					name = "cabbage",
					itemid = 32296,
					amount = 8,
					source = "Farming"
				},
				{
					clientId = 28823,
					name = "banana",
					itemid = 32255,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28825,
					name = "blueberry",
					itemid = 32257,
					amount = 30,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33567,
			itemid = 36999,
			route_multiplier = 1.2,
			name = "Aged Meat",
			id = 12,
			minimumLevel = 50,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28931,
					name = "beef",
					itemid = 32363,
					amount = 12,
					source = "Husbandry"
				},
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 5,
					source = "Mining"
				},
				{
					clientId = 28869,
					name = "garlic",
					itemid = 32301,
					amount = 15,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33568,
			itemid = 37000,
			route_multiplier = 1.2,
			name = "Pickled Vegetables",
			id = 13,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28864,
					name = "cabbage",
					itemid = 32296,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28865,
					name = "carrot",
					itemid = 32297,
					amount = 50,
					source = "Farming"
				},
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 8,
					source = "Mining"
				}
			}
		},
		{
			clientId = 33569,
			itemid = 37001,
			route_multiplier = 1.2,
			name = "Vegetable Stew",
			id = 14,
			minimumLevel = 55,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28863,
					name = "brocolli",
					itemid = 32295,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28878,
					name = "beans",
					itemid = 32310,
					amount = 25,
					source = "Farming"
				},
				{
					clientId = 28874,
					name = "potato",
					itemid = 32306,
					amount = 40,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33570,
			itemid = 37002,
			route_multiplier = 1.2,
			name = "Pie Making Kit",
			id = 15,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28822,
					name = "apple",
					itemid = 32254,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28824,
					name = "sunberry",
					itemid = 32256,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28830,
					name = "cherry",
					itemid = 32262,
					amount = 4,
					source = "Farming"
				},
				{
					clientId = 33553,
					name = "ground flour",
					itemid = 36985,
					amount = 30,
					source = "Cooking"
				}
			}
		},
		{
			clientId = 33571,
			itemid = 37003,
			route_multiplier = 1.2,
			name = "Bakers Basics",
			id = 16,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28929,
					name = "milk",
					itemid = 32361,
					amount = 15,
					source = "Husbandry"
				},
				{
					clientId = 28928,
					name = "egg",
					itemid = 32360,
					amount = 30,
					source = "Husbandry"
				},
				{
					clientId = 33553,
					name = "ground flour",
					itemid = 36985,
					amount = 35,
					source = "Cooking"
				}
			}
		},
		{
			clientId = 33572,
			itemid = 37004,
			route_multiplier = 1.2,
			name = "Juicers Box",
			id = 17,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28822,
					name = "apple",
					itemid = 32254,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28827,
					name = "strawberry",
					itemid = 32259,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28830,
					name = "cherry",
					itemid = 32262,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28823,
					name = "banana",
					itemid = 32255,
					amount = 3,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33573,
			itemid = 37005,
			route_multiplier = 1.2,
			name = "Sailor's Remedy",
			id = 18,
			minimumLevel = 45,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28865,
					name = "carrot",
					itemid = 32297,
					amount = 20,
					source = "Farming"
				},
				{
					clientId = 28832,
					name = "orange",
					itemid = 32264,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28878,
					name = "beans",
					itemid = 32310,
					amount = 20,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33574,
			itemid = 37006,
			route_multiplier = 1.2,
			name = "Rohna Smoked Ham",
			id = 19,
			minimumLevel = 50,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28932,
					name = "shank",
					itemid = 32364,
					amount = 5,
					source = "Husbandry"
				},
				{
					clientId = 28829,
					name = "acorn",
					itemid = 32261,
					amount = 2,
					source = "Farming"
				},
				{
					clientId = 28871,
					name = "pea",
					itemid = 32303,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 5,
					source = "Mining"
				}
			}
		},
		{
			clientId = 33575,
			itemid = 37007,
			route_multiplier = 1.2,
			name = "Barbecue Specialty",
			id = 20,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28931,
					name = "beef",
					itemid = 32363,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 28750,
					name = "chicken",
					itemid = 32182,
					amount = 5,
					source = "Husbandry"
				},
				{
					clientId = 28941,
					name = "coal",
					itemid = 32373,
					amount = 30,
					source = "Mining"
				},
				{
					clientId = 44381,
					name = "honey",
					itemid = 47833,
					amount = 6,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33576,
			itemid = 37008,
			route_multiplier = 1.2,
			name = "Ravencrest Greens",
			id = 21,
			minimumLevel = 55,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28863,
					name = "brocolli",
					itemid = 32295,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28871,
					name = "pea",
					itemid = 32303,
					amount = 25,
					source = "Farming"
				},
				{
					clientId = 28864,
					name = "cabbage",
					itemid = 32296,
					amount = 15,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33577,
			itemid = 37009,
			route_multiplier = 1.2,
			name = "Kabbar's Omelets",
			id = 22,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28928,
					name = "egg",
					itemid = 32360,
					amount = 30,
					source = "Husbandry"
				},
				{
					clientId = 28927,
					name = "cheese",
					itemid = 32359,
					amount = 1,
					source = "Husbandry"
				},
				{
					clientId = 28872,
					name = "pepper",
					itemid = 32304,
					amount = 15,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33578,
			itemid = 37010,
			route_multiplier = 1.2,
			name = "Sombreshade's Pie",
			id = 23,
			minimumLevel = 45,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28875,
					name = "pumpkin",
					itemid = 32307,
					amount = 5,
					source = "Farming"
				},
				{
					clientId = 28929,
					name = "milk",
					itemid = 32361,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 33553,
					name = "ground flour",
					itemid = 36985,
					amount = 20,
					source = "Cooking"
				},
				{
					clientId = 44381,
					name = "honey",
					itemid = 47833,
					amount = 13,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33579,
			itemid = 37011,
			route_multiplier = 1.2,
			name = "General Spices",
			id = 24,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28869,
					name = "garlic",
					itemid = 32301,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28870,
					name = "onion",
					itemid = 32302,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28872,
					name = "pepper",
					itemid = 32304,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 5,
					source = "Mining"
				}
			}
		},
		{
			clientId = 33580,
			itemid = 37012,
			route_multiplier = 1.2,
			name = "Basic Rations",
			id = 25,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28881,
					name = "wheat",
					itemid = 32313,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28866,
					name = "corn",
					itemid = 32298,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28822,
					name = "apple",
					itemid = 32254,
					amount = 10,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33581,
			itemid = 37013,
			route_multiplier = 1.2,
			name = "Butcher's Box",
			id = 26,
			minimumLevel = 35,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28750,
					name = "chicken",
					itemid = 32182,
					amount = 8,
					source = "Husbandry"
				},
				{
					clientId = 28931,
					name = "beef",
					itemid = 32363,
					amount = 5,
					source = "Husbandry"
				},
				{
					clientId = 28932,
					name = "shank",
					itemid = 32364,
					amount = 5,
					source = "Husbandry"
				},
				{
					clientId = 28927,
					name = "cheese",
					itemid = 32359,
					amount = 1,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33582,
			itemid = 37014,
			route_multiplier = 1.2,
			name = "Fruit Basket",
			id = 27,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28831,
					name = "grape",
					itemid = 32263,
					amount = 20,
					source = "Farming"
				},
				{
					clientId = 28828,
					name = "watermelon",
					itemid = 32260,
					amount = 2,
					source = "Farming"
				},
				{
					clientId = 28830,
					name = "cherry",
					itemid = 32262,
					amount = 5,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33584,
			itemid = 37016,
			route_multiplier = 1.2,
			name = "Winemakers Kit",
			id = 28,
			minimumLevel = 50,
			unlockCommunityPercent = 10,
			materials = {
				{
					clientId = 28831,
					name = "grape",
					itemid = 32263,
					amount = 40,
					source = "Farming"
				},
				{
					clientId = 28825,
					name = "blueberry",
					itemid = 32257,
					amount = 15,
					source = "Farming"
				},
				{
					clientId = 28826,
					name = "moonberry",
					itemid = 32258,
					amount = 5,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33585,
			itemid = 37017,
			route_multiplier = 1.2,
			name = "Ravencrest Finest Wears",
			id = 29,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28879,
					name = "cotton",
					itemid = 32311,
					amount = 8,
					source = "Farming"
				},
				{
					clientId = 28425,
					name = "wool",
					itemid = 31857,
					amount = 8,
					source = "Husbandry"
				},
				{
					clientId = 35353,
					name = "hide",
					itemid = 38785,
					amount = 8,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33586,
			itemid = 37018,
			route_multiplier = 1.2,
			name = "Brined Shank",
			id = 30,
			minimumLevel = 60,
			unlockCommunityPercent = 5,
			materials = {
				{
					clientId = 28932,
					name = "shank",
					itemid = 32364,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 33551,
					name = "salt",
					itemid = 36983,
					amount = 8,
					source = "Mining"
				},
				{
					clientId = 28872,
					name = "pepper",
					itemid = 32304,
					amount = 10,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33587,
			itemid = 37019,
			route_multiplier = 1.2,
			name = "Sajecho Fruit Basket",
			id = 31,
			minimumLevel = 45,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28823,
					name = "banana",
					itemid = 32255,
					amount = 2,
					source = "Farming"
				},
				{
					clientId = 28828,
					name = "watermelon",
					itemid = 32260,
					amount = 1,
					source = "Farming"
				},
				{
					clientId = 28832,
					name = "orange",
					itemid = 32264,
					amount = 4,
					source = "Farming"
				},
				{
					clientId = 28831,
					name = "grape",
					itemid = 32263,
					amount = 10,
					source = "Farming"
				}
			}
		},
		{
			clientId = 39488,
			itemid = 42940,
			route_multiplier = 1.2,
			name = "Campfire Roast",
			id = 32,
			active = true,
			materials = {
				{
					clientId = 28977,
					name = "small log",
					itemid = 32409,
					amount = 22,
					source = "Woodcutting"
				},
				{
					clientId = 28946,
					name = "stone",
					itemid = 32378,
					amount = 130,
					source = "Mining"
				},
				{
					clientId = 28750,
					name = "chicken",
					itemid = 32182,
					amount = 8,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 39490,
			itemid = 42942,
			route_multiplier = 1.2,
			name = "Slums Provisions",
			id = 33,
			active = true,
			materials = {
				{
					clientId = 28879,
					name = "cotton",
					itemid = 32311,
					amount = 10,
					source = "Farming"
				},
				{
					clientId = 28932,
					name = "shank",
					itemid = 32364,
					amount = 8,
					source = "Husbandry"
				},
				{
					clientId = 28874,
					name = "potato",
					itemid = 32306,
					amount = 80,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33561,
			itemid = 36993,
			route_multiplier = 1.2,
			name = "Building Materials",
			id = 34,
			active = true,
			materials = {
				{
					clientId = 28946,
					name = "stone",
					itemid = 32378,
					amount = 100,
					source = "Mining"
				},
				{
					clientId = 28977,
					name = "small log",
					itemid = 32409,
					amount = 22,
					source = "Woodcutting"
				},
				{
					clientId = 35353,
					name = "hide",
					itemid = 38785,
					amount = 10,
					source = "Husbandry"
				}
			}
		},
		{
			clientId = 33562,
			itemid = 36994,
			route_multiplier = 1.2,
			name = "Kindling Kit",
			id = 35,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28977,
					name = "small log",
					itemid = 32409,
					amount = 38,
					source = "Woodcutting"
				},
				{
					clientId = 28941,
					name = "coal",
					itemid = 32373,
					amount = 40,
					source = "Mining"
				},
				{
					clientId = 28879,
					name = "cotton",
					itemid = 32311,
					amount = 10,
					source = "Farming"
				}
			}
		},
		{
			clientId = 33583,
			itemid = 37015,
			route_multiplier = 1.2,
			name = "Glaceforde Explorers Kit",
			id = 36,
			minimumLevel = 25,
			unlockCommunityPercent = 15,
			materials = {
				{
					clientId = 28425,
					name = "wool",
					itemid = 31857,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 28977,
					name = "small log",
					itemid = 32409,
					amount = 30,
					source = "Woodcutting"
				},
				{
					clientId = 28941,
					name = "coal",
					itemid = 32373,
					amount = 40,
					source = "Mining"
				}
			}
		},
		{
			clientId = 39489,
			itemid = 42941,
			route_multiplier = 1.2,
			name = "Crafting Basics",
			id = 37,
			active = true,
			materials = {
				{
					clientId = 28944,
					name = "copper ore",
					itemid = 32376,
					amount = 40,
					source = "Mining"
				},
				{
					clientId = 35353,
					name = "hide",
					itemid = 38785,
					amount = 10,
					source = "Husbandry"
				},
				{
					clientId = 28977,
					name = "small log",
					itemid = 32409,
					amount = 25,
					source = "Woodcutting"
				}
			}
		}
	}
}

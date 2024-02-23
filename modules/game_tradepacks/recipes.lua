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
					amount = 3,
					itemid = 42887,
					name = "hide",
					source = "Husbandry"
				},
				{
					clientId = 39437,
					amount = 3,
					itemid = 42889,
					name = "shank",
					source = "Husbandry"
				},
				{
					clientId = 39436,
					amount = 2,
					itemid = 42888,
					name = "potato",
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
					amount = 10,
					itemid = 32254,
					name = "apple",
					source = "Farming"
				},
				{
					clientId = 28863,
					amount = 5,
					itemid = 32295,
					name = "brocolli",
					source = "Farming"
				},
				{
					clientId = 28871,
					amount = 10,
					itemid = 32303,
					name = "pea",
					source = "Farming"
				},
				{
					clientId = 28878,
					amount = 5,
					itemid = 32310,
					name = "beans",
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
					amount = 15,
					itemid = 32361,
					name = "milk",
					source = "Husbandry"
				},
				{
					clientId = 28927,
					amount = 1,
					itemid = 32359,
					name = "cheese",
					source = "Husbandry"
				},
				{
					clientId = 28928,
					amount = 30,
					itemid = 32360,
					name = "egg",
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
					amount = 4,
					itemid = 32260,
					name = "watermelon",
					source = "Farming"
				},
				{
					clientId = 28824,
					amount = 8,
					itemid = 32256,
					name = "sunberry",
					source = "Farming"
				},
				{
					clientId = 28826,
					amount = 5,
					itemid = 32258,
					name = "moonberry",
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
					amount = 30,
					itemid = 32313,
					name = "wheat",
					source = "Farming"
				},
				{
					clientId = 28865,
					amount = 35,
					itemid = 32297,
					name = "carrot",
					source = "Farming"
				},
				{
					clientId = 28866,
					amount = 10,
					itemid = 32298,
					name = "corn",
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
					amount = 12,
					itemid = 32182,
					name = "chicken",
					source = "Husbandry"
				},
				{
					clientId = 28870,
					amount = 10,
					itemid = 32302,
					name = "onion",
					source = "Farming"
				},
				{
					clientId = 28869,
					amount = 10,
					itemid = 32301,
					name = "garlic",
					source = "Farming"
				},
				{
					clientId = 33553,
					amount = 20,
					itemid = 36985,
					name = "ground flour",
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
					amount = 50,
					itemid = 36985,
					name = "ground flour",
					source = "Cooking"
				},
				{
					clientId = 28929,
					amount = 10,
					itemid = 32361,
					name = "milk",
					source = "Husbandry"
				},
				{
					clientId = 28827,
					amount = 40,
					itemid = 32259,
					name = "strawberry",
					source = "Farming"
				},
				{
					clientId = 44381,
					amount = 10,
					itemid = 47833,
					name = "honey",
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
					amount = 30,
					itemid = 32259,
					name = "strawberry",
					source = "Farming"
				},
				{
					clientId = 28825,
					amount = 50,
					itemid = 32257,
					name = "blueberry",
					source = "Farming"
				},
				{
					clientId = 28826,
					amount = 4,
					itemid = 32258,
					name = "moonberry",
					source = "Farming"
				},
				{
					clientId = 28824,
					amount = 8,
					itemid = 32256,
					name = "sunberry",
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
					amount = 30,
					itemid = 32313,
					name = "wheat",
					source = "Farming"
				},
				{
					clientId = 28829,
					amount = 3,
					itemid = 32261,
					name = "acorn",
					source = "Farming"
				},
				{
					clientId = 28875,
					amount = 2,
					itemid = 32307,
					name = "pumpkin",
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
					amount = 10,
					itemid = 32258,
					name = "moonberry",
					source = "Farming"
				},
				{
					clientId = 28829,
					amount = 2,
					itemid = 32261,
					name = "acorn",
					source = "Farming"
				},
				{
					clientId = 28872,
					amount = 12,
					itemid = 32304,
					name = "pepper",
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
					amount = 5,
					itemid = 36983,
					name = "salt",
					source = "Mining"
				},
				{
					clientId = 28832,
					amount = 4,
					itemid = 32264,
					name = "orange",
					source = "Farming"
				},
				{
					clientId = 28870,
					amount = 15,
					itemid = 32302,
					name = "onion",
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
					amount = 10,
					itemid = 32298,
					name = "corn",
					source = "Farming"
				},
				{
					clientId = 28864,
					amount = 8,
					itemid = 32296,
					name = "cabbage",
					source = "Farming"
				},
				{
					clientId = 28823,
					amount = 5,
					itemid = 32255,
					name = "banana",
					source = "Farming"
				},
				{
					clientId = 28825,
					amount = 30,
					itemid = 32257,
					name = "blueberry",
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
					amount = 12,
					itemid = 32363,
					name = "beef",
					source = "Husbandry"
				},
				{
					clientId = 33551,
					amount = 5,
					itemid = 36983,
					name = "salt",
					source = "Mining"
				},
				{
					clientId = 28869,
					amount = 15,
					itemid = 32301,
					name = "garlic",
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
					amount = 15,
					itemid = 32296,
					name = "cabbage",
					source = "Farming"
				},
				{
					clientId = 28865,
					amount = 50,
					itemid = 32297,
					name = "carrot",
					source = "Farming"
				},
				{
					clientId = 33551,
					amount = 8,
					itemid = 36983,
					name = "salt",
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
					amount = 5,
					itemid = 32295,
					name = "brocolli",
					source = "Farming"
				},
				{
					clientId = 28875,
					amount = 5,
					itemid = 32307,
					name = "pumpkin",
					source = "Farming"
				},
				{
					clientId = 28878,
					amount = 25,
					itemid = 32310,
					name = "beans",
					source = "Farming"
				},
				{
					clientId = 28874,
					amount = 40,
					itemid = 32306,
					name = "potato",
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
					amount = 5,
					itemid = 32254,
					name = "apple",
					source = "Farming"
				},
				{
					clientId = 28824,
					amount = 5,
					itemid = 32256,
					name = "sunberry",
					source = "Farming"
				},
				{
					clientId = 28830,
					amount = 4,
					itemid = 32262,
					name = "cherry",
					source = "Farming"
				},
				{
					clientId = 33553,
					amount = 30,
					itemid = 36985,
					name = "ground flour",
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
					amount = 15,
					itemid = 32361,
					name = "milk",
					source = "Husbandry"
				},
				{
					clientId = 28928,
					amount = 30,
					itemid = 32360,
					name = "egg",
					source = "Husbandry"
				},
				{
					clientId = 33553,
					amount = 35,
					itemid = 36985,
					name = "ground flour",
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
					amount = 5,
					itemid = 32254,
					name = "apple",
					source = "Farming"
				},
				{
					clientId = 28827,
					amount = 15,
					itemid = 32259,
					name = "strawberry",
					source = "Farming"
				},
				{
					clientId = 28830,
					amount = 5,
					itemid = 32262,
					name = "cherry",
					source = "Farming"
				},
				{
					clientId = 28823,
					amount = 3,
					itemid = 32255,
					name = "banana",
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
					amount = 20,
					itemid = 32297,
					name = "carrot",
					source = "Farming"
				},
				{
					clientId = 28832,
					amount = 5,
					itemid = 32264,
					name = "orange",
					source = "Farming"
				},
				{
					clientId = 28878,
					amount = 20,
					itemid = 32310,
					name = "beans",
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
					amount = 5,
					itemid = 32364,
					name = "shank",
					source = "Husbandry"
				},
				{
					clientId = 28829,
					amount = 2,
					itemid = 32261,
					name = "acorn",
					source = "Farming"
				},
				{
					clientId = 28871,
					amount = 10,
					itemid = 32303,
					name = "pea",
					source = "Farming"
				},
				{
					clientId = 33551,
					amount = 5,
					itemid = 36983,
					name = "salt",
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
					amount = 10,
					itemid = 32363,
					name = "beef",
					source = "Husbandry"
				},
				{
					clientId = 28750,
					amount = 5,
					itemid = 32182,
					name = "chicken",
					source = "Husbandry"
				},
				{
					clientId = 28941,
					amount = 30,
					itemid = 32373,
					name = "coal",
					source = "Mining"
				},
				{
					clientId = 44381,
					amount = 6,
					itemid = 47833,
					name = "honey",
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
					amount = 10,
					itemid = 32295,
					name = "brocolli",
					source = "Farming"
				},
				{
					clientId = 28871,
					amount = 25,
					itemid = 32303,
					name = "pea",
					source = "Farming"
				},
				{
					clientId = 28864,
					amount = 15,
					itemid = 32296,
					name = "cabbage",
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
					amount = 30,
					itemid = 32360,
					name = "egg",
					source = "Husbandry"
				},
				{
					clientId = 28927,
					amount = 1,
					itemid = 32359,
					name = "cheese",
					source = "Husbandry"
				},
				{
					clientId = 28872,
					amount = 15,
					itemid = 32304,
					name = "pepper",
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
					amount = 5,
					itemid = 32307,
					name = "pumpkin",
					source = "Farming"
				},
				{
					clientId = 28929,
					amount = 10,
					itemid = 32361,
					name = "milk",
					source = "Husbandry"
				},
				{
					clientId = 33553,
					amount = 20,
					itemid = 36985,
					name = "ground flour",
					source = "Cooking"
				},
				{
					clientId = 44381,
					amount = 13,
					itemid = 47833,
					name = "honey",
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
					amount = 15,
					itemid = 32301,
					name = "garlic",
					source = "Farming"
				},
				{
					clientId = 28870,
					amount = 15,
					itemid = 32302,
					name = "onion",
					source = "Farming"
				},
				{
					clientId = 28872,
					amount = 10,
					itemid = 32304,
					name = "pepper",
					source = "Farming"
				},
				{
					clientId = 33551,
					amount = 5,
					itemid = 36983,
					name = "salt",
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
					amount = 15,
					itemid = 32313,
					name = "wheat",
					source = "Farming"
				},
				{
					clientId = 28866,
					amount = 10,
					itemid = 32298,
					name = "corn",
					source = "Farming"
				},
				{
					clientId = 28822,
					amount = 10,
					itemid = 32254,
					name = "apple",
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
					amount = 8,
					itemid = 32182,
					name = "chicken",
					source = "Husbandry"
				},
				{
					clientId = 28931,
					amount = 5,
					itemid = 32363,
					name = "beef",
					source = "Husbandry"
				},
				{
					clientId = 28932,
					amount = 5,
					itemid = 32364,
					name = "shank",
					source = "Husbandry"
				},
				{
					clientId = 28927,
					amount = 1,
					itemid = 32359,
					name = "cheese",
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
					amount = 20,
					itemid = 32263,
					name = "grape",
					source = "Farming"
				},
				{
					clientId = 28828,
					amount = 2,
					itemid = 32260,
					name = "watermelon",
					source = "Farming"
				},
				{
					clientId = 28830,
					amount = 5,
					itemid = 32262,
					name = "cherry",
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
					amount = 40,
					itemid = 32263,
					name = "grape",
					source = "Farming"
				},
				{
					clientId = 28825,
					amount = 15,
					itemid = 32257,
					name = "blueberry",
					source = "Farming"
				},
				{
					clientId = 28826,
					amount = 5,
					itemid = 32258,
					name = "moonberry",
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
					amount = 8,
					itemid = 32311,
					name = "cotton",
					source = "Farming"
				},
				{
					clientId = 28425,
					amount = 8,
					itemid = 31857,
					name = "wool",
					source = "Husbandry"
				},
				{
					clientId = 35353,
					amount = 8,
					itemid = 38785,
					name = "hide",
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
					amount = 10,
					itemid = 32364,
					name = "shank",
					source = "Husbandry"
				},
				{
					clientId = 33551,
					amount = 8,
					itemid = 36983,
					name = "salt",
					source = "Mining"
				},
				{
					clientId = 28872,
					amount = 10,
					itemid = 32304,
					name = "pepper",
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
					amount = 2,
					itemid = 32255,
					name = "banana",
					source = "Farming"
				},
				{
					clientId = 28828,
					amount = 1,
					itemid = 32260,
					name = "watermelon",
					source = "Farming"
				},
				{
					clientId = 28832,
					amount = 4,
					itemid = 32264,
					name = "orange",
					source = "Farming"
				},
				{
					clientId = 28831,
					amount = 10,
					itemid = 32263,
					name = "grape",
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
					amount = 22,
					itemid = 32409,
					name = "small log",
					source = "Woodcutting"
				},
				{
					clientId = 28946,
					amount = 130,
					itemid = 32378,
					name = "stone",
					source = "Mining"
				},
				{
					clientId = 28750,
					amount = 8,
					itemid = 32182,
					name = "chicken",
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
					amount = 10,
					itemid = 32311,
					name = "cotton",
					source = "Farming"
				},
				{
					clientId = 28932,
					amount = 8,
					itemid = 32364,
					name = "shank",
					source = "Husbandry"
				},
				{
					clientId = 28874,
					amount = 80,
					itemid = 32306,
					name = "potato",
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
					amount = 100,
					itemid = 32378,
					name = "stone",
					source = "Mining"
				},
				{
					clientId = 28977,
					amount = 22,
					itemid = 32409,
					name = "small log",
					source = "Woodcutting"
				},
				{
					clientId = 35353,
					amount = 10,
					itemid = 38785,
					name = "hide",
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
					amount = 38,
					itemid = 32409,
					name = "small log",
					source = "Woodcutting"
				},
				{
					clientId = 28941,
					amount = 40,
					itemid = 32373,
					name = "coal",
					source = "Mining"
				},
				{
					clientId = 28879,
					amount = 10,
					itemid = 32311,
					name = "cotton",
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
					amount = 10,
					itemid = 31857,
					name = "wool",
					source = "Husbandry"
				},
				{
					clientId = 28977,
					amount = 30,
					itemid = 32409,
					name = "small log",
					source = "Woodcutting"
				},
				{
					clientId = 28941,
					amount = 40,
					itemid = 32373,
					name = "coal",
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
					amount = 40,
					itemid = 32376,
					name = "copper ore",
					source = "Mining"
				},
				{
					clientId = 35353,
					amount = 10,
					itemid = 38785,
					name = "hide",
					source = "Husbandry"
				},
				{
					clientId = 28977,
					amount = 25,
					itemid = 32409,
					name = "small log",
					source = "Woodcutting"
				}
			}
		}
	}
}

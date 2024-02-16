-- chunkname: @/modules/game_tradepacks/recipes.lua

recipes = {
	[TRADEPACK_CATEGORY_QUEST] = {
		{
			itemid = 42725,
			route_multiplier = 1,
			clientId = 39273,
			name = "Farmer's Basic",
			active = true,
			id = 1,
			materials = {
				{
					itemid = 42887,
					amount = 3,
					name = "hide",
					source = "Husbandry",
					clientId = 39435
				},
				{
					itemid = 42889,
					amount = 3,
					name = "shank",
					source = "Husbandry",
					clientId = 39437
				},
				{
					itemid = 42888,
					amount = 2,
					name = "potato",
					source = "Farming",
					clientId = 39436
				}
			}
		}
	},
	[TRADEPACK_CATEGORY_DEFAULT] = {
		{
			itemid = 36986,
			route_multiplier = 1.2,
			clientId = 33554,
			minimumLevel = 55,
			name = "Crisp Produce",
			unlockCommunityPercent = 10,
			id = 1,
			materials = {
				{
					itemid = 32254,
					amount = 10,
					name = "apple",
					source = "Farming",
					clientId = 28822
				},
				{
					itemid = 32295,
					amount = 5,
					name = "brocolli",
					source = "Farming",
					clientId = 28863
				},
				{
					itemid = 32303,
					amount = 10,
					name = "pea",
					source = "Farming",
					clientId = 28871
				},
				{
					itemid = 32310,
					amount = 5,
					name = "beans",
					source = "Farming",
					clientId = 28878
				}
			}
		},
		{
			itemid = 36987,
			route_multiplier = 1.2,
			clientId = 33555,
			minimumLevel = 35,
			name = "Dairy Delivery",
			unlockCommunityPercent = 15,
			id = 2,
			materials = {
				{
					itemid = 32361,
					amount = 15,
					name = "milk",
					source = "Husbandry",
					clientId = 28929
				},
				{
					itemid = 32359,
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927
				},
				{
					itemid = 32360,
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928
				}
			}
		},
		{
			itemid = 36988,
			route_multiplier = 1.2,
			clientId = 33556,
			minimumLevel = 55,
			name = "Exotic Fruits",
			unlockCommunityPercent = 10,
			id = 3,
			materials = {
				{
					itemid = 32260,
					amount = 4,
					name = "watermelon",
					source = "Farming",
					clientId = 28828
				},
				{
					itemid = 32256,
					amount = 8,
					name = "sunberry",
					source = "Farming",
					clientId = 28824
				},
				{
					itemid = 32258,
					amount = 5,
					name = "moonberry",
					source = "Farming",
					clientId = 28826
				}
			}
		},
		{
			itemid = 45305,
			route_multiplier = 1.2,
			clientId = 41853,
			minimumLevel = 25,
			name = "Settler's Rations",
			unlockCommunityPercent = 15,
			id = 4,
			materials = {
				{
					itemid = 32313,
					amount = 30,
					name = "wheat",
					source = "Farming",
					clientId = 28881
				},
				{
					itemid = 32297,
					amount = 35,
					name = "carrot",
					source = "Farming",
					clientId = 28865
				},
				{
					itemid = 32298,
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866
				}
			}
		},
		{
			itemid = 36990,
			route_multiplier = 1.2,
			clientId = 33558,
			minimumLevel = 50,
			name = "Fried Chicken",
			unlockCommunityPercent = 10,
			id = 5,
			materials = {
				{
					itemid = 32182,
					amount = 12,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750
				},
				{
					itemid = 32302,
					amount = 10,
					name = "onion",
					source = "Farming",
					clientId = 28870
				},
				{
					itemid = 32301,
					amount = 10,
					name = "garlic",
					source = "Farming",
					clientId = 28869
				},
				{
					itemid = 36985,
					amount = 20,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553
				}
			}
		},
		{
			itemid = 36991,
			route_multiplier = 1.2,
			clientId = 33559,
			minimumLevel = 35,
			name = "Strawberry Cakes",
			unlockCommunityPercent = 15,
			id = 6,
			materials = {
				{
					itemid = 36985,
					amount = 50,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553
				},
				{
					itemid = 32361,
					amount = 10,
					name = "milk",
					source = "Husbandry",
					clientId = 28929
				},
				{
					itemid = 32259,
					amount = 40,
					name = "strawberry",
					source = "Farming",
					clientId = 28827
				},
				{
					itemid = 47833,
					amount = 10,
					name = "honey",
					source = "Husbandry",
					clientId = 44381
				}
			}
		},
		{
			itemid = 36992,
			route_multiplier = 1.2,
			clientId = 33560,
			minimumLevel = 55,
			name = "Berry Basket",
			unlockCommunityPercent = 10,
			id = 7,
			materials = {
				{
					itemid = 32259,
					amount = 30,
					name = "strawberry",
					source = "Farming",
					clientId = 28827
				},
				{
					itemid = 32257,
					amount = 50,
					name = "blueberry",
					source = "Farming",
					clientId = 28825
				},
				{
					itemid = 32258,
					amount = 4,
					name = "moonberry",
					source = "Farming",
					clientId = 28826
				},
				{
					itemid = 32256,
					amount = 8,
					name = "sunberry",
					source = "Farming",
					clientId = 28824
				}
			}
		},
		{
			itemid = 36995,
			route_multiplier = 1.2,
			clientId = 33563,
			minimumLevel = 50,
			name = "Margrove Ale Ingredients",
			unlockCommunityPercent = 10,
			id = 8,
			materials = {
				{
					itemid = 32313,
					amount = 30,
					name = "wheat",
					source = "Farming",
					clientId = 28881
				},
				{
					itemid = 32261,
					amount = 3,
					name = "acorn",
					source = "Farming",
					clientId = 28829
				},
				{
					itemid = 32307,
					amount = 2,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875
				}
			}
		},
		{
			itemid = 45303,
			route_multiplier = 1.2,
			clientId = 41851,
			minimumLevel = 60,
			name = "Noble Delicacies",
			unlockCommunityPercent = 5,
			id = 9,
			materials = {
				{
					itemid = 32258,
					amount = 10,
					name = "moonberry",
					source = "Farming",
					clientId = 28826
				},
				{
					itemid = 32261,
					amount = 2,
					name = "acorn",
					source = "Farming",
					clientId = 28829
				},
				{
					itemid = 32304,
					amount = 12,
					name = "pepper",
					source = "Farming",
					clientId = 28872
				}
			}
		},
		{
			itemid = 45304,
			route_multiplier = 1.2,
			clientId = 41852,
			minimumLevel = 35,
			name = "Sajecho's Spices",
			unlockCommunityPercent = 15,
			id = 10,
			materials = {
				{
					itemid = 36983,
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551
				},
				{
					itemid = 32264,
					amount = 4,
					name = "orange",
					source = "Farming",
					clientId = 28832
				},
				{
					itemid = 32302,
					amount = 15,
					name = "onion",
					source = "Farming",
					clientId = 28870
				}
			}
		},
		{
			itemid = 36998,
			route_multiplier = 1.2,
			clientId = 33566,
			minimumLevel = 45,
			name = "Seabreeze Rum",
			unlockCommunityPercent = 15,
			id = 11,
			materials = {
				{
					itemid = 32298,
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866
				},
				{
					itemid = 32296,
					amount = 8,
					name = "cabbage",
					source = "Farming",
					clientId = 28864
				},
				{
					itemid = 32255,
					amount = 5,
					name = "banana",
					source = "Farming",
					clientId = 28823
				},
				{
					itemid = 32257,
					amount = 30,
					name = "blueberry",
					source = "Farming",
					clientId = 28825
				}
			}
		},
		{
			itemid = 36999,
			route_multiplier = 1.2,
			clientId = 33567,
			minimumLevel = 50,
			name = "Aged Meat",
			unlockCommunityPercent = 10,
			id = 12,
			materials = {
				{
					itemid = 32363,
					amount = 12,
					name = "beef",
					source = "Husbandry",
					clientId = 28931
				},
				{
					itemid = 36983,
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551
				},
				{
					itemid = 32301,
					amount = 15,
					name = "garlic",
					source = "Farming",
					clientId = 28869
				}
			}
		},
		{
			itemid = 37000,
			route_multiplier = 1.2,
			clientId = 33568,
			minimumLevel = 35,
			name = "Pickled Vegetables",
			unlockCommunityPercent = 15,
			id = 13,
			materials = {
				{
					itemid = 32296,
					amount = 15,
					name = "cabbage",
					source = "Farming",
					clientId = 28864
				},
				{
					itemid = 32297,
					amount = 50,
					name = "carrot",
					source = "Farming",
					clientId = 28865
				},
				{
					itemid = 36983,
					amount = 8,
					name = "salt",
					source = "Mining",
					clientId = 33551
				}
			}
		},
		{
			itemid = 37001,
			route_multiplier = 1.2,
			clientId = 33569,
			minimumLevel = 55,
			name = "Vegetable Stew",
			unlockCommunityPercent = 10,
			id = 14,
			materials = {
				{
					itemid = 32295,
					amount = 5,
					name = "brocolli",
					source = "Farming",
					clientId = 28863
				},
				{
					itemid = 32307,
					amount = 5,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875
				},
				{
					itemid = 32310,
					amount = 25,
					name = "beans",
					source = "Farming",
					clientId = 28878
				},
				{
					itemid = 32306,
					amount = 40,
					name = "potato",
					source = "Farming",
					clientId = 28874
				}
			}
		},
		{
			itemid = 37002,
			route_multiplier = 1.2,
			clientId = 33570,
			minimumLevel = 60,
			name = "Pie Making Kit",
			unlockCommunityPercent = 5,
			id = 15,
			materials = {
				{
					itemid = 32254,
					amount = 5,
					name = "apple",
					source = "Farming",
					clientId = 28822
				},
				{
					itemid = 32256,
					amount = 5,
					name = "sunberry",
					source = "Farming",
					clientId = 28824
				},
				{
					itemid = 32262,
					amount = 4,
					name = "cherry",
					source = "Farming",
					clientId = 28830
				},
				{
					itemid = 36985,
					amount = 30,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553
				}
			}
		},
		{
			itemid = 37003,
			route_multiplier = 1.2,
			clientId = 33571,
			minimumLevel = 25,
			name = "Bakers Basics",
			unlockCommunityPercent = 15,
			id = 16,
			materials = {
				{
					itemid = 32361,
					amount = 15,
					name = "milk",
					source = "Husbandry",
					clientId = 28929
				},
				{
					itemid = 32360,
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928
				},
				{
					itemid = 36985,
					amount = 35,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553
				}
			}
		},
		{
			itemid = 37004,
			route_multiplier = 1.2,
			clientId = 33572,
			minimumLevel = 60,
			name = "Juicers Box",
			unlockCommunityPercent = 5,
			id = 17,
			materials = {
				{
					itemid = 32254,
					amount = 5,
					name = "apple",
					source = "Farming",
					clientId = 28822
				},
				{
					itemid = 32259,
					amount = 15,
					name = "strawberry",
					source = "Farming",
					clientId = 28827
				},
				{
					itemid = 32262,
					amount = 5,
					name = "cherry",
					source = "Farming",
					clientId = 28830
				},
				{
					itemid = 32255,
					amount = 3,
					name = "banana",
					source = "Farming",
					clientId = 28823
				}
			}
		},
		{
			itemid = 37005,
			route_multiplier = 1.2,
			clientId = 33573,
			minimumLevel = 45,
			name = "Sailor's Remedy",
			unlockCommunityPercent = 15,
			id = 18,
			materials = {
				{
					itemid = 32297,
					amount = 20,
					name = "carrot",
					source = "Farming",
					clientId = 28865
				},
				{
					itemid = 32264,
					amount = 5,
					name = "orange",
					source = "Farming",
					clientId = 28832
				},
				{
					itemid = 32310,
					amount = 20,
					name = "beans",
					source = "Farming",
					clientId = 28878
				}
			}
		},
		{
			itemid = 37006,
			route_multiplier = 1.2,
			clientId = 33574,
			minimumLevel = 50,
			name = "Rohna Smoked Ham",
			unlockCommunityPercent = 10,
			id = 19,
			materials = {
				{
					itemid = 32364,
					amount = 5,
					name = "shank",
					source = "Husbandry",
					clientId = 28932
				},
				{
					itemid = 32261,
					amount = 2,
					name = "acorn",
					source = "Farming",
					clientId = 28829
				},
				{
					itemid = 32303,
					amount = 10,
					name = "pea",
					source = "Farming",
					clientId = 28871
				},
				{
					itemid = 36983,
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551
				}
			}
		},
		{
			itemid = 37007,
			route_multiplier = 1.2,
			clientId = 33575,
			minimumLevel = 35,
			name = "Barbecue Specialty",
			unlockCommunityPercent = 15,
			id = 20,
			materials = {
				{
					itemid = 32363,
					amount = 10,
					name = "beef",
					source = "Husbandry",
					clientId = 28931
				},
				{
					itemid = 32182,
					amount = 5,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750
				},
				{
					itemid = 32373,
					amount = 30,
					name = "coal",
					source = "Mining",
					clientId = 28941
				},
				{
					itemid = 47833,
					amount = 6,
					name = "honey",
					source = "Husbandry",
					clientId = 44381
				}
			}
		},
		{
			itemid = 37008,
			route_multiplier = 1.2,
			clientId = 33576,
			minimumLevel = 55,
			name = "Ravencrest Greens",
			unlockCommunityPercent = 10,
			id = 21,
			materials = {
				{
					itemid = 32295,
					amount = 10,
					name = "brocolli",
					source = "Farming",
					clientId = 28863
				},
				{
					itemid = 32303,
					amount = 25,
					name = "pea",
					source = "Farming",
					clientId = 28871
				},
				{
					itemid = 32296,
					amount = 15,
					name = "cabbage",
					source = "Farming",
					clientId = 28864
				}
			}
		},
		{
			itemid = 37009,
			route_multiplier = 1.2,
			clientId = 33577,
			minimumLevel = 60,
			name = "Kabbar's Omelets",
			unlockCommunityPercent = 5,
			id = 22,
			materials = {
				{
					itemid = 32360,
					amount = 30,
					name = "egg",
					source = "Husbandry",
					clientId = 28928
				},
				{
					itemid = 32359,
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927
				},
				{
					itemid = 32304,
					amount = 15,
					name = "pepper",
					source = "Farming",
					clientId = 28872
				}
			}
		},
		{
			itemid = 37010,
			route_multiplier = 1.2,
			clientId = 33578,
			minimumLevel = 45,
			name = "Sombreshade's Pie",
			unlockCommunityPercent = 15,
			id = 23,
			materials = {
				{
					itemid = 32307,
					amount = 5,
					name = "pumpkin",
					source = "Farming",
					clientId = 28875
				},
				{
					itemid = 32361,
					amount = 10,
					name = "milk",
					source = "Husbandry",
					clientId = 28929
				},
				{
					itemid = 36985,
					amount = 20,
					name = "ground flour",
					source = "Cooking",
					clientId = 33553
				},
				{
					itemid = 47833,
					amount = 13,
					name = "honey",
					source = "Husbandry",
					clientId = 44381
				}
			}
		},
		{
			itemid = 37011,
			route_multiplier = 1.2,
			clientId = 33579,
			minimumLevel = 60,
			name = "General Spices",
			unlockCommunityPercent = 5,
			id = 24,
			materials = {
				{
					itemid = 32301,
					amount = 15,
					name = "garlic",
					source = "Farming",
					clientId = 28869
				},
				{
					itemid = 32302,
					amount = 15,
					name = "onion",
					source = "Farming",
					clientId = 28870
				},
				{
					itemid = 32304,
					amount = 10,
					name = "pepper",
					source = "Farming",
					clientId = 28872
				},
				{
					itemid = 36983,
					amount = 5,
					name = "salt",
					source = "Mining",
					clientId = 33551
				}
			}
		},
		{
			itemid = 37012,
			route_multiplier = 1.2,
			clientId = 33580,
			minimumLevel = 25,
			name = "Basic Rations",
			unlockCommunityPercent = 15,
			id = 25,
			materials = {
				{
					itemid = 32313,
					amount = 15,
					name = "wheat",
					source = "Farming",
					clientId = 28881
				},
				{
					itemid = 32298,
					amount = 10,
					name = "corn",
					source = "Farming",
					clientId = 28866
				},
				{
					itemid = 32254,
					amount = 10,
					name = "apple",
					source = "Farming",
					clientId = 28822
				}
			}
		},
		{
			itemid = 37013,
			route_multiplier = 1.2,
			clientId = 33581,
			minimumLevel = 35,
			name = "Butcher's Box",
			unlockCommunityPercent = 15,
			id = 26,
			materials = {
				{
					itemid = 32182,
					amount = 8,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750
				},
				{
					itemid = 32363,
					amount = 5,
					name = "beef",
					source = "Husbandry",
					clientId = 28931
				},
				{
					itemid = 32364,
					amount = 5,
					name = "shank",
					source = "Husbandry",
					clientId = 28932
				},
				{
					itemid = 32359,
					amount = 1,
					name = "cheese",
					source = "Husbandry",
					clientId = 28927
				}
			}
		},
		{
			itemid = 37014,
			route_multiplier = 1.2,
			clientId = 33582,
			minimumLevel = 60,
			name = "Fruit Basket",
			unlockCommunityPercent = 5,
			id = 27,
			materials = {
				{
					itemid = 32263,
					amount = 20,
					name = "grape",
					source = "Farming",
					clientId = 28831
				},
				{
					itemid = 32260,
					amount = 2,
					name = "watermelon",
					source = "Farming",
					clientId = 28828
				},
				{
					itemid = 32262,
					amount = 5,
					name = "cherry",
					source = "Farming",
					clientId = 28830
				}
			}
		},
		{
			itemid = 37016,
			route_multiplier = 1.2,
			clientId = 33584,
			minimumLevel = 50,
			name = "Winemakers Kit",
			unlockCommunityPercent = 10,
			id = 28,
			materials = {
				{
					itemid = 32263,
					amount = 40,
					name = "grape",
					source = "Farming",
					clientId = 28831
				},
				{
					itemid = 32257,
					amount = 15,
					name = "blueberry",
					source = "Farming",
					clientId = 28825
				},
				{
					itemid = 32258,
					amount = 5,
					name = "moonberry",
					source = "Farming",
					clientId = 28826
				}
			}
		},
		{
			itemid = 37017,
			route_multiplier = 1.2,
			clientId = 33585,
			minimumLevel = 25,
			name = "Ravencrest Finest Wears",
			unlockCommunityPercent = 15,
			id = 29,
			materials = {
				{
					itemid = 32311,
					amount = 8,
					name = "cotton",
					source = "Farming",
					clientId = 28879
				},
				{
					itemid = 31857,
					amount = 8,
					name = "wool",
					source = "Husbandry",
					clientId = 28425
				},
				{
					itemid = 38785,
					amount = 8,
					name = "hide",
					source = "Husbandry",
					clientId = 35353
				}
			}
		},
		{
			itemid = 37018,
			route_multiplier = 1.2,
			clientId = 33586,
			minimumLevel = 60,
			name = "Brined Shank",
			unlockCommunityPercent = 5,
			id = 30,
			materials = {
				{
					itemid = 32364,
					amount = 10,
					name = "shank",
					source = "Husbandry",
					clientId = 28932
				},
				{
					itemid = 36983,
					amount = 8,
					name = "salt",
					source = "Mining",
					clientId = 33551
				},
				{
					itemid = 32304,
					amount = 10,
					name = "pepper",
					source = "Farming",
					clientId = 28872
				}
			}
		},
		{
			itemid = 37019,
			route_multiplier = 1.2,
			clientId = 33587,
			minimumLevel = 45,
			name = "Sajecho Fruit Basket",
			unlockCommunityPercent = 15,
			id = 31,
			materials = {
				{
					itemid = 32255,
					amount = 2,
					name = "banana",
					source = "Farming",
					clientId = 28823
				},
				{
					itemid = 32260,
					amount = 1,
					name = "watermelon",
					source = "Farming",
					clientId = 28828
				},
				{
					itemid = 32264,
					amount = 4,
					name = "orange",
					source = "Farming",
					clientId = 28832
				},
				{
					itemid = 32263,
					amount = 10,
					name = "grape",
					source = "Farming",
					clientId = 28831
				}
			}
		},
		{
			itemid = 42940,
			route_multiplier = 1.2,
			clientId = 39488,
			name = "Campfire Roast",
			active = true,
			id = 32,
			materials = {
				{
					itemid = 32409,
					amount = 22,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977
				},
				{
					itemid = 32378,
					amount = 130,
					name = "stone",
					source = "Mining",
					clientId = 28946
				},
				{
					itemid = 32182,
					amount = 8,
					name = "chicken",
					source = "Husbandry",
					clientId = 28750
				}
			}
		},
		{
			itemid = 42942,
			route_multiplier = 1.2,
			clientId = 39490,
			name = "Slums Provisions",
			active = true,
			id = 33,
			materials = {
				{
					itemid = 32311,
					amount = 10,
					name = "cotton",
					source = "Farming",
					clientId = 28879
				},
				{
					itemid = 32364,
					amount = 8,
					name = "shank",
					source = "Husbandry",
					clientId = 28932
				},
				{
					itemid = 32306,
					amount = 80,
					name = "potato",
					source = "Farming",
					clientId = 28874
				}
			}
		},
		{
			itemid = 36993,
			route_multiplier = 1.2,
			clientId = 33561,
			name = "Building Materials",
			active = true,
			id = 34,
			materials = {
				{
					itemid = 32378,
					amount = 100,
					name = "stone",
					source = "Mining",
					clientId = 28946
				},
				{
					itemid = 32409,
					amount = 22,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977
				},
				{
					itemid = 38785,
					amount = 10,
					name = "hide",
					source = "Husbandry",
					clientId = 35353
				}
			}
		},
		{
			itemid = 36994,
			route_multiplier = 1.2,
			clientId = 33562,
			minimumLevel = 25,
			name = "Kindling Kit",
			unlockCommunityPercent = 15,
			id = 35,
			materials = {
				{
					itemid = 32409,
					amount = 38,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977
				},
				{
					itemid = 32373,
					amount = 40,
					name = "coal",
					source = "Mining",
					clientId = 28941
				},
				{
					itemid = 32311,
					amount = 10,
					name = "cotton",
					source = "Farming",
					clientId = 28879
				}
			}
		},
		{
			itemid = 37015,
			route_multiplier = 1.2,
			clientId = 33583,
			minimumLevel = 25,
			name = "Glaceforde Explorers Kit",
			unlockCommunityPercent = 15,
			id = 36,
			materials = {
				{
					itemid = 31857,
					amount = 10,
					name = "wool",
					source = "Husbandry",
					clientId = 28425
				},
				{
					itemid = 32409,
					amount = 30,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977
				},
				{
					itemid = 32373,
					amount = 40,
					name = "coal",
					source = "Mining",
					clientId = 28941
				}
			}
		},
		{
			itemid = 42941,
			route_multiplier = 1.2,
			clientId = 39489,
			name = "Crafting Basics",
			active = true,
			id = 37,
			materials = {
				{
					itemid = 32376,
					amount = 40,
					name = "copper ore",
					source = "Mining",
					clientId = 28944
				},
				{
					itemid = 38785,
					amount = 10,
					name = "hide",
					source = "Husbandry",
					clientId = 35353
				},
				{
					itemid = 32409,
					amount = 25,
					name = "small log",
					source = "Woodcutting",
					clientId = 28977
				}
			}
		}
	}
}

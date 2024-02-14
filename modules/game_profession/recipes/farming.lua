-- chunkname: @/modules/game_profession/recipes/farming.lua

recipes = recipes or {}
recipes[ProfessionFarming] = {
	{
		skillRequired = 1,
		name = "Potatoes",
		id = 25131,
		experience = 200,
		growingTime = 3600,
		items = {
			{
				name = "Potato",
				id = 28874,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 1,
		name = "Cotton Tree",
		id = 34249,
		experience = 3600,
		growingTime = 16200,
		items = {
			{
				name = "Cotton",
				id = 28879,
				count = {
					4,
					8
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 3,
		name = "Corn",
		id = 25130,
		experience = 3000,
		growingTime = 54000,
		items = {
			{
				name = "Corn",
				id = 28866,
				count = {
					6,
					9
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 5,
		name = "Wheat",
		id = 30284,
		experience = 1200,
		growingTime = 21600,
		items = {
			{
				name = "Wheat",
				id = 28881,
				count = {
					3,
					9
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 7,
		name = "Apple Tree",
		id = 34246,
		experience = 6000,
		growingTime = 27000,
		items = {
			{
				name = "Apple",
				id = 28822,
				count = {
					3,
					6
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 10,
		name = "Carrots",
		id = 25133,
		experience = 400,
		growingTime = 7200,
		items = {
			{
				name = "Carrot",
				id = 28865,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 15,
		name = "Grapes",
		id = 30255,
		experience = 1200,
		growingTime = 21600,
		items = {
			{
				name = "Grape",
				id = 28831,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 17,
		name = "Blueberries",
		id = 30246,
		experience = 1200,
		growingTime = 21600,
		items = {
			{
				name = "Blueberry",
				id = 28825,
				count = {
					9,
					15
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 20,
		name = "Cabbages",
		id = 30225,
		experience = 1200,
		growingTime = 21600,
		items = {
			{
				name = "Cabbage",
				id = 28864,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 21,
		name = "Peppers",
		id = 25129,
		experience = 5700,
		growingTime = 102600,
		items = {
			{
				name = "Pepper",
				id = 28872,
				count = {
					9,
					15
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 21,
		name = "Cherries",
		id = 34248,
		experience = 16800,
		growingTime = 75600,
		items = {
			{
				name = "Cherry",
				id = 28830,
				count = {
					6,
					12
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 22,
		name = "Orange Tree",
		id = 34250,
		experience = 12000,
		growingTime = 54000,
		items = {
			{
				name = "Orange",
				id = 28832,
				count = {
					3,
					6
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 25,
		name = "Onions",
		id = 25128,
		experience = 1800,
		growingTime = 32400,
		items = {
			{
				name = "Onion",
				id = 28870,
				count = {
					3,
					6
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 27,
		name = "Strawberries",
		id = 30261,
		experience = 1500,
		growingTime = 27000,
		items = {
			{
				name = "Strawberry",
				id = 28827,
				count = {
					6,
					12
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 30,
		name = "Beans",
		id = 30219,
		experience = 3000,
		growingTime = 54000,
		items = {
			{
				name = "Bean",
				id = 28878,
				count = {
					9,
					15
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 32,
		name = "Banana Tree",
		id = 34247,
		experience = 19200,
		growingTime = 86400,
		items = {
			{
				name = "Banana",
				id = 28823,
				count = {
					6,
					12
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 35,
		name = "Pumpkin",
		id = 30234,
		experience = 4800,
		growingTime = 86400,
		items = {
			{
				name = "Pumpkin",
				id = 28875,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 37,
		name = "Watermelon",
		id = 30267,
		experience = 6000,
		growingTime = 108000,
		items = {
			{
				name = "Watermelon",
				id = 28828,
				count = {
					2,
					4
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 40,
		name = "Peas",
		id = 30231,
		experience = 3900,
		growingTime = 70200,
		items = {
			{
				name = "Pea",
				id = 28871,
				count = {
					9,
					15
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 42,
		name = "Moonberry",
		id = 30281,
		experience = 4200,
		growingTime = 75600,
		items = {
			{
				name = "Moonberry",
				id = 28826,
				count = {
					3,
					9
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 45,
		name = "Garlic",
		id = 30228,
		experience = 3300,
		growingTime = 59400,
		items = {
			{
				name = "Garlic",
				id = 28869,
				count = {
					6,
					12
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 47,
		name = "Acorn Tree",
		id = 34245,
		experience = 38400,
		growingTime = 172800,
		items = {
			{
				name = "Acorn",
				id = 28829,
				count = {
					6,
					12
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 50,
		name = "Brocolli",
		id = 30222,
		experience = 3000,
		growingTime = 54000,
		items = {
			{
				name = "Brocolli",
				id = 28863,
				count = {
					3,
					6
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 52,
		name = "Sunberries",
		id = 30264,
		experience = 6000,
		growingTime = 108000,
		items = {
			{
				name = "Sunberry",
				id = 28824,
				count = {
					3,
					9
				}
			},
			{
				name = "Three-Leaf Clover",
				id = 34370,
				count = {
					0,
					1
				}
			}
		}
	}
}

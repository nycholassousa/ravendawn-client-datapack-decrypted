-- chunkname: @/modules/game_profession/recipes/husbandry.lua

recipes = recipes or {}
recipes[ProfessionHusbandry] = {
	{
		id = 34373,
		name = "Small Chicken Pen",
		skillRequired = 5,
		items = {
			gathering = {
				{
					name = "Egg",
					id = 28928,
					count = {
						4,
						6
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						3,
						5
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 7200,
			butchering = 18000
		}
	},
	{
		id = 34461,
		name = "Small Hare Pen",
		skillRequired = 1,
		items = {
			gathering = {
				{
					name = "Spool Of Hair",
					id = 34475,
					count = {
						4,
						6
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						3,
						5
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 7200,
			butchering = 18000
		}
	},
	{
		id = 34399,
		name = "Small Pig Pen",
		skillRequired = 1,
		items = {
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						3,
						4
					}
				},
				{
					name = "Hide",
					id = 35353,
					count = {
						2,
						4
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 28800
		}
	},
	{
		id = 35083,
		name = "Small Goat Pen",
		skillRequired = 10,
		items = {
			gathering = {
				{
					name = "Milk",
					id = 28929,
					count = {
						2,
						3
					}
				},
				{
					name = "Wool",
					id = 28425,
					count = {
						1,
						1
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						4,
						7
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 9000,
			butchering = 23400
		}
	},
	{
		id = 35085,
		name = "Small Turkey Pen",
		skillRequired = 15,
		items = {
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						3,
						5
					}
				},
				{
					name = "Feather",
					id = 35354,
					count = {
						2,
						5
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 34200
		}
	},
	{
		id = 34412,
		name = "Small Sheep Pen",
		skillRequired = 20,
		items = {
			gathering = {
				{
					name = "Wool",
					id = 28425,
					count = {
						3,
						5
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						8,
						12
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 18000,
			butchering = 43200
		}
	},
	{
		id = 37440,
		name = "Cheese Barrel",
		specialization = "Fermenting Barrels",
		skillRequired = 21,
		items = {
			gathering = {
				{
					name = "Cheese",
					id = 28927,
					count = {
						1,
						2
					}
				}
			}
		},
		time = {
			gathering = 108000
		}
	},
	{
		id = 34386,
		name = "Small Cow Pen",
		skillRequired = 25,
		items = {
			gathering = {
				{
					name = "Milk",
					id = 28929,
					count = {
						3,
						5
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Beef",
					id = 28931,
					count = {
						6,
						11
					}
				},
				{
					name = "Hide",
					id = 35353,
					count = {
						6,
						9
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 10800,
			butchering = 72000
		}
	},
	{
		id = 34377,
		name = "Medium Chicken Pen",
		skillRequired = 30,
		items = {
			gathering = {
				{
					name = "Egg",
					id = 28928,
					count = {
						9,
						14
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						7,
						12
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 7200,
			butchering = 18000
		}
	},
	{
		id = 34465,
		name = "Medium Hare Pen",
		skillRequired = 35,
		items = {
			gathering = {
				{
					name = "Spool Of Hair",
					id = 34475,
					count = {
						9,
						14
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						7,
						12
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 7200,
			butchering = 18000
		}
	},
	{
		id = 34403,
		name = "Medium Pig Pen",
		skillRequired = 40,
		items = {
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						6,
						9
					}
				},
				{
					name = "Hide",
					id = 35353,
					count = {
						6,
						9
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 28800
		}
	},
	{
		id = 35082,
		name = "Medium Goat Pen",
		skillRequired = 50,
		items = {
			gathering = {
				{
					name = "Milk",
					id = 28929,
					count = {
						4,
						6
					}
				},
				{
					name = "Wool",
					id = 28425,
					count = {
						2,
						4
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						9,
						14
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 9000,
			butchering = 23400
		}
	},
	{
		id = 35084,
		name = "Medium Turkey Pen",
		skillRequired = 55,
		items = {
			butchering = {
				{
					name = "Chicken Meat",
					id = 28750,
					count = {
						9,
						13
					}
				},
				{
					name = "Feather",
					id = 35354,
					count = {
						5,
						8
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 34200
		}
	},
	{
		id = 34416,
		name = "Medium Sheep Pen",
		skillRequired = 60,
		items = {
			gathering = {
				{
					name = "Wool",
					id = 28425,
					count = {
						8,
						11
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Shank",
					id = 28932,
					count = {
						18,
						27
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 18000,
			butchering = 43200
		}
	},
	{
		id = 34390,
		name = "Medium Cow Pen",
		skillRequired = 65,
		items = {
			gathering = {
				{
					name = "Milk",
					id = 28929,
					count = {
						8,
						11
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					name = "Beef",
					id = 28931,
					count = {
						15,
						22
					}
				},
				{
					name = "Hide",
					id = 35353,
					count = {
						14,
						21
					}
				},
				{
					name = "Fertilizer",
					id = 34369,
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			gathering = 10800,
			butchering = 72000
		}
	},
	{
		id = 44230,
		name = "Bee Hive",
		specialization = "Beekeeper",
		skillRequired = 21,
		items = {
			gathering = {
				{
					name = "Honey",
					id = 44381,
					count = {
						12,
						24
					}
				}
			}
		},
		time = {
			gathering = 162000
		}
	}
}

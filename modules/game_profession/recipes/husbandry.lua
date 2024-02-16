-- chunkname: @/modules/game_profession/recipes/husbandry.lua

recipes = recipes or {}
recipes[ProfessionHusbandry] = {
	{
		name = "Small Chicken Pen",
		id = 34373,
		skillRequired = 5,
		items = {
			gathering = {
				{
					id = 28928,
					name = "Egg",
					count = {
						4,
						6
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						3,
						5
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		name = "Small Hare Pen",
		id = 34461,
		skillRequired = 1,
		items = {
			gathering = {
				{
					id = 34475,
					name = "Spool Of Hair",
					count = {
						4,
						6
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						3,
						5
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		name = "Small Pig Pen",
		id = 34399,
		skillRequired = 1,
		items = {
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						3,
						4
					}
				},
				{
					id = 35353,
					name = "Hide",
					count = {
						2,
						4
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
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
		name = "Small Goat Pen",
		id = 35083,
		skillRequired = 10,
		items = {
			gathering = {
				{
					id = 28929,
					name = "Milk",
					count = {
						2,
						3
					}
				},
				{
					id = 28425,
					name = "Wool",
					count = {
						1,
						1
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						4,
						7
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 23400,
			gathering = 9000
		}
	},
	{
		name = "Small Turkey Pen",
		id = 35085,
		skillRequired = 15,
		items = {
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						3,
						5
					}
				},
				{
					id = 35354,
					name = "Feather",
					count = {
						2,
						5
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
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
		name = "Small Sheep Pen",
		id = 34412,
		skillRequired = 20,
		items = {
			gathering = {
				{
					id = 28425,
					name = "Wool",
					count = {
						3,
						5
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						8,
						12
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 43200,
			gathering = 18000
		}
	},
	{
		name = "Cheese Barrel",
		id = 37440,
		specialization = "Fermenting Barrels",
		skillRequired = 21,
		items = {
			gathering = {
				{
					id = 28927,
					name = "Cheese",
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
		name = "Small Cow Pen",
		id = 34386,
		skillRequired = 25,
		items = {
			gathering = {
				{
					id = 28929,
					name = "Milk",
					count = {
						3,
						5
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28931,
					name = "Beef",
					count = {
						6,
						11
					}
				},
				{
					id = 35353,
					name = "Hide",
					count = {
						6,
						9
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 72000,
			gathering = 10800
		}
	},
	{
		name = "Medium Chicken Pen",
		id = 34377,
		skillRequired = 30,
		items = {
			gathering = {
				{
					id = 28928,
					name = "Egg",
					count = {
						9,
						14
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						7,
						12
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		name = "Medium Hare Pen",
		id = 34465,
		skillRequired = 35,
		items = {
			gathering = {
				{
					id = 34475,
					name = "Spool Of Hair",
					count = {
						9,
						14
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						7,
						12
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		name = "Medium Pig Pen",
		id = 34403,
		skillRequired = 40,
		items = {
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						6,
						9
					}
				},
				{
					id = 35353,
					name = "Hide",
					count = {
						6,
						9
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
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
		name = "Medium Goat Pen",
		id = 35082,
		skillRequired = 50,
		items = {
			gathering = {
				{
					id = 28929,
					name = "Milk",
					count = {
						4,
						6
					}
				},
				{
					id = 28425,
					name = "Wool",
					count = {
						2,
						4
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						9,
						14
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 23400,
			gathering = 9000
		}
	},
	{
		name = "Medium Turkey Pen",
		id = 35084,
		skillRequired = 55,
		items = {
			butchering = {
				{
					id = 28750,
					name = "Chicken Meat",
					count = {
						9,
						13
					}
				},
				{
					id = 35354,
					name = "Feather",
					count = {
						5,
						8
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
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
		name = "Medium Sheep Pen",
		id = 34416,
		skillRequired = 60,
		items = {
			gathering = {
				{
					id = 28425,
					name = "Wool",
					count = {
						8,
						11
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28932,
					name = "Shank",
					count = {
						18,
						27
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 43200,
			gathering = 18000
		}
	},
	{
		name = "Medium Cow Pen",
		id = 34390,
		skillRequired = 65,
		items = {
			gathering = {
				{
					id = 28929,
					name = "Milk",
					count = {
						8,
						11
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			},
			butchering = {
				{
					id = 28931,
					name = "Beef",
					count = {
						15,
						22
					}
				},
				{
					id = 35353,
					name = "Hide",
					count = {
						14,
						21
					}
				},
				{
					id = 34369,
					name = "Fertilizer",
					count = {
						0,
						1
					}
				}
			}
		},
		time = {
			butchering = 72000,
			gathering = 10800
		}
	},
	{
		name = "Bee Hive",
		id = 44230,
		specialization = "Beekeeper",
		skillRequired = 21,
		items = {
			gathering = {
				{
					id = 44381,
					name = "Honey",
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

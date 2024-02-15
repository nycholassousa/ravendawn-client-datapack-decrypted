-- chunkname: @/modules/game_profession/recipes/husbandry.lua

recipes = recipes or {}
recipes[ProfessionHusbandry] = {
	{
		skillRequired = 5,
		id = 34373,
		name = "Small Chicken Pen",
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
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		skillRequired = 1,
		id = 34461,
		name = "Small Hare Pen",
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
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		skillRequired = 1,
		id = 34399,
		name = "Small Pig Pen",
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
		skillRequired = 10,
		id = 35083,
		name = "Small Goat Pen",
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
			butchering = 23400,
			gathering = 9000
		}
	},
	{
		skillRequired = 15,
		id = 35085,
		name = "Small Turkey Pen",
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
		skillRequired = 20,
		id = 34412,
		name = "Small Sheep Pen",
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
			butchering = 43200,
			gathering = 18000
		}
	},
	{
		skillRequired = 21,
		id = 37440,
		name = "Cheese Barrel",
		specialization = "Fermenting Barrels",
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
		skillRequired = 25,
		id = 34386,
		name = "Small Cow Pen",
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
			butchering = 72000,
			gathering = 10800
		}
	},
	{
		skillRequired = 30,
		id = 34377,
		name = "Medium Chicken Pen",
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
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		skillRequired = 35,
		id = 34465,
		name = "Medium Hare Pen",
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
			butchering = 18000,
			gathering = 7200
		}
	},
	{
		skillRequired = 40,
		id = 34403,
		name = "Medium Pig Pen",
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
		skillRequired = 50,
		id = 35082,
		name = "Medium Goat Pen",
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
			butchering = 23400,
			gathering = 9000
		}
	},
	{
		skillRequired = 55,
		id = 35084,
		name = "Medium Turkey Pen",
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
		skillRequired = 60,
		id = 34416,
		name = "Medium Sheep Pen",
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
			butchering = 43200,
			gathering = 18000
		}
	},
	{
		skillRequired = 65,
		id = 34390,
		name = "Medium Cow Pen",
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
			butchering = 72000,
			gathering = 10800
		}
	},
	{
		skillRequired = 21,
		id = 44230,
		name = "Bee Hive",
		specialization = "Beekeeper",
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

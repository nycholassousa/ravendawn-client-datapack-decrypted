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
		skillRequired = 1,
		id = 34461,
		name = "Small Hare Pen",
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
		skillRequired = 1,
		id = 34399,
		name = "Small Pig Pen",
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
		skillRequired = 10,
		id = 35083,
		name = "Small Goat Pen",
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
		skillRequired = 15,
		id = 35085,
		name = "Small Turkey Pen",
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
		skillRequired = 20,
		id = 34412,
		name = "Small Sheep Pen",
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
		skillRequired = 21,
		id = 37440,
		specialization = "Fermenting Barrels",
		name = "Cheese Barrel",
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
		skillRequired = 25,
		id = 34386,
		name = "Small Cow Pen",
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
		skillRequired = 30,
		id = 34377,
		name = "Medium Chicken Pen",
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
		skillRequired = 35,
		id = 34465,
		name = "Medium Hare Pen",
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
		skillRequired = 40,
		id = 34403,
		name = "Medium Pig Pen",
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
		skillRequired = 50,
		id = 35082,
		name = "Medium Goat Pen",
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
		skillRequired = 55,
		id = 35084,
		name = "Medium Turkey Pen",
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
		skillRequired = 60,
		id = 34416,
		name = "Medium Sheep Pen",
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
		skillRequired = 65,
		id = 34390,
		name = "Medium Cow Pen",
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
		skillRequired = 21,
		id = 44230,
		specialization = "Beekeeper",
		name = "Bee Hive",
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

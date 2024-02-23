-- chunkname: @/modules/game_house/config.lua

STORAGE_MODEL_TO_HOUSE_TIER = {
	[62] = 3,
	[63] = 4,
	[64] = 5,
	[61] = 2,
	[60] = 1
}
roomExperienceBonusByTier = {
	5,
	6,
	7,
	8,
	10
}
roomLaborBonusByTier = {
	20,
	40,
	80,
	150,
	300
}
sizeToIcon = {
	[0] = "/images/ui/windows/house/land_sizes/small",
	[10] = "/images/ui/windows/house/land_sizes/small",
	[15] = "/images/ui/windows/house/land_sizes/large",
	[12] = "/images/ui/windows/house/land_sizes/medium",
	[30] = "/images/ui/windows/house/land_sizes/fort",
	[22] = "/images/ui/windows/house/land_sizes/stronghold"
}
sizeToText = {
	[0] = "Community Land",
	[10] = "Small",
	[15] = "Large",
	[12] = "Medium",
	[30] = "Fort",
	[22] = "Stronghold"
}
depotModelToName = {
	[62] = "Large Chest",
	[63] = "Grand Chest",
	[64] = "Royal Chest",
	[61] = "Medium Chest",
	[60] = "Small Chest"
}
houseModelToWindowStyle = {
	[HouseModels.SmallShack] = "GameHouseSmallLandInfoWindow",
	[HouseModels.MediumShack] = "GameHouseMediumLandInfoWindow",
	[HouseModels.LargeShack] = "GameHouseLargeLandInfoWindow"
}
maxLandSize = 15
messages = {
	butchering = "Animals need to mature before they start generating resources."
}
effort = {
	communityLandTooltip = {
		base = "This resource is spent when placing an item on Community Farmland.\nOpen World activities such as killing creatures and participating in quests will restore it.",
		complement = {
			{
				text = "\nYour current maximum Effort is 1200, and this limit will increase by 1200 at level 10.",
				level = 10
			},
			{
				text = "\nYour current maximum Effort is 2400, and this limit will increase by 1200 at level 15.",
				level = 15
			},
			{
				text = "\nYour current maximum Effort is 3600, and this limit will increase by 1200 at level 25.",
				level = 25
			},
			{
				text = "\nYour current maximum Effort is 4800."
			}
		}
	},
	landTooltip = {
		base = "This resource is spent when placing an item on your Land.\nOpen World activities such as killing creatures and participating in quests will restore it.",
		complement = {
			[12] = "\nYour current maximum Effort is 24000.",
			[15] = "\nYour current maximum Effort is 36000.",
			[10] = "\nYour current maximum Effort is 16000."
		}
	}
}
passivesIndex = {
	farming = {
		"Spicy Flavors",
		"Cherry-Picking",
		professionId = ProfessionFarming
	},
	husbandry = {
		"Beekeeper",
		"Fermenting Barrels",
		professionId = ProfessionHusbandry
	}
}

function getCommunityEffortTooltip(complementOnly)
	local player = g_game.getLocalPlayer()

	if not player then
		return ""
	end

	local level = player:getLevel()
	local tooltip = effort.communityLandTooltip.base .. " "
	local complementIndex = 1

	for i = 1, #effort.communityLandTooltip.complement do
		complementIndex = i

		if effort.communityLandTooltip.complement[i].level and level < effort.communityLandTooltip.complement[i].level then
			break
		end
	end

	local complement = effort.communityLandTooltip.complement[complementIndex].text

	if complementOnly then
		return complement
	end

	return tooltip .. (complement or "")
end

function getLandEffortTooltip(landSizeIndex, complementOnly)
	local player = g_game.getLocalPlayer()

	if not player then
		return ""
	end

	local complement = effort.landTooltip.complement[landSizeIndex]

	if complementOnly then
		return complement
	end

	local tooltip = effort.landTooltip.base .. " "

	return tooltip .. (complement or "")
end

availableRoomModelsByHouseSize = {
	[10] = {
		bedroom = {
			1,
			6
		},
		cooking = {
			2,
			7
		},
		blacksmithing = {
			3,
			8
		},
		carpentry = {
			4,
			9
		},
		weaving = {
			5,
			10
		},
		storage = {
			60,
			61,
			62,
			63,
			64
		}
	},
	[12] = {
		bedroom = {
			11,
			16,
			21,
			26
		},
		cooking = {
			12,
			17,
			22,
			27
		},
		blacksmithing = {
			13,
			18,
			23,
			28
		},
		carpentry = {
			14,
			19,
			24,
			29
		},
		weaving = {
			15,
			20,
			25,
			30
		},
		storage = {
			60,
			61,
			62,
			63,
			64
		}
	},
	[15] = {
		bedroom = {
			31,
			36,
			41,
			46,
			51
		},
		cooking = {
			32,
			37,
			42,
			47,
			52
		},
		blacksmithing = {
			33,
			38,
			43,
			48,
			53
		},
		carpentry = {
			34,
			39,
			44,
			49,
			54
		},
		weaving = {
			35,
			40,
			45,
			50,
			55
		},
		storage = {
			60,
			61,
			62,
			63,
			64
		}
	},
	[22] = {
		bedroom = {
			65
		},
		cooking = {
			66
		},
		blacksmithing = {
			67
		},
		carpentry = {
			68
		},
		weaving = {
			69
		},
		storage = {
			60,
			61,
			62,
			63,
			64
		}
	},
	[30] = {
		bedroom = {
			70
		},
		cooking = {
			71
		},
		blacksmithing = {
			72
		},
		carpentry = {
			73
		},
		weaving = {
			74
		},
		storage = {
			60,
			61,
			62,
			63,
			64
		}
	}
}
productionTiles = {
	[10] = 1,
	[15] = 15,
	[12] = 4,
	[30] = 220,
	[22] = 60
}
communityLandFarmPriceMultiplier = 1.05
houseData = {
	windows = {
		{
			window_id = "land",
			window_data = {
				{
					floors = 1,
					size = 10,
					description = "Some description here",
					depot = 60,
					clientId = 37014,
					tier = 1,
					name = "Small Shack",
					price = 10000,
					itemId = 40466,
					house_upgrade = 2,
					house_rooms = 1,
					house_model = 1
				},
				{
					size = 12,
					description = "Some description here",
					depot = 60,
					clientId = 37015,
					tier = 1,
					name = "Medium Shack",
					price = 500000,
					itemId = 40467,
					house_upgrade = 5,
					house_rooms = 1,
					house_model = 4
				},
				{
					size = 15,
					description = "Some description here",
					depot = 60,
					clientId = 37016,
					tier = 1,
					name = "Large Shack",
					price = 5000000,
					itemId = 40468,
					house_upgrade = 9,
					house_rooms = 1,
					house_model = 8
				},
				{
					floors = 1,
					description = "Some description here",
					depot = 61,
					clientId = 37014,
					size = 10,
					tier = 2,
					name = "Small Wooden Cabin",
					price = 0,
					house_upgrade = 3,
					house_rooms = 1,
					house_model = 2,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 50,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 20,
							itemId = 32176,
							name = "rough plank"
						},
						{
							clientId = 28743,
							amount = 10,
							itemId = 32175,
							name = "refined plank"
						},
						{
							clientId = 28734,
							amount = 10,
							itemId = 32166,
							name = "nail"
						}
					}
				},
				{
					size = 12,
					description = "Some description here",
					depot = 61,
					clientId = 37015,
					tier = 2,
					name = "Medium Wooden Cabin",
					price = 0,
					house_upgrade = 6,
					house_rooms = 1,
					house_model = 5,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 100,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28743,
							amount = 20,
							itemId = 32175,
							name = "refined plank"
						},
						{
							clientId = 41847,
							amount = 5,
							itemId = 45299,
							name = "Dense Plank"
						},
						{
							clientId = 28734,
							amount = 10,
							itemId = 32166,
							name = "nail"
						}
					}
				},
				{
					size = 15,
					description = "Some description here",
					depot = 61,
					clientId = 37016,
					tier = 2,
					name = "Large Wooden Cabin",
					price = 0,
					house_upgrade = 10,
					house_rooms = 1,
					house_model = 9,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 150,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28745,
							amount = 30,
							itemId = 32177,
							name = "treated plank"
						},
						{
							clientId = 41848,
							amount = 10,
							itemId = 45300,
							name = "Heavy Plank"
						},
						{
							clientId = 28734,
							amount = 50,
							itemId = 32166,
							name = "nail"
						}
					}
				},
				{
					floors = 2,
					description = "Some description here",
					depot = 62,
					clientId = 37014,
					size = 10,
					tier = 3,
					name = "Small Wooden House",
					price = 0,
					house_rooms = 2,
					house_model = 3,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 100,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28745,
							amount = 20,
							itemId = 32177,
							name = "treated plank"
						},
						{
							clientId = 41850,
							amount = 20,
							itemId = 45302,
							name = "Stone Block"
						},
						{
							clientId = 28734,
							amount = 30,
							itemId = 32166,
							name = "nail"
						},
						{
							clientId = 41847,
							amount = 10,
							itemId = 45299,
							name = "Dense Plank"
						}
					}
				},
				{
					size = 12,
					description = "Some description here",
					depot = 62,
					clientId = 37015,
					tier = 3,
					name = "Medium Wooden House",
					price = 0,
					house_upgrade = 7,
					house_rooms = 2,
					house_model = 6,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 200,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28745,
							amount = 50,
							itemId = 32177,
							name = "treated plank"
						},
						{
							clientId = 41850,
							amount = 30,
							itemId = 45302,
							name = "Stone Block"
						},
						{
							clientId = 40282,
							amount = 20,
							itemId = 43734,
							name = "Bolt"
						},
						{
							clientId = 41847,
							amount = 10,
							itemId = 45299,
							name = "Dense Plank"
						}
					}
				},
				{
					size = 15,
					description = "Some description here",
					depot = 62,
					clientId = 37016,
					tier = 3,
					name = "Large Wooden House",
					price = 0,
					house_upgrade = 11,
					house_rooms = 2,
					house_model = 10,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 300,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 45506,
							amount = 50,
							itemId = 48958,
							name = "Sturdy Plank"
						},
						{
							clientId = 41846,
							amount = 50,
							itemId = 45298,
							name = "Dense Block"
						},
						{
							clientId = 40282,
							amount = 100,
							itemId = 43734,
							name = "Bolt"
						},
						{
							clientId = 41848,
							amount = 10,
							itemId = 45300,
							name = "Heavy Plank"
						}
					}
				},
				{
					size = 12,
					description = "Some description here",
					depot = 63,
					clientId = 37015,
					tier = 4,
					name = "Medium Stone House",
					price = 0,
					house_rooms = 2,
					house_model = 7,
					bonuses = {
						{
							text = "Chance of plenty harvest: 40%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 350,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 41850,
							amount = 300,
							itemId = 45302,
							name = "Stone Block"
						},
						{
							clientId = 45506,
							amount = 50,
							itemId = 48958,
							name = "Sturdy Plank"
						},
						{
							clientId = 40282,
							amount = 50,
							itemId = 43734,
							name = "Bolt"
						},
						{
							clientId = 41848,
							amount = 10,
							itemId = 45300,
							name = "Heavy Plank"
						}
					}
				},
				{
					size = 15,
					description = "Some description here",
					depot = 63,
					clientId = 37016,
					tier = 4,
					name = "Large Stone House",
					price = 0,
					house_upgrade = 12,
					house_rooms = 2,
					house_model = 11,
					bonuses = {
						{
							text = "Chance of plenty harvest: 40%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 500,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 41847,
							amount = 100,
							itemId = 45299,
							name = "Dense Plank"
						},
						{
							clientId = 41846,
							amount = 250,
							itemId = 45298,
							name = "Dense Block"
						},
						{
							clientId = 40282,
							amount = 250,
							itemId = 43734,
							name = "Bolt"
						},
						{
							clientId = 41848,
							amount = 25,
							itemId = 45300,
							name = "Heavy Plank"
						}
					}
				},
				{
					size = 15,
					description = "Some description here",
					depot = 64,
					clientId = 37016,
					tier = 5,
					name = "Large Stone Mansion",
					price = 0,
					house_rooms = 3,
					house_model = 12,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							clientId = 45501,
							amount = 750,
							itemId = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 41846,
							amount = 250,
							itemId = 45298,
							name = "Dense Block"
						},
						{
							clientId = 41850,
							amount = 500,
							itemId = 45302,
							name = "Stone Block"
						},
						{
							clientId = 41848,
							amount = 100,
							itemId = 45300,
							name = "Heavy Plank"
						},
						{
							clientId = 41849,
							amount = 10,
							itemId = 45301,
							name = "Royal Ornaments"
						}
					}
				},
				{
					description = "Shack Stronghold",
					size = 22,
					clientId = 38522,
					tier = 1,
					name = "Shack Stronghold",
					price = 200000,
					itemId = 41974,
					house_upgrade = 14,
					house_rooms = 3,
					house_model = 13,
					materials = {}
				},
				{
					description = "Wood Stronghold",
					size = 22,
					clientId = 38522,
					tier = 2,
					name = "Wood Stronghold",
					price = 200000,
					itemId = 41974,
					house_upgrade = 15,
					house_rooms = 4,
					house_model = 14,
					materials = {}
				},
				{
					description = "Stone Stronghold",
					size = 22,
					clientId = 38522,
					tier = 3,
					name = "Stone Stronghold",
					price = 200000,
					itemId = 41974,
					house_rooms = 4,
					house_model = 15,
					materials = {}
				},
				{
					description = "Stone Fort",
					size = 30,
					clientId = 38521,
					tier = 1,
					name = "Stone Fort",
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 16,
					materials = {}
				},
				{
					description = "Wooden Fort",
					size = 30,
					clientId = 38521,
					tier = 1,
					name = "Wooden Fort",
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 17,
					materials = {}
				},
				{
					description = "Sandstone Fort",
					size = 30,
					clientId = 38521,
					tier = 1,
					name = "Sandstone Fort",
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 18,
					materials = {}
				},
				{
					description = "Darkwood Fort",
					size = 30,
					clientId = 38521,
					tier = 1,
					name = "Darkwood Fort",
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 19,
					materials = {}
				}
			}
		},
		{
			window_id = "farming",
			window_data = {
				{
					model = 25,
					name = "Potato",
					clientId = 25131,
					stackingType = 2,
					price = 60,
					itemId = 31847,
					effort = 2,
					gathering = {
						timeToMature = "1 hour",
						rewards = {
							{
								name = "experience",
								amount = 200
							},
							{
								clientId = 28874,
								name = "potato",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 1
					}
				},
				{
					model = 26,
					name = "Carrot",
					clientId = 25133,
					stackingType = 2,
					price = 140,
					itemId = 31837,
					effort = 5,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 400
							},
							{
								clientId = 28865,
								name = "carrot",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 10
					}
				},
				{
					model = 27,
					name = "Wheat",
					clientId = 30284,
					stackingType = 2,
					price = 360,
					itemId = 31851,
					effort = 15,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								clientId = 28881,
								name = "wheat",
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 5
					}
				},
				{
					model = 28,
					name = "Corn",
					clientId = 25130,
					stackingType = 2,
					price = 940,
					itemId = 31839,
					effort = 37,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								clientId = 28866,
								name = "corn",
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 3
					}
				},
				{
					model = 29,
					name = "Cabbage",
					clientId = 30225,
					stackingType = 2,
					price = 360,
					itemId = 31864,
					effort = 15,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								clientId = 28864,
								name = "cabbage",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 20
					}
				},
				{
					model = 30,
					name = "Onion",
					clientId = 25128,
					stackingType = 2,
					price = 560,
					itemId = 31862,
					effort = 22,
					gathering = {
						timeToMature = "9 hours",
						rewards = {
							{
								name = "experience",
								amount = 1800
							},
							{
								clientId = 28870,
								name = "onion",
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 25
					}
				},
				{
					model = 31,
					name = "Beans",
					clientId = 30219,
					stackingType = 2,
					price = 940,
					itemId = 31863,
					effort = 37,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								clientId = 28878,
								name = "bean",
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 30
					}
				},
				{
					model = 32,
					name = "Pumpkin",
					clientId = 30234,
					stackingType = 2,
					price = 1500,
					itemId = 31848,
					effort = 60,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 4800
							},
							{
								clientId = 28875,
								name = "pumpkin",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 35
					}
				},
				{
					model = 33,
					name = "Pea",
					clientId = 30231,
					stackingType = 2,
					price = 1200,
					itemId = 31845,
					effort = 48,
					gathering = {
						timeToMature = "19.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3900
							},
							{
								clientId = 28871,
								name = "pea",
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 40
					}
				},
				{
					model = 34,
					name = "Garlic",
					clientId = 30228,
					stackingType = 2,
					price = 1000,
					itemId = 31841,
					effort = 41,
					gathering = {
						timeToMature = "16.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3300
							},
							{
								clientId = 28869,
								name = "garlic",
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 45
					}
				},
				{
					model = 35,
					name = "Brocolli",
					clientId = 30222,
					stackingType = 2,
					price = 940,
					itemId = 31836,
					effort = 37,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								clientId = 28863,
								name = "brocolli",
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 50
					}
				},
				{
					model = 36,
					clientId = 25129,
					stackingType = 2,
					name = "Pepper",
					price = 1800,
					itemId = 31846,
					effort = 71,
					gathering = {
						timeToMature = "28.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 5700
							},
							{
								clientId = 28872,
								name = "pepper",
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					passiveRequired = {
						profession = 2,
						index = 1,
						type = 5
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 21
					}
				},
				{
					model = 37,
					name = "Grape",
					clientId = 30255,
					stackingType = 2,
					price = 360,
					itemId = 31842,
					effort = 15,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								clientId = 28831,
								name = "grape",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 15
					}
				},
				{
					model = 38,
					name = "Apple",
					clientId = 34246,
					stackingType = 3,
					price = 3700,
					itemId = 31833,
					effort = 150,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								clientId = 28822,
								name = "apple",
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 7
					}
				},
				{
					model = 39,
					name = "Cotton",
					clientId = 34249,
					stackingType = 3,
					price = 2200,
					itemId = 31840,
					effort = 90,
					gathering = {
						timeToMature = "4.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3600
							},
							{
								clientId = 28879,
								name = "cotton",
								amount = {
									[1] = 4,
									[2] = 8
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 1
					}
				},
				{
					model = 40,
					name = "Blueberry",
					clientId = 30246,
					stackingType = 2,
					price = 360,
					itemId = 31835,
					effort = 15,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								clientId = 28825,
								name = "blueberry",
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 17
					}
				},
				{
					model = 41,
					name = "Orange",
					clientId = 34250,
					stackingType = 3,
					price = 7500,
					itemId = 31844,
					effort = 300,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 12000
							},
							{
								clientId = 28832,
								name = "orange",
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 22
					}
				},
				{
					model = 42,
					name = "Strawberry",
					clientId = 30261,
					stackingType = 2,
					price = 480,
					itemId = 31849,
					effort = 18,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 1500
							},
							{
								clientId = 28827,
								name = "strawberry",
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 27
					}
				},
				{
					model = 43,
					name = "Banana",
					clientId = 34247,
					stackingType = 3,
					price = 12000,
					itemId = 31834,
					effort = 480,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 19200
							},
							{
								clientId = 28823,
								name = "banana",
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 32
					}
				},
				{
					model = 44,
					name = "Watermelon",
					clientId = 30267,
					stackingType = 2,
					price = 1800,
					itemId = 31850,
					effort = 75,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								clientId = 28828,
								name = "watermelon",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 37
					}
				},
				{
					model = 45,
					name = "Moonberry",
					clientId = 30281,
					stackingType = 2,
					price = 1320,
					itemId = 31843,
					effort = 52,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								name = "experience",
								amount = 4200
							},
							{
								clientId = 28826,
								name = "moonberry",
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 42
					}
				},
				{
					model = 46,
					name = "Acorn",
					clientId = 34245,
					stackingType = 3,
					price = 24000,
					itemId = 31832,
					effort = 960,
					gathering = {
						timeToMature = "48 hours",
						rewards = {
							{
								name = "experience",
								amount = 38400
							},
							{
								clientId = 28829,
								name = "acorn",
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 47
					}
				},
				{
					model = 47,
					name = "Sunberry",
					clientId = 30264,
					stackingType = 2,
					price = 1800,
					itemId = 31865,
					effort = 75,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								clientId = 28824,
								name = "sunberry",
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 52
					}
				},
				{
					model = 48,
					clientId = 34248,
					stackingType = 3,
					name = "Cherry",
					price = 10500,
					itemId = 31838,
					effort = 420,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								name = "experience",
								amount = 16800
							},
							{
								clientId = 28830,
								name = "cherry",
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								clientId = 34370,
								name = "Three-Leaf Clover",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					passiveRequired = {
						profession = 2,
						index = 2,
						type = 5
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 21
					}
				}
			}
		},
		{
			window_id = "husbandry",
			window_data = {
				{
					model = 1,
					clientId = 34361,
					stackingType = 1,
					name = "Small Chicken Pen",
					price = 1000,
					effort = 100,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4000
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 1600
							},
							{
								clientId = 28928,
								name = "egg",
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 5
					}
				},
				{
					model = 9,
					clientId = 34461,
					stackingType = 1,
					name = "Small Hare Pen",
					price = 1000,
					effort = 100,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4000
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 1600
							},
							{
								clientId = 34475,
								name = "spool of hair",
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 1
					}
				},
				{
					name = "Small Pig Pen",
					model = 3,
					clientId = 34365,
					stackingType = 1,
					price = 1000,
					effort = 160,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 6400
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 3,
									[2] = 4
								}
							},
							{
								clientId = 35353,
								name = "Hide",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 1
					}
				},
				{
					model = 11,
					clientId = 35083,
					stackingType = 1,
					name = "Small Goat Pen",
					price = 1800,
					effort = 130,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 5200
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 4,
									[2] = 7
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 2000
							},
							{
								clientId = 28929,
								name = "milk",
								amount = {
									[1] = 2,
									[2] = 3
								}
							},
							{
								clientId = 28425,
								name = "wool",
								amount = {
									[1] = 1,
									[2] = 1
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 10
					}
				},
				{
					name = "Small Turkey Pen",
					model = 13,
					clientId = 35085,
					stackingType = 1,
					price = 1300,
					effort = 190,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 7600
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								clientId = 35354,
								name = "Feather",
								amount = {
									[1] = 2,
									[2] = 5
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 15
					}
				},
				{
					model = 5,
					clientId = 34363,
					stackingType = 1,
					name = "Small Sheep Pen",
					price = 2600,
					effort = 240,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 9600
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 8,
									[2] = 12
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4000
							},
							{
								clientId = 28425,
								name = "wool",
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 20
					}
				},
				{
					model = 7,
					clientId = 34367,
					stackingType = 1,
					name = "Small Cow Pen",
					price = 2600,
					effort = 400,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								name = "experience",
								amount = 16000
							},
							{
								clientId = 28931,
								name = "beef",
								amount = {
									[1] = 6,
									[2] = 11
								}
							},
							{
								clientId = 35353,
								name = "Hide",
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "3 hours",
						rewards = {
							{
								name = "experience",
								amount = 2400
							},
							{
								clientId = 28929,
								name = "milk",
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 25
					}
				},
				{
					model = 2,
					clientId = 34362,
					stackingType = 1,
					name = "Medium Chicken Pen",
					price = 2600,
					effort = 224,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 7,
									[2] = 12
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 3600
							},
							{
								clientId = 28928,
								name = "egg",
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 30
					}
				},
				{
					model = 10,
					clientId = 34465,
					stackingType = 1,
					name = "Medium Hare Pen",
					price = 2600,
					effort = 224,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 7,
									[2] = 12
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 3600
							},
							{
								clientId = 34475,
								name = "spool of hair",
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 35
					}
				},
				{
					name = "Medium Pig Pen",
					model = 4,
					clientId = 34366,
					stackingType = 1,
					price = 3000,
					effort = 360,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 14400
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								clientId = 35353,
								name = "Hide",
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 40
					}
				},
				{
					model = 12,
					clientId = 35082,
					stackingType = 1,
					name = "Medium Goat Pen",
					price = 3800,
					effort = 292,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 11700
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "2.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4500
							},
							{
								clientId = 28929,
								name = "milk",
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								clientId = 28425,
								name = "wool",
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 50
					}
				},
				{
					name = "Medium Turkey Pen",
					model = 14,
					clientId = 35084,
					stackingType = 1,
					price = 3500,
					effort = 428,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 17100
							},
							{
								clientId = 28750,
								name = "chicken",
								amount = {
									[1] = 9,
									[2] = 13
								}
							},
							{
								clientId = 35354,
								name = "Feather",
								amount = {
									[1] = 5,
									[2] = 8
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 55
					}
				},
				{
					model = 6,
					clientId = 34364,
					stackingType = 1,
					name = "Medium Sheep Pen",
					price = 5800,
					effort = 540,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 21600
							},
							{
								clientId = 28932,
								name = "shank",
								amount = {
									[1] = 18,
									[2] = 27
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								clientId = 28425,
								name = "wool",
								amount = {
									[1] = 8,
									[2] = 11
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 60
					}
				},
				{
					model = 8,
					clientId = 34368,
					stackingType = 1,
					name = "Medium Cow Pen",
					price = 5800,
					effort = 900,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								name = "experience",
								amount = 36000
							},
							{
								clientId = 28931,
								name = "beef",
								amount = {
									[1] = 15,
									[2] = 22
								}
							},
							{
								clientId = 35353,
								name = "Hide",
								amount = {
									[1] = 14,
									[2] = 21
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					gathering = {
						timeToMature = "3 hours",
						rewards = {
							{
								name = "experience",
								amount = 5400
							},
							{
								clientId = 28929,
								name = "milk",
								amount = {
									[1] = 8,
									[2] = 11
								}
							},
							{
								clientId = 34369,
								name = "Fertilizer",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						y = 3,
						x = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 65
					}
				},
				{
					model = 15,
					clientId = 37440,
					stackingType = 6,
					name = "Cheese Barrel",
					price = 2300,
					effort = 150,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								clientId = 28927,
								name = "cheese",
								amount = {
									[1] = 1,
									[2] = 2
								}
							}
						}
					},
					itemsRequired = {
						{
							clientId = 28929,
							amount = 1,
							id = 32361,
							name = "milk"
						}
					},
					materials = {},
					passiveRequired = {
						profession = 6,
						index = 2,
						type = 5
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 21
					}
				},
				{
					model = 16,
					clientId = 44230,
					stackingType = 7,
					name = "Bee Hive",
					price = 3500,
					effort = 224,
					gathering = {
						timeToMature = "45 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								clientId = 44381,
								name = "Honey",
								amount = {
									[1] = 12,
									[2] = 24
								}
							}
						}
					},
					materials = {},
					passiveRequired = {
						profession = 6,
						index = 1,
						type = 5
					},
					size = {
						y = 1,
						x = 1
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 21
					}
				}
			}
		},
		{
			window_id = "woodcutting",
			window_data = {
				{
					model = 49,
					name = "Juniper",
					clientId = 34228,
					stackingType = 3,
					price = 500,
					itemId = 37658,
					effort = 20,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 1600
							},
							{
								clientId = 28977,
								name = "Small Log",
								amount = {
									[1] = 4,
									[2] = 8
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 1
					}
				},
				{
					model = 50,
					name = "Fir",
					clientId = 34237,
					stackingType = 3,
					price = 2000,
					itemId = 37667,
					effort = 80,
					gathering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 6400
							},
							{
								clientId = 28977,
								name = "Small Log",
								amount = {
									[1] = 20,
									[2] = 26
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 5
					}
				},
				{
					model = 51,
					name = "Palm",
					clientId = 34234,
					stackingType = 3,
					price = 1500,
					itemId = 37664,
					effort = 60,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 4800
							},
							{
								clientId = 45504,
								name = "Heavy Log",
								amount = {
									[1] = 14,
									[2] = 19
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 10
					}
				},
				{
					model = 52,
					name = "Oak",
					clientId = 34231,
					stackingType = 3,
					price = 6000,
					itemId = 37661,
					effort = 240,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 19000
							},
							{
								clientId = 45504,
								name = "Heavy Log",
								amount = {
									[1] = 50,
									[2] = 80
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 20
					}
				},
				{
					model = 53,
					name = "Wildleaf",
					clientId = 34225,
					stackingType = 3,
					price = 4000,
					itemId = 37655,
					effort = 160,
					gathering = {
						timeToMature = "16 hours",
						rewards = {
							{
								name = "experience",
								amount = 13000
							},
							{
								clientId = 45505,
								name = "Sturdy Log",
								amount = {
									[1] = 28,
									[2] = 37
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 35
					}
				},
				{
					model = 54,
					name = "Willow",
					clientId = 34244,
					stackingType = 3,
					price = 3000,
					itemId = 37674,
					effort = 120,
					gathering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 9600
							},
							{
								clientId = 45502,
								name = "Fine Log",
								amount = {
									[1] = 14,
									[2] = 19
								}
							},
							{
								clientId = 34371,
								name = "Dense Log",
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						y = 2,
						x = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 50
					}
				}
			}
		},
		{
			window_id = "breeding",
			window_data = {
				{
					name = "Moa Stable",
					model = 55,
					stackingHorizontalyOnly = true,
					clientId = 38159,
					stackingType = 4,
					price = 300,
					itemId = 0,
					size = {
						y = 1,
						x = 2
					},
					skillRequired = {
						[1] = "breeding",
						[2] = 1
					}
				}
			}
		},
		{
			window_id = "rooms",
			window_data = {
				{
					name = "Small Bedroom",
					category = "bedroom",
					model = 1,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 1,
					price = 5000,
					upgrade = 6,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 35432,
							amount = 2,
							itemid = 38864,
							name = "Coarse Leather"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 2,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 1,
					price = 5000,
					upgrade = 7,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28726,
							amount = 8,
							itemid = 32158,
							name = "copper ingot"
						},
						{
							clientId = 28946,
							amount = 15,
							itemid = 32378,
							name = "stone"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 3,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 1,
					price = 5000,
					upgrade = 8,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 6,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 4,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 1,
					price = 5000,
					upgrade = 9,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 5,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 2,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 5,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 1,
					price = 5000,
					upgrade = 10,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28971,
							amount = 2,
							itemid = 32403,
							name = "coarse thread"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 6,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 2,
					price = 10000,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37267,
							amount = 1,
							itemid = 40719,
							name = "Simple Bed"
						},
						{
							clientId = 42780,
							amount = 1,
							itemid = 46232,
							name = "Cheap Rug"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 7,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 2,
					price = 10000,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37281,
							amount = 1,
							itemid = 40733,
							name = "Stove"
						},
						{
							clientId = 42777,
							amount = 1,
							itemid = 46229,
							name = "Weak Table"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 8,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 2,
					price = 10000,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 42784,
							amount = 1,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 42778,
							amount = 2,
							itemid = 46230,
							name = "Copper Anvil"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 9,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 2,
					price = 10000,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37290,
							amount = 1,
							itemid = 40742,
							name = "Work Bench"
						},
						{
							clientId = 42784,
							amount = 2,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 10,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 2,
					price = 10000,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37226,
							amount = 1,
							itemid = 40678,
							name = "Cloth Roll"
						},
						{
							clientId = 37288,
							amount = 1,
							itemid = 40740,
							name = "Thread Spool"
						},
						{
							clientId = 42781,
							amount = 1,
							itemid = 46233,
							name = "Frail Loom"
						}
					},
					size = {
						y = 3,
						x = 3
					}
				},
				{
					name = "Small Bedroom",
					category = "bedroom",
					model = 11,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 1,
					price = 5000,
					upgrade = 16,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 35432,
							amount = 2,
							itemid = 38864,
							name = "Coarse Leather"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 12,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 1,
					price = 5000,
					upgrade = 17,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28726,
							amount = 8,
							itemid = 32158,
							name = "copper ingot"
						},
						{
							clientId = 28946,
							amount = 15,
							itemid = 32378,
							name = "stone"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 13,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 1,
					price = 5000,
					upgrade = 18,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 6,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 14,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 1,
					price = 5000,
					upgrade = 19,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 5,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 2,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 15,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 1,
					price = 5000,
					upgrade = 20,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28971,
							amount = 2,
							itemid = 32403,
							name = "coarse thread"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 16,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 2,
					price = 10000,
					upgrade = 21,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37267,
							amount = 1,
							itemid = 40719,
							name = "Simple Bed"
						},
						{
							clientId = 42780,
							amount = 1,
							itemid = 46232,
							name = "Cheap Rug"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 17,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 2,
					price = 10000,
					upgrade = 22,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37281,
							amount = 1,
							itemid = 40733,
							name = "Stove"
						},
						{
							clientId = 42777,
							amount = 1,
							itemid = 46229,
							name = "Weak Table"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 18,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 2,
					price = 10000,
					upgrade = 23,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 42784,
							amount = 1,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 42778,
							amount = 2,
							itemid = 46230,
							name = "Copper Anvil"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 19,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 2,
					price = 10000,
					upgrade = 24,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37290,
							amount = 1,
							itemid = 40742,
							name = "Work Bench"
						},
						{
							clientId = 42784,
							amount = 2,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 20,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 2,
					price = 10000,
					upgrade = 25,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37226,
							amount = 1,
							itemid = 40678,
							name = "Cloth Roll"
						},
						{
							clientId = 37288,
							amount = 1,
							itemid = 40740,
							name = "Thread Spool"
						},
						{
							clientId = 42781,
							amount = 1,
							itemid = 46233,
							name = "Frail Loom"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Large Bedroom",
					category = "bedroom",
					model = 21,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 3,
					price = 50000,
					upgrade = 26,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37228,
							amount = 1,
							itemid = 40680,
							name = "Comfortable Bed"
						},
						{
							clientId = 37225,
							amount = 1,
							itemid = 40677,
							name = "Carpet"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Large Kitchen",
					category = "cooking",
					model = 22,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 3,
					price = 50000,
					upgrade = 27,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37281,
							amount = 1,
							itemid = 40733,
							name = "Stove"
						},
						{
							clientId = 37279,
							amount = 1,
							itemid = 40731,
							name = "Square Table"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Large Armory",
					category = "blacksmithing",
					model = 23,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 3,
					price = 50000,
					upgrade = 28,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37234,
							amount = 1,
							itemid = 40686,
							name = "Forging Tools"
						},
						{
							clientId = 37217,
							amount = 1,
							itemid = 40669,
							name = "Anvil"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37235,
							amount = 1,
							itemid = 40687,
							name = "Furnace"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Large Workshop",
					category = "carpentry",
					model = 24,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 3,
					price = 50000,
					upgrade = 29,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37287,
							amount = 1,
							itemid = 40739,
							name = "Superior Work Bench"
						},
						{
							clientId = 37289,
							amount = 1,
							itemid = 40741,
							name = "Woodwork Tools"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37227,
							amount = 1,
							itemid = 40679,
							name = "Chair"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Large Weaving",
					category = "weaving",
					model = 25,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 3,
					price = 50000,
					upgrade = 30,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37262,
							amount = 1,
							itemid = 40714,
							name = "Refined Cloth Roll"
						},
						{
							clientId = 37288,
							amount = 1,
							itemid = 40740,
							name = "Thread Spool"
						},
						{
							clientId = 42783,
							amount = 1,
							itemid = 46235,
							name = "Simple Loom"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Grand Bedroom",
					category = "bedroom",
					model = 26,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 4,
					price = 100000,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37245,
							amount = 1,
							itemid = 40697,
							name = "Luxury Bed"
						},
						{
							clientId = 37246,
							amount = 1,
							itemid = 40698,
							name = "Luxury Carpet"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						},
						{
							clientId = 37231,
							amount = 1,
							itemid = 40683,
							name = "Fireplace"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Grand Kitchen",
					category = "cooking",
					model = 27,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 4,
					price = 100000,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37221,
							amount = 1,
							itemid = 40673,
							name = "Artisan Stove"
						},
						{
							clientId = 37283,
							amount = 1,
							itemid = 40735,
							name = "Sturdy Square Table"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Grand Armory",
					category = "blacksmithing",
					model = 28,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 4,
					price = 100000,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37285,
							amount = 1,
							itemid = 40737,
							name = "Superior Forging Tools"
						},
						{
							clientId = 37217,
							amount = 2,
							itemid = 40669,
							name = "Anvil"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37235,
							amount = 2,
							itemid = 40687,
							name = "Furnace"
						},
						{
							clientId = 37232,
							amount = 1,
							itemid = 40684,
							name = "Forge"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Grand Workshop",
					category = "carpentry",
					model = 29,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 4,
					price = 100000,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37222,
							amount = 1,
							itemid = 40674,
							name = "Artisan Work Bench"
						},
						{
							clientId = 37289,
							amount = 2,
							itemid = 40741,
							name = "Woodwork Tools"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 1,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Grand Weaving",
					category = "weaving",
					model = 30,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 4,
					price = 100000,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37247,
							amount = 1,
							itemid = 40699,
							name = "Luxury Cloth Roll"
						},
						{
							clientId = 37248,
							amount = 1,
							itemid = 40700,
							name = "Luxury Thread Spool"
						},
						{
							clientId = 42783,
							amount = 2,
							itemid = 46235,
							name = "Simple Loom"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						}
					},
					size = {
						y = 4,
						x = 3
					}
				},
				{
					name = "Small Bedroom",
					category = "bedroom",
					model = 31,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 1,
					price = 5000,
					upgrade = 36,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 35432,
							amount = 2,
							itemid = 38864,
							name = "Coarse Leather"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 32,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 1,
					price = 5000,
					upgrade = 37,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28726,
							amount = 8,
							itemid = 32158,
							name = "copper ingot"
						},
						{
							clientId = 28946,
							amount = 15,
							itemid = 32378,
							name = "stone"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 33,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 1,
					price = 5000,
					upgrade = 38,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 6,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 34,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 1,
					price = 5000,
					upgrade = 39,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 5,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28726,
							amount = 2,
							itemid = 32158,
							name = "copper ingot"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 35,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 1,
					price = 5000,
					upgrade = 40,
					materials = {
						{
							clientId = 45501,
							amount = 5,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 28744,
							amount = 3,
							itemid = 32176,
							name = "rough plank"
						},
						{
							clientId = 28971,
							amount = 2,
							itemid = 32403,
							name = "coarse thread"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 36,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 2,
					price = 10000,
					upgrade = 41,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37267,
							amount = 1,
							itemid = 40719,
							name = "Simple Bed"
						},
						{
							clientId = 42780,
							amount = 1,
							itemid = 46232,
							name = "Cheap Rug"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 37,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 2,
					price = 10000,
					upgrade = 42,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37281,
							amount = 1,
							itemid = 40733,
							name = "Stove"
						},
						{
							clientId = 42777,
							amount = 1,
							itemid = 46229,
							name = "Weak Table"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 38,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 2,
					price = 10000,
					upgrade = 43,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 42784,
							amount = 1,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 42778,
							amount = 2,
							itemid = 46230,
							name = "Copper Anvil"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 39,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 2,
					price = 10000,
					upgrade = 44,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37290,
							amount = 1,
							itemid = 40742,
							name = "Work Bench"
						},
						{
							clientId = 42784,
							amount = 2,
							itemid = 46236,
							name = "Basic Tools"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 40,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 2,
					price = 10000,
					upgrade = 45,
					materials = {
						{
							clientId = 45501,
							amount = 10,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37226,
							amount = 1,
							itemid = 40678,
							name = "Cloth Roll"
						},
						{
							clientId = 37288,
							amount = 1,
							itemid = 40740,
							name = "Thread Spool"
						},
						{
							clientId = 42781,
							amount = 1,
							itemid = 46233,
							name = "Frail Loom"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Large Bedroom",
					category = "bedroom",
					model = 41,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 3,
					price = 50000,
					upgrade = 46,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37228,
							amount = 1,
							itemid = 40680,
							name = "Comfortable Bed"
						},
						{
							clientId = 37225,
							amount = 1,
							itemid = 40677,
							name = "Carpet"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Large Kitchen",
					category = "cooking",
					model = 42,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 3,
					price = 50000,
					upgrade = 47,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37281,
							amount = 1,
							itemid = 40733,
							name = "Stove"
						},
						{
							clientId = 37279,
							amount = 1,
							itemid = 40731,
							name = "Square Table"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Large Armory",
					category = "blacksmithing",
					model = 43,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 3,
					price = 50000,
					upgrade = 48,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37234,
							amount = 1,
							itemid = 40686,
							name = "Forging Tools"
						},
						{
							clientId = 37217,
							amount = 1,
							itemid = 40669,
							name = "Anvil"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37235,
							amount = 1,
							itemid = 40687,
							name = "Furnace"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Large Workshop",
					category = "carpentry",
					model = 44,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 3,
					price = 50000,
					upgrade = 49,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37287,
							amount = 1,
							itemid = 40739,
							name = "Superior Work Bench"
						},
						{
							clientId = 37289,
							amount = 1,
							itemid = 40741,
							name = "Woodwork Tools"
						},
						{
							clientId = 37280,
							amount = 2,
							itemid = 40732,
							name = "Storage Container"
						},
						{
							clientId = 37227,
							amount = 1,
							itemid = 40679,
							name = "Chair"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Large Weaving",
					category = "weaving",
					model = 45,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 3,
					price = 50000,
					upgrade = 50,
					materials = {
						{
							clientId = 45501,
							amount = 15,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37262,
							amount = 1,
							itemid = 40714,
							name = "Refined Cloth Roll"
						},
						{
							clientId = 37288,
							amount = 1,
							itemid = 40740,
							name = "Thread Spool"
						},
						{
							clientId = 42783,
							amount = 1,
							itemid = 46235,
							name = "Simple Loom"
						},
						{
							clientId = 37280,
							amount = 1,
							itemid = 40732,
							name = "Storage Container"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Grand Bedroom",
					category = "bedroom",
					model = 46,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 4,
					price = 100000,
					upgrade = 51,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37245,
							amount = 1,
							itemid = 40697,
							name = "Luxury Bed"
						},
						{
							clientId = 37246,
							amount = 1,
							itemid = 40698,
							name = "Luxury Carpet"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						},
						{
							clientId = 37231,
							amount = 1,
							itemid = 40683,
							name = "Fireplace"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Grand Kitchen",
					category = "cooking",
					model = 47,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 4,
					price = 100000,
					upgrade = 52,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37221,
							amount = 1,
							itemid = 40673,
							name = "Artisan Stove"
						},
						{
							clientId = 37283,
							amount = 1,
							itemid = 40735,
							name = "Sturdy Square Table"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Grand Armory",
					category = "blacksmithing",
					model = 48,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 4,
					price = 100000,
					upgrade = 53,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37285,
							amount = 1,
							itemid = 40737,
							name = "Superior Forging Tools"
						},
						{
							clientId = 37217,
							amount = 2,
							itemid = 40669,
							name = "Anvil"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37235,
							amount = 2,
							itemid = 40687,
							name = "Furnace"
						},
						{
							clientId = 37232,
							amount = 1,
							itemid = 40684,
							name = "Forge"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Grand Workshop",
					category = "carpentry",
					model = 49,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 4,
					price = 100000,
					upgrade = 54,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37222,
							amount = 1,
							itemid = 40674,
							name = "Artisan Work Bench"
						},
						{
							clientId = 37289,
							amount = 2,
							itemid = 40741,
							name = "Woodwork Tools"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 1,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Grand Weaving",
					category = "weaving",
					model = 50,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 4,
					price = 100000,
					upgrade = 55,
					materials = {
						{
							clientId = 45501,
							amount = 20,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37247,
							amount = 1,
							itemid = 40699,
							name = "Luxury Cloth Roll"
						},
						{
							clientId = 37248,
							amount = 1,
							itemid = 40700,
							name = "Luxury Thread Spool"
						},
						{
							clientId = 42783,
							amount = 2,
							itemid = 46235,
							name = "Simple Loom"
						},
						{
							clientId = 42782,
							amount = 1,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 1,
							itemid = 40676,
							name = "Cabinet"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Royal Bedroom",
					category = "bedroom",
					model = 51,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 5,
					price = 250000,
					materials = {
						{
							clientId = 45501,
							amount = 25,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37245,
							amount = 1,
							itemid = 40697,
							name = "Luxury Bed"
						},
						{
							clientId = 37246,
							amount = 1,
							itemid = 40698,
							name = "Luxury Carpet"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 2,
							itemid = 40676,
							name = "Cabinet"
						},
						{
							clientId = 37231,
							amount = 1,
							itemid = 40683,
							name = "Fireplace"
						},
						{
							clientId = 41849,
							amount = 5,
							itemid = 45301,
							name = "Royal Ornaments"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Royal Kitchen",
					category = "cooking",
					model = 52,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 5,
					price = 250000,
					materials = {
						{
							clientId = 45501,
							amount = 25,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37221,
							amount = 1,
							itemid = 40673,
							name = "Artisan Stove"
						},
						{
							clientId = 37283,
							amount = 1,
							itemid = 40735,
							name = "Sturdy Square Table"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						},
						{
							clientId = 41849,
							amount = 5,
							itemid = 45301,
							name = "Royal Ornaments"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Royal Armory",
					category = "blacksmithing",
					model = 53,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 5,
					price = 250000,
					materials = {
						{
							clientId = 45501,
							amount = 25,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37220,
							amount = 1,
							itemid = 40672,
							name = "Artisan Forging Tools"
						},
						{
							clientId = 37233,
							amount = 1,
							itemid = 40685,
							name = "Forgemaster Anvil"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37235,
							amount = 4,
							itemid = 40687,
							name = "Furnace"
						},
						{
							clientId = 37232,
							amount = 1,
							itemid = 40684,
							name = "Forge"
						},
						{
							clientId = 41849,
							amount = 5,
							itemid = 45301,
							name = "Royal Ornaments"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Royal Workshop",
					category = "carpentry",
					model = 54,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 5,
					price = 250000,
					materials = {
						{
							clientId = 45501,
							amount = 25,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37222,
							amount = 1,
							itemid = 40674,
							name = "Artisan Work Bench"
						},
						{
							clientId = 37236,
							amount = 1,
							itemid = 40688,
							name = "Improved Woodwork Tools"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37227,
							amount = 2,
							itemid = 40679,
							name = "Chair"
						},
						{
							clientId = 37219,
							amount = 1,
							itemid = 40671,
							name = "Armoires"
						},
						{
							clientId = 41849,
							amount = 5,
							itemid = 45301,
							name = "Royal Ornaments"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				{
					name = "Royal Weaving",
					category = "weaving",
					model = 55,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 5,
					price = 250000,
					materials = {
						{
							clientId = 45501,
							amount = 25,
							itemid = 48953,
							name = "Ravencrest Emblem"
						},
						{
							clientId = 37247,
							amount = 1,
							itemid = 40699,
							name = "Luxury Cloth Roll"
						},
						{
							clientId = 37248,
							amount = 2,
							itemid = 40700,
							name = "Luxury Thread Spool"
						},
						{
							clientId = 37244,
							amount = 1,
							itemid = 40696,
							name = "Loom"
						},
						{
							clientId = 42782,
							amount = 2,
							itemid = 46234,
							name = "Sturdy Container"
						},
						{
							clientId = 37224,
							amount = 2,
							itemid = 40676,
							name = "Cabinet"
						},
						{
							clientId = 41849,
							amount = 5,
							itemid = 45301,
							name = "Royal Ornaments"
						}
					},
					size = {
						y = 5,
						x = 4
					}
				},
				[60] = {
					name = "Small Chest",
					category = "storage",
					model = 60,
					clientId = 38571,
					description = "Allows you to store up to 21 objects inside it.",
					tier = 1,
					price = 0,
					materials = {},
					size = {
						y = 1,
						x = 1
					}
				},
				[61] = {
					name = "Medium Chest",
					category = "storage",
					model = 61,
					clientId = 38572,
					description = "Allows you to store up to 35 objects inside it.",
					tier = 1,
					price = 0,
					materials = {},
					size = {
						y = 1,
						x = 1
					}
				},
				[62] = {
					name = "Large Chest",
					category = "storage",
					model = 62,
					clientId = 38573,
					description = "Allows you to store up to 70 objects inside it.",
					tier = 1,
					price = 0,
					materials = {},
					size = {
						y = 1,
						x = 1
					}
				},
				[63] = {
					name = "Grand Chest",
					category = "storage",
					model = 63,
					clientId = 38574,
					description = "Allows you to store up to 105 objects inside it.",
					tier = 1,
					price = 0,
					materials = {},
					size = {
						y = 1,
						x = 1
					}
				},
				[64] = {
					name = "Royal Chest",
					category = "storage",
					model = 64,
					clientId = 38575,
					description = "Allows you to store up to 210 objects inside it.",
					tier = 1,
					price = 0,
					materials = {},
					size = {
						y = 1,
						x = 1
					}
				},
				[65] = {
					name = "Small Bedroom",
					category = "bedroom",
					model = 65,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[66] = {
					name = "Small Kitchen",
					category = "cooking",
					model = 66,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[67] = {
					name = "Small Armory",
					category = "blacksmithing",
					model = 67,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[68] = {
					name = "Small Workshop",
					category = "carpentry",
					model = 68,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[69] = {
					name = "Small Weaving",
					category = "weaving",
					model = 69,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[70] = {
					name = "Small Bedroom",
					category = "bedroom",
					model = 70,
					clientId = "chest",
					description = "Gain +%d%% additional experience from all sources.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[71] = {
					name = "Small Kitchen",
					category = "cooking",
					model = 71,
					clientId = "cooking",
					description = "Additional +%d labor when cooking.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[72] = {
					name = "Small Armory",
					category = "blacksmithing",
					model = 72,
					clientId = "blacksmithing",
					description = "Additional +%d labor when blacksmithing.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[73] = {
					name = "Small Workshop",
					category = "carpentry",
					model = 73,
					clientId = "carpentry",
					description = "Additional +%d labor when carpenting.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				},
				[74] = {
					name = "Small Weaving",
					category = "weaving",
					model = 74,
					clientId = "weaving",
					description = "Additional +%d labor when weaving.",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						y = 6,
						x = 5
					}
				}
			}
		}
	}
}

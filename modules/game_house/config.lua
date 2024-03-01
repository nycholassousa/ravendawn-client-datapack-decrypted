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
					name = "Small Shack",
					itemId = 40466,
					house_upgrade = 2,
					house_rooms = 1,
					house_model = 1,
					floors = 1,
					description = "Some description here",
					depot = 60,
					clientId = 37014,
					tier = 1,
					size = 10,
					price = 10000
				},
				{
					name = "Medium Shack",
					itemId = 40467,
					house_upgrade = 5,
					house_rooms = 1,
					house_model = 4,
					description = "Some description here",
					depot = 60,
					clientId = 37015,
					tier = 1,
					size = 12,
					price = 500000
				},
				{
					name = "Large Shack",
					itemId = 40468,
					house_upgrade = 9,
					house_rooms = 1,
					house_model = 8,
					description = "Some description here",
					depot = 60,
					clientId = 37016,
					tier = 1,
					size = 15,
					price = 5000000
				},
				{
					name = "Small Wooden Cabin",
					clientId = 37014,
					house_upgrade = 3,
					house_rooms = 1,
					house_model = 2,
					floors = 1,
					description = "Some description here",
					depot = 61,
					tier = 2,
					size = 10,
					price = 0,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 50,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 20,
							itemId = 32176,
							clientId = 28744
						},
						{
							name = "refined plank",
							amount = 10,
							itemId = 32175,
							clientId = 28743
						},
						{
							name = "nail",
							amount = 10,
							itemId = 32166,
							clientId = 28734
						}
					}
				},
				{
					name = "Medium Wooden Cabin",
					clientId = 37015,
					house_upgrade = 6,
					house_rooms = 1,
					house_model = 5,
					description = "Some description here",
					depot = 61,
					tier = 2,
					size = 12,
					price = 0,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 100,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "refined plank",
							amount = 20,
							itemId = 32175,
							clientId = 28743
						},
						{
							name = "Dense Plank",
							amount = 5,
							itemId = 45299,
							clientId = 41847
						},
						{
							name = "nail",
							amount = 10,
							itemId = 32166,
							clientId = 28734
						}
					}
				},
				{
					name = "Large Wooden Cabin",
					clientId = 37016,
					house_upgrade = 10,
					house_rooms = 1,
					house_model = 9,
					description = "Some description here",
					depot = 61,
					tier = 2,
					size = 15,
					price = 0,
					bonuses = {
						{
							text = "Chance of plenty harvest: 20%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 150,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "treated plank",
							amount = 30,
							itemId = 32177,
							clientId = 28745
						},
						{
							name = "Heavy Plank",
							amount = 10,
							itemId = 45300,
							clientId = 41848
						},
						{
							name = "nail",
							amount = 50,
							itemId = 32166,
							clientId = 28734
						}
					}
				},
				{
					name = "Small Wooden House",
					clientId = 37014,
					house_rooms = 2,
					house_model = 3,
					floors = 2,
					description = "Some description here",
					depot = 62,
					tier = 3,
					size = 10,
					price = 0,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 100,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "treated plank",
							amount = 20,
							itemId = 32177,
							clientId = 28745
						},
						{
							name = "Stone Block",
							amount = 20,
							itemId = 45302,
							clientId = 41850
						},
						{
							name = "nail",
							amount = 30,
							itemId = 32166,
							clientId = 28734
						},
						{
							name = "Dense Plank",
							amount = 10,
							itemId = 45299,
							clientId = 41847
						}
					}
				},
				{
					name = "Medium Wooden House",
					clientId = 37015,
					house_upgrade = 7,
					house_rooms = 2,
					house_model = 6,
					description = "Some description here",
					depot = 62,
					tier = 3,
					size = 12,
					price = 0,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 200,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "treated plank",
							amount = 50,
							itemId = 32177,
							clientId = 28745
						},
						{
							name = "Stone Block",
							amount = 30,
							itemId = 45302,
							clientId = 41850
						},
						{
							name = "Bolt",
							amount = 20,
							itemId = 43734,
							clientId = 40282
						},
						{
							name = "Dense Plank",
							amount = 10,
							itemId = 45299,
							clientId = 41847
						}
					}
				},
				{
					name = "Large Wooden House",
					clientId = 37016,
					house_upgrade = 11,
					house_rooms = 2,
					house_model = 10,
					description = "Some description here",
					depot = 62,
					tier = 3,
					size = 15,
					price = 0,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 300,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "Sturdy Plank",
							amount = 50,
							itemId = 48958,
							clientId = 45506
						},
						{
							name = "Dense Block",
							amount = 50,
							itemId = 45298,
							clientId = 41846
						},
						{
							name = "Bolt",
							amount = 100,
							itemId = 43734,
							clientId = 40282
						},
						{
							name = "Heavy Plank",
							amount = 10,
							itemId = 45300,
							clientId = 41848
						}
					}
				},
				{
					name = "Medium Stone House",
					clientId = 37015,
					house_rooms = 2,
					house_model = 7,
					description = "Some description here",
					depot = 63,
					tier = 4,
					size = 12,
					price = 0,
					bonuses = {
						{
							text = "Chance of plenty harvest: 40%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 350,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "Stone Block",
							amount = 300,
							itemId = 45302,
							clientId = 41850
						},
						{
							name = "Sturdy Plank",
							amount = 50,
							itemId = 48958,
							clientId = 45506
						},
						{
							name = "Bolt",
							amount = 50,
							itemId = 43734,
							clientId = 40282
						},
						{
							name = "Heavy Plank",
							amount = 10,
							itemId = 45300,
							clientId = 41848
						}
					}
				},
				{
					name = "Large Stone House",
					clientId = 37016,
					house_upgrade = 12,
					house_rooms = 2,
					house_model = 11,
					description = "Some description here",
					depot = 63,
					tier = 4,
					size = 15,
					price = 0,
					bonuses = {
						{
							text = "Chance of plenty harvest: 40%",
							tooltip = "Plenty Harvest grants 50% more materials on gather."
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 500,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "Dense Plank",
							amount = 100,
							itemId = 45299,
							clientId = 41847
						},
						{
							name = "Dense Block",
							amount = 250,
							itemId = 45298,
							clientId = 41846
						},
						{
							name = "Bolt",
							amount = 250,
							itemId = 43734,
							clientId = 40282
						},
						{
							name = "Heavy Plank",
							amount = 25,
							itemId = 45300,
							clientId = 41848
						}
					}
				},
				{
					name = "Large Stone Mansion",
					clientId = 37016,
					house_rooms = 3,
					house_model = 12,
					description = "Some description here",
					depot = 64,
					tier = 5,
					size = 15,
					price = 0,
					bonuses = {
						{
							text = "Increase Room Amount"
						}
					},
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 750,
							itemId = 48953,
							clientId = 45501
						},
						{
							name = "Dense Block",
							amount = 250,
							itemId = 45298,
							clientId = 41846
						},
						{
							name = "Stone Block",
							amount = 500,
							itemId = 45302,
							clientId = 41850
						},
						{
							name = "Heavy Plank",
							amount = 100,
							itemId = 45300,
							clientId = 41848
						},
						{
							name = "Royal Ornaments",
							amount = 10,
							itemId = 45301,
							clientId = 41849
						}
					}
				},
				{
					name = "Shack Stronghold",
					itemId = 41974,
					house_upgrade = 14,
					house_rooms = 3,
					house_model = 13,
					description = "Shack Stronghold",
					clientId = 38522,
					tier = 1,
					size = 22,
					price = 200000,
					materials = {}
				},
				{
					name = "Wood Stronghold",
					itemId = 41974,
					house_upgrade = 15,
					house_rooms = 4,
					house_model = 14,
					description = "Wood Stronghold",
					clientId = 38522,
					tier = 2,
					size = 22,
					price = 200000,
					materials = {}
				},
				{
					name = "Stone Stronghold",
					itemId = 41974,
					house_rooms = 4,
					house_model = 15,
					description = "Stone Stronghold",
					clientId = 38522,
					tier = 3,
					size = 22,
					price = 200000,
					materials = {}
				},
				{
					name = "Stone Fort",
					itemId = 41973,
					house_rooms = 4,
					house_model = 16,
					description = "Stone Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					materials = {}
				},
				{
					name = "Wooden Fort",
					itemId = 41973,
					house_rooms = 4,
					house_model = 17,
					description = "Wooden Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					materials = {}
				},
				{
					name = "Sandstone Fort",
					itemId = 41973,
					house_rooms = 4,
					house_model = 18,
					description = "Sandstone Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					materials = {}
				},
				{
					name = "Darkwood Fort",
					itemId = 41973,
					house_rooms = 4,
					house_model = 19,
					description = "Darkwood Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					materials = {}
				}
			}
		},
		{
			window_id = "farming",
			window_data = {
				{
					name = "Potato",
					itemId = 31847,
					stackingType = 2,
					effort = 2,
					model = 25,
					clientId = 25131,
					price = 60,
					gathering = {
						timeToMature = "1 hour",
						rewards = {
							{
								name = "experience",
								amount = 200
							},
							{
								name = "potato",
								clientId = 28874,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 1
					}
				},
				{
					name = "Carrot",
					itemId = 31837,
					stackingType = 2,
					effort = 5,
					model = 26,
					clientId = 25133,
					price = 140,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 400
							},
							{
								name = "carrot",
								clientId = 28865,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 10
					}
				},
				{
					name = "Wheat",
					itemId = 31851,
					stackingType = 2,
					effort = 15,
					model = 27,
					clientId = 30284,
					price = 360,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								name = "wheat",
								clientId = 28881,
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 5
					}
				},
				{
					name = "Corn",
					itemId = 31839,
					stackingType = 2,
					effort = 37,
					model = 28,
					clientId = 25130,
					price = 940,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								name = "corn",
								clientId = 28866,
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 3
					}
				},
				{
					name = "Cabbage",
					itemId = 31864,
					stackingType = 2,
					effort = 15,
					model = 29,
					clientId = 30225,
					price = 360,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								name = "cabbage",
								clientId = 28864,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 20
					}
				},
				{
					name = "Onion",
					itemId = 31862,
					stackingType = 2,
					effort = 22,
					model = 30,
					clientId = 25128,
					price = 560,
					gathering = {
						timeToMature = "9 hours",
						rewards = {
							{
								name = "experience",
								amount = 1800
							},
							{
								name = "onion",
								clientId = 28870,
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 25
					}
				},
				{
					name = "Beans",
					itemId = 31863,
					stackingType = 2,
					effort = 37,
					model = 31,
					clientId = 30219,
					price = 940,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								name = "bean",
								clientId = 28878,
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 30
					}
				},
				{
					name = "Pumpkin",
					itemId = 31848,
					stackingType = 2,
					effort = 60,
					model = 32,
					clientId = 30234,
					price = 1500,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 4800
							},
							{
								name = "pumpkin",
								clientId = 28875,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 35
					}
				},
				{
					name = "Pea",
					itemId = 31845,
					stackingType = 2,
					effort = 48,
					model = 33,
					clientId = 30231,
					price = 1200,
					gathering = {
						timeToMature = "19.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3900
							},
							{
								name = "pea",
								clientId = 28871,
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 40
					}
				},
				{
					name = "Garlic",
					itemId = 31841,
					stackingType = 2,
					effort = 41,
					model = 34,
					clientId = 30228,
					price = 1000,
					gathering = {
						timeToMature = "16.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3300
							},
							{
								name = "garlic",
								clientId = 28869,
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 45
					}
				},
				{
					name = "Brocolli",
					itemId = 31836,
					stackingType = 2,
					effort = 37,
					model = 35,
					clientId = 30222,
					price = 940,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 3000
							},
							{
								name = "brocolli",
								clientId = 28863,
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 50
					}
				},
				{
					name = "Pepper",
					itemId = 31846,
					stackingType = 2,
					effort = 71,
					model = 36,
					clientId = 25129,
					price = 1800,
					gathering = {
						timeToMature = "28.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 5700
							},
							{
								name = "pepper",
								clientId = 28872,
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
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
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 21
					}
				},
				{
					name = "Grape",
					itemId = 31842,
					stackingType = 2,
					effort = 15,
					model = 37,
					clientId = 30255,
					price = 360,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								name = "grape",
								clientId = 28831,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 15
					}
				},
				{
					name = "Apple",
					itemId = 31833,
					stackingType = 3,
					effort = 150,
					model = 38,
					clientId = 34246,
					price = 3700,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								name = "apple",
								clientId = 28822,
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 7
					}
				},
				{
					name = "Cotton",
					itemId = 31840,
					stackingType = 3,
					effort = 90,
					model = 39,
					clientId = 34249,
					price = 2200,
					gathering = {
						timeToMature = "4.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 3600
							},
							{
								name = "cotton",
								clientId = 28879,
								amount = {
									[1] = 4,
									[2] = 8
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 1
					}
				},
				{
					name = "Blueberry",
					itemId = 31835,
					stackingType = 2,
					effort = 15,
					model = 40,
					clientId = 30246,
					price = 360,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 1200
							},
							{
								name = "blueberry",
								clientId = 28825,
								amount = {
									[1] = 9,
									[2] = 15
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 17
					}
				},
				{
					name = "Orange",
					itemId = 31844,
					stackingType = 3,
					effort = 300,
					model = 41,
					clientId = 34250,
					price = 7500,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								name = "experience",
								amount = 12000
							},
							{
								name = "orange",
								clientId = 28832,
								amount = {
									[1] = 3,
									[2] = 6
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 22
					}
				},
				{
					name = "Strawberry",
					itemId = 31849,
					stackingType = 2,
					effort = 18,
					model = 42,
					clientId = 30261,
					price = 480,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 1500
							},
							{
								name = "strawberry",
								clientId = 28827,
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 27
					}
				},
				{
					name = "Banana",
					itemId = 31834,
					stackingType = 3,
					effort = 480,
					model = 43,
					clientId = 34247,
					price = 12000,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 19200
							},
							{
								name = "banana",
								clientId = 28823,
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 32
					}
				},
				{
					name = "Watermelon",
					itemId = 31850,
					stackingType = 2,
					effort = 75,
					model = 44,
					clientId = 30267,
					price = 1800,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								name = "watermelon",
								clientId = 28828,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 37
					}
				},
				{
					name = "Moonberry",
					itemId = 31843,
					stackingType = 2,
					effort = 52,
					model = 45,
					clientId = 30281,
					price = 1320,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								name = "experience",
								amount = 4200
							},
							{
								name = "moonberry",
								clientId = 28826,
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 42
					}
				},
				{
					name = "Acorn",
					itemId = 31832,
					stackingType = 3,
					effort = 960,
					model = 46,
					clientId = 34245,
					price = 24000,
					gathering = {
						timeToMature = "48 hours",
						rewards = {
							{
								name = "experience",
								amount = 38400
							},
							{
								name = "acorn",
								clientId = 28829,
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "farming",
						[2] = 47
					}
				},
				{
					name = "Sunberry",
					itemId = 31865,
					stackingType = 2,
					effort = 75,
					model = 47,
					clientId = 30264,
					price = 1800,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								name = "sunberry",
								clientId = 28824,
								amount = {
									[1] = 3,
									[2] = 9
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "farming",
						[2] = 52
					}
				},
				{
					name = "Cherry",
					itemId = 31838,
					stackingType = 3,
					effort = 420,
					model = 48,
					clientId = 34248,
					price = 10500,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								name = "experience",
								amount = 16800
							},
							{
								name = "cherry",
								clientId = 28830,
								amount = {
									[1] = 6,
									[2] = 12
								}
							},
							{
								name = "Three-Leaf Clover",
								clientId = 34370,
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
						x = 2,
						y = 2
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
					name = "Small Chicken Pen",
					stackingType = 1,
					effort = 100,
					model = 1,
					clientId = 34361,
					price = 1000,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4000
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "egg",
								clientId = 28928,
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 5
					}
				},
				{
					name = "Small Hare Pen",
					stackingType = 1,
					effort = 100,
					model = 9,
					clientId = 34461,
					price = 1000,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 4000
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "spool of hair",
								clientId = 34475,
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 1
					}
				},
				{
					name = "Small Pig Pen",
					stackingType = 1,
					effort = 160,
					model = 3,
					clientId = 34365,
					price = 1000,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 6400
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 3,
									[2] = 4
								}
							},
							{
								name = "Hide",
								clientId = 35353,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 1
					}
				},
				{
					name = "Small Goat Pen",
					stackingType = 1,
					effort = 130,
					model = 11,
					clientId = 35083,
					price = 1800,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 5200
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 4,
									[2] = 7
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "milk",
								clientId = 28929,
								amount = {
									[1] = 2,
									[2] = 3
								}
							},
							{
								name = "wool",
								clientId = 28425,
								amount = {
									[1] = 1,
									[2] = 1
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 10
					}
				},
				{
					name = "Small Turkey Pen",
					stackingType = 1,
					effort = 190,
					model = 13,
					clientId = 35085,
					price = 1300,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 7600
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								name = "Feather",
								clientId = 35354,
								amount = {
									[1] = 2,
									[2] = 5
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 15
					}
				},
				{
					name = "Small Sheep Pen",
					stackingType = 1,
					effort = 240,
					model = 5,
					clientId = 34363,
					price = 2600,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 9600
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 8,
									[2] = 12
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "wool",
								clientId = 28425,
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 20
					}
				},
				{
					name = "Small Cow Pen",
					stackingType = 1,
					effort = 400,
					model = 7,
					clientId = 34367,
					price = 2600,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								name = "experience",
								amount = 16000
							},
							{
								name = "beef",
								clientId = 28931,
								amount = {
									[1] = 6,
									[2] = 11
								}
							},
							{
								name = "Hide",
								clientId = 35353,
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "milk",
								clientId = 28929,
								amount = {
									[1] = 3,
									[2] = 5
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 25
					}
				},
				{
					name = "Medium Chicken Pen",
					stackingType = 1,
					effort = 224,
					model = 2,
					clientId = 34362,
					price = 2600,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 7,
									[2] = 12
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "egg",
								clientId = 28928,
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 30
					}
				},
				{
					name = "Medium Hare Pen",
					stackingType = 1,
					effort = 224,
					model = 10,
					clientId = 34465,
					price = 2600,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 7,
									[2] = 12
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "spool of hair",
								clientId = 34475,
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 35
					}
				},
				{
					name = "Medium Pig Pen",
					stackingType = 1,
					effort = 360,
					model = 4,
					clientId = 34366,
					price = 3000,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 14400
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								name = "Hide",
								clientId = 35353,
								amount = {
									[1] = 6,
									[2] = 9
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 40
					}
				},
				{
					name = "Medium Goat Pen",
					stackingType = 1,
					effort = 292,
					model = 12,
					clientId = 35082,
					price = 3800,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 11700
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 9,
									[2] = 14
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "milk",
								clientId = 28929,
								amount = {
									[1] = 4,
									[2] = 6
								}
							},
							{
								name = "wool",
								clientId = 28425,
								amount = {
									[1] = 2,
									[2] = 4
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 50
					}
				},
				{
					name = "Medium Turkey Pen",
					stackingType = 1,
					effort = 428,
					model = 14,
					clientId = 35084,
					price = 3500,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								name = "experience",
								amount = 17100
							},
							{
								name = "chicken",
								clientId = 28750,
								amount = {
									[1] = 9,
									[2] = 13
								}
							},
							{
								name = "Feather",
								clientId = 35354,
								amount = {
									[1] = 5,
									[2] = 8
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 55
					}
				},
				{
					name = "Medium Sheep Pen",
					stackingType = 1,
					effort = 540,
					model = 6,
					clientId = 34364,
					price = 5800,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 21600
							},
							{
								name = "shank",
								clientId = 28932,
								amount = {
									[1] = 18,
									[2] = 27
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "wool",
								clientId = 28425,
								amount = {
									[1] = 8,
									[2] = 11
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 60
					}
				},
				{
					name = "Medium Cow Pen",
					stackingType = 1,
					effort = 900,
					model = 8,
					clientId = 34368,
					price = 5800,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								name = "experience",
								amount = 36000
							},
							{
								name = "beef",
								clientId = 28931,
								amount = {
									[1] = 15,
									[2] = 22
								}
							},
							{
								name = "Hide",
								clientId = 35353,
								amount = {
									[1] = 14,
									[2] = 21
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
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
								name = "milk",
								clientId = 28929,
								amount = {
									[1] = 8,
									[2] = 11
								}
							},
							{
								name = "Fertilizer",
								clientId = 34369,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					materials = {},
					size = {
						x = 3,
						y = 3
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 65
					}
				},
				{
					name = "Cheese Barrel",
					stackingType = 6,
					effort = 150,
					model = 15,
					clientId = 37440,
					price = 2300,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								name = "experience",
								amount = 6000
							},
							{
								name = "cheese",
								clientId = 28927,
								amount = {
									[1] = 1,
									[2] = 2
								}
							}
						}
					},
					itemsRequired = {
						{
							name = "milk",
							amount = 1,
							id = 32361,
							clientId = 28929
						}
					},
					materials = {},
					passiveRequired = {
						profession = 6,
						index = 2,
						type = 5
					},
					size = {
						x = 1,
						y = 1
					},
					skillRequired = {
						[1] = "husbandry",
						[2] = 21
					}
				},
				{
					name = "Bee Hive",
					stackingType = 7,
					effort = 224,
					model = 16,
					clientId = 44230,
					price = 3500,
					gathering = {
						timeToMature = "45 hours",
						rewards = {
							{
								name = "experience",
								amount = 9000
							},
							{
								name = "Honey",
								clientId = 44381,
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
						x = 1,
						y = 1
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
					name = "Juniper",
					itemId = 37658,
					stackingType = 3,
					effort = 20,
					model = 49,
					clientId = 34228,
					price = 500,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								name = "experience",
								amount = 1600
							},
							{
								name = "Small Log",
								clientId = 28977,
								amount = {
									[1] = 4,
									[2] = 8
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 1
					}
				},
				{
					name = "Fir",
					itemId = 37667,
					stackingType = 3,
					effort = 80,
					model = 50,
					clientId = 34237,
					price = 2000,
					gathering = {
						timeToMature = "8 hours",
						rewards = {
							{
								name = "experience",
								amount = 6400
							},
							{
								name = "Small Log",
								clientId = 28977,
								amount = {
									[1] = 20,
									[2] = 26
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 5
					}
				},
				{
					name = "Palm",
					itemId = 37664,
					stackingType = 3,
					effort = 60,
					model = 51,
					clientId = 34234,
					price = 1500,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								name = "experience",
								amount = 4800
							},
							{
								name = "Heavy Log",
								clientId = 45504,
								amount = {
									[1] = 14,
									[2] = 19
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 10
					}
				},
				{
					name = "Oak",
					itemId = 37661,
					stackingType = 3,
					effort = 240,
					model = 52,
					clientId = 34231,
					price = 6000,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								name = "experience",
								amount = 19000
							},
							{
								name = "Heavy Log",
								clientId = 45504,
								amount = {
									[1] = 50,
									[2] = 80
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 20
					}
				},
				{
					name = "Wildleaf",
					itemId = 37655,
					stackingType = 3,
					effort = 160,
					model = 53,
					clientId = 34225,
					price = 4000,
					gathering = {
						timeToMature = "16 hours",
						rewards = {
							{
								name = "experience",
								amount = 13000
							},
							{
								name = "Sturdy Log",
								clientId = 45505,
								amount = {
									[1] = 28,
									[2] = 37
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
					},
					skillRequired = {
						[1] = "woodcutting",
						[2] = 35
					}
				},
				{
					name = "Willow",
					itemId = 37674,
					stackingType = 3,
					effort = 120,
					model = 54,
					clientId = 34244,
					price = 3000,
					gathering = {
						timeToMature = "12 hours",
						rewards = {
							{
								name = "experience",
								amount = 9600
							},
							{
								name = "Fine Log",
								clientId = 45502,
								amount = {
									[1] = 14,
									[2] = 19
								}
							},
							{
								name = "Dense Log",
								clientId = 34371,
								amount = {
									[1] = 0,
									[2] = 1
								}
							}
						}
					},
					size = {
						x = 2,
						y = 2
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
					stackingHorizontalyOnly = true,
					itemId = 0,
					stackingType = 4,
					model = 55,
					clientId = 38159,
					price = 300,
					size = {
						x = 2,
						y = 1
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
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 6,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "Coarse Leather",
							amount = 2,
							itemid = 38864,
							clientId = 35432
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 2,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 7,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "copper ingot",
							amount = 8,
							itemid = 32158,
							clientId = 28726
						},
						{
							name = "stone",
							amount = 15,
							itemid = 32378,
							clientId = 28946
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 3,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 8,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 6,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 4,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 9,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 5,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 2,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 5,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 10,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "coarse thread",
							amount = 2,
							itemid = 32403,
							clientId = 28971
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 6,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Simple Bed",
							amount = 1,
							itemid = 40719,
							clientId = 37267
						},
						{
							name = "Cheap Rug",
							amount = 1,
							itemid = 46232,
							clientId = 42780
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 7,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Stove",
							amount = 1,
							itemid = 40733,
							clientId = 37281
						},
						{
							name = "Weak Table",
							amount = 1,
							itemid = 46229,
							clientId = 42777
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 8,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Basic Tools",
							amount = 1,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Copper Anvil",
							amount = 2,
							itemid = 46230,
							clientId = 42778
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 9,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Work Bench",
							amount = 1,
							itemid = 40742,
							clientId = 37290
						},
						{
							name = "Basic Tools",
							amount = 2,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 10,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Cloth Roll",
							amount = 1,
							itemid = 40678,
							clientId = 37226
						},
						{
							name = "Thread Spool",
							amount = 1,
							itemid = 40740,
							clientId = 37288
						},
						{
							name = "Frail Loom",
							amount = 1,
							itemid = 46233,
							clientId = 42781
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					name = "Small Bedroom",
					category = "bedroom",
					model = 11,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 16,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "Coarse Leather",
							amount = 2,
							itemid = 38864,
							clientId = 35432
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 12,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 17,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "copper ingot",
							amount = 8,
							itemid = 32158,
							clientId = 28726
						},
						{
							name = "stone",
							amount = 15,
							itemid = 32378,
							clientId = 28946
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 13,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 18,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 6,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 14,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 19,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 5,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 2,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 15,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 20,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "coarse thread",
							amount = 2,
							itemid = 32403,
							clientId = 28971
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 16,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 21,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Simple Bed",
							amount = 1,
							itemid = 40719,
							clientId = 37267
						},
						{
							name = "Cheap Rug",
							amount = 1,
							itemid = 46232,
							clientId = 42780
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 17,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 22,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Stove",
							amount = 1,
							itemid = 40733,
							clientId = 37281
						},
						{
							name = "Weak Table",
							amount = 1,
							itemid = 46229,
							clientId = 42777
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 18,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 23,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Basic Tools",
							amount = 1,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Copper Anvil",
							amount = 2,
							itemid = 46230,
							clientId = 42778
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 19,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 24,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Work Bench",
							amount = 1,
							itemid = 40742,
							clientId = 37290
						},
						{
							name = "Basic Tools",
							amount = 2,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 20,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 25,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Cloth Roll",
							amount = 1,
							itemid = 40678,
							clientId = 37226
						},
						{
							name = "Thread Spool",
							amount = 1,
							itemid = 40740,
							clientId = 37288
						},
						{
							name = "Frail Loom",
							amount = 1,
							itemid = 46233,
							clientId = 42781
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Large Bedroom",
					category = "bedroom",
					model = 21,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 26,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Comfortable Bed",
							amount = 1,
							itemid = 40680,
							clientId = 37228
						},
						{
							name = "Carpet",
							amount = 1,
							itemid = 40677,
							clientId = 37225
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Large Kitchen",
					category = "cooking",
					model = 22,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 27,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Stove",
							amount = 1,
							itemid = 40733,
							clientId = 37281
						},
						{
							name = "Square Table",
							amount = 1,
							itemid = 40731,
							clientId = 37279
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Large Armory",
					category = "blacksmithing",
					model = 23,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 28,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Forging Tools",
							amount = 1,
							itemid = 40686,
							clientId = 37234
						},
						{
							name = "Anvil",
							amount = 1,
							itemid = 40669,
							clientId = 37217
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Furnace",
							amount = 1,
							itemid = 40687,
							clientId = 37235
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Large Workshop",
					category = "carpentry",
					model = 24,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 29,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Superior Work Bench",
							amount = 1,
							itemid = 40739,
							clientId = 37287
						},
						{
							name = "Woodwork Tools",
							amount = 1,
							itemid = 40741,
							clientId = 37289
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Chair",
							amount = 1,
							itemid = 40679,
							clientId = 37227
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Large Weaving",
					category = "weaving",
					model = 25,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 30,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Refined Cloth Roll",
							amount = 1,
							itemid = 40714,
							clientId = 37262
						},
						{
							name = "Thread Spool",
							amount = 1,
							itemid = 40740,
							clientId = 37288
						},
						{
							name = "Simple Loom",
							amount = 1,
							itemid = 46235,
							clientId = 42783
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Grand Bedroom",
					category = "bedroom",
					model = 26,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Bed",
							amount = 1,
							itemid = 40697,
							clientId = 37245
						},
						{
							name = "Luxury Carpet",
							amount = 1,
							itemid = 40698,
							clientId = 37246
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						},
						{
							name = "Fireplace",
							amount = 1,
							itemid = 40683,
							clientId = 37231
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Grand Kitchen",
					category = "cooking",
					model = 27,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Stove",
							amount = 1,
							itemid = 40673,
							clientId = 37221
						},
						{
							name = "Sturdy Square Table",
							amount = 1,
							itemid = 40735,
							clientId = 37283
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Grand Armory",
					category = "blacksmithing",
					model = 28,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Superior Forging Tools",
							amount = 1,
							itemid = 40737,
							clientId = 37285
						},
						{
							name = "Anvil",
							amount = 2,
							itemid = 40669,
							clientId = 37217
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Furnace",
							amount = 2,
							itemid = 40687,
							clientId = 37235
						},
						{
							name = "Forge",
							amount = 1,
							itemid = 40684,
							clientId = 37232
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Grand Workshop",
					category = "carpentry",
					model = 29,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Work Bench",
							amount = 1,
							itemid = 40674,
							clientId = 37222
						},
						{
							name = "Woodwork Tools",
							amount = 2,
							itemid = 40741,
							clientId = 37289
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 1,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Grand Weaving",
					category = "weaving",
					model = 30,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Cloth Roll",
							amount = 1,
							itemid = 40699,
							clientId = 37247
						},
						{
							name = "Luxury Thread Spool",
							amount = 1,
							itemid = 40700,
							clientId = 37248
						},
						{
							name = "Simple Loom",
							amount = 2,
							itemid = 46235,
							clientId = 42783
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					name = "Small Bedroom",
					category = "bedroom",
					model = 31,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 36,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "Coarse Leather",
							amount = 2,
							itemid = 38864,
							clientId = 35432
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Small Kitchen",
					category = "cooking",
					model = 32,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 37,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "copper ingot",
							amount = 8,
							itemid = 32158,
							clientId = 28726
						},
						{
							name = "stone",
							amount = 15,
							itemid = 32378,
							clientId = 28946
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Small Armory",
					category = "blacksmithing",
					model = 33,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 38,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 6,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Small Workshop",
					category = "carpentry",
					model = 34,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 39,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 5,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "copper ingot",
							amount = 2,
							itemid = 32158,
							clientId = 28726
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Small Weaving",
					category = "weaving",
					model = 35,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 40,
					tier = 1,
					price = 5000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 5,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "rough plank",
							amount = 3,
							itemid = 32176,
							clientId = 28744
						},
						{
							name = "coarse thread",
							amount = 2,
							itemid = 32403,
							clientId = 28971
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Medium Bedroom",
					category = "bedroom",
					model = 36,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 41,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Simple Bed",
							amount = 1,
							itemid = 40719,
							clientId = 37267
						},
						{
							name = "Cheap Rug",
							amount = 1,
							itemid = 46232,
							clientId = 42780
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Medium Kitchen",
					category = "cooking",
					model = 37,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 42,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Stove",
							amount = 1,
							itemid = 40733,
							clientId = 37281
						},
						{
							name = "Weak Table",
							amount = 1,
							itemid = 46229,
							clientId = 42777
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Medium Armory",
					category = "blacksmithing",
					model = 38,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 43,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Basic Tools",
							amount = 1,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Copper Anvil",
							amount = 2,
							itemid = 46230,
							clientId = 42778
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Medium Workshop",
					category = "carpentry",
					model = 39,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 44,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Work Bench",
							amount = 1,
							itemid = 40742,
							clientId = 37290
						},
						{
							name = "Basic Tools",
							amount = 2,
							itemid = 46236,
							clientId = 42784
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Medium Weaving",
					category = "weaving",
					model = 40,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 45,
					tier = 2,
					price = 10000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 10,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Cloth Roll",
							amount = 1,
							itemid = 40678,
							clientId = 37226
						},
						{
							name = "Thread Spool",
							amount = 1,
							itemid = 40740,
							clientId = 37288
						},
						{
							name = "Frail Loom",
							amount = 1,
							itemid = 46233,
							clientId = 42781
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Large Bedroom",
					category = "bedroom",
					model = 41,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 46,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Comfortable Bed",
							amount = 1,
							itemid = 40680,
							clientId = 37228
						},
						{
							name = "Carpet",
							amount = 1,
							itemid = 40677,
							clientId = 37225
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Large Kitchen",
					category = "cooking",
					model = 42,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 47,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Stove",
							amount = 1,
							itemid = 40733,
							clientId = 37281
						},
						{
							name = "Square Table",
							amount = 1,
							itemid = 40731,
							clientId = 37279
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Large Armory",
					category = "blacksmithing",
					model = 43,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 48,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Forging Tools",
							amount = 1,
							itemid = 40686,
							clientId = 37234
						},
						{
							name = "Anvil",
							amount = 1,
							itemid = 40669,
							clientId = 37217
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Furnace",
							amount = 1,
							itemid = 40687,
							clientId = 37235
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Large Workshop",
					category = "carpentry",
					model = 44,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 49,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Superior Work Bench",
							amount = 1,
							itemid = 40739,
							clientId = 37287
						},
						{
							name = "Woodwork Tools",
							amount = 1,
							itemid = 40741,
							clientId = 37289
						},
						{
							name = "Storage Container",
							amount = 2,
							itemid = 40732,
							clientId = 37280
						},
						{
							name = "Chair",
							amount = 1,
							itemid = 40679,
							clientId = 37227
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Large Weaving",
					category = "weaving",
					model = 45,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 50,
					tier = 3,
					price = 50000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 15,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Refined Cloth Roll",
							amount = 1,
							itemid = 40714,
							clientId = 37262
						},
						{
							name = "Thread Spool",
							amount = 1,
							itemid = 40740,
							clientId = 37288
						},
						{
							name = "Simple Loom",
							amount = 1,
							itemid = 46235,
							clientId = 42783
						},
						{
							name = "Storage Container",
							amount = 1,
							itemid = 40732,
							clientId = 37280
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Grand Bedroom",
					category = "bedroom",
					model = 46,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					upgrade = 51,
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Bed",
							amount = 1,
							itemid = 40697,
							clientId = 37245
						},
						{
							name = "Luxury Carpet",
							amount = 1,
							itemid = 40698,
							clientId = 37246
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						},
						{
							name = "Fireplace",
							amount = 1,
							itemid = 40683,
							clientId = 37231
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Grand Kitchen",
					category = "cooking",
					model = 47,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					upgrade = 52,
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Stove",
							amount = 1,
							itemid = 40673,
							clientId = 37221
						},
						{
							name = "Sturdy Square Table",
							amount = 1,
							itemid = 40735,
							clientId = 37283
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Grand Armory",
					category = "blacksmithing",
					model = 48,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					upgrade = 53,
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Superior Forging Tools",
							amount = 1,
							itemid = 40737,
							clientId = 37285
						},
						{
							name = "Anvil",
							amount = 2,
							itemid = 40669,
							clientId = 37217
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Furnace",
							amount = 2,
							itemid = 40687,
							clientId = 37235
						},
						{
							name = "Forge",
							amount = 1,
							itemid = 40684,
							clientId = 37232
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Grand Workshop",
					category = "carpentry",
					model = 49,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					upgrade = 54,
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Work Bench",
							amount = 1,
							itemid = 40674,
							clientId = 37222
						},
						{
							name = "Woodwork Tools",
							amount = 2,
							itemid = 40741,
							clientId = 37289
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 1,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Grand Weaving",
					category = "weaving",
					model = 50,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					upgrade = 55,
					tier = 4,
					price = 100000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 20,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Cloth Roll",
							amount = 1,
							itemid = 40699,
							clientId = 37247
						},
						{
							name = "Luxury Thread Spool",
							amount = 1,
							itemid = 40700,
							clientId = 37248
						},
						{
							name = "Simple Loom",
							amount = 2,
							itemid = 46235,
							clientId = 42783
						},
						{
							name = "Sturdy Container",
							amount = 1,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 1,
							itemid = 40676,
							clientId = 37224
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Royal Bedroom",
					category = "bedroom",
					model = 51,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					tier = 5,
					price = 250000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 25,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Bed",
							amount = 1,
							itemid = 40697,
							clientId = 37245
						},
						{
							name = "Luxury Carpet",
							amount = 1,
							itemid = 40698,
							clientId = 37246
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 2,
							itemid = 40676,
							clientId = 37224
						},
						{
							name = "Fireplace",
							amount = 1,
							itemid = 40683,
							clientId = 37231
						},
						{
							name = "Royal Ornaments",
							amount = 5,
							itemid = 45301,
							clientId = 41849
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Royal Kitchen",
					category = "cooking",
					model = 52,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					tier = 5,
					price = 250000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 25,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Stove",
							amount = 1,
							itemid = 40673,
							clientId = 37221
						},
						{
							name = "Sturdy Square Table",
							amount = 1,
							itemid = 40735,
							clientId = 37283
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						},
						{
							name = "Royal Ornaments",
							amount = 5,
							itemid = 45301,
							clientId = 41849
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Royal Armory",
					category = "blacksmithing",
					model = 53,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					tier = 5,
					price = 250000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 25,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Forging Tools",
							amount = 1,
							itemid = 40672,
							clientId = 37220
						},
						{
							name = "Forgemaster Anvil",
							amount = 1,
							itemid = 40685,
							clientId = 37233
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Furnace",
							amount = 4,
							itemid = 40687,
							clientId = 37235
						},
						{
							name = "Forge",
							amount = 1,
							itemid = 40684,
							clientId = 37232
						},
						{
							name = "Royal Ornaments",
							amount = 5,
							itemid = 45301,
							clientId = 41849
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Royal Workshop",
					category = "carpentry",
					model = 54,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					tier = 5,
					price = 250000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 25,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Artisan Work Bench",
							amount = 1,
							itemid = 40674,
							clientId = 37222
						},
						{
							name = "Improved Woodwork Tools",
							amount = 1,
							itemid = 40688,
							clientId = 37236
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Chair",
							amount = 2,
							itemid = 40679,
							clientId = 37227
						},
						{
							name = "Armoires",
							amount = 1,
							itemid = 40671,
							clientId = 37219
						},
						{
							name = "Royal Ornaments",
							amount = 5,
							itemid = 45301,
							clientId = 41849
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					name = "Royal Weaving",
					category = "weaving",
					model = 55,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					tier = 5,
					price = 250000,
					materials = {
						{
							name = "Ravencrest Emblem",
							amount = 25,
							itemid = 48953,
							clientId = 45501
						},
						{
							name = "Luxury Cloth Roll",
							amount = 1,
							itemid = 40699,
							clientId = 37247
						},
						{
							name = "Luxury Thread Spool",
							amount = 2,
							itemid = 40700,
							clientId = 37248
						},
						{
							name = "Loom",
							amount = 1,
							itemid = 40696,
							clientId = 37244
						},
						{
							name = "Sturdy Container",
							amount = 2,
							itemid = 46234,
							clientId = 42782
						},
						{
							name = "Cabinet",
							amount = 2,
							itemid = 40676,
							clientId = 37224
						},
						{
							name = "Royal Ornaments",
							amount = 5,
							itemid = 45301,
							clientId = 41849
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				[60] = {
					name = "Small Chest",
					category = "storage",
					model = 60,
					description = "Allows you to store up to 21 objects inside it.",
					clientId = 38571,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[61] = {
					name = "Medium Chest",
					category = "storage",
					model = 61,
					description = "Allows you to store up to 35 objects inside it.",
					clientId = 38572,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[62] = {
					name = "Large Chest",
					category = "storage",
					model = 62,
					description = "Allows you to store up to 70 objects inside it.",
					clientId = 38573,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[63] = {
					name = "Grand Chest",
					category = "storage",
					model = 63,
					description = "Allows you to store up to 105 objects inside it.",
					clientId = 38574,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[64] = {
					name = "Royal Chest",
					category = "storage",
					model = 64,
					description = "Allows you to store up to 210 objects inside it.",
					clientId = 38575,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[65] = {
					name = "Small Bedroom",
					category = "bedroom",
					model = 65,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[66] = {
					name = "Small Kitchen",
					category = "cooking",
					model = 66,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[67] = {
					name = "Small Armory",
					category = "blacksmithing",
					model = 67,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[68] = {
					name = "Small Workshop",
					category = "carpentry",
					model = 68,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[69] = {
					name = "Small Weaving",
					category = "weaving",
					model = 69,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[70] = {
					name = "Small Bedroom",
					category = "bedroom",
					model = 70,
					description = "Gain +%d%% additional experience from all sources.",
					clientId = "chest",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[71] = {
					name = "Small Kitchen",
					category = "cooking",
					model = 71,
					description = "Additional +%d labor when cooking.",
					clientId = "cooking",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[72] = {
					name = "Small Armory",
					category = "blacksmithing",
					model = 72,
					description = "Additional +%d labor when blacksmithing.",
					clientId = "blacksmithing",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[73] = {
					name = "Small Workshop",
					category = "carpentry",
					model = 73,
					description = "Additional +%d labor when carpenting.",
					clientId = "carpentry",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[74] = {
					name = "Small Weaving",
					category = "weaving",
					model = 74,
					description = "Additional +%d labor when weaving.",
					clientId = "weaving",
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				}
			}
		}
	}
}

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
communityLandFarmPriceMultiplier = 1.25
houseData = {
	windows = {
		{
			window_id = "land",
			window_data = {
				{
					description = "Some description here",
					name = "Small Shack",
					clientId = 37014,
					depot = 60,
					tier = 1,
					size = 10,
					price = 10000,
					itemId = 40466,
					house_upgrade = 2,
					house_rooms = 1,
					house_model = 1
				},
				{
					description = "Some description here",
					name = "Medium Shack",
					clientId = 37015,
					depot = 60,
					tier = 1,
					size = 12,
					price = 500000,
					itemId = 40467,
					house_upgrade = 5,
					house_rooms = 1,
					house_model = 4
				},
				{
					description = "Some description here",
					name = "Large Shack",
					clientId = 37016,
					depot = 60,
					tier = 1,
					size = 15,
					price = 5000000,
					itemId = 40468,
					house_upgrade = 9,
					house_rooms = 1,
					house_model = 8
				},
				{
					description = "Some description here",
					clientId = 37014,
					depot = 61,
					name = "Small Wooden Cabin",
					tier = 2,
					size = 10,
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
							amount = 50,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 20,
							name = "rough plank",
							clientId = 28744,
							itemId = 32176
						},
						{
							amount = 10,
							name = "refined plank",
							clientId = 28743,
							itemId = 32175
						},
						{
							amount = 10,
							name = "nail",
							clientId = 28734,
							itemId = 32166
						}
					}
				},
				{
					description = "Some description here",
					clientId = 37015,
					depot = 61,
					name = "Medium Wooden Cabin",
					tier = 2,
					size = 12,
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
							amount = 100,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 20,
							name = "refined plank",
							clientId = 28743,
							itemId = 32175
						},
						{
							amount = 5,
							name = "Dense Plank",
							clientId = 41847,
							itemId = 45299
						},
						{
							amount = 10,
							name = "nail",
							clientId = 28734,
							itemId = 32166
						}
					}
				},
				{
					description = "Some description here",
					clientId = 37016,
					depot = 61,
					name = "Large Wooden Cabin",
					tier = 2,
					size = 15,
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
							amount = 150,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 30,
							name = "treated plank",
							clientId = 28745,
							itemId = 32177
						},
						{
							amount = 10,
							name = "Heavy Plank",
							clientId = 41848,
							itemId = 45300
						},
						{
							amount = 50,
							name = "nail",
							clientId = 28734,
							itemId = 32166
						}
					}
				},
				{
					description = "Some description here",
					name = "Small Wooden House",
					clientId = 37014,
					depot = 62,
					tier = 3,
					size = 10,
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
							amount = 100,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 20,
							name = "treated plank",
							clientId = 28745,
							itemId = 32177
						},
						{
							amount = 20,
							name = "Stone Block",
							clientId = 41850,
							itemId = 45302
						},
						{
							amount = 30,
							name = "nail",
							clientId = 28734,
							itemId = 32166
						},
						{
							amount = 10,
							name = "Dense Plank",
							clientId = 41847,
							itemId = 45299
						}
					}
				},
				{
					description = "Some description here",
					clientId = 37015,
					depot = 62,
					name = "Medium Wooden House",
					tier = 3,
					size = 12,
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
							amount = 200,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 50,
							name = "treated plank",
							clientId = 28745,
							itemId = 32177
						},
						{
							amount = 30,
							name = "Stone Block",
							clientId = 41850,
							itemId = 45302
						},
						{
							amount = 20,
							name = "Bolt",
							clientId = 40282,
							itemId = 43734
						},
						{
							amount = 10,
							name = "Dense Plank",
							clientId = 41847,
							itemId = 45299
						}
					}
				},
				{
					description = "Some description here",
					clientId = 37016,
					depot = 62,
					name = "Large Wooden House",
					tier = 3,
					size = 15,
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
							amount = 300,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 50,
							name = "Sturdy Plank",
							clientId = 45506,
							itemId = 48958
						},
						{
							amount = 50,
							name = "Dense Block",
							clientId = 41846,
							itemId = 45298
						},
						{
							amount = 100,
							name = "Bolt",
							clientId = 40282,
							itemId = 43734
						},
						{
							amount = 10,
							name = "Heavy Plank",
							clientId = 41848,
							itemId = 45300
						}
					}
				},
				{
					description = "Some description here",
					name = "Medium Stone House",
					clientId = 37015,
					depot = 63,
					tier = 4,
					size = 12,
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
							amount = 350,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 300,
							name = "Stone Block",
							clientId = 41850,
							itemId = 45302
						},
						{
							amount = 50,
							name = "Sturdy Plank",
							clientId = 45506,
							itemId = 48958
						},
						{
							amount = 50,
							name = "Bolt",
							clientId = 40282,
							itemId = 43734
						},
						{
							amount = 10,
							name = "Heavy Plank",
							clientId = 41848,
							itemId = 45300
						}
					}
				},
				{
					description = "Some description here",
					clientId = 37016,
					depot = 63,
					name = "Large Stone House",
					tier = 4,
					size = 15,
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
							amount = 500,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 100,
							name = "Dense Plank",
							clientId = 41847,
							itemId = 45299
						},
						{
							amount = 250,
							name = "Dense Block",
							clientId = 41846,
							itemId = 45298
						},
						{
							amount = 250,
							name = "Bolt",
							clientId = 40282,
							itemId = 43734
						},
						{
							amount = 25,
							name = "Heavy Plank",
							clientId = 41848,
							itemId = 45300
						}
					}
				},
				{
					description = "Some description here",
					name = "Large Stone Mansion",
					clientId = 37016,
					depot = 64,
					tier = 5,
					size = 15,
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
							amount = 750,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemId = 48953
						},
						{
							amount = 250,
							name = "Dense Block",
							clientId = 41846,
							itemId = 45298
						},
						{
							amount = 500,
							name = "Stone Block",
							clientId = 41850,
							itemId = 45302
						},
						{
							amount = 100,
							name = "Heavy Plank",
							clientId = 41848,
							itemId = 45300
						},
						{
							amount = 10,
							name = "Royal Ornaments",
							clientId = 41849,
							itemId = 45301
						}
					}
				},
				{
					description = "Shack Stronghold",
					name = "Shack Stronghold",
					clientId = 38522,
					tier = 1,
					size = 22,
					price = 200000,
					itemId = 41974,
					house_upgrade = 14,
					house_rooms = 3,
					house_model = 13,
					materials = {}
				},
				{
					description = "Wood Stronghold",
					name = "Wood Stronghold",
					clientId = 38522,
					tier = 2,
					size = 22,
					price = 200000,
					itemId = 41974,
					house_upgrade = 15,
					house_rooms = 4,
					house_model = 14,
					materials = {}
				},
				{
					description = "Stone Stronghold",
					name = "Stone Stronghold",
					clientId = 38522,
					tier = 3,
					size = 22,
					price = 200000,
					itemId = 41974,
					house_rooms = 4,
					house_model = 15,
					materials = {}
				},
				{
					description = "Stone Fort",
					name = "Stone Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 16,
					materials = {}
				},
				{
					description = "Wooden Fort",
					name = "Wooden Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 17,
					materials = {}
				},
				{
					description = "Sandstone Fort",
					name = "Sandstone Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
					price = 200000,
					itemId = 41973,
					house_rooms = 4,
					house_model = 18,
					materials = {}
				},
				{
					description = "Darkwood Fort",
					name = "Darkwood Fort",
					clientId = 38521,
					tier = 1,
					size = 30,
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
					effort = 2,
					stackingType = 2,
					price = 68,
					itemId = 31847,
					gathering = {
						timeToMature = "1 hour",
						rewards = {
							{
								amount = 200,
								name = "experience"
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
					model = 26,
					name = "Carrot",
					clientId = 25133,
					effort = 5,
					stackingType = 2,
					price = 136,
					itemId = 31837,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								amount = 400,
								name = "experience"
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
					model = 27,
					name = "Wheat",
					clientId = 30284,
					effort = 15,
					stackingType = 2,
					price = 340,
					itemId = 31851,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								amount = 1200,
								name = "experience"
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
					model = 28,
					name = "Corn",
					clientId = 25130,
					effort = 37,
					stackingType = 2,
					price = 840,
					itemId = 31839,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								amount = 3000,
								name = "experience"
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
					model = 29,
					name = "Cabbage",
					clientId = 30225,
					effort = 15,
					stackingType = 2,
					price = 340,
					itemId = 31864,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								amount = 1200,
								name = "experience"
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
					model = 30,
					name = "Onion",
					clientId = 25128,
					effort = 22,
					stackingType = 2,
					price = 500,
					itemId = 31862,
					gathering = {
						timeToMature = "9 hours",
						rewards = {
							{
								amount = 1800,
								name = "experience"
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
					model = 31,
					name = "Beans",
					clientId = 30219,
					effort = 37,
					stackingType = 2,
					price = 840,
					itemId = 31863,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								amount = 3000,
								name = "experience"
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
					model = 32,
					name = "Pumpkin",
					clientId = 30234,
					effort = 60,
					stackingType = 2,
					price = 1320,
					itemId = 31848,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								amount = 4800,
								name = "experience"
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
					model = 33,
					name = "Pea",
					clientId = 30231,
					effort = 48,
					stackingType = 2,
					price = 1080,
					itemId = 31845,
					gathering = {
						timeToMature = "19.5 hours",
						rewards = {
							{
								amount = 3900,
								name = "experience"
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
					model = 34,
					name = "Garlic",
					clientId = 30228,
					effort = 41,
					stackingType = 2,
					price = 920,
					itemId = 31841,
					gathering = {
						timeToMature = "16.5 hours",
						rewards = {
							{
								amount = 3300,
								name = "experience"
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
					model = 35,
					name = "Brocolli",
					clientId = 30222,
					effort = 37,
					stackingType = 2,
					price = 840,
					itemId = 31836,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								amount = 3000,
								name = "experience"
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
					clientId = 25129,
					effort = 71,
					stackingType = 2,
					model = 36,
					price = 1580,
					itemId = 31846,
					gathering = {
						timeToMature = "28.5 hours",
						rewards = {
							{
								amount = 5700,
								name = "experience"
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
					model = 37,
					name = "Grape",
					clientId = 30255,
					effort = 15,
					stackingType = 2,
					price = 340,
					itemId = 31842,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								amount = 1200,
								name = "experience"
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
					model = 38,
					name = "Apple",
					clientId = 34246,
					effort = 150,
					stackingType = 3,
					price = 3300,
					itemId = 31833,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								amount = 6000,
								name = "experience"
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
					model = 39,
					name = "Cotton",
					clientId = 34249,
					effort = 90,
					stackingType = 3,
					price = 1980,
					itemId = 31840,
					gathering = {
						timeToMature = "4.5 hours",
						rewards = {
							{
								amount = 3600,
								name = "experience"
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
					model = 40,
					name = "Blueberry",
					clientId = 30246,
					effort = 15,
					stackingType = 2,
					price = 340,
					itemId = 31835,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								amount = 1200,
								name = "experience"
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
					model = 41,
					name = "Orange",
					clientId = 34250,
					effort = 300,
					stackingType = 3,
					price = 6600,
					itemId = 31844,
					gathering = {
						timeToMature = "15 hours",
						rewards = {
							{
								amount = 12000,
								name = "experience"
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
					model = 42,
					name = "Strawberry",
					clientId = 30261,
					effort = 18,
					stackingType = 2,
					price = 420,
					itemId = 31849,
					gathering = {
						timeToMature = "7.5 hours",
						rewards = {
							{
								amount = 1500,
								name = "experience"
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
					model = 43,
					name = "Banana",
					clientId = 34247,
					effort = 480,
					stackingType = 3,
					price = 10540,
					itemId = 31834,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								amount = 19200,
								name = "experience"
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
					model = 44,
					name = "Watermelon",
					clientId = 30267,
					effort = 75,
					stackingType = 2,
					price = 1640,
					itemId = 31850,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								amount = 6000,
								name = "experience"
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
					model = 45,
					name = "Moonberry",
					clientId = 30281,
					effort = 52,
					stackingType = 2,
					price = 1160,
					itemId = 31843,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								amount = 4200,
								name = "experience"
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
					model = 46,
					name = "Acorn",
					clientId = 34245,
					effort = 960,
					stackingType = 3,
					price = 21000,
					itemId = 31832,
					gathering = {
						timeToMature = "48 hours",
						rewards = {
							{
								amount = 38400,
								name = "experience"
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
					model = 47,
					name = "Sunberry",
					clientId = 30264,
					effort = 75,
					stackingType = 2,
					price = 1640,
					itemId = 31865,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								amount = 6000,
								name = "experience"
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
					clientId = 34248,
					effort = 420,
					stackingType = 3,
					model = 48,
					price = 9200,
					itemId = 31838,
					gathering = {
						timeToMature = "21 hours",
						rewards = {
							{
								amount = 16800,
								name = "experience"
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
					clientId = 34361,
					effort = 100,
					stackingType = 1,
					model = 1,
					price = 920,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								amount = 4000,
								name = "experience"
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
								amount = 1600,
								name = "experience"
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
					clientId = 34461,
					effort = 100,
					stackingType = 1,
					model = 9,
					price = 920,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								amount = 4000,
								name = "experience"
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
								amount = 1600,
								name = "experience"
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
					clientId = 34365,
					effort = 160,
					model = 3,
					stackingType = 1,
					price = 920,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								amount = 6400,
								name = "experience"
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
					clientId = 35083,
					effort = 130,
					stackingType = 1,
					model = 11,
					price = 1600,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								amount = 5200,
								name = "experience"
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
								amount = 2000,
								name = "experience"
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
					clientId = 35085,
					effort = 190,
					model = 13,
					stackingType = 1,
					price = 1160,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								amount = 7600,
								name = "experience"
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
					clientId = 34363,
					effort = 240,
					stackingType = 1,
					model = 5,
					price = 2300,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								amount = 9600,
								name = "experience"
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
								amount = 4000,
								name = "experience"
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
					clientId = 34367,
					effort = 400,
					stackingType = 1,
					model = 7,
					price = 2300,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								amount = 16000,
								name = "experience"
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
								amount = 2400,
								name = "experience"
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
					clientId = 34362,
					effort = 224,
					stackingType = 1,
					model = 2,
					price = 2300,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								amount = 9000,
								name = "experience"
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
								amount = 3600,
								name = "experience"
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
					clientId = 34465,
					effort = 224,
					stackingType = 1,
					model = 10,
					price = 2300,
					butchering = {
						timeToMature = "5 hours",
						rewards = {
							{
								amount = 9000,
								name = "experience"
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
								amount = 3600,
								name = "experience"
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
					clientId = 34366,
					effort = 360,
					model = 4,
					stackingType = 1,
					price = 2700,
					butchering = {
						timeToMature = "8 hours",
						rewards = {
							{
								amount = 14400,
								name = "experience"
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
					clientId = 35082,
					effort = 292,
					stackingType = 1,
					model = 12,
					price = 3340,
					butchering = {
						timeToMature = "6.5 hours",
						rewards = {
							{
								amount = 11700,
								name = "experience"
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
								amount = 4500,
								name = "experience"
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
					clientId = 35084,
					effort = 428,
					model = 14,
					stackingType = 1,
					price = 3080,
					butchering = {
						timeToMature = "9.5 hours",
						rewards = {
							{
								amount = 17100,
								name = "experience"
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
					clientId = 34364,
					effort = 540,
					stackingType = 1,
					model = 6,
					price = 5100,
					butchering = {
						timeToMature = "12 hours",
						rewards = {
							{
								amount = 21600,
								name = "experience"
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
								amount = 9000,
								name = "experience"
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
					clientId = 34368,
					effort = 900,
					stackingType = 1,
					model = 8,
					price = 5100,
					butchering = {
						timeToMature = "20 hours",
						rewards = {
							{
								amount = 36000,
								name = "experience"
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
								amount = 5400,
								name = "experience"
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
					clientId = 37440,
					effort = 150,
					price = 2020,
					stackingType = 6,
					model = 15,
					gathering = {
						timeToMature = "30 hours",
						rewards = {
							{
								amount = 6000,
								name = "experience"
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
							amount = 1,
							name = "milk",
							clientId = 28929,
							id = 32361
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
					clientId = 44230,
					effort = 224,
					stackingType = 7,
					model = 16,
					price = 3080,
					gathering = {
						timeToMature = "45 hours",
						rewards = {
							{
								amount = 9000,
								name = "experience"
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
					model = 49,
					name = "Juniper",
					clientId = 34228,
					effort = 20,
					stackingType = 3,
					price = 440,
					itemId = 37658,
					gathering = {
						timeToMature = "2 hours",
						rewards = {
							{
								amount = 1600,
								name = "experience"
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
					model = 50,
					name = "Fir",
					clientId = 34237,
					effort = 80,
					stackingType = 3,
					price = 1760,
					itemId = 37667,
					gathering = {
						timeToMature = "8 hours",
						rewards = {
							{
								amount = 6400,
								name = "experience"
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
					model = 51,
					name = "Palm",
					clientId = 34234,
					effort = 60,
					stackingType = 3,
					price = 1320,
					itemId = 37664,
					gathering = {
						timeToMature = "6 hours",
						rewards = {
							{
								amount = 4800,
								name = "experience"
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
					model = 52,
					name = "Oak",
					clientId = 34231,
					effort = 240,
					stackingType = 3,
					price = 5280,
					itemId = 37661,
					gathering = {
						timeToMature = "24 hours",
						rewards = {
							{
								amount = 19000,
								name = "experience"
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
					model = 53,
					name = "Wildleaf",
					clientId = 34225,
					effort = 160,
					stackingType = 3,
					price = 3520,
					itemId = 37655,
					gathering = {
						timeToMature = "16 hours",
						rewards = {
							{
								amount = 13000,
								name = "experience"
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
					model = 54,
					name = "Willow",
					clientId = 34244,
					effort = 120,
					stackingType = 3,
					price = 2640,
					itemId = 37674,
					gathering = {
						timeToMature = "12 hours",
						rewards = {
							{
								amount = 9600,
								name = "experience"
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
					clientId = 38159,
					stackingType = 4,
					stackingHorizontalyOnly = true,
					model = 55,
					price = 300,
					itemId = 0,
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
					description = "Gain +%d%% additional experience from all sources.",
					name = "Small Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 1,
					tier = 1,
					price = 5000,
					upgrade = 6,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "Coarse Leather",
							clientId = 35432,
							itemid = 38864
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Small Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 2,
					tier = 1,
					price = 5000,
					upgrade = 7,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 8,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						},
						{
							amount = 15,
							name = "stone",
							clientId = 28946,
							itemid = 32378
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Small Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 3,
					tier = 1,
					price = 5000,
					upgrade = 8,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 6,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Small Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 4,
					tier = 1,
					price = 5000,
					upgrade = 9,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 5,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Small Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 5,
					tier = 1,
					price = 5000,
					upgrade = 10,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "coarse thread",
							clientId = 28971,
							itemid = 32403
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Medium Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 6,
					tier = 2,
					price = 10000,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Simple Bed",
							clientId = 37267,
							itemid = 40719
						},
						{
							amount = 1,
							name = "Cheap Rug",
							clientId = 42780,
							itemid = 46232
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Medium Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 7,
					tier = 2,
					price = 10000,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Stove",
							clientId = 37281,
							itemid = 40733
						},
						{
							amount = 1,
							name = "Weak Table",
							clientId = 42777,
							itemid = 46229
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Medium Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 8,
					tier = 2,
					price = 10000,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 2,
							name = "Copper Anvil",
							clientId = 42778,
							itemid = 46230
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Medium Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 9,
					tier = 2,
					price = 10000,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Work Bench",
							clientId = 37290,
							itemid = 40742
						},
						{
							amount = 2,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Medium Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 10,
					tier = 2,
					price = 10000,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Cloth Roll",
							clientId = 37226,
							itemid = 40678
						},
						{
							amount = 1,
							name = "Thread Spool",
							clientId = 37288,
							itemid = 40740
						},
						{
							amount = 1,
							name = "Frail Loom",
							clientId = 42781,
							itemid = 46233
						}
					},
					size = {
						x = 3,
						y = 3
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Small Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 11,
					tier = 1,
					price = 5000,
					upgrade = 16,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "Coarse Leather",
							clientId = 35432,
							itemid = 38864
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Small Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 12,
					tier = 1,
					price = 5000,
					upgrade = 17,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 8,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						},
						{
							amount = 15,
							name = "stone",
							clientId = 28946,
							itemid = 32378
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Small Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 13,
					tier = 1,
					price = 5000,
					upgrade = 18,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 6,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Small Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 14,
					tier = 1,
					price = 5000,
					upgrade = 19,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 5,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Small Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 15,
					tier = 1,
					price = 5000,
					upgrade = 20,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "coarse thread",
							clientId = 28971,
							itemid = 32403
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Medium Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 16,
					tier = 2,
					price = 10000,
					upgrade = 21,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Simple Bed",
							clientId = 37267,
							itemid = 40719
						},
						{
							amount = 1,
							name = "Cheap Rug",
							clientId = 42780,
							itemid = 46232
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Medium Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 17,
					tier = 2,
					price = 10000,
					upgrade = 22,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Stove",
							clientId = 37281,
							itemid = 40733
						},
						{
							amount = 1,
							name = "Weak Table",
							clientId = 42777,
							itemid = 46229
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Medium Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 18,
					tier = 2,
					price = 10000,
					upgrade = 23,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 2,
							name = "Copper Anvil",
							clientId = 42778,
							itemid = 46230
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Medium Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 19,
					tier = 2,
					price = 10000,
					upgrade = 24,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Work Bench",
							clientId = 37290,
							itemid = 40742
						},
						{
							amount = 2,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Medium Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 20,
					tier = 2,
					price = 10000,
					upgrade = 25,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Cloth Roll",
							clientId = 37226,
							itemid = 40678
						},
						{
							amount = 1,
							name = "Thread Spool",
							clientId = 37288,
							itemid = 40740
						},
						{
							amount = 1,
							name = "Frail Loom",
							clientId = 42781,
							itemid = 46233
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Large Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 21,
					tier = 3,
					price = 50000,
					upgrade = 26,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Comfortable Bed",
							clientId = 37228,
							itemid = 40680
						},
						{
							amount = 1,
							name = "Carpet",
							clientId = 37225,
							itemid = 40677
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Large Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 22,
					tier = 3,
					price = 50000,
					upgrade = 27,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Stove",
							clientId = 37281,
							itemid = 40733
						},
						{
							amount = 1,
							name = "Square Table",
							clientId = 37279,
							itemid = 40731
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Large Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 23,
					tier = 3,
					price = 50000,
					upgrade = 28,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Forging Tools",
							clientId = 37234,
							itemid = 40686
						},
						{
							amount = 1,
							name = "Anvil",
							clientId = 37217,
							itemid = 40669
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Furnace",
							clientId = 37235,
							itemid = 40687
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Large Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 24,
					tier = 3,
					price = 50000,
					upgrade = 29,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Superior Work Bench",
							clientId = 37287,
							itemid = 40739
						},
						{
							amount = 1,
							name = "Woodwork Tools",
							clientId = 37289,
							itemid = 40741
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Large Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 25,
					tier = 3,
					price = 50000,
					upgrade = 30,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Refined Cloth Roll",
							clientId = 37262,
							itemid = 40714
						},
						{
							amount = 1,
							name = "Thread Spool",
							clientId = 37288,
							itemid = 40740
						},
						{
							amount = 1,
							name = "Simple Loom",
							clientId = 42783,
							itemid = 46235
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Grand Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 26,
					tier = 4,
					price = 100000,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Bed",
							clientId = 37245,
							itemid = 40697
						},
						{
							amount = 1,
							name = "Luxury Carpet",
							clientId = 37246,
							itemid = 40698
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						},
						{
							amount = 1,
							name = "Fireplace",
							clientId = 37231,
							itemid = 40683
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Grand Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 27,
					tier = 4,
					price = 100000,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Stove",
							clientId = 37221,
							itemid = 40673
						},
						{
							amount = 1,
							name = "Sturdy Square Table",
							clientId = 37283,
							itemid = 40735
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Grand Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 28,
					tier = 4,
					price = 100000,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Superior Forging Tools",
							clientId = 37285,
							itemid = 40737
						},
						{
							amount = 2,
							name = "Anvil",
							clientId = 37217,
							itemid = 40669
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Furnace",
							clientId = 37235,
							itemid = 40687
						},
						{
							amount = 1,
							name = "Forge",
							clientId = 37232,
							itemid = 40684
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Grand Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 29,
					tier = 4,
					price = 100000,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Work Bench",
							clientId = 37222,
							itemid = 40674
						},
						{
							amount = 2,
							name = "Woodwork Tools",
							clientId = 37289,
							itemid = 40741
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Grand Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 30,
					tier = 4,
					price = 100000,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Cloth Roll",
							clientId = 37247,
							itemid = 40699
						},
						{
							amount = 1,
							name = "Luxury Thread Spool",
							clientId = 37248,
							itemid = 40700
						},
						{
							amount = 2,
							name = "Simple Loom",
							clientId = 42783,
							itemid = 46235
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						}
					},
					size = {
						x = 3,
						y = 4
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Small Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 31,
					tier = 1,
					price = 5000,
					upgrade = 36,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "Coarse Leather",
							clientId = 35432,
							itemid = 38864
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Small Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 32,
					tier = 1,
					price = 5000,
					upgrade = 37,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 8,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						},
						{
							amount = 15,
							name = "stone",
							clientId = 28946,
							itemid = 32378
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Small Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 33,
					tier = 1,
					price = 5000,
					upgrade = 38,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 6,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Small Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 34,
					tier = 1,
					price = 5000,
					upgrade = 39,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 5,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "copper ingot",
							clientId = 28726,
							itemid = 32158
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Small Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 35,
					tier = 1,
					price = 5000,
					upgrade = 40,
					materials = {
						{
							amount = 5,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 3,
							name = "rough plank",
							clientId = 28744,
							itemid = 32176
						},
						{
							amount = 2,
							name = "coarse thread",
							clientId = 28971,
							itemid = 32403
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Medium Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 36,
					tier = 2,
					price = 10000,
					upgrade = 41,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Simple Bed",
							clientId = 37267,
							itemid = 40719
						},
						{
							amount = 1,
							name = "Cheap Rug",
							clientId = 42780,
							itemid = 46232
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Medium Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 37,
					tier = 2,
					price = 10000,
					upgrade = 42,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Stove",
							clientId = 37281,
							itemid = 40733
						},
						{
							amount = 1,
							name = "Weak Table",
							clientId = 42777,
							itemid = 46229
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Medium Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 38,
					tier = 2,
					price = 10000,
					upgrade = 43,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 2,
							name = "Copper Anvil",
							clientId = 42778,
							itemid = 46230
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Medium Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 39,
					tier = 2,
					price = 10000,
					upgrade = 44,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Work Bench",
							clientId = 37290,
							itemid = 40742
						},
						{
							amount = 2,
							name = "Basic Tools",
							clientId = 42784,
							itemid = 46236
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Medium Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 40,
					tier = 2,
					price = 10000,
					upgrade = 45,
					materials = {
						{
							amount = 10,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Cloth Roll",
							clientId = 37226,
							itemid = 40678
						},
						{
							amount = 1,
							name = "Thread Spool",
							clientId = 37288,
							itemid = 40740
						},
						{
							amount = 1,
							name = "Frail Loom",
							clientId = 42781,
							itemid = 46233
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Large Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 41,
					tier = 3,
					price = 50000,
					upgrade = 46,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Comfortable Bed",
							clientId = 37228,
							itemid = 40680
						},
						{
							amount = 1,
							name = "Carpet",
							clientId = 37225,
							itemid = 40677
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Large Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 42,
					tier = 3,
					price = 50000,
					upgrade = 47,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Stove",
							clientId = 37281,
							itemid = 40733
						},
						{
							amount = 1,
							name = "Square Table",
							clientId = 37279,
							itemid = 40731
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Large Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 43,
					tier = 3,
					price = 50000,
					upgrade = 48,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Forging Tools",
							clientId = 37234,
							itemid = 40686
						},
						{
							amount = 1,
							name = "Anvil",
							clientId = 37217,
							itemid = 40669
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Furnace",
							clientId = 37235,
							itemid = 40687
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Large Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 44,
					tier = 3,
					price = 50000,
					upgrade = 49,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Superior Work Bench",
							clientId = 37287,
							itemid = 40739
						},
						{
							amount = 1,
							name = "Woodwork Tools",
							clientId = 37289,
							itemid = 40741
						},
						{
							amount = 2,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						},
						{
							amount = 1,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Large Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 45,
					tier = 3,
					price = 50000,
					upgrade = 50,
					materials = {
						{
							amount = 15,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Refined Cloth Roll",
							clientId = 37262,
							itemid = 40714
						},
						{
							amount = 1,
							name = "Thread Spool",
							clientId = 37288,
							itemid = 40740
						},
						{
							amount = 1,
							name = "Simple Loom",
							clientId = 42783,
							itemid = 46235
						},
						{
							amount = 1,
							name = "Storage Container",
							clientId = 37280,
							itemid = 40732
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Grand Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 46,
					tier = 4,
					price = 100000,
					upgrade = 51,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Bed",
							clientId = 37245,
							itemid = 40697
						},
						{
							amount = 1,
							name = "Luxury Carpet",
							clientId = 37246,
							itemid = 40698
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						},
						{
							amount = 1,
							name = "Fireplace",
							clientId = 37231,
							itemid = 40683
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Grand Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 47,
					tier = 4,
					price = 100000,
					upgrade = 52,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Stove",
							clientId = 37221,
							itemid = 40673
						},
						{
							amount = 1,
							name = "Sturdy Square Table",
							clientId = 37283,
							itemid = 40735
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Grand Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 48,
					tier = 4,
					price = 100000,
					upgrade = 53,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Superior Forging Tools",
							clientId = 37285,
							itemid = 40737
						},
						{
							amount = 2,
							name = "Anvil",
							clientId = 37217,
							itemid = 40669
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Furnace",
							clientId = 37235,
							itemid = 40687
						},
						{
							amount = 1,
							name = "Forge",
							clientId = 37232,
							itemid = 40684
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Grand Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 49,
					tier = 4,
					price = 100000,
					upgrade = 54,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Work Bench",
							clientId = 37222,
							itemid = 40674
						},
						{
							amount = 2,
							name = "Woodwork Tools",
							clientId = 37289,
							itemid = 40741
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Grand Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 50,
					tier = 4,
					price = 100000,
					upgrade = 55,
					materials = {
						{
							amount = 20,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Cloth Roll",
							clientId = 37247,
							itemid = 40699
						},
						{
							amount = 1,
							name = "Luxury Thread Spool",
							clientId = 37248,
							itemid = 40700
						},
						{
							amount = 2,
							name = "Simple Loom",
							clientId = 42783,
							itemid = 46235
						},
						{
							amount = 1,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 1,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Gain +%d%% additional experience from all sources.",
					name = "Royal Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 51,
					tier = 5,
					price = 250000,
					materials = {
						{
							amount = 25,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Bed",
							clientId = 37245,
							itemid = 40697
						},
						{
							amount = 1,
							name = "Luxury Carpet",
							clientId = 37246,
							itemid = 40698
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						},
						{
							amount = 1,
							name = "Fireplace",
							clientId = 37231,
							itemid = 40683
						},
						{
							amount = 5,
							name = "Royal Ornaments",
							clientId = 41849,
							itemid = 45301
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when cooking.",
					name = "Royal Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 52,
					tier = 5,
					price = 250000,
					materials = {
						{
							amount = 25,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Stove",
							clientId = 37221,
							itemid = 40673
						},
						{
							amount = 1,
							name = "Sturdy Square Table",
							clientId = 37283,
							itemid = 40735
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						},
						{
							amount = 5,
							name = "Royal Ornaments",
							clientId = 41849,
							itemid = 45301
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when blacksmithing.",
					name = "Royal Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 53,
					tier = 5,
					price = 250000,
					materials = {
						{
							amount = 25,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Forging Tools",
							clientId = 37220,
							itemid = 40672
						},
						{
							amount = 1,
							name = "Forgemaster Anvil",
							clientId = 37233,
							itemid = 40685
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 4,
							name = "Furnace",
							clientId = 37235,
							itemid = 40687
						},
						{
							amount = 1,
							name = "Forge",
							clientId = 37232,
							itemid = 40684
						},
						{
							amount = 5,
							name = "Royal Ornaments",
							clientId = 41849,
							itemid = 45301
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when carpenting.",
					name = "Royal Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 54,
					tier = 5,
					price = 250000,
					materials = {
						{
							amount = 25,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Artisan Work Bench",
							clientId = 37222,
							itemid = 40674
						},
						{
							amount = 1,
							name = "Improved Woodwork Tools",
							clientId = 37236,
							itemid = 40688
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Chair",
							clientId = 37227,
							itemid = 40679
						},
						{
							amount = 1,
							name = "Armoires",
							clientId = 37219,
							itemid = 40671
						},
						{
							amount = 5,
							name = "Royal Ornaments",
							clientId = 41849,
							itemid = 45301
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				{
					description = "Additional +%d labor when weaving.",
					name = "Royal Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 55,
					tier = 5,
					price = 250000,
					materials = {
						{
							amount = 25,
							name = "Ravencrest Emblem",
							clientId = 45501,
							itemid = 48953
						},
						{
							amount = 1,
							name = "Luxury Cloth Roll",
							clientId = 37247,
							itemid = 40699
						},
						{
							amount = 2,
							name = "Luxury Thread Spool",
							clientId = 37248,
							itemid = 40700
						},
						{
							amount = 1,
							name = "Loom",
							clientId = 37244,
							itemid = 40696
						},
						{
							amount = 2,
							name = "Sturdy Container",
							clientId = 42782,
							itemid = 46234
						},
						{
							amount = 2,
							name = "Cabinet",
							clientId = 37224,
							itemid = 40676
						},
						{
							amount = 5,
							name = "Royal Ornaments",
							clientId = 41849,
							itemid = 45301
						}
					},
					size = {
						x = 4,
						y = 5
					}
				},
				[60] = {
					description = "Allows you to store up to 21 objects inside it.",
					name = "Small Chest",
					clientId = 38571,
					category = "storage",
					model = 60,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[61] = {
					description = "Allows you to store up to 35 objects inside it.",
					name = "Medium Chest",
					clientId = 38572,
					category = "storage",
					model = 61,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[62] = {
					description = "Allows you to store up to 70 objects inside it.",
					name = "Large Chest",
					clientId = 38573,
					category = "storage",
					model = 62,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[63] = {
					description = "Allows you to store up to 105 objects inside it.",
					name = "Grand Chest",
					clientId = 38574,
					category = "storage",
					model = 63,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[64] = {
					description = "Allows you to store up to 210 objects inside it.",
					name = "Royal Chest",
					clientId = 38575,
					category = "storage",
					model = 64,
					tier = 1,
					price = 0,
					materials = {},
					size = {
						x = 1,
						y = 1
					}
				},
				[65] = {
					description = "Gain +%d%% additional experience from all sources.",
					name = "Small Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 65,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[66] = {
					description = "Additional +%d labor when cooking.",
					name = "Small Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 66,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[67] = {
					description = "Additional +%d labor when blacksmithing.",
					name = "Small Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 67,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[68] = {
					description = "Additional +%d labor when carpenting.",
					name = "Small Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 68,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[69] = {
					description = "Additional +%d labor when weaving.",
					name = "Small Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 69,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[70] = {
					description = "Gain +%d%% additional experience from all sources.",
					name = "Small Bedroom",
					clientId = "chest",
					category = "bedroom",
					model = 70,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[71] = {
					description = "Additional +%d labor when cooking.",
					name = "Small Kitchen",
					clientId = "cooking",
					category = "cooking",
					model = 71,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[72] = {
					description = "Additional +%d labor when blacksmithing.",
					name = "Small Armory",
					clientId = "blacksmithing",
					category = "blacksmithing",
					model = 72,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[73] = {
					description = "Additional +%d labor when carpenting.",
					name = "Small Workshop",
					clientId = "carpentry",
					category = "carpentry",
					model = 73,
					tier = 1,
					price = 5000,
					materials = {},
					size = {
						x = 5,
						y = 6
					}
				},
				[74] = {
					description = "Additional +%d labor when weaving.",
					name = "Small Weaving",
					clientId = "weaving",
					category = "weaving",
					model = 74,
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

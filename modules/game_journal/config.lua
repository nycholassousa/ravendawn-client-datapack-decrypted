-- chunkname: @/modules/game_journal/config.lua

PROGRESSION_TYPE_CUMULATIVE = 1
PROGRESSION_TYPE_NON_CUMULATIVE = 2
regionIdToName = {
	[128] = "Harbor Island",
	[32] = "Sajecho Island",
	[256] = "Hadarak Desert",
	[2208] = "Pirate Isles",
	[2048] = "Gilead Island",
	[65536] = "Zephyr Vale",
	[512] = "Glaceforde"
}
artifacts = {
	order = {
		"Sajecho Island",
		"Gilead Island",
		"Harbor Island",
		"Pirate Isles",
		"Hadarak Desert",
		"Zephyr Vale",
		"Glaceforde"
	},
	regions = {
		["Sajecho Island"] = {
			artifact_icon = "lost_shipments",
			total_artifacts = 140,
			artifact_name = "Lost Shipments",
			type = PROGRESSION_TYPE_CUMULATIVE,
			acquire = {
				{
					limit = 30,
					description = "Obtain 30 Lost Shipments by completing the quest \"A Pirate's Life\".",
					positions = {
						{
							x = 4785,
							z = 6,
							y = 5009,
							size = 7
						}
					}
				},
				{
					description = "Slaying creatures in Sajecho Island will occasionally result in finding Lost Shipments.",
					limit = 95
				},
				{
					description = "Obtain Lost Shipments by participating in dynamic and environmental events from Sajecho.",
					limit = 5
				},
				{
					description = "Obtain 10 Lost Shipments by helping Fisher in Orca Bay.",
					limit = 10
				}
			},
			rewards = {
				{
					requirement = 10,
					description = "Unlocks access to the docks south and west of Sajecho Island.",
					positions = {
						{
							x = 4672,
							z = 7,
							y = 5337,
							size = 17
						},
						{
							x = 4672,
							z = 6,
							y = 5337,
							size = 17
						},
						{
							x = 4439,
							z = 7,
							y = 5274,
							size = 17
						},
						{
							x = 4439,
							z = 6,
							y = 5274,
							size = 17
						}
					}
				},
				{
					requirement = 40,
					description = "Unlocks a special quest from Federic in Eelsnout, western Sajecho.",
					positions = {
						{
							x = 4430,
							z = 7,
							y = 5239,
							size = 7
						}
					}
				},
				{
					requirement = 80,
					description = "Enhance your reputation engaging in conversations with the citizens of Orca Bay; unlocks a creature product enthusiast who is now open to trade.",
					positions = {
						{
							x = 4692,
							z = 7,
							y = 5294,
							size = 71
						}
					}
				},
				{
					requirement = 120,
					description = "Unlocks access to the secret goblin workshop in Sajecho.",
					positions = {
						{
							x = 4738,
							z = 7,
							y = 5167,
							size = 7
						},
						{
							z = 12,
							x = 4794,
							y = 5107,
							size = 7,
							floorInfo = {
								at = 12
							}
						}
					}
				},
				{
					requirement = 140,
					description = "Chase Eagle, the legendary pirate captain, will offer a reward if you manage to find him in Sajecho.",
					positions = {
						{
							x = 4791,
							z = 7,
							y = 5135,
							size = 31
						}
					}
				}
			}
		},
		["Harbor Island"] = {
			type = PROGRESSION_TYPE_NON_CUMULATIVE,
			acquire = {
				{
					description = "Obtain Adamastor's Earring by defeating Captain Adamastor."
				},
				{
					description = "Slaying creatures in Harbor Island could lead to finding the Lost Earring."
				},
				{
					description = "Obtain Galien's earring by defeating Drunk General Galien."
				},
				{
					description = "Obtain the Forsaken Earring by completing the environmental quest \"Possessed by Resentment\"."
				},
				{
					description = "Collect all 4 unique Pirate Earrings in Harbor Island."
				}
			},
			rewards = {
				{
					artifact_name = "Adamastor's Earrings",
					artifact_icon = "adamastor's_earrings",
					description = "Unlocks access to all crafting stations in Seabreeze. Increases labor in all professions by 10.",
					positions = {
						{
							x = 3956,
							z = 6,
							y = 5137,
							size = 51
						}
					}
				},
				{
					artifact_name = "Lost Earrings",
					artifact_icon = "lost_earrings",
					description = "The private lounge of the Freelooters Syndicate in Seabreeze is now open to you, offering opportunities for trade and cosmetic obtainment.",
					positions = {
						{
							x = 3956,
							z = 7,
							y = 5137,
							size = 7
						}
					}
				},
				{
					artifact_name = "Galien's Earrings",
					artifact_icon = "galien's_earrings",
					description = "Krz'k, a strange zorian, will grant you passage into the Maw Caverns, below Galien's Island.",
					positions = {
						{
							x = 4321,
							z = 8,
							y = 4900,
							size = 17
						}
					}
				},
				{
					artifact_name = "Phantom Earrings",
					artifact_icon = "phantom_earrings",
					description = "A Spirit of Redemption will open the path to the secret dungeon below Harbor Island's Lighthouse.",
					positions = {
						{
							x = 3916,
							z = 8,
							y = 4986,
							size = 17
						}
					}
				},
				{
					artifact_icon = "all_earrings",
					artifact_name = "All Earrings",
					total_artifacts = 4,
					description = "Chase Eagle, the legendary pirate captain, will offer a reward if you manage to find him in Harbor Island.",
					positions = {
						{
							x = 4055,
							z = 7,
							y = 4917,
							size = 101
						}
					}
				}
			}
		},
		["Gilead Island"] = {
			artifact_icon = "ancient_rune",
			total_artifacts = 50,
			artifact_name = "Ancient Runes",
			type = PROGRESSION_TYPE_CUMULATIVE,
			acquire = {
				{
					description = "Fishing in the waters of Gilead Island will occasionally result in finding Ancient Runes.",
					limit = 10
				},
				{
					description = "Slaying Kaimans in Gilead Island will occasionally result in finding Ancient Runes.",
					limit = 15
				},
				{
					description = "Slaying Saurians in Gilead Island will occasionally result in finding Ancient Runes.",
					limit = 15
				},
				{
					description = "Obtain Ancient Runes by participating in dynamic and environmental events from Gilead.",
					limit = 10
				}
			},
			rewards = {
				{
					requirement = 10,
					description = "Allows you entry into Gilead's Museum, providing access to new quests and cosmetic obtainment.",
					positions = {
						{
							x = 4323,
							z = 7,
							y = 5869,
							size = 7
						}
					}
				},
				{
					requirement = 20,
					description = "Nelson, the curator of Gilead's Museum is open to trade rune enchantments.",
					positions = {
						{
							x = 4311,
							z = 6,
							y = 5868,
							size = 7
						}
					}
				},
				{
					requirement = 30,
					description = "Nelson has expanded the catalog of runes he's willing to trade.",
					positions = {
						{
							x = 4311,
							z = 6,
							y = 5868,
							size = 7
						}
					}
				},
				{
					requirement = 40,
					description = "Unlocks a special quest from a ghostly presence in Rumalos, western Gilead.",
					positions = {
						{
							x = 3987,
							z = 7,
							y = 5583,
							size = 7
						}
					}
				},
				{
					requirement = 50,
					description = "Chase Eagle, the legendary pirate captain, will offer a reward if you manage to find him in Gilead Island.",
					positions = {
						{
							x = 4089,
							z = 7,
							y = 5761,
							size = 71
						}
					}
				}
			}
		},
		["Pirate Isles"] = {
			type = PROGRESSION_TYPE_NON_CUMULATIVE,
			acquire = {
				{
					description = "Find Chase Eagle after obtaining all the Artifacts from Sajecho Island."
				},
				{
					description = "Find Chase Eagle after obtaining all the Artifacts from Gilead Island."
				},
				{
					description = "Find Chase Eagle after obtaining all the Artifacts from Harbor Island."
				}
			},
			rewards = {
				{
					artifact_name = "Patchwork Jolly Roger",
					artifact_icon = "sajecho_jolly_roger",
					description = "Unlocks access to hidden pirate docks on remote beach islands scattered at sea.",
					positions = {
						{
							x = 3975,
							z = 7,
							y = 5274,
							size = 17
						}
					}
				},
				{
					artifact_name = "Gilead Jolly Roger",
					artifact_icon = "gilead_jolly_roger",
					description = "Unlocks access to hidden pirate docks on remote jungle islands scattered at sea.",
					positions = {
						{
							x = 4569,
							z = 7,
							y = 5533,
							size = 17
						}
					}
				},
				{
					artifact_name = "Charred Jolly Roger",
					artifact_icon = "harbor_jolly_roger",
					description = "Unlocks access to hidden pirate docks on remote rocky islands scattered at sea.",
					positions = {
						{
							x = 4502,
							z = 7,
							y = 4961,
							size = 17
						}
					}
				}
			}
		},
		["Hadarak Desert"] = {
			artifact_icon = "ankh",
			total_artifacts = 10,
			artifact_name = "Ankh",
			type = PROGRESSION_TYPE_CUMULATIVE,
			acquire = {
				{
					limit = 1,
					description = "Complete part of the story quest \"Trial of the Dunes\" to obtain an Ankh.",
					positions = {
						{
							x = 5327,
							z = 6,
							y = 5494,
							size = 7
						}
					}
				},
				{
					limit = 1,
					description = "Complete the story quest \"Haran's Contract\" to obtain an Ankh.",
					positions = {
						{
							x = 5531,
							z = 7,
							y = 5682,
							size = 7
						}
					}
				},
				{
					description = "Slaying the Ghaz in Hadarak Desert might result in discovering an Ankh.",
					limit = 1
				},
				{
					description = "Search the treasures at the Temple of Alq'walen to obtain an Ankh.",
					limit = 1
				},
				{
					limit = 1,
					description = "Exchange Orcish Effigies with Adad, south of Hadarak Ruins, to obtain an Ankh.",
					positions = {
						{
							x = 5785,
							z = 7,
							y = 5663,
							size = 7
						}
					}
				},
				{
					description = "Complete the dynamic quest \"A Sludging Mess\" to obtain an Ankh as a potential reward.",
					limit = 1
				},
				{
					limit = 1,
					description = "Exchange Cave Roses with Eshmun, at Draz Narda, to obtain an Ankh.",
					positions = {
						{
							x = 5371,
							z = 5,
							y = 5508,
							size = 7
						}
					}
				},
				{
					limit = 1,
					description = "Exchange Minotaur Horns with Amilcar, at Kabbar Palace, to obtain an Ankh.",
					positions = {
						{
							x = 4943,
							z = 5,
							y = 5300,
							size = 7
						}
					}
				},
				{
					description = "Slaying either Jackals or Djinns in the Riftsand might result in discovering an Ankh.",
					limit = 1
				},
				{
					description = "Exchange Aether Dust with Dido, at Sandscar Sanctuary, or Beastly Distillate with Belshazzar, in the Temple of Quorras, to obtain an Ankh.",
					limit = 1
				}
			},
			rewards = {
				{
					requirement = 1,
					description = "Unlocks the ancient door at the Temple of Alq'walen, as pointed out by Varsha near Dras Narda.",
					positions = {
						{
							x = 5362,
							z = 9,
							y = 5541,
							size = 17
						}
					}
				},
				{
					requirement = 2,
					description = "Unlocks the ancient door at Kabbar Palace.",
					positions = {
						{
							x = 4948,
							z = 7,
							y = 5299,
							size = 7
						}
					}
				},
				{
					requirement = 3,
					description = "Unlocks the ancient door in the city of Dras Narda, where a mystical being deals in rune enchantments.",
					positions = {
						{
							x = 5361,
							z = 7,
							y = 5518,
							size = 7
						}
					}
				},
				{
					requirement = 4,
					description = "Unlocks the ancient door at Broken Horn Bluff, the underground minotaur city in eastern Hadarak.",
					positions = {
						{
							x = 5686,
							z = 7,
							y = 5416,
							size = 17
						},
						{
							x = 5685,
							z = 8,
							y = 5489,
							size = 7
						}
					}
				},
				{
					requirement = 5,
					description = "Unlocks the ancient door at Hadarak Ruins, allowing access to a rune merchant and cosmetic obtainment.",
					positions = {
						{
							x = 5841,
							z = 7,
							y = 5562,
							size = 7
						}
					}
				},
				{
					requirement = 6,
					description = "Unlocks the ancient door to the lower levels beneath the Temple of Alq'walen.",
					positions = {
						{
							x = 5339,
							z = 11,
							y = 5565,
							size = 7
						}
					}
				},
				{
					requirement = 7,
					description = "Unlocks the ancient door connecting Hadarak to Riftsand.",
					positions = {
						{
							x = 5851,
							z = 8,
							y = 5530,
							size = 7
						}
					}
				},
				{
					requirement = 8,
					description = "Unlocks either an ancient door located in the Temple of Quorras or one in Sandscar Sanctuary.",
					positions = {
						{
							z = 8,
							x = 5965,
							y = 5555,
							size = 7,
							callback = function()
								local questLog = modules.game_questlog.GameQuestLog

								return questLog:isQuestActive("Sands of Conquest") or questLog:isQuestCompleted("Sands of Conquest")
							end
						},
						{
							z = 7,
							x = 6025,
							y = 5342,
							size = 7,
							callback = function()
								local questLog = modules.game_questlog.GameQuestLog

								return questLog:isQuestActive("Veil of Scars") or questLog:isQuestCompleted("Veil of Scars")
							end
						}
					}
				},
				{
					requirement = 9,
					description = "Unlocks the ancient door deep in Riftsand caverns.",
					positions = {
						{
							x = 6010,
							z = 9,
							y = 5505,
							size = 7
						}
					}
				},
				{
					requirement = 10,
					description = "Unlocks the last ancient door deep in Riftsand caverns.",
					positions = {
						{
							x = 5912,
							z = 9,
							y = 5420,
							size = 7
						}
					}
				}
			}
		},
		["Zephyr Vale"] = {
			artifact_icon = "ethereal_veil",
			total_artifacts = 6,
			artifact_name = "Ethereal Veil",
			type = PROGRESSION_TYPE_CUMULATIVE,
			acquire = {
				{
					limit = 1,
					description = "Complete the story quest \"A Recipe for Dissolution\" to obtain 1 Ethereal Veil.",
					positions = {
						{
							x = 5844,
							z = 3,
							y = 5238,
							size = 7
						}
					}
				},
				{
					description = "Complete either of the dynamic quests \"An Escort to Truce\", \"An Escort to Bastion\" or \"An Escort to Defiance\" to obtain 1 Ethereal Veil.",
					limit = 1
				},
				{
					limit = 1,
					description = "Complete part of the story quest \"Into the Rising Sun\" to obtain 1 Ethereal Veil.",
					positions = {
						{
							x = 5955,
							z = 6,
							y = 4976,
							size = 7
						}
					}
				},
				{
					description = "Slay Hookmasks in Zephyr Vale to obtain 1 Ethereal Veil, with a low drop rate.",
					limit = 1
				},
				{
					description = "Slay Morningstars in Zephyr Vale to obtain 1 Ethereal Veil, with a low drop rate.",
					limit = 1
				},
				{
					description = "Complete the dynamic quest \"When the Eastern Wind Blows\" to obtain 1 Ethereal Veil.",
					limit = 1
				}
			},
			rewards = {
				{
					requirement = 1,
					description = "Unlocks the gateway into an exclusive alchemy laboratory in Bastion, granting access to a potion shop and cosmetic obtainment.",
					positions = {
						{
							x = 5630,
							z = 3,
							y = 5225,
							size = 7
						}
					}
				},
				{
					requirement = 2,
					description = "Unlocks access to a closed workshop in Firslight, the Morningstar's stronghold. Increases labor in all professions by 20.",
					positions = {
						{
							x = 6025,
							z = 7,
							y = 4937,
							size = 51
						}
					}
				},
				{
					requirement = 3,
					description = "Use the shrine of the area, as allowed by Andrea, a Morningstar Bishop residing in Firstlight.",
					positions = {
						{
							x = 6032,
							z = 4,
							y = 4999,
							size = 7
						}
					}
				},
				{
					requirement = 4,
					description = "Unlock access to the Morningstar Tower, guarded by Eamon.",
					positions = {
						{
							x = 6036,
							z = 4,
							y = 4902,
							size = 7
						}
					}
				},
				{
					description = "Creatures from the Morningstar Family will not attack you unless you attack them first or gather resources near them.",
					requirement = 5
				},
				{
					requirement = 6,
					description = "Receive the blessing of \"Zephyr Winds\" temporarily from Andrea, who now sees you as trustworthy, for a price.",
					positions = {
						{
							x = 6032,
							z = 4,
							y = 4999,
							size = 7
						}
					}
				}
			}
		},
		Glaceforde = {
			artifact_icon = "frozen_sigil",
			total_artifacts = 5,
			artifact_name = "Frozen Sigil",
			type = PROGRESSION_TYPE_CUMULATIVE,
			acquire = {
				{
					description = "Slaying magically proficient creatures in Glaceforde will occasionally result in finding a Frozen Sigil.",
					limit = 1
				},
				{
					description = "Exchange Igneous Ice Shards with Kalas, in Saint Alsek, the furthest city to the west in Glaceforde, to obtain a Frozen Sigil.",
					limit = 1
				},
				{
					limit = 1,
					description = "Complete the story quest \"Yeti More to Kill\" to obtain a Frozen Sigil.",
					positions = {
						{
							x = 4296,
							z = 6,
							y = 4271,
							size = 7
						}
					}
				},
				{
					description = "Exchange Oceanic Tears with Ivar in Far Naddod, the furthest village to the north in Glaceforde, to obtain a Frozen Sigil.",
					limit = 1
				},
				{
					limit = 1,
					description = "Complete the environmental quest \"The Wizard Frozen in Time\" for a chance to obtain a Frozen Sigil.",
					positions = {
						{
							x = 4603,
							z = 7,
							y = 4129,
							size = 7
						}
					}
				}
			},
			rewards = {
				{
					requirement = 1,
					description = "Ailsa, a priestess of Saint Alsek, now allows the use of Saint Alsek's Shrine.",
					positions = {
						{
							x = 4132,
							z = 6,
							y = 4184,
							size = 7
						}
					}
				},
				{
					requirement = 2,
					description = "Earns you the trust and respect of Steigard, spiritual guide of the Winterborn.",
					positions = {
						{
							x = 4413,
							z = 6,
							y = 4493,
							size = 7
						}
					}
				},
				{
					requirement = 3,
					description = "Unlocks access to the secret magical seal below Saint Alsek.",
					positions = {
						{
							x = 4132,
							z = 7,
							y = 4178,
							size = 17
						}
					}
				},
				{
					requirement = 4,
					description = "Ailsa will temporarily bestow \"Alsek's Blessing\", for a price. ",
					positions = {
						{
							x = 4132,
							z = 6,
							y = 4184,
							size = 7
						}
					}
				},
				{
					requirement = 5,
					description = "Unlocks access to the dock at Newvik.",
					positions = {
						{
							x = 4310,
							z = 7,
							y = 4258,
							size = 7
						}
					}
				}
			}
		}
	}
}

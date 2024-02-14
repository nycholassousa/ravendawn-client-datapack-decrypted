-- chunkname: @/modules/game_market/config.lua

dofile("marketable_items.lua")

ENABLE_RAVENCOINS = false
CATEGORY_ALL_ITEMS = 0
CATEGORY_RAVENCOIN = 127
DUMMY_RAVENCOIN_ITEMID = 1

if not ENABLE_RAVENCOINS then
	MarketableItemsByCategory[DUMMY_RAVENCOIN_ITEMID] = nil
	MarketableItemsById[DUMMY_RAVENCOIN_ITEMID] = nil
	MarketableItemsByTier[DUMMY_RAVENCOIN_ITEMID] = nil
	MarketableItemsByName.ravencoin = nil
end

maximumFilterAmount = 10
offersPerPage = 9
minLockDuration = 1500
offersPerPageActiveOffers = 8
offersPerPageCompletedOffers = 9
offersPerPageSimilarOffers = 4
minPricePerPiece = 20
taxCreateSellOfferMultiplier = 1.04
taxCreateSellOfferPremiumMultiplier = 1.02
taxCreateBuyOfferMultiplier = 1.08
taxCreateBuyOfferPremiumMultiplier = 1.04
taxSellOfferMultiplier = 0.96
taxSellOfferPremiumMultiplier = 0.98
maximumPrimaryAttributes = {
	[0] = 0,
	0,
	1,
	1,
	2,
	2,
	2
}
maximumSecondaryAttributes = {
	[0] = 0,
	0,
	0,
	1,
	1,
	2,
	3
}
maximumCraftingAttributes = {
	0,
	1,
	2
}
orderType = {
	nil,
	nil,
	nil,
	nil,
	"amount",
	"time",
	"price"
}
offerType = {
	sell_offers = 0,
	buy_offers = 1
}
activeOffersOrderType = {
	"transaction",
	"time",
	nil,
	nil,
	nil,
	"amount",
	"price"
}
completedOffersOrderType = {
	"transaction",
	"status",
	nil,
	nil,
	nil,
	"amount",
	"price"
}
similarOffersOrderType = {
	[2] = "amount",
	[3] = "price"
}
OFFER_STATE_ACTIVE = 1
OFFER_STATE_EXPIRED = 2
OFFER_STATE_BOUGHT_OUT = 3
OFFER_STATE_CANCELLED = 4
OFFER_STATE_COMPLETED = 5
HISTORY_TYPE_CREATE = 1
HISTORY_TYPE_CANCEL = 2
HISTORY_TYPE_BOUGHT = 3
HISTORY_TYPE_EXPIRE = 4
HISTORY_TYPE_COMPLETE = 5
HISTORY_TYPE_PREMIUM_COMPLETED_AWAITING = 6
HISTORY_TYPE_PREMIUM_EXPIRED_AWAITING = 7
offerStateText = {
	[HISTORY_TYPE_CANCEL] = "Cancelled",
	[HISTORY_TYPE_COMPLETE] = "Completed",
	[HISTORY_TYPE_EXPIRE] = "Expired",
	[HISTORY_TYPE_BOUGHT] = "Completed",
	[HISTORY_TYPE_PREMIUM_COMPLETED_AWAITING] = "Pending",
	[HISTORY_TYPE_PREMIUM_EXPIRED_AWAITING] = "Pending"
}
offerStateColor = {
	[HISTORY_TYPE_CANCEL] = "#fbfb79",
	[HISTORY_TYPE_COMPLETE] = "#77D463",
	[HISTORY_TYPE_EXPIRE] = "#FF5151",
	[HISTORY_TYPE_BOUGHT] = "#77D463",
	[HISTORY_TYPE_PREMIUM_COMPLETED_AWAITING] = "#fbfb79",
	[HISTORY_TYPE_PREMIUM_EXPIRED_AWAITING] = "#fbfb79"
}
OFFER_TYPE_SELL = 0
OFFER_TYPE_BUY = 1
categories = {
	weapons = {
		axes = {
			id = 1,
			index = 1
		},
		swords = {
			id = 2,
			index = 2
		},
		clubs = {
			id = 3,
			index = 3
		},
		daggers = {
			id = 4,
			index = 4
		},
		greataxes = {
			id = 5,
			index = 5
		},
		greatswords = {
			id = 6,
			index = 6
		},
		hammers = {
			id = 7,
			index = 7
		},
		["light blades"] = {
			id = 8,
			index = 8
		},
		["buckler shields"] = {
			id = 9,
			index = 9
		},
		["tower shields"] = {
			id = 54,
			index = 10
		},
		sceptres = {
			id = 10,
			index = 11
		},
		staves = {
			id = 11,
			index = 12
		},
		bows = {
			id = 12,
			index = 13
		}
	},
	equipment = {
		helmets = {
			id = 13,
			index = 1
		},
		armors = {
			id = 14,
			index = 2
		},
		legs = {
			id = 15,
			index = 3
		},
		boots = {
			id = 16,
			index = 4
		},
		amulets = {
			id = 17,
			index = 5
		},
		trinkets = {
			id = 18,
			index = 6
		},
		rings = {
			id = 19,
			index = 7
		}
	},
	["profession equipment"] = {
		fishing = {
			id = 20,
			index = 1
		},
		blacksmithing = {
			id = 21,
			index = 2
		},
		carpentry = {
			id = 22,
			index = 3
		},
		weaving = {
			id = 23,
			index = 4
		},
		cooking = {
			id = 24,
			index = 5
		}
	},
	enchantments = {
		weapons = {
			id = 25,
			index = 1
		},
		helmets = {
			id = 26,
			index = 2
		},
		armors = {
			id = 27,
			index = 3
		},
		legs = {
			id = 28,
			index = 4
		},
		boots = {
			id = 29,
			index = 5
		}
	},
	consumables = {
		["baked goods"] = {
			id = 30,
			index = 1
		},
		drinks = {
			id = 31,
			index = 2
		},
		meals = {
			id = 32,
			index = 3
		},
		potions = {
			id = 33,
			index = 4
		},
		elixirs = {
			id = 34,
			index = 5
		},
		poisons = {
			id = 35,
			index = 6
		},
		whetstones = {
			id = 36,
			index = 7
		},
		breeding = {
			id = 37,
			index = 8
		}
	},
	["raw gathering materials"] = {
		mining = {
			id = 38,
			index = 1
		},
		woodcutting = {
			id = 39,
			index = 2
		},
		farming = {
			id = 40,
			index = 3
		},
		husbandry = {
			id = 41,
			index = 4
		},
		fishing = {
			id = 42,
			index = 5
		}
	},
	["refined crafting materials"] = {
		blacksmithing = {
			id = 43,
			index = 1
		},
		carpentry = {
			id = 44,
			index = 2
		},
		weaving = {
			id = 45,
			index = 3
		},
		cooking = {
			id = 46,
			index = 4
		}
	},
	transports = {
		["ship parts"] = {
			id = 47,
			index = 1
		},
		["wagon parts"] = {
			id = 48,
			index = 2
		},
		moa = {
			id = 55,
			index = 3
		},
		["moa equipment"] = {
			id = 52,
			index = 4
		}
	},
	["cosmetic materials"] = {
		["outfit cosmetics"] = {
			id = 53,
			index = 1
		}
	},
	others = {
		infusions = {
			id = 49,
			index = 1
		},
		["creature products"] = {
			id = 50,
			index = 2
		},
		["creature trophies"] = {
			id = 56,
			index = 3
		},
		["housing rooms"] = {
			id = 51,
			index = 4
		}
	}
}
categoriesById = {}

for category, subcategories in pairs(categories) do
	for subcategory, data in pairs(subcategories) do
		categoriesById[data.id] = subcategory
	end
end

gradeCompatibleCategories = {
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	11,
	12,
	13,
	14,
	15,
	16,
	20,
	21,
	22,
	23,
	24,
	54
}
craftingAttributesCompatibleCategories = {
	21,
	22,
	23,
	24
}
attributesCompatibleCategories = {
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8,
	9,
	10,
	11,
	12,
	13,
	14,
	15,
	16,
	21,
	22,
	23,
	24,
	54
}
excludeGradeAndAttributesCategories = {
	17,
	18,
	19,
	25,
	26,
	27,
	28,
	29,
	30,
	31,
	32,
	33
}
categoriesOrder = {
	"weapons",
	"equipment",
	"profession equipment",
	"enchantments",
	"consumables",
	"raw gathering materials",
	"refined crafting materials",
	"transports",
	"cosmetic materials",
	"others"
}
filtersOrder = {
	"primary attribute",
	"secondary attribute",
	"armor type",
	"grade",
	"tier",
	"quality"
}
createOfferFiltersOrder = {
	"primary attribute",
	"secondary attribute"
}
filters = {
	["primary attribute"] = {
		"dexterity",
		"intelligence",
		"might",
		"vitality",
		"wisdom"
	},
	["secondary attribute"] = {
		"maximum health",
		"maximum mana",
		"weapon power",
		"spell power",
		"weapon defense",
		"spell defense",
		"haste",
		"healing power",
		"mana regeneration",
		"health regeneration",
		"impact",
		"precision"
	},
	["crafting attribute"] = {
		"touch",
		"synthesis"
	},
	["armor type"] = {
		"cloth",
		"leather",
		"plate"
	},
	grade = {
		"basic",
		"grand",
		"rare",
		"arcane",
		"celestial",
		"ascendant",
		"heroic",
		"mythic",
		"legendary",
		"legendary plus",
		"legendary max"
	},
	tier = {
		"tier 1",
		"tier 2",
		"tier 3",
		"tier 4",
		"tier 5",
		"tier 6"
	},
	quality = {
		"normal",
		"high",
		"superior",
		"artisan"
	}
}

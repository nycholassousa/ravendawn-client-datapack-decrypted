-- chunkname: @/modules/game_rangerscompany/config.lua

RC_TASK_FAST = 1
RC_TASK_MEDIUM = 2
RC_TASK_LONG = 3
RC_RANK_RECRUIT = 1
RC_RANK_GREENHORN = 2
RC_RANK_PIONEER = 3
RC_RANK_TRACKER = 4
RC_RANK_SCOUT = 5
RC_RANK_HUNTER = 6
RC_RANK_OUTRIDER = 7
RC_RANK_VANGUARD = 8
RC_RANK_CHAMPION = 9
RC_RANK_WARDEN = 10
RC_RANK_FIRST = RC_RANK_RECRUIT
RC_RANK_LAST = RC_RANK_WARDEN
cacheDuration = 15
rewards = {
	[RC_TASK_FAST] = {
		prestige = 180
	},
	[RC_TASK_MEDIUM] = {
		prestige = 300
	},
	[RC_TASK_LONG] = {
		prestige = 480
	}
}
objectives = {
	[RC_TASK_FAST] = 15000,
	[RC_TASK_MEDIUM] = 30000,
	[RC_TASK_LONG] = 60000
}
rankToName = {
	[RC_RANK_RECRUIT] = "Recruit",
	[RC_RANK_GREENHORN] = "Greenhorn",
	[RC_RANK_PIONEER] = "Pioneer",
	[RC_RANK_TRACKER] = "Tracker",
	[RC_RANK_SCOUT] = "Scout",
	[RC_RANK_HUNTER] = "Hunter",
	[RC_RANK_OUTRIDER] = "Outrider",
	[RC_RANK_VANGUARD] = "Vanguard",
	[RC_RANK_CHAMPION] = "Champion",
	[RC_RANK_WARDEN] = "Warden"
}
outpostToIcon = {
	["Zephyr Vale Outpost"] = "icon_plains",
	["Pirate Isles Outpost"] = "icon_pirate_isles",
	["Hadarak Desert Outpost"] = "icon_hadarak_desert",
	["Glaceforde Outpost"] = "icon_glaceforde",
	["Elder Coast Outpost"] = "icon_elder_coast",
	["Northern Steppes Outpost"] = "icon_northern_steppes",
	["Glademire Outpost"] = "icon_glademire",
	["Deadlands Outpost"] = "icon_deadlands",
	["Rohna Woods Outpost"] = "icon_rohna_woods"
}
outpostNameToDisplayName = {
	["Sajecho Island Outpost"] = "Pirate Isles Outpost",
	["Harbor Island Outpost"] = "Pirate Isles Outpost",
	["Gilead Island Outpost"] = "Pirate Isles Outpost"
}
categories = {
	beasts = {
		yetis = 1,
		foxes = 1,
		warhogs = 1,
		minotaurs = 1,
		blizzardBeast = 1,
		wolves = 1,
		bears = 1
	},
	arthropods = {
		crocodiles = 1,
		crustaceans = 1,
		wurms = 1,
		arachnids = 1
	},
	reptiles = {
		spikebacks = 1,
		saurians = 1,
		kaimans = 1,
		iceshells = 1,
		pearlshells = 1
	},
	amphibians = {
		toads = 1
	},
	humans = {
		ghaz = 1,
		skorn = 1,
		brotherhood = 1,
		humans = 1,
		morningstar = 1,
		pirates = 1,
		winterborn = 1,
		hookmask = 1,
		naturalists = 1,
		saltdusk = 1
	},
	humanoids = {
		dwarves = 1,
		iceforgeDwarves = 1,
		mindslaveDwarves = 1,
		elves = 1
	},
	undeads = {
		vampires = 1,
		chainwraiths = 1,
		animatedBones = 1,
		skeletons = 1,
		frostrisen = 1
	},
	natural = {
		poisonpetals = 1,
		trunks = 1,
		fungi = 1
	},
	aquatics = {
		sharks = 1,
		zorians = 1
	},
	outsiders = {
		djinns = 1,
		gazers = 1,
		demons = 1
	},
	mutants = {
		pummeldillos = 1,
		sporewalker = 1,
		rats = 1,
		crowmaidens = 1
	},
	goblinoids = {
		goblinRiders = 1,
		goblinMechs = 1,
		orcs = 1,
		commonGoblins = 1
	},
	giants = {
		trolls = 1,
		frolls = 1
	},
	draconics = {
		drakes = 1,
		dragons = 1
	}
}
familyNameToCategory = {}

for category, familyNames in pairs(categories) do
	for familyName, _ in pairs(familyNames) do
		familyNameToCategory[familyName] = category
	end
end

taskNameToImageFileName = {
	pummeldillos = "pummeldillo_boxer",
	["emberscale drakes"] = "emberscale_dragon",
	rats = "rat_spiketail",
	["ghaz raiders"] = "ghaz_archer",
	goblins = "hobgoblin",
	hogs = "hog_warlord",
	["direhorn drakes"] = "direhorn_drake",
	elves = "elf_bowman",
	sharks = "shark_harpooner",
	zorians = "zorian_shoreguard",
	vampires = "vampire_necromancer",
	["snow spiders"] = "queen_snow_spider",
	poisonpetals = "poisonpetal_lotus",
	trunks = "sharpweed_trunk",
	["mindslave dwarves"] = "mindslave_taskmaster",
	frostrisen = "frostrisen_magus",
	["death gazers"] = "hell_gazer",
	["iceshell tortoises"] = "iceshell_giant",
	["iceforge dwarves"] = "iceforge_hallkeeper",
	skeletons = "skeleton_soldier",
	frolls = "froll_gladiator",
	["cave spiders"] = "cave_spider",
	["frostbound drakes"] = "frostbound_drake",
	["goblin mechas"] = "venomous_contraption",
	dwarves = "dwarf_legionnaire",
	yetis = "twinhead_yeti",
	wolves = "grey_wolf",
	["bog spiders"] = "bog_spider",
	["venomfang drakes"] = "direhorn_drake",
	pirates = "pirate_swashbuckler",
	["spellslayer drakes"] = "spellslayer_drake",
	["skorn cultists"] = "skorn_acolyte",
	demons = "astor_demon",
	shadowfoxes = "shadowfox_ninetails",
	["shadowfang drakes"] = "direhorn_drake",
	["rohna brotherhood"] = "brotherhood_marksman",
	toads = "toad_sentinel",
	["forest spiders"] = "forest_spider",
	sporewalkers = "contagious_sporewalker",
	["saltdusk raiders"] = "saltdusk_executioner",
	morningstars = "morningstar_paladin",
	saurians = "saurian_skullmage",
	kaimans = "kaiman_ambusher",
	["pearlshell turtles"] = "pearlshell_giant",
	["hoghound riders"] = "hoghound_shaman",
	hookmasks = "hookmask_slinger",
	wurms = "vile_wurm",
	["polar bears"] = "polar_bear",
	winterbornes = "winterborn",
	minotaurs = "minotaur_champion",
	["frozen zorians"] = "zorian_shoreguard",
	bears = "dire_bear",
	trolls = "troll",
	orcs = "orc_nightstar",
	wraiths = "chainwrath_creep",
	crowmaidens = "crow_matriarch"
}
RC_CATEGORY_BEASTS = 1
RC_CATEGORY_ARTHROPODS = 2
RC_CATEGORY_AMPHIBIANS = 3
RC_CATEGORY_HUMANS = 4
RC_CATEGORY_HUMANOIDS = 5
RC_CATEGORY_UNDEADS = 6
RC_CATEGORY_NATURAL = 7
RC_CATEGORY_AQUATICS = 8
RC_CATEGORY_MUTANTS = 9
RC_CATEGORY_GOBLINOIDS = 10
RC_CATEGORY_REPTILES = 11
RC_CATEGORY_GIANTS = 12
RC_CATEGORY_OUTSIDERS = 13
RC_CATEGORY_DRACONICS = 14
RC_CATEGORY_FIRST = RC_CATEGORY_BEASTS
RC_CATEGORY_LAST = RC_CATEGORY_DRACONICS
monsterCategoryToName = {
	[RC_CATEGORY_BEASTS] = "beasts",
	[RC_CATEGORY_ARTHROPODS] = "arthropods",
	[RC_CATEGORY_REPTILES] = "reptiles",
	[RC_CATEGORY_AMPHIBIANS] = "amphibians",
	[RC_CATEGORY_HUMANS] = "humans",
	[RC_CATEGORY_HUMANOIDS] = "humanoids",
	[RC_CATEGORY_UNDEADS] = "undeads",
	[RC_CATEGORY_NATURAL] = "natural",
	[RC_CATEGORY_AQUATICS] = "aquatics",
	[RC_CATEGORY_OUTSIDERS] = "outsiders",
	[RC_CATEGORY_MUTANTS] = "mutants",
	[RC_CATEGORY_GOBLINOIDS] = "goblinoids",
	[RC_CATEGORY_GIANTS] = "giants",
	[RC_CATEGORY_DRACONICS] = "draconics"
}
RC_STAT_PHYSICAL_AP = 1
RC_STAT_PHYSICAL_DP = 2
RC_STAT_MAGICAL_AP = 3
RC_STAT_MAGICAL_DP = 4
RC_STAT_CRITICAL_CHANCE = 5
RC_STAT_LOOT_CHANCE = 6
RC_STAT_FIRST = RC_STAT_PHYSICAL_AP
RC_STAT_LAST = RC_STAT_LOOT_CHANCE
perkValues = {
	[RC_STAT_PHYSICAL_AP] = 2,
	[RC_STAT_PHYSICAL_DP] = 2,
	[RC_STAT_MAGICAL_AP] = 2,
	[RC_STAT_MAGICAL_DP] = 2,
	[RC_STAT_CRITICAL_CHANCE] = 0.05,
	[RC_STAT_LOOT_CHANCE] = 0.01
}
expertisePerLevel = 275

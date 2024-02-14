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
	["Glademire Outpost"] = "icon_glademire",
	["Zephyr Vale Outpost"] = "icon_plains",
	["Deadlands Outpost"] = "icon_deadlands",
	["Rohna Woods Outpost"] = "icon_rohna_woods",
	["Pirate Isles Outpost"] = "icon_pirate_isles",
	["Hadarak Desert Outpost"] = "icon_hadarak_desert",
	["Glaceforde Outpost"] = "icon_glaceforde",
	["Elder Coast Outpost"] = "icon_elder_coast",
	["Northern Steppes Outpost"] = "icon_northern_steppes"
}
outpostNameToDisplayName = {
	["Gilead Island Outpost"] = "Pirate Isles Outpost",
	["Sajecho Island Outpost"] = "Pirate Isles Outpost",
	["Harbor Island Outpost"] = "Pirate Isles Outpost"
}
categories = {
	beasts = {
		warhogs = 1,
		minotaurs = 1,
		blizzardBeast = 1,
		wolves = 1,
		bears = 1,
		yetis = 1,
		foxes = 1
	},
	arthropods = {
		arachnids = 1,
		crocodiles = 1,
		crustaceans = 1,
		wurms = 1
	},
	reptiles = {
		pearlshells = 1,
		spikebacks = 1,
		saurians = 1,
		kaimans = 1,
		iceshells = 1
	},
	amphibians = {
		toads = 1
	},
	humans = {
		morningstar = 1,
		pirates = 1,
		winterborn = 1,
		hookmask = 1,
		naturalists = 1,
		saltdusk = 1,
		ghaz = 1,
		skorn = 1,
		brotherhood = 1,
		humans = 1
	},
	humanoids = {
		elves = 1,
		dwarves = 1,
		iceforgeDwarves = 1,
		mindslaveDwarves = 1
	},
	undeads = {
		frostrisen = 1,
		vampires = 1,
		chainwraiths = 1,
		animatedBones = 1,
		skeletons = 1
	},
	natural = {
		fungi = 1,
		poisonpetals = 1,
		trunks = 1
	},
	aquatics = {
		zorians = 1,
		sharks = 1
	},
	outsiders = {
		djinns = 1,
		gazers = 1,
		demons = 1
	},
	mutants = {
		crowmaidens = 1,
		pummeldillos = 1,
		sporewalker = 1,
		rats = 1
	},
	goblinoids = {
		commonGoblins = 1,
		goblinRiders = 1,
		goblinMechs = 1,
		orcs = 1
	},
	giants = {
		frolls = 1,
		trolls = 1
	},
	draconics = {
		dragons = 1,
		drakes = 1
	}
}
familyNameToCategory = {}

for category, familyNames in pairs(categories) do
	for familyName, _ in pairs(familyNames) do
		familyNameToCategory[familyName] = category
	end
end

taskNameToImageFileName = {
	["cave spiders"] = "cave_spider",
	dwarves = "dwarf_legionnaire",
	["goblin mechas"] = "venomous_contraption",
	["iceshell tortoises"] = "iceshell_giant",
	pirates = "pirate_swashbuckler",
	["snow spiders"] = "queen_snow_spider",
	["bog spiders"] = "bog_spider",
	goblins = "hobgoblin",
	wraiths = "chainwrath_creep",
	skeletons = "skeleton_soldier",
	["skorn cultists"] = "skorn_acolyte",
	elves = "elf_bowman",
	["emberscale drakes"] = "emberscale_dragon",
	toads = "toad_sentinel",
	["ghaz raiders"] = "ghaz_archer",
	vampires = "vampire_necromancer",
	["forest spiders"] = "forest_spider",
	["direhorn drakes"] = "direhorn_drake",
	["saltdusk raiders"] = "saltdusk_executioner",
	kaimans = "kaiman_ambusher",
	["pearlshell turtles"] = "pearlshell_giant",
	hogs = "hog_warlord",
	saurians = "saurian_skullmage",
	["hoghound riders"] = "hoghound_shaman",
	["rohna brotherhood"] = "brotherhood_marksman",
	["mindslave dwarves"] = "mindslave_taskmaster",
	["frozen zorians"] = "zorian_shoreguard",
	winterbornes = "winterborn",
	["polar bears"] = "polar_bear",
	["frostbound drakes"] = "frostbound_drake",
	yetis = "twinhead_yeti",
	wolves = "grey_wolf",
	frolls = "froll_gladiator",
	trolls = "troll",
	hookmasks = "hookmask_slinger",
	orcs = "orc_nightstar",
	morningstars = "morningstar_paladin",
	sporewalkers = "contagious_sporewalker",
	["spellslayer drakes"] = "spellslayer_drake",
	["venomfang drakes"] = "direhorn_drake",
	crowmaidens = "crow_matriarch",
	pummeldillos = "pummeldillo_boxer",
	["shadowfang drakes"] = "direhorn_drake",
	rats = "rat_spiketail",
	shadowfoxes = "shadowfox_ninetails",
	demons = "astor_demon",
	sharks = "shark_harpooner",
	zorians = "zorian_shoreguard",
	wurms = "vile_wurm",
	poisonpetals = "poisonpetal_lotus",
	trunks = "sharpweed_trunk",
	frostrisen = "frostrisen_magus",
	minotaurs = "minotaur_champion",
	["death gazers"] = "hell_gazer",
	bears = "dire_bear",
	["iceforge dwarves"] = "iceforge_hallkeeper"
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

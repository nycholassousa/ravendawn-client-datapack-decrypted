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
	["Rohna Woods Outpost"] = "icon_rohna_woods",
	["Pirate Isles Outpost"] = "icon_pirate_isles",
	["Hadarak Desert Outpost"] = "icon_hadarak_desert",
	["Glaceforde Outpost"] = "icon_glaceforde",
	["Elder Coast Outpost"] = "icon_elder_coast",
	["Northern Steppes Outpost"] = "icon_northern_steppes",
	["Glademire Outpost"] = "icon_glademire",
	["Deadlands Outpost"] = "icon_deadlands"
}
outpostNameToDisplayName = {
	["Harbor Island Outpost"] = "Pirate Isles Outpost",
	["Gilead Island Outpost"] = "Pirate Isles Outpost",
	["Sajecho Island Outpost"] = "Pirate Isles Outpost"
}
categories = {
	beasts = {
		wolves = 1,
		bears = 1,
		yetis = 1,
		foxes = 1,
		warhogs = 1,
		minotaurs = 1,
		blizzardBeast = 1
	},
	arthropods = {
		wurms = 1,
		arachnids = 1,
		crocodiles = 1,
		crustaceans = 1
	},
	reptiles = {
		iceshells = 1,
		pearlshells = 1,
		spikebacks = 1,
		saurians = 1,
		kaimans = 1
	},
	amphibians = {
		toads = 1
	},
	humans = {
		naturalists = 1,
		saltdusk = 1,
		ghaz = 1,
		skorn = 1,
		brotherhood = 1,
		humans = 1,
		morningstar = 1,
		pirates = 1,
		winterborn = 1,
		hookmask = 1
	},
	humanoids = {
		mindslaveDwarves = 1,
		elves = 1,
		dwarves = 1,
		iceforgeDwarves = 1
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
		sharks = 1,
		zorians = 1
	},
	outsiders = {
		demons = 1,
		djinns = 1,
		gazers = 1
	},
	mutants = {
		rats = 1,
		crowmaidens = 1,
		pummeldillos = 1,
		sporewalker = 1
	},
	goblinoids = {
		orcs = 1,
		commonGoblins = 1,
		goblinRiders = 1,
		goblinMechs = 1
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
	["cave spiders"] = "cave_spider",
	crowmaidens = "crow_matriarch",
	pummeldillos = "pummeldillo_boxer",
	kaimans = "kaiman_ambusher",
	rats = "rat_spiketail",
	["skorn cultists"] = "skorn_acolyte",
	["bog spiders"] = "bog_spider",
	["venomfang drakes"] = "direhorn_drake",
	demons = "astor_demon",
	["spellslayer drakes"] = "spellslayer_drake",
	sharks = "shark_harpooner",
	zorians = "zorian_shoreguard",
	shadowfoxes = "shadowfox_ninetails",
	["frostbound drakes"] = "frostbound_drake",
	poisonpetals = "poisonpetal_lotus",
	trunks = "sharpweed_trunk",
	["forest spiders"] = "forest_spider",
	frostrisen = "frostrisen_magus",
	vampires = "vampire_necromancer",
	morningstars = "morningstar_paladin",
	goblins = "hobgoblin",
	skeletons = "skeleton_soldier",
	hookmasks = "hookmask_slinger",
	sporewalkers = "contagious_sporewalker",
	hogs = "hog_warlord",
	elves = "elf_bowman",
	dwarves = "dwarf_legionnaire",
	["polar bears"] = "polar_bear",
	winterbornes = "winterborn",
	pirates = "pirate_swashbuckler",
	["hoghound riders"] = "hoghound_shaman",
	["iceforge dwarves"] = "iceforge_hallkeeper",
	["goblin mechas"] = "venomous_contraption",
	["frozen zorians"] = "zorian_shoreguard",
	frolls = "froll_gladiator",
	["iceshell tortoises"] = "iceshell_giant",
	["shadowfang drakes"] = "direhorn_drake",
	["snow spiders"] = "queen_snow_spider",
	toads = "toad_sentinel",
	bears = "dire_bear",
	wraiths = "chainwrath_creep",
	["saltdusk raiders"] = "saltdusk_executioner",
	["rohna brotherhood"] = "brotherhood_marksman",
	saurians = "saurian_skullmage",
	["emberscale drakes"] = "emberscale_dragon",
	["ghaz raiders"] = "ghaz_archer",
	wurms = "vile_wurm",
	["direhorn drakes"] = "direhorn_drake",
	yetis = "twinhead_yeti",
	minotaurs = "minotaur_champion",
	["pearlshell turtles"] = "pearlshell_giant",
	wolves = "grey_wolf",
	["mindslave dwarves"] = "mindslave_taskmaster",
	trolls = "troll",
	["death gazers"] = "hell_gazer",
	orcs = "orc_nightstar"
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

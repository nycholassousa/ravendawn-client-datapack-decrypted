-- chunkname: @/modules/gamelib/creature.lua

SkullNone = 0
SkullYellow = 1
SkullGreen = 2
SkullWhite = 3
SkullRed = 4
SkullBlack = 5
SkullOrange = 6
SkullMurderer = 7
ShieldNone = 0
ShieldWhiteYellow = 1
ShieldWhiteBlue = 2
ShieldBlue = 3
ShieldYellow = 4
ShieldBlueSharedExp = 5
ShieldYellowSharedExp = 6
ShieldBlueNoSharedExpBlink = 7
ShieldYellowNoSharedExpBlink = 8
ShieldBlueNoSharedExp = 9
ShieldYellowNoSharedExp = 10
EmblemNone = 0
EmblemRed = 1
EmblemBlue = 2
EmblemGold = 3
EmblemSilver = 4
EmblemBronze = 5
EmblemAlly = 6
EmblemEnemy = 7
EmblemNeutral = 8
EmblemMember = 9
EmblemOther = 10
NpcIconNone = 0
NpcIconChat = 1
NpcIconTrade = 2
NpcIconQuest = 3
NpcIconTradeQuest = 4
CreatureTypePlayer = 0
CreatureTypeMonster = 1
CreatureTypeNpc = 2
CreatureTypeSummonOwn = 3
CreatureTypeSummonOther = 4
CreatureTypeWagonOwn = 5
CreatureTypeWagonOther = 6
HealthBarDefault = 0
HealthBarDynamicEvent = 1
HealthBarBossDynamicEvent = 2
HealthBarBoss = 3
GroupDead = 0
GroupPlayer = 1
GroupJrSupport = 2
GroupSeniorSupport = 3
GroupJrCommunityManager = 4
GroupSeniorCommunityManager = 5
GroupJrGamemaster = 6
GroupSeniorGamemaster = 7
HealthBarPaths = {
	[HealthBarDefault] = "/images/game/bars/default",
	[HealthBarDynamicEvent] = "/images/game/bars/default",
	[HealthBarBossDynamicEvent] = "/images/game/bars/default_big",
	[HealthBarBoss] = "/images/game/bars/default_big",
	[HealthBarAetherStone] = "/images/game/bars/default"
}
StatusIcons = {
	RainOfArrowsGhazArcher = 72,
	QuickFireHoghoundArcher = 71,
	FissureDwarfProspector = 70,
	BerserkGoblinBerserker = 69,
	BerserkDireBear = 68,
	EarthquakeTwinheadYeti = 67,
	BullrushBoarRunt = 66,
	FeastingStrikePolarBear = 65,
	PummelRargumTheDread = 64,
	ShieldbreakKaimanAmbusher = 63,
	GuillotineDwarfLegionnaire = 62,
	BrutalStrikeRatSpiketail = 61,
	DeathBlossomWidowQueen = 60,
	ShadowKickRatScavenger = 59,
	AntihealingVenomBogSpider = 58,
	AntihealingVenomVileWurm = 57,
	ShadowbindCaveSpider = 56,
	QuickSlashHoghoundRaider = 55,
	ProvokeOrcChieftain = 54,
	ProvokeMinotaurChampion = 53,
	ShieldThrowMinotaurWarden = 52,
	SmitingSmashTrollChampion = 51,
	SpiritsResolveDwarfCommoner = 50,
	Fumble = 49,
	ChilledStatus = 47,
	BlockStairHopping = 46,
	CheapShot = 44,
	DivinePurpose = 42,
	FrostArmor = 41,
	MarkedForDeath = 40,
	UndyingWill = 38,
	CripplingDagger = 36,
	FlowOfMagic = 35,
	FireShield = 34,
	SinsOfTheMany = 33,
	WindMastery = 32,
	HotHeaded = 30,
	Exhausted = 29,
	WeakenedSpirit = 28,
	AvastMeHearties = 127,
	Threatened = 25,
	VenomousWeapons = 23,
	Repair = 22,
	Anchored = 21,
	WaterPumps = 20,
	Ignite = 19,
	TradePackShip = 18,
	TradePackWagon = 17,
	SafeZone = 16,
	ViperArrow = 15,
	WindstrikeSpirit = 12,
	PartyRecovery = 11,
	ClearFocus = 4,
	ArcanePulse = 2,
	AntiHealingVenom = 1,
	ConcentratedImpact = 26,
	MaceToss = 121,
	StaggeringRoar = 128,
	ArmorOfSpikes = 129,
	FrostWard = 130,
	SinisterPlot = 131,
	Haste = 9,
	GoldenFleece = 132,
	GenerousInfluence = 134,
	BleedTrollKnight = 135,
	DarkMeteor = 136,
	None = 0,
	DarkEnergyJudgment = 137,
	LavaHeat = 138,
	Barrier = 3,
	Frostbite = 139,
	Regenerate = 13,
	IceStorm = 140,
	Exploitation = 48,
	Leech = 133,
	Curse = 5,
	Prophet = 101,
	Havoc = 31,
	Frostbolt = 7,
	Fireball = 6,
	Trickster = 8,
	Guardian = 43,
	Safeguard = 45,
	Unchained = 39,
	Blitz = 99,
	Bloodbath = 27,
	Hatred = 14,
	Bloodlust = 37,
	Savagery = 24,
	Invulnerable = 126,
	SteadyStance = 125,
	DraconicBurn = 124,
	PowerSurge = 123,
	RendingThrow = 122,
	Mend = 10,
	BladeWarding = 120,
	FencersEscape = 119,
	LethalEdge = 118,
	DecrepitTiara = 117,
	WitheredDemonHand = 116,
	GoldenMaw = 115,
	SmitingSmashWinterbornGuardian = 114,
	AberrationVenomousClawsDebuff = 113,
	TwilightRampage = 112,
	Bewildered = 111,
	Fear = 110,
	CripplingDeath = 109,
	BloodthirstyEnrage = 108,
	GauntletOfSkorn = 107,
	GarmentOfSkorn = 106,
	ReflectiveCarapace = 105,
	AlseksBlessing = 104,
	ZephyrWinds = 103,
	ShieldBreak = 102,
	ManaOvercharge = 100,
	ArcaneCorruption = 98,
	RejuvenationNaturalistPraiser = 97,
	SalvationKaimanIllusionist = 96,
	EternalWormsSaltduskRitualistTarget = 95,
	MagicRuptureSkornGrandmaster = 94,
	MagicRuptureManastormDjinn = 93,
	HexBoneGazer = 92,
	EternalWormsGluttonHag = 91,
	EternalWormsSaltduskRitualist = 90,
	DispelOrcWitchdoctor = 89,
	DeathTouchTrollWarlockEmpoweredCurses = 88,
	ArcanePulseGhostlampHag = 87,
	WhirlwindBat = 86,
	TyphoonZorianStormcaller = 85,
	FlamelordDjinnScorch = 84,
	ArcticPiercing = 83,
	DeepFrozen = 82,
	FierceLeapSharkHarpooner = 81,
	GenerousInfluenceIceforgeWinterlord = 80,
	DevotionHierophantSigrid = 79,
	HealingChannelDwarfMechanic = 78,
	HolyShacklesMorningstarFlagellant = 77,
	SmiteHighElfChampion = 76,
	FlashHealMorningstarPaladin = 75,
	VenomGrenadePoisonpetalGoliath = 74,
	SpiritRangersWinterbornHunter = 73
}
NpcIcons = {
	Fishpost = 1,
	Warehouse = 2,
	None = 0,
	Shop = 8,
	Monster = 99,
	Market = 7,
	Tradepost = 3,
	QuestAvailable = 9,
	Bank = 5,
	RangersCompanyShop = 6,
	Builder = 4,
	ArtifactShop = 12,
	QuestActive = 10,
	Breeding = 11
}
StatusImages = {
	[StatusIcons.AntiHealingVenom] = "/images/game/statusicons/antihealingvenom",
	[StatusIcons.ArcanePulse] = "/images/game/statusicons/arcanepulse",
	[StatusIcons.Barrier] = "/images/game/statusicons/barrier",
	[StatusIcons.ClearFocus] = "/images/game/statusicons/clearfocus",
	[StatusIcons.Curse] = "/images/game/statusicons/curse",
	[StatusIcons.Fireball] = "/images/game/statusicons/fireball",
	[StatusIcons.Frostbolt] = "/images/game/statusicons/frostbolt",
	[StatusIcons.Trickster] = "/images/game/statusicons/trickster",
	[StatusIcons.Haste] = "/images/game/statusicons/haste",
	[StatusIcons.Mend] = "/images/game/statusicons/mend",
	[StatusIcons.PartyRecovery] = "/images/game/statusicons/partyrecovery",
	[StatusIcons.Regenerate] = "/images/game/statusicons/regenerate",
	[StatusIcons.Hatred] = "/images/game/statusicons/hatred",
	[StatusIcons.ViperArrow] = "/images/game/statusicons/viperarrow",
	[StatusIcons.SafeZone] = "/images/game/statusicons/safezone",
	[StatusIcons.TradePackWagon] = "/images/game/statusicons/tradepackwagon",
	[StatusIcons.TradePackShip] = "/images/game/statusicons/tradepackship",
	[StatusIcons.Ignite] = "/images/game/statusicons/ignite",
	[StatusIcons.WaterPumps] = "/images/game/statusicons/waterpumps",
	[StatusIcons.Anchored] = "/images/game/statusicons/anchored",
	[StatusIcons.Repair] = "/images/game/statusicons/repair",
	[StatusIcons.VenomousWeapons] = "/images/game/statusicons/venomousweapons",
	[StatusIcons.Savagery] = "/images/game/statusicons/savagery",
	[StatusIcons.Threatened] = "/images/game/statusicons/threatened",
	[StatusIcons.ConcentratedImpact] = "/images/game/statusicons/concentratedimpact",
	[StatusIcons.Bloodbath] = "/images/game/statusicons/bloodbath",
	[StatusIcons.WeakenedSpirit] = "/images/game/statusicons/weakenedspirit",
	[StatusIcons.Exhausted] = "/images/game/statusicons/exhausted",
	[StatusIcons.HotHeaded] = "/images/game/statusicons/hotheaded",
	[StatusIcons.Havoc] = "/images/game/statusicons/havoc",
	[StatusIcons.WindMastery] = "/images/game/statusicons/windmastery",
	[StatusIcons.SinsOfTheMany] = "/images/game/statusicons/sinsofthemany",
	[StatusIcons.FireShield] = "/images/game/statusicons/fireshield",
	[StatusIcons.FlowOfMagic] = "/images/game/statusicons/flowofmagic",
	[StatusIcons.CripplingDagger] = "/images/game/statusicons/cripplingdagger",
	[StatusIcons.Bloodlust] = "/images/game/statusicons/bloodlust",
	[StatusIcons.UndyingWill] = "/images/game/statusicons/undyingwill",
	[StatusIcons.Unchained] = "/images/game/statusicons/unchained",
	[StatusIcons.MarkedForDeath] = "/images/game/statusicons/markedfordeath",
	[StatusIcons.FrostArmor] = "/images/game/statusicons/frostarmor",
	[StatusIcons.DivinePurpose] = "/images/game/statusicons/divinepurpose",
	[StatusIcons.Guardian] = "/images/game/statusicons/guardian",
	[StatusIcons.CheapShot] = "/images/game/statusicons/cheapshot",
	[StatusIcons.Safeguard] = "/images/game/statusicons/safeguard",
	[StatusIcons.BlockStairHopping] = "/images/game/statusicons/blockstairhopping",
	[StatusIcons.ChilledStatus] = "/images/game/statusicons/chilled",
	[StatusIcons.Exploitation] = "/images/game/statusicons/exploitation",
	[StatusIcons.Fumble] = "/images/game/statusicons/fumble",
	[StatusIcons.SpiritsResolveDwarfCommoner] = "/images/game/statusicons/spirits_resolve_dwarf_commoner",
	[StatusIcons.SmitingSmashTrollChampion] = "/images/game/statusicons/smiting_smash_troll_champion",
	[StatusIcons.ShieldThrowMinotaurWarden] = "/images/game/statusicons/shield_throw_minotaur_warden",
	[StatusIcons.ProvokeMinotaurChampion] = "/images/game/statusicons/provoke_minotaur_champion",
	[StatusIcons.ProvokeOrcChieftain] = "/images/game/statusicons/provoke_orc_chieftain",
	[StatusIcons.QuickSlashHoghoundRaider] = "/images/game/statusicons/quick_slash_hoghound_raider",
	[StatusIcons.ShadowbindCaveSpider] = "/images/game/statusicons/shadowbind_cave_spider",
	[StatusIcons.AntihealingVenomVileWurm] = "/images/game/statusicons/antihealing_venom_vile_wurm",
	[StatusIcons.AntihealingVenomBogSpider] = "/images/game/statusicons/antihealing_venom_bog_spider",
	[StatusIcons.ShadowKickRatScavenger] = "/images/game/statusicons/shadow_kick_rat_scavenger",
	[StatusIcons.DeathBlossomWidowQueen] = "/images/game/statusicons/death_blossom_widow_queen",
	[StatusIcons.BrutalStrikeRatSpiketail] = "/images/game/statusicons/brutal_strike_rat_spiketail",
	[StatusIcons.GuillotineDwarfLegionnaire] = "/images/game/statusicons/guillotine_dwarf_legionnaire",
	[StatusIcons.ShieldbreakKaimanAmbusher] = "/images/game/statusicons/shieldbreak_kaiman_ambusher",
	[StatusIcons.PummelRargumTheDread] = "/images/game/statusicons/pummel_rargum_the_dread",
	[StatusIcons.FeastingStrikePolarBear] = "/images/game/statusicons/feasting_strike_polar_bear",
	[StatusIcons.BullrushBoarRunt] = "/images/game/statusicons/bullrush_boar_runt",
	[StatusIcons.EarthquakeTwinheadYeti] = "/images/game/statusicons/earthquake_twinhead_yeti",
	[StatusIcons.BerserkDireBear] = "/images/game/statusicons/berserk_dire_bear",
	[StatusIcons.BerserkGoblinBerserker] = "/images/game/statusicons/berserk_goblin_berserker",
	[StatusIcons.FissureDwarfProspector] = "/images/game/statusicons/fissure_dwarf_prospector",
	[StatusIcons.QuickFireHoghoundArcher] = "/images/game/statusicons/quick_fire_hoghound_archer",
	[StatusIcons.RainOfArrowsGhazArcher] = "/images/game/statusicons/rain_of_arrows_ghaz_archer",
	[StatusIcons.SpiritRangersWinterbornHunter] = "/images/game/statusicons/spirit_rangers_winterborn_hunter",
	[StatusIcons.VenomGrenadePoisonpetalGoliath] = "/images/game/statusicons/venom_grenade_poisonpetal_goliath",
	[StatusIcons.FlashHealMorningstarPaladin] = "/images/game/statusicons/flash_heal_morningstar_paladin",
	[StatusIcons.SmiteHighElfChampion] = "/images/game/statusicons/smite_high_elf_champion",
	[StatusIcons.HolyShacklesMorningstarFlagellant] = "/images/game/statusicons/holy_shackles_morningstar_flagellant",
	[StatusIcons.HealingChannelDwarfMechanic] = "/images/game/statusicons/healing_channel_dwarf_mechanic",
	[StatusIcons.DevotionHierophantSigrid] = "/images/game/statusicons/devotion_hierophant_sigrid",
	[StatusIcons.GenerousInfluenceIceforgeWinterlord] = "/images/game/statusicons/generous_influence_iceforge_winterlord",
	[StatusIcons.FierceLeapSharkHarpooner] = "/images/game/statusicons/fierce_leap_shark_harpooner",
	[StatusIcons.DeepFrozen] = "/images/game/statusicons/deep_frozen",
	[StatusIcons.ArcticPiercing] = "/images/game/statusicons/frozen",
	[StatusIcons.FlamelordDjinnScorch] = "/images/game/statusicons/flamelord_djinn_scorch",
	[StatusIcons.TyphoonZorianStormcaller] = "/images/game/statusicons/typhoon_zorian_stormcaller",
	[StatusIcons.WhirlwindBat] = "/images/game/statusicons/whirlwind_bat",
	[StatusIcons.ArcanePulseGhostlampHag] = "/images/game/statusicons/arcane_pulse_ghostlamp_hag",
	[StatusIcons.DeathTouchTrollWarlockEmpoweredCurses] = "/images/game/statusicons/death_touch_troll_warlock_empowered_curses",
	[StatusIcons.DispelOrcWitchdoctor] = "/images/game/statusicons/dispel_orc_witchdoctor",
	[StatusIcons.EternalWormsSaltduskRitualist] = "/images/game/statusicons/eternal_worms_saltdusk_ritualist",
	[StatusIcons.EternalWormsGluttonHag] = "/images/game/statusicons/eternal_worms_glutton_hag",
	[StatusIcons.HexBoneGazer] = "/images/game/statusicons/hex_bone_gazer",
	[StatusIcons.MagicRuptureManastormDjinn] = "/images/game/statusicons/magic_rupture_manastorm_djinn",
	[StatusIcons.MagicRuptureSkornGrandmaster] = "/images/game/statusicons/magic_rupture_skorn_grandmaster",
	[StatusIcons.EternalWormsSaltduskRitualistTarget] = "/images/game/statusicons/eternal_worms_saltdusk_ritualist",
	[StatusIcons.SalvationKaimanIllusionist] = "/images/game/statusicons/salvation_kaiman_illusionist",
	[StatusIcons.RejuvenationNaturalistPraiser] = "/images/game/statusicons/rejuvenation_naturalist_praiser",
	[StatusIcons.ArcaneCorruption] = "/images/game/statusicons/arcane_corruption",
	[StatusIcons.Blitz] = "/images/game/statusicons/blitz",
	[StatusIcons.WindstrikeSpirit] = "/images/game/statusicons/windstrike_spirit",
	[StatusIcons.ManaOvercharge] = "/images/game/statusicons/mana_overcharge",
	[StatusIcons.Prophet] = "/images/game/statusicons/prophet",
	[StatusIcons.ShieldBreak] = "/images/game/statusicons/shieldbreak",
	[StatusIcons.ZephyrWinds] = "/images/game/statusicons/zephyrwinds",
	[StatusIcons.AlseksBlessing] = "/images/game/statusicons/alseksblessing",
	[StatusIcons.ReflectiveCarapace] = "/images/game/statusicons/reflective_carapace",
	[StatusIcons.GarmentOfSkorn] = "/images/game/statusicons/garment_of_skorn",
	[StatusIcons.GauntletOfSkorn] = "/images/game/statusicons/gauntlet_of_skorn",
	[StatusIcons.BloodthirstyEnrage] = "/images/game/statusicons/bloodthirsty_enrage",
	[StatusIcons.CripplingDeath] = "/images/game/statusicons/crippling_death",
	[StatusIcons.Fear] = "/images/game/statusicons/fear",
	[StatusIcons.Bewildered] = "/images/game/statusicons/bewildered",
	[StatusIcons.TwilightRampage] = "/images/game/statusicons/twilight_rampage",
	[StatusIcons.AberrationVenomousClawsDebuff] = "/images/game/statusicons/aberration_venomous_claws_debuff",
	[StatusIcons.SmitingSmashWinterbornGuardian] = "/images/game/statusicons/smiting_smash_winterborn_guardian",
	[StatusIcons.GoldenMaw] = "/images/game/statusicons/golden_maw",
	[StatusIcons.WitheredDemonHand] = "/images/game/statusicons/withered_demon_hand",
	[StatusIcons.DecrepitTiara] = "/images/game/statusicons/decrepit_tiara",
	[StatusIcons.LethalEdge] = "/images/game/statusicons/lethal_edge",
	[StatusIcons.FencersEscape] = "/images/game/statusicons/fencers_escape",
	[StatusIcons.BladeWarding] = "/images/game/statusicons/blade_warding",
	[StatusIcons.MaceToss] = "/images/game/statusicons/mace_toss",
	[StatusIcons.RendingThrow] = "/images/game/statusicons/rending_throw",
	[StatusIcons.PowerSurge] = "/images/game/statusicons/power_surge",
	[StatusIcons.DraconicBurn] = "/images/game/statusicons/draconic_burn",
	[StatusIcons.SteadyStance] = "/images/game/statusicons/steady_stance",
	[StatusIcons.Invulnerable] = "/images/game/statusicons/invulnerable",
	[StatusIcons.AvastMeHearties] = "/images/game/statusicons/avast_me_hearties",
	[StatusIcons.StaggeringRoar] = "/images/game/statusicons/staggering_roar",
	[StatusIcons.ArmorOfSpikes] = "/images/game/statusicons/armor_of_spikes",
	[StatusIcons.FrostWard] = "/images/game/statusicons/frost_ward",
	[StatusIcons.SinisterPlot] = "/images/game/statusicons/sinister_plot",
	[StatusIcons.GoldenFleece] = "/images/game/statusicons/golden_fleece",
	[StatusIcons.Leech] = "/images/game/statusicons/leech",
	[StatusIcons.GenerousInfluence] = "/images/game/statusicons/generous_influence",
	[StatusIcons.BleedTrollKnight] = "/images/game/statusicons/bleed_troll_knight",
	[StatusIcons.DarkMeteor] = "/images/game/statusicons/dark_meteor",
	[StatusIcons.DarkEnergyJudgment] = "/images/game/statusicons/dark_energy_judgment",
	[StatusIcons.LavaHeat] = "/images/game/statusicons/lava_heat",
	[StatusIcons.Frostbite] = "/images/game/statusicons/frostbite",
	[StatusIcons.IceStorm] = "/images/game/statusicons/ice_storm"
}
TradepackStatusIcons = {
	[TRADEPACK_STORAGE_PLAYER] = StatusIcons.TradePackWagon,
	[TRADEPACK_STORAGE_SHIP] = StatusIcons.TradePackWagon,
	[TRADEPACK_STORAGE_WAGON] = StatusIcons.TradePackWagon
}
NpcsIconsImages = {
	[NpcIcons.Fishpost] = "/images/game/statusicons/npc_fishpost",
	[NpcIcons.Warehouse] = "/images/game/statusicons/npc_warehouse",
	[NpcIcons.Tradepost] = "/images/game/statusicons/npc_tradepost",
	[NpcIcons.Builder] = "/images/game/statusicons/npc_builder",
	[NpcIcons.Bank] = "/images/game/statusicons/npc_bank",
	[NpcIcons.RangersCompanyShop] = "/images/game/statusicons/npc_rangers_company_shop",
	[NpcIcons.Market] = "/images/game/statusicons/npc_market",
	[NpcIcons.Shop] = "/images/game/statusicons/npc_shop",
	[NpcIcons.QuestAvailable] = "/images/game/statusicons/npc_quest_available",
	[NpcIcons.QuestActive] = "/images/game/statusicons/npc_quest_active",
	[NpcIcons.Breeding] = "/images/game/statusicons/npc_breeding",
	[NpcIcons.ArtifactShop] = "/images/game/statusicons/npc_artifact_shop"
}
MonsterIconPaths = {
	[HealthBarBoss] = "/images/game/statusicons/monster_boss",
	[HealthBarBossDynamicEvent] = "/images/game/statusicons/monster_dynamic",
	[HealthBarDynamicEvent] = "/images/game/statusicons/monster_dynamic",
	[HealthBarAetherStone] = "/images/game/statusicons/monster_aether"
}
SkullIconPaths = {
	[SkullMurderer] = "/images/game/statusicons/skull_murderer",
	[SkullYellow] = "/images/game/statusicons/skull_yellow"
}

function getNextSkullId(skullId)
	if skullId == SkullRed or skullId == SkullBlack then
		return SkullBlack
	end

	return SkullRed
end

function getSkullNameFont(skullId)
	local path

	path = not (skullId ~= SkullMurderer and skullId ~= SkullYellow) and "eras-bold-14-red" or "eras-bold-14"

	return path
end

function getHealthBarImagePath(bar)
	local path = HealthBarPaths[bar]

	if path ~= nil then
		return path
	end

	return HealthBarPaths[HealthBarDefault]
end

function getGroupIconImagePath(groupId)
	local path

	return path
end

function getPassengerImagePath(passengers)
	local path

	return path
end

function Creature:onSkullChange(skullId)
	local imagePath = SkullIconPaths[skullId]

	if not imagePath then
		return
	end

	self:setSkullTexture(imagePath)
end

function Creature:onShieldChange(shieldId)
	return
end

function Creature:onEmblemChange(emblemId)
	return
end

function Creature:onIconChange(iconId, oldIcon)
	if self:isMonster() and iconId ~= oldIcon and oldIcon == NpcIcons.Monster and modules.game_questlog.isMonsterInRangersCompanyQuests(self) then
		self:setIcon(NpcIcons.Monster, false)

		return
	end

	local imagePath = NpcsIconsImages[iconId]

	if not imagePath then
		return
	end

	self:setIconTexture(imagePath)
end

function Creature:onTypeChange(type)
	return
end

function Creature:onHealthBarChange(bar)
	local imagePath = getHealthBarImagePath(bar)

	if imagePath then
		self:setHealthBarTexture(imagePath)

		if bar == HealthBarBoss or bar == HealthBarBossDynamicEvent then
			self:setManaBarTexture(imagePath)
		end

		local monsterIconPath = MonsterIconPaths[bar]

		if monsterIconPath and (bar ~= HealthBarBoss or self:getIcon() ~= NpcIcons.Monster) then
			self:setIcon(NpcIcons.Monster, false)
			self:setIconTexture(monsterIconPath)
		end
	end
end

function Creature:onManaBarChange(bar)
	local imagePath = getHealthBarImagePath(bar)

	if imagePath then
		self:setManaBarTexture(imagePath)
	end
end

function Creature:onThreatBarChange(bar)
	local imagePath = getHealthBarImagePath(bar)

	if imagePath then
		self:setThreatBarTexture(imagePath)
	end
end

function Creature:onGroupChange(groupId)
	local imagePath = getGroupIconImagePath(groupId)

	if imagePath then
		self:setGroupTexture(imagePath)
	end
end

function Creature:setOutfitShader(shader)
	local outfit = self:getOutfit()

	outfit.shader = shader

	self:setOutfit(outfit)
end

function Creature:onStatusIcons(newIcons)
	for icon, state in pairs(newIcons) do
		local imagePath = StatusImages[icon]

		if imagePath then
			if state == true then
				self:addStatusIcon(icon, imagePath)
			else
				self:removeStatusIcon(icon)
			end
		end
	end
end

function Creature.onStatusIconText(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.StatusIconText then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" or not data.iconId then
		return
	end

	local creature = g_map.getCreatureById(data.creatureId)

	if creature and creature:hasStatusIcon(data.iconId) then
		creature:setStatusIconText(data.iconId, tostring(data.text))
	end
end

addEvent(function()
	ProtocolGame.registerExtendedOpcode(ExtendedIds.StatusIconText, Creature.onStatusIconText)
end)

function Creature:onAppear()
	if g_game.isInHouseMode() and g_game.isPlacingHouse() and g_game.getLocalPlayer() == self then
		addEvent(function()
			local mapPanel = modules.game_interface.getMapPanel()

			if mapPanel then
				mapPanel:onLandTiles(true)
				mapPanel:onHouseTiles(true)
			end
		end)
	end

	if Tutorial and not self:isPlayer() then
		for _, creature in pairs(Tutorial.highlightNpcNames) do
			if self:getName():lower() == creature.name:lower() then
				self:setMarked(creature.color)
			end
		end
	end

	if self:isNpc() then
		addEvent(function()
			local position = self:getPosition()

			if g_worldMap.getQuestFlag(position, MAPMARK_MISSION_AVAILABLE) then
				self:setIcon(NpcIcons.QuestAvailable)
			elseif g_worldMap.getQuestFlag(position, MAPMARK_MISSION_COMPLETE) then
				self:setIcon(NpcIcons.QuestActive)
			end
		end)
	end

	if self:isMonster() then
		addEvent(function()
			local tasks = modules.game_questlog.getRangersCompanyQuests()

			if not table.empty(tasks) then
				local family = tasks[self:getFamily():lower()] or tasks[self:getSubFamily():lower()]

				if family then
					local currentRegion = modules.game_minimap.getRegionName()

					for region in pairs(family) do
						if region:lower() == currentRegion:lower() then
							self:setIcon(NpcIcons.Monster, false)
							self:setIconTexture("/images/game/statusicons/monster_rangerscompany")

							return
						end
					end
				end
			end
		end)
	end
end

function Creature:onDisappear()
	local creature = g_map.getCreatureById(self:getId())

	if not creature then
		self:resetStatusIcons(0)
	end
end

function Creature:isWagonToggled()
	local outfit = self:getOutfit()

	return outfit.wagonActive ~= nil and outfit.wagonActive > 0
end

function Creature:hasTradepacks()
	return self:hasStatusIcon(StatusIcons.TradePackWagon) or self:hasStatusIcon(StatusIcons.TradePackShip)
end

function Creature:onTradepackChange(type, count)
	self.tradepacks = self.tradepacks or {
		[StatusIcons.TradePackWagon] = 0,
		[StatusIcons.TradePackShip] = 0
	}

	local icon = TradepackStatusIcons[type]

	if not icon then
		return
	end

	if (self:isWagonToggled() or self:isMonster()) and type == TRADEPACK_STORAGE_WAGON then
		self.tradepacks[icon] = self.tradepacks[icon] + count
	elseif type == TRADEPACK_STORAGE_SHIP then
		local outfit = self:getOutfit()

		if outfit.shipBody == outfit.lookType then
			self.tradepacks[icon] = self.tradepacks[icon] + count
		end
	elseif type == TRADEPACK_STORAGE_PLAYER then
		self.tradepacks[icon] = self.tradepacks[icon] + count
	end

	local isWagon = table.find({
		CreatureTypeWagonOwn,
		CreatureTypeWagonOther
	}, self:getType())

	if not isWagon and type == TRADEPACK_STORAGE_LAST or isWagon and type == TRADEPACK_STORAGE_WAGON then
		for icon, count in pairs(self.tradepacks) do
			if count > 0 then
				self:addStatusIcon(icon, StatusImages[icon])
				self:setStatusIconText(icon, tostring(count))
			else
				self:removeStatusIcon(icon)
			end
		end

		self.tradepacks = nil
	end
end

function Creature:onBeforeNpcWalk(newPos)
	if self:getName() == "Bandit" then
		local tile = g_map.getTile(newPos)

		if tile then
			for _, item in ipairs(tile:getItems()) do
				if item:isReplaced() then
					item:onReplacedUse(true, 6900)
					item:onReplacedUse(true, 6892)

					break
				end
			end
		end
	end
end

function Creature:isWagon()
	local type = self:getType()

	return type == CreatureTypeWagonOwn or type == CreatureTypeWagonOther
end

function setNpcIconByPos(pos, icon)
	local player = g_game.getLocalPlayer()
	local playerPos = player and player:getPosition()

	if not pos or not playerPos then
		return
	end

	if Position.canSee(playerPos, pos) then
		local tile = g_map.getTile(pos)

		if tile then
			local creatures = tile:getCreatures()

			for _, creature in ipairs(creatures) do
				if creature:isNpc() then
					creature:setIcon(icon)
				end

				break
			end
		end
	end
end

function removeNpcIconByPos(pos)
	local player = g_game.getLocalPlayer()
	local playerPos = player and player:getPosition()

	if not pos or not playerPos then
		return
	end

	if Position.canSee(playerPos, pos) then
		local tile = g_map.getTile(pos)

		if tile then
			local creatures = tile:getCreatures()

			for _, creature in ipairs(creatures) do
				if creature:isNpc() then
					creature:setIcon(NpcIcons.None)
				end

				break
			end
		end
	end
end

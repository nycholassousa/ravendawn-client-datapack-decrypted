-- chunkname: @/modules/gamelib/const.lua

TILE_SIZE = 32
SOFT_CAP_LEVEL = 75
ItemArchlightToken = 24617
ItemGoldCoin = 3031
ItemPlatinumCoin = 3035
ItemCrystalCoin = 3043
ItemGoldIngot = 9058
ChannelingStatusNone = 0
ChannelingStatusInit = 1
ChannelingStatusProgress = 2
ChannelingStatusAbort = 3
ChannelingStatusFinish = 4
ChannelingTypeNone = 0
ChannelingTypeSpell = 1
ChannelingTypeCrafting = 2
ChannelingTypeInterruptable = 3
ChannelingTypeSpellNoAnimation = 4
ChannelingTypeInterruptableAnimation = 5
ChannelingTypePlayerInterruptable = 6
ViewModeNone = 0
ViewModePlayer = 1
ViewModeShip = 2
ViewModeAnchor = 3
ViewModeHouse = 4
ShipRankNone = 0
ShipPassenger = 1
ShipCaptain = 2
ShipStatusNone = 0
ShipCruising = 1
ShipAnchored = 2
Screenshot = {
	Kill = 4,
	Profession = 3,
	Skill = 2,
	Awakening = 1,
	Level = 0,
	Boss = 7,
	Achievement = 6,
	Death = 5
}
AccountStatus = {
	Suspended = 2,
	Frozen = 1,
	Ok = 0
}
SubscriptionStatus = {
	Premium = 1,
	Free = 0
}
HudGameColors = {
	NameColorMonsterWeak = 6,
	NameColorMonsterHigh = 8,
	NameColorMonsterNormal = 7
}
HudGameIntegers = {
	MonsterLevelDiff = 0
}
PropertyNone = 0
PropertyOwn = 1
PropertyOccupied = 2
PropertyUnoccupied = 3
DamageNone = 0
DamageNormal = 1
DamagePercent = 2
DamageAbbr = 3
FeedbackBugMap = 0
FeedbackBugTypo = 1
FeedbackBugTechnical = 2
FeedbackBugOther = 3
FeedbackSuggestionGame = 4
FeedbackSuggestionBot = 5
FeedbackSuggestionClient = 6
FeedbackSuggestionWiki = 7
FloorHigher = 0
FloorLower = 15
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
ShieldGray = 11
EmblemNone = 0
EmblemRed = 1
EmblemBlue = 2
EmblemGold = 3
EmblemSilver = 4
EmblemBronze = 5
EmblemAlly = 6
EmblemEnemy = 7
EmblemNeutral = 8
EmblemOther = 9
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
HealthBarAetherStone = 4
GroupDead = 0
GroupPlayer = 1
GroupJrSupport = 2
GroupSeniorSupport = 3
GroupJrCommunityManager = 4
GroupSeniorCommunityManager = 5
GroupJrGamemaster = 6
GroupSeniorGamemaster = 7
Directions = {
	Invalid = 8,
	NorthWest = 7,
	SouthWest = 6,
	SouthEast = 5,
	NorthEast = 4,
	West = 3,
	South = 2,
	East = 1,
	North = 0
}
North = Directions.North
East = Directions.East
South = Directions.South
West = Directions.West
NorthEast = Directions.NorthEast
SouthEast = Directions.SouthEast
SouthWest = Directions.SouthWest
NorthWest = Directions.NorthWest
FightOffensive = 1
FightBalanced = 2
FightDefensive = 3
DontChase = 0
ChaseOpponent = 1
PvpPeaceful = 0
PvpDefensive = 1
PvpOffensive = 2
ArchetypeNone = 0
ArchetypeWarfare = 1
ArchetypeArchery = 2
ArchetypeShadow = 3
ArchetypeProtection = 4
ArchetypeWizardry = 5
ArchetypeHoly = 6
ArchetypeSpiritual = 7
ArchetypeWitchcraft = 8
ArchetypeLast = ArchetypeWitchcraft + 1
ArchetypeFirst = ArchetypeWarfare
ReputationOrder = 1
ReputationMercenary = 2
ReputationVillain = 3
ProfessionFishing = 0
ProfessionMining = 1
ProfessionFarming = 2
ProfessionBreeding = 3
ProfessionCarpentry = 4
ProfessionBlacksmithing = 5
ProfessionHusbandry = 6
ProfessionWeaving = 7
ProfessionCooking = 8
ProfessionWoodcutting = 9
ProfessionFirst = 0
ProfessionLast = 9
ProfessionNone = 255
MinigameTypeGeneric = -1
MinigameTypeFishing = 0
MinigameTypeMining = 1
MinigameTypeFarming = 2
MinigameTypeBreeding = 3
MinigameTypeCarpentry = 4
MinigameTypeBlacksmithing = 5
MinigameTypeHusbandry = 6
MinigameTypeWeaving = 7
MinigameTypeCooking = 8
MinigameTypeWoodcutting = 9
CraftingProfessions = {
	"blacksmithing",
	"carpentry",
	"weaving",
	"cooking",
	ProfessionBlacksmithing,
	ProfessionCarpentry,
	ProfessionWeaving,
	ProfessionCooking
}
MinigameTypeToInteractionIcon = {
	[MinigameTypeGeneric] = "generic",
	[MinigameTypeFishing] = "fishing",
	[MinigameTypeMining] = "mining",
	[MinigameTypeFarming] = "farming",
	[MinigameTypeBreeding] = "breeding",
	[MinigameTypeCarpentry] = "carpentry",
	[MinigameTypeBlacksmithing] = "blacksmithing",
	[MinigameTypeHusbandry] = "husbandry",
	[MinigameTypeWeaving] = "weaving",
	[MinigameTypeCooking] = "cooking",
	[MinigameTypeWoodcutting] = "woodcutting"
}
GameProtocolChecksum = 1
GameAccountNames = 2
GameChallengeOnLogin = 3
GamePenalityOnDeath = 4
GameNameOnNpcTrade = 5
GameDoubleFreeCapacity = 6
GameDoubleExperience = 7
GameTotalCapacity = 8
GameSkillsBase = 9
GamePlayerRegenerationTime = 10
GameChannelPlayerList = 11
GamePlayerMounts = 12
GameEnvironmentEffect = 13
GameCreatureEmblems = 14
GameItemAnimationPhase = 15
GameMagicEffectU16 = 16
GamePlayerMarket = 17
GameSpritesU32 = 18
GameTileAddThingWithStackpos = 19
GameOfflineTrainingTime = 20
GamePurseSlot = 21
GameFormatCreatureName = 22
GameSpellList = 23
GameClientPing = 24
GameExtendedClientPing = 25
GameDoubleHealth = 28
GameDoubleSkills = 29
GameChangeMapAwareRange = 30
GameMapMovePosition = 31
GameAttackSeq = 32
GameBlueNpcNameColor = 33
GameDiagonalAnimatedText = 34
GameLoginPending = 35
GameNewSpeedLaw = 36
GameForceFirstAutoWalkStep = 37
GameMinimapRemove = 38
GameDoubleShopSellAmount = 39
GameContainerPagination = 40
GameThingMarks = 41
GameLooktypeU16 = 42
GamePlayerAddons = 44
GameMessageLevel = 46
GameNewFluids = 47
GamePlayerStateU16 = 48
GameNewOutfitProtocol = 49
GamePVPMode = 50
GameWritableDate = 51
GameBaseSkillU16 = 53
GameCreatureIcons = 54
GameHideNpcNames = 55
GameSpritesAlphaChannel = 56
GamePremiumExpiration = 57
GameEnhancedAnimations = 59
GameOGLInformation = 60
GameMessageSizeCheck = 61
GamePreviewState = 62
GameLoginPacketEncryption = 63
GameClientVersion = 64
GameContentRevision = 65
GameExperienceBonus = 66
GameAuthenticator = 67
GameUnjustifiedPoints = 68
GameSessionKey = 69
GameDeathType = 70
GameIdleAnimations = 71
GameKeepUnawareTiles = 72
GameIngameStore = 73
GameIngameStoreHighlights = 74
GameIngameStoreServiceType = 75
GameAdditionalSkills = 76
GameDistanceEffectU16 = 77
GameExtendedOpcode = 80
GameMinimapLimitedToSingleFloor = 81
GameNewWalking = 90
GameSlowerManualWalking = 91
GameExtendedNewWalking = 92
GameBot = 95
GameBiggerMapCache = 96
GameForceLight = 97
GameNoDebug = 98
GameBotProtection = 99
GameFasterAnimations = 101
GameCenteredOutfits = 102
GameSendIdentifiers = 103
GameOutfitShaders = 104
GamePacketSizeU32 = 110
GameClientHash = 111
GamePacketCompression = 112
GameSlowMountAnimation = 113
GameSlowWagonAnimation = 114
GameAntiAliasing = 115
GameUIItemTexture = 116
GameFloorEffects = 117
GameFadeOnDeath = 118
GameHideOwnCastBar = 119
GameHideOthersCastBar = 120
GameFixedWalkAnimationSpeed = 121
LastGameFeature = 122
TextColors = {
	lightblue = "#5ff7f7",
	yellow = "#e6c832",
	blue = "#9f9dfd",
	orange = "#f36500",
	white = "#ffffff",
	red = "#ed4337",
	broadcast = "#03fc90",
	green = "#00EB00"
}
TalkTypes = {
	TalkTypeInvalid = 255,
	TalkTypeChannelGold = 20,
	TalkTypeChannelGreen = 19,
	TalkTypeGamemasterBroadcastGreen = 18,
	TalkTypeMonsterYell = 17,
	TalkTypeMonsterSay = 16,
	TalkTypeGameMasterPrivateTo = 15,
	TalkTypeGameMasterPrivateFrom = 14,
	TalkTypeGamemasterChannel = 13,
	TalkTypeGamemasterBroadcast = 12,
	TalkTypeNpcTo = 11,
	TalkTypeNpcFrom = 10,
	TalkTypeSpell = 9,
	TalkTypeChannelOrange = 8,
	TalkTypeChannelYellow = 7,
	TalkTypeChannelWhite = 6,
	TalkTypePrivateTo = 5,
	TalkTypePrivateFrom = 4,
	TalkTypeYell = 3,
	TalkTypeWhisper = 2,
	TalkTypeSay = 1,
	TalkTypeNone = 0
}
TextTypes = {
	TextTypeEventAdvance = 5,
	TextTypeWarning = 4,
	TextTypeDefault = 3,
	TextTypeConsoleRed = 2,
	TextTypeConsoleBlue = 1,
	TextTypeNone = 0,
	TextTypeInvalid = 255,
	TextTypeScreenError = 30,
	TextTypeScreenBoxNoDuration = 29,
	TextTypeScreenBox = 28,
	TextTypeSpeechBubble = 27,
	TextTypeBroadcast = 26,
	TextTypeProgress = 25,
	TextTypeError = 24,
	TextTypeConsoleWhite = 23,
	TextTypeLook = 22,
	TextTypeConsoleOrange = 21,
	TextTypeEventOrange = 20,
	TextTypeParty = 19,
	TextTypePartyManagement = 18,
	TextTypeGuild = 17,
	TextTypeLoot = 16,
	TextTypeEventDefault = 15,
	TextTypeExpOthers = 14,
	TextTypeHealOthers = 13,
	TextTypeDamageOthers = 12,
	TextTypeExp = 11,
	TextTypeHeal = 10,
	TextTypeDamageReceived = 9,
	TextTypeDamageDealt = 8,
	TextTypeInfoDescription = 7,
	TextTypeSmall = 6
}
RD_RSA = "749211159682025922153040660400777019027204757244376289573105595939928351381592299618691771533349026863507675601490870222332805688539973073333055996133038278864749803140185512069480238201465044521408580118462025696465082843482092208021895212173830544323681953243030378530797476121812008496399414010141953818393839243752524079727066123738140124744795923483017428718496020922807500419747319744674997603224538277952462851041554590108372146477274330623926035237300737554840925793402101265312964248639552057366483324412497173794179287644390116328098143776583358565335680568908466854199324643721143742909027955429260215492825855919707734973935969201696642052654304305822780988953783746607808453860370689434888200307032201494029477451467657630054829067162459242612331043799510866690257583949393219907388662829065892143292655862454890156409035164487365772838770749954969012598325404421138789452470163492893624440034105310860701822100871673053529532975500988290890077246654009354882711683640333602997445968445703626267252781178303029490931251316438917156283913882484917279538615792207252503205669734131059265551477653269838706938959621519878487728663147515509052245051586203186486612847204688488265906544436897518425985581257225070580495440487"
OsTypes = {
	OtclientLinux = 10,
	Flash = 3,
	Linux = 1,
	Windows = 2,
	OtclientMac = 12,
	OtclientWindows = 11
}
PathFindResults = {
	Impossible = 2,
	NoWay = 4,
	TooFar = 3,
	Ok = 0,
	Position = 1
}
PathFindFlags = {
	AllowNonWalkable = 8,
	AllowNonPathable = 4,
	AllowCreatures = 2,
	AllowNullTiles = 1
}
ChannelEvent = {
	Invite = 2,
	Leave = 1,
	Join = 0,
	Exclude = 3
}
ExtendedIds = {
	Arena = 106,
	Achievements = 105,
	ChannelingMinigame = 104,
	Professions = 103,
	Interactions = 102,
	RangersCompany = 101,
	NeedsUpdate = 7,
	MapShader = 6,
	Particles = 5,
	Game = 4,
	Sound = 3,
	Ping = 2,
	Locale = 1,
	Activate = 0,
	DialogueViewer = 151,
	PlayerReport = 150,
	Titles = 149,
	Inventory = 148,
	Guild = 147,
	PremiumStore = 146,
	RestedExperience = 145,
	LevelUpNotification = 144,
	HearthTeleport = 143,
	Telegraph = 142,
	Journal = 141,
	LootNotification = 140,
	MapRewards = 139,
	Market = 138,
	Waypoints = 137,
	NorthStar = 136,
	Bank = 135,
	PartyManager = 134,
	LevelAttributes = 133,
	ChannelSelector = 132,
	RessurrectionSpawnPoint = 131,
	Mailbox = 130,
	MapViewManager = 129,
	House = 128,
	Tradepacks = 127,
	Regions = 126,
	StatusIconText = 125,
	Tutorial = 124,
	Friends = 123,
	Quest = 122,
	Wagon = 121,
	Mount = 120,
	AbilityBar = 119,
	Reputation = 118,
	Infusion = 117,
	Dialogue = 116,
	Cards = 115,
	FishFight = 114,
	Crafting = 113,
	Trading = 112,
	OutfitManagement = 111,
	Crosshair = 110,
	QuestManager = 109,
	Archetypes = 108,
	ThingCheckInformation = 107
}
PreviewState = {
	Inactive = 1,
	Default = 0,
	Active = 2
}
Blessings = {
	SparkOfPhoenix = 16,
	WisdomOfSolitude = 8,
	FireOfSuns = 4,
	EmbraceOfArchlight = 2,
	SpiritualShielding = 1,
	None = 0,
	Gold = 64,
	TwistOfFate = 32
}
DeathType = {
	Regular = 0,
	Blessed = 1
}
ProductType = {
	NameChange = 1,
	Other = 0
}
StoreErrorType = {
	Information = 4,
	TransferError = 3,
	HistoryError = 2,
	NetworkError = 1,
	PurchaseError = 0,
	NoError = -1
}
StoreState = {
	Timed = 3,
	None = 0,
	Sale = 2,
	New = 1
}
SoundChannels = {
	Effect = 2,
	Music = 1
}
ItemQualityNormal = 0
ItemQualityHigh = 1
ItemQualitySuperior = 2
ItemQualityArtisan = 3
ItemQualityFirst = ItemQualityNormal
ItemQualityLast = ItemQualityArtisan
ItemConditionPoor = 0
ItemConditionNormal = 1
ItemConditionGood = 2
ItemConditionGreat = 3
ItemConditionExcellent = 4
StatsAttack = 0
StatsDefense = 1
StatsDexterity = 2
StatsIntelligence = 3
StatsMight = 4
StatsWisdom = 5
StatsVitality = 6
StatsPhysicalAttackBase = 7
StatsPhysicalAttackBonus = 8
StatsPhysicalAttackEffective = 9
StatsMagicAttackBase = 10
StatsMagicAttackBonus = 11
StatsMagicAttackEffective = 12
StatsPhysicalDefenseBase = 13
StatsPhysicalDefenseBonus = 14
StatsPhysicalDefenseEffective = 15
StatsMagicDefenseBase = 16
StatsMagicDefenseBonus = 17
StatsMagicDefenseEffective = 18
StatsHealingBase = 19
StatsHealingBonus = 20
StatsHealingEffective = 21
StatsMaxHealthBase = 22
StatsMaxHealthBonus = 23
StatsMaxHealthEffective = 24
StatsMaxManaBase = 25
StatsMaxManaBonus = 26
StatsMaxManaEffective = 27
StatsHealthRegenerationBase = 28
StatsHealthRegenerationBonus = 29
StatsHealthRegenerationEffective = 30
StatsManaRegenerationBase = 31
StatsManaRegenerationBonus = 32
StatsManaRegenerationEffective = 33
StatsHasteBase = 34
StatsHasteBonus = 35
StatsHasteEffective = 36
StatsPrecisionBase = 37
StatsPrecisionBonus = 38
StatsPrecisionEffective = 39
StatsImpactBase = 40
StatsImpactBonus = 41
StatsImpactEffective = 42
StatsFirst = StatsAttack
StatsLast = StatsImpactEffective
StatsPrimaryAttribute = {
	[StatsAttack] = true,
	[StatsDefense] = true,
	[StatsDexterity] = true,
	[StatsIntelligence] = true,
	[StatsMight] = true,
	[StatsWisdom] = true,
	[StatsVitality] = true
}
MessageTypeNone = 0
MessageTypeHeal = 1
MessageTypeExperience = 2
MessageTypeRemoveExperience = 3
MessageTypeDamageSpell = 4
MessageTypeDamageLifedrain = 5
MessageTypeHealMana = 6
MessageTypeDamageBasicAttack = 7
MessageTypeDamageReceived = 255
MessageColors = {
	[MessageTypeNone] = "#ffffffff",
	[MessageTypeHeal] = "#16d31aff",
	[MessageTypeHealMana] = "#b603fcff",
	[MessageTypeExperience] = "#ffffffff",
	[MessageTypeRemoveExperience] = "#ff0000ff",
	[MessageTypeDamageSpell] = "#e2b916ff",
	[MessageTypeDamageLifedrain] = "#000000ff",
	[MessageTypeDamageBasicAttack] = "#ffffffff",
	[MessageTypeDamageReceived] = "#ff0000ff"
}
QualityAbbreviations = {
	[ItemQualityNormal] = "NQ",
	[ItemQualityHigh] = "HQ",
	[ItemQualitySuperior] = "SQ",
	[ItemQualityArtisan] = "AQ"
}
QualityNames = {
	[ItemQualityNormal] = "normal",
	[ItemQualityHigh] = "high",
	[ItemQualitySuperior] = "superior",
	[ItemQualityArtisan] = "artisan"
}
ConditionNames = {
	[ItemConditionPoor] = "poor",
	[ItemConditionNormal] = "normal",
	[ItemConditionGood] = "good",
	[ItemConditionGreat] = "great",
	[ItemConditionExcellent] = "excellent"
}
ProfessionNames = {
	[ProfessionFishing] = "Fishing",
	[ProfessionMining] = "Mining",
	[ProfessionFarming] = "Farming",
	[ProfessionBreeding] = "Breeding",
	[ProfessionCarpentry] = "Carpentry",
	[ProfessionBlacksmithing] = "Blacksmithing",
	[ProfessionHusbandry] = "Husbandry",
	[ProfessionWeaving] = "Weaving",
	[ProfessionCooking] = "Cooking",
	[ProfessionWoodcutting] = "Woodcutting"
}
ProfessionIds = {
	fishing = ProfessionFishing,
	mining = ProfessionMining,
	farming = ProfessionFarming,
	breeding = ProfessionBreeding,
	carpentry = ProfessionCarpentry,
	husbandry = ProfessionHusbandry,
	weaving = ProfessionWeaving,
	cooking = ProfessionCooking,
	woodcutting = ProfessionWoodcutting,
	blacksmithing = ProfessionBlacksmithing
}
ArchetypeNames = {
	[ArchetypeWarfare] = "Warfare",
	[ArchetypeArchery] = "Archery",
	[ArchetypeShadow] = "Shadow",
	[ArchetypeProtection] = "Protection",
	[ArchetypeWizardry] = "Wizardry",
	[ArchetypeHoly] = "Holy",
	[ArchetypeSpiritual] = "Spiritual",
	[ArchetypeWitchcraft] = "Witchcraft"
}
ArchetypeIds = {
	warfare = ArchetypeWarfare,
	archery = ArchetypeArchery,
	shadow = ArchetypeShadow,
	protection = ArchetypeProtection,
	wizardry = ArchetypeWizardry,
	holy = ArchetypeHoly,
	spiritual = ArchetypeSpiritual,
	witchcraft = ArchetypeWitchcraft
}
ArchetypeFlags = {
	Protection = 8,
	Shadow = 4,
	Archery = 2,
	Warfare = 1,
	Spiritual = 64,
	Witchcraft = 128,
	None = 0,
	Holy = 32,
	Wizardry = 16
}
ReputationNames = {
	[ReputationVillain] = "Villain",
	[ReputationMercenary] = "Mercenary",
	[ReputationOrder] = "Order"
}
REPUTATION_NPC_TIER_1_EXPERIENCE = 1000
REPUTATION_NPC_TIER_2_EXPERIENCE = 3000
REPUTATION_NPC_TIER_3_EXPERIENCE = 7000
AbilityBarCategoryNone = 0
AbilityBarCategorySpell = 1
AbilityBarCategoryCrafting = 2
AbilityBarCategoryFishing = 3
AbilityBarCategoryShip = 4
AbilityBarCategoryWeaponSkill = 5
AbilityBarCategoryMount = 6
AbilityBarCategoryMountSkillWidget = 7
AbilityBarCategoryFirst = 1
AbilityBarCategoryLast = 7
AbilityBarCategoryNames = {
	[AbilityBarCategorySpell] = "Spells",
	[AbilityBarCategoryCrafting] = "Crafting",
	[AbilityBarCategoryFishing] = "Fishing",
	[AbilityBarCategoryShip] = "Ship",
	[AbilityBarCategoryWeaponSkill] = "Weapon Skill",
	[AbilityBarCategoryMount] = "Mount"
}
AbilityTypeSynthesis = 1
AbilityTypeShine = 2
AbilityTypeTouch = 3
AbilityTypeMend = 4
AbilityTypeFishing = 5
AbilityTypeBuff = 6
AbilityTypeFirst = 1
AbilityTypeLast = 6
AbilityTypeNames = {
	[AbilityTypeSynthesis] = "Synthesis",
	[AbilityTypeShine] = "Shine",
	[AbilityTypeTouch] = "Touch",
	[AbilityTypeMend] = "Mend",
	[AbilityTypeFishing] = "Fishing",
	[AbilityTypeBuff] = "Buff"
}
AbilityNames = {
	[AbilityTypeSynthesis] = {
		"Apprentice Synthesis",
		"Expert Synthesis",
		"Master Synthesis",
		"Artisan Synthesis",
		"Smither's Synthesis"
	},
	[AbilityTypeShine] = {
		"Apprentice Shine",
		"Expert Shine",
		"Master Shine",
		"Artisan Shine",
		"Carpenter's Shine"
	},
	[AbilityTypeTouch] = {
		"Apprentice Touch",
		"Expert Touch",
		"Master Touch",
		"Artisan Touch",
		"Precision Touch"
	},
	[AbilityTypeMend] = {
		"Apprentice Mend",
		"Expert Mend",
		"Master Mend",
		"Artisan Mend",
		"Focused Mend"
	},
	[AbilityTypeFishing] = {
		"Basic Reel",
		"Give Slack",
		"Big Reel",
		"Fishing Nets",
		"Expert Reel",
		"Harpoon",
		"Master Reel",
		"Fishing Basket"
	},
	[AbilityTypeBuff] = {
		"New Tools",
		"Steady Hand",
		"Firm Grip",
		"Touch of Salt"
	}
}
ShaderNone = 0
ShaderLightBlue = 1
ShaderBlue = 2
ShaderRed = 3
ShaderDarkRed = 4
ShaderPurple = 5
ShaderWhite = 6
ShaderLightBlueStatic = 7
ShaderBlueStatic = 8
ShaderRedStatic = 9
ShaderDarkRedStatic = 10
ShaderPurpleStatic = 11
ShaderWhiteStatic = 12
ShaderMapLightFog = 13
ShaderMapHeavyFog = 14
ShaderMapLightRain = 15
ShaderMapHeavyRain = 16
ShaderMapHeavyRainLightning = 17
ShaderMapLightSandstorm = 18
ShaderMapHeavySandstorm = 19
ShaderMapLightSandstormDistortion = 20
ShaderMapHeavySandstormDistortion = 21
ShaderMapDistortion = 22
ShaderMapLightSnow = 23
ShaderMapHeavySnow = 24
ShaderWidgetGlow = 25
ShaderWidgetGrayscale = 26
ShaderAetherEnhancement = 27
ShaderMapSepia = 28
ShaderRage = 29
ShaderGreen = 30
ShaderGreenStatic = 31
ShaderYellow = 32
ShaderYellowStatic = 33
ShaderFreeze = 34
ShaderCreatureHighlight = 35
ShaderGreenOutfit = 36
ShaderPurpleOutfit = 37
ShaderDarkGreen = 38
ShaderDarkGreenStatic = 39
ShaderForestGreen = 40
ShaderMud = 41
MAPMARK_MISSION_COMPLETE = 0
MAPMARK_MISSION_AVAILABLE = 1
MAPMARK_MISSION_IN_PROGRESS = 2
MAPMARK_FISHING_AREA = 3
MAPMARK_TRADEPOST = 4
MAPMARK_HOUSE = 5
MAPMARK_SEAPORT = 6
MAPMARK_REGION_CONFLICT = 7
MAPMARK_DYNAMICEVENT = 8
MAPMARK_CRAFTING_STATION = 9
MAPMARK_LAND = 10
MAPMARK_COMPASS = 11
MAPMARK_MURDERER = 12
MAPMARK_TRADEPACK = 13
MAPMARK_SMALL_LAND = 14
MAPMARK_MEDIUM_LAND = 15
MAPMARK_LARGE_LAND = 16
MAPMARK_FORT = 17
MAPMARK_STRONGHOLD = 18
MAPMARK_PVP_ARENA = 19
MAPMARK_PARTY_MEMBER = 20
MAPMARK_RANGERS_COMPANY = 21
MAPMARK_REPUTATION_NPC_1 = 22
MAPMARK_REPUTATION_NPC_2 = 23
MAPMARK_REPUTATION_NPC_3 = 24
MAPMARK_NPC_BANK = 25
MAPMARK_NPC_FISHPOST = 26
MAPMARK_NPC_BUILDERS = 27
MAPMARK_NPC_WAREHOUSE = 28
MAPMARK_RESPAWN_SHRINE = 29
MAPMARK_MARKET = 30
MAPMARK_MOA_MERCHANT = 31
MAPMARK_PLAYER = 32
MAPMARK_ZONE = 33
MAPMARK_VENDOR = 34
MAPMARK_COLLECTOR = 35
MAPMARK_FIRST = MAPMARK_MISSION_COMPLETE
MAPMARK_LAST = MAPMARK_COLLECTOR
STAT_MAXHITPOINTS = 0
STAT_MAXMANAPOINTS = 1
STAT_ATTACKSPEED = 2
STAT_ATTACK = 3
STAT_PHYSICALATTACK = 4
STAT_MAGICATTACK = 5
STAT_DEFENSE = 6
STAT_PHYSICALDEFENSE = 7
STAT_MAGICDEFENSE = 8
STAT_MIGHT = 9
STAT_DEXTERITY = 10
STAT_HASTE = 11
STAT_INTELLIGENCE = 12
STAT_WISDOM = 13
STAT_SPELLCOOLDOWN = 14
STAT_RANGEBONUS = 15
STAT_HEAL = 16
STAT_SPEED = 17
STAT_MANA_REGENERATION = 18
STAT_CRITICAL_CHANCE = 19
STAT_CRITICAL_DAMAGE = 20
STAT_HEALTH_HEALING_PERCENT = 21
STAT_VITALITY = 22
STAT_HEALTH_REGENERATION = 23
CRAFTING_STAT_MEND = 0
CRAFTING_STAT_TOUCH = 1
CRAFTING_STAT_SYNTHESIS = 2
CRAFTING_STAT_CONDITION = 3
ITEM_GRADE_BASIC = 0
ITEM_GRADE_GRAND = 1
ITEM_GRADE_RARE = 2
ITEM_GRADE_ARCANE = 3
ITEM_GRADE_CELESTIAL = 4
ITEM_GRADE_ASCENDANT = 5
ITEM_GRADE_HEROIC = 6
ITEM_GRADE_MYTHIC = 7
ITEM_GRADE_LEGENDARY = 8
ITEM_GRADE_LEGENDARYPLUS = 9
ITEM_GRADE_LEGENDARYMAX = 10
ITEM_GRADE_FIRST = ITEM_GRADE_BASIC
ITEM_GRADE_LAST = ITEM_GRADE_LEGENDARYMAX
ItemGradeNames = {
	[ITEM_GRADE_BASIC] = "Basic",
	[ITEM_GRADE_GRAND] = "Grand",
	[ITEM_GRADE_RARE] = "Rare",
	[ITEM_GRADE_ARCANE] = "Arcane",
	[ITEM_GRADE_CELESTIAL] = "Celestial",
	[ITEM_GRADE_ASCENDANT] = "Ascendant",
	[ITEM_GRADE_HEROIC] = "Heroic",
	[ITEM_GRADE_MYTHIC] = "Mythic",
	[ITEM_GRADE_LEGENDARY] = "Legendary",
	[ITEM_GRADE_LEGENDARYPLUS] = "Legendary Plus",
	[ITEM_GRADE_LEGENDARYMAX] = "Legendary Max"
}
FishQualityNames = {
	[0] = "Average",
	"High",
	"Superior",
	"Artisan"
}
ItemQualityFrames = {
	[9] = "/images/ui/items/legendary/2",
	[10] = "/images/ui/items/legendary/3",
	[8] = "/images/ui/items/legendary/1"
}
SILVER_ICON_ID = 99
REPUTATION_ORDER_ICON_ID = 100
REPUTATION_MERCENARY_ICON_ID = 101
REPUTATION_CRIMINAL_ICON_ID = 102
INFAMY_ICON_ID = 103
LEVEL_UP_ICON_ID = 104
SPELL_RECAST_ICON = 105
SALT_WATER = 0
OCEAN_SHORE = 1
FRESH_WATER = 2
TradeState = {
	Transfer = 4,
	Acknowledge = 3,
	Accept = 2,
	Initiated = 1,
	None = 0
}
TRADEPACK_CATEGORY_DEFAULT = 1
TRADEPACK_CATEGORY_QUEST = 2
TRADEPACK_STORAGE_PLAYER = 1
TRADEPACK_STORAGE_SHIP = 2
TRADEPACK_STORAGE_WAGON = 3
TRADEPACK_STORAGE_FIRST = TRADEPACK_STORAGE_PLAYER
TRADEPACK_STORAGE_LAST = TRADEPACK_STORAGE_WAGON
REPUTATION_ORDER = 1
REPUTATION_MERCENARY = 2
REPUTATION_CRIMINAL = 3
REPUTATION_FIRST = REPUTATION_ORDER
REPUTATION_LAST = REPUTATION_CRIMINAL
REPUTATION_PATH_DEFAULT = 1
REPUTATION_PATH_LEFT = 2
REPUTATION_PATH_MIDDLE = 3
REPUTATION_PATH_RIGHT = 4
REPUTATION_PATH_FIRST = REPUTATION_PATH_DEFAULT
REPUTATION_PATH_LAST = REPUTATION_PATH_RIGHT
FishTypeNames = {
	[OCEAN_SHORE] = "Shoreline Fish",
	[FRESH_WATER] = "Fresh Water Fish",
	[SALT_WATER] = "Salt Water Fish"
}
FishingStats = {
	abilityBonusTable = {
		{
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
			15
		},
		{
			10,
			11,
			12,
			13,
			14,
			15,
			16,
			17,
			18,
			19,
			20
		},
		{
			15,
			16,
			17,
			18,
			19,
			20,
			21,
			22,
			23,
			24,
			25
		},
		{
			20,
			21,
			22,
			23,
			24,
			25,
			26,
			27,
			28,
			29,
			30
		},
		{
			25,
			26,
			27,
			28,
			29,
			30,
			31,
			32,
			33,
			34,
			35
		},
		{
			30,
			31,
			32,
			33,
			34,
			35,
			36,
			37,
			38,
			39,
			40
		}
	},
	durabilityTable = {
		{
			500,
			510,
			520,
			530,
			540,
			550,
			560,
			570,
			580,
			590,
			600
		},
		{
			750,
			760,
			770,
			780,
			790,
			800,
			810,
			820,
			830,
			840,
			850
		},
		{
			1000,
			1100,
			1200,
			1300,
			1400,
			1500,
			1600,
			1700,
			1800,
			1900,
			2000
		},
		{
			1250,
			1350,
			1450,
			1550,
			1650,
			1750,
			1850,
			1950,
			2050,
			2150,
			2250
		},
		{
			1500,
			1600,
			1700,
			1800,
			1900,
			2000,
			2100,
			2200,
			2300,
			2400,
			2500
		},
		{
			1750,
			1850,
			1950,
			2050,
			2150,
			2250,
			2350,
			2450,
			2550,
			2650,
			2750
		}
	}
}
Ports = {
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Ravencrest Port",
		pos = {
			y = 5107,
			x = 5058,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Margrove Port",
		pos = {
			y = 4866,
			x = 4875,
			z = 7
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Barnsley Port",
		pos = {
			y = 4990,
			x = 5025,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Sajecho Port",
		pos = {
			y = 5008,
			x = 4785,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Orca Bay Port",
		pos = {
			y = 5341,
			x = 4673,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Eelsnout Port",
		pos = {
			y = 5274,
			x = 4439,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Roatuga Port",
		pos = {
			y = 5081,
			x = 4254,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Seabreeze Port",
		pos = {
			y = 5165,
			x = 3982,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Northern Hook Port",
		pos = {
			y = 4873,
			x = 4083,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Mount Shiver Northern Dock",
		pos = {
			y = 4882,
			x = 4336,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Hogula Port",
		pos = {
			y = 5495,
			x = 4360,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Rumalos Abandoned Dock",
		pos = {
			y = 5594,
			x = 3932,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Gilead Port",
		pos = {
			y = 5935,
			x = 4287,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Vikkar Bay Port",
		pos = {
			y = 4361,
			x = 4636,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Newvik Port",
		pos = {
			y = 4258,
			x = 4310,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Saint Alsek Port",
		pos = {
			y = 4190,
			x = 4114,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Forgotten Wharf",
		pos = {
			y = 4634,
			x = 5883,
			z = 6
		},
		type = MAPMARK_SEAPORT
	},
	{
		minZoom = 3,
		maxZoom = 10,
		description = "Bog's Berth Dock",
		pos = {
			y = 4682,
			x = 5993,
			z = 6
		},
		type = MAPMARK_SEAPORT
	}
}
GeneralNpcs = {
	{
		description = "Collector",
		type = MAPMARK_COLLECTOR,
		pos = {
			y = 5307,
			x = 4700,
			z = 7
		}
	},
	{
		description = "Collector",
		type = MAPMARK_COLLECTOR,
		pos = {
			y = 5085,
			x = 5116,
			z = 6
		}
	},
	{
		description = "Collector",
		type = MAPMARK_COLLECTOR,
		pos = {
			y = 5544,
			x = 5366,
			z = 6
		}
	},
	{
		description = "Bank",
		type = MAPMARK_NPC_BANK,
		pos = {
			y = 5111,
			x = 5115,
			z = 6
		}
	},
	{
		description = "Builder",
		type = MAPMARK_NPC_BUILDERS,
		pos = {
			y = 4974,
			x = 5029,
			z = 7
		}
	},
	{
		description = "Builder",
		type = MAPMARK_NPC_BUILDERS,
		pos = {
			y = 5111,
			x = 5069,
			z = 6
		}
	},
	{
		description = "Builder",
		type = MAPMARK_NPC_BUILDERS,
		pos = {
			y = 5112,
			x = 5081,
			z = 6
		}
	},
	{
		description = "Builder",
		type = MAPMARK_NPC_BUILDERS,
		pos = {
			y = 5198,
			x = 5124,
			z = 7
		}
	},
	{
		description = "Fishpost",
		type = MAPMARK_NPC_FISHPOST,
		pos = {
			y = 5152,
			x = 3983,
			z = 6
		}
	},
	{
		description = "Fishpost",
		type = MAPMARK_NPC_FISHPOST,
		pos = {
			y = 5495,
			x = 4355,
			z = 6
		}
	},
	{
		description = "Fishpost",
		type = MAPMARK_NPC_FISHPOST,
		pos = {
			y = 5335,
			x = 4664,
			z = 7
		}
	},
	{
		description = "Fishpost",
		type = MAPMARK_NPC_FISHPOST,
		pos = {
			y = 4868,
			x = 4879,
			z = 7
		}
	},
	{
		description = "Fishpost",
		type = MAPMARK_NPC_FISHPOST,
		pos = {
			y = 5097,
			x = 5052,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5593,
			x = 3940,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5159,
			x = 3981,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 4189,
			x = 4118,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5934,
			x = 4286,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 4260,
			x = 4310,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5500,
			x = 4358,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5270,
			x = 4438,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 4360,
			x = 4637,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5337,
			x = 4671,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5006,
			x = 4790,
			z = 6
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 4865,
			x = 4880,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 4988,
			x = 5026,
			z = 7
		}
	},
	{
		description = "Warehouse",
		type = MAPMARK_NPC_WAREHOUSE,
		pos = {
			y = 5115,
			x = 5066,
			z = 6
		}
	},
	{
		description = "Harbor Island Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5131,
			x = 4005,
			z = 7
		}
	},
	{
		description = "Gilead Island Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5594,
			x = 4205,
			z = 7
		}
	},
	{
		description = "Glaceforde Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 4475,
			x = 4436,
			z = 6
		}
	},
	{
		description = "Sajecho Island Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5131,
			x = 4725,
			z = 7
		}
	},
	{
		description = "Rohna Woods Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 4976,
			x = 5058,
			z = 7
		}
	},
	{
		description = "South Glademire Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5039,
			x = 5340,
			z = 7
		}
	},
	{
		description = "Hadarak Desert Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5356,
			x = 5466,
			z = 7
		}
	},
	{
		description = "Forsaken Mountains Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 4857,
			x = 5478,
			z = 7
		}
	},
	{
		description = "Zephyr Vale Outpost",
		type = MAPMARK_RANGERS_COMPANY,
		pos = {
			y = 5250,
			x = 5848,
			z = 6
		}
	},
	{
		description = "Seabreeze Tradepost",
		tradepostId = 4,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5154,
			x = 3956,
			z = 6
		}
	},
	{
		description = "Gilead Tradepost",
		tradepostId = 7,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5853,
			x = 4349,
			z = 7
		}
	},
	{
		description = "Glaceforde Tradepost",
		tradepostId = 8,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4367,
			x = 4602,
			z = 7
		}
	},
	{
		description = "Orca Bay Tradepost",
		tradepostId = 3,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5311,
			x = 4669,
			z = 7
		}
	},
	{
		description = "Margrove Tradepost",
		tradepostId = 2,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4875,
			x = 4898,
			z = 7
		}
	},
	{
		description = "Tarmire Tradepost",
		tradepostId = 5,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5500,
			x = 4967,
			z = 7
		}
	},
	{
		description = "Ravencrest Tradepost",
		tradepostId = 9,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5108,
			x = 5070,
			z = 6
		}
	},
	{
		description = "Tradepost",
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4654,
			x = 5268,
			z = 7
		}
	},
	{
		description = "Riverend Tradepost",
		tradepostId = 1,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5150,
			x = 5483,
			z = 7
		}
	},
	{
		description = "Darzuac Tradepost",
		tradepostId = 6,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5685,
			x = 5557,
			z = 7
		}
	},
	{
		description = "Defiance Tradepost",
		tradepostId = 10,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 5200,
			x = 5844,
			z = 7
		}
	},
	{
		description = "Anvilhart Embassy Tradepost",
		tradepostId = 11,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4654,
			x = 5268,
			z = 7
		}
	},
	{
		description = "Kari'vir Tradepos",
		tradepostId = 12,
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4131,
			x = 5926,
			z = 5
		}
	},
	{
		description = "Tradepost",
		type = MAPMARK_TRADEPOST,
		pos = {
			y = 4131,
			x = 5926,
			z = 5
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5133,
			x = 3938,
			z = 5
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5134,
			x = 3964,
			z = 4
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5868,
			x = 4311,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 4493,
			x = 4413,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5298,
			x = 4682,
			z = 7
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5090,
			x = 4764,
			z = 7
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5519,
			x = 4937,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5111,
			x = 5099,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5112,
			x = 5107,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5095,
			x = 5117,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5088,
			x = 5143,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5201,
			x = 5173,
			z = 7
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5507,
			x = 5361,
			z = 7
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5689,
			x = 5523,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5710,
			x = 5529,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5700,
			x = 5551,
			z = 6
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5227,
			x = 5629,
			z = 4
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5229,
			x = 5663,
			z = 5
		}
	},
	{
		description = "Vendor",
		type = MAPMARK_VENDOR,
		pos = {
			y = 5548,
			x = 5841,
			z = 8
		}
	}
}
Tradeposts = {}

for _, npcConfig in ipairs(GeneralNpcs) do
	if npcConfig.tradepostId then
		npcConfig.name = npcConfig.description
		Tradeposts[npcConfig.tradepostId] = npcConfig
	end
end

RegionRavencrest = 1
RegionSouthGlademire = 2
RegionNorthGlademire = 4
RegionRohnaWoods = 8
RegionForsakenMountains = 16
RegionSajechoIsland = 32
RegionBuildingBrush = 64
RegionHarborIsland = 128
RegionHadarakDesert = 256
RegionIceContinent = 512
RegionLyderia = 1024
RegionGileadIsland = 2048
RegionElderCoast = 16384
RegionCrowhollowBog = 32768
RegionZephyrVale = 65536
RegionFieldsOfDespair = 131072
RegionTheBlotch = 262144
RegionNorthSteppes = 1048576
Regions = {
	[RegionRavencrest] = {
		name = "Glademire",
		pos = {
			y = 5003,
			x = 5299,
			z = 7
		}
	},
	[RegionSouthGlademire] = {
		name = "Glademire",
		pos = {
			y = 5003,
			x = 5299,
			z = 7
		}
	},
	[RegionNorthGlademire] = {
		name = "Glademire",
		pos = {
			y = 5003,
			x = 5299,
			z = 7
		}
	},
	[RegionRohnaWoods] = {
		name = "Rohna Woods",
		pos = {
			y = 4845,
			x = 5013,
			z = 7
		}
	},
	[RegionForsakenMountains] = {
		name = "Forsaken Mountains",
		pos = {
			y = 4803,
			x = 5445,
			z = 7
		},
		data = {
			displayName = "Forsaken\nMountains"
		}
	},
	[RegionSajechoIsland] = {
		name = "Sajecho Island",
		pos = {
			y = 5164,
			x = 4653,
			z = 7
		}
	},
	[RegionHarborIsland] = {
		name = "Harbor Island",
		pos = {
			y = 5014,
			x = 4095,
			z = 7
		}
	},
	[RegionHadarakDesert] = {
		name = "Hadarak Desert",
		pos = {
			y = 5497,
			x = 5524,
			z = 7
		}
	},
	[RegionGileadIsland] = {
		name = "Gilead Island",
		pos = {
			y = 5670,
			x = 4193,
			z = 7
		}
	},
	[RegionIceContinent] = {
		name = "Glaceforde",
		pos = {
			y = 4239,
			x = 4385,
			z = 7
		}
	},
	[RegionCrowhollowBog] = {
		name = "Crowhollow Bog",
		pos = {
			y = 4893,
			x = 5725,
			z = 7
		},
		data = {
			displayName = "Crowhollow\nBog"
		}
	},
	[RegionZephyrVale] = {
		name = "Zephyr Vale",
		pos = {
			y = 5109,
			x = 5886,
			z = 7
		}
	},
	[RegionFieldsOfDespair] = {
		name = "Fields of Despair",
		pos = {
			y = 4594,
			x = 5755,
			z = 7
		},
		data = {
			displayName = "Fields of\nDespair"
		}
	},
	[RegionTheBlotch] = {
		name = "The Blotch",
		pos = {
			y = 4744,
			x = 6015,
			z = 7
		}
	},
	[RegionElderCoast] = {
		name = "Elder Coast",
		pos = {
			y = 4600,
			x = 5231,
			z = 7
		}
	},
	[RegionNorthSteppes] = {
		name = "Frost Steppes",
		pos = {
			y = 4289,
			x = 5547,
			z = 7
		}
	}
}
RegionsAsc = {}

for id, region in pairs(Regions) do
	region.id = id

	table.insert(RegionsAsc, region)
end

table.sort(RegionsAsc, function(regionA, regionB)
	return regionA.name < regionB.name
end)

RegionNameToId = {
	Ravencrest = RegionRavencrest,
	["South Glademire"] = RegionSouthGlademire,
	["North Glademire"] = RegionNorthGlademire,
	["Rohna Woods"] = RegionRohnaWoods,
	["Forsaken Mountains"] = RegionForsakenMountains,
	["Sajecho Island"] = RegionSajechoIsland,
	["Harbor Island"] = RegionHarborIsland,
	["Hadarak Desert"] = RegionHadarakDesert,
	["Gilead Island"] = RegionGileadIsland,
	Lyderia = RegionLyderia,
	Glaceforde = RegionIceContinent,
	["Crowhollow Bog"] = RegionCrowhollowBog,
	["Zephyr Vale"] = RegionZephyrVale,
	Glademire = {
		RegionRavencrest,
		RegionSouthGlademire,
		RegionNorthGlademire
	},
	["Fields of Despair"] = RegionFieldsOfDespair,
	["The Blotch"] = RegionTheBlotch,
	["Elder Coast"] = RegionElderCoast,
	["Frost Steppes"] = RegionNorthSteppes
}
DynamicEvents = {
	{
		name = "Mounted Vengeance",
		pos = {
			y = 5316,
			x = 5442,
			z = 7
		}
	},
	{
		name = "Thirsty Bandits",
		pos = {
			y = 5076,
			x = 5236,
			z = 7
		}
	},
	{
		name = "Flower Power",
		pos = {
			y = 4988,
			x = 5160,
			z = 7
		}
	},
	{
		name = "For The Love of Demons",
		pos = {
			y = 5043,
			x = 5334,
			z = 7
		}
	},
	{
		name = "A Troll's Favorite Food",
		pos = {
			y = 5153,
			x = 5491,
			z = 7
		}
	},
	{
		name = "Goblins Attack!",
		pos = {
			y = 4978,
			x = 5031,
			z = 7
		}
	},
	{
		name = "Killer Bees",
		pos = {
			y = 4928,
			x = 4940,
			z = 5
		}
	},
	{
		name = "In The Spider's Web",
		pos = {
			y = 4903,
			x = 5008,
			z = 7
		}
	},
	{
		name = "Souls of the Forest",
		pos = {
			y = 4838,
			x = 5013,
			z = 7
		}
	},
	{
		name = "Trespassers Will Be Shot",
		pos = {
			y = 4802,
			x = 4996,
			z = 7
		}
	},
	{
		name = "Open Waters",
		pos = {
			y = 5068,
			x = 4343,
			z = 7
		}
	},
	{
		name = "Greedy Gliders",
		pos = {
			y = 5102,
			x = 4768,
			z = 7
		}
	},
	{
		name = "Piss Drunk Patrons",
		pos = {
			y = 5137,
			x = 3956,
			z = 6
		}
	},
	{
		name = "Raiders of the Wastes",
		pos = {
			y = 5329,
			x = 5238,
			z = 7
		}
	},
	{
		name = "Dangerous Denizens",
		pos = {
			y = 5338,
			x = 4996,
			z = 7
		}
	},
	{
		name = "Amphibious Assassins",
		pos = {
			y = 5512,
			x = 5340,
			z = 7
		}
	},
	{
		name = "Windy Canyon Clash",
		pos = {
			y = 5493,
			x = 5218,
			z = 7
		}
	},
	{
		name = "The Elderwood Grotto",
		pos = {
			y = 5241,
			x = 5369,
			z = 7
		}
	},
	{
		name = "Up From the Deep",
		pos = {
			y = 5146,
			x = 5496,
			z = 7
		}
	},
	{
		name = "Hidden Grounds",
		pos = {
			y = 4921,
			x = 4919,
			z = 7
		}
	},
	{
		name = "The Dark Lighthouse",
		pos = {
			y = 4964,
			x = 4981,
			z = 7
		}
	},
	{
		name = "Lit Beacons",
		pos = {
			y = 4813,
			x = 5106,
			z = 7
		}
	},
	{
		name = "Never Enough Furs",
		pos = {
			y = 4855,
			x = 4922,
			z = 7
		}
	},
	{
		name = "As Above So Below",
		pos = {
			y = 4904,
			x = 5209,
			z = 7
		}
	},
	{
		name = "The Shroom Shaman",
		pos = {
			y = 5063,
			x = 5269,
			z = 7
		}
	},
	{
		name = "The Astronomer's Prediction",
		pos = {
			y = 5266,
			x = 5158,
			z = 7
		}
	},
	[28] = {
		name = "Hexs Heavy Price",
		pos = {
			y = 5486,
			x = 5335,
			z = 7
		}
	},
	[30] = {
		name = "The Bone Carver",
		pos = {
			y = 5550,
			x = 5207,
			z = 7
		}
	},
	[31] = {
		name = "She Sells Seashells",
		pos = {
			y = 5474,
			x = 4874,
			z = 7
		}
	},
	[32] = {
		name = "Look Don't Touch",
		pos = {
			y = 5030,
			x = 4738,
			z = 7
		}
	},
	[33] = {
		name = "Ghost of The Old Mariner",
		pos = {
			y = 4907,
			x = 3983,
			z = 7
		}
	},
	[35] = {
		name = "The Murmuring Tree",
		pos = {
			y = 5237,
			x = 5261,
			z = 7
		}
	},
	[36] = {
		name = "What Does The Fox Say",
		pos = {
			y = 5461,
			x = 5261,
			z = 7
		}
	},
	[38] = {
		name = "Misty Waters",
		pos = {
			y = 4995,
			x = 4652,
			z = 7
		}
	},
	[39] = {
		name = "Swarming Spread",
		pos = {
			y = 5052,
			x = 3998,
			z = 7
		}
	},
	[40] = {
		name = "A Mushroom Cut In Half",
		pos = {
			y = 5073,
			x = 5325,
			z = 7
		}
	},
	[41] = {
		name = "A Usual Day At The Workshop",
		pos = {
			y = 5132,
			x = 4782,
			z = 7
		}
	},
	[42] = {
		name = "Hunters Under The Sunheat",
		pos = {
			y = 5471,
			x = 5236,
			z = 7
		}
	},
	[43] = {
		name = "Man Corrupted Grounds",
		pos = {
			y = 5119,
			x = 5261,
			z = 7
		}
	},
	[44] = {
		name = "Creepy Howls Under The Moon",
		pos = {
			y = 4959,
			x = 5184,
			z = 7
		}
	},
	[47] = {
		name = "The Champion's Den",
		pos = {
			y = 5524,
			x = 4998,
			z = 2
		}
	},
	[49] = {
		name = "Night Sacrifice",
		pos = {
			y = 5566,
			x = 4376,
			z = 4
		}
	},
	[50] = {
		name = "The Hoarder's Stash",
		pos = {
			y = 5876,
			x = 4282,
			z = 6
		}
	},
	[51] = {
		name = "Fishy Secrets",
		pos = {
			y = 5828,
			x = 4239,
			z = 10
		}
	},
	[52] = {
		name = "Starving Crawlers",
		pos = {
			y = 4295,
			x = 4490,
			z = 7
		}
	},
	[53] = {
		name = "Frolls Over the Bridge",
		pos = {
			y = 4344,
			x = 4090,
			z = 5
		}
	},
	[54] = {
		name = "Picky Eaters",
		pos = {
			y = 4483,
			x = 4236,
			z = 7
		}
	},
	[55] = {
		name = "Aggressive Preservation",
		pos = {
			y = 4484,
			x = 4236,
			z = 7
		}
	},
	[56] = {
		name = "Magical Pheromones",
		pos = {
			y = 4293,
			x = 4174,
			z = 7
		}
	},
	[57] = {
		name = "Twisted Hybridization",
		pos = {
			y = 4294,
			x = 4174,
			z = 7
		}
	},
	[58] = {
		name = "Risky Business",
		pos = {
			y = 5511,
			x = 4071,
			z = 7
		}
	},
	[59] = {
		name = "Praise the Sun",
		pos = {
			y = 5647,
			x = 4388,
			z = 6
		}
	},
	[60] = {
		name = "Undead Harvesting",
		pos = {
			y = 4243,
			x = 4823,
			z = 9
		}
	},
	[61] = {
		name = "Ice Cold Enemies",
		pos = {
			y = 4202,
			x = 4772,
			z = 7
		}
	},
	[62] = {
		name = "Lady of the Snow",
		pos = {
			y = 4305,
			x = 4510,
			z = 7
		}
	},
	[63] = {
		name = "Extremist Naturalists",
		pos = {
			y = 5568,
			x = 4113,
			z = 7
		}
	},
	[64] = {
		name = "Humanity Lost",
		pos = {
			y = 4761,
			x = 5479,
			z = 7
		}
	},
	[66] = {
		name = "Tool Appropriation",
		pos = {
			y = 4403,
			x = 4248,
			z = 7
		}
	},
	[67] = {
		name = "Foreigner's Plague",
		pos = {
			y = 4353,
			x = 4614,
			z = 7
		}
	},
	[71] = {
		name = "Overrun Hideout",
		pos = {
			y = 5439,
			x = 4946,
			z = 7
		}
	},
	[72] = {
		name = "The Red Count",
		pos = {
			y = 4735,
			x = 5416,
			z = 3
		}
	},
	[74] = {
		name = "Toxicity",
		pos = {
			y = 4777,
			x = 5823,
			z = 7
		}
	},
	[75] = {
		name = "Chain Reaction",
		pos = {
			y = 4938,
			x = 5703,
			z = 7
		}
	},
	[76] = {
		name = "No Rest for the Wicked",
		pos = {
			y = 5032,
			x = 5481,
			z = 7
		}
	},
	[77] = {
		name = "The Muddy Catch",
		pos = {
			y = 4896,
			x = 5759,
			z = 7
		}
	},
	[78] = {
		name = "A Bad Hookup",
		pos = {
			y = 4897,
			x = 5759,
			z = 7
		}
	},
	[79] = {
		name = "Reaping Harvest",
		pos = {
			y = 5185,
			x = 5841,
			z = 7
		}
	},
	[80] = {
		name = "Daughters of Slaughter I",
		pos = {
			y = 4724,
			x = 5729,
			z = 9
		}
	},
	[81] = {
		name = "Daughters of Slaughter II",
		pos = {
			y = 4781,
			x = 5638,
			z = 9
		}
	},
	[82] = {
		name = "Daughters of Slaughter III",
		pos = {
			y = 4982,
			x = 5710,
			z = 9
		}
	},
	[83] = {
		name = "The Corvine Bride",
		pos = {
			y = 4810,
			x = 5795,
			z = 10
		}
	},
	[85] = {
		name = "Drunken Ritual",
		pos = {
			y = 5060,
			x = 5212,
			z = 7
		}
	},
	[86] = {
		name = "Fear the Reaper",
		pos = {
			y = 4899,
			x = 5707,
			z = 7
		}
	},
	[88] = {
		name = "Turmoil in Orkwatch",
		pos = {
			y = 5523,
			x = 5489,
			z = 7
		}
	},
	[89] = {
		name = "An Escort to Truce",
		pos = {
			y = 5155,
			x = 5825,
			z = 7
		}
	},
	[90] = {
		name = "Orcultist Society",
		pos = {
			y = 5432,
			x = 5830,
			z = 7
		}
	},
	[92] = {
		name = "An Escort to Bastion",
		pos = {
			y = 5182,
			x = 5792,
			z = 7
		}
	},
	[93] = {
		name = "An Escort to Defiance",
		pos = {
			y = 5248,
			x = 5771,
			z = 7
		}
	},
	[95] = {
		name = "Masked Onslaught",
		pos = {
			y = 5242,
			x = 5752,
			z = 7
		}
	},
	[99] = {
		name = "Just a Drop",
		pos = {
			y = 5316,
			x = 5675,
			z = 7
		}
	}
}
CraftingStations = {
	[ProfessionBlacksmithing] = {
		{
			from = {
				y = 5110,
				x = 5098,
				z = 6
			},
			to = {
				y = 5116,
				x = 5104,
				z = 6
			}
		},
		{
			from = {
				y = 4973,
				x = 5037,
				z = 7
			},
			to = {
				y = 4976,
				x = 5040,
				z = 7
			}
		},
		{
			from = {
				y = 5060,
				x = 5291,
				z = 9
			},
			to = {
				y = 5062,
				x = 5293,
				z = 9
			}
		},
		{
			from = {
				y = 5033,
				x = 5339,
				z = 7
			},
			to = {
				y = 5036,
				x = 5344,
				z = 7
			}
		},
		{
			from = {
				y = 5290,
				x = 4700,
				z = 7
			},
			to = {
				y = 5293,
				x = 4703,
				z = 7
			}
		},
		{
			from = {
				y = 5120,
				x = 3946,
				z = 6
			},
			to = {
				y = 5124,
				x = 3950,
				z = 6
			}
		},
		{
			from = {
				y = 5533,
				x = 5366,
				z = 6
			},
			to = {
				y = 5535,
				x = 5368,
				z = 6
			}
		},
		{
			from = {
				y = 5702,
				x = 5508,
				z = 6
			},
			to = {
				y = 5708,
				x = 5512,
				z = 6
			}
		},
		{
			from = {
				y = 5486,
				x = 4961,
				z = 6
			},
			to = {
				y = 5488,
				x = 4964,
				z = 6
			}
		},
		{
			from = {
				y = 4864,
				x = 5361,
				z = 7
			},
			to = {
				y = 4866,
				x = 5363,
				z = 7
			}
		},
		{
			from = {
				y = 5597,
				x = 3971,
				z = 7
			},
			to = {
				y = 5602,
				x = 3973,
				z = 7
			}
		},
		{
			from = {
				y = 4420,
				x = 4214,
				z = 7
			},
			to = {
				y = 4424,
				x = 4218,
				z = 7
			}
		},
		{
			from = {
				y = 4460,
				x = 4322,
				z = 7
			},
			to = {
				y = 4464,
				x = 4325,
				z = 7
			}
		},
		{
			from = {
				y = 5238,
				x = 5639,
				z = 5
			},
			to = {
				y = 5241,
				x = 5643,
				z = 5
			}
		},
		{
			from = {
				y = 4953,
				x = 5710,
				z = 6
			},
			to = {
				y = 4958,
				x = 5715,
				z = 7
			}
		},
		{
			from = {
				y = 4923,
				x = 6025,
				z = 4
			},
			to = {
				y = 4926,
				x = 6028,
				z = 4
			}
		},
		{
			from = {
				y = 4943,
				x = 6036,
				z = 7
			},
			to = {
				y = 4944,
				x = 6039,
				z = 7
			}
		},
		{
			from = {
				y = 4944,
				x = 6034,
				z = 7
			},
			to = {
				y = 4947,
				x = 6035,
				z = 7
			}
		},
		{
			from = {
				y = 4551,
				x = 5412,
				z = 12
			},
			to = {
				y = 4554,
				x = 5414,
				z = 12
			}
		}
	},
	[ProfessionCooking] = {
		{
			from = {
				y = 5087,
				x = 5154,
				z = 6
			},
			to = {
				y = 5090,
				x = 5158,
				z = 6
			}
		},
		{
			from = {
				y = 5044,
				x = 5108,
				z = 7
			},
			to = {
				y = 5047,
				x = 5110,
				z = 7
			}
		},
		{
			from = {
				y = 4983,
				x = 5037,
				z = 7
			},
			to = {
				y = 4986,
				x = 5040,
				z = 7
			}
		},
		{
			from = {
				y = 5153,
				x = 5497,
				z = 7
			},
			to = {
				y = 5155,
				x = 5499,
				z = 7
			}
		},
		{
			from = {
				y = 5098,
				x = 4800,
				z = 6
			},
			to = {
				y = 5103,
				x = 4805,
				z = 6
			}
		},
		{
			from = {
				y = 5083,
				x = 4217,
				z = 6
			},
			to = {
				y = 5087,
				x = 4220,
				z = 6
			}
		},
		{
			from = {
				y = 5133,
				x = 3982,
				z = 6
			},
			to = {
				y = 5136,
				x = 3985,
				z = 6
			}
		},
		{
			from = {
				y = 5291,
				x = 4941,
				z = 5
			},
			to = {
				y = 5292,
				x = 4946,
				z = 5
			}
		},
		{
			from = {
				y = 5714,
				x = 5528,
				z = 6
			},
			to = {
				y = 5716,
				x = 5531,
				z = 6
			}
		},
		{
			from = {
				y = 4864,
				x = 5403,
				z = 7
			},
			to = {
				y = 4866,
				x = 5406,
				z = 7
			}
		},
		{
			from = {
				y = 5501,
				x = 4272,
				z = 7
			},
			to = {
				y = 5504,
				x = 4279,
				z = 7
			}
		},
		{
			from = {
				y = 4504,
				x = 4367,
				z = 7
			},
			to = {
				y = 4508,
				x = 4371,
				z = 7
			}
		},
		{
			from = {
				y = 4331,
				x = 4614,
				z = 7
			},
			to = {
				y = 4335,
				x = 4618,
				z = 7
			}
		},
		{
			from = {
				y = 5238,
				x = 5628,
				z = 6
			},
			to = {
				y = 5241,
				x = 5632,
				z = 6
			}
		},
		{
			from = {
				y = 4964,
				x = 5711,
				z = 6
			},
			to = {
				y = 4966,
				x = 5713,
				z = 6
			}
		},
		{
			from = {
				y = 4915,
				x = 6054,
				z = 6
			},
			to = {
				y = 4919,
				x = 6059,
				z = 6
			}
		},
		{
			from = {
				y = 4565,
				x = 5396,
				z = 13
			},
			to = {
				y = 4569,
				x = 5399,
				z = 13
			}
		},
		{
			from = {
				y = 4149,
				x = 5934,
				z = 6
			},
			to = {
				y = 4151,
				x = 5936,
				z = 6
			}
		}
	},
	[ProfessionCarpentry] = {
		{
			from = {
				y = 5125,
				x = 5129,
				z = 6
			},
			to = {
				y = 5129,
				x = 5137,
				z = 6
			}
		},
		{
			from = {
				y = 4853,
				x = 4950,
				z = 7
			},
			to = {
				y = 4857,
				x = 4955,
				z = 7
			}
		},
		{
			from = {
				y = 5061,
				x = 5286,
				z = 9
			},
			to = {
				y = 5063,
				x = 5289,
				z = 9
			}
		},
		{
			from = {
				y = 5094,
				x = 4621,
				z = 7
			},
			to = {
				y = 5099,
				x = 4628,
				z = 7
			}
		},
		{
			from = {
				y = 5140,
				x = 3958,
				z = 6
			},
			to = {
				y = 5142,
				x = 3965,
				z = 6
			}
		},
		{
			from = {
				y = 5519,
				x = 5395,
				z = 6
			},
			to = {
				y = 5521,
				x = 5399,
				z = 6
			}
		},
		{
			from = {
				y = 5698,
				x = 5530,
				z = 6
			},
			to = {
				y = 5701,
				x = 5540,
				z = 6
			}
		},
		{
			from = {
				y = 4835,
				x = 5469,
				z = 7
			},
			to = {
				y = 4838,
				x = 5471,
				z = 7
			}
		},
		{
			from = {
				y = 4835,
				x = 5495,
				z = 7
			},
			to = {
				y = 4838,
				x = 5497,
				z = 7
			}
		},
		{
			from = {
				y = 5880,
				x = 4330,
				z = 7
			},
			to = {
				y = 5884,
				x = 4334,
				z = 7
			}
		},
		{
			from = {
				y = 5880,
				x = 4330,
				z = 7
			},
			to = {
				y = 5884,
				x = 4334,
				z = 7
			}
		},
		{
			from = {
				y = 4173,
				x = 4124,
				z = 5
			},
			to = {
				y = 4176,
				x = 4127,
				z = 5
			}
		},
		{
			from = {
				y = 4349,
				x = 4616,
				z = 7
			},
			to = {
				y = 4352,
				x = 4618,
				z = 7
			}
		},
		{
			from = {
				y = 5250,
				x = 5606,
				z = 6
			},
			to = {
				y = 5253,
				x = 5611,
				z = 6
			}
		},
		{
			from = {
				y = 4983,
				x = 6030,
				z = 7
			},
			to = {
				y = 4988,
				x = 6034,
				z = 7
			}
		},
		{
			from = {
				y = 4990,
				x = 6029,
				z = 7
			},
			to = {
				y = 4994,
				x = 6035,
				z = 7
			}
		},
		{
			from = {
				y = 4565,
				x = 5396,
				z = 13
			},
			to = {
				y = 4568,
				x = 5398,
				z = 13
			}
		},
		{
			from = {
				y = 4129,
				x = 5965,
				z = 6
			},
			to = {
				y = 4131,
				x = 5967,
				z = 6
			}
		}
	},
	[ProfessionWeaving] = {
		{
			from = {
				y = 5111,
				x = 5159,
				z = 6
			},
			to = {
				y = 5116,
				x = 5164,
				z = 6
			}
		},
		{
			from = {
				y = 5046,
				x = 5152,
				z = 7
			},
			to = {
				y = 5049,
				x = 5155,
				z = 7
			}
		},
		{
			from = {
				y = 4862,
				x = 4888,
				z = 7
			},
			to = {
				y = 4864,
				x = 4891,
				z = 7
			}
		},
		{
			from = {
				y = 5033,
				x = 5339,
				z = 6
			},
			to = {
				y = 5036,
				x = 5344,
				z = 6
			}
		},
		{
			from = {
				y = 5244,
				x = 4463,
				z = 7
			},
			to = {
				y = 5247,
				x = 4466,
				z = 7
			}
		},
		{
			from = {
				y = 5153,
				x = 3961,
				z = 6
			},
			to = {
				y = 5159,
				x = 3965,
				z = 6
			}
		},
		{
			from = {
				y = 5431,
				x = 5157,
				z = 6
			},
			to = {
				y = 5435,
				x = 5160,
				z = 6
			}
		},
		{
			from = {
				y = 5713,
				x = 5546,
				z = 6
			},
			to = {
				y = 5716,
				x = 5550,
				z = 6
			}
		},
		{
			from = {
				y = 5482,
				x = 4249,
				z = 7
			},
			to = {
				y = 5484,
				x = 4254,
				z = 7
			}
		},
		{
			from = {
				y = 4184,
				x = 4145,
				z = 6
			},
			to = {
				y = 4187,
				x = 4148,
				z = 6
			}
		},
		{
			from = {
				y = 4484,
				x = 4371,
				z = 7
			},
			to = {
				y = 4486,
				x = 4374,
				z = 7
			}
		},
		{
			from = {
				y = 4420,
				x = 4219,
				z = 6
			},
			to = {
				y = 4424,
				x = 4222,
				z = 6
			}
		},
		{
			from = {
				y = 5242,
				x = 5660,
				z = 5
			},
			to = {
				y = 5244,
				x = 5663,
				z = 5
			}
		},
		{
			from = {
				y = 4942,
				x = 6016,
				z = 6
			},
			to = {
				y = 4947,
				x = 6020,
				z = 6
			}
		},
		{
			from = {
				y = 5076,
				x = 5749,
				z = 7
			},
			to = {
				y = 5079,
				x = 5752,
				z = 7
			}
		},
		{
			from = {
				y = 4571,
				x = 5102,
				z = 7
			},
			to = {
				y = 4575,
				x = 5106,
				z = 7
			}
		}
	}
}
ZonesInfo = {
	{
		minLevel = 4,
		name = "Slums",
		maxLevel = 6,
		pos = {
			y = 5050,
			x = 5131,
			z = 7
		}
	},
	{
		minLevel = 6,
		name = "Ravencrest Grove",
		maxLevel = 32,
		wordBreaks = {
			1
		},
		pos = {
			y = 5071,
			x = 5207,
			z = 7
		}
	},
	{
		minLevel = 7,
		name = "Hookmask Camps",
		maxLevel = 10,
		wordBreaks = {
			1
		},
		pos = {
			y = 4999,
			x = 5208,
			z = 7
		}
	},
	{
		minLevel = 7,
		name = "Morninglight Mounds",
		maxLevel = 10,
		wordBreaks = {
			1
		},
		pos = {
			y = 4956,
			x = 5189,
			z = 7
		}
	},
	{
		name = "Ravencrest",
		pos = {
			y = 5141,
			x = 5122,
			z = 7
		}
	},
	{
		minLevel = 10,
		name = "Oakwood",
		maxLevel = 14,
		pos = {
			y = 4798,
			x = 5129,
			z = 7
		}
	},
	{
		minLevel = 13,
		name = "Azog Hills",
		maxLevel = 18,
		wordBreaks = {
			1
		},
		pos = {
			y = 4791,
			x = 5070,
			z = 7
		}
	},
	{
		minLevel = 14,
		name = "Barrendon Mines",
		maxLevel = 38,
		wordBreaks = {
			1
		},
		pos = {
			y = 4880,
			x = 5099,
			z = 7
		}
	},
	{
		minLevel = 13,
		name = "Siren Hills",
		maxLevel = 15,
		wordBreaks = {
			1
		},
		pos = {
			y = 4966,
			x = 5108,
			z = 7
		}
	},
	{
		minLevel = 13,
		name = "Greenshriek Hills",
		maxLevel = 16,
		wordBreaks = {
			1
		},
		pos = {
			y = 4951,
			x = 5034,
			z = 7
		}
	},
	{
		minLevel = 11,
		name = "Corvo Lighthouse",
		maxLevel = 17,
		wordBreaks = {
			1
		},
		pos = {
			y = 4945,
			x = 4960,
			z = 7
		}
	},
	{
		minLevel = 15,
		name = "Saltdusk Keep",
		maxLevel = 18,
		wordBreaks = {
			1
		},
		pos = {
			y = 4902,
			x = 4886,
			z = 7
		}
	},
	{
		minLevel = 15,
		name = "Furpack Hills",
		maxLevel = 18,
		wordBreaks = {
			1
		},
		pos = {
			y = 4838,
			x = 4919,
			z = 7
		}
	},
	{
		minLevel = 16,
		name = "Bentbow Hideout",
		maxLevel = 19,
		wordBreaks = {
			1
		},
		pos = {
			y = 4784,
			x = 5000,
			z = 7
		}
	},
	{
		minLevel = 12,
		name = "Rohna Woods",
		maxLevel = 55,
		wordBreaks = {
			1
		},
		pos = {
			y = 4874,
			x = 5012,
			z = 7
		}
	},
	{
		minLevel = 36,
		name = "Deep Rohna",
		maxLevel = 38,
		wordBreaks = {
			1
		},
		pos = {
			y = 4696,
			x = 4961,
			z = 7
		}
	},
	{
		name = "Margrove",
		pos = {
			y = 4871,
			x = 4914,
			z = 7
		}
	},
	{
		name = "Barnsley",
		pos = {
			y = 4996,
			x = 5037,
			z = 7
		}
	},
	{
		minLevel = 8,
		name = "Warlord's Rest",
		maxLevel = 30,
		pos = {
			y = 4904,
			x = 5214,
			z = 7
		}
	},
	{
		minLevel = 8,
		name = "Stonecrush Ruins",
		maxLevel = 11,
		wordBreaks = {
			1
		},
		pos = {
			y = 4854,
			x = 5169,
			z = 7
		}
	},
	{
		minLevel = 17,
		name = "Leapwater Marsh",
		maxLevel = 21,
		wordBreaks = {
			1
		},
		pos = {
			y = 4838,
			x = 5282,
			z = 7
		}
	},
	{
		minLevel = 18,
		name = "Ellesmera",
		maxLevel = 38,
		pos = {
			y = 4770,
			x = 5233,
			z = 7
		}
	},
	{
		minLevel = 6,
		name = "Sporeswamp Flats",
		maxLevel = 8,
		wordBreaks = {
			1
		},
		pos = {
			y = 5065,
			x = 5293,
			z = 7
		}
	},
	{
		minLevel = 16,
		name = "Sporeswamp Mines",
		maxLevel = 17,
		wordBreaks = {
			1
		},
		pos = {
			y = 5112,
			x = 5262,
			z = 7
		}
	},
	{
		minLevel = 17,
		name = "Chapel of Skorn",
		maxLevel = 44,
		pos = {
			y = 5007,
			x = 5387,
			z = 7
		}
	},
	{
		minLevel = 17,
		name = "Witches Crag",
		maxLevel = 19,
		wordBreaks = {
			1
		},
		pos = {
			y = 5133,
			x = 5323,
			z = 7
		}
	},
	{
		minLevel = 16,
		name = "Glademire Swamps",
		maxLevel = 18,
		wordBreaks = {
			1
		},
		pos = {
			y = 5076,
			x = 5420,
			z = 7
		}
	},
	{
		minLevel = 19,
		name = "Tarnag Mountain",
		maxLevel = 23,
		wordBreaks = {
			1
		},
		pos = {
			y = 5053,
			x = 5536,
			z = 7
		}
	},
	{
		minLevel = 17,
		name = "Aspen Woods",
		maxLevel = 18,
		wordBreaks = {
			1
		},
		pos = {
			y = 5133,
			x = 5382,
			z = 7
		}
	},
	{
		minLevel = 23,
		name = "Whispering Fountains",
		maxLevel = 35,
		wordBreaks = {
			1
		},
		pos = {
			y = 5233,
			x = 5281,
			z = 7
		}
	},
	{
		minLevel = 22,
		name = "Dalgon Canyon",
		maxLevel = 43,
		wordBreaks = {
			1
		},
		pos = {
			y = 5252,
			x = 5461,
			z = 7
		}
	},
	{
		name = "Glademire Fort",
		wordBreaks = {
			1
		},
		pos = {
			y = 5039,
			x = 5335,
			z = 7
		}
	},
	{
		name = "Riverend Post",
		wordBreaks = {
			1
		},
		pos = {
			y = 5155,
			x = 5490,
			z = 7
		}
	},
	{
		minLevel = 21,
		name = "The High Jungles",
		maxLevel = 23,
		wordBreaks = {
			2
		},
		pos = {
			y = 5036,
			x = 4774,
			z = 7
		}
	},
	{
		minLevel = 22,
		name = "Maud Isle",
		maxLevel = 24,
		wordBreaks = {
			1
		},
		pos = {
			y = 5051,
			x = 4703,
			z = 7
		}
	},
	{
		minLevel = 23,
		name = "Sajecho Ruins",
		maxLevel = 25,
		wordBreaks = {
			1
		},
		pos = {
			y = 5064,
			x = 4829,
			z = 7
		}
	},
	{
		minLevel = 24,
		name = "Skimcoast Cliffs",
		maxLevel = 26,
		pos = {
			y = 5111,
			x = 4737,
			z = 7
		}
	},
	{
		minLevel = 25,
		name = "Dead Man's Shore",
		maxLevel = 27,
		wordBreaks = {
			2
		},
		pos = {
			y = 5044,
			x = 4647,
			z = 7
		}
	},
	{
		minLevel = 25,
		name = "Sawcutt Lumber",
		maxLevel = 27,
		wordBreaks = {
			1
		},
		pos = {
			y = 5084,
			x = 4615,
			z = 7
		}
	},
	{
		minLevel = 25,
		name = "Gob' Gurzak",
		maxLevel = 27,
		pos = {
			y = 5127,
			x = 4668,
			z = 7
		}
	},
	{
		minLevel = 27,
		name = "Silkveil Overgrowth",
		maxLevel = 29,
		wordBreaks = {
			1
		},
		pos = {
			y = 5180,
			x = 4695,
			z = 7
		}
	},
	{
		minLevel = 29,
		name = "Tower of the Everliving",
		maxLevel = 31,
		wordBreaks = {
			1,
			3
		},
		pos = {
			y = 5217,
			x = 4522,
			z = 7
		}
	},
	{
		name = "Sajecho Village",
		wordBreaks = {
			1
		},
		pos = {
			y = 5082,
			x = 4759,
			z = 7
		}
	},
	{
		name = "Orca Bay",
		wordBreaks = {
			1
		},
		pos = {
			y = 5296,
			x = 4691,
			z = 7
		}
	},
	{
		name = "Eelsnout",
		pos = {
			y = 5251,
			x = 4456,
			z = 7
		}
	},
	{
		minLevel = 25,
		name = "Mount Shiver",
		maxLevel = 52,
		pos = {
			y = 4909,
			x = 4336,
			z = 7
		}
	},
	{
		minLevel = 32,
		name = "Shacklehold",
		maxLevel = 33,
		pos = {
			y = 4941,
			x = 4202,
			z = 7
		}
	},
	{
		minLevel = 28,
		name = "Turtleshell Hills",
		maxLevel = 30,
		wordBreaks = {
			1
		},
		pos = {
			y = 4985,
			x = 4148,
			z = 7
		}
	},
	{
		minLevel = 29,
		name = "Rockjaw Mounds",
		maxLevel = 32,
		wordBreaks = {
			1
		},
		pos = {
			y = 5043,
			x = 4111,
			z = 7
		}
	},
	{
		minLevel = 33,
		name = "Camp Clew",
		maxLevel = 34,
		wordBreaks = {
			1
		},
		pos = {
			y = 5059,
			x = 4049,
			z = 7
		}
	},
	{
		minLevel = 30,
		name = "Sweet Sugar Plantation",
		maxLevel = 32,
		wordBreaks = {
			2
		},
		pos = {
			y = 4944,
			x = 4042,
			z = 7
		}
	},
	{
		minLevel = 32,
		name = "Gallowstown",
		maxLevel = 33,
		pos = {
			y = 4906,
			x = 3987,
			z = 7
		}
	},
	{
		minLevel = 33,
		name = "Beacon Hills",
		maxLevel = 41,
		wordBreaks = {
			1
		},
		pos = {
			y = 4981,
			x = 3939,
			z = 7
		}
	},
	{
		minLevel = 33,
		name = "Brinewind Points",
		maxLevel = 34,
		wordBreaks = {
			1
		},
		pos = {
			y = 5028,
			x = 3950,
			z = 7
		}
	},
	{
		name = "Seabreeze",
		pos = {
			y = 5134,
			x = 3955,
			z = 7
		}
	},
	{
		name = "Port Roatuga",
		wordBreaks = {
			1
		},
		pos = {
			y = 5084,
			x = 4224,
			z = 7
		}
	},
	{
		name = "Hook's End",
		pos = {
			y = 4884,
			x = 4084,
			z = 7
		}
	},
	{
		minLevel = 31,
		name = "Thurin's Meadow",
		maxLevel = 33,
		wordBreaks = {
			1
		},
		pos = {
			y = 5258,
			x = 5733,
			z = 7
		}
	},
	{
		minLevel = 33,
		name = "Fort Mercury",
		maxLevel = 38,
		pos = {
			y = 5321,
			x = 5707,
			z = 7
		}
	},
	{
		minLevel = 39,
		name = "Aurum Hold",
		maxLevel = 42,
		wordBreaks = {
			1
		},
		pos = {
			y = 5096,
			x = 5961,
			z = 7
		}
	},
	{
		minLevel = 35,
		name = "Feral Woods",
		maxLevel = 38,
		wordBreaks = {
			1
		},
		pos = {
			y = 5113,
			x = 5889,
			z = 7
		}
	},
	{
		minLevel = 40,
		name = "Silvercliff Hills",
		maxLevel = 44,
		wordBreaks = {
			1
		},
		pos = {
			y = 5021,
			x = 5882,
			z = 7
		}
	},
	{
		minLevel = 44,
		name = "Firslight",
		maxLevel = 47,
		pos = {
			y = 4947,
			x = 6030,
			z = 7
		}
	},
	{
		name = "Bastion",
		pos = {
			y = 5237,
			x = 5634,
			z = 7
		}
	},
	{
		name = "Defiance",
		pos = {
			y = 5228,
			x = 5839,
			z = 7
		}
	},
	{
		name = "Truce",
		pos = {
			y = 5085,
			x = 5764,
			z = 7
		}
	},
	{
		minLevel = 34,
		name = "Hadarak Oasis",
		maxLevel = 35,
		wordBreaks = {
			1
		},
		pos = {
			y = 5306,
			x = 5211,
			z = 7
		}
	},
	{
		minLevel = 35,
		name = "Jaffar Hills",
		maxLevel = 38,
		wordBreaks = {
			1
		},
		pos = {
			y = 5324,
			x = 5327,
			z = 7
		}
	},
	{
		minLevel = 36,
		name = "Mount Minos",
		maxLevel = 38,
		wordBreaks = {
			1
		},
		pos = {
			y = 5377,
			x = 5177,
			z = 7
		}
	},
	{
		minLevel = 35,
		name = "Chainbreaker Camp",
		maxLevel = 36,
		wordBreaks = {
			1
		},
		pos = {
			y = 5383,
			x = 5264,
			z = 7
		}
	},
	{
		minLevel = 36,
		name = "Windy Canyon",
		maxLevel = 37,
		wordBreaks = {
			1
		},
		pos = {
			y = 5463,
			x = 5236,
			z = 7
		}
	},
	{
		minLevel = 38,
		name = "Tar Graveyard",
		maxLevel = 42,
		wordBreaks = {
			1
		},
		pos = {
			y = 5483,
			x = 5053,
			z = 7
		}
	},
	{
		minLevel = 44,
		name = "Drake's Claws",
		maxLevel = 47,
		pos = {
			y = 5570,
			x = 5066,
			z = 7
		}
	},
	{
		minLevel = 40,
		name = "Ivory Halls",
		maxLevel = 43,
		wordBreaks = {
			1
		},
		pos = {
			y = 5433,
			x = 4951,
			z = 7
		}
	},
	{
		minLevel = 39,
		name = "Tarmire Peaks",
		maxLevel = 44,
		wordBreaks = {
			1
		},
		pos = {
			y = 5530,
			x = 4987,
			z = 7
		}
	},
	{
		minLevel = 41,
		name = "Sharpa Keys",
		maxLevel = 44,
		wordBreaks = {
			1
		},
		pos = {
			y = 5463,
			x = 4873,
			z = 7
		}
	},
	{
		minLevel = 37,
		name = "The Spine",
		maxLevel = 41,
		pos = {
			y = 5421,
			x = 5340,
			z = 7
		}
	},
	{
		minLevel = 36,
		name = "Glimmering Pools",
		maxLevel = 67,
		pos = {
			y = 5568,
			x = 5372,
			z = 7
		}
	},
	{
		minLevel = 36,
		name = "Tuskan Highlands",
		maxLevel = 38,
		pos = {
			y = 5550,
			x = 5201,
			z = 7
		}
	},
	{
		name = "Tarmire",
		pos = {
			y = 5507,
			x = 4958,
			z = 7
		}
	},
	{
		name = "Dras Marna",
		wordBreaks = {
			1
		},
		pos = {
			y = 5440,
			x = 5167,
			z = 6
		}
	},
	{
		name = "Dras Narda",
		wordBreaks = {
			1
		},
		pos = {
			y = 5516,
			x = 5354,
			z = 6
		}
	},
	{
		minLevel = 38,
		name = "High Galdoz",
		maxLevel = 43,
		wordBreaks = {
			1
		},
		pos = {
			y = 5398,
			x = 5447,
			z = 3
		}
	},
	{
		minLevel = 37,
		name = "Orkwatch",
		maxLevel = 40,
		pos = {
			y = 5500,
			x = 5493,
			z = 7
		}
	},
	{
		minLevel = 35,
		name = "Buried Nest",
		maxLevel = 37,
		wordBreaks = {
			1
		},
		pos = {
			y = 5372,
			x = 5595,
			z = 7
		}
	},
	{
		minLevel = 38,
		name = "Broken Horn Bludd",
		maxLevel = 57,
		wordBreaks = {
			2
		},
		pos = {
			y = 5409,
			x = 5685,
			z = 7
		}
	},
	{
		minLevel = 38,
		name = "Hoovestep Mound",
		maxLevel = 57,
		wordBreaks = {
			1
		},
		pos = {
			y = 5514,
			x = 5588,
			z = 7
		}
	},
	{
		minLevel = 52,
		name = "Orkvesh",
		maxLevel = 55,
		pos = {
			y = 5431,
			x = 5832,
			z = 7
		}
	},
	{
		minLevel = 57,
		name = "Mirage Peaks",
		maxLevel = 71,
		wordBreaks = {
			1
		},
		pos = {
			y = 5612,
			x = 5875,
			z = 7
		}
	},
	{
		minLevel = 44,
		name = "Hadarak Ruins",
		maxLevel = 46,
		wordBreaks = {
			1
		},
		pos = {
			y = 5542,
			x = 5783,
			z = 7
		}
	},
	{
		minLevel = 70,
		name = "Riftsand Trenches",
		maxLevel = 72,
		wordBreaks = {
			1
		},
		pos = {
			y = 5475,
			x = 5932,
			z = 7
		}
	},
	{
		minLevel = 71,
		name = "Sandscar Sanctuary",
		maxLevel = 74,
		wordBreaks = {
			1
		},
		pos = {
			y = 5539,
			x = 6003,
			z = 7
		}
	},
	{
		minLevel = 70,
		name = "Arid Ranges",
		maxLevel = 73,
		wordBreaks = {
			1
		},
		pos = {
			y = 5469,
			x = 6037,
			z = 7
		}
	},
	{
		minLevel = 71,
		name = "Temple of Quorras",
		maxLevel = 74,
		wordBreaks = {
			2
		},
		pos = {
			y = 5377,
			x = 5955,
			z = 7
		}
	},
	{
		name = "Darzuac",
		pos = {
			y = 5700,
			x = 5540,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Shellshore Cove",
		maxLevel = 60,
		wordBreaks = {
			1
		},
		pos = {
			y = 5452,
			x = 4231,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Addler's Nest",
		maxLevel = 48,
		wordBreaks = {
			1
		},
		pos = {
			y = 5476,
			x = 4145,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Abandoned Mines",
		maxLevel = 52,
		wordBreaks = {
			1
		},
		pos = {
			y = 5529,
			x = 4081,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "The Flooded Maw",
		maxLevel = 49,
		wordBreaks = {
			1,
			2
		},
		pos = {
			y = 5617,
			x = 4271,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Mossgrove Terrace",
		maxLevel = 49,
		wordBreaks = {
			1
		},
		pos = {
			y = 5568,
			x = 4374,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Ruins of Gilead",
		maxLevel = 51,
		wordBreaks = {
			2
		},
		pos = {
			y = 5717,
			x = 4324,
			z = 7
		}
	},
	{
		minLevel = 48,
		name = "Sunchase Plateau",
		maxLevel = 52,
		wordBreaks = {
			1
		},
		pos = {
			y = 5669,
			x = 4078,
			z = 7
		}
	},
	{
		minLevel = 48,
		name = "Fernscale Thicket",
		maxLevel = 51,
		wordBreaks = {
			1
		},
		pos = {
			y = 5722,
			x = 4015,
			z = 7
		}
	},
	{
		minLevel = 48,
		name = "Mycelium Marsh",
		maxLevel = 50,
		wordBreaks = {
			1
		},
		pos = {
			y = 5742,
			x = 4094,
			z = 7
		}
	},
	{
		minLevel = 57,
		name = "Reptile's Enclave",
		maxLevel = 60,
		wordBreaks = {
			1
		},
		pos = {
			y = 5767,
			x = 4179,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Ancient Ruins",
		maxLevel = 49,
		wordBreaks = {
			1
		},
		pos = {
			y = 5818,
			x = 4272,
			z = 7
		}
	},
	{
		name = "Gilead",
		pos = {
			y = 5867,
			x = 4336,
			z = 7
		}
	},
	{
		name = "Rumalos",
		pos = {
			y = 5608,
			x = 3984,
			z = 7
		}
	},
	{
		name = "Hogula",
		pos = {
			y = 5492,
			x = 4268,
			z = 7
		}
	},
	{
		minLevel = 45,
		name = "Sombershade",
		maxLevel = 47,
		pos = {
			y = 4849,
			x = 5378,
			z = 7
		}
	},
	{
		minLevel = 45,
		name = "Twilight Pass",
		maxLevel = 47,
		pos = {
			y = 4883,
			x = 5398,
			z = 7
		}
	},
	{
		minLevel = 50,
		name = "Stormcoast Ruins",
		maxLevel = 54,
		wordBreaks = {
			1
		},
		pos = {
			y = 4917,
			x = 5518,
			z = 7
		}
	},
	{
		minLevel = 48,
		name = "Greypike Castle",
		maxLevel = 56,
		wordBreaks = {
			1
		},
		pos = {
			y = 4742,
			x = 5415,
			z = 7
		}
	},
	{
		minLevel = 50,
		name = "Forgotten Graveyard",
		maxLevel = 54,
		wordBreaks = {
			1
		},
		pos = {
			y = 4758,
			x = 5484,
			z = 7
		}
	},
	{
		name = "Fangwatch",
		pos = {
			y = 4849,
			x = 5483,
			z = 7
		}
	},
	{
		minLevel = 56,
		name = "Deathold",
		maxLevel = 60,
		pos = {
			y = 5002,
			x = 5489,
			z = 7
		}
	},
	{
		minLevel = 50,
		name = "Horror's Nest",
		maxLevel = 52,
		wordBreaks = {
			1
		},
		pos = {
			y = 4980,
			x = 5555,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Whispering Thicket",
		maxLevel = 49,
		wordBreaks = {
			1
		},
		pos = {
			y = 4912,
			x = 5590,
			z = 7
		}
	},
	{
		minLevel = 57,
		name = "Wraithveil Hollows",
		maxLevel = 62,
		wordBreaks = {
			1
		},
		pos = {
			y = 4829,
			x = 5644,
			z = 7
		}
	},
	{
		minLevel = 56,
		name = "Dreadmist Hollows",
		maxLevel = 62,
		wordBreaks = {
			1
		},
		pos = {
			y = 4790,
			x = 5738,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Bogheart",
		maxLevel = 53,
		pos = {
			y = 4836,
			x = 5823,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Blightwhiskers Warrens",
		maxLevel = 52,
		wordBreaks = {
			1
		},
		pos = {
			y = 4777,
			x = 5830,
			z = 7
		}
	},
	{
		minLevel = 48,
		name = "Crowhollow Bog",
		maxLevel = 51,
		wordBreaks = {
			1
		},
		pos = {
			y = 4893,
			x = 5705,
			z = 7
		}
	},
	{
		name = "Woodhaven",
		pos = {
			y = 4955,
			x = 5702,
			z = 7
		}
	},
	{
		minLevel = 65,
		name = "Sovereign's Crown",
		maxLevel = 67,
		wordBreaks = {
			1
		},
		pos = {
			y = 4649,
			x = 5504,
			z = 7
		}
	},
	{
		minLevel = 54,
		name = "Horncrest Knolls",
		maxLevel = 56,
		pos = {
			y = 4487,
			x = 5542,
			z = 7
		}
	},
	{
		minLevel = 52,
		name = "Bleak Hill",
		maxLevel = 54,
		wordBreaks = {
			1
		},
		pos = {
			y = 4560,
			x = 5658,
			z = 7
		}
	},
	{
		minLevel = 54,
		name = "The Burrows",
		maxLevel = 57,
		wordBreaks = {
			1
		},
		pos = {
			y = 4503,
			x = 5733,
			z = 7
		}
	},
	{
		minLevel = 53,
		name = "Ananda's Fall",
		maxLevel = 57,
		pos = {
			y = 4592,
			x = 5783,
			z = 7
		}
	},
	{
		minLevel = 51,
		name = "Fiend's Eye",
		maxLevel = 53,
		wordBreaks = {
			1
		},
		pos = {
			y = 4459,
			x = 5770,
			z = 7
		}
	},
	{
		minLevel = 54,
		name = "Twisted Steps",
		maxLevel = 57,
		wordBreaks = {
			1
		},
		pos = {
			y = 4469,
			x = 5859,
			z = 7
		}
	},
	{
		minLevel = 51,
		name = "Scarred Vale",
		maxLevel = 55,
		pos = {
			y = 4538,
			x = 5839,
			z = 7
		}
	},
	{
		minLevel = 59,
		name = "Master's Overlook",
		maxLevel = 62,
		wordBreaks = {
			1
		},
		pos = {
			y = 4589,
			x = 5979,
			z = 7
		}
	},
	{
		minLevel = 55,
		name = "Hope's Leap",
		maxLevel = 58,
		wordBreaks = {
			1
		},
		pos = {
			y = 4385,
			x = 5948,
			z = 7
		}
	},
	{
		minLevel = 55,
		name = "Skorn's Desolation",
		maxLevel = 57,
		wordBreaks = {
			1
		},
		pos = {
			y = 4484,
			x = 6021,
			z = 7
		}
	},
	{
		minLevel = 56,
		name = "Castle of Skorn",
		maxLevel = 60,
		wordBreaks = {
			2
		},
		pos = {
			y = 4511,
			x = 6089,
			z = 7
		}
	},
	{
		name = "Forsaken Wharf",
		wordBreaks = {
			1
		},
		pos = {
			y = 4619,
			x = 5884,
			z = 7
		}
	},
	{
		minLevel = 72,
		name = "Hag's Folly",
		maxLevel = 75,
		wordBreaks = {
			1
		},
		pos = {
			y = 4694,
			x = 5982,
			z = 7
		}
	},
	{
		minLevel = 74,
		name = "Festering Wetlands",
		maxLevel = 76,
		wordBreaks = {
			1
		},
		pos = {
			y = 4740,
			x = 5965,
			z = 7
		}
	},
	{
		minLevel = 74,
		name = "Fort Mosshold",
		maxLevel = 76,
		wordBreaks = {
			1
		},
		pos = {
			y = 4798,
			x = 5995,
			z = 7
		}
	},
	{
		minLevel = 73,
		name = "Ruins of Greenburg",
		maxLevel = 75,
		wordBreaks = {
			2
		},
		pos = {
			y = 4754,
			x = 6030,
			z = 7
		}
	},
	{
		minLevel = 74,
		name = "The Plagued Hill",
		maxLevel = 76,
		wordBreaks = {
			2
		},
		pos = {
			y = 4694,
			x = 6088,
			z = 7
		}
	},
	{
		minLevel = 74,
		name = "Castle Thergard",
		maxLevel = 77,
		wordBreaks = {
			1
		},
		pos = {
			y = 4308,
			x = 4837,
			z = 7
		}
	},
	{
		minLevel = 72,
		name = "Okkar Hills",
		maxLevel = 75,
		pos = {
			y = 4137,
			x = 4803,
			z = 7
		}
	},
	{
		minLevel = 70,
		name = "Deadbane Halls",
		maxLevel = 74,
		wordBreaks = {
			1
		},
		pos = {
			y = 4236,
			x = 4698,
			z = 7
		}
	},
	{
		minLevel = 56,
		name = "Frozen Crypts",
		maxLevel = 59,
		wordBreaks = {
			1
		},
		pos = {
			y = 4317,
			x = 4581,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Howling Hills",
		maxLevel = 72,
		wordBreaks = {
			1
		},
		pos = {
			y = 4158,
			x = 4485,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Chattering Mounds",
		maxLevel = 50,
		wordBreaks = {
			1
		},
		pos = {
			y = 4296,
			x = 4482,
			z = 7
		}
	},
	{
		minLevel = 68,
		name = "Frostclaw Cliff",
		maxLevel = 71,
		wordBreaks = {
			1
		},
		pos = {
			y = 4152,
			x = 4375,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Snowdeep Mines",
		maxLevel = 53,
		wordBreaks = {
			1
		},
		pos = {
			y = 4236,
			x = 4392,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Darkhollow Ruins",
		maxLevel = 50,
		wordBreaks = {
			1
		},
		pos = {
			y = 4396,
			x = 4440,
			z = 7
		}
	},
	{
		minLevel = 47,
		name = "Shrieking Pass",
		maxLevel = 51,
		wordBreaks = {
			1
		},
		pos = {
			y = 4419,
			x = 4375,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Snowfall Outpost",
		maxLevel = 52,
		wordBreaks = {
			1
		},
		pos = {
			y = 4401,
			x = 4252,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Chillpike Maws",
		maxLevel = 52,
		pos = {
			y = 4475,
			x = 4236,
			z = 7
		}
	},
	{
		minLevel = 49,
		name = "Umberfrost Gorge",
		maxLevel = 53,
		wordBreaks = {
			1
		},
		pos = {
			y = 4371,
			x = 4148,
			z = 7
		}
	},
	{
		minLevel = 51,
		name = "Blizzard's Nest",
		maxLevel = 55,
		wordBreaks = {
			1
		},
		pos = {
			y = 4285,
			x = 4176,
			z = 7
		}
	},
	{
		minLevel = 64,
		name = "The Perishing Pass",
		maxLevel = 68,
		pos = {
			y = 4091,
			x = 4270,
			z = 7
		}
	},
	{
		minLevel = 66,
		name = "Chillmane Crag",
		maxLevel = 69,
		wordBreaks = {
			1
		},
		pos = {
			y = 4000,
			x = 4289,
			z = 7
		}
	},
	{
		minLevel = 45,
		name = "Matchwood",
		maxLevel = 48,
		pos = {
			y = 4492,
			x = 4396,
			z = 7
		}
	},
	{
		name = "Vikkar Bay",
		wordBreaks = {
			1
		},
		pos = {
			y = 4358,
			x = 4616,
			z = 7
		}
	},
	{
		name = "Newvik",
		pos = {
			y = 4279,
			x = 4306,
			z = 7
		}
	},
	{
		name = "Wolfhold",
		pos = {
			y = 4421,
			x = 4201,
			z = 7
		}
	},
	{
		name = "Far Naddod",
		wordBreaks = {
			1
		},
		pos = {
			y = 4110,
			x = 4603,
			z = 7
		}
	},
	{
		name = "Saint Alsek",
		wordBreaks = {
			1
		},
		pos = {
			y = 4179,
			x = 4130,
			z = 7
		}
	},
	{
		minLevel = 55,
		name = "Thormarok Mountain",
		maxLevel = 64,
		wordBreaks = {
			1
		},
		pos = {
			y = 4615,
			x = 5342,
			z = 7
		}
	},
	{
		minLevel = 53,
		name = "Cragspear",
		maxLevel = 59,
		pos = {
			y = 4702,
			x = 5300,
			z = 7
		}
	},
	{
		minLevel = 57,
		name = "Gloomwood",
		maxLevel = 65,
		pos = {
			y = 4630,
			x = 5127,
			z = 7
		}
	},
	{
		minLevel = 55,
		name = "Thickbark Grove",
		maxLevel = 57,
		wordBreaks = {
			1
		},
		pos = {
			y = 4670,
			x = 5136,
			z = 7
		}
	},
	{
		minLevel = 72,
		name = "Crowfell",
		maxLevel = 76,
		pos = {
			y = 4519,
			x = 5025,
			z = 7
		}
	},
	{
		name = "Ellesset",
		pos = {
			y = 4595,
			x = 5092,
			z = 7
		}
	},
	{
		name = "Anvilheart's Embassy",
		wordBreaks = {
			1
		},
		pos = {
			y = 4638,
			x = 5285,
			z = 7
		}
	},
	{
		minLevel = 69,
		name = "Coldstring Burrows",
		maxLevel = 72,
		wordBreaks = {
			1
		},
		pos = {
			y = 4392,
			x = 5214,
			z = 7
		}
	},
	{
		minLevel = 69,
		name = "Albino Forest",
		maxLevel = 73,
		wordBreaks = {
			1
		},
		pos = {
			y = 4119,
			x = 5186,
			z = 7
		}
	},
	{
		minLevel = 67,
		name = "Yorn'omaala",
		maxLevel = 70,
		pos = {
			y = 4213,
			x = 5304,
			z = 7
		}
	},
	{
		minLevel = 65,
		name = "Frosthenge",
		maxLevel = 68,
		pos = {
			y = 4290,
			x = 5507,
			z = 7
		}
	},
	{
		minLevel = 59,
		name = "Wintry Plains",
		maxLevel = 62,
		pos = {
			y = 4373,
			x = 5498,
			z = 7
		}
	},
	{
		minLevel = 64,
		name = "Ita'yami",
		maxLevel = 66,
		pos = {
			y = 4252,
			x = 5754,
			z = 7
		}
	},
	{
		minLevel = 70,
		name = "The Fingers",
		maxLevel = 73,
		wordBreaks = {
			1
		},
		pos = {
			y = 4117,
			x = 5751,
			z = 7
		}
	},
	{
		minLevel = 74,
		name = "Titan Claws",
		maxLevel = 78,
		wordBreaks = {
			1
		},
		pos = {
			y = 3977,
			x = 5805,
			z = 7
		}
	},
	{
		minLevel = 64,
		name = "Dimlight Camps",
		maxLevel = 67,
		wordBreaks = {
			1
		},
		pos = {
			y = 4098,
			x = 6024,
			z = 7
		}
	},
	{
		minLevel = 66,
		name = "Wild Tundra",
		maxLevel = 68,
		pos = {
			y = 4330,
			x = 5255,
			z = 7
		}
	},
	{
		minLevel = 66,
		name = "Icesteps",
		maxLevel = 68,
		pos = {
			y = 4245,
			x = 5471,
			z = 7
		}
	},
	{
		minLevel = 60,
		name = "Hunting Marches",
		maxLevel = 62,
		wordBreaks = {
			1
		},
		pos = {
			y = 4304,
			x = 5603,
			z = 7
		}
	},
	{
		name = "Kari'vir",
		pos = {
			y = 4144,
			x = 5961,
			z = 7
		}
	}
}
FISHFIGHT_STATE_NORMAL = 0
FISHFIGHT_STATE_AGGRESSIVE = 1
FISHFIGHT_STATE_TIRED = 2
FISHFIGHT_STATE_TIRED_2 = 3
FISHFIGHT_STATE_TIRED_3 = 4
FISHFIGHT_STATE_TIRED_4 = 5
FISHFIGHT_STATE_TIRED_5 = 6
FISHFIGHT_STATE_LAST = FISHFIGHT_STATE_TIRED_5
FARM_TILE_ITEM = 34099
FARM_BLOCKING_ITEM = 30278
TileType = {
	None = 0,
	CommunityPlot = 6,
	House = 1,
	LandPlot = 4,
	Room = 3,
	RoomEmpty = 2,
	GuildPlot = 5
}
HOUSE_MODELS = {
	SMALL = {
		WOODEN_HOUSE = 3,
		WOODEN_CABIN = 2,
		SHACK = 1
	},
	MEDIUM = {
		WOODEN_HOUSE = 6,
		WOODEN_CABIN = 5,
		SHACK = 4,
		STONE_HOUSE = 7
	},
	LARGE = {
		STONE_MANSION = 12,
		STONE_HOUSE = 11,
		WOODEN_HOUSE = 10,
		WOODEN_CABIN = 9,
		SHACK = 8
	},
	STRONGHOLD = {
		SHACK = 13,
		STONE = 15,
		WOOD = 14
	},
	FORT = {
		DARKWOOD = 19,
		STONE = 16,
		WOOD = 17,
		SANDSTONE = 18
	}
}
HouseModels = {
	SmallShack = 1,
	FortDarkWood = 19,
	FortSandStone = 18,
	FortWood = 17,
	FortStone = 16,
	StrongholdStone = 15,
	StrongholdWood = 14,
	StrongholdShack = 13,
	LargeStoneMansion = 12,
	LargeStoneHouse = 11,
	LargeWoodenHouse = 10,
	LargeWoodenCabin = 9,
	LargeShack = 8,
	MediumStoneHouse = 7,
	MediumWoodenHouse = 6,
	MediumWoodenCabin = 5,
	MediumShack = 4,
	SmallWoodenHouse = 3,
	SmallWoodenCabin = 2
}
HouseModelsBySize = {
	[10] = HouseModels.SmallShack,
	[12] = HouseModels.MediumShack,
	[15] = HouseModels.LargeShack,
	[22] = HouseModels.StrongholdShack,
	[30] = HouseModels.FortStone
}
ContextMenuActionId = {
	[10003] = {
		quest = "The Perils of Rohna Woods",
		text = "Search the pile of trash"
	},
	[10020] = {
		quest = "The Mountain King",
		text = "Search the rubbish pile"
	},
	[10254] = {
		quest = "Bloodsport",
		text = "Search crate"
	},
	[10255] = {
		quest = "Bloodsport",
		text = "Search crate"
	},
	[10250] = {
		quest = "Feeding the Troll",
		text = "Deliver rations"
	},
	[10256] = {
		quest = "Feeding the Troll",
		text = "Deliver rations"
	},
	[10038] = {
		quest = "Merchant's Misfortune",
		text = "Recover wood"
	},
	[10225] = {
		quest = "The Long Road Home",
		text = "Gather Flower"
	},
	[10259] = {
		quest = "The Long Road Home",
		text = "Pick up the trash"
	},
	[10219] = {
		quest = "Under the Sands of Time",
		text = "Open the chest"
	},
	[10569] = {
		quest = "Under the Sands of Time",
		text = "Open the chest"
	},
	[10030] = {
		quest = "Sugarcane Infestation",
		text = "Place Scarecrow"
	},
	[10183] = {
		quest = "Hunting Zedeno",
		text = "Search the rubbish"
	},
	[10184] = {
		quest = "Hunting Zedeno",
		text = "Search the rubbish"
	},
	[10185] = {
		quest = "Hunting Zedeno",
		text = "Search the rubbish"
	},
	[10022] = {
		quest = "The Cursed Crew",
		text = "Dig Up the Possessed Doll"
	},
	[10136] = {
		quest = "A Most Wondrous Cloak",
		text = "Search the furniture"
	}
}
ContextMenuUniqueId = {
	[10063] = {
		quest = "The Rites of Skorn",
		text = "Recover bone"
	},
	[10079] = {
		quest = "The Mountain King",
		text = "Search the rubbise pile"
	},
	[10086] = {
		quest = "A Goblin Obsession",
		text = "Recover the bones"
	}
}
QuestItemsActionId = {
	[10373] = {
		mapReward = true
	},
	[10559] = {
		event = "Drunken Ritual",
		always = true
	},
	[10560] = {
		always = true,
		event = "Drunken Ritual",
		itemId = {
			1638,
			1640
		}
	},
	[10188] = {
		afterComplete = true,
		quest = "Running Out Of Stock",
		taskId = {
			2,
			3,
			4,
			5,
			6
		}
	},
	[10004] = {
		afterComplete = true,
		quest = "Raiding the Raiders",
		taskId = {
			11,
			12,
			13,
			14,
			15,
			16
		}
	},
	[10202] = {
		taskId = 1,
		quest = "A Merchant and His Bellyache"
	},
	[10001] = {
		taskId = 8,
		quest = "Cult of the Arrow"
	},
	[10002] = {
		taskId = 14,
		quest = "Cult of the Arrow"
	},
	[10000] = {
		taskId = 4,
		quest = "Mixed Bloodlines"
	},
	[10193] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10194] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10195] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10196] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10197] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10198] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10199] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10200] = {
		taskId = 3,
		quest = "Mortal Enemies"
	},
	[10234] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10235] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10236] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10237] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10238] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10239] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10240] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10241] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10242] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10243] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10244] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10245] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10246] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10247] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10248] = {
		taskId = 4,
		quest = "Mortal Enemies"
	},
	[10009] = {
		quest = "Mortal Enemies",
		taskId = {
			6,
			7
		}
	},
	[10003] = {
		taskId = 1,
		quest = "The Perils of Rohna Woods"
	},
	[10008] = {
		taskId = 6,
		quest = "The Perils of Rohna Woods"
	},
	[10345] = {
		taskId = 3,
		quest = "Unpaid Dues"
	},
	[10346] = {
		afterComplete = true,
		quest = "Unpaid Dues",
		taskId = {
			1,
			2,
			3,
			4
		}
	},
	[10265] = {
		taskId = 5,
		quest = "Missing in Action"
	},
	[10111] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10112] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10113] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10114] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10115] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10116] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10117] = {
		taskId = 5,
		quest = "Swamp Fever"
	},
	[10007] = {
		taskId = 7,
		quest = "Swamp Fever"
	},
	[10055] = {
		taskId = 9,
		quest = "Swamp Fever"
	},
	[10192] = {
		taskId = 11,
		quest = "Swamp Fever"
	},
	[10266] = {
		taskId = 3,
		quest = "The Best Antidote"
	},
	[10502] = {
		taskId = 9,
		quest = "The Best Antidote"
	},
	[10020] = {
		taskId = 2,
		quest = "The Mountain King"
	},
	[10142] = {
		taskId = 7,
		quest = "The Mountain King"
	},
	[10899] = {
		taskId = 5,
		quest = "The Tree of Life"
	},
	[10900] = {
		taskId = 5,
		quest = "The Tree of Life"
	},
	[10018] = {
		taskId = 8,
		quest = "The Tree of Life"
	},
	[10147] = {
		itemId = 1628,
		quest = "A Revenge For Old Debts",
		always = true
	},
	[10186] = {
		itemId = 1628,
		quest = "A Revenge For Old Debts",
		always = true
	},
	[10165] = {
		taskId = 6,
		quest = "A Revenge For Old Debts"
	},
	[10166] = {
		taskId = 6,
		quest = "A Revenge For Old Debts"
	},
	[10146] = {
		taskId = 6,
		quest = "A Revenge For Old Debts"
	},
	[10171] = {
		taskId = 13,
		quest = "A Revenge For Old Debts"
	},
	[10150] = {
		taskId = 14,
		quest = "A Revenge For Old Debts"
	},
	[10877] = {
		afterComplete = true,
		quest = "A Revenge For Old Debts",
		taskId = {
			17,
			18,
			19,
			20
		}
	},
	[10152] = {
		taskId = 19,
		quest = "A Revenge For Old Debts"
	},
	[10168] = {
		taskId = 4,
		quest = "High Class Hostages"
	},
	[10183] = {
		taskId = 3,
		quest = "Hunting Zedeno"
	},
	[10184] = {
		taskId = 3,
		quest = "Hunting Zedeno"
	},
	[10185] = {
		taskId = 3,
		quest = "Hunting Zedeno"
	},
	[10178] = {
		taskId = 1,
		quest = "Restoring the Natural Balance"
	},
	[10691] = {
		taskId = 3,
		quest = "Restoring the Natural Balance"
	},
	[10162] = {
		itemId = 34195,
		always = true,
		event = "Salt Water Pit"
	},
	[10163] = {
		event = "Salt Water Pit",
		taskId = 1
	},
	[10154] = {
		taskId = 8,
		quest = "Reviving The Glory Days"
	},
	[10029] = {
		taskId = 3,
		quest = "Sugarcane Infestation"
	},
	[10030] = {
		taskId = 9,
		quest = "Sugarcane Infestation"
	},
	[10155] = {
		afterComplete = true,
		quest = "The Lighthouse Mystery",
		taskId = {
			1,
			5,
			6,
			7,
			8,
			9,
			10,
			11,
			12
		}
	},
	[10174] = {
		taskId = 1,
		quest = "The Lighthouse Mystery"
	},
	[10156] = {
		taskId = 3,
		quest = "The Lighthouse Mystery"
	},
	[10160] = {
		taskId = 8,
		quest = "The Lighthouse Mystery"
	},
	[10191] = {
		afterComplete = true,
		quest = "The Lighthouse Mystery",
		taskId = {
			6,
			7,
			8,
			9,
			10,
			11,
			12
		}
	},
	[10254] = {
		taskId = 1,
		quest = "Bloodsport"
	},
	[10255] = {
		taskId = 1,
		quest = "Bloodsport"
	},
	[10211] = {
		taskId = 3,
		quest = "Bloodsport"
	},
	[10229] = {
		quest = "Clean Waters",
		taskId = {
			1,
			7
		}
	},
	[10230] = {
		quest = "Clean Waters",
		taskId = {
			1,
			7
		}
	},
	[10231] = {
		quest = "Clean Waters",
		taskId = {
			1,
			7
		}
	},
	[10232] = {
		quest = "Clean Waters",
		taskId = {
			1,
			7
		}
	},
	[10233] = {
		taskId = 5,
		quest = "Clean Waters"
	},
	[10250] = {
		taskId = 3,
		quest = "Feeding the Troll"
	},
	[10256] = {
		taskId = 3,
		quest = "Feeding the Troll"
	},
	[10251] = {
		taskId = 8,
		quest = "Feeding the Troll"
	},
	[10038] = {
		taskId = 2,
		quest = "Merchant's Misfortune"
	},
	[10040] = {
		taskId = 4,
		quest = "Merchant's Misfortune"
	},
	[10253] = {
		taskId = 6,
		quest = "Merchant's Misfortune"
	},
	[10039] = {
		taskId = 8,
		quest = "Merchant's Misfortune"
	},
	[10037] = {
		taskId = 1,
		quest = "The Long Road Home"
	},
	[10224] = {
		taskId = 3,
		quest = "The Long Road Home"
	},
	[10225] = {
		taskId = 5,
		quest = "The Long Road Home"
	},
	[10259] = {
		taskId = 7,
		quest = "The Long Road Home"
	},
	[10210] = {
		quest = "Tuskan Trashers",
		taskId = {
			7,
			10
		}
	},
	[10219] = {
		quest = "Under The Sands Of Time",
		taskId = {
			3,
			10
		}
	},
	[10569] = {
		taskId = 3,
		quest = "Under The Sands Of Time"
	},
	[10090] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10091] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10092] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10093] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10094] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10095] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10096] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10097] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10098] = {
		taskId = 6,
		quest = "Under The Sands Of Time"
	},
	[10099] = {
		taskId = 8,
		quest = "Under The Sands Of Time"
	},
	[10100] = {
		taskId = 8,
		quest = "Under The Sands Of Time"
	},
	[10218] = {
		taskId = 10,
		quest = "Under The Sands Of Time"
	},
	[10141] = {
		taskId = 17,
		quest = "Ghaz At The Gates"
	},
	[10173] = {
		taskId = 19,
		quest = "Ghaz At The Gates"
	},
	[10257] = {
		taskId = 19,
		quest = "Ghaz At The Gates"
	},
	[10228] = {
		taskId = 5,
		quest = "The Genie's Game"
	},
	[10281] = {
		event = "The Champion's Den",
		taskId = 2
	},
	[10312] = {
		itemId = 42004,
		always = true,
		event = "Tower of the Everliving"
	},
	[10313] = {
		itemId = 42004,
		always = true,
		event = "Tower of the Everliving"
	},
	[10314] = {
		itemId = 42004,
		always = true,
		event = "Tower of the Everliving"
	},
	[10315] = {
		itemId = 42004,
		always = true,
		event = "Tower of the Everliving"
	},
	[10328] = {
		itemId = 2114,
		always = true,
		event = "Tower of the Everliving"
	},
	[10753] = {
		itemId = 34820,
		always = true,
		event = "Tower of the Everliving"
	},
	[10260] = {
		event = "The Bone Carver",
		always = true
	},
	[10261] = {
		event = "She Sells Seashells",
		taskId = 1
	},
	[10085] = {
		taskId = 3,
		quest = "A Goblin Obsession"
	},
	[10086] = {
		quest = "A Goblin Obsession",
		taskId = {
			9,
			10,
			11,
			12,
			13
		}
	},
	[10032] = {
		afterComplete = true,
		quest = "A Goblin Obsession",
		taskId = {
			10,
			11,
			12,
			13
		}
	},
	[10854] = {
		afterComplete = true,
		quest = "A Goblin Obsession",
		taskId = {
			10,
			11,
			12,
			13
		}
	},
	[10135] = {
		taskId = 2,
		quest = "A Most Wondrous Cloak"
	},
	[10182] = {
		taskId = 9,
		quest = "A Most Wondrous Cloak"
	},
	[10136] = {
		taskId = 10,
		quest = "A Most Wondrous Cloak"
	},
	[10138] = {
		quest = "A Most Wondrous Cloak",
		taskId = {
			15,
			16
		}
	},
	[10871] = {
		quest = "A Most Wondrous Cloak",
		taskId = {
			15,
			16
		}
	},
	[10143] = {
		taskId = 6,
		quest = "The Reliant Shipwright"
	},
	[10144] = {
		taskId = 10,
		quest = "The Reliant Shipwright"
	},
	[10419] = {
		quest = "Night Sacrifice",
		taskId = {
			2,
			3,
			4,
			5
		}
	},
	[10420] = {
		quest = "The Hoarder's Stash",
		taskId = {
			0,
			1,
			2,
			3
		}
	},
	[10511] = {
		itemId = 38954,
		always = true,
		event = "Risky Business"
	},
	[10349] = {
		event = "Extremist Naturalists",
		notActive = true
	},
	[10777] = {
		event = "Gritty General",
		always = true
	},
	[10778] = {
		event = "Gritty General",
		notActive = true
	},
	[10515] = {
		quest = "Everlasting Freedom",
		taskId = {
			2,
			4
		}
	},
	[10522] = {
		taskId = 8,
		quest = "Everlasting Freedom"
	},
	[10525] = {
		taskId = 8,
		quest = "Everlasting Freedom"
	},
	[10526] = {
		taskId = 8,
		quest = "Everlasting Freedom"
	},
	[10527] = {
		taskId = 8,
		quest = "Everlasting Freedom"
	},
	[10530] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10517] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10518] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10519] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10520] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10521] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10531] = {
		always = true,
		quest = "Everlasting Freedom"
	},
	[10553] = {
		taskId = 3,
		quest = "A Recipe for Dissolution"
	},
	[10577] = {
		taskId = 9,
		quest = "A Recipe for Dissolution"
	},
	[10537] = {
		taskId = 14,
		quest = "A Recipe for Dissolution"
	},
	[10538] = {
		always = true,
		quest = "A Recipe for Dissolution"
	},
	[10576] = {
		always = true,
		quest = "A Recipe for Dissolution"
	},
	[10532] = {
		quest = "A Recipe for Dissolution",
		taskId = 7,
		itemId = {
			38924,
			38926
		}
	},
	[10654] = {
		event = "Defiance Calls for Aid!",
		taskId = 2
	},
	[10655] = {
		event = "Defiance Calls for Aid!",
		taskId = 3
	},
	[10656] = {
		event = "Defiance Calls for Aid!",
		taskId = 4
	},
	[10657] = {
		event = "Defiance Calls for Aid!",
		taskId = 5
	},
	[10692] = {
		event = "Tax Collection",
		notActive = true
	},
	[10671] = {
		itemId = 42751,
		always = true,
		event = "Just a Drop"
	},
	[10789] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10794] = {
		taskId = 24,
		quest = "Into the Rising Sun"
	},
	[10795] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10784] = {
		itemId = 2114,
		always = true,
		event = "When the Eastern Wind Blows"
	},
	[10785] = {
		itemId = 2114,
		always = true,
		event = "When the Eastern Wind Blows"
	},
	[10786] = {
		itemId = 2114,
		always = true,
		event = "When the Eastern Wind Blows"
	},
	[10787] = {
		itemId = 2114,
		always = true,
		event = "When the Eastern Wind Blows"
	},
	[10788] = {
		itemId = 2114,
		always = true,
		event = "When the Eastern Wind Blows"
	},
	[10223] = {
		quest = "The Disappearance of Lord Shopan",
		taskId = {
			8,
			9
		}
	},
	[10221] = {
		taskId = 2,
		quest = "The Disappearance of Lord Shopan"
	},
	[10022] = {
		taskId = 10,
		quest = "The Cursed Crew"
	},
	[10131] = {
		taskId = 3,
		quest = "Lords of Blood: Part I"
	},
	[10133] = {
		taskId = 4,
		quest = "Lords of Blood: Part II"
	},
	[10134] = {
		taskId = 4,
		quest = "Lords of Blood: Part II"
	},
	[10571] = {
		taskId = 2,
		quest = "Lords of Blood: Part III"
	},
	[10278] = {
		taskId = 3,
		quest = "Realm of the Red Council"
	},
	[10128] = {
		quest = "Realm of the Red Council",
		taskId = {
			5,
			6
		}
	},
	[10106] = {
		taskId = 1,
		quest = "The Guildmaster"
	},
	[10108] = {
		taskId = 3,
		quest = "The Guildmaster"
	},
	[10109] = {
		quest = "The Guildmaster",
		taskId = {
			4,
			13
		}
	},
	[10882] = {
		quest = "The Guildmaster",
		taskId = {
			5,
			6
		}
	},
	[10883] = {
		taskId = 7,
		quest = "The Guildmaster"
	},
	[10884] = {
		taskId = 7,
		quest = "The Guildmaster"
	},
	[10885] = {
		taskId = 7,
		quest = "The Guildmaster"
	},
	[10120] = {
		taskId = 10,
		quest = "The Guildmaster"
	},
	[10731] = {
		quest = "The Guildmaster",
		taskId = {
			11,
			12
		}
	},
	[10046] = {
		taskId = 4,
		quest = "The Relics of Whistler Lapland"
	},
	[10052] = {
		taskId = 1,
		quest = "The Slayer's Guild"
	},
	[10283] = {
		taskId = 3,
		quest = "The Slayer's Guild"
	},
	[10053] = {
		taskId = 5,
		quest = "The Slayer's Guild"
	},
	[10054] = {
		taskId = 5,
		quest = "The Slayer's Guild"
	},
	[10341] = {
		quest = "Whistler's Relics: The Stake",
		taskId = {
			1,
			2
		}
	},
	[10343] = {
		quest = "Whistler's Relics: The Stake",
		taskId = {
			1,
			3
		}
	},
	[10047] = {
		quest = "Whistler's Relics: The Ring",
		taskId = {
			3,
			4
		}
	},
	[10048] = {
		taskId = 3,
		quest = "Whistler's Relics: The Ring"
	},
	[10049] = {
		taskId = 3,
		quest = "Whistler's Relics: The Ring"
	},
	[10050] = {
		taskId = 3,
		quest = "Whistler's Relics: The Ring"
	},
	[10051] = {
		taskId = 3,
		quest = "Whistler's Relics: The Ring"
	},
	[10043] = {
		taskId = 2,
		quest = "Legend Of The Dragonforge"
	},
	[10285] = {
		taskId = 2,
		quest = "Legend Of The Dragonforge"
	},
	[10302] = {
		taskId = 10,
		quest = "Legend Of The Dragonforge"
	},
	[10262] = {
		event = "The Astronomer's Prediction",
		taskId = {
			1,
			2,
			3
		}
	},
	[10512] = {
		event = "Overrun Hideout",
		always = true
	},
	[10642] = {
		taskId = 2,
		quest = "Lords of Blood: Part III"
	},
	[10564] = {
		quest = "The Scent of Love",
		taskId = {
			3,
			5
		}
	},
	[10734] = {
		event = "Trench Warfare",
		taskId = 5
	},
	[10735] = {
		event = "Trench Warfare",
		taskId = 5
	},
	[10736] = {
		itemId = 34905,
		event = "Trench Warfare",
		taskId = 5
	},
	[10686] = {
		event = "Trench Warfare",
		taskId = 5
	},
	[10687] = {
		event = "Trench Warfare",
		taskId = 5
	},
	[10805] = {
		event = "A Sludging Mess",
		always = true
	},
	[10798] = {
		taskId = 10,
		quest = "Trials of the Dunes"
	},
	[10801] = {
		taskId = 20,
		quest = "Trials of the Dunes"
	},
	[10802] = {
		taskId = 20,
		quest = "Trials of the Dunes"
	},
	[10803] = {
		taskId = 20,
		quest = "Trials of the Dunes"
	},
	[10737] = {
		taskId = 5,
		quest = "Sands of Conquest"
	},
	[10738] = {
		taskId = 5,
		quest = "Sands of Conquest"
	},
	[10740] = {
		taskId = 8,
		quest = "Sands of Conquest"
	},
	[10741] = {
		taskId = 8,
		quest = "Sands of Conquest"
	},
	[10742] = {
		taskId = 12,
		quest = "Sands of Conquest"
	},
	[10743] = {
		taskId = 12,
		quest = "Sands of Conquest"
	},
	[10744] = {
		taskId = 12,
		quest = "Sands of Conquest"
	},
	[10808] = {
		taskId = 5,
		quest = "Veil of Scars"
	},
	[10832] = {
		taskId = 5,
		quest = "Veil of Scars"
	},
	[10809] = {
		taskId = 7,
		quest = "Veil of Scars"
	},
	[10810] = {
		taskId = 12,
		quest = "Veil of Scars"
	},
	[10811] = {
		taskId = 12,
		quest = "Veil of Scars"
	},
	[10812] = {
		event = "Unweaving Magic",
		taskId = 1
	},
	[10771] = {
		event = "In the Eye of the Storm",
		taskId = {
			1,
			3
		}
	},
	[10284] = {
		event = "Ancestral Feud",
		notActive = true
	},
	[10335] = {
		taskId = 1,
		quest = "Treasures From The Past"
	},
	[10340] = {
		taskId = 8,
		quest = "Banana Pirates"
	},
	[10330] = {
		quest = "Working Conditions",
		taskId = {
			1,
			2,
			3,
			4,
			5,
			6
		}
	},
	[10351] = {
		taskId = 4,
		quest = "Creating Value"
	},
	[10352] = {
		taskId = 4,
		quest = "Creating Value"
	},
	[10353] = {
		taskId = 4,
		quest = "Creating Value"
	},
	[10354] = {
		taskId = 4,
		quest = "Creating Value"
	},
	[10355] = {
		taskId = 6,
		quest = "Creating Value"
	},
	[10356] = {
		taskId = 6,
		quest = "Creating Value"
	},
	[10336] = {
		quest = "Conditions And Results",
		taskId = {
			3,
			7
		}
	},
	[10337] = {
		quest = "Conditions And Results",
		taskId = {
			3,
			7
		}
	},
	[10338] = {
		quest = "Conditions And Results",
		taskId = {
			3,
			7
		}
	},
	[10274] = {
		quest = "Dreams and Reflections",
		taskId = {
			10,
			11
		}
	},
	[10282] = {
		quest = "Chaotically Brilliant",
		taskId = {
			9,
			10,
			11,
			12
		}
	},
	[10216] = {
		quest = "Chaotically Brilliant",
		taskId = {
			9,
			10,
			11
		}
	},
	[10286] = {
		taskId = 9,
		quest = "A New Reality"
	},
	[10287] = {
		taskId = 8,
		quest = "A New Reality"
	},
	[10583] = {
		quest = "A Cold Burial",
		taskId = {
			5,
			13
		}
	},
	[10582] = {
		taskId = 10,
		quest = "A Cold Burial"
	},
	[10584] = {
		taskId = 22,
		quest = "A Cold Burial"
	},
	[10585] = {
		taskId = 26,
		quest = "A Cold Burial"
	},
	[10474] = {
		event = "Tool Appropriation",
		taskId = 1
	},
	[10483] = {
		event = "Foreigner's Plague",
		taskId = {
			3,
			4,
			5,
			6,
			7,
			11
		}
	},
	[10484] = {
		event = "Foreigner's Plague",
		taskId = 3
	},
	[10485] = {
		event = "Foreigner's Plague",
		taskId = 4
	},
	[10486] = {
		event = "Foreigner's Plague",
		taskId = 5
	},
	[10476] = {
		event = "Foreigner's Plague",
		taskId = 6
	},
	[10477] = {
		itemId = 32087,
		event = "Foreigner's Plague",
		taskId = 7
	},
	[10478] = {
		event = "Foreigner's Plague",
		taskId = 7
	},
	[10479] = {
		event = "Foreigner's Plague",
		taskId = 10
	},
	[10480] = {
		event = "Foreigner's Plague",
		taskId = 11
	},
	[10469] = {
		quest = "Under the Halls' Shadows",
		taskId = {
			4,
			6
		}
	},
	[10481] = {
		event = "Undead Harvesting",
		taskId = {
			2,
			3,
			4
		}
	},
	[10506] = {
		event = "Ice Cold Enemies"
	},
	[10472] = {
		event = "Lady of the Snow",
		notActive = true
	},
	[10490] = {
		always = true,
		event = "Keepers of the Lamp",
		itemId = {
			8008,
			8009
		}
	},
	[10491] = {
		event = "Keepers of the Lamp",
		taskId = 2
	},
	[10640] = {
		always = true,
		quest = "A Tomb of Stone and Ice"
	},
	[10452] = {
		always = true,
		quest = "A Tomb of Stone and Ice"
	},
	[10456] = {
		quest = "A Tomb of Stone and Ice",
		taskId = {
			14,
			15
		}
	},
	[10699] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10700] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10701] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10702] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10703] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10704] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10705] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10706] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10707] = {
		itemId = 34905,
		quest = "A Tomb of Stone and Ice",
		always = true
	},
	[10710] = {
		itemId = 32321,
		event = "The Wizard Frozen in Time",
		notActive = true
	},
	[10713] = {
		itemId = 34905,
		event = "The Wizard Frozen in Time",
		taskId = 3
	},
	[10714] = {
		event = "The Wizard Frozen in Time",
		taskId = 3
	},
	[10471] = {
		taskId = 11,
		quest = "Missing Cargo"
	},
	[10494] = {
		quest = "Missing Cargo",
		taskId = {
			11,
			13
		}
	},
	[10541] = {
		taskId = 10,
		quest = "Welcome to the Bog"
	},
	[10542] = {
		taskId = 13,
		quest = "Welcome to the Bog"
	},
	[10554] = {
		taskId = 1,
		quest = "Green Sabbath"
	},
	[10555] = {
		taskId = 16,
		quest = "Green Sabbath"
	},
	[10596] = {
		always = true,
		quest = "Green Sabbath"
	},
	[10548] = {
		taskId = 21,
		quest = "Green Sabbath"
	},
	[10562] = {
		event = "Daughters of Slaughter I",
		hidden = true
	},
	[10563] = {
		event = "Daughters of Slaughter II",
		always = true
	},
	[10694] = {
		event = "Daughters of Slaughter III",
		always = true
	},
	[10853] = {
		event = "The Corvine Bride",
		always = true
	},
	[10602] = {
		taskId = 5,
		quest = "Shadows and Dead Trees"
	},
	[10717] = {
		afterComplete = true,
		quest = "Rotten Roots, Hollow Hearts",
		taskId = {
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
			17,
			18
		}
	},
	[10724] = {
		taskId = 9,
		quest = "Rotten Roots, Hollow Hearts"
	},
	[10726] = {
		quest = "Rotten Roots, Hollow Hearts",
		taskId = {
			11,
			14,
			16
		}
	},
	[10727] = {
		taskId = 13,
		quest = "Rotten Roots, Hollow Hearts"
	},
	[10729] = {
		afterComplete = true,
		quest = "Rotten Roots, Hollow Hearts",
		taskId = {
			17,
			18
		}
	},
	[10633] = {
		event = "Scales of Corruption",
		notActive = true,
		taskId = {
			1,
			2
		}
	},
	[10749] = {
		event = "Tainted Breed",
		taskId = 2
	},
	[10636] = {
		event = "The Caw of Yl'zogog",
		always = true
	},
	[10617] = {
		taskId = 10,
		quest = "A Feast for Crows"
	},
	[10618] = {
		taskId = 11,
		quest = "A Feast for Crows"
	},
	[10619] = {
		taskId = 11,
		quest = "A Feast for Crows"
	},
	[10620] = {
		taskId = 11,
		quest = "A Feast for Crows"
	},
	[10621] = {
		taskId = 13,
		quest = "A Feast for Crows"
	},
	[10622] = {
		quest = "A Feast for Crows",
		taskId = {
			15,
			16
		}
	},
	[10623] = {
		taskId = 16,
		quest = "A Feast for Crows"
	},
	[10624] = {
		always = true,
		quest = "A Feast for Crows"
	},
	[10625] = {
		taskId = 21,
		quest = "A Feast for Crows"
	},
	[10628] = {
		taskId = 25,
		quest = "A Feast for Crows"
	},
	[10630] = {
		afterComplete = true,
		quest = "A Feast for Crows",
		taskId = {
			30,
			31,
			32,
			33,
			34
		}
	},
	[10766] = {
		always = true,
		quest = "A Feast for Crows"
	},
	[10681] = {
		event = "Sealed Under the Dark",
		always = true
	},
	[10674] = {
		event = "Sealed Under the Dark",
		always = true
	},
	[10675] = {
		event = "Sealed Under the Dark",
		always = true
	},
	[10676] = {
		event = "Sealed Under the Dark",
		always = true
	},
	[10677] = {
		event = "Sealed Under the Dark",
		always = true
	},
	[10678] = {
		event = "Sealed Under the Dark",
		taskId = 1
	},
	[10680] = {
		event = "Sealed Under the Dark",
		taskId = 2
	},
	[10682] = {
		event = "Sealed Amidst the Fire",
		always = true
	},
	[10683] = {
		event = "Sealed Amidst the Fire",
		taskId = 1
	},
	[10684] = {
		event = "Sealed Amidst the Fire",
		taskId = 2
	},
	[10650] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10659] = {
		taskId = 8,
		quest = "Raiders of the Wicked Seals"
	},
	[10774] = {
		taskId = 8,
		quest = "Raiders of the Wicked Seals"
	},
	[10775] = {
		taskId = 8,
		quest = "Raiders of the Wicked Seals"
	},
	[10652] = {
		itemId = 2114,
		quest = "Raiders of the Wicked Seals",
		taskId = 10
	},
	[10850] = {
		taskId = 11,
		quest = "Raiders of the Wicked Seals"
	},
	[10661] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10757] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10758] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10837] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10839] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10840] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10841] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10842] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10843] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10844] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10845] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10846] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10847] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10849] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10848] = {
		always = true,
		quest = "Raiders of the Wicked Seals"
	},
	[10759] = {
		itemId = 32328,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10838] = {
		event = "The Husk of Skorn",
		always = true
	},
	[10804] = {
		always = true,
		artifactRegion = "Hadarak Desert"
	},
	[10828] = {
		always = true,
		artifactRegion = "Hadarak Desert",
		itemId = {
			39209,
			39210
		}
	},
	[10806] = {
		always = true,
		artifactRegion = "Zephyr Vale"
	}
}
QuestItemsUniqueId = {
	[10447] = {
		event = "Thirsty Bandits",
		always = true
	},
	[10008] = {
		taskId = 2,
		quest = "Bandit Breakdown"
	},
	[10024] = {
		quest = "Bandit Breakdown",
		taskId = {
			6,
			7,
			8
		}
	},
	[10009] = {
		taskId = 6,
		quest = "Cult of the Arrow"
	},
	[10011] = {
		taskId = 12,
		quest = "Cult of the Arrow"
	},
	[10065] = {
		quest = "Cult of the Arrow",
		taskId = {
			15,
			16
		}
	},
	[10007] = {
		taskId = 5,
		quest = "Mixed Bloodlines"
	},
	[10022] = {
		taskId = 7,
		quest = "Mixed Bloodlines"
	},
	[10053] = {
		taskId = 2,
		quest = "Raiding the Raiders"
	},
	[10162] = {
		quest = "Raiding the Raiders",
		taskId = {
			15,
			16
		}
	},
	[10048] = {
		taskId = 4,
		quest = "The Lighthouse Keeper"
	},
	[10020] = {
		quest = "The Perils of Rohna Woods",
		taskId = {
			4,
			5,
			6,
			7
		}
	},
	[10021] = {
		taskId = 4,
		quest = "The Perils of Rohna Woods"
	},
	[10136] = {
		taskId = 6,
		quest = "The Perils of Rohna Woods"
	},
	[10138] = {
		event = "The Dark Lighthouse",
		taskId = 1
	},
	[10139] = {
		event = "The Dark Lighthouse",
		taskId = 2
	},
	[10140] = {
		itemId = 2114,
		event = "Lit Beacons",
		notActive = true
	},
	[10141] = {
		itemId = 2114,
		event = "Lit Beacons",
		notActive = true
	},
	[10142] = {
		itemId = 2114,
		event = "Lit Beacons",
		notActive = true
	},
	[10054] = {
		taskId = 2,
		quest = "Missing in Action"
	},
	[10074] = {
		taskId = 9,
		quest = "Swamp Fever"
	},
	[10063] = {
		taskId = 9,
		quest = "The Rites of Skorn"
	},
	[10064] = {
		taskId = 13,
		quest = "The Rites of Skorn"
	},
	[10079] = {
		taskId = 2,
		quest = "The Mountain King"
	},
	[10080] = {
		quest = "The Mountain King",
		taskId = {
			5,
			8,
			11,
			12
		}
	},
	[10075] = {
		quest = "The Tree of Life",
		taskId = {
			1,
			6,
			10
		}
	},
	[10001] = {
		always = true,
		quest = "A Revenge For Old Debts"
	},
	[10002] = {
		always = true,
		quest = "A Revenge For Old Debts"
	},
	[10004] = {
		always = true,
		quest = "A Revenge For Old Debts"
	},
	[10168] = {
		always = true,
		quest = "A Revenge For Old Debts"
	},
	[10169] = {
		always = true,
		quest = "A Revenge For Old Debts"
	},
	[10171] = {
		itemId = 33924,
		quest = "A Revenge For Old Debts",
		taskId = 12
	},
	[10084] = {
		taskId = 4,
		quest = "High Class Hostages"
	},
	[10181] = {
		quest = "High Class Hostages",
		taskId = {
			7,
			18,
			19
		}
	},
	[10082] = {
		taskId = 5,
		quest = "Hunting Zedeno"
	},
	[10281] = {
		itemId = 1912,
		event = "Horn of Rage",
		notActive = true
	},
	[10081] = {
		taskId = 7,
		quest = "The Cursed Crew"
	},
	[10088] = {
		taskId = 1,
		quest = "The Long Road Home"
	},
	[10089] = {
		taskId = 3,
		quest = "The Long Road Home"
	},
	[10091] = {
		taskId = 7,
		quest = "The Long Road Home"
	},
	[10166] = {
		taskId = 1,
		quest = "Tuskan Trashers"
	},
	[10193] = {
		taskId = 3,
		quest = "Under The Sands Of Time"
	},
	[10143] = {
		taskId = 14,
		quest = "Under The Sands Of Time"
	},
	[10115] = {
		quest = "Ghaz At The Gates",
		taskId = {
			16,
			17,
			18,
			19
		}
	},
	[10117] = {
		quest = "Ghaz At The Gates",
		taskId = {
			18,
			19
		}
	},
	[10127] = {
		quest = "The Genie's Game",
		taskId = {
			7,
			8,
			9
		}
	},
	[10451] = {
		taskId = 5,
		quest = "Trials of the Dunes"
	},
	[10453] = {
		taskId = 7,
		quest = "Trials of the Dunes"
	},
	[10454] = {
		taskId = 16,
		quest = "Trials of the Dunes"
	},
	[10456] = {
		event = "Warforged Weapon",
		notActive = true
	},
	[10457] = {
		event = "Clash of the Elements",
		notActive = true
	},
	[10458] = {
		event = "In the Eye of the Storm",
		always = true
	},
	[10085] = {
		taskId = 3,
		quest = "A Goblin Obsession"
	},
	[10086] = {
		taskId = 12,
		quest = "A Goblin Obsession"
	},
	[10421] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10422] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10423] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10424] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10425] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10426] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10427] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10428] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10429] = {
		itemId = 34905,
		taskId = 1,
		event = "Tower of the Everliving"
	},
	[10196] = {
		taskId = 1,
		quest = "The Ipsy Dipsy Spider"
	},
	[10195] = {
		taskId = 5,
		quest = "The Ipsy Dipsy Spider"
	},
	[10189] = {
		quest = "Treacherous Night",
		taskId = {
			11,
			16
		}
	},
	[10194] = {
		taskId = 12,
		quest = "The Disappearance of Lord Shopan"
	},
	[10132] = {
		taskId = 5,
		quest = "Whistler's Relics: The Stake"
	},
	[10163] = {
		quest = "Lords of Blood: Part I",
		taskId = {
			4,
			5,
			6
		}
	},
	[10164] = {
		event = "A Bloody Reception",
		notActive = true
	},
	[10208] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10209] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10210] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10211] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10212] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10214] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10215] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10216] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10217] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10218] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10219] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10220] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10222] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10223] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10224] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10226] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10227] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10228] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10231] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10232] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10233] = {
		isActive = true,
		quest = "Lords of Blood: Part III",
		afterComplete = true
	},
	[10282] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10283] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10284] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10285] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10286] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10287] = {
		itemId = 38746,
		taskId = 1,
		notActive = true,
		event = "The Red Count"
	},
	[10288] = {
		itemId = 38746,
		event = "The Red Count",
		taskId = 2
	},
	[10149] = {
		taskId = 9,
		quest = "The Guildmaster"
	},
	[10131] = {
		quest = "Whistler's Relics: The Stake",
		taskId = {
			1,
			3
		}
	},
	[10199] = {
		taskId = 1,
		quest = "Dreams and Reflections"
	},
	[10201] = {
		taskId = 3,
		quest = "Dreams and Reflections"
	},
	[10182] = {
		taskId = 2,
		quest = "Squatter's Rights"
	},
	[10183] = {
		taskId = 2,
		quest = "Squatter's Rights"
	},
	[10184] = {
		taskId = 2,
		quest = "Squatter's Rights"
	},
	[10121] = {
		itemId = 34195,
		quest = "Legend Of The Dragonforge",
		afterComplete = true,
		taskId = {
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
			17,
			18,
			19
		}
	},
	[10204] = {
		taskId = 4,
		quest = "A New Reality"
	},
	[10431] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10434] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10436] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10441] = {
		always = true,
		quest = "Into the Rising Sun"
	},
	[10438] = {
		taskId = 1,
		quest = "Into the Rising Sun"
	},
	[10432] = {
		taskId = 3,
		quest = "Into the Rising Sun"
	},
	[10433] = {
		taskId = 3,
		quest = "Into the Rising Sun"
	},
	[10435] = {
		taskId = 9,
		quest = "Into the Rising Sun"
	},
	[10437] = {
		taskId = 22,
		quest = "Into the Rising Sun"
	},
	[10440] = {
		taskId = 22,
		quest = "Into the Rising Sun"
	},
	[10234] = {
		taskId = 1,
		quest = "No Common Adventure"
	},
	[10235] = {
		taskId = 1,
		quest = "No Common Adventure"
	},
	[10236] = {
		taskId = 1,
		quest = "No Common Adventure"
	},
	[10237] = {
		taskId = 1,
		quest = "No Common Adventure"
	},
	[10238] = {
		taskId = 1,
		quest = "No Common Adventure"
	},
	[10252] = {
		quest = "The Lost Expedition",
		taskId = {
			5,
			6,
			7
		}
	},
	[10248] = {
		taskId = 4,
		quest = "A Trapper's Last Days"
	},
	[10253] = {
		taskId = 13,
		quest = "A Trapper's Last Days"
	},
	[10269] = {
		taskId = 1,
		quest = "Missing Cargo"
	},
	[10271] = {
		taskId = 14,
		quest = "Missing Cargo"
	},
	[10625] = {
		quest = "Under the Halls' Shadows",
		taskId = {
			4,
			6
		}
	},
	[10266] = {
		taskId = 7,
		quest = "Under the Halls' Shadows"
	},
	[10272] = {
		event = "Foreigner's Plague",
		taskId = 7
	},
	[10273] = {
		event = "Foreigner's Plague",
		taskId = 10
	},
	[10289] = {
		event = "Magical Pheromones",
		notActive = true
	},
	[10256] = {
		always = true,
		quest = "A Tomb of Stone and Ice"
	},
	[10257] = {
		taskId = 9,
		quest = "A Tomb of Stone and Ice"
	},
	[10258] = {
		always = true,
		quest = "A Tomb of Stone and Ice"
	},
	[10301] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10302] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10303] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10304] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10305] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10306] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10307] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10309] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10310] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10311] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10312] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10313] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10314] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10315] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10316] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10317] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10318] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10319] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10320] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10321] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10323] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10324] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10325] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10326] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10327] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10328] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10329] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10330] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10331] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10332] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10333] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10334] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10335] = {
		always = true,
		event = "Sealed Under the Dark",
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10337] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10338] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10339] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10340] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10341] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10342] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10343] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10344] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10345] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10346] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10347] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10348] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10349] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10350] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10351] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10352] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10353] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10354] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10355] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10356] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10357] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10358] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10359] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10360] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10361] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10362] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10363] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10364] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10365] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10366] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10367] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10369] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10370] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10371] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10372] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10373] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10374] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10377] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10378] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10379] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10380] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10381] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10382] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10383] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10384] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10387] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10388] = {
		quest = "Raiders of the Wicked Seals",
		always = true,
		itemId = {
			40569,
			40570,
			40571,
			40572
		}
	},
	[10396] = {
		itemId = 32328,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10397] = {
		itemId = 32328,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10398] = {
		itemId = 32328,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10413] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10414] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10415] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10416] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10417] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10418] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10419] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10420] = {
		itemId = 34905,
		quest = "Raiders of the Wicked Seals",
		always = true
	},
	[10459] = {
		always = true,
		event = "The Husk of Skorn",
		itemId = {
			32328,
			32305
		}
	},
	[10460] = {
		always = true,
		event = "The Husk of Skorn",
		itemId = {
			32328,
			32305
		}
	},
	[10461] = {
		always = true,
		event = "The Husk of Skorn",
		itemId = {
			32328,
			32305
		}
	},
	[10462] = {
		always = true,
		event = "The Husk of Skorn",
		itemId = {
			32328,
			32305
		}
	}
}
QuestItemsItemId = {
	[3623] = {
		taskId = 1,
		quest = "Running Out Of Stock"
	},
	[3624] = {
		taskId = 1,
		quest = "Running Out Of Stock"
	},
	[34323] = {
		taskId = 2,
		quest = "Running Out Of Stock"
	},
	[34214] = {
		taskId = 7,
		quest = "Sugarcane Infestation"
	},
	[34215] = {
		taskId = 7,
		quest = "Sugarcane Infestation"
	},
	[34216] = {
		taskId = 7,
		quest = "Sugarcane Infestation"
	},
	[34217] = {
		taskId = 7,
		quest = "Sugarcane Infestation"
	},
	[34218] = {
		taskId = 7,
		quest = "Sugarcane Infestation"
	},
	[34817] = {
		quest = "Ghaz At The Gates",
		taskId = {
			4,
			6,
			8,
			10
		}
	},
	[34816] = {
		taskId = 12,
		quest = "Ghaz At The Gates"
	},
	[35572] = {
		quest = "The Guildmaster",
		taskId = {
			5,
			6,
			7
		}
	},
	[35576] = {
		quest = "The Guildmaster",
		taskId = {
			5,
			6,
			7,
			11
		}
	},
	[35573] = {
		quest = "The Guildmaster",
		taskId = {
			5,
			6,
			7
		}
	},
	[35574] = {
		quest = "The Guildmaster",
		taskId = {
			5,
			6,
			7
		}
	}
}
CraftingQuests = {
	["Raiding the Raiders"] = 7,
	["Bandit Breakdown"] = 8,
	["Crafting for a Reward"] = 2,
	["The Rites of Skorn"] = 1,
	["Mortal Enemies"] = 9
}
SharedCooldownClientIds = {
	{
		35442,
		35443,
		35444,
		35445,
		35446,
		35447,
		35448,
		35449,
		35450,
		35451,
		35452,
		35453,
		35454,
		35455,
		35456,
		35457,
		35458,
		35459,
		35460,
		35461
	},
	{
		28760,
		35397,
		28882,
		42721,
		35400,
		35401,
		42723
	}
}
AbilityBarIgnoreChannelingItemIds = {
	35442,
	35443,
	35444,
	35445,
	35446,
	35447,
	35448,
	35449,
	35450,
	35451,
	35452,
	35453,
	35454,
	35455,
	35456,
	35457,
	35458,
	35459,
	35460,
	35461
}
AbilityBarSupportedItemIds = {
	35442,
	35443,
	35444,
	35445,
	35446,
	35447,
	35448,
	35449,
	35450,
	35451,
	35452,
	35453,
	35454,
	35455,
	35456,
	35457,
	35458,
	35459,
	35460,
	35461,
	36940,
	36941,
	36947,
	36948,
	36989,
	36990,
	36998,
	36995,
	37040,
	37041,
	37045,
	37046,
	39073,
	39102,
	37006,
	37050,
	39100,
	39080,
	39093,
	37053,
	39096,
	39076,
	39087,
	36957,
	36956,
	37005,
	39085,
	39092,
	39077,
	39084,
	39098,
	39074,
	39075,
	39070,
	37004,
	36954,
	39094,
	39079,
	37054,
	34868,
	34869,
	34870,
	35397,
	35398,
	35399,
	35400,
	35401,
	35402,
	42748,
	42103,
	42104,
	42105,
	42108,
	42109,
	42110,
	42111,
	42113,
	42114,
	42115,
	42116,
	42117,
	42119,
	42120,
	42121,
	42122,
	42124,
	42125,
	42127,
	42128,
	42722,
	42723,
	42724,
	34864,
	34865,
	34866,
	34851,
	34852,
	34853,
	34854,
	34855,
	34856,
	34857,
	34858,
	34859,
	34860,
	34861,
	34862,
	28753,
	28754,
	28755,
	28756,
	28757,
	28758,
	28759,
	28760,
	28761,
	28764,
	28765,
	28766,
	28767,
	28882,
	28883,
	34847,
	34848,
	34849,
	42721,
	42725,
	37125,
	43989,
	34746
}

if g_game.isRavenQuest() then
	dofile("/modules/gamelib/lands_ravenquest.lua")
else
	dofile("/modules/gamelib/lands.lua")
end

REPUTATION_ORDER = 1
REPUTATION_MERCENARY = 2
REPUTATION_CRIMINAL = 3
ReputationToName = {
	[REPUTATION_ORDER] = "Order",
	[REPUTATION_MERCENARY] = "Mercenary",
	[REPUTATION_CRIMINAL] = "Criminal"
}
NameToReputation = {
	Order = REPUTATION_ORDER,
	Mercenary = REPUTATION_MERCENARY,
	Criminal = REPUTATION_CRIMINAL
}
ButtonToColor = {
	logout = "WarningButton",
	yes = "PrimaryButton",
	confirm = "PrimaryButton",
	apply = "PrimaryButton",
	["for\xE7ar sa\xEDda"] = "DangerButton",
	não = "DangerButton",
	sim = "PrimaryButton",
	aplicar = "PrimaryButton",
	["encerrar sess\xE3o"] = "WarningButton",
	confirmar = "PrimaryButton",
	["force exit"] = "DangerButton",
	no = "DangerButton",
	clear = "DangerButton"
}
TRAIT_NONE = 0
TRAIT_NIGHTWALKER = 1
TRAIT_SUNSTRIDER = 2
TRAIT_WAYFARER = 3
TRAIT_SAND_WANDERER = 4
TRAIT_PLAINS_RIDER = 5
TRAIT_KING_OF_THE_TUNDRA = 6
TRAIT_WARBROOD = 7
TRAIT_CAVE_DELVER = 8
TRAIT_PATHFINDER = 9
MOUNT_ABILITY_DASH_T1 = 1600
MOUNT_ABILITY_DASH_T2 = 1601
MOUNT_ABILITY_DASH_T3 = 1602
MOUNT_ABILITY_SPRINT_T1 = 1603
MOUNT_ABILITY_SPRINT_T2 = 1604
MOUNT_ABILITY_SPRINT_T3 = 1605
MOUNT_ABILITY_STAMPEDE_T1 = 1606
MOUNT_ABILITY_STAMPEDE_T2 = 1607
MOUNT_ABILITY_STAMPEDE_T3 = 1608
MOUNT_ABILITY_CHARGE_T1 = 1609
MOUNT_ABILITY_CHARGE_T2 = 1610
MOUNT_ABILITY_CHARGE_T3 = 1611
ITEM_QUALITY_NORMAL = 0
ITEM_QUALITY_HIGH = 1
ITEM_QUALITY_SUPERIOR = 2
ITEM_QUALITY_ARTISAN = 3
ITEM_QUALITY_FIRST = ITEM_QUALITY_NORMAL
ITEM_QUALITY_LAST = ITEM_QUALITY_ARTISAN
ItemQualityNames = {
	[ITEM_QUALITY_NORMAL] = "Normal",
	[ITEM_QUALITY_HIGH] = "High",
	[ITEM_QUALITY_SUPERIOR] = "Superior",
	[ITEM_QUALITY_ARTISAN] = "Artisan"
}
QUALITY_EFFECTIVENESS = {
	[ITEM_QUALITY_NORMAL] = 1,
	[ITEM_QUALITY_HIGH] = 1.1,
	[ITEM_QUALITY_SUPERIOR] = 1.2,
	[ITEM_QUALITY_ARTISAN] = 1.3
}
FOOD_QUALITY_EFFECTIVENESS = {
	[ITEM_QUALITY_NORMAL] = 1,
	[ITEM_QUALITY_HIGH] = 1.2,
	[ITEM_QUALITY_SUPERIOR] = 1.4,
	[ITEM_QUALITY_ARTISAN] = 1.6
}
QUALITY_EFFECTIVENESS_BY_TYPE = {
	foodquality = FOOD_QUALITY_EFFECTIVENESS
}
CHANNEL_FLAG_NONE = 0
CHANNEL_FLAG_PUBLIC = 1
CHANNEL_FLAG_OPTIONAL = 2
CHANNEL_FLAG_ONLINE = 4
CHANNEL_FLAG_WARMODE = 8
CardRarityToName = {
	"Common",
	"Uncommon",
	"Grand",
	"Rare",
	"Arcane",
	"Mythic",
	"Legendary"
}
ItemQualityColors = {
	["Quest Item"] = "#FBFB79",
	["Dawn Essence"] = "#8244C5",
	Ravenpack = "#8244C5",
	["Creature Trophy"] = "#FBFB79",
	[ITEM_GRADE_BASIC] = "#D2D7D8",
	[ITEM_GRADE_GRAND] = "#77D463",
	[ITEM_GRADE_RARE] = "#02CCA8",
	[ITEM_GRADE_ARCANE] = "#52A8F7",
	[ITEM_GRADE_CELESTIAL] = "#FF6EF0",
	[ITEM_GRADE_ASCENDANT] = "#FAEC2F",
	[ITEM_GRADE_HEROIC] = "#FFB451",
	[ITEM_GRADE_MYTHIC] = "#FF7B00",
	[ITEM_GRADE_LEGENDARY] = "#FF5151",
	[ITEM_GRADE_LEGENDARYPLUS] = "#FF5151",
	[ITEM_GRADE_LEGENDARYMAX] = "#FF5151"
}
ItemQualityNameOverlayColors = {
	["Creature Trophy"] = "#FF5151"
}
ItemNameOverlayColors = {
	["Cosmetic Material"] = "#FBFB79"
}
CARD_RARITY_COMMON = 1
CARD_RARITY_UNCOMMON = 2
CARD_RARITY_GRAND = 3
CARD_RARITY_RARE = 4
CARD_RARITY_ARCANE = 5
CARD_RARITY_MYTHIC = 6
CARD_RARITY_LEGENDARY = 7
CardRarityToColor = {
	[CARD_RARITY_COMMON] = "#d2d7d8",
	[CARD_RARITY_UNCOMMON] = "#77D463",
	[CARD_RARITY_GRAND] = "#02CCA8",
	[CARD_RARITY_RARE] = "#52A8F7",
	[CARD_RARITY_ARCANE] = "#FF6EF0",
	[CARD_RARITY_MYTHIC] = "#FFA851",
	[CARD_RARITY_LEGENDARY] = "#FF5151"
}
CARD_RARITY_START = CARD_RARITY_COMMON
CARD_RARITY_END = CARD_RARITY_LEGENDARY
ARCHETYPES_DATA = {
	[ArchetypeWarfare] = {
		name = "Warfare",
		description = "With a ravenous appetite for bloodshed, {Warfare, #E7B131} is the favored archetype of orcs and barbarians. Users of this archetype specialize in {brute force combat, #E7B131}, able to draw upon the lifeblood they've spilled to {heal, #E7B131} themselves and {strengthen, #E7B131} their savage attacks. A Warfare user in the throes of bloodlust and hatred is a terrible sight to behold.",
		skills = {
			{
				slot = 1,
				name = "Brutal Strike",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Guillotine",
				cost = 2,
				row = 2
			},
			{
				slot = 3,
				name = "Shieldbreak",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Bull Rush",
				cost = 3,
				row = 3
			},
			{
				slot = 5,
				name = "Pummel",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Feasting Strike",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Bladestorm",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Fissure",
				cost = 4,
				row = 4
			},
			{
				slot = 9,
				name = "Spiked Chains",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Earthquake",
				cost = 4,
				row = 4
			},
			{
				cost = 5,
				row = 5,
				slot = 11,
				name = "Fierce Leap",
				reqSkill = "Bull Rush"
			},
			{
				slot = 12,
				name = "Berserk",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Chaos Chains"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Savagery"
			},
			{
				cost = 3,
				name = "Bloodlust"
			},
			{
				cost = 3,
				name = "Hatred"
			},
			{
				cost = 3,
				name = "Bloodseeker"
			},
			{
				cost = 3,
				name = "Concentrated Impact"
			},
			{
				cost = 3,
				name = "Bloodbath"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2268,
				lookType = 2267,
				category = 1,
				feetColor = 76,
				legsColor = 132,
				bodyColor = 115,
				headColor = 114,
				secondaryAddon = 2273
			},
			female = {
				primaryAddon = 2780,
				lookType = 2760,
				category = 1,
				feetColor = 76,
				legsColor = 132,
				bodyColor = 115,
				headColor = 114,
				secondaryAddon = 2765
			}
		}
	},
	[ArchetypeArchery] = {
		name = "Archery",
		description = "With the eyes of a hawk and the swiftness of a falcon, {Archery, #E7B131} users outpace their opponents with {speed and vision, #E7B131}. {Ranged combat, #E7B131} is this archetype's specialty, empowering its users with an array of {deadly arrows, #E7B131} to be shot from afar. And if an enemy gets too close an Archery user can draw upon {disengage abilities, #E7B131} to {slow, #E7B131} their opponent and create enough separation for a killing shot. The Rohna Brotherhood has been able to evade the Ravenguard for decades, largely due to the strength of this archetype.",
		skills = {
			{
				slot = 1,
				name = "Wind Arrow",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Viper Arrow",
				cost = 2,
				row = 2
			},
			{
				slot = 3,
				name = "Concussive Shot",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Quick Fire",
				cost = 3,
				row = 3
			},
			{
				slot = 5,
				name = "Precision Shot",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Snaring Shot",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Disengage",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Rain of Arrows",
				cost = 4,
				row = 4
			},
			{
				slot = 8,
				name = "Dawn Arrow",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Venom Grenade",
				cost = 4,
				row = 4
			},
			{
				slot = 11,
				name = "Dragons Arrow",
				cost = 5,
				row = 5
			},
			{
				slot = 12,
				name = "Spirit Rangers",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Celestial Barrage"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Fleetfooted"
			},
			{
				cost = 3,
				name = "Clever Adaptation"
			},
			{
				cost = 3,
				name = "Clear Focus"
			},
			{
				cost = 3,
				name = "Careful Aim"
			},
			{
				cost = 3,
				name = "Marked for Death"
			},
			{
				cost = 3,
				name = "Blitz"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2279,
				lookType = 2278,
				category = 1,
				feetColor = 115,
				legsColor = 114,
				bodyColor = 120,
				headColor = 60,
				secondaryAddon = 2284
			},
			female = {
				primaryAddon = 2573,
				lookType = 2572,
				category = 1,
				feetColor = 115,
				legsColor = 114,
				bodyColor = 120,
				headColor = 60,
				secondaryAddon = 2578
			}
		}
	},
	[ArchetypeProtection] = {
		name = "Protection",
		description = "Strong-footed and brave, these users never lose their {unbreakable spirit, #E7B131} in the heat of battle. The preferred archetype of the mighty Ravenguard, users of {Protection, #E7B131} are often found in the vanguard of armies, {defending their allies, #E7B131} and bashing in the skulls of their enemies. Their {morale in battle, #E7B131} is legendary, a powerful force which affects friend and foe alike.",
		skills = {
			{
				slot = 1,
				name = "Bash",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Spirits Resolve",
				cost = 2,
				row = 2
			},
			{
				slot = 3,
				name = "Smiting Smash",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Shield Throw",
				cost = 2,
				row = 2
			},
			{
				slot = 5,
				name = "Revenge",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Spirit Shield",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Blessed Earth",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Banner of Protection",
				cost = 4,
				row = 4
			},
			{
				slot = 9,
				name = "Provoke",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Unchained",
				cost = 5,
				row = 5
			},
			{
				slot = 11,
				name = "Safeguard",
				cost = 5,
				row = 5
			},
			{
				slot = 12,
				name = "Unbreakable",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Eternal Retribution"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Devout Protector"
			},
			{
				cost = 3,
				name = "Strong Footed"
			},
			{
				cost = 3,
				name = "Undying Will"
			},
			{
				cost = 3,
				name = "Divine Purpose"
			},
			{
				cost = 3,
				name = "Guardian"
			},
			{
				cost = 3,
				name = "Giant's Blood"
			}
		},
		outfit = {
			male = {
				primaryAddon = 5794,
				lookType = 2290,
				category = 1,
				feetColor = 79,
				legsColor = 19,
				bodyColor = 38,
				headColor = 115,
				secondaryAddon = 5952
			},
			female = {
				primaryAddon = 5788,
				lookType = 2608,
				category = 1,
				feetColor = 79,
				legsColor = 19,
				bodyColor = 38,
				headColor = 115,
				secondaryAddon = 5940
			}
		}
	},
	[ArchetypeShadow] = {
		name = "Shadow",
		description = "Using the shadows as a cloak, users of this archetype prefer to extinguish the lives of their victims without ever being seen. The {Shadow, #E7B131} archetype makes use of {toxins and deception, #E7B131} to {weaken targets, #E7B131} before dealing a fatal blow. Shadow users are heralds of death by the time you've seen one, you're already dead.",
		skills = {
			{
				slot = 1,
				name = "Quick Slash",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Shadowstrike",
				cost = 2,
				row = 2
			},
			{
				slot = 3,
				name = "Shadowbind",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Coup de Grace",
				cost = 3,
				row = 3
			},
			{
				slot = 5,
				name = "Stalk",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Venomous Weapons",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Shadow Kick",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Anti-Healing Venom",
				cost = 4,
				row = 4
			},
			{
				slot = 9,
				name = "Crippling Dagger",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Illusive",
				cost = 4,
				row = 4
			},
			{
				slot = 11,
				name = "Death Blossom",
				cost = 5,
				row = 5
			},
			{
				slot = 12,
				name = "Sinister Plot",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Reaper's Eclipse"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Deadly Duelist"
			},
			{
				cost = 3,
				name = "Lethal Toxins"
			},
			{
				cost = 3,
				name = "Shadow Proficiency"
			},
			{
				cost = 3,
				name = "Killer Instinct"
			},
			{
				cost = 3,
				name = "Trickster"
			},
			{
				cost = 3,
				name = "Cheap Shot"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2326,
				lookType = 2325,
				category = 1,
				feetColor = 95,
				legsColor = 127,
				bodyColor = 89,
				headColor = 114,
				secondaryAddon = 2331
			},
			female = {
				primaryAddon = 2667,
				lookType = 2666,
				category = 1,
				feetColor = 95,
				legsColor = 127,
				bodyColor = 89,
				headColor = 114,
				secondaryAddon = 2676
			}
		}
	},
	[ArchetypeWizardry] = {
		name = "Wizardry",
		description = "Bending the {elements, #E7B131} to their will, {Wizardry, #E7B131} users harness the power of {Ice and Fire, #E7B131} to devastate their enemies. Whether igniting foes in flames or ensnaring them in ice, Wizardry users call upon powerful {single-target and area spells, #E7B131} to deal {massive amounts of damage, #E7B131} on the battlefield. With the potential to single-handedly shift the tide of battle, a user of this archetype is truly an {arcane force, #E7B131} to be reckoned with.",
		skills = {
			{
				slot = 1,
				name = "Fireball",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Frostbolt",
				cost = 1,
				row = 1
			},
			{
				cost = 2,
				row = 2,
				slot = 3,
				name = "Erupt",
				reqSkill = "Fireball"
			},
			{
				cost = 2,
				row = 2,
				slot = 4,
				name = "Frost Shards",
				reqSkill = "Frostbolt"
			},
			{
				cost = 3,
				row = 3,
				slot = 5,
				name = "Combustion",
				reqSkill = "Erupt"
			},
			{
				cost = 3,
				row = 3,
				slot = 6,
				name = "Frost Lance",
				reqSkill = "Frost Shards"
			},
			{
				cost = 4,
				row = 4,
				slot = 7,
				name = "Flame Tornado",
				reqSkill = {
					"Pyroblast",
					"Combustion"
				}
			},
			{
				cost = 4,
				row = 4,
				slot = 8,
				name = "Coldblast",
				reqSkill = {
					"Teleport",
					"Frost Lance"
				}
			},
			{
				cost = 6,
				row = 5,
				slot = 9,
				name = "Meteor Strike",
				reqSkill = "Flame Tornado"
			},
			{
				cost = 6,
				row = 5,
				slot = 10,
				name = "Icestorm",
				reqSkill = "Coldblast"
			},
			{
				cost = 3,
				row = 3,
				slot = 11,
				name = "Pyroblast",
				reqSkill = "Erupt"
			},
			{
				cost = 3,
				row = 3,
				slot = 12,
				name = "Teleport",
				reqSkill = "Frost Shards"
			}
		},
		legacySkills = {
			{
				name = "Cataclysm"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Frost Armor"
			},
			{
				cost = 3,
				name = "Havoc"
			},
			{
				cost = 3,
				name = "Flow of Magic"
			},
			{
				cost = 3,
				name = "Amplification"
			},
			{
				cost = 3,
				name = "Hot Headed"
			},
			{
				cost = 3,
				name = "Fire Shield"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2339,
				lookType = 2338,
				category = 1,
				feetColor = 77,
				legsColor = 19,
				bodyColor = 115,
				headColor = 19,
				secondaryAddon = 2345
			},
			female = {
				primaryAddon = 2689,
				lookType = 2688,
				category = 1,
				feetColor = 77,
				legsColor = 19,
				bodyColor = 115,
				headColor = 19,
				secondaryAddon = 2695
			}
		}
	},
	[ArchetypeHoly] = {
		name = "Holy",
		description = "Channeling the {restorative light, #E7B131} of the Dawn, {Holy, #E7B131} is the primary {healing, #E7B131} archetype in the world of Ravendawn. While this archetype focuses on keeping its user and their allies alive on the field of battle, the full power of the Dawn should not be underestimated... skilled users can call down its {holy force, #E7B131} to smite their enemies where they stand.",
		skills = {
			{
				slot = 1,
				name = "Flash Heal",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Smite",
				cost = 1,
				row = 1
			},
			{
				slot = 3,
				name = "Dawn's Light",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Mend",
				cost = 2,
				row = 2
			},
			{
				slot = 5,
				name = "Holy Shackles",
				cost = 2,
				row = 2
			},
			{
				slot = 6,
				name = "Healing Channel",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Devotion",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Holy Force",
				cost = 3,
				row = 3
			},
			{
				slot = 9,
				name = "Circle of Light",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Purify",
				cost = 4,
				row = 4
			},
			{
				slot = 11,
				name = "Generous Influence",
				cost = 6,
				row = 5
			},
			{
				slot = 12,
				name = "Living Saint",
				cost = 6,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Dawns Apotheosis"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Sacred Spirit"
			},
			{
				cost = 3,
				name = "Prophet"
			},
			{
				cost = 3,
				name = "Invigorated Healing"
			},
			{
				cost = 3,
				name = "Healing Attunement"
			},
			{
				cost = 3,
				name = "Healing Bond"
			},
			{
				cost = 3,
				name = "Devout Healer"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2735,
				lookType = 2734,
				category = 1,
				feetColor = 38,
				legsColor = 24,
				bodyColor = 23,
				headColor = 50,
				secondaryAddon = 2740
			},
			female = {
				primaryAddon = 2352,
				lookType = 2351,
				category = 1,
				feetColor = 38,
				legsColor = 24,
				bodyColor = 23,
				headColor = 50,
				secondaryAddon = 2358
			}
		}
	},
	[ArchetypeWitchcraft] = {
		name = "Witchcraft",
		description = "An archetype said to have originated from ancient vampiric cults, {Witchcraft, #E7B131} users mix {occult powers, #E7B131} with the ability to {gain strength from the weaknesses of others, #E7B131}. There is no one better than a Witchcraft user at {finding an enemy's flaw, #E7B131} and exploiting it to their advantage... which makes them incredibly dangerous foes.",
		skills = {
			{
				slot = 1,
				name = "Arcane Pulse",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Curse",
				cost = 1,
				row = 1
			},
			{
				cost = 2,
				row = 2,
				slot = 3,
				name = "Arcane Torrent",
				reqSkill = "Arcane Pulse"
			},
			{
				slot = 4,
				name = "Leech",
				cost = 2,
				row = 2
			},
			{
				slot = 5,
				name = "Eternal Worms",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Magic Rupture",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Dispel",
				cost = 4,
				row = 4
			},
			{
				slot = 8,
				name = "Shackles of Pain",
				cost = 4,
				row = 4
			},
			{
				slot = 9,
				name = "Siphon",
				cost = 4,
				row = 4
			},
			{
				slot = 10,
				name = "Mirror Image",
				cost = 5,
				row = 5
			},
			{
				cost = 5,
				row = 5,
				slot = 11,
				name = "Death Touch",
				reqSkill = "Curse"
			},
			{
				slot = 12,
				name = "Hex",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Witch's Call"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Exploitation"
			},
			{
				cost = 3,
				name = "Cursed Touch"
			},
			{
				cost = 3,
				name = "Witchcraft Mastery"
			},
			{
				cost = 3,
				name = "Arcane Corruption"
			},
			{
				cost = 3,
				name = "Creeping Death"
			},
			{
				cost = 3,
				name = "Bloodmancer"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2717,
				lookType = 2714,
				category = 1,
				feetColor = 76,
				legsColor = 48,
				bodyColor = 87,
				headColor = 49,
				secondaryAddon = 2726
			},
			female = {
				primaryAddon = 2313,
				lookType = 2312,
				category = 1,
				feetColor = 76,
				legsColor = 48,
				bodyColor = 87,
				headColor = 49,
				secondaryAddon = 2319
			}
		}
	},
	[ArchetypeSpiritual] = {
		name = "Spiritual",
		description = "Users of the {Spiritual, #E7B131} archetype have a {supernatural calm, #E7B131}, able to focus intensely upon the invisible threads that tie the world together. With a honed mind, they can {summon these forces, #E7B131} to aid their allies protecting them with barriers of wind, {hastening, #E7B131} their movements, and {refreshing, #E7B131} their dwindling stores of mana. An adept of Spiritual Magic is an invaluable member to any team.",
		skills = {
			{
				slot = 1,
				name = "Cyclone",
				cost = 1,
				row = 1
			},
			{
				slot = 2,
				name = "Regenerate",
				cost = 2,
				row = 2
			},
			{
				slot = 3,
				name = "Whirlwind",
				cost = 2,
				row = 2
			},
			{
				slot = 4,
				name = "Barrier",
				cost = 2,
				row = 2
			},
			{
				slot = 5,
				name = "Air Aura",
				cost = 3,
				row = 3
			},
			{
				slot = 6,
				name = "Force Push",
				cost = 3,
				row = 3
			},
			{
				slot = 7,
				name = "Wind Wall",
				cost = 3,
				row = 3
			},
			{
				slot = 8,
				name = "Party Recovery",
				cost = 4,
				row = 4
			},
			{
				slot = 9,
				name = "Windstrike Spirit",
				cost = 4,
				row = 4
			},
			{
				cost = 5,
				row = 5,
				slot = 10,
				name = "Healing Air Sphere",
				reqSkill = "Party Recovery"
			},
			{
				slot = 11,
				name = "Typhoon",
				cost = 5,
				row = 5
			},
			{
				slot = 12,
				name = "Haste",
				cost = 5,
				row = 5
			}
		},
		legacySkills = {
			{
				name = "Eye of the Storm"
			}
		},
		passives = {
			{
				cost = 3,
				name = "Meditate"
			},
			{
				cost = 3,
				name = "Wind Mastery"
			},
			{
				cost = 3,
				name = "Lingering Impact"
			},
			{
				cost = 3,
				name = "Celerity"
			},
			{
				cost = 3,
				name = "Sins of the Many"
			},
			{
				cost = 3,
				name = "The Cost of Restoration"
			}
		},
		outfit = {
			male = {
				primaryAddon = 2818,
				lookType = 2817,
				category = 1,
				feetColor = 36,
				legsColor = 19,
				bodyColor = 71,
				headColor = 57,
				secondaryAddon = 2822
			},
			female = {
				primaryAddon = 2302,
				lookType = 2301,
				category = 1,
				feetColor = 36,
				legsColor = 19,
				bodyColor = 71,
				headColor = 57,
				secondaryAddon = 2307
			}
		}
	}
}
EquipmentTypesToBonus = {
	["plate helmet"] = "plate",
	["cloth boots"] = "cloth",
	["leather boots"] = "leather",
	["plate boots"] = "plate",
	["cloth legs"] = "cloth",
	["leather legs"] = "leather",
	["plate legs"] = "plate",
	["cloth armor"] = "cloth",
	["leather armor"] = "leather",
	["plate armor"] = "plate",
	["cloth helmet"] = "cloth",
	["leather helmet"] = "leather"
}
EquipmentSetBonus = {
	plate = {
		{
			count = 2,
			list = {
				"+3% Maximum Health",
				"+4% Healing Received",
				"+5% Weapon Defense"
			}
		},
		{
			count = 4,
			list = {
				"+6% Maximum Health",
				"+8% Healing Received",
				"+10% Weapon Defense"
			}
		}
	},
	leather = {
		{
			count = 2,
			list = {
				"+4% Crit Chance",
				"Reduces Stun/Slow Durations by 10%"
			}
		},
		{
			count = 4,
			list = {
				"+8% Crit Chance",
				"Reduces Stun/Slow Durations by 20%"
			}
		}
	},
	cloth = {
		{
			count = 2,
			list = {
				"+5% Attack Speed/Casting Time/Global Cooldown",
				"+7% Spell Defense"
			}
		},
		{
			count = 4,
			list = {
				"+10% Attack Speed/Casting Time/Global Cooldown",
				"+15% Spell Defense"
			}
		}
	}
}
ItemsShopQuality = {
	{
		color = "",
		name = "Normal",
		price = 0.7,
		quality = ITEM_QUALITY_NORMAL
	},
	{
		color = "",
		name = "High",
		price = 0.9,
		quality = ITEM_QUALITY_HIGH
	},
	{
		color = "",
		name = "Superior",
		price = 1.1,
		quality = ITEM_QUALITY_SUPERIOR
	},
	{
		color = "",
		name = "Artisan",
		price = 1.3,
		quality = ITEM_QUALITY_ARTISAN
	}
}
PriceMultiplierByQuality = {}

for index, value in ipairs(ItemsShopQuality) do
	PriceMultiplierByQuality[value.quality] = value.price
end

ItemPrices = {
	[37442] = {
		sell = 40
	},
	[37443] = {
		sell = 340
	},
	[37445] = {
		sell = 200
	},
	[37447] = {
		sell = 200
	},
	[37448] = {
		sell = 680
	},
	[37449] = {
		sell = 50
	},
	[37451] = {
		sell = 75
	},
	[37452] = {
		sell = 40
	},
	[37454] = {
		sell = 100
	},
	[37456] = {
		sell = 30
	},
	[37458] = {
		sell = 65
	},
	[37459] = {
		sell = 20
	},
	[37460] = {
		sell = 840
	},
	[37462] = {
		sell = 20
	},
	[37465] = {
		sell = 80
	},
	[37467] = {
		sell = 180
	},
	[37468] = {
		sell = 80
	},
	[37470] = {
		sell = 100
	},
	[37471] = {
		sell = 500
	},
	[37472] = {
		sell = 100
	},
	[37473] = {
		sell = 450
	},
	[37475] = {
		sell = 450
	},
	[37476] = {
		sell = 210
	},
	[37477] = {
		sell = 40
	},
	[37480] = {
		sell = 30
	},
	[37481] = {
		sell = 50
	},
	[37482] = {
		sell = 330
	},
	[37484] = {
		sell = 40
	},
	[37487] = {
		sell = 40
	},
	[37488] = {
		sell = 200
	},
	[37489] = {
		sell = 60
	},
	[37490] = {
		sell = 70
	},
	[37491] = {
		sell = 320
	},
	[37492] = {
		sell = 80
	},
	[37493] = {
		sell = 50
	},
	[37494] = {
		sell = 200
	},
	[37496] = {
		sell = 140
	},
	[37497] = {
		sell = 95
	},
	[37498] = {
		sell = 300
	},
	[37499] = {
		sell = 90
	},
	[37500] = {
		sell = 35
	},
	[37501] = {
		sell = 100
	},
	[37503] = {
		sell = 40
	},
	[37505] = {
		sell = 60
	},
	[37506] = {
		sell = 80
	},
	[37508] = {
		sell = 40
	},
	[37510] = {
		sell = 80
	},
	[37513] = {
		sell = 300
	},
	[37514] = {
		sell = 250
	},
	[37515] = {
		sell = 170
	},
	[37516] = {
		sell = 30
	},
	[37517] = {
		sell = 90
	},
	[37519] = {
		sell = 50
	},
	[37520] = {
		sell = 100
	},
	[37521] = {
		sell = 450
	},
	[37522] = {
		sell = 30
	},
	[37523] = {
		sell = 200
	},
	[37524] = {
		sell = 50
	},
	[37525] = {
		sell = 100
	},
	[37526] = {
		sell = 50
	},
	[37527] = {
		sell = 70
	},
	[37529] = {
		sell = 400
	},
	[37530] = {
		sell = 30
	},
	[37531] = {
		sell = 30
	},
	[37533] = {
		sell = 40
	},
	[37535] = {
		sell = 80
	},
	[37536] = {
		sell = 160
	},
	[37537] = {
		sell = 110
	},
	[37538] = {
		sell = 170
	},
	[37539] = {
		sell = 275
	},
	[37540] = {
		sell = 160
	},
	[37541] = {
		sell = 145
	},
	[37542] = {
		sell = 450
	},
	[37543] = {
		sell = 170
	},
	[37544] = {
		sell = 500
	},
	[37545] = {
		sell = 40
	},
	[37548] = {
		sell = 75
	},
	[37549] = {
		sell = 100
	},
	[37550] = {
		sell = 40
	},
	[37551] = {
		sell = 300
	},
	[37552] = {
		sell = 35
	},
	[37553] = {
		sell = 140
	},
	[37554] = {
		sell = 750
	},
	[37556] = {
		sell = 240
	},
	[37557] = {
		sell = 250
	},
	[37558] = {
		sell = 325
	},
	[37559] = {
		sell = 200
	},
	[37560] = {
		sell = 85
	},
	[37561] = {
		sell = 80
	},
	[37562] = {
		sell = 500
	},
	[37563] = {
		sell = 20
	},
	[37564] = {
		sell = 30
	},
	[37565] = {
		sell = 335
	},
	[37566] = {
		sell = 40
	},
	[37567] = {
		sell = 20
	},
	[37568] = {
		sell = 200
	},
	[37569] = {
		sell = 30
	},
	[37570] = {
		sell = 140
	},
	[37571] = {
		sell = 40
	},
	[37572] = {
		sell = 30
	},
	[37573] = {
		sell = 25
	},
	[37574] = {
		sell = 350
	},
	[37575] = {
		sell = 80
	},
	[37576] = {
		sell = 50
	},
	[37578] = {
		sell = 60
	},
	[37579] = {
		sell = 30
	},
	[37580] = {
		sell = 70
	},
	[37581] = {
		sell = 150
	},
	[37582] = {
		sell = 120
	},
	[37583] = {
		sell = 90
	},
	[37584] = {
		sell = 50
	},
	[37585] = {
		sell = 65
	},
	[37586] = {
		sell = 300
	},
	[37587] = {
		sell = 50
	},
	[37588] = {
		sell = 70
	},
	[37590] = {
		sell = 20
	},
	[37593] = {
		sell = 50
	},
	[37594] = {
		sell = 170
	},
	[37595] = {
		sell = 50
	},
	[37596] = {
		sell = 60
	},
	[37597] = {
		sell = 80
	},
	[37599] = {
		sell = 100
	},
	[37600] = {
		sell = 40
	},
	[37601] = {
		sell = 50
	},
	[37602] = {
		sell = 70
	},
	[37603] = {
		sell = 60
	},
	[37604] = {
		sell = 110
	},
	[37605] = {
		sell = 70
	},
	[37606] = {
		sell = 70
	},
	[37608] = {
		sell = 145
	},
	[37610] = {
		sell = 40
	},
	[37611] = {
		sell = 30
	},
	[37612] = {
		sell = 110
	},
	[37613] = {
		sell = 30
	},
	[37614] = {
		sell = 45
	},
	[37615] = {
		sell = 25
	},
	[37618] = {
		sell = 70
	},
	[37619] = {
		sell = 40
	},
	[37620] = {
		sell = 40
	},
	[37622] = {
		sell = 80
	},
	[37623] = {
		sell = 60
	},
	[37625] = {
		sell = 50
	},
	[37626] = {
		sell = 200
	},
	[37627] = {
		sell = 400
	},
	[37628] = {
		sell = 30
	},
	[37629] = {
		sell = 40
	},
	[37630] = {
		sell = 30
	},
	[37631] = {
		sell = 110
	},
	[37632] = {
		sell = 50
	},
	[37634] = {
		sell = 30
	},
	[37636] = {
		sell = 140
	},
	[37637] = {
		sell = 30
	},
	[37638] = {
		sell = 360
	},
	[37639] = {
		sell = 90
	},
	[37640] = {
		sell = 85
	},
	[38281] = {
		sell = 310
	},
	[38283] = {
		sell = 310
	},
	[39287] = {
		sell = 1150
	},
	[39554] = {
		sell = 160
	},
	[39555] = {
		sell = 260
	},
	[39556] = {
		sell = 120
	},
	[39557] = {
		sell = 90
	},
	[39558] = {
		sell = 120
	},
	[39559] = {
		sell = 110
	},
	[39560] = {
		sell = 250
	},
	[39561] = {
		sell = 50
	},
	[39562] = {
		sell = 50
	},
	[39568] = {
		sell = 30
	},
	[43650] = {
		sell = 300
	},
	[43660] = {
		sell = 50
	},
	[43662] = {
		sell = 1000
	},
	[46052] = {
		sell = 60
	},
	[46053] = {
		sell = 85
	},
	[46054] = {
		sell = 100
	},
	[46055] = {
		sell = 250
	},
	[46056] = {
		sell = 235
	},
	[46057] = {
		sell = 35
	},
	[46058] = {
		sell = 100
	},
	[46059] = {
		sell = 15
	},
	[46060] = {
		sell = 60
	},
	[46061] = {
		sell = 50
	},
	[46062] = {
		sell = 25
	},
	[46063] = {
		sell = 25
	},
	[46064] = {
		sell = 68
	},
	[46065] = {
		sell = 20
	},
	[46066] = {
		sell = 50
	},
	[46067] = {
		sell = 65
	},
	[46068] = {
		sell = 50
	},
	[46069] = {
		sell = 110
	},
	[46070] = {
		sell = 20
	},
	[46071] = {
		sell = 75
	},
	[46072] = {
		sell = 30
	},
	[46073] = {
		sell = 45
	},
	[46074] = {
		sell = 25
	},
	[46075] = {
		sell = 65
	},
	[46076] = {
		sell = 70
	},
	[46077] = {
		sell = 200
	},
	[46078] = {
		sell = 35
	},
	[46079] = {
		sell = 110
	},
	[46080] = {
		sell = 65
	},
	[46081] = {
		sell = 30
	},
	[46082] = {
		sell = 30
	},
	[46083] = {
		sell = 90
	},
	[46084] = {
		sell = 90
	},
	[46085] = {
		sell = 70
	},
	[46086] = {
		sell = 210
	},
	[46087] = {
		sell = 300
	},
	[46088] = {
		sell = 19
	},
	[46089] = {
		sell = 120
	},
	[46090] = {
		sell = 100
	},
	[46091] = {
		sell = 15
	},
	[46092] = {
		sell = 55
	},
	[46093] = {
		sell = 82
	},
	[46094] = {
		sell = 250
	},
	[46095] = {
		sell = 85
	},
	[46096] = {
		sell = 135
	},
	[46097] = {
		sell = 80
	},
	[46098] = {
		sell = 55
	},
	[46099] = {
		sell = 120
	},
	[46100] = {
		sell = 55
	},
	[46101] = {
		sell = 200
	},
	[46102] = {
		sell = 40
	},
	[46103] = {
		sell = 135
	},
	[46104] = {
		sell = 25
	},
	[46105] = {
		sell = 10
	},
	[46106] = {
		sell = 85
	},
	[46107] = {
		sell = 130
	},
	[46108] = {
		sell = 300
	},
	[46109] = {
		sell = 100
	},
	[46110] = {
		sell = 100
	},
	[46111] = {
		sell = 65
	},
	[46112] = {
		sell = 105
	},
	[46113] = {
		sell = 70
	},
	[46114] = {
		sell = 40
	},
	[46115] = {
		sell = 52
	},
	[46116] = {
		sell = 35
	},
	[46117] = {
		sell = 275
	},
	[46118] = {
		sell = 300
	},
	[46119] = {
		sell = 100
	},
	[46120] = {
		sell = 1000
	},
	[46121] = {
		sell = 135
	},
	[46122] = {
		sell = 100
	},
	[46123] = {
		sell = 35
	},
	[46124] = {
		sell = 35
	},
	[46125] = {
		sell = 150
	},
	[46126] = {
		sell = 100
	},
	[46127] = {
		sell = 50
	},
	[46128] = {
		sell = 75
	},
	[46129] = {
		sell = 95
	},
	[46130] = {
		sell = 38
	},
	[46131] = {
		sell = 235
	},
	[46132] = {
		sell = 30
	},
	[46133] = {
		sell = 50
	},
	[46134] = {
		sell = 135
	},
	[46135] = {
		sell = 180
	},
	[46136] = {
		sell = 35
	},
	[46137] = {
		sell = 500
	},
	[46138] = {
		sell = 175
	},
	[46139] = {
		sell = 90
	},
	[46140] = {
		sell = 200
	},
	[46141] = {
		sell = 60
	},
	[46142] = {
		sell = 25
	},
	[46143] = {
		sell = 35
	},
	[46144] = {
		sell = 125
	},
	[46145] = {
		sell = 80
	},
	[46146] = {
		sell = 75
	},
	[46147] = {
		sell = 50
	},
	[46148] = {
		sell = 140
	},
	[46149] = {
		sell = 55
	},
	[46150] = {
		sell = 45
	},
	[46151] = {
		sell = 230
	},
	[46152] = {
		sell = 6000
	},
	[46153] = {
		sell = 350
	},
	[46154] = {
		sell = 100
	},
	[46155] = {
		sell = 150
	},
	[46156] = {
		sell = 250
	},
	[46157] = {
		sell = 50
	},
	[46158] = {
		sell = 250
	},
	[46159] = {
		sell = 18
	},
	[46160] = {
		sell = 150
	},
	[46161] = {
		sell = 70
	},
	[46162] = {
		sell = 75
	},
	[46163] = {
		sell = 30
	},
	[46164] = {
		sell = 250
	},
	[46165] = {
		sell = 140
	},
	[46166] = {
		sell = 30
	},
	[46167] = {
		sell = 150
	},
	[46168] = {
		sell = 175
	},
	[46169] = {
		sell = 300
	},
	[46170] = {
		sell = 40
	},
	[46171] = {
		sell = 40
	},
	[46172] = {
		sell = 150
	},
	[46173] = {
		sell = 150
	},
	[46174] = {
		sell = 115
	},
	[46175] = {
		sell = 450
	},
	[46176] = {
		sell = 200
	},
	[46177] = {
		sell = 30
	},
	[46178] = {
		sell = 70
	},
	[46179] = {
		sell = 75
	},
	[46180] = {
		sell = 20
	},
	[46181] = {
		sell = 45
	},
	[46182] = {
		sell = 105
	},
	[46183] = {
		sell = 125
	},
	[46184] = {
		sell = 50
	},
	[46185] = {
		sell = 420
	},
	[46186] = {
		sell = 85
	},
	[46187] = {
		sell = 175
	},
	[46188] = {
		sell = 20
	},
	[46189] = {
		sell = 200
	},
	[46190] = {
		sell = 45
	},
	[46191] = {
		sell = 275
	},
	[46192] = {
		sell = 20
	},
	[46193] = {
		sell = 345
	},
	[46194] = {
		sell = 40
	},
	[46195] = {
		sell = 95
	},
	[46196] = {
		sell = 100
	},
	[46197] = {
		sell = 100
	},
	[46198] = {
		sell = 185
	},
	[46199] = {
		sell = 35
	},
	[46200] = {
		sell = 20
	},
	[46201] = {
		sell = 80
	},
	[46202] = {
		sell = 50
	},
	[46203] = {
		sell = 100
	},
	[46204] = {
		sell = 40
	},
	[46205] = {
		sell = 100
	},
	[46206] = {
		sell = 325
	},
	[46207] = {
		sell = 50
	},
	[46208] = {
		sell = 150
	},
	[46209] = {
		sell = 20
	},
	[46210] = {
		sell = 120
	},
	[46211] = {
		sell = 40
	},
	[46212] = {
		sell = 80
	},
	[46213] = {
		sell = 130
	},
	[46214] = {
		sell = 85
	},
	[46215] = {
		sell = 50
	},
	[46216] = {
		sell = 60
	},
	[46217] = {
		sell = 40
	},
	[46218] = {
		sell = 85
	},
	[46219] = {
		sell = 80
	},
	[46220] = {
		sell = 100
	},
	[46221] = {
		sell = 80
	},
	[46222] = {
		sell = 80
	},
	[46223] = {
		sell = 210
	},
	[46224] = {
		sell = 45
	},
	[46225] = {
		sell = 25
	},
	[46226] = {
		sell = 55
	},
	[46227] = {
		sell = 100
	},
	[46228] = {
		sell = 175
	},
	[46229] = {
		sell = 150
	},
	[46230] = {
		sell = 40
	},
	[46231] = {
		sell = 95
	},
	[46232] = {
		sell = 200
	},
	[46233] = {
		sell = 30
	},
	[46234] = {
		sell = 30
	},
	[46235] = {
		sell = 30
	},
	[46236] = {
		sell = 150
	},
	[46237] = {
		sell = 10
	},
	[46238] = {
		sell = 300
	},
	[46239] = {
		sell = 85
	},
	[46240] = {
		sell = 100
	},
	[47010] = {
		sell = 200
	},
	[47011] = {
		sell = 100
	},
	[47012] = {
		sell = 95
	},
	[47013] = {
		sell = 20
	},
	[47014] = {
		sell = 150
	},
	[47015] = {
		sell = 100
	},
	[47016] = {
		sell = 40
	},
	[47017] = {
		sell = 30
	},
	[47018] = {
		sell = 65
	},
	[47019] = {
		sell = 500
	},
	[47020] = {
		sell = 150
	},
	[47021] = {
		sell = 150
	},
	[47022] = {
		sell = 250
	},
	[47023] = {
		sell = 85
	},
	[47024] = {
		sell = 450
	},
	[47025] = {
		sell = 230
	},
	[47026] = {
		sell = 25
	},
	[47027] = {
		sell = 200
	},
	[47028] = {
		sell = 75
	},
	[47029] = {
		sell = 35
	},
	[47030] = {
		sell = 40
	},
	[47031] = {
		sell = 100
	},
	[47032] = {
		sell = 100
	},
	[47033] = {
		sell = 75
	},
	[47034] = {
		sell = 125
	},
	[47035] = {
		sell = 50
	},
	[47036] = {
		sell = 175
	},
	[47037] = {
		sell = 175
	},
	[47038] = {
		sell = 30
	},
	[47039] = {
		sell = 60
	},
	[47040] = {
		sell = 60
	},
	[47041] = {
		sell = 35
	},
	[47042] = {
		sell = 20
	},
	[47043] = {
		sell = 65
	},
	[47044] = {
		sell = 110
	},
	[47045] = {
		sell = 200
	},
	[47046] = {
		sell = 65
	},
	[47047] = {
		sell = 15
	},
	[47048] = {
		sell = 85
	},
	[47049] = {
		sell = 100
	},
	[47050] = {
		sell = 135
	},
	[47051] = {
		sell = 320
	},
	[47052] = {
		sell = 65
	}
}
ShipParts = {
	[2851] = {
		name = "Double Fishing Hook",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 0,
		description = "Increases the damage of fishing abilities by 20%.",
		type = "cabin"
	},
	[5806] = {
		name = "Royal Water Pumps",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "This skill increases your ships speed by 300 for 5 seconds.",
		type = "auxiliary"
	},
	[5487] = {
		name = "Sturdy Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 150,
		health = 0,
		description = "Your ship is less affected by slowing effects.",
		type = "sail"
	},
	[1801] = {
		name = "Small Galleon",
		cargoslots = 1,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 500,
		speed = 250,
		health = 1500,
		description = "Slightly reduces the cooldown of your cannons.",
		type = "hull"
	},
	[5125] = {
		name = "Basic Ship",
		cargoslots = 0,
		fishcapacity = 2,
		packcapacity = 0,
		weight = 500,
		speed = 250,
		health = 800,
		description = "Basic ship that gets you going.",
		type = "hull"
	},
	[1795] = {
		name = "Small Fishing Ship",
		cargoslots = 1,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 500,
		speed = 250,
		health = 1000,
		description = "Slightly increases the damage dealt by your fishing skills.",
		type = "hull"
	},
	[1817] = {
		name = "Sturdy Plating",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 500,
		description = "The added plating increases the health of your ship.",
		type = "auxiliary"
	},
	[1821] = {
		name = "Adorned Ship Emblems",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 150,
		health = 0,
		description = "Increases the movement speed of your ship.",
		type = "auxiliary"
	},
	[1811] = {
		name = "Large Tradepack Container",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 2,
		weight = 100,
		speed = 0,
		health = 0,
		description = "Moderately increases your capacity to carry tradepacks.",
		type = "cabin"
	},
	[1813] = {
		name = "Small Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 50,
		health = 0,
		description = "Slightly increases ship speed",
		type = "sail"
	},
	[5815] = {
		name = "Medium Siege Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a heavy cannon ball that deals between 200 to 400 damage.",
		type = "auxiliary"
	},
	[5799] = {
		name = "Medium Mortar Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "After telegraphing for 1.5 seconds, fires an explosive projectile, dealing between 600 to 800 damage in the area.",
		type = "auxiliary"
	},
	[5485] = {
		name = "Warship Plating",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 500,
		speed = 0,
		health = 2000,
		description = "The added plating increases the health of your ship.",
		type = "auxiliary"
	},
	[2852] = {
		name = "Reinforced Plating",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 750,
		description = "The added plating increases the health of your ship.",
		type = "auxiliary"
	},
	[5816] = {
		name = "Large Siege Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a heavy cannon ball that deals between 250 to 500 damage.",
		type = "auxiliary"
	},
	[5800] = {
		name = "Large Mortar Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "After telegraphing for 1.5 seconds, fires an explosive projectile, dealing between 800 to 1200 damage in the area.",
		type = "auxiliary"
	},
	[5478] = {
		name = "Graceful Ship Emblems",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 250,
		health = 0,
		description = "Increases the movement speed of your ship.",
		type = "auxiliary"
	},
	[5817] = {
		name = "Medium Drake Head",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 250,
		speed = 0,
		health = 0,
		description = "Fires a flame in front of the ship for 5 seconds, burning the target for 125 damage per second while also applying a \"Burning Ship\" status, dealing 40 damage per second during 8 seconds.",
		type = "auxiliary"
	},
	[5801] = {
		name = "Medium Floating Mines",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Leaves explosive mines in a line behind you, lasting for 10 seconds and exploding on contact. The explosion causes 500 damage while also slowing the target by 35% for 8 seconds.",
		type = "auxiliary"
	},
	[5484] = {
		name = "Pirate Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 125,
		health = 0,
		description = "Your cannons deal more damage to innocent ships.",
		type = "sail"
	},
	[2849] = {
		name = "Fishing Hook",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Increases the damage of fishing abilities by 10%.",
		type = "cabin"
	},
	[5818] = {
		name = "Large Drake Head",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 250,
		speed = 0,
		health = 0,
		description = "Fires a flame in front of the ship for 5 seconds, burning the target for 175 damage per second while also applying a \"Burning Ship\" status, dealing 55 damage per second during 8 seconds.",
		type = "auxiliary"
	},
	[5802] = {
		name = "Large Floating Mines",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Leaves explosive mines in a line behind you, lasting for 10 seconds and exploding on contact. The explosion causes 750 damage while also slowing the target by 40% for 8 seconds.",
		type = "auxiliary"
	},
	[5480] = {
		name = "Small Floating Mines",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Leaves explosive mines in a line behind you, lasting for 10 seconds and exploding on contact. The explosion causes 250 damage while also slowing the target by 30% for 8 seconds.",
		type = "auxiliary"
	},
	[1800] = {
		name = "Large Merchant Ship",
		cargoslots = 3,
		fishcapacity = 0,
		packcapacity = 3,
		weight = 600,
		speed = 250,
		health = 1500,
		description = "Significantly increases your capacity to carry tradepacks.",
		type = "hull"
	},
	[1804] = {
		name = "Ammunitions Cabin",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Slightly reduces the cooldown of your cannons.",
		type = "cabin"
	},
	[1798] = {
		name = "Small Merchant Ship",
		cargoslots = 1,
		fishcapacity = 0,
		packcapacity = 1,
		weight = 500,
		speed = 250,
		health = 1000,
		description = "Slightly increases your capacity to carry tradepacks.",
		type = "hull"
	},
	[1796] = {
		name = "Medium Fishing Ship",
		cargoslots = 2,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 550,
		speed = 250,
		health = 1250,
		description = "Moderately increases the damage dealt by your fishing skills.",
		type = "hull"
	},
	[1820] = {
		name = "Shiny Ship Emblems",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 150,
		speed = 100,
		health = 0,
		description = "Increases the movement speed of your ship.",
		type = "auxiliary"
	},
	[1810] = {
		name = "Tradepack Container",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 1,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Slightly increases your capacity to carry tradepacks.",
		type = "cabin"
	},
	[1814] = {
		name = "Medium Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 150,
		speed = 100,
		health = 0,
		description = "Moderately increases ship speed",
		type = "sail"
	},
	[5819] = {
		name = "Medium Broadside Artillery",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "Fires a barrage of cannon shots on both sides of the ship, dealing 350-400 damage. This ability has 3 charges..",
		type = "auxiliary"
	},
	[5795] = {
		name = "Medium Hullbreaker Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 400,
		speed = 0,
		health = 0,
		description = "Fires a powerful blast in a straight line infront of your ship, dealing between 700 to 1000 damage.",
		type = "auxiliary"
	},
	[1824] = {
		name = "Advanced Water Pumps",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "This skill increases your ships speed by 200 for 5 seconds.",
		type = "auxiliary"
	},
	[2657] = {
		name = "Starter Ship",
		cargoslots = 0,
		fishcapacity = 2,
		packcapacity = 0,
		weight = 500,
		speed = 250,
		health = 1000,
		description = "Basic ship that gets you going.",
		type = "hull"
	},
	[5780] = {
		name = "Small Hullbreaker Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 400,
		speed = 0,
		health = 0,
		description = "Fires a powerful blast in a straight line infront of your ship, dealing between 500 to 700 damage.",
		type = "auxiliary"
	},
	[2850] = {
		name = "Large Ammunitions Cabin",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 0,
		description = "Moderately reduces the cooldown of your cannons.",
		type = "cabin"
	},
	[5820] = {
		name = "Large Broadside Artillery",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "Fires a barrage of cannon shots on both sides of the ship, dealing 450-550 damage. This ability has 3 charges.",
		type = "auxiliary"
	},
	[5796] = {
		name = "Large Hullbreaker Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 400,
		speed = 0,
		health = 0,
		description = "Fires a powerful blast in a straight line infront of your ship, dealing between 1000 to 1400 damage.",
		type = "auxiliary"
	},
	[5482] = {
		name = "Merchant Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 100,
		health = 0,
		description = "Increases speed when carrying tradepacks.",
		type = "sail"
	},
	[5804] = {
		name = "Large Grappling Hooks",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Fires a grappling hook in a line in front of the ship, slowing the first target hit by 90% for 3 seconds.",
		type = "auxiliary"
	},
	[5803] = {
		name = "Medium Grappling Hooks",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Fires a grappling hook in a line in front of the ship, slowing the first target hit by 70% for 3 seconds.",
		type = "auxiliary"
	},
	[5481] = {
		name = "Small Grappling Hooks",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Fires a grappling hook in a line in front of the ship, slowing the first target hit by 50% for 3 seconds.",
		type = "auxiliary"
	},
	[5798] = {
		name = "Large Shrapnel Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a cloud of shrapnel projectiles, dealing between 200 to 400 damage while applying a Damaged Sail stack. Each stack slows the afflicted ship/creature by 7% for 20 seconds. Stacks up to 3 times. New stacks do not refresh this duration",
		type = "auxiliary"
	},
	[5797] = {
		name = "Medium Shrapnel Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a cloud of shrapnel projectiles, dealing between 150 to 300 damage while applying a Damaged Sail stack. Each stack slows the afflicted ship/creature by 6% for 20 seconds. Stacks up to 3 times. New stacks do not refresh this duration.",
		type = "auxiliary"
	},
	[1823] = {
		name = "Efficient Water Pumps",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 150,
		speed = 0,
		health = 0,
		description = "This skill increases your ships speed by 150 for 5 seconds.",
		type = "auxiliary"
	},
	[1797] = {
		name = "Large Fishing Ship",
		cargoslots = 3,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 600,
		speed = 250,
		health = 1500,
		description = "Significantly increases the damage dealt by your fishing skills.",
		type = "hull"
	},
	[5477] = {
		name = "Small Drake Head",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 250,
		speed = 0,
		health = 0,
		description = "Fires a flame in front of the ship for 5 seconds, burning the target for 75 damage per second while also applying a \"Burning Ship\" status, dealing 25 damage per second during 8 seconds.",
		type = "auxiliary"
	},
	[2853] = {
		name = "Small Fishing Nets",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 0,
		description = "Slightly reduces the time it takes for a fish to bite.",
		type = "auxiliary"
	},
	[5486] = {
		name = "Fortified Plating",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 400,
		speed = 0,
		health = 1250,
		description = "The added plating increases the health of your ship.",
		type = "auxiliary"
	},
	[5479] = {
		name = "Deluxe Ship Emblems",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 250,
		speed = 200,
		health = 0,
		description = "Increases the movement speed of your ship.",
		type = "auxiliary"
	},
	[5781] = {
		name = "Small Shrapnel Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a cloud of shrapnel projectiles, dealing between 100 to 200 damage while applying a Damaged Sail stack. Each stack slows the afflicted ship/creature by 5% for 20 seconds. Stacks up to 3 times. New stacks do not refresh this duration.",
		type = "auxiliary"
	},
	[5779] = {
		name = "Medium Maintenance Unit",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 0,
		description = "Triples the effectiveness of the Repair ability.",
		type = "cabin"
	},
	[1805] = {
		name = "Small Maintenance Unit",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 0,
		health = 0,
		description = "Doubles the effectiveness of the Repair ability.",
		type = "cabin"
	},
	[5805] = {
		name = "Superior Water Pumps",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 250,
		speed = 0,
		health = 0,
		description = "This skill increases your ships speed by 250 for 5 seconds.",
		type = "auxiliary"
	},
	[5483] = {
		name = "Small Broadside Artillery",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "Fires a barrage of cannon shots on both sides of the ship, dealing 250-300 damage. This ability has 3 charges.",
		type = "auxiliary"
	},
	[1822] = {
		name = "Basic Water Pumps",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 0,
		description = "This skill increases your ships speed by 100 for 5 seconds.",
		type = "auxiliary"
	},
	[1819] = {
		name = "Simple Ship Emblems",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 50,
		health = 0,
		description = "Increases the movement speed of your ship.",
		type = "auxiliary"
	},
	[2848] = {
		name = "Small Siege Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Fires a heavy cannon ball that deals between 150 to 300 damage.",
		type = "auxiliary"
	},
	[1816] = {
		name = "Minor Plating",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 100,
		speed = 0,
		health = 250,
		description = "The added plating increases the health of your ship.",
		type = "auxiliary"
	},
	[2855] = {
		name = "Large Fish Nets",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 0,
		health = 0,
		description = "Significantly reduces the time it takes for a fish to bite..",
		type = "auxiliary"
	},
	[2854] = {
		name = "Medium Fish Nets",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 150,
		speed = 0,
		health = 0,
		description = "Moderately reduces the time it takes for a fish to bite.",
		type = "auxiliary"
	},
	[5124] = {
		name = "Basic Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 50,
		speed = 25,
		health = 0,
		description = "Basic sail that gets you going.",
		type = "sail"
	},
	[1815] = {
		name = "Large Sail",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 200,
		speed = 150,
		health = 0,
		description = "Significantly increases ship speed.",
		type = "sail"
	},
	[1803] = {
		name = "Large Galleon",
		cargoslots = 3,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 600,
		speed = 250,
		health = 2100,
		description = "Significantly reduces the cooldown of your cannons.",
		type = "hull"
	},
	[1802] = {
		name = "Medium Galleon",
		cargoslots = 2,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 550,
		speed = 250,
		health = 1800,
		description = "Moderately reduces the cooldown of your cannons.",
		type = "hull"
	},
	[1799] = {
		name = "Medium Merchant Ship",
		cargoslots = 2,
		fishcapacity = 0,
		packcapacity = 2,
		weight = 550,
		speed = 250,
		health = 1250,
		description = "Moderately increases your capacity to carry tradepacks.",
		type = "hull"
	},
	[5782] = {
		name = "Small Mortar Cannon",
		cargoslots = 0,
		fishcapacity = 0,
		packcapacity = 0,
		weight = 300,
		speed = 0,
		health = 0,
		description = "After telegraphing for 1.5 seconds, fires an explosive projectile, dealing between 400 to 600 damage in the area.",
		type = "auxiliary"
	}
}
OutfitAddons = {
	[2357] = {
		id = 81,
		name = "Sanctified Adorning"
	},
	[2349] = {
		id = 74,
		name = "Igneas Ice Staff"
	},
	[2268] = {
		id = 1,
		name = "Default"
	},
	[2276] = {
		id = 9,
		name = "Darksteel Axe"
	},
	[2325] = {
		id = 6,
		name = "Shadow"
	},
	[2292] = {
		id = 28,
		name = "Magical Sigils"
	},
	[2309] = {
		id = 39,
		name = "Royal Rapier"
	},
	[2762] = {
		id = 155,
		name = "Ornamental Helmet"
	},
	[2738] = {
		id = 144,
		name = "Blessed Hood"
	},
	[2722] = {
		id = 139,
		name = "Livingthorn Staff"
	},
	[5959] = {
		id = 194,
		name = "Back Stabba"
	},
	[2690] = {
		id = 118,
		name = "Not-so-Magical Hat"
	},
	[5736] = {
		id = 88,
		name = "Winged Protector"
	},
	[2675] = {
		id = 113,
		name = "Serrated Blades"
	},
	[5927] = {
		id = 185,
		name = "Bull's Fury"
	},
	[2611] = {
		id = 95,
		name = "Bandit Breaker"
	},
	[2358] = {
		id = 82,
		name = "Default"
	},
	[2350] = {
		id = 75,
		name = "Demonskull staff"
	},
	[2342] = {
		id = 67,
		name = "Enchanted Hat"
	},
	[2277] = {
		id = 10,
		name = "Ominous Axe"
	},
	[2285] = {
		id = 17,
		name = "Curved Bow"
	},
	[5737] = {
		id = 89,
		name = "Knight's Helmet"
	},
	[2310] = {
		id = 40,
		name = "Bloodletter"
	},
	[2763] = {
		id = 156,
		name = "Thergardian Helmet"
	},
	[2739] = {
		id = 145,
		name = "Dawn's Guider"
	},
	[2723] = {
		id = 138,
		name = "Ravensong Enchanter"
	},
	[5961] = {
		id = 195,
		name = "Night's Crest"
	},
	[2691] = {
		id = 119,
		name = "Starseeker Hat"
	},
	[5738] = {
		id = 90,
		name = "Bestial Maw"
	},
	[2676] = {
		id = 112,
		name = "Default"
	},
	[2668] = {
		id = 108,
		name = "Shadow Veil"
	},
	[2612] = {
		id = 96,
		name = "Snowfall Endurer"
	},
	[2359] = {
		id = 83,
		name = "Intact Arms"
	},
	[2351] = {
		id = 8,
		name = "Holy"
	},
	[2580] = {
		id = 103,
		name = "Elderbark Bow"
	},
	[2278] = {
		id = 2,
		name = "Archer"
	},
	[2327] = {
		id = 53,
		name = "Shadow Veil"
	},
	[5739] = {
		id = 91,
		name = "Iceguard"
	},
	[2302] = {
		id = 32,
		name = "Default"
	},
	[2780] = {
		id = 153,
		name = "Default"
	},
	[2764] = {
		id = 157,
		name = "Wyrmskull Visage"
	},
	[2740] = {
		id = 147,
		name = "Default"
	},
	[2724] = {
		id = 137,
		name = "Skulls of Possession"
	},
	[5963] = {
		id = 196,
		name = "Back Stabba"
	},
	[2692] = {
		id = 120,
		name = "Enchanted Hat"
	},
	[5740] = {
		id = 92,
		name = "Draconic Crown"
	},
	[5899] = {
		id = 190,
		name = "Wanderer's Veil"
	},
	[2669] = {
		id = 109,
		name = "Stalker's Cowl"
	},
	[5952] = {
		id = 178,
		name = "Default"
	},
	[2274] = {
		id = 7,
		name = "Skullsplitter Axe"
	},
	[5788] = {
		id = 179,
		name = "Default"
	},
	[2360] = {
		id = 84,
		name = "Lustrous Protection"
	},
	[2352] = {
		id = 76,
		name = "Default"
	},
	[2344] = {
		id = 69,
		name = "Bright Robes"
	},
	[2581] = {
		id = 104,
		name = "Drakebane"
	},
	[2328] = {
		id = 54,
		name = "Stalker's Cowl"
	},
	[2320] = {
		id = 49,
		name = "Dream Catcher"
	},
	[2573] = {
		id = 98,
		name = "Default"
	},
	[2303] = {
		id = 33,
		name = "Nobility Sign"
	},
	[5602] = {
		id = 17,
		name = "Two-Handed Sword"
	},
	[2317] = {
		id = 46,
		name = "Ritualistic Headdress"
	},
	[5932] = {
		id = 191,
		name = "Trailblazer's Hat"
	},
	[2816] = {
		id = 172,
		name = "Fear's Edge"
	},
	[2343] = {
		id = 68,
		name = "Powerhold"
	},
	[2824] = {
		id = 170,
		name = "Royal Rapier"
	},
	[2765] = {
		id = 158,
		name = "Default"
	},
	[2741] = {
		id = 148,
		name = "Intact Arms"
	},
	[5773] = {
		id = 23,
		name = "Knight's Helmet"
	},
	[2725] = {
		id = 136,
		name = "Dream Catcher"
	},
	[2823] = {
		id = 169,
		name = "Brighthold"
	},
	[2822] = {
		id = 168,
		name = "Default"
	},
	[5965] = {
		id = 193,
		name = "Night's Crest"
	},
	[2693] = {
		id = 121,
		name = "Powerhold"
	},
	[5857] = {
		id = 181,
		name = "Trailblazer's Hat"
	},
	[2840] = {
		id = 167,
		name = "Cavalier's Beret"
	},
	[2821] = {
		id = 166,
		name = "Nobility Sign"
	},
	[2820] = {
		id = 165,
		name = "Wanderer's Cap"
	},
	[2670] = {
		id = 110,
		name = "Iron mask"
	},
	[2819] = {
		id = 164,
		name = "Lucky Hat"
	},
	[2818] = {
		id = 163,
		name = "Default"
	},
	[2817] = {
		id = 16,
		name = "Spiritual"
	},
	[5906] = {
		id = 188,
		name = "Ramshead Axe"
	},
	[2332] = {
		id = 58,
		name = "Serrated Blades"
	},
	[5774] = {
		id = 24,
		name = "Bestial Maw"
	},
	[2353] = {
		id = 77,
		name = "Intact Haircut"
	},
	[2345] = {
		id = 70,
		name = "Default"
	},
	[2582] = {
		id = 105,
		name = "Wolfsfang Bow"
	},
	[2272] = {
		id = 5,
		name = "Wyrmskull Visage"
	},
	[2280] = {
		id = 12,
		name = "Elven Haircut"
	},
	[2288] = {
		id = 20,
		name = "Wolfsfang Bow"
	},
	[2305] = {
		id = 35,
		name = "Wanderer's Cap"
	},
	[2282] = {
		id = 14,
		name = "Dashing Headgear"
	},
	[2700] = {
		id = 128,
		name = "Demonskull staff"
	},
	[2295] = {
		id = 31,
		name = "Draconic Arms"
	},
	[5913] = {
		id = 187,
		name = "Bull's Fury"
	},
	[2335] = {
		id = 61,
		name = "Abyssal Blades"
	},
	[2758] = {
		id = 146,
		name = "Sanctified Adorning"
	},
	[2766] = {
		id = 159,
		name = "Skullsplitter Axe"
	},
	[2742] = {
		id = 149,
		name = "Lustrous Protection"
	},
	[5775] = {
		id = 25,
		name = "Iceguard"
	},
	[2726] = {
		id = 135,
		name = "Default"
	},
	[2734] = {
		id = 14,
		name = "Holy"
	},
	[2339] = {
		id = 64,
		name = "Default"
	},
	[2718] = {
		id = 132,
		name = "Bone Mask"
	},
	[2694] = {
		id = 122,
		name = "Bright Robes"
	},
	[2301] = {
		id = 4,
		name = "Spiritual"
	},
	[2699] = {
		id = 127,
		name = "Igneas Ice Staff"
	},
	[2338] = {
		id = 7,
		name = "Wizard"
	},
	[2287] = {
		id = 19,
		name = "Drakebane"
	},
	[2671] = {
		id = 111,
		name = "Dark Shroud"
	},
	[2286] = {
		id = 18,
		name = "Elderbark Bow"
	},
	[2319] = {
		id = 48,
		name = "Default"
	},
	[2631] = {
		id = 87,
		name = "Relic of Light"
	},
	[2294] = {
		id = 30,
		name = "Snowfall Endurer"
	},
	[5776] = {
		id = 26,
		name = "Draconic Crown"
	},
	[2362] = {
		id = 86,
		name = "Pristine Relic"
	},
	[2354] = {
		id = 78,
		name = "Bright Tiara"
	},
	[2346] = {
		id = 71,
		name = "Crystal Eye Staff"
	},
	[2583] = {
		id = 106,
		name = "Arcana Bow"
	},
	[2273] = {
		id = 6,
		name = "Default"
	},
	[2322] = {
		id = 51,
		name = "Ravensong Enchanter"
	},
	[2575] = {
		id = 100,
		name = "Marksman Hat"
	},
	[2306] = {
		id = 36,
		name = "Cavalier's Hat"
	},
	[2815] = {
		id = 171,
		name = "Bloodletter"
	},
	[2716] = {
		id = 131,
		name = "Living Thorns"
	},
	[5920] = {
		id = 186,
		name = "Ramshead Axe"
	},
	[2715] = {
		id = 130,
		name = "Strange Garb"
	},
	[2717] = {
		id = 129,
		name = "Default"
	},
	[2714] = {
		id = 13,
		name = "Witchcraft"
	},
	[2767] = {
		id = 160,
		name = "Ornate Waraxe"
	},
	[2743] = {
		id = 150,
		name = "Brightstar"
	},
	[2698] = {
		id = 126,
		name = "Light's Catalyst"
	},
	[2340] = {
		id = 65,
		name = "Not-so-Magical Hat"
	},
	[2735] = {
		id = 141,
		name = "Default"
	},
	[2289] = {
		id = 21,
		name = "Arcana Bow"
	},
	[2719] = {
		id = 133,
		name = "Ritualistic Headdress"
	},
	[2695] = {
		id = 123,
		name = "Default"
	},
	[2361] = {
		id = 85,
		name = "Brightstar"
	},
	[2672] = {
		id = 115,
		name = "Hidden Blades"
	},
	[2284] = {
		id = 16,
		name = "Default"
	},
	[5937] = {
		id = 192,
		name = "Exorcist's Saber"
	},
	[2667] = {
		id = 107,
		name = "Default"
	},
	[2318] = {
		id = 47,
		name = "Ravencloth"
	},
	[2613] = {
		id = 97,
		name = "Draconic Arms"
	},
	[2321] = {
		id = 50,
		name = "Skulls of Possession"
	},
	[5858] = {
		id = 182,
		name = "Exorcist's Saber"
	},
	[2608] = {
		id = 9,
		name = "Protection"
	},
	[2315] = {
		id = 44,
		name = "Living thorns"
	},
	[2355] = {
		id = 79,
		name = "Dawn's Guider"
	},
	[2347] = {
		id = 72,
		name = "Wildfire Staff"
	},
	[2576] = {
		id = 62,
		name = "Dashing Headgear"
	},
	[2331] = {
		id = 57,
		name = "Default"
	},
	[2323] = {
		id = 197,
		name = "Livingthorn Staff"
	},
	[2290] = {
		id = 3,
		name = "Protection"
	},
	[2307] = {
		id = 37,
		name = "Default"
	},
	[2314] = {
		id = 43,
		name = "Strange Garb"
	},
	[2313] = {
		id = 42,
		name = "Default"
	},
	[2312] = {
		id = 5,
		name = "Witchcraft"
	},
	[2768] = {
		id = 161,
		name = "Darksteel Axe"
	},
	[2572] = {
		id = 10,
		name = "Archer"
	},
	[2304] = {
		id = 34,
		name = "Lucky Hat"
	},
	[2760] = {
		id = 15,
		name = "Warfare"
	},
	[2736] = {
		id = 142,
		name = "Intact Haircut"
	},
	[2744] = {
		id = 151,
		name = "Pristine Relic"
	},
	[2720] = {
		id = 134,
		name = "Ravencloth"
	},
	[2293] = {
		id = 29,
		name = "Bandit Breaker"
	},
	[2291] = {
		id = 27,
		name = "Golden Protector"
	},
	[2329] = {
		id = 55,
		name = "Iron mask"
	},
	[2688] = {
		id = 12,
		name = "Wizard"
	},
	[2696] = {
		id = 124,
		name = "Crystal Eye Staff"
	},
	[2673] = {
		id = 114,
		name = "Curved Blades"
	},
	[2279] = {
		id = 11,
		name = "Default"
	},
	[2271] = {
		id = 4,
		name = "Thergardian Helmet"
	},
	[5772] = {
		id = 22,
		name = "Winged Protector"
	},
	[5601] = {
		id = 183,
		name = "Default"
	},
	[2281] = {
		id = 13,
		name = "Marksman Hat"
	},
	[2267] = {
		id = 1,
		name = "Warfare"
	},
	[2311] = {
		id = 41,
		name = "Fear's Edge"
	},
	[2609] = {
		id = 93,
		name = "Golden Protector"
	},
	[2283] = {
		id = 15,
		name = "Trapper Hood"
	},
	[2356] = {
		id = 80,
		name = "Blessed Hood"
	},
	[2348] = {
		id = 73,
		name = "Light's Catalyst"
	},
	[2577] = {
		id = 63,
		name = "Trapper Hood"
	},
	[2275] = {
		id = 8,
		name = "Ornate Waraxe"
	},
	[2324] = {
		id = 198,
		name = "Hex Staff"
	},
	[2316] = {
		id = 45,
		name = "Bone Crown"
	},
	[2308] = {
		id = 38,
		name = "Brighthold"
	},
	[2326] = {
		id = 52,
		name = "Default"
	},
	[5940] = {
		id = 180,
		name = "Default"
	},
	[2330] = {
		id = 56,
		name = "Dark Shroud"
	},
	[2769] = {
		id = 162,
		name = "Ominous Axe"
	},
	[2333] = {
		id = 59,
		name = "Curved Blades"
	},
	[2334] = {
		id = 60,
		name = "Hidden Blades"
	},
	[2761] = {
		id = 154,
		name = "Dwarven Braiding"
	},
	[2737] = {
		id = 143,
		name = "Bright Tiara"
	},
	[2745] = {
		id = 152,
		name = "Relic of Light"
	},
	[2721] = {
		id = 140,
		name = "Hex Staff"
	},
	[2270] = {
		id = 3,
		name = "Ornamental Helmet"
	},
	[5794] = {
		id = 177,
		name = "Default"
	},
	[2341] = {
		id = 66,
		name = "Starseeker Hat"
	},
	[2689] = {
		id = 117,
		name = "Default"
	},
	[2697] = {
		id = 125,
		name = "Wildfire Staff"
	},
	[2674] = {
		id = 116,
		name = "Abyssal Blades"
	},
	[5893] = {
		id = 189,
		name = "Wanderer's Veil"
	},
	[2574] = {
		id = 99,
		name = "Elven Haircut"
	},
	[2666] = {
		id = 11,
		name = "Shadow"
	},
	[5603] = {
		id = 184,
		name = "Default"
	},
	[2269] = {
		id = 2,
		name = "Dwarven Beard"
	},
	[2578] = {
		id = 101,
		name = "Default"
	},
	[2579] = {
		id = 102,
		name = "Curved Bow"
	},
	[2610] = {
		id = 94,
		name = "Magical Sigils"
	},
	[6174] = {
		id = 18,
		name = "Two-Handed Sword"
	},
	[6153] = {
		id = 200,
		name = "Rebel Punk"
	},
	[6154] = {
		id = 201,
		name = "Aspiring Warrior"
	},
	[6155] = {
		id = 202,
		name = "Esteemed Adventurer"
	},
	[6156] = {
		id = 203,
		name = "General's Cut"
	},
	[6157] = {
		id = 204,
		name = "Headhunter"
	},
	[6158] = {
		id = 205,
		name = "Crimson Claymore"
	},
	[6159] = {
		id = 206,
		name = "Strifeblade"
	},
	[6160] = {
		id = 207,
		name = "Crescent Sun"
	},
	[6161] = {
		id = 208,
		name = "Dreadbane Reaver"
	},
	[6162] = {
		id = 209,
		name = "Dragonfang"
	},
	[6199] = {
		id = 210,
		name = "Default"
	},
	[6200] = {
		id = 211,
		name = "Rebel Punk"
	},
	[6201] = {
		id = 212,
		name = "Aspiring Warrior"
	},
	[6202] = {
		id = 213,
		name = "Esteemed Adventurer"
	},
	[6203] = {
		id = 214,
		name = "Warmaiden"
	},
	[6204] = {
		id = 215,
		name = "Headhunter"
	},
	[6229] = {
		id = 216,
		name = "Default"
	},
	[6230] = {
		id = 217,
		name = "Crimson Claymore"
	},
	[6231] = {
		id = 218,
		name = "Strifeblade"
	},
	[6232] = {
		id = 219,
		name = "Crescent Sun"
	},
	[6233] = {
		id = 220,
		name = "Dreadbane Reaver"
	},
	[6234] = {
		id = 221,
		name = "Dragonfang"
	}
}
WagonParts = {
	[3012] = {
		weight = 100,
		tier = 1,
		capacity = 1,
		name = "Old Wagon",
		health = 2100
	},
	[5304] = {
		weight = 110,
		tier = 2,
		capacity = 2,
		name = "Small Wagon",
		health = 2800
	},
	[3015] = {
		weight = 120,
		tier = 3,
		capacity = 3,
		name = "Common Wagon",
		health = 3500
	},
	[5301] = {
		weight = 130,
		tier = 4,
		capacity = 4,
		name = "Medium Wagon",
		health = 4500
	},
	[3018] = {
		weight = 140,
		tier = 5,
		capacity = 5,
		name = "Deluxe Wagon",
		health = 6000
	}
}
MoaEquipment = {
	[5565] = {
		name = "Basic Barding",
		description = "Uncomplicated yet dependable, crafted for comfort and control, ensuring a smooth ride for both rider and Moa. No additional effect.",
		type = "moa equipment"
	},
	[5520] = {
		name = "Simple Barding",
		description = "A humble moa gear which concedes minor protection and mobility to the wearer. Increases moa speed by 4, moa strength by 5 and reduces the chance of being dismounted by 5%.",
		type = "moa equipment"
	},
	[5522] = {
		name = "Composed Barding",
		description = "Moa gear which gives regular benefits despite its ordinary design. Increases moa speed by 7, moa strength by 8 and reduces the chance of being dismounted by 10%.",
		type = "moa equipment"
	},
	[5527] = {
		name = "Advanced Barding",
		description = "Though not extraordinary, this moa gear was clearly crafted by skilled hands. Increases moa speed by 10, moa strength by 12 and reduces the chance of being dismounted by 15%.",
		type = "moa equipment"
	},
	[5532] = {
		name = "Artisan Barding",
		description = "Clearly designed by very capable hands, this moa gear provides balanced benefits to its wearer. Increases moa speed by 14, moa strength by 18 and reduces the chance of being dismounted by 20%.",
		type = "moa equipment"
	},
	[5537] = {
		name = "Superior Barding",
		description = "Top-notch moa gear crafted by a sound professional using high quality materials. Increases moa speed by 20, moa strength by 23 and reduces the chance of being dismounted by 25%.",
		type = "moa equipment"
	},
	[6076] = {
		name = "War Barding",
		description = "Giving enough protection and mobility for the most extreme situations, this gear could easily be used by someone riding straight to the battlefield. Increases moa speed by 26, moa strength by 28 and reduces the chance of being dismounted by 40%.",
		type = "moa equipment"
	},
	[6074] = {
		name = "Explorer Barding",
		description = "Ideal for anyone venturing into uncharted territory, this gear will never leave the mounter helpless while still providing superb mobility. Increases moa speed by 35 moa strength by 26 and reduces the chance of being dismounted by 28%.",
		type = "moa equipment"
	},
	[6075] = {
		name = "Professional Barding",
		description = "An indispensable asset for anyone carrying out trading duties, this gear enhances the moa's weight carrying capabilities. Increases moa speed by 28, moa strength by 37 and reduces the chance of being dismounted by 31%.",
		type = "moa equipment"
	}
}
MoaTraits = {
	[TRAIT_NONE] = {
		description = "",
		name = "None"
	},
	[TRAIT_NIGHTWALKER] = {
		description = "This mount was born with nocturnal habits, gaining +20 speed and +10 strength during nighttime.",
		name = "Nightwalker"
	},
	[TRAIT_SUNSTRIDER] = {
		description = "This mount was born with a passion for sunlight, gaining +20 speed and +10 strength during daytime.",
		name = "Sunstrider"
	},
	[TRAIT_WAYFARER] = {
		description = "This mount was born with a natural talent for treading civilized paths, gaining +10 speed and +10 strength when traveling main roads.",
		name = "Wayfarer"
	},
	[TRAIT_SAND_WANDERER] = {
		description = "This mount was born with desertic ascendance, gaining +25 speed and +10 strength when traveling through desertic terrain.",
		name = "Sand Wanderer"
	},
	[TRAIT_PLAINS_RIDER] = {
		description = "This mount was born with a joyful love for lush grasslands, gaining +25 speed and +10 strength when traveling through grasslands.",
		name = "Plains Rider"
	},
	[TRAIT_KING_OF_THE_TUNDRA] = {
		description = "This mount was born with glacial ascendance, gaining +25 speed and +10 strength when traveling through glacial ambience.",
		name = "King of the Tundra"
	},
	[TRAIT_WARBROOD] = {
		description = "This mount was born with a superb constitution, giving its mounter -20% chance of being dismounted when receiving damage.",
		name = "Warbrood"
	},
	[TRAIT_CAVE_DELVER] = {
		description = "This mount was born with the ability to enter and wander through underground ambience.",
		name = "Cave Delver"
	},
	[TRAIT_PATHFINDER] = {
		description = "This mount was born as a natural explorer, gaining +7 speed and +5 strength when walking anywhere in the world.",
		name = "Pathfinder"
	}
}
FishToSlice = {
	[28907] = 40832,
	[28905] = 40829,
	[28925] = 40825,
	[28924] = 40831,
	[28919] = 40833,
	[28904] = 40829,
	[28918] = 40827,
	[28920] = 40828,
	[28921] = 40831,
	[28911] = 40830,
	[28922] = 40828,
	[28913] = 40834,
	[28914] = 40826,
	[28926] = 40825,
	[28910] = 40826,
	[28912] = 40833,
	[28916] = 40833,
	[28917] = 40834,
	[28908] = 40830,
	[28915] = 40827,
	[28906] = 40832
}
FishSlices = {
	[40832] = {
		description = "Vibrant orange scales with a subtle oceanic aroma, perfect for adding a unique zest to any dish.",
		name = "Orange Scales",
		id = 40832
	},
	[40829] = {
		description = "Small, soft, and bursting with a salty, oceanic flavor. Often used as a garnish or added to sauces.",
		name = "Fish Roe",
		id = 40829
	},
	[40830] = {
		description = "This tough, leathery skin is covered in small, iridescent scales and has a slimy texture.",
		name = "Fish Skin",
		id = 40830
	},
	[40834] = {
		description = "Delicate, buttery eggs with a mild flavor, perfect for enhancing the taste of seafood.",
		name = "Yellow Fish Roe",
		id = 40834
	},
	[40826] = {
		description = "These eerie orbs can be used in divination, or ground into a fine powder for use in potions and elixirs.",
		name = "Fish Eye",
		id = 40826
	},
	[40833] = {
		description = "A rare delicacy prized for its brilliant red hue and subtle oceanic flavor. A must-have for any upscale dining",
		name = "Red Fish Roe",
		id = 40833
	},
	[40827] = {
		description = "A slimy and pungent organ that can be used in alchemical preparations. It is said to have powerful effects on the mind and body.",
		name = "Fish Liver",
		id = 40827
	},
	[40828] = {
		description = "Rich in nutrients, fish liver can be distilled into a potent oil for medicinal purposes.",
		name = "Fish Oil",
		id = 40828
	},
	[40831] = {
		description = "This bioluminescent organ can be used as a light source or crushed into a fine powder for magical effects.",
		name = "Luminous Sack",
		id = 40831
	},
	[40825] = {
		description = "Plump, glossy eggs bursting with umami flavor and a velvety texture, prized by chefs for their exceptional quality.",
		name = "Black Fish Roe",
		id = 40825
	}
}
CompassSize = {
	7,
	17,
	31,
	51,
	71,
	101,
	151,
	201,
	251
}
CompassDefaultSize = CompassSize[5]
Waypoints = {
	{
		level = 0,
		name = "Firslight",
		offset = {
			y = 260,
			x = 497
		},
		position = {
			y = 4999,
			x = 6032,
			z = 4
		}
	},
	{
		level = 0,
		name = "Saint Alsek",
		offset = {
			y = 108,
			x = 90
		},
		position = {
			y = 4185,
			x = 4132,
			z = 6
		}
	},
	{
		level = 0,
		name = "Ravencrest",
		offset = {
			y = 285,
			x = 310
		},
		position = {
			y = 5092,
			x = 5132,
			z = 6
		}
	},
	{
		level = 8,
		name = "North Glademire",
		offset = {
			y = 233,
			x = 335
		},
		position = {
			y = 4853,
			x = 5239,
			z = 5
		}
	},
	{
		level = 10,
		name = "Rohna Woods",
		offset = {
			y = 235,
			x = 270
		},
		position = {
			y = 4880,
			x = 4953,
			z = 7
		}
	},
	{
		level = 45,
		name = "Forsaken Mountains",
		offset = {
			y = 225,
			x = 390
		},
		position = {
			y = 4851,
			x = 5473,
			z = 6
		}
	},
	{
		level = 20,
		name = "Sajecho Island",
		offset = {
			y = 275,
			x = 225
		},
		position = {
			y = 5064,
			x = 4737,
			z = 6
		}
	},
	{
		level = 30,
		name = "Harbor Island",
		offset = {
			y = 290,
			x = 50
		},
		position = {
			y = 5116,
			x = 3962,
			z = 4
		}
	},
	{
		level = 35,
		name = "Hadarak Desert",
		offset = {
			y = 420,
			x = 410
		},
		position = {
			y = 5701,
			x = 5567,
			z = 5
		}
	},
	{
		level = 45,
		name = "Gilead Island",
		offset = {
			y = 455,
			x = 135
		},
		position = {
			y = 5865,
			x = 4356,
			z = 7
		}
	},
	{
		level = 45,
		name = "Glaceforde",
		offset = {
			y = 110,
			x = 193
		},
		position = {
			y = 4381,
			x = 4604,
			z = 6
		}
	},
	{
		level = 30,
		name = "Zephyr Vale",
		offset = {
			y = 310,
			x = 475
		},
		position = {
			y = 5236,
			x = 5845,
			z = 6
		}
	},
	{
		level = 45,
		name = "Crowhollow Bog",
		offset = {
			y = 250,
			x = 440
		},
		position = {
			y = 4947,
			x = 5718,
			z = 6
		}
	},
	{
		level = 55,
		name = "Fields of Despair",
		offset = {
			y = 158,
			x = 495
		},
		position = {
			y = 4612,
			x = 6000,
			z = 10
		}
	},
	{
		level = 74,
		name = "The Blotch",
		offset = {
			y = 188,
			x = 500
		},
		position = {
			y = 4695,
			x = 5998,
			z = 7
		}
	},
	{
		level = 55,
		name = "Elder Coast",
		offset = {
			y = 110,
			x = 193
		},
		position = {
			y = 4656,
			x = 5242,
			z = 6
		}
	},
	{
		level = 60,
		name = "Frost Steppes",
		offset = {
			y = 110,
			x = 193
		},
		position = {
			y = 4157,
			x = 5952,
			z = 4
		}
	}
}
ContainerTypeInventory = 0
ContainerTypePouch = 1
ContainerTypeDepot = 2
ContainerTypeHouseDepot = 3
ContainerTypeInbox = 4
DoorsIds = {
	1628,
	1629,
	1630,
	1630,
	1631,
	1632,
	1633,
	1633,
	1638,
	1639,
	1639,
	1640,
	1641,
	1642,
	1644,
	1645,
	1646,
	1647,
	1648,
	1649,
	1650,
	1651,
	1652,
	1652,
	1653,
	1654,
	1655,
	1655,
	1656,
	1657,
	1658,
	1659,
	1668,
	1669,
	1670,
	1670,
	1671,
	1672,
	1673,
	1673,
	1682,
	1683,
	1684,
	1684,
	1685,
	1686,
	1691,
	1692,
	1693,
	1693,
	1694,
	1695,
	2177,
	2178,
	2179,
	2180,
	4911,
	4911,
	4912,
	4913,
	4914,
	4914,
	5006,
	5007,
	5082,
	5083,
	5084,
	5085,
	5097,
	5098,
	5099,
	5099,
	5100,
	5101,
	5106,
	5107,
	5108,
	5108,
	5109,
	5110,
	5115,
	5116,
	5117,
	5117,
	5118,
	5119,
	5124,
	5125,
	5126,
	5126,
	5127,
	5128,
	5133,
	5134,
	5135,
	5135,
	5136,
	5137,
	5138,
	5138,
	5139,
	5140,
	5141,
	5141,
	5142,
	5143,
	5144,
	5144,
	5277,
	5278,
	5279,
	5279,
	5280,
	5281,
	5282,
	5282,
	5283,
	5284,
	5285,
	5286,
	5514,
	5515,
	5516,
	5517,
	5732,
	5733,
	5734,
	5734,
	5735,
	5736,
	5737,
	5737,
	6191,
	6192,
	6193,
	6193,
	6194,
	6195,
	6196,
	6196,
	6197,
	6198,
	6199,
	6200,
	6248,
	6249,
	6250,
	6250,
	6251,
	6252,
	6253,
	6253,
	6254,
	6255,
	6256,
	6257,
	6795,
	6796,
	6797,
	6798,
	6799,
	6800,
	6801,
	6802,
	6891,
	6892,
	6893,
	6893,
	6894,
	6895,
	6900,
	6901,
	6902,
	6902,
	6903,
	6904,
	7033,
	7034,
	7035,
	7035,
	7036,
	7037,
	7042,
	7043,
	7044,
	7044,
	7045,
	7046,
	7054,
	7055,
	7056,
	7057,
	7711,
	7712,
	7713,
	7713,
	7714,
	7715,
	7716,
	7716,
	7717,
	7718,
	7719,
	7720,
	8249,
	8250,
	8251,
	8251,
	8252,
	8253,
	8254,
	8254,
	8255,
	8256,
	8257,
	8258,
	8351,
	8352,
	8353,
	8353,
	8354,
	8355,
	8356,
	8356,
	8357,
	8358,
	8359,
	8360,
	9351,
	9352,
	9353,
	9353,
	9354,
	9355,
	9356,
	9356,
	9357,
	9358,
	9359,
	9360,
	9551,
	9552,
	9553,
	9553,
	9554,
	9555,
	9560,
	9561,
	9562,
	9562,
	9563,
	9564,
	9858,
	9859,
	9860,
	9860,
	9863,
	9864,
	9865,
	9866,
	9867,
	9868,
	9869,
	9869,
	9872,
	9873,
	9874,
	9875,
	11136,
	11137,
	11138,
	11138,
	11139,
	11140,
	11141,
	11142,
	11143,
	11144,
	11145,
	11145,
	11146,
	11147,
	11148,
	11149,
	11232,
	11233,
	11234,
	11234,
	11237,
	11238,
	11239,
	11240,
	11241,
	11242,
	11243,
	11243,
	11246,
	11247,
	11248,
	11249,
	12033,
	12034,
	12035,
	12036,
	13135,
	13136,
	13137,
	13137,
	15687,
	15688,
	15890,
	15891,
	15892,
	15893,
	17560,
	17561,
	17562,
	17562,
	17563,
	17564,
	17565,
	17566,
	17567,
	17568,
	17569,
	17570,
	17571,
	17571,
	17572,
	17573,
	17574,
	17575,
	17576,
	17577,
	17700,
	17701,
	17702,
	17702,
	17703,
	17704,
	17705,
	17706,
	17707,
	17708,
	17709,
	17710,
	17711,
	17711,
	17712,
	17713,
	17714,
	17715,
	17716,
	17717,
	17993,
	17994,
	17995,
	17995,
	17996,
	17997,
	17998,
	17999,
	18000,
	18001,
	18002,
	18003,
	18004,
	18004,
	18005,
	18006,
	18007,
	18008,
	18009,
	18010,
	20443,
	20444,
	20445,
	20445,
	20452,
	20453,
	20454,
	20454,
	31155,
	31156,
	31157,
	31158,
	31159,
	31160,
	31161,
	31162,
	31163,
	31164,
	31165,
	31166,
	31167,
	31168,
	31169,
	31170,
	31171,
	31172,
	31173,
	31174,
	31992,
	31993,
	31994,
	31995,
	33081,
	33082,
	33083,
	33084
}
CONDITION_NONE = 0
CONDITION_SPELL = 1
CONDITION_PHYSICAL = 2
CONDITION_HASTE = 4
CONDITION_PARALYZE = 8
CONDITION_OUTFIT = 16
CONDITION_INVISIBLE = 32
CONDITION_LIGHT = 64
CONDITION_BLIND = 128
CONDITION_INFIGHT = 256
CONDITION_DRUNK = 512
CONDITION_REGENERATION = 1024
CONDITION_MUTED = 2048
CONDITION_CHANNELMUTEDTICKS = 4096
CONDITION_YELLTICKS = 8192
CONDITION_ATTRIBUTES = 16384
CONDITION_PACIFIED = 32768
CONDITION_STUN = 65536
CONDITION_SNARE = 131072
CONDITION_INPVP = 262144
CONDITION_MANADRAIN = 524288
STAT_MAXHITPOINTS = 0
STAT_MAXMANAPOINTS = 1
STAT_ATTACKSPEED = 2
STAT_ATTACK = 3
STAT_PHYSICALATTACK = 4
STAT_MAGICATTACK = 5
STAT_DEFENSE = 6
STAT_PHYSICALDEFENSE = 7
STAT_MAGICDEFENSE = 8
STAT_MIGHT = 9
STAT_DEXTERITY = 10
STAT_HASTE = 11
STAT_INTELLIGENCE = 12
STAT_WISDOM = 13
STAT_SPELLCOOLDOWN = 14
STAT_RANGEBONUS = 15
STAT_HEAL = 16
STAT_SPEED = 17
STAT_MANA_REGENERATION = 18
STAT_CRITICAL_CHANCE = 19
STAT_CRITICAL_DAMAGE = 20
STAT_HEALTH_HEALING_PERCENT = 21
STAT_VITALITY = 22
STAT_HEALTH_REGENERATION = 23
MOUNTS_PLAYER_LOOK = {
	[2610] = 2621,
	[2824] = 2825,
	[2583] = 2595,
	[2820] = 2831,
	[5603] = 5600,
	[2666] = 2677,
	[2579] = 2591,
	[5893] = 5892,
	[2674] = 2685,
	[2697] = 2710,
	[2689] = 2702,
	[2286] = 2494,
	[5739] = 5733,
	[2311] = 2508,
	[2721] = 2810,
	[2745] = 2757,
	[2737] = 2749,
	[2761] = 2771,
	[2285] = 2493,
	[2822] = 2833,
	[2769] = 2779,
	[2303] = 2500,
	[5940] = 5942,
	[2294] = 2646,
	[2308] = 2505,
	[2291] = 2448,
	[2283] = 2491,
	[2332] = 2520,
	[2340] = 2636,
	[2348] = 2644,
	[2356] = 2527,
	[2284] = 2492,
	[2609] = 2620,
	[5741] = 5735,
	[2281] = 2489,
	[2279] = 2487,
	[5601] = 5598,
	[2289] = 2497,
	[5794] = 5793,
	[2329] = 2513,
	[2673] = 2684,
	[2696] = 2709,
	[2688] = 2701,
	[2577] = 2589,
	[2580] = 2592,
	[2817] = 2828,
	[2720] = 2733,
	[2744] = 2756,
	[2736] = 2748,
	[2760] = 2770,
	[2576] = 2588,
	[2698] = 2711,
	[2768] = 2778,
	[2700] = 2713,
	[2288] = 2496,
	[2613] = 2624,
	[2307] = 2504,
	[2290] = 2443,
	[2282] = 2490,
	[2331] = 2521,
	[2339] = 2634,
	[2347] = 2643,
	[2355] = 2526,
	[2821] = 2832,
	[2608] = 2619,
	[5858] = 5860,
	[2816] = 2827,
	[2743] = 2755,
	[2293] = 2450,
	[2360] = 2531,
	[5937] = 5936,
	[2361] = 2532,
	[2672] = 2683,
	[2714] = 2727,
	[2695] = 2708,
	[2719] = 2732,
	[2715] = 2728,
	[2735] = 2747,
	[2716] = 2729,
	[2717] = 2730,
	[5777] = 5771,
	[5857] = 5859,
	[2818] = 2829,
	[2724] = 2813,
	[2310] = 2507,
	[5920] = 5918,
	[6203] = 6197,
	[2815] = 2826,
	[2306] = 2503,
	[2575] = 2587,
	[2840] = 2841,
	[2330] = 2514,
	[2338] = 2633,
	[2346] = 2641,
	[2354] = 2525,
	[2362] = 2533,
	[5776] = 5770,
	[2314] = 2536,
	[2631] = 2534,
	[2315] = 2538,
	[2316] = 2540,
	[2671] = 2682,
	[6202] = 6196,
	[2318] = 2539,
	[6154] = 6139,
	[2320] = 2547,
	[2694] = 2707,
	[2718] = 2731,
	[6234] = 6228,
	[2734] = 2746,
	[2726] = 2809,
	[5775] = 5769,
	[2742] = 2754,
	[2766] = 2776,
	[2758] = 2759,
	[2323] = 2543,
	[2324] = 2542,
	[2267] = 2548,
	[6201] = 6195,
	[2269] = 2550,
	[2305] = 2502,
	[2574] = 2586,
	[2280] = 2488,
	[2823] = 2834,
	[2582] = 2594,
	[2345] = 2640,
	[2353] = 2524,
	[5774] = 5768,
	[2270] = 2551,
	[2271] = 2553,
	[2272] = 2552,
	[5927] = 5925,
	[2273] = 2554,
	[2670] = 2681,
	[6200] = 6194,
	[2275] = 2556,
	[2276] = 2557,
	[2277] = 2558,
	[2693] = 2706,
	[5965] = 5964,
	[6232] = 6226,
	[2578] = 2590,
	[2725] = 2814,
	[5773] = 5767,
	[2741] = 2753,
	[2765] = 2775,
	[5913] = 5911,
	[5952] = 5951,
	[2322] = 2544,
	[5932] = 5931,
	[6199] = 6193,
	[2699] = 2712,
	[2304] = 2501,
	[2295] = 2451,
	[2287] = 2495,
	[2328] = 2512,
	[2581] = 2593,
	[2344] = 2639,
	[2352] = 2523,
	[5772] = 5766,
	[5788] = 5787,
	[2573] = 2585,
	[5906] = 5904,
	[5602] = 5599,
	[2278] = 2486,
	[2669] = 2680,
	[6153] = 6138,
	[5899] = 5898,
	[2319] = 2546,
	[5740] = 5734,
	[2692] = 2705,
	[5963] = 5962,
	[6230] = 6224,
	[6156] = 6141,
	[5038] = 5036,
	[6157] = 6142,
	[2740] = 2752,
	[2764] = 2774,
	[2333] = 2518,
	[2780] = 2781,
	[6158] = 6143,
	[6159] = 6144,
	[6160] = 6145,
	[6161] = 6146,
	[2302] = 2499,
	[2572] = 2584,
	[2327] = 2511,
	[2335] = 2519,
	[2343] = 2638,
	[2351] = 2522,
	[2359] = 2530,
	[6162] = 6147,
	[2612] = 2623,
	[6174] = 6173,
	[2767] = 2777,
	[2274] = 2555,
	[2268] = 2549,
	[2668] = 2679,
	[2317] = 2541,
	[2313] = 2537,
	[2676] = 2687,
	[5738] = 5732,
	[2691] = 2704,
	[5961] = 5960,
	[6204] = 6198,
	[6229] = 6223,
	[2723] = 2812,
	[6155] = 6140,
	[2739] = 2751,
	[2763] = 2773,
	[6231] = 6225,
	[2312] = 2535,
	[6233] = 6227,
	[2321] = 2545,
	[2301] = 2498,
	[5737] = 5731,
	[2326] = 2510,
	[2334] = 2517,
	[2342] = 2637,
	[2350] = 2645,
	[2358] = 2529,
	[2611] = 2622,
	[2667] = 2678,
	[2675] = 2686,
	[5736] = 5730,
	[2690] = 2703,
	[5959] = 5958,
	[2722] = 2811,
	[5050] = 5048,
	[2738] = 2750,
	[2762] = 2772,
	[2309] = 2506,
	[2292] = 2449,
	[2325] = 2509,
	[2819] = 2830,
	[2341] = 2635,
	[2349] = 2642,
	[2357] = 2528
}

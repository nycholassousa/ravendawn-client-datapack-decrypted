-- chunkname: @/modules/game_guild/config.lua

GUILD_FOCUS_PVE = 1
GUILD_FOCUS_PVP = 2
GUILD_FOCUS_PVPVE = 3
possibleFocuses = {
	[GUILD_FOCUS_PVE] = "PvE",
	[GUILD_FOCUS_PVP] = "PvP",
	[GUILD_FOCUS_PVPVE] = "PvE/PvP"
}
focusNameToIndex = {
	PvE = GUILD_FOCUS_PVE,
	PvP = GUILD_FOCUS_PVP,
	["PvE/PvP"] = GUILD_FOCUS_PVPVE
}
miscNameToIndex = {
	["Hide Full Guilds"] = 1,
	["Applied Only"] = 2
}
focusToIcon = {
	[GUILD_FOCUS_PVE] = "focus_pve",
	[GUILD_FOCUS_PVP] = "focus_pvp",
	[GUILD_FOCUS_PVPVE] = "focus_pvpve"
}
guildLogoBackgroundAmount = 10
guildLogoIconAmount = 400
joinGuildAmountPerPage = 7
minLockDuration = 500
logoImageFileFormat = "%03d"
overviewOrderType = {
	[1] = "name",
	[2] = "rank"
}
applicationOrderType = {
	[1] = "name"
}
membersOrderType = {
	"name",
	"rank",
	nil,
	nil,
	"last_login"
}
possibleLanguages = {
	Português = true,
	Polski = true,
	English = true,
	Español = true
}
languageToIndex = {
	Português = 3,
	Polski = 2,
	English = 1,
	Español = 4
}
indexToLanguage = {
	"English",
	"Polski",
	"Portugu\xEAs",
	"Espa\xF1ol"
}
languageToFlag = {
	Português = "br",
	Polski = "pl",
	English = "us",
	Español = "es"
}
indexToFocus = {
	"PvE",
	"PvP",
	"PvE/PvP"
}
filtersOrder = {
	"Language",
	"Focus ",
	"Misc"
}
filters = {
	Language = indexToLanguage,
	["Focus "] = possibleFocuses,
	Misc = {
		"Hide Full Guilds",
		"Applied Only"
	}
}
createRequirements = {
	level = 20,
	premium = true,
	silver = 100000
}
minGuildNameLength = 3
maxGuildNameLength = 20
maxGuildDescriptionLength = 140
GUILD_RANK_LEADER = 1
GUILD_RANK_VICELEADER = 2
GUILD_RANK_COMMANDER = 3
GUILD_RANK_OFFICER = 4
GUILD_RANK_MEMBER = 5
GUILD_RANK_INITIATE = 6
guildRankToName = {
	[GUILD_RANK_LEADER] = "Leader",
	[GUILD_RANK_VICELEADER] = "Vice Leader",
	[GUILD_RANK_COMMANDER] = "Commander",
	[GUILD_RANK_OFFICER] = "Officer",
	[GUILD_RANK_MEMBER] = "Member",
	[GUILD_RANK_INITIATE] = "Initiate"
}
guildNameToRank = {
	Leader = GUILD_RANK_LEADER,
	["Vice Leader"] = GUILD_RANK_VICELEADER,
	Commander = GUILD_RANK_COMMANDER,
	Officer = GUILD_RANK_OFFICER,
	Member = GUILD_RANK_MEMBER,
	Initiate = GUILD_RANK_INITIATE
}
guildRankToColor = {
	[GUILD_RANK_LEADER] = "#FEFEC6",
	[GUILD_RANK_VICELEADER] = "#FFA851",
	[GUILD_RANK_COMMANDER] = "#77D463",
	[GUILD_RANK_OFFICER] = "#FF5151",
	[GUILD_RANK_MEMBER] = "#5DA4FB",
	[GUILD_RANK_INITIATE] = "#7E828B"
}
maxSlots = 100
maxMembersIncrement = 5
maxMembersPrice = {
	[25] = 5000,
	[40] = 50000,
	[85] = 450000,
	[70] = 300000,
	[80] = 400000,
	[50] = 100000,
	[65] = 250000,
	[35] = 25000,
	[75] = 350000,
	[60] = 200000,
	[90] = 500000,
	[45] = 75000,
	[95] = 500000,
	[30] = 10000,
	[55] = 150000
}

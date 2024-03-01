-- chunkname: @/modules/game_telegraph/config.lua

opcode = ExtendedIds.Telegraph
folderPath = "/images/game/targetselector/marks/"
completeDelay = 250
tilePixels = 32
TELEGRAPH_CIRCLE = 1
TELEGRAPH_SQUARE = 2
TELEGRAPH_CONE_1_3 = 3
TELEGRAPH_CONE_1_3_5 = 4
defaultBehaviour = 1
infos = {
	[TELEGRAPH_CIRCLE] = {
		behaviour = 1,
		marginPercent = 0.06595744680851064,
		centered = true,
		name = "circle",
		imageWidth = 470,
		imageHeight = 470
	},
	[TELEGRAPH_SQUARE] = {
		behaviour = 3,
		margin = 2,
		creatureDirection = true,
		name = "small_square",
		imageWidth = 198,
		imageHeight = 198,
		directionOffset = 1
	},
	[TELEGRAPH_CONE_1_3] = {
		creatureDirection = true,
		margin = 4,
		name = "cone_1_3",
		imageWidth = 208,
		imageHeight = 144,
		behaviour = 3,
		height = 2,
		width = 3,
		directionOffset = 1
	},
	[TELEGRAPH_CONE_1_3_5] = {
		creatureDirection = true,
		margin = 2,
		name = "cone_1_3_5",
		imageWidth = 328,
		imageHeight = 200,
		behaviour = 3,
		height = 3,
		width = 5,
		directionOffset = 1
	}
}

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
		centered = true,
		marginPercent = 0.06595744680851064,
		name = "circle",
		imageHeight = 470,
		imageWidth = 470,
		behaviour = 1
	},
	[TELEGRAPH_SQUARE] = {
		imageWidth = 198,
		creatureDirection = true,
		name = "small_square",
		imageHeight = 198,
		directionOffset = 1,
		behaviour = 3,
		margin = 2
	},
	[TELEGRAPH_CONE_1_3] = {
		width = 3,
		name = "cone_1_3",
		directionOffset = 1,
		creatureDirection = true,
		margin = 4,
		imageWidth = 208,
		imageHeight = 144,
		behaviour = 3,
		height = 2
	},
	[TELEGRAPH_CONE_1_3_5] = {
		width = 5,
		name = "cone_1_3_5",
		directionOffset = 1,
		creatureDirection = true,
		margin = 2,
		imageWidth = 328,
		imageHeight = 200,
		behaviour = 3,
		height = 3
	}
}

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
		imageWidth = 470,
		imageHeight = 470,
		name = "circle",
		behaviour = 1
	},
	[TELEGRAPH_SQUARE] = {
		creatureDirection = true,
		directionOffset = 1,
		imageWidth = 198,
		imageHeight = 198,
		name = "small_square",
		behaviour = 3,
		margin = 2
	},
	[TELEGRAPH_CONE_1_3] = {
		behaviour = 3,
		directionOffset = 1,
		imageWidth = 208,
		imageHeight = 144,
		height = 2,
		width = 3,
		name = "cone_1_3",
		creatureDirection = true,
		margin = 4
	},
	[TELEGRAPH_CONE_1_3_5] = {
		width = 5,
		directionOffset = 1,
		imageWidth = 328,
		imageHeight = 200,
		height = 3,
		behaviour = 3,
		name = "cone_1_3_5",
		creatureDirection = true,
		margin = 2
	}
}

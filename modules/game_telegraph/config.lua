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
		name = "circle",
		imageWidth = 470,
		imageHeight = 470,
		marginPercent = 0.06595744680851064,
		behaviour = 1,
		centered = true
	},
	[TELEGRAPH_SQUARE] = {
		margin = 2,
		imageWidth = 198,
		imageHeight = 198,
		name = "small_square",
		behaviour = 3,
		directionOffset = 1,
		creatureDirection = true
	},
	[TELEGRAPH_CONE_1_3] = {
		behaviour = 3,
		imageWidth = 208,
		imageHeight = 144,
		height = 2,
		name = "cone_1_3",
		directionOffset = 1,
		width = 3,
		creatureDirection = true,
		margin = 4
	},
	[TELEGRAPH_CONE_1_3_5] = {
		behaviour = 3,
		imageWidth = 328,
		imageHeight = 200,
		height = 3,
		name = "cone_1_3_5",
		directionOffset = 1,
		width = 5,
		creatureDirection = true,
		margin = 2
	}
}

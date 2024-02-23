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
		imageHeight = 470,
		behaviour = 1,
		name = "circle",
		centered = true,
		marginPercent = 0.06595744680851064,
		imageWidth = 470
	},
	[TELEGRAPH_SQUARE] = {
		imageHeight = 198,
		directionOffset = 1,
		behaviour = 3,
		name = "small_square",
		creatureDirection = true,
		margin = 2,
		imageWidth = 198
	},
	[TELEGRAPH_CONE_1_3] = {
		imageHeight = 144,
		name = "cone_1_3",
		behaviour = 3,
		width = 3,
		directionOffset = 1,
		height = 2,
		creatureDirection = true,
		margin = 4,
		imageWidth = 208
	},
	[TELEGRAPH_CONE_1_3_5] = {
		imageHeight = 200,
		name = "cone_1_3_5",
		behaviour = 3,
		width = 5,
		directionOffset = 1,
		height = 3,
		creatureDirection = true,
		margin = 2,
		imageWidth = 328
	}
}

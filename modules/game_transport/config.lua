-- chunkname: @/modules/game_transport/config.lua

subCategoryToOutfitField = {
	cargo = "shipCargo",
	sail = "shipSail",
	cabin = "shipCabin",
	hull = "shipBody",
	equipment = "mountArmor",
	ship_cosmetic = "shipBodyCosmetic",
	mount = {
		"mountBody",
		"mountLightEffect",
		"mountFirstOrnament",
		"mountSecondOrnament"
	},
	mount_cosmetic = {
		"mountBodyCosmetic",
		"mountLightEffectCosmetic",
		"mountFirstOrnamentCosmetic",
		"mountSecondOrnamentCosmetic"
	},
	wagon = {
		"wagonBody",
		"wagonLeftWheel",
		"wagonRightWheel"
	},
	wagon_cosmetic = {
		"wagonBodyCosmetic",
		"wagonLeftWheelCosmetic",
		"wagonRightWheelCosmetic"
	}
}
cosmeticOutfitFields = {
	ship_cosmetic = {
		{
			field = "shipBody",
			main = true
		},
		{
			field = "shipBodyCosmetic"
		},
		{
			field = "shipCabinCosmetic"
		},
		{
			field = "shipSailCosmetic"
		},
		{
			field = "shipCargoCosmetic"
		},
		{
			field = "shipCabin"
		},
		{
			field = "shipSail"
		},
		{
			field = "shipCargo"
		}
	},
	mount_cosmetic = {
		{
			field = "mountBodyCosmetic",
			main = true
		},
		{
			field = "mountLightEffectCosmetic"
		},
		{
			field = "mountArmorCosmetic"
		},
		{
			field = "mountFirstOrnamentCosmetic"
		},
		{
			field = "mountSecondOrnamentCosmetic"
		}
	},
	wagon_cosmetic = {
		{
			field = "wagonBodyCosmetic",
			main = true
		},
		{
			field = "wagonLeftWheelCosmetic"
		},
		{
			field = "wagonRightWheelCosmetic"
		}
	}
}
attributesToChildIds = {
	packCapacity = "tradepacks"
}
bondLevelToExp = {
	1,
	1000,
	4000,
	10000,
	25000,
	50000,
	75000,
	100000,
	150000,
	250000,
	400000,
	550000,
	750000,
	1000000,
	1250000,
	1500000,
	1800000,
	2200000,
	2600000,
	3000000
}
bondLevelPerks = {
	"--------------------------",
	"Increases Moa Speed by 10.",
	"Increases Moa Strength by 4.",
	"Reduces the cooldown on Moa abilities by 10%.",
	"Increases the effectiveness of Moa rations by 10%.",
	"Increases the stats from gear your Moa wears by 10%.",
	"Reduces the chance of being dismounted by 5%.",
	"Increases Moa Speed by 20.",
	"Increases Moa Strength by 8.",
	"Increases all Bond Experience received by 5%.",
	"Increases the chance that an offspring will be born with an ability by 5%.",
	"Increases the chance that an offspring will be born with a trait by 5%.",
	"Reduces the cooldown on Moa abilities by 20%.",
	"Increases Moa Speed by 30.",
	"Increases Moa Strength by 12.",
	"Reduces the chance of being dismounted by 10%.",
	"Increases the stats from gear your Moa wears by 20%.",
	"Increases the chance that an offspring will be born with an ability by 10%.",
	"Increases the chance that an offspring will be born with a trait by 10%.",
	"Increases the effectiveness of Moa rations by 30%."
}
cargoTypes = {
	[5782] = "Mortar Cannon",
	[5795] = "Hullbreaker Cannon",
	[5485] = "Plating",
	[5798] = "Shrapnel Cannon",
	[5805] = "Water Pumps",
	[1824] = "Water Pumps",
	[2852] = "Plating",
	[1820] = "Ship Emblems",
	[1817] = "Plating",
	[1816] = "Plating",
	[2854] = "Fish Nets",
	[2855] = "Fish Nets",
	[5479] = "Ship Emblems",
	[5797] = "Shrapnel Cannon",
	[5817] = "Drake Head",
	[1821] = "Ship Emblems",
	[5781] = "Shrapnel Cannon",
	[5486] = "Plating",
	[1822] = "Water Pumps",
	[5800] = "Mortar Cannon",
	[5483] = "Broadside Artillery",
	[5819] = "Broadside Artillery",
	[5820] = "Broadside Artillery",
	[5801] = "Floating Mines",
	[5802] = "Floating Mines",
	[5481] = "Grappling Hooks",
	[5803] = "Grappling Hooks",
	[5804] = "Grappling Hooks",
	[5478] = "Ship Emblems",
	[5796] = "Hullbreaker Cannon",
	[5816] = "Siege Cannon",
	[2848] = "Siege Cannon",
	[5780] = "Hullbreaker Cannon",
	[5477] = "Drake Head",
	[5799] = "Mortar Cannon",
	[5815] = "Siege Cannon",
	[1823] = "Water Pumps",
	[1819] = "Ship Emblems",
	[5480] = "Floating Mines",
	[5806] = "Water Pumps",
	[5818] = "Drake Head",
	[2853] = "Fish Nets"
}

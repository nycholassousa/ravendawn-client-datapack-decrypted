﻿-- chunkname: @/modules/game_conditions/config.lua

StatNames = {
	[STAT_MAXHITPOINTS] = "Max Health",
	[STAT_MAXMANAPOINTS] = "Max Mana",
	[STAT_ATTACKSPEED] = "Attack Speed",
	[STAT_ATTACK] = "Attack Power",
	[STAT_PHYSICALATTACK] = "Weapon Power",
	[STAT_MAGICATTACK] = "Spell Power",
	[STAT_DEFENSE] = "Defense Power",
	[STAT_PHYSICALDEFENSE] = "Weapon Defense",
	[STAT_MAGICDEFENSE] = "Spell Defense",
	[STAT_MIGHT] = "Might",
	[STAT_DEXTERITY] = "Dexterity",
	[STAT_HASTE] = "Haste",
	[STAT_INTELLIGENCE] = "Intelligence",
	[STAT_WISDOM] = "Wisdom",
	[STAT_SPELLCOOLDOWN] = "Spell Cooldown",
	[STAT_RANGEBONUS] = "Attack Range",
	[STAT_HEAL] = "Healing Power",
	[STAT_SPEED] = "Movement Speed",
	[STAT_MANA_REGENERATION] = "Mana Regeneration",
	[STAT_CRITICAL_CHANCE] = "Critical Chance",
	[STAT_CRITICAL_DAMAGE] = "Critical Damage",
	[STAT_HEALTH_HEALING_PERCENT] = "Healing",
	[STAT_VITALITY] = "Vitality",
	[STAT_HEALTH_REGENERATION] = "Health Regeneration"
}
PercentStats = {
	[STAT_HEALTH_HEALING_PERCENT] = true
}
conditions = {
	[13000] = {
		name = "Bash"
	},
	[13001] = {
		name = "Spirits Resolve"
	},
	[13002] = {
		name = "Smiting Smash"
	},
	[13003] = {
		name = "Shield Throw"
	},
	[13004] = {
		name = "Revenge"
	},
	[13005] = {
		name = "Spirit Shield",
		description = "Reflects a portion of the damage taken."
	},
	[13006] = {
		name = "Spirit Shield",
		description = "Increases healing on the caster."
	},
	[13007] = {
		name = "Provoke"
	},
	[13008] = {
		name = "Provoke"
	},
	[13009] = {
		name = "Banner of Protection"
	},
	[13010] = {
		name = "Safeguard"
	},
	[13011] = {
		name = "Unchained"
	},
	[13012] = {
		name = "Unbreakable",
		description = "Target is unable to receive healing from Unbreakable nor any other source. Deals spell damage in a small area after the duration of Unbreakable ends."
	},
	[13013] = {
		name = "Unbreakable"
	},
	[13014] = {
		name = "Unbreakable"
	},
	[13015] = {
		name = "Quick Slash"
	},
	[13016] = {
		name = "Shadowbind"
	},
	[13017] = {
		name = "Anti-Healing Venom"
	},
	[13018] = {
		name = "Anti-Healing Venom"
	},
	[13019] = {
		name = "Venomous Weapons"
	},
	[13020] = {
		name = "Blessed Earth",
		description = "While inside the area affected by Blessed Earth, the caster and their party members receive increased healing."
	},
	[13021] = {
		name = "Safeguard",
		description = "Caster and target shares healing received."
	},
	[13022] = {
		name = "Venomous Weapons",
		description = "Increases your base critical chance per stack."
	},
	[13023] = {
		name = "Crippling Dagger",
		description = "You take increased damage from the caster of Crippling Dagger."
	},
	[13024] = {
		name = "Death Blossom"
	},
	[13025] = {
		name = "Siniter Plot"
	},
	[13026] = {
		name = "Siniter Plot"
	},
	[13027] = {
		name = "Illusive",
		description = "You have a chance to dodge any type of damage dealt against you."
	},
	[13028] = {
		name = "Shadow Kick"
	},
	[13029] = {
		name = "Brutal Strike",
		description = "Increase the damage of your next Guillotine."
	},
	[13030] = {
		name = "Guillotine"
	},
	[13031] = {
		name = "Shieldbreak",
		description = "Basic attacks deal more damage to the target."
	},
	[13032] = {
		name = "Pummel"
	},
	[13033] = {
		name = "Feasting Strike",
		description = "You have Weapon Leech."
	},
	[13034] = {
		name = "Bladestorm"
	},
	[13035] = {
		name = "Bullrush"
	},
	[13036] = {
		name = "Earthquake"
	},
	[13037] = {
		name = "Fierce Leap"
	},
	[13038] = {
		name = "Berserk",
		description = "Berserk duration is doubled, increasing caster's AP but making them unable to receive healing for the duration of Berserk."
	},
	[13039] = {
		name = "Dire Bear"
	},
	[13040] = {
		name = "Berserk"
	},
	[13041] = {
		name = "Concussive Shot"
	},
	[13042] = {
		name = "Spiked Chains"
	},
	[13043] = {
		name = "Skorn Deathblade",
		description = "You take increased critical damage."
	},
	[13044] = {
		name = "Frostrisen Shards",
		description = "The critical chance of your next Precision Shot or Quick Fire is increased."
	},
	[13045] = {
		name = "Snaring Shot",
		description = "Increases the damage of a target that is already affected by Viper Arrow."
	},
	[13046] = {
		name = "Dawn Arrow",
		description = "Caster's next 8 basic attacks will deal additional spell damage."
	},
	[13047] = {
		name = "Dragons Arrow"
	},
	[13048] = {
		name = "Spirit Rangers"
	},
	[13049] = {
		name = "Venom Grenade",
		description = "Increases target mana cost of skills."
	},
	[13050] = {
		name = "Flash Heal",
		description = "Increases the caster's next Smite, Holy Shackles or Holy Force damage."
	},
	[13051] = {
		name = "Smite",
		description = "Increases the caster's critical chance of the next healing skill."
	},
	[13052] = {
		name = "Mend",
		description = "Mend heals have a chance to reduce Dawn's Light to zero and reduce its mana cost."
	},
	[13053] = {
		name = "Dawn's Light",
		description = ""
	},
	[13054] = {
		name = "Healing Channel"
	},
	[13055] = {
		name = "Healing Channel"
	},
	[13056] = {
		name = "Fireball",
		description = "Increases the caster's next fireball critical chance."
	},
	[13057] = {
		name = "Devotion",
		description = "Increases the caster's next healing skill critical chance"
	},
	[13058] = {
		name = "Erupt",
		description = "Damage skills have a chance to set the target aflame, dealing additional spell damage to the target and adjacent creatures."
	},
	[13059] = {
		name = "Erupt"
	},
	[13060] = {
		name = "Holy Force"
	},
	[13062] = {
		name = "Fissure"
	},
	[13063] = {
		name = "Holy Shackles",
		description = "Target receives more damage from Smite and Holy Force"
	},
	[13064] = {
		name = "Quick Fire"
	},
	[13065] = {
		name = "Rain of Arrows"
	},
	[13066] = {
		name = "Combustion"
	},
	[13067] = {
		name = "Flame Tornardo"
	},
	[13068] = {
		name = "Healing Channel",
		description = "This target cannot receive increased Defense Power from Healing Channel."
	},
	[13069] = {
		name = "Windstrike Spirit"
	},
	[13071] = {
		name = "Combustion",
		description = "Deals spell damage to adjacent targets after 3 seconds."
	},
	[13072] = {
		name = "Regenerate",
		description = "Target healing skill costs less mana."
	},
	[13073] = {
		name = "Force Push"
	},
	[13074] = {
		name = "Whirlwind",
		description = "Target is Disarmed, its AP is reduced by the same amount of its weapon. If it is not a player, its AP is reduced by 50%."
	},
	[13075] = {
		name = "Whirlwind"
	},
	[13076] = {
		name = "Typhoon"
	},
	[13077] = {
		name = "Force Push"
	},
	[13078] = {
		name = "Typhoon"
	},
	[13079] = {
		name = "Shadow Kick"
	},
	[13080] = {
		name = "Haste",
		description = "Skills and basic attacks made by you deal additional weapon damage."
	},
	[13083] = {
		name = "Siphon",
		description = "Target is affected by barrier and its haste is increased."
	},
	[13084] = {
		name = "Yornish Frostbearer",
		description = "Your haste is decreased."
	},
	[13085] = {
		name = "Yornish Frostbearer",
		description = "Your haste is increased."
	},
	[13086] = {
		name = "Saltdusk Ritualist",
		description = "Your AP is decreased"
	},
	[13087] = {
		name = "Saltdusk Ritualist",
		description = "Your AP is increased."
	},
	[13088] = {
		name = "Eternal Worms"
	},
	[13089] = {
		name = "Dispel"
	},
	[13090] = {
		name = "Hex"
	},
	[13091] = {
		name = "Death Touch"
	},
	[13092] = {
		name = "Fierce Leap"
	},
	[13093] = {
		name = "Wind Wall"
	},
	[13094] = {
		name = "Healing Air Sphere"
	},
	[13095] = {
		name = "Venom Grenade",
		description = "Increases target mana cost of skills."
	},
	[13096] = {
		name = "Arcane Pulse",
		description = "The critical chance of your next Precision Shot or Quick Fire is increased."
	},
	[13097] = {
		name = "Flame Tornardo"
	},
	[13098] = {
		name = "Skeleton",
		description = "If the target is slain while affected by Curse, gain additional Aether."
	},
	[13099] = {
		name = "Generous Influence",
		description = "Sharing healing received."
	},
	[13100] = {
		name = "Generous Influence",
		description = "Sharing healing received."
	},
	[13101] = {
		name = "Wind Wall"
	},
	[13102] = {
		name = "Magic Rupture",
		description = "The effectiveness of Leech, Curse and Siphon is increased."
	},
	[13103] = {
		name = "Magic Rupture",
		description = "Arcane Pulse and Arcane Torrent deal increased damage."
	},
	[13104] = {
		name = "Venomous Weapons"
	},
	[13105] = {
		name = "Air Aura",
		description = "Next incoming targeted skill will be reflected back to the caster."
	},
	[13106] = {
		name = "Purify"
	},
	[13107] = {
		name = "Healing Air Sphere"
	},
	[13108] = {
		name = "Smite"
	},
	[13109] = {
		name = "Party Recovery",
		description = "Effectiveness of all healing overtime is increased on the target."
	},
	[13110] = {
		name = "Terrorize"
	},
	[13111] = {
		name = "Shackles of Pain",
		description = "If the target is healed, it will heal the caster as well."
	},
	[13112] = {
		name = "Smiting Smash",
		description = "Caster's next Blessed Earth damage is increased."
	},
	[13113] = {
		name = "Bash"
	},
	[16000] = {
		name = "Key of Numerous Locks"
	},
	[16001] = {
		name = "Serrated Knife"
	},
	[16002] = {
		name = "Cure Disease Potion"
	},
	[16003] = {
		name = "Walders Bow"
	},
	[16004] = {
		name = "Silver into Gold",
		description = "Increases silver drop from creatures by 1."
	},
	[16005] = {
		name = "Vial of Poison"
	},
	[16006] = {
		name = "Merlot",
		description = "Increases your in-combat regeneration by 1% "
	},
	[16007] = {
		name = "Codex Glasses"
	},
	[16008] = {
		name = "Poisoned Arrow"
	},
	[16009] = {
		name = "Handcrafted Arrow"
	},
	[16010] = {
		name = "Raven Scout Cloak"
	},
	[16011] = {
		name = "Ghaz Pipe Tobacco"
	},
	[16013] = {
		name = "Bag of Holding"
	},
	[16014] = {
		name = "Regrowth Stone"
	},
	[16015] = {
		name = "Raven Scout Pauldrons"
	},
	[16016] = {
		name = "Helmet of the Knight"
	},
	[16017] = {
		name = "Sword of Shadow"
	},
	[16018] = {
		name = "Pirate's Hook"
	},
	[16019] = {
		name = "Twilight Lamp"
	},
	[16020] = {
		name = "White Sash"
	},
	[16021] = {
		name = "Red Sash"
	},
	[16022] = {
		name = "Black Sash"
	},
	[16023] = {
		name = "Iron Blood Potion"
	},
	[16025] = {
		name = "Shiny Neck Thing"
	},
	[16026] = {
		name = "Common Saddle"
	},
	[16027] = {
		name = "Tooth Amulet"
	},
	[16028] = {
		name = "Toad Amulet"
	},
	[16029] = {
		name = "Dragonforged Rune"
	},
	[16030] = {
		name = "Poisonpetal Seeds"
	},
	[16031] = {
		name = "Poisonpetal Seeds"
	},
	[16032] = {
		name = "Bolin's Tempering Oil"
	},
	[16033] = {
		name = "Phosphorescent Shell"
	},
	[16034] = {
		name = "Javelin Quiver"
	},
	[16035] = {
		name = "Hidden Blade"
	},
	[16036] = {
		name = "Crystal of the Dawn"
	},
	[16037] = {
		name = "Exotic Incense"
	},
	[16038] = {
		name = "Emergency Blockage"
	},
	[16039] = {
		name = "Aegis Rune",
		description = "Gain a shield that absorb 600 damage. Increase Attack Power by 15 while the shield is active."
	},
	[16040] = {
		name = "Bag of Caltrops"
	},
	[16041] = {
		name = "Stepping Fuel",
		description = "Increases your Movement Speed by 15% and leave behind a trail of fire for 5 seconds, dealing 80 to 155 damage per second to enemies that step on it."
	},
	[16042] = {
		name = "Hobgoblin's Tooth Amulet"
	},
	[16043] = {
		name = "Ship's Glue Leftovers"
	},
	[16044] = {
		name = "Suspicious Milk"
	},
	[16045] = {
		name = "Musty Liquid"
	},
	[16046] = {
		name = "Pompous Neck Protection",
		description = "Increases Defense Power by 8. Protect you from 1 damage over time effect, 2 minute cooldown."
	},
	[16047] = {
		name = "Dwarven Mining Helmet",
		description = "When struck by a creature while mining, become immune untill you are finish mining. 5 minute cooldown."
	},
	[16048] = {
		name = "Ice Spikes",
		description = "Increases Vitality by 25. You ignore the slow from the \"Chilled\" effect, but still marked by the effect."
	},
	[16049] = {
		name = "Emergencial Campfire"
	},
	[16050] = {
		name = "Icedrop Solution"
	},
	[16051] = {
		name = "Mysticap Fetish"
	},
	[16052] = {
		name = "Cloak of Chivalry"
	},
	[16053] = {
		name = "Torment Configuration",
		description = "Redirects half of all damage suffered back to the source."
	},
	[16054] = {
		name = "Omega Stone"
	},
	[16055] = {
		name = "Omega Stone",
		description = "User gets 20% reduced movement speed and 10% reduced stats."
	},
	[16056] = {
		name = "Ratoxin Bomb"
	},
	[16057] = {
		name = "Shamanic Brooch"
	},
	[16058] = {
		name = "Idol of Gluttony",
		description = "Convert 20% of all damage dealt by basic attacks and skills to Health."
	},
	[16059] = {
		name = "The Grim Smile",
		description = "restore 600 Health everytime you slay an enemy."
	},
	[16060] = {
		name = "Eldritch Crow Mask"
	},
	[16061] = {
		name = "Eau de Berserker"
	},
	[16062] = {
		name = "Toxique N5"
	},
	[16063] = {
		name = "Toxique N5"
	},
	[16064] = {
		name = "Chester's Weighted Dice"
	},
	[16065] = {
		name = "Hypnosis"
	},
	[16066] = {
		name = "Corrupted Fang"
	},
	[16067] = {
		name = "Corrupted Fang"
	},
	[16068] = {
		name = "Immaterial Bangle"
	},
	[16069] = {
		name = "Immaterial Bangle"
	},
	[16070] = {
		name = "Dunewalker Cloak"
	},
	[16071] = {
		name = "Toadish Cloak",
		description = "Reduce spell damage taken from damage over time effects by 10."
	},
	[16072] = {
		name = "Frost Ward"
	},
	[16073] = {
		name = "Waterless Poppy Blossoms"
	},
	[16074] = {
		name = "Ghostwalker Shoes"
	},
	[16075] = {
		name = "Reflective Carapace",
		description = "Increases user Defense Power by 15 and redirects 5% of all damage suffered back to the source."
	},
	[16076] = {
		name = "Garment of Skorn"
	},
	[16077] = {
		name = "Gauntlet of Skorn"
	},
	[16078] = {
		name = "Golden Maw"
	},
	[16079] = {
		name = "Withered Demon Hand"
	},
	[16080] = {
		name = "Saint Alsek's Cloak"
	},
	[16081] = {
		name = "Decrepit Tiara"
	},
	[16082] = {
		name = "Golden Fleece"
	},
	[16084] = {
		name = "Angerhorn Impaler"
	},
	[16500] = {
		name = "Cleave"
	},
	[16501] = {
		name = "Magic Ward"
	},
	[16502] = {
		name = "Mana Overcharge",
		description = "Increases the damage of skills of the caster by 10%, also increases the mana cost by 15%}."
	},
	[16503] = {
		name = "Steady Stance"
	},
	[16504] = {
		name = "Hammer Bash",
		description = ""
	},
	[16505] = {
		name = "Lethal Edge",
		description = "Increase caster's critical chance by 10%"
	},
	[16506] = {
		name = "Fencer's Escape",
		description = "Reduces the duration of movement impairing effects by 30%"
	},
	[16507] = {
		name = "Blade Warding",
		description = "Caster is affected by a Barrier and movement impairment effects duration are reduced by "
	},
	[16508] = {
		name = "Blade Warding Barrier",
		description = ""
	},
	[16509] = {
		name = "Power Surge",
		description = "Increase the damage of skills and basic attacks by 12% but receive 5% more damage."
	},
	[16510] = {
		name = "Rending Throw"
	},
	[16511] = {
		name = "Rending Throw Dot"
	},
	[16512] = {
		name = "Mace Toss"
	},
	[23000] = {
		name = "Energetic Tonic"
	},
	[23001] = {
		name = "Training Elixir"
	},
	[23002] = {
		name = "Dawn's Drop"
	},
	[23003] = {
		name = "Infantry Boost"
	},
	[23004] = {
		name = "Tonic of Regeneration"
	},
	[23005] = {
		name = "Opportunist's Elixir"
	},
	[23006] = {
		name = "Oversea Tonic"
	},
	[23007] = {
		name = "Thug's Tonic"
	},
	[23008] = {
		name = "Rebel's Elixir"
	},
	[23009] = {
		name = "Assault Tonic"
	},
	[23010] = {
		name = "Weakening Poison",
		description = "User's basic attacks reduce the DP of targets by 1 for 5 seconds every stack."
	},
	[23011] = {
		name = "Weakening Poison"
	},
	[23012] = {
		name = "Toxic Poison",
		description = "User's basic attacks deals 2 damage per second per stack."
	},
	[23013] = {
		name = "Toxic Poison"
	},
	[23014] = {
		name = "Sun Tears"
	},
	[23015] = {
		name = "Elixir of Union"
	},
	[23016] = {
		name = "Tonic of Blood"
	},
	[23017] = {
		name = "Tonic of Running",
		description = ""
	},
	[23018] = {
		name = "Drop of Grace"
	},
	[23019] = {
		name = "Fatiguing Poison",
		description = "Caster's basic attacks reduces target's Haste."
	},
	[23020] = {
		name = "Fatiguing Poison",
		description = ""
	},
	[23021] = {
		name = "Tree of Life Sap"
	},
	[23023] = {
		name = "Vampirism Venom",
		description = "User's basic attacks apply Life poison, target's health is drained by 2 every second."
	},
	[23024] = {
		name = "Vampirism Venom",
		description = "Target's health is drained every second."
	},
	[23025] = {
		name = "Combat Panacea",
		description = "Instantly removes 1 random harmful effect afflicting the user and increase Attack Power by 30."
	},
	[23026] = {
		name = "Wild Pheromones",
		description = "Instantly force creatures in a medium area to attack the user for 6 seconds. Increase Defense Power by 30."
	},
	[23027] = {
		name = "Vigorous Draught"
	},
	[23028] = {
		name = "Manastorm Draft"
	},
	[23029] = {
		name = "Savage Compound"
	},
	[23030] = {
		name = "Slayer Elixir"
	},
	[23031] = {
		name = "Expert Elixir"
	},
	[23032] = {
		name = "Resilience Mutagen"
	},
	[23033] = {
		name = "Resilience Mutagen",
		description = "For each harmful effect afflicting the user when he drinks this elixir, raises his Attack Power by 12 instead, up to a total of 60 Attack Power."
	},
	[23034] = {
		name = "Sage's Essence"
	},
	[23035] = {
		name = "Frenzy Potion"
	},
	[23036] = {
		name = "Potent Pheromones",
		description = "Instantly force creatures in a medium area to attack the user for 6 seconds. Increase Defense Power by 60."
	},
	[23037] = {
		name = "Sumptuous Panacea"
	},
	[23038] = {
		name = "Essence of Bravery"
	},
	[23039] = {
		name = "Executioner's Mutagen"
	},
	[23040] = {
		name = "Quickening Concoction"
	},
	[23041] = {
		name = "Slowing Poison",
		description = "User's basic attacks reduces the target's Movement Speed by 1% per stack."
	},
	[23042] = {
		name = "Slowing Poison"
	},
	[23043] = {
		name = "Searing Poison",
		description = "User's basic attacks apply a stack of Searing Poison, dealing 7 damage per second."
	},
	[23044] = {
		name = "Searing Poison"
	},
	[23045] = {
		name = "Magic Leeching Venom",
		description = "Basic attacks apply a stack of Mana Poison, draining 5 mana per second."
	},
	[23046] = {
		name = "Magic Leeching Venom",
		description = "Mana is drained by 5 per stack every second."
	},
	[23047] = {
		name = "Combat Panacea"
	},
	[30000] = {
		name = "Fireball"
	},
	[30001] = {
		name = "Erupt"
	},
	[30003] = {
		name = "Frostbolt"
	},
	[30004] = {
		name = "Mend"
	},
	[30005] = {
		name = "Healing Channel"
	},
	[30006] = {
		name = "Circle of Light"
	},
	[30007] = {
		name = "Living Saint"
	},
	[30008] = {
		name = "Windstrike Spirit",
		description = "Basic attacks have 50% chance to deal additional damage"
	},
	[30009] = {
		name = "Regenerate"
	},
	[30010] = {
		name = "Air Aura"
	},
	[30011] = {
		name = "Haste"
	},
	[30012] = {
		name = "Party Recovery"
	},
	[30013] = {
		name = "Empower"
	},
	[30014] = {
		name = "Healing Air Sphere"
	},
	[30015] = {
		name = "Barrier"
	},
	[30016] = {
		name = "Leech"
	},
	[30017] = {
		name = "Leech Regen"
	},
	[30018] = {
		name = "Magic Rupture"
	},
	[30019] = {
		name = "Magic Rupture Haste"
	},
	[30020] = {
		name = "Shieldbreak"
	},
	[30021] = {
		name = "Berserk"
	},
	[30022] = {
		name = "Spiked Chains"
	},
	[30023] = {
		name = "Spirit Shield"
	},
	[30024] = {
		name = "Blessed Earth Dot"
	},
	[30025] = {
		name = "Blessed Earth Heal"
	},
	[30026] = {
		name = "Sinister Plot",
		description = "Generate 20 Aether per second."
	},
	[30027] = {
		name = "Illusive",
		description = "Dodges all incoming basic attacks and non-area ability damage, but your Weapon Power and Spell Power is reduced by 30%."
	},
	[30028] = {
		name = "Arcane Pulse"
	},
	[30030] = {
		name = "Stalk"
	},
	[30031] = {
		name = "Wind Arrow",
		description = "Decreases the caster's global cooldown."
	},
	[30032] = {
		name = "Demon Arrow"
	},
	[30033] = {
		name = "Anti-Healing Venom",
		description = "Reduces the healing received from skills by 50%."
	},
	[30034] = {
		name = "Viper Arrow"
	},
	[30035] = {
		name = "Dawn Arrow"
	},
	[30036] = {
		name = "Zealots Flame"
	},
	[30037] = {
		name = "Banner of Protection"
	},
	[30038] = {
		name = "Banner of Justice"
	},
	[30039] = {
		name = "Guardian Angel"
	},
	[30040] = {
		name = "Meditate"
	},
	[30041] = {
		name = "Exploitation"
	},
	[30042] = {
		name = "Hatred"
	},
	[30043] = {
		name = "Devout Protector"
	},
	[30044] = {
		name = "Deadly Duelist"
	},
	[30045] = {
		name = "Fleetfooted"
	},
	[30046] = {
		name = "Curse"
	},
	[30047] = {
		name = "Unchained",
		description = "Immune to any movement impairing effects."
	},
	[30048] = {
		name = "Banner of Virtue"
	},
	[30049] = {
		name = "Fireball Dotstack"
	},
	[30050] = {
		name = "Frostbolt Dotstack"
	},
	[30051] = {
		name = "Arcane Corruption"
	},
	[30052] = {
		name = "Divine Purpose"
	},
	[30053] = {
		name = "Marked for Death"
	},
	[30054] = {
		name = "Creeping Death"
	},
	[30055] = {
		name = "Halo"
	},
	[30056] = {
		name = "Shadowstrike"
	},
	[30057] = {
		name = "Generous Influence"
	},
	[30058] = {
		name = "Typhoon"
	},
	[30059] = {
		name = "Holy Shackles"
	},
	[30060] = {
		name = "Bladestorm"
	},
	[30061] = {
		name = "Smiting Smash"
	},
	[30062] = {
		name = "Unbreakable",
		description = "Absorb 50% of all damage received. Heal all the damage absorbed at the end of Unbreakable"
	},
	[30063] = {
		name = "Venomous Weapons",
		description = "Caster's basic attacks reduces its target's DP."
	},
	[30064] = {
		name = "Venomous Weapons"
	},
	[30065] = {
		name = "Shadow Kick",
		description = "Channeling is 30% slower."
	},
	[30066] = {
		name = "Venom Grenade"
	},
	[30067] = {
		name = "Quick Fire"
	},
	[30068] = {
		name = "Devout Healer"
	},
	[30069] = {
		name = "Bow Mastery"
	},
	[30070] = {
		name = "Bloodbath",
		description = "Heals by a portion of the damage dealt."
	},
	[30071] = {
		name = "Giant's Blood"
	},
	[30072] = {
		name = "Cheap Shot",
		description = "Critical chance increased."
	},
	[30073] = {
		name = "Blitz"
	},
	[30074] = {
		name = "Bloodlust"
	},
	[30075] = {
		name = "Clear Focus",
		description = "Every 5th basic attack on the same target, restores 10 Aether."
	},
	[30076] = {
		name = "Trickster",
		description = "Every hit the caster land on the target, will steal movement speed from it by 1%."
	},
	[30077] = {
		name = "Trickster",
		description = ""
	},
	[30078] = {
		name = "Revenge"
	},
	[30079] = {
		name = "Air Aura Shield"
	},
	[30080] = {
		name = "Shackles of Pain",
		description = "The target receives 50% of the damage you take."
	},
	[30081] = {
		name = "Safeguard",
		description = "Redirect 50% of the damage taken to the caster."
	},
	[30082] = {
		name = "Undying Will"
	},
	[30083] = {
		name = "Savagery"
	},
	[30084] = {
		name = "Concentrated Impact"
	},
	[30085] = {
		name = "Bloodbath Frenzy",
		description = "Heals by a portion of the damage dealt."
	},
	[30086] = {
		name = "Exhausted",
		description = "Unable to be affected by Haste again."
	},
	[30087] = {
		name = "Wind Mastery"
	},
	[30088] = {
		name = "Hot Headed"
	},
	[30089] = {
		name = "Havoc"
	},
	[30090] = {
		name = "Sins of the Many"
	},
	[30091] = {
		name = "Fire Shield"
	},
	[30092] = {
		name = "Flow of Magic"
	},
	[30093] = {
		name = "Revenge"
	},
	[30094] = {
		name = "The Cost of Restoration"
	},
	[30095] = {
		name = "Flame Tornado"
	},
	[30096] = {
		name = "Crippling Dagger"
	},
	[30097] = {
		name = "Unbreakable"
	},
	[30098] = {
		name = "Pyroblast"
	},
	[30099] = {
		name = "Frost Armor"
	},
	[30100] = {
		name = "Guardian",
		description = "Heals 1% of your total health per second."
	},
	[30101] = {
		name = "Healing Bond"
	},
	[30102] = {
		name = "Banner Active"
	},
	[30103] = {
		name = "Mend"
	},
	[30104] = {
		name = "Mend"
	},
	[30105] = {
		name = "Death Touch"
	},
	[30106] = {
		name = "Deep Frozen",
		description = "Frost Lances are a guaranteed critical hit."
	},
	[30107] = {
		name = "Arctic Piercing",
		description = "Increases the caster's next Frost Shard or Ice Storm Spell Damage."
	},
	[30108] = {
		name = "Shackles of Pain",
		description = "You receive 50% of the damage taken by the caster."
	},
	[30109] = {
		name = "Healing Percent Modifier",
		description = ""
	},
	[30110] = {
		name = "Fear",
		description = ""
	},
	[30111] = {
		name = "Frostshard Slow",
		description = ""
	},
	[30112] = {
		name = "Venom Grenade",
		description = ""
	},
	[30113] = {
		name = "Erupt",
		description = ""
	},
	[30114] = {
		name = "Blind",
		description = "You are unable to land basic attacks"
	},
	[30115] = {
		name = "Default Snare",
		description = ""
	},
	[30116] = {
		name = "Default Paralyze",
		description = ""
	},
	[30117] = {
		name = "Cold Blast",
		description = ""
	},
	[30118] = {
		name = "Spirit Shield",
		description = ""
	},
	[30119] = {
		name = "Shrapnel Cannon",
		description = ""
	},
	[30120] = {
		name = "Exploitation",
		description = ""
	},
	[30121] = {
		name = "Default Confuse",
		description = ""
	},
	[30122] = {
		name = "Drake Head Cannon",
		description = ""
	},
	[30128] = {
		name = "Frostbite",
		description = "Your Frost Lances ignore 25% of the Spell Defense of the target."
	},
	[33014] = {
		name = "Dawns Apotheosis",
		description = ""
	},
	[33015] = {
		name = "Witch's Call",
		description = ""
	},
	[33016] = {
		name = "Eye of the Storm",
		description = ""
	},
	[30131] = {
		name = "Crow's Corruption",
		description = ""
	}
}

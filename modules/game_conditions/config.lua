-- chunkname: @/modules/game_conditions/config.lua

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
		description = "Reflects a portion of the damage taken.",
		name = "Spirit Shield"
	},
	[13006] = {
		description = "Increases healing on the caster.",
		name = "Spirit Shield"
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
		description = "Target is unable to receive healing from Unbreakable nor any other source. Deals spell damage in a small area after the duration of Unbreakable ends.",
		name = "Unbreakable"
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
		description = "While inside the area affected by Blessed Earth, the caster and their party members receive increased healing.",
		name = "Blessed Earth"
	},
	[13021] = {
		description = "Caster and target shares healing received.",
		name = "Safeguard"
	},
	[13022] = {
		description = "Increases your base critical chance per stack.",
		name = "Venomous Weapons"
	},
	[13023] = {
		description = "You take increased damage from the caster of Crippling Dagger.",
		name = "Crippling Dagger"
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
		description = "You have a chance to dodge any type of damage dealt against you.",
		name = "Illusive"
	},
	[13028] = {
		name = "Shadow Kick"
	},
	[13029] = {
		description = "Increase the damage of your next Guillotine.",
		name = "Brutal Strike"
	},
	[13030] = {
		name = "Guillotine"
	},
	[13031] = {
		description = "Basic attacks deal more damage to the target.",
		name = "Shieldbreak"
	},
	[13032] = {
		name = "Pummel"
	},
	[13033] = {
		description = "You have Weapon Leech.",
		name = "Feasting Strike"
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
		description = "Berserk duration is doubled, increasing caster's AP but making them unable to receive healing for the duration of Berserk.",
		name = "Berserk"
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
		description = "You take increased critical damage.",
		name = "Skorn Deathblade"
	},
	[13044] = {
		description = "The critical chance of your next Precision Shot or Quick Fire is increased.",
		name = "Frostrisen Shards"
	},
	[13045] = {
		description = "Increases the damage of a target that is already affected by Viper Arrow.",
		name = "Snaring Shot"
	},
	[13046] = {
		description = "Caster's next 8 basic attacks will deal additional spell damage.",
		name = "Dawn Arrow"
	},
	[13047] = {
		name = "Dragons Arrow"
	},
	[13048] = {
		name = "Spirit Rangers"
	},
	[13049] = {
		description = "Increases target mana cost of skills.",
		name = "Venom Grenade"
	},
	[13050] = {
		description = "Increases the caster's next Smite, Holy Shackles or Holy Force damage.",
		name = "Flash Heal"
	},
	[13051] = {
		description = "Increases the caster's critical chance of the next healing skill.",
		name = "Smite"
	},
	[13052] = {
		description = "Mend heals have a chance to reduce Dawn's Light to zero and reduce its mana cost.",
		name = "Mend"
	},
	[13053] = {
		description = "",
		name = "Dawn's Light"
	},
	[13054] = {
		name = "Healing Channel"
	},
	[13055] = {
		name = "Healing Channel"
	},
	[13056] = {
		description = "Increases the caster's next fireball critical chance.",
		name = "Fireball"
	},
	[13057] = {
		description = "Increases the caster's next healing skill critical chance",
		name = "Devotion"
	},
	[13058] = {
		description = "Damage skills have a chance to set the target aflame, dealing additional spell damage to the target and adjacent creatures.",
		name = "Erupt"
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
		description = "Target receives more damage from Smite and Holy Force",
		name = "Holy Shackles"
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
		description = "This target cannot receive increased Defense Power from Healing Channel.",
		name = "Healing Channel"
	},
	[13069] = {
		name = "Windstrike Spirit"
	},
	[13071] = {
		description = "Deals spell damage to adjacent targets after 3 seconds.",
		name = "Combustion"
	},
	[13072] = {
		description = "Target healing skill costs less mana.",
		name = "Regenerate"
	},
	[13073] = {
		name = "Force Push"
	},
	[13074] = {
		description = "Target is Disarmed, its AP is reduced by the same amount of its weapon. If it is not a player, its AP is reduced by 50%.",
		name = "Whirlwind"
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
		description = "Skills and basic attacks made by you deal additional weapon damage.",
		name = "Haste"
	},
	[13083] = {
		description = "Target is affected by barrier and its haste is increased.",
		name = "Siphon"
	},
	[13084] = {
		description = "Your haste is decreased.",
		name = "Yornish Frostbearer"
	},
	[13085] = {
		description = "Your haste is increased.",
		name = "Yornish Frostbearer"
	},
	[13086] = {
		description = "Your AP is decreased",
		name = "Saltdusk Ritualist"
	},
	[13087] = {
		description = "Your AP is increased.",
		name = "Saltdusk Ritualist"
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
		description = "Increases target mana cost of skills.",
		name = "Venom Grenade"
	},
	[13096] = {
		description = "The critical chance of your next Precision Shot or Quick Fire is increased.",
		name = "Arcane Pulse"
	},
	[13097] = {
		name = "Flame Tornardo"
	},
	[13098] = {
		description = "If the target is slain while affected by Curse, gain additional Aether.",
		name = "Skeleton"
	},
	[13099] = {
		description = "Sharing healing received.",
		name = "Generous Influence"
	},
	[13100] = {
		description = "Sharing healing received.",
		name = "Generous Influence"
	},
	[13101] = {
		name = "Wind Wall"
	},
	[13102] = {
		description = "The effectiveness of Leech, Curse and Siphon is increased.",
		name = "Magic Rupture"
	},
	[13103] = {
		description = "Arcane Pulse and Arcane Torrent deal increased damage.",
		name = "Magic Rupture"
	},
	[13104] = {
		name = "Venomous Weapons"
	},
	[13105] = {
		description = "Next incoming targeted skill will be reflected back to the caster.",
		name = "Air Aura"
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
		description = "Effectiveness of all healing overtime is increased on the target.",
		name = "Party Recovery"
	},
	[13110] = {
		name = "Terrorize"
	},
	[13111] = {
		description = "If the target is healed, it will heal the caster as well.",
		name = "Shackles of Pain"
	},
	[13112] = {
		description = "Caster's next Blessed Earth damage is increased.",
		name = "Smiting Smash"
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
		description = "Increases silver drop from creatures by 1.",
		name = "Silver into Gold"
	},
	[16005] = {
		name = "Vial of Poison"
	},
	[16006] = {
		description = "Increases your in-combat regeneration by 1% ",
		name = "Merlot"
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
		description = "Gain a shield that absorb 600 damage. Increase Attack Power by 15 while the shield is active.",
		name = "Aegis Rune"
	},
	[16040] = {
		name = "Bag of Caltrops"
	},
	[16041] = {
		description = "Increases your Movement Speed by 15% and leave behind a trail of fire for 5 seconds, dealing 80 to 155 damage per second to enemies that step on it.",
		name = "Stepping Fuel"
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
		description = "Increases Defense Power by 8. Protect you from 1 damage over time effect, 2 minute cooldown.",
		name = "Pompous Neck Protection"
	},
	[16047] = {
		description = "When struck by a creature while mining, become immune untill you are finish mining. 5 minute cooldown.",
		name = "Dwarven Mining Helmet"
	},
	[16048] = {
		description = "Increases Vitality by 25. You ignore the slow from the \"Chilled\" effect, but still marked by the effect.",
		name = "Ice Spikes"
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
		description = "Redirects half of all damage suffered back to the source.",
		name = "Torment Configuration"
	},
	[16054] = {
		name = "Omega Stone"
	},
	[16055] = {
		description = "User gets 20% reduced movement speed and 10% reduced stats.",
		name = "Omega Stone"
	},
	[16056] = {
		name = "Ratoxin Bomb"
	},
	[16057] = {
		name = "Shamanic Brooch"
	},
	[16058] = {
		description = "Convert 20% of all damage dealt by basic attacks and skills to Health.",
		name = "Idol of Gluttony"
	},
	[16059] = {
		description = "restore 600 Health everytime you slay an enemy.",
		name = "The Grim Smile"
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
		description = "Reduce spell damage taken from damage over time effects by 10.",
		name = "Toadish Cloak"
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
		description = "Increases user Defense Power by 15 and redirects 5% of all damage suffered back to the source.",
		name = "Reflective Carapace"
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
		description = "Increases the damage of skills of the caster by 10%, also increases the mana cost by 15%}.",
		name = "Mana Overcharge"
	},
	[16503] = {
		name = "Steady Stance"
	},
	[16504] = {
		description = "",
		name = "Hammer Bash"
	},
	[16505] = {
		description = "Increase caster's critical chance by 10%",
		name = "Lethal Edge"
	},
	[16506] = {
		description = "Reduces the duration of movement impairing effects by 30%",
		name = "Fencer's Escape"
	},
	[16507] = {
		description = "Caster is affected by a Barrier and movement impairment effects duration are reduced by ",
		name = "Blade Warding"
	},
	[16508] = {
		description = "",
		name = "Blade Warding Barrier"
	},
	[16509] = {
		description = "Increase the damage of skills and basic attacks by 12% but receive 5% more damage.",
		name = "Power Surge"
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
		description = "User's basic attacks reduce the DP of targets by 1 for 5 seconds every stack.",
		name = "Weakening Poison"
	},
	[23011] = {
		name = "Weakening Poison"
	},
	[23012] = {
		description = "User's basic attacks deals 2 damage per second per stack.",
		name = "Toxic Poison"
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
		description = "",
		name = "Tonic of Running"
	},
	[23018] = {
		name = "Drop of Grace"
	},
	[23019] = {
		description = "Caster's basic attacks reduces target's Haste.",
		name = "Fatiguing Poison"
	},
	[23020] = {
		description = "",
		name = "Fatiguing Poison"
	},
	[23021] = {
		name = "Tree of Life Sap"
	},
	[23023] = {
		description = "User's basic attacks apply Life poison, target's health is drained by 2 every second.",
		name = "Vampirism Venom"
	},
	[23024] = {
		description = "Target's health is drained every second.",
		name = "Vampirism Venom"
	},
	[23025] = {
		description = "Instantly removes 1 random harmful effect afflicting the user and increase Attack Power by 30.",
		name = "Combat Panacea"
	},
	[23026] = {
		description = "Instantly force creatures in a medium area to attack the user for 6 seconds. Increase Defense Power by 30.",
		name = "Wild Pheromones"
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
		description = "For each harmful effect afflicting the user when he drinks this elixir, raises his Attack Power by 12 instead, up to a total of 60 Attack Power.",
		name = "Resilience Mutagen"
	},
	[23034] = {
		name = "Sage's Essence"
	},
	[23035] = {
		name = "Frenzy Potion"
	},
	[23036] = {
		description = "Instantly force creatures in a medium area to attack the user for 6 seconds. Increase Defense Power by 60.",
		name = "Potent Pheromones"
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
		description = "User's basic attacks reduces the target's Movement Speed by 1% per stack.",
		name = "Slowing Poison"
	},
	[23042] = {
		name = "Slowing Poison"
	},
	[23043] = {
		description = "User's basic attacks apply a stack of Searing Poison, dealing 7 damage per second.",
		name = "Searing Poison"
	},
	[23044] = {
		name = "Searing Poison"
	},
	[23045] = {
		description = "Basic attacks apply a stack of Mana Poison, draining 5 mana per second.",
		name = "Magic Leeching Venom"
	},
	[23046] = {
		description = "Mana is drained by 5 per stack every second.",
		name = "Magic Leeching Venom"
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
		description = "Basic attacks have 50% chance to deal additional damage",
		name = "Windstrike Spirit"
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
		description = "Generate 20 Aether per second.",
		name = "Sinister Plot"
	},
	[30027] = {
		description = "Dodges all incoming basic attacks and non-area ability damage, but your Weapon Power and Spell Power is reduced by 30%.",
		name = "Illusive"
	},
	[30028] = {
		name = "Arcane Pulse"
	},
	[30030] = {
		name = "Stalk"
	},
	[30031] = {
		description = "Decreases the caster's global cooldown.",
		name = "Wind Arrow"
	},
	[30032] = {
		name = "Demon Arrow"
	},
	[30033] = {
		description = "Reduces the healing received from skills by 50%.",
		name = "Anti-Healing Venom"
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
		description = "Immune to any movement impairing effects.",
		name = "Unchained"
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
		description = "Absorb 50% of all damage received. Heal all the damage absorbed at the end of Unbreakable",
		name = "Unbreakable"
	},
	[30063] = {
		description = "Caster's basic attacks reduces its target's DP.",
		name = "Venomous Weapons"
	},
	[30064] = {
		name = "Venomous Weapons"
	},
	[30065] = {
		description = "Channeling is 30% slower.",
		name = "Shadow Kick"
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
		description = "Heals by a portion of the damage dealt.",
		name = "Bloodbath"
	},
	[30071] = {
		name = "Giant's Blood"
	},
	[30072] = {
		description = "Critical chance increased.",
		name = "Cheap Shot"
	},
	[30073] = {
		name = "Blitz"
	},
	[30074] = {
		name = "Bloodlust"
	},
	[30075] = {
		description = "Every 5th basic attack on the same target, restores 10 Aether.",
		name = "Clear Focus"
	},
	[30076] = {
		description = "Every hit the caster land on the target, will steal movement speed from it by 1%.",
		name = "Trickster"
	},
	[30077] = {
		description = "",
		name = "Trickster"
	},
	[30078] = {
		name = "Revenge"
	},
	[30079] = {
		name = "Air Aura Shield"
	},
	[30080] = {
		description = "The target receives 50% of the damage you take.",
		name = "Shackles of Pain"
	},
	[30081] = {
		description = "Redirect 50% of the damage taken to the caster.",
		name = "Safeguard"
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
		description = "Heals by a portion of the damage dealt.",
		name = "Bloodbath Frenzy"
	},
	[30086] = {
		description = "Unable to be affected by Haste again.",
		name = "Exhausted"
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
		description = "Heals 1% of your total health per second.",
		name = "Guardian"
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
		description = "Frost Lances are a guaranteed critical hit.",
		name = "Deep Frozen"
	},
	[30107] = {
		description = "Increases the caster's next Frost Shard or Ice Storm Spell Damage.",
		name = "Arctic Piercing"
	},
	[30108] = {
		description = "You receive 50% of the damage taken by the caster.",
		name = "Shackles of Pain"
	},
	[30109] = {
		description = "",
		name = "Healing Percent Modifier"
	},
	[30110] = {
		description = "",
		name = "Fear"
	},
	[30111] = {
		description = "",
		name = "Frostshard Slow"
	},
	[30112] = {
		description = "",
		name = "Venom Grenade"
	},
	[30113] = {
		description = "",
		name = "Erupt"
	},
	[30114] = {
		description = "You are unable to land basic attacks",
		name = "Blind"
	},
	[30115] = {
		description = "",
		name = "Default Snare"
	},
	[30116] = {
		description = "",
		name = "Default Paralyze"
	},
	[30117] = {
		description = "",
		name = "Cold Blast"
	},
	[30118] = {
		description = "",
		name = "Spirit Shield"
	},
	[30119] = {
		description = "",
		name = "Shrapnel Cannon"
	},
	[30120] = {
		description = "",
		name = "Exploitation"
	},
	[30121] = {
		description = "",
		name = "Default Confuse"
	},
	[30122] = {
		description = "",
		name = "Drake Head Cannon"
	},
	[30128] = {
		description = "Your Frost Lances ignore 25% of the Spell Defense of the target.",
		name = "Frostbite"
	},
	[33014] = {
		description = "",
		name = "Dawns Apotheosis"
	},
	[33015] = {
		description = "",
		name = "Witch's Call"
	},
	[33016] = {
		description = "",
		name = "Eye of the Storm"
	},
	[30131] = {
		description = "",
		name = "Crow's Corruption"
	}
}

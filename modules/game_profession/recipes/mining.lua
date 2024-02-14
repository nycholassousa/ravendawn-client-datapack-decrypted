-- chunkname: @/modules/game_profession/recipes/mining.lua

recipes = recipes or {}
recipes[ProfessionMining] = {
	{
		skillRequired = 1,
		name = "Copper Ore",
		id = 30072,
		experience = 240,
		growingTime = 0,
		items = {
			{
				name = "Copper Ore",
				id = 28944,
				count = {
					1,
					3
				}
			}
		}
	},
	{
		skillRequired = 1,
		name = "Rock Ore",
		id = 33847,
		experience = 120,
		growingTime = 0,
		items = {
			{
				name = "Stone",
				id = 28946,
				count = {
					1,
					3
				}
			},
			{
				name = "Salt",
				id = 33551,
				count = {
					1,
					2
				}
			}
		}
	},
	{
		skillRequired = 10,
		name = "Iron Ore",
		id = 30071,
		experience = 290,
		growingTime = 0,
		items = {
			{
				name = "Iron Ore",
				id = 28943,
				count = {
					1,
					3
				}
			},
			{
				name = "Coal",
				id = 28941,
				count = {
					1,
					2
				}
			},
			{
				id = "gem",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 30,
		name = "Cobalt Ore",
		id = 30069,
		experience = 400,
		growingTime = 0,
		items = {
			{
				name = "Cobalt Ore",
				id = 28942,
				count = {
					1,
					3
				}
			},
			{
				name = "Coal",
				id = 28941,
				count = {
					2,
					3
				}
			},
			{
				id = "gem",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		skillRequired = 50,
		name = "Titanium Ore",
		id = 30070,
		experience = 580,
		growingTime = 0,
		items = {
			{
				name = "Titanium Ore",
				id = 28947,
				count = {
					1,
					3
				}
			},
			{
				name = "Coal",
				id = 28941,
				count = {
					4,
					5
				}
			},
			{
				id = "gem",
				count = {
					0,
					1
				}
			}
		}
	}
}

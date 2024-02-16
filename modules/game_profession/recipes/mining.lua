-- chunkname: @/modules/game_profession/recipes/mining.lua

recipes = recipes or {}
recipes[ProfessionMining] = {
	{
		id = 30072,
		name = "Copper Ore",
		experience = 240,
		growingTime = 0,
		skillRequired = 1,
		items = {
			{
				id = 28944,
				name = "Copper Ore",
				count = {
					1,
					3
				}
			}
		}
	},
	{
		id = 33847,
		name = "Rock Ore",
		experience = 120,
		growingTime = 0,
		skillRequired = 1,
		items = {
			{
				id = 28946,
				name = "Stone",
				count = {
					1,
					3
				}
			},
			{
				id = 33551,
				name = "Salt",
				count = {
					1,
					2
				}
			}
		}
	},
	{
		id = 30071,
		name = "Iron Ore",
		experience = 290,
		growingTime = 0,
		skillRequired = 10,
		items = {
			{
				id = 28943,
				name = "Iron Ore",
				count = {
					1,
					3
				}
			},
			{
				id = 28941,
				name = "Coal",
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
		id = 30069,
		name = "Cobalt Ore",
		experience = 400,
		growingTime = 0,
		skillRequired = 30,
		items = {
			{
				id = 28942,
				name = "Cobalt Ore",
				count = {
					1,
					3
				}
			},
			{
				id = 28941,
				name = "Coal",
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
		id = 30070,
		name = "Titanium Ore",
		experience = 580,
		growingTime = 0,
		skillRequired = 50,
		items = {
			{
				id = 28947,
				name = "Titanium Ore",
				count = {
					1,
					3
				}
			},
			{
				id = 28941,
				name = "Coal",
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

-- chunkname: @/modules/game_profession/recipes/mining.lua

recipes = recipes or {}
recipes[ProfessionMining] = {
	{
		skillRequired = 1,
		id = 30072,
		name = "Copper Ore",
		growingTime = 0,
		experience = 240,
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
		skillRequired = 1,
		id = 33847,
		name = "Rock Ore",
		growingTime = 0,
		experience = 120,
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
		skillRequired = 10,
		id = 30071,
		name = "Iron Ore",
		growingTime = 0,
		experience = 290,
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
		skillRequired = 30,
		id = 30069,
		name = "Cobalt Ore",
		growingTime = 0,
		experience = 400,
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
		skillRequired = 50,
		id = 30070,
		name = "Titanium Ore",
		growingTime = 0,
		experience = 580,
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

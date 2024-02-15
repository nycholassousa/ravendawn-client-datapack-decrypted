-- chunkname: @/modules/game_profession/recipes/mining.lua

recipes = recipes or {}
recipes[ProfessionMining] = {
	{
		id = 30072,
		experience = 240,
		name = "Copper Ore",
		growingTime = 0,
		skillRequired = 1,
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
		id = 33847,
		experience = 120,
		name = "Rock Ore",
		growingTime = 0,
		skillRequired = 1,
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
		id = 30071,
		experience = 290,
		name = "Iron Ore",
		growingTime = 0,
		skillRequired = 10,
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
		id = 30069,
		experience = 400,
		name = "Cobalt Ore",
		growingTime = 0,
		skillRequired = 30,
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
		id = 30070,
		experience = 580,
		name = "Titanium Ore",
		growingTime = 0,
		skillRequired = 50,
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

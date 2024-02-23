-- chunkname: @/modules/game_profession/recipes/mining.lua

recipes = recipes or {}
recipes[ProfessionMining] = {
	{
		experience = 240,
		skillRequired = 1,
		id = 30072,
		growingTime = 0,
		name = "Copper Ore",
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
		experience = 120,
		skillRequired = 1,
		id = 33847,
		growingTime = 0,
		name = "Rock Ore",
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
		experience = 290,
		skillRequired = 10,
		id = 30071,
		growingTime = 0,
		name = "Iron Ore",
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
		experience = 400,
		skillRequired = 30,
		id = 30069,
		growingTime = 0,
		name = "Cobalt Ore",
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
		experience = 580,
		skillRequired = 50,
		id = 30070,
		growingTime = 0,
		name = "Titanium Ore",
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

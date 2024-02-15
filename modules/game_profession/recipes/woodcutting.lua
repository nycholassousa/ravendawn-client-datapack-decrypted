-- chunkname: @/modules/game_profession/recipes/woodcutting.lua

recipes = recipes or {}
recipes[ProfessionWoodcutting] = {
	{
		experience = 1600,
		growingTime = 7200,
		name = "Juniper Tree",
		skillRequired = 1,
		id = 34228,
		items = {
			{
				name = "Small Log",
				id = 28977,
				count = {
					4,
					8
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		experience = 6400,
		growingTime = 28800,
		name = "Fir Tree",
		skillRequired = 5,
		id = 34237,
		items = {
			{
				name = "Small Log",
				id = 28977,
				count = {
					20,
					26
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		experience = 4800,
		growingTime = 21600,
		name = "Palm Tree",
		skillRequired = 10,
		id = 34234,
		items = {
			{
				name = "Heavy Log",
				id = 45504,
				count = {
					14,
					19
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		experience = 19000,
		growingTime = 86400,
		name = "Oak Tree",
		skillRequired = 20,
		id = 34231,
		items = {
			{
				name = "Heavy Log",
				id = 45504,
				count = {
					50,
					80
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		experience = 13000,
		growingTime = 57600,
		name = "Wildleaf Tree",
		skillRequired = 35,
		id = 34225,
		items = {
			{
				name = "Sturdy Log",
				id = 45505,
				count = {
					28,
					37
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	},
	{
		experience = 9600,
		growingTime = 43200,
		name = "Willow Tree",
		skillRequired = 50,
		id = 34244,
		items = {
			{
				name = "Fine Log",
				id = 45502,
				count = {
					14,
					19
				}
			},
			{
				name = "Dense Log",
				id = 34371,
				count = {
					0,
					1
				}
			}
		}
	}
}

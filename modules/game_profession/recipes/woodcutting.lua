-- chunkname: @/modules/game_profession/recipes/woodcutting.lua

recipes = recipes or {}
recipes[ProfessionWoodcutting] = {
	{
		id = 34228,
		name = "Juniper Tree",
		growingTime = 7200,
		skillRequired = 1,
		experience = 1600,
		items = {
			{
				id = 28977,
				name = "Small Log",
				count = {
					4,
					8
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		id = 34237,
		name = "Fir Tree",
		growingTime = 28800,
		skillRequired = 5,
		experience = 6400,
		items = {
			{
				id = 28977,
				name = "Small Log",
				count = {
					20,
					26
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		id = 34234,
		name = "Palm Tree",
		growingTime = 21600,
		skillRequired = 10,
		experience = 4800,
		items = {
			{
				id = 45504,
				name = "Heavy Log",
				count = {
					14,
					19
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		id = 34231,
		name = "Oak Tree",
		growingTime = 86400,
		skillRequired = 20,
		experience = 19000,
		items = {
			{
				id = 45504,
				name = "Heavy Log",
				count = {
					50,
					80
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		id = 34225,
		name = "Wildleaf Tree",
		growingTime = 57600,
		skillRequired = 35,
		experience = 13000,
		items = {
			{
				id = 45505,
				name = "Sturdy Log",
				count = {
					28,
					37
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	},
	{
		id = 34244,
		name = "Willow Tree",
		growingTime = 43200,
		skillRequired = 50,
		experience = 9600,
		items = {
			{
				id = 45502,
				name = "Fine Log",
				count = {
					14,
					19
				}
			},
			{
				id = 34371,
				name = "Dense Log",
				count = {
					0,
					1
				}
			}
		}
	}
}

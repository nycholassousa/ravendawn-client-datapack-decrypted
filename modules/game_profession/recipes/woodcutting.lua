-- chunkname: @/modules/game_profession/recipes/woodcutting.lua

recipes = recipes or {}
recipes[ProfessionWoodcutting] = {
	{
		name = "Juniper Tree",
		growingTime = 7200,
		skillRequired = 1,
		experience = 1600,
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
		name = "Fir Tree",
		growingTime = 28800,
		skillRequired = 5,
		experience = 6400,
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
		name = "Palm Tree",
		growingTime = 21600,
		skillRequired = 10,
		experience = 4800,
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
		name = "Oak Tree",
		growingTime = 86400,
		skillRequired = 20,
		experience = 19000,
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
		name = "Wildleaf Tree",
		growingTime = 57600,
		skillRequired = 35,
		experience = 13000,
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
		name = "Willow Tree",
		growingTime = 43200,
		skillRequired = 50,
		experience = 9600,
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

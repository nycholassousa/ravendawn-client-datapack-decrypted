-- chunkname: @/modules/game_profession/recipes/woodcutting.lua

recipes = recipes or {}
recipes[ProfessionWoodcutting] = {
	{
		id = 34228,
		experience = 1600,
		growingTime = 7200,
		skillRequired = 1,
		name = "Juniper Tree",
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
		experience = 6400,
		growingTime = 28800,
		skillRequired = 5,
		name = "Fir Tree",
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
		experience = 4800,
		growingTime = 21600,
		skillRequired = 10,
		name = "Palm Tree",
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
		experience = 19000,
		growingTime = 86400,
		skillRequired = 20,
		name = "Oak Tree",
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
		experience = 13000,
		growingTime = 57600,
		skillRequired = 35,
		name = "Wildleaf Tree",
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
		experience = 9600,
		growingTime = 43200,
		skillRequired = 50,
		name = "Willow Tree",
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

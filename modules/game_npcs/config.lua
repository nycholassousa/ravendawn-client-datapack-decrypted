-- chunkname: @/modules/game_npcs/config.lua

icons = {
	"order",
	"mercenary",
	"villain",
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	"message",
	"history",
	"shop"
}
callbacks = {
	npc_greet = function(data)
		GameNpc:onGreet(data)
	end,
	npc_reply = function(data)
		GameNpc:onReply(data)
	end,
	npc_ungreet = function(data)
		GameNpc:onClose(true)
	end,
	npc_warehouse = function(data)
		PortWarehouse:onOpen(data)
	end,
	npc_tradepost_craft = function(data)
		Tradepost:onOpenCraft(data)
	end,
	npc_tradepost_sell = function(data)
		Tradepost:onOpenSell(data)
	end,
	npc_fishpost = function(data)
		Fishpost:onOpen(data)
	end,
	npc_builder = function(data)
		BuilderShop:show(data)
	end,
	npc_arena = function(data)
		modules.game_arena.show()
	end,
	house_depot = function(data)
		GameBank.show()
	end,
	npc_rangerscompany_shop = function(data)
		RangersCompanyShop:onOpenNpcTrade(data)
	end,
	npc_marketplace = function(data)
		modules.game_market.GameMarket:show()
	end,
	npc_gear_breakdown = function(data)
		GearBreakdownShop:onOpenNpcTrade(data)
	end
}
windowTypes = {
	tradepost_craft = "GameTradepostCraftPanel",
	dialogue = "GameDialoguePanel",
	warehouse = "GameWarehousePanel",
	itemshop = "GameItemShopPanel",
	gear_breakdown_shop = "GameGearBreakdownShopPanel",
	rangers_company_shop = "GameRangersCompanyShopPanel",
	fishpost = "GameFishpostPanel",
	bank = "GameBankPanel",
	tradepost_sell = "GameTradepostSellPanel"
}
bank = {
	rowsPerUnlock = 1,
	baseRavencoinCost = 300,
	baseSilverUnlockCost = {
		1500,
		3000,
		5000
	}
}
protectionLevel = 20

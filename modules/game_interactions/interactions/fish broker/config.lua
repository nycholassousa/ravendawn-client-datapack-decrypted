-- chunkname: @/modules/game_interactions/interactions/fish broker/config.lua

__env = __env or {}
quest_name = "Fish Broker"
current_task = 0
current_interaction = 0
tasks = {
	{
		{
			disconnects = {},
			callbacks = {},
			onStartInteraction = function(self)
				GameInteractions:displayDescriptionBox({
					pages = {
						{
							text = "You caught it! You've got a fresh flopping fish on your back. Yum!"
						},
						{
							text = "If you want some easy silver, you can sell your catch at the closest Fish Broker"
						},
						{
							text = "Most of the ports have them nearby, especially in the big cities!"
						},
						{
							text = "But you can also use their services to turn your catch into sliced fish if you want"
						},
						{
							text = "Sliced fish can be used as a tradepack material just like any other"
						},
						{
							text = "Or as an ingredient to cook delicious meals and keep us strong during our journey!"
						}
					},
					parent = GameInteractions.bandit_avatar,
					callbackOnClose = function()
						GameInteractions:completeInteraction(__env)
					end
				})
			end
		}
	}
}
callbacks = {
	onCustomInteraction = function(data)
		if current_task ~= data.stage then
			GameInteractions:closeActionBox()
			GameInteractions:closeDescriptionBox()
			GameInteractions:advanceInteraction(__env, data.stage or 1, 0)
		else
			GameInteractions:advanceInteraction(__env, data.stage or 1, data.interaction or 0)
		end
	end,
	onTaskUpdate = function(task)
		return
	end,
	onGameStart = function()
		return
	end,
	onGameEnd = function()
		return
	end
}

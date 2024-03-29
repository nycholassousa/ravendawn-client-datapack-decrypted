﻿-- chunkname: @/modules/game_interactions/interactions/trinket/config.lua

__env = __env or {}
quest_name = "Trinket"
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
							text = "Oh, I see your bag is getting more and more stuffed!"
						}
					},
					parent = GameInteractions.bandit_avatar,
					callbackOnClose = function()
						GameInteractions:advanceInteraction(__env, __env.current_task, __env.current_interaction)
					end
				})
			end
		},
		{
			disconnects = {},
			callbacks = {
				UIWidget = {
					onVisibilityChange_inventory = function(self, visible)
						if visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, 3)
						end
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedTrinket = player:getInventoryItem(InventorySlotTrinket)

				if equippedTrinket then
					GameInteractions:advanceInteraction(__env, __env.current_task, __env.current_interaction)

					return
				end

				local inventoryWindow = modules.game_inventory.GameInventory.window

				if not inventoryWindow:isVisible() then
					addEvent(function()
						modules.game_menu.Menu.icon:setOn(true)
					end)

					local parentWidget = modules.game_menu.Menu.window:recursiveGetChildById("inventory")

					GameInteractions:displayActionBox({
						bandit = true,
						text = "Press I or Left-Click to open your Inventory menu",
						preferSide = "top",
						keys = {
							"I",
							MouseLeftButton
						},
						parent = parentWidget
					})
					table.insert(self.disconnects, connect(inventoryWindow, {
						onVisibilityChange = self.callbacks.UIWidget.onVisibilityChange_inventory
					}))
				else
					GameInteractions:advanceInteraction(__env, __env.current_task, 3)
				end
			end
		},
		{
			disconnects = {},
			callbacks = {
				UIWidget = {
					onVisibilityChange_character = function(self, visible)
						if visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, 3)
						end
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedTrinket = player:getInventoryItem(InventorySlotTrinket)

				if not equippedTrinket then
					GameInteractions:advanceInteraction(__env, __env.current_task, 1)

					return
				end

				local characterWindow = modules.game_character.GameCharacter.window

				if not characterWindow:isVisible() then
					addEvent(function()
						modules.game_menu.Menu.icon:setOn(true)
					end)

					local parentWidget = modules.game_menu.Menu.window:recursiveGetChildById("character")

					GameInteractions:displayActionBox({
						bandit = true,
						text = "Press X or Left-Click to open your Character menu",
						preferSide = "top",
						keys = {
							"X",
							MouseLeftButton
						},
						parent = parentWidget
					})
					table.insert(self.disconnects, connect(characterWindow, {
						onVisibilityChange = self.callbacks.UIWidget.onVisibilityChange_character
					}))
				else
					GameInteractions:advanceInteraction(__env, __env.current_task, 3)
				end
			end
		},
		{
			disconnects = {},
			callbacks = {
				UIWidget = {
					onVisibilityChange_inventory = function(self, visible)
						if not visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, 1)
						end
					end,
					onVisibilityChange_character = function(self, visible)
						if not visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, 1)
						end
					end,
					onDragEnter = function(widget)
						widget.draggingLock = g_clock.millis() + 100

						return false
					end
				},
				UIItem = {
					onItemChange = function(self, item, oldItem)
						scheduleEvent(function()
							GameInteractions:advanceInteraction(__env, __env.current_task, 1)
						end, 1000)
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedTrinket = player:getInventoryItem(InventorySlotTrinket)

				if equippedTrinket then
					local characterWindow = modules.game_character.GameCharacter.window

					if not characterWindow:isVisible() then
						GameInteractions:advanceInteraction(__env, __env.current_task, 1)

						return
					end

					modules.game_character.GameCharacter:selectTab("equipment")

					local itemSlot = characterWindow:recursiveGetChildById("trinket")

					GameInteractions:displayDescriptionBox({
						bandit = true,
						pages = {
							{
								text = "This is what's called a trinket!"
							},
							{
								text = "And it's not just a simple gear, as they give you a unique bonus!"
							},
							{
								text = "Some trinkets have passive effects, meaning you can benefit from them just by having it equipped"
							},
							{
								text = "But other effects must be activated through the action bar"
							},
							{
								text = "Just keep in mind active effects have a cooldown time, So you have to wait a while before using them again!"
							},
							{
								text = "To equip a trinket, just (right-click) it like any other gear"
							},
							{
								text = "Make sure you test every trinket you receive in the future. It's the only way to learn which one suits you the best!"
							}
						},
						parent = itemSlot,
						callbackOnClose = function()
							GameInteractions:completeInteraction(__env)
						end
					})
					table.insert(self.disconnects, connect(characterWindow, {
						onVisibilityChange = self.callbacks.UIWidget.onVisibilityChange_character
					}))
					table.insert(self.disconnects, connect(itemSlot, {
						onDragEnter = self.callbacks.UIWidget.onDragEnter,
						onItemChange = self.callbacks.UIItem.onItemChange
					}, true))
				else
					addEvent(function()
						modules.game_inventory.GameInventory:selectInventoryType("normal")
					end)
					table.insert(self.disconnects, connect(g_game, {
						onRefreshItems = function()
							self:displayInventoryInteraction()
						end
					}))
				end
			end,
			displayInventoryInteraction = function(self)
				local inventoryWindow = modules.game_inventory.GameInventory.window

				if not inventoryWindow:isVisible() then
					GameInteractions:advanceInteraction(__env, __env.current_task, 1)

					return
				end

				if not modules.game_inventory.GameInventory.normalPanel:isVisible() then
					modules.game_inventory.GameInventory:selectInventoryType("normal")
				end

				local parentWidget = modules.game_inventory.GameInventory:findItemWidgetByItemType("normalPanel", "trinket")

				if not parentWidget then
					GameInteractions:completeInteraction(__env)
					GameNotification:display(NOTIFICATION_ERROR, nil, "You don't have any trinket, interaction was cancelled.")

					return
				end

				local parentPanel = parentWidget:getParent():getParent()

				parentPanel:ensureChildVisible(parentWidget)
				GameInteractions:displayDescriptionBox({
					bandit = true,
					pages = {
						{
							text = "This is what's called a trinket!"
						},
						{
							text = "And it's not just a simple gear, as they give you a unique bonus!"
						},
						{
							text = "Some trinkets have passive effects, meaning you can benefit from them just by having it equipped"
						},
						{
							text = "But other effects must be activated through the action bar"
						},
						{
							text = "Just keep in mind active effects have a cooldown time, So you have to wait a while before using them again!"
						},
						{
							text = "To equip a trinket, just (right-click) it like any other gear"
						},
						{
							text = "Make sure you test every trinket you receive in the future. It's the only way to learn which one suits you the best!"
						}
					},
					parent = parentWidget,
					callbackOnClose = function()
						GameInteractions:completeInteraction(__env)
					end
				})
				table.insert(self.disconnects, connect(inventoryWindow, {
					onVisibilityChange = self.callbacks.UIWidget.onVisibilityChange_inventory
				}))
				table.insert(self.disconnects, connect(parentWidget, {
					onDragEnter = self.callbacks.UIWidget.onDragEnter,
					onItemChange = self.callbacks.UIItem.onItemChange
				}, true))
				table.insert(self.disconnects, connect(parentPanel.verticalScrollBar, {
					onValueChange = function()
						parentPanel:ensureChildVisible(parentWidget)
					end
				}))
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

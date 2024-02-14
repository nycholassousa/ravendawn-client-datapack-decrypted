-- chunkname: @/modules/game_interactions/interactions/fishing rod/config.lua

__env = __env or {}
quest_name = "Fishing Rod"
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
							text = tr("Hey, %s. That's a fishing rod that you're carrying, isn't it?", g_game.getCharacterName())
						},
						{
							text = "Did you know you have a specific slot for that, along with your gear?"
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
							GameInteractions:advanceInteraction(__env, __env.current_task, 2)
						end
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedFishingRod = player:getInventoryItem(InventorySlotFishingRod)

				if equippedFishingRod then
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
						text = "Press I or Left-Click to open your Inventory menu",
						bandit = true,
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
					GameInteractions:advanceInteraction(__env, __env.current_task, 2)
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
				local equippedFishingRod = player:getInventoryItem(InventorySlotFishingRod)

				if equippedFishingRod then
					GameInteractions:advanceInteraction(__env, __env.current_task, 3)
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

				local parentWidget = modules.game_inventory.GameInventory:findItemWidgetByItemType("normalPanel", "fishing rod")

				if not parentWidget then
					GameInteractions:completeInteraction(__env)
					GameNotification:display(NOTIFICATION_ERROR, nil, "You don't have any fishing rod, interaction was cancelled.")

					return
				end

				local parentPanel = parentWidget:getParent():getParent()

				parentPanel:ensureChildVisible(parentWidget)
				GameInteractions:displayActionBox({
					text = " Right-click the fishing rod in order to equip them!",
					bandit = true,
					preferSide = "top",
					keys = {
						MouseRightButton
					},
					parent = parentWidget
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
		},
		{
			disconnects = {},
			callbacks = {
				UIWidget = {
					onVisibilityChange_inventory = function(self, visible)
						if visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, 4)
						end
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedFishingHook = player:getInventoryItem(InventorySlotFishingHook)

				if equippedFishingHook then
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
						text = "Press I or Left-Click to open your Inventory menu",
						bandit = true,
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
					GameInteractions:advanceInteraction(__env, __env.current_task, 4)
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
					onDragEnter = function(widget)
						widget.draggingLock = g_clock.millis() + 100

						return false
					end
				},
				UIItem = {
					onItemChange = function(self, item, oldItem)
						scheduleEvent(function()
							GameInteractions:advanceInteraction(__env, __env.current_task, 3)
						end, 1000)
					end
				}
			},
			onStartInteraction = function(self)
				local player = g_game.getLocalPlayer()
				local equippedFishingHook = player:getInventoryItem(InventorySlotFishingHook)

				if equippedFishingHook then
					GameInteractions:advanceInteraction(__env, __env.current_task, 5)
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
					GameInteractions:advanceInteraction(__env, __env.current_task, 3)

					return
				end

				if not modules.game_inventory.GameInventory.normalPanel:isVisible() then
					modules.game_inventory.GameInventory:selectInventoryType("normal")
				end

				local parentWidget = modules.game_inventory.GameInventory:findItemWidgetByItemType("normalPanel", "fishing hook")

				if not parentWidget then
					GameInteractions:completeInteraction(__env)
					GameNotification:display(NOTIFICATION_ERROR, nil, "You don't have any fishing hook, interaction was cancelled.")

					return
				end

				local parentPanel = parentWidget:getParent():getParent()

				parentPanel:ensureChildVisible(parentWidget)
				GameInteractions:displayActionBox({
					text = "Now equip the fishing hook with a right-click as well",
					bandit = true,
					preferSide = "top",
					keys = {
						MouseRightButton
					},
					parent = parentWidget
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
		},
		{
			disconnects = {},
			callbacks = {},
			onStartInteraction = function(self)
				GameInteractions:displayDescriptionBox({
					pages = {
						{
							text = "These may be quite rustic, but I'm sure you can find or even craft better ones with time"
						},
						{
							text = "Well, you're all equipped, now!"
						},
						{
							text = "So all you've gotta do is toss the line into the water above a school of fish"
						},
						{
							text = "Sooner or later, one will bite!"
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

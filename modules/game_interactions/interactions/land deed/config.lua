-- chunkname: @/modules/game_interactions/interactions/land deed/config.lua

__env = __env or {}
quest_name = "Land Deed"
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
							text = "Did you see you also received a parchment from that carrier crow?"
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
					onVisibilityChange = function(widget, visible)
						GameInteractions.action_window:setVisible(visible)
					end,
					onVisibilityChange_inventory = function(widget, visible)
						if visible then
							GameInteractions:advanceInteraction(__env, __env.current_task, __env.current_interaction)
						end
					end
				}
			},
			onStartInteraction = function(self)
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
					GameInteractions:advanceInteraction(__env, __env.current_task, __env.current_interaction)
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
				addEvent(function()
					modules.game_inventory.GameInventory:selectInventoryType("normal")
				end)
				table.insert(self.disconnects, connect(g_game, {
					onRefreshItems = function()
						self:displayInventoryInteraction()
					end
				}))
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

				local parentWidget = modules.game_inventory.GameInventory:findItemWidgetByItemType("normalPanel", "land deed")

				if not parentWidget then
					GameInteractions:completeInteraction(__env)
					GameNotification:display(NOTIFICATION_ERROR, nil, "You don't have any land deed, interaction was cancelled.")

					return
				end

				local parentPanel = parentWidget:getParent():getParent()

				parentPanel:ensureChildVisible(parentWidget)
				GameInteractions:displayDescriptionBox({
					bandit = true,
					pages = {
						{
							text = "That's a Small Land Deed! It means we can finally buy our own house!",
							callback = function(self)
								self.bandit = true
								self.newParent = parentWidget
							end
						},
						{
							text = "Whenever you find a small plot of land you'd like to acquire, you can buy it by opening the Housing mode, just like you do in the Community Farm!",
							callback = function(self)
								self.bandit = false
								self.newParent = modules.game_minimap.minimapWindow:recursiveGetChildById("houseMakerButton")
							end
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

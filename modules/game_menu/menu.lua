-- chunkname: @/modules/game_menu/menu.lua

Menu = {
	notifications = {}
}

function Menu.init()
	g_ui.importStyle("menu.otui")

	Menu.window = g_ui.createWidget("MenuWidget", modules.game_interface.getHUDPanel())
	Menu.icon = g_ui.createWidget("MenuIcon", modules.game_interface.getHUDPanel())
	Menu.minimizeButton = g_ui.createWidget("MenuMinimizeButton", modules.game_interface.getHUDPanel())
	Menu.tooltip = g_ui.createWidget("MenuTooltip", modules.game_interface.getHUDPanel())

	local menuIcon = g_ui.createWidget("MenuNotificationIcon", Menu.icon)

	menuIcon:setImageOffset({
		x = -16,
		y = 16
	})
	menuIcon:setVisible(false)
	connect(g_game, {
		onGameEnd = Menu.onGameEnd,
		onGameStart = Menu.onGameStart,
		onCutsceneModeChange = Menu.onCutsceneModeChange,
		onHouseModeChange = Menu.onHouseModeChange
	})

	Menu.lastWindowSize = g_window.getSize()

	Menu.onResize()
	connect(rootWidget, {
		onUIResize = Menu.onResize
	})
	connect(LocalPlayer, {
		onLevelChange = Menu.onLevelChange
	})
	g_keyboard.bindKeyDown("Escape", Menu.tryCloseWindow)
	addEvent(function()
		Menu.setup()
		Menu.setupNotifications()
		Menu.icon:setOn(true)
	end)
end

function Menu.terminate()
	Menu.window:destroy()
	Menu.icon:destroy()
	Menu.minimizeButton:destroy()
	Menu.tooltip:destroy()

	for id, notification in pairs(Menu.notifications) do
		notification.callback()

		Menu.notifications[id] = nil
	end

	for _, menu in ipairs(Menu.widgets) do
		for _, disconnects in ipairs(menu.callbacks or {}) do
			for _, disconnect in ipairs(disconnects) do
				disconnect()
			end
		end
	end

	disconnect(g_game, {
		onGameEnd = Menu.onGameEnd,
		onGameStart = Menu.onGameStart,
		onCutsceneModeChange = Menu.onCutsceneModeChange,
		onHouseModeChange = Menu.onHouseModeChange
	})
	disconnect(rootWidget, {
		onUIResize = Menu.onResize
	})
	disconnect(LocalPlayer, {
		onLevelChange = Menu.onLevelChange
	})
	g_keyboard.unbindKeyDown("Escape")
end

function Menu.setup()
	Menu.modules = {
		{
			unlockLevel = 1,
			name = "Character (X)",
			icon = "character",
			callback = modules.game_character.GameCharacter.toggle,
			window = modules.game_character.GameCharacter.window
		},
		{
			unlockLevel = 1,
			name = "Inventory (I)",
			icon = "inventory",
			callback = modules.game_inventory.GameInventory.toggle,
			window = modules.game_inventory.GameInventory.window
		},
		{
			separator = true,
			name = "Infusion (U)",
			icon = "infusion",
			unlockLevel = 7,
			callback = modules.game_infusion.GameInfusion.toggle,
			window = modules.game_infusion.GameInfusion.window
		},
		{
			unlockLevel = 10,
			name = "RavenCards (G)",
			icon = "ravencards",
			callback = modules.game_cards.GameCards.toggleCollectionWindow,
			window = modules.game_cards.GameCards.collection_window
		},
		{
			unlockLevel = 1,
			name = "Archetypes (K)",
			icon = "skill_tree",
			callback = modules.game_spelltree.GameSpellTree.toggle,
			window = modules.game_spelltree.GameSpellTree.window
		},
		{
			unlockLevel = 5,
			name = "Professions (P)",
			icon = "professions",
			callback = modules.game_professions.GameProfessions.toggle,
			window = modules.game_professions.GameProfessions.window
		},
		{
			separator = true,
			name = "Reputation (H)",
			icon = "reputation",
			unlockLevel = 5,
			callback = modules.game_reputation.GameReputation.toggle,
			window = modules.game_reputation.GameReputation.window
		},
		{
			unlockLevel = 9,
			name = "Transport (Y)",
			icon = "transports",
			callback = modules.game_transport.GameTransport.toggle,
			window = modules.game_transport.GameTransport.window
		},
		{
			unlockLevel = 1,
			name = "Map (M)",
			icon = "map",
			callback = g_worldMap.toggle,
			window = g_worldMap.window
		},
		{
			unlockLevel = 1,
			name = "Quest (L)",
			icon = "quests",
			callback = modules.game_questlog.GameQuestLog.toggle,
			window = modules.game_questlog.GameQuestLog.window
		},
		{
			unlockLevel = 15,
			name = "Rangers Company (B)",
			icon = "rangers_company",
			callback = function()
				modules.game_rangerscompany.GameRangersCompany.toggleRangersWindow()
			end,
			window = modules.game_rangerscompany.GameRangersCompany.rangers_window
		},
		{
			unlockLevel = 6,
			name = "Tradepack (T)",
			icon = "tradepack",
			callback = modules.game_tradepacks.GameTradepacks.toggle,
			window = modules.game_tradepacks.GameTradepacks.window
		},
		{
			separator = true,
			name = "Journal (J)",
			icon = "journal",
			unlockLevel = 18,
			callback = modules.game_journal.GameJournal.toggle,
			window = modules.game_journal.GameJournal.window
		},
		{
			unlockLevel = 15,
			name = "Guild (V)",
			icon = "guild",
			callback = modules.game_guild.GameGuild.toggle,
			window = modules.game_guild.GameGuild.window
		},
		{
			unlockLevel = 5,
			name = "Social (N)",
			icon = "social",
			callback = modules.game_social.GameSocial.toggle,
			window = modules.game_social.GameSocial.window
		},
		{
			unlockLevel = 5,
			name = "Tutorial",
			icon = "tutorial",
			callback = modules.game_interactions.GameInteractions.toggleListWindow,
			window = modules.game_interactions.GameInteractions.list_window
		},
		{
			unlockLevel = 5,
			name = "RavenStore",
			icon = "ravenstore",
			callback = function()
				modules.game_premium_store.GamePremiumStore:toggle()
			end,
			window = modules.game_premium_store.GamePremiumStore.window
		},
		{
			unlockLevel = 1,
			name = "Settings (O)",
			icon = "settings",
			callback = modules.game_settings.GameSettings.toggle,
			window = modules.game_settings.GameSettings.window
		},
		{
			unlockLevel = 1,
			name = "Feedback",
			ignore = true,
			callback = modules.game_feedback.toggle,
			window = modules.game_feedback.feedbackWindow
		},
		{
			unlockLevel = 1,
			name = "House",
			ignore = true,
			callback = function()
				modules.game_house.GameHouse:toggleHouseMode()
			end,
			window = modules.game_house.GameHouse.top_panel
		},
		{
			unlockLevel = 1,
			name = "CraftingWindow",
			ignore = true,
			callback = function()
				modules.game_professions.GameProfessions:hideCraftingWindow()
			end,
			window = modules.game_professions.GameProfessions.crafting_window.window
		},
		{
			unlockLevel = 1,
			name = "NPCWindow",
			ignore = true,
			callback = function()
				modules.game_npcs.GameNpc:onClose()
			end,
			window = modules.game_npcs.GameNpc.window
		},
		{
			unlockLevel = 1,
			name = "BountyWindow",
			ignore = true,
			callback = function()
				modules.game_rangerscompany.GameRangersCompany:closeBountyWindow()
			end,
			window = modules.game_rangerscompany.GameRangersCompany.bounty_window
		},
		{
			unlockLevel = 1,
			name = "CardOpeningWindow",
			ignore = true,
			callback = function()
				modules.game_cards.GameCards:hideAnimationPanel()
			end,
			window = modules.game_cards.GameCards.animation_panel
		},
		{
			unlockLevel = 1,
			name = "Report Player",
			ignore = true,
			callback = function()
				modules.game_player_report.GamePlayerReport:hide()
			end,
			window = modules.game_player_report.GamePlayerReport.window
		}
	}

	if g_game.isRavenQuest() then
		local ok, position = table.findbyfield(Menu.modules, "icon", "tutorial")

		if ok then
			table.insert(Menu.modules, position, {
				name = "Achievements (Ctrl+J)",
				icon = "achievements",
				callback = modules.game_achievements.GameAchievements.toggle,
				window = modules.game_achievements.GameAchievements.window
			})
		end
	end

	Menu.interfaces = {
		{
			windows = {
				Menu.window,
				Menu.icon
			}
		},
		{
			windows = {
				modules.game_minimap.minimapWindow
			}
		},
		{
			windows = {
				modules.game_chat.GameChat.window
			}
		},
		{
			windows = {
				modules.game_questlog.taskListHud
			}
		},
		{
			windows = {
				modules.game_battle.BattleList.window
			}
		},
		{
			windows = {
				modules.game_healthinfo.healthBar,
				modules.game_healthinfo.manaBar,
				modules.game_healthinfo.experienceBar,
				modules.game_healthinfo.partyHud,
				modules.game_healthinfo.resourceBars[1],
				modules.game_healthinfo.mountHud
			}
		},
		{
			windows = {
				modules.game_lootnotification.GameLootNotification.window,
				modules.game_questlog.DynamicEvent.window,
				modules.game_notification.GameNotification.window,
				modules.game_notification.GameNotification.screenMessage,
				modules.game_interactions.GameInteractions.bandit_avatar,
				modules.game_interactions.GameInteractions.action_window,
				modules.game_interactions.GameInteractions.description_window,
				modules.game_interactions.GameInteractions.list_window
			}
		},
		{
			windows = unpack(AbilityBar.barWidgets)
		},
		{
			callback = modules.game_abilitybar.AbilityBar.updateInterfaceHideElements
		}
	}

	local width = Menu.window.iconList:getMarginLeft() + Menu.window.iconList:getMarginRight()

	for _, d in ipairs(Menu.modules) do
		if not d.ignore then
			local widget = g_ui.createWidget("MenuWidgetIcon", Menu.window.iconList)

			widget:setId(d.icon)

			widget.iconDescription = d.name

			widget:setImageSource(string.format("/images/ui/windows/menu/icons/%s", d.icon))

			widget.onHoverChange = Menu.onIconHoverChange
			widget.hoverSound = true
			widget.clickSound = not d.window.isGeneralUIWindow

			function widget.onClick()
				if widget.lock:isVisible() then
					return
				end

				d.callback(true)
			end

			width = width + widget:getWidth() + Menu.window.iconList:getLayout():getSpacing()

			if d.separator then
				local separator = g_ui.createWidget("MenuSeparatorBar", Menu.window.iconList)

				width = width + separator:getWidth() + Menu.window.iconList:getLayout():getSpacing()
			end
		end
	end

	Menu.window:setWidth(width)

	local player = g_game.getLocalPlayer()

	if player then
		Menu.onLevelChange(player, player:getLevel())
	end
end

function Menu.setupNotifications()
	Menu.widgets = {
		{
			notifications = {
				["character stats"] = {
					unlockLevel = 1,
					name = "character stats",
					rootIndex = 1,
					remove = modules.game_character.GameCharacter.window.content.stats_panel,
					icons = {
						{
							widget = "character",
							offset = {
								x = 4,
								y = -2
							}
						},
						{
							widget = modules.game_character.GameCharacter.window.panel_top.selection_panel.stats,
							offset = {
								x = -25,
								y = 8
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_character.GameCharacter, {
					onUpdateAttributePoints = function(oldPoints, points)
						if oldPoints and oldPoints >= 0 and oldPoints < points then
							Menu:addNotification(Menu.widgets[1].notifications["character stats"])
						end
					end
				})
			}
		},
		{
			notifications = {
				["ravencard packs"] = {
					unlockLevel = 10,
					name = "ravencard packs",
					rootIndex = 2,
					remove = modules.game_character.GameCards.animation_panel.packs_panel,
					icons = {
						{
							widget = "ravencards",
							offset = {
								x = 4,
								y = -2
							}
						},
						{
							widget = modules.game_character.GameCards.header_panel.packs.holder.count_box,
							offset = {
								x = 12,
								y = -12
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_cards.GameCards, {
					onUpdateTotalPacks = function(oldPacks, packs)
						if oldPacks and oldPacks >= 0 and oldPacks < packs then
							Menu:addNotification(Menu.widgets[2].notifications["ravencard packs"])
						end
					end
				})
			}
		},
		{
			notifications = {
				archetypes = {
					unlockLevel = 1,
					name = "archetypes",
					rootIndex = 3,
					remove = modules.game_spelltree.GameSpellTree.archetypesPanel,
					icons = {
						{
							widget = "skill_tree",
							offset = {
								x = 4,
								y = -2
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_spelltree.GameSpellTree, {
					onUpdateSkillPoints = function(oldPoints, points)
						if oldPoints and oldPoints >= 0 and oldPoints < points then
							Menu:addNotification(Menu.widgets[3].notifications.archetypes)
						end
					end,
					onUnlockArchetype = function()
						Menu:addNotification(Menu.widgets[3].notifications.archetypes)
					end
				})
			}
		},
		{
			notifications = {
				addEvent(function()
					local professionModule = modules.game_professions.GameProfessions

					for professionId = ProfessionFirst, ProfessionLast do
						local t = {
							unlockLevel = 1,
							rootIndex = 4,
							name = "professions_" .. professionId,
							remove = professionModule.attached_panels[ProfessionNames[professionId]:lower()],
							icons = {
								{
									widget = "professions",
									offset = {
										x = 4,
										y = -2
									}
								},
								{
									widget = professionModule:getProfessionButton(professionId),
									offset = {
										x = 4,
										y = -2
									}
								},
								{
									widget = professionModule.window.content[ProfessionNames[professionId]:lower()].right_panel.bottom_panel.passive_button,
									offset = {
										x = 4,
										y = -2
									}
								}
							}
						}

						Menu.widgets[t.rootIndex].notifications[t.name] = t
					end
				end)
			},
			callbacks = {
				connect(modules.game_professions.GameProfessions, {
					onUpdatePassivePoints = function(professionId, oldPoints, points)
						if oldPoints and oldPoints >= 0 and oldPoints < points then
							Menu:addNotification(Menu.widgets[4].notifications[string.format("professions_%d", professionId)])
						end
					end
				})
			}
		},
		{
			notifications = {
				["friends request"] = {
					unlockLevel = 1,
					name = "friends request",
					rootIndex = 5,
					remove = modules.game_social.GameSocial.window.content.friends_panel.content.request_panel,
					icons = {
						{
							widget = "social",
							offset = {
								x = 4,
								y = -2
							}
						},
						{
							widget = modules.game_social.GameSocial.window.selection_panel.friends,
							offset = {
								x = -12,
								y = 4
							}
						}
					}
				},
				["party request"] = {
					unlockLevel = 1,
					name = "party request",
					rootIndex = 5,
					remove = modules.game_social.GameSocial.window.content.party_panel.content.request_panel.list,
					icons = {
						{
							widget = "social",
							offset = {
								x = 4,
								y = -2
							}
						},
						{
							widget = modules.game_social.GameSocial.window.selection_panel.party,
							offset = {
								x = -10,
								y = 4
							}
						}
					}
				},
				["mail receive"] = {
					unlockLevel = 1,
					name = "mail receive",
					rootIndex = 5,
					remove = modules.game_social.GameSocial.window.content.mail_panel.content.messages_panel,
					icons = {
						{
							widget = "social",
							offset = {
								x = 4,
								y = -2
							}
						},
						{
							widget = modules.game_social.GameSocial.window.selection_panel.mail,
							offset = {
								x = -12,
								y = 4
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_social.GameSocial, {
					onUpdateFriendsPanel = function(oldCount, count)
						if oldCount and oldCount >= 0 and oldCount < count then
							Menu:addNotification(Menu.widgets[5].notifications["friends request"])
						end
					end,
					onUpdatePartyPanel = function(oldCount, count)
						if oldCount and oldCount >= 0 and oldCount < count then
							Menu:addNotification(Menu.widgets[5].notifications["party request"])
						end
					end,
					onUpdateMailPanel = function(oldCount, count)
						if oldCount and oldCount >= 0 and oldCount < count then
							Menu:addNotification(Menu.widgets[5].notifications["mail receive"])
						end
					end
				})
			}
		},
		{
			notifications = {
				transport = {
					unlockLevel = 1,
					name = "transport",
					rootIndex = 6,
					remove = modules.game_transport.GameTransport.window,
					icons = {
						{
							widget = "transports",
							offset = {
								x = 4,
								y = -2
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_transport.GameTransport, {
					onUpdateTransport = function()
						Menu:addNotification(Menu.widgets[6].notifications.transport)
					end
				})
			}
		},
		{
			notifications = {
				reputation = {
					unlockLevel = 5,
					name = "reputation",
					rootIndex = 7,
					remove = modules.game_reputation.GameReputation.window,
					icons = {
						{
							widget = "reputation",
							offset = {
								x = 4,
								y = -2
							}
						}
					}
				}
			},
			callbacks = {
				connect(modules.game_reputation.GameReputation, {
					onUpdateReputationPoints = function(oldPoints, points)
						if oldPoints and oldPoints >= 0 and oldPoints < points then
							Menu:addNotification(Menu.widgets[7].notifications.reputation)
						end
					end
				})
			}
		}
	}
end

function Menu.onIconHoverChange(widget, hovered)
	if hovered then
		local text = widget.iconDescription

		if widget.lock:isVisible() then
			text = string.format("This menu option will be unlocked at legacy level %d.", widget.unlockLevel)
		end

		Menu.tooltip:setText(text)
		Menu.tooltip:raise()
		Menu.tooltip:show()
		Menu.tooltip:setAnchoredPosition(widget, AnchorTop, 30)
	else
		Menu.tooltip:hide()
	end
end

function Menu.onGameStart()
	Menu.icon:setOn(false)
	Menu.closeAllWindows()

	local player = g_game.getLocalPlayer()

	if player then
		Menu.onLevelChange(player, player:getLevel())
	end

	local char = g_game.getCharacterName()
	local notifications = g_settings.getNode("game_menu")

	if notifications and notifications[char] then
		for index, t in pairs(notifications[char]) do
			local value = Menu.widgets[tonumber(index)]

			if value and value.notifications then
				for _, name in pairs(t) do
					Menu:addNotification(value.notifications[name])
				end
			end
		end
	end
end

function Menu.onGameEnd()
	if not modules.game_settings.getOption("hideInterface") then
		Menu.toggleInterface(false)
	end

	local char = g_game.getCharacterName()
	local notifications = g_settings.getNode("game_menu") or {}

	notifications[char] = {}

	for _, notification in pairs(Menu.notifications) do
		local t = notifications[char][notification.rootIndex] or {}

		table.insert(t, notification.name)

		notifications[char][notification.rootIndex] = t
	end

	g_settings.setNode("game_menu", notifications)
	g_settings.save()

	for id, notification in pairs(Menu.notifications) do
		notification.callback()

		Menu.notifications[id] = nil
	end
end

function Menu.onResize(force)
	if not Menu.modules then
		return
	end

	local size = g_window.getSize()

	if not force and Menu.lastWindowSize.width == size.width and Menu.lastWindowSize.height == size.height then
		return
	end

	Menu.lastWindowSize = size

	local widthScale = size.width / 1920
	local heightScale = size.height / 1080

	if g_window.isMaximized() and (widthScale == 1 or heightScale == 1) then
		g_app.scale(1 * (Menu.scaleMultiplier or 1))

		return
	end

	local scale = math.min(1.35, math.min(widthScale, heightScale))

	scale = math.max(0.65, math.ceil(scale * 20) / 20)

	local platform = g_app.getOs()

	if platform ~= "mac" and platform ~= "linux" then
		g_app.scale(scale * (Menu.scaleMultiplier or 1))
	end
end

function Menu.tryCloseWindow()
	local panel = modules.game_interface.getHUDPanel()

	if not panel or not panel:isVisible() then
		return
	end

	table.sort(Menu.modules, function(a, b)
		return panel:getChildIndex(a.window) > panel:getChildIndex(b.window)
	end)

	for _, data in ipairs(Menu.modules) do
		if data.window and data.window:isVisible() then
			data.callback()

			return
		end
	end
end

function Menu.closeAllWindows(excludeList)
	for _, data in pairs(Menu.modules) do
		if data.window and data.window:isVisible() and (not excludeList or not table.contains(excludeList, data.name)) then
			data.callback()
		end
	end
end

function Menu.onInterfaceVisibilityChange(widget, visible)
	if Menu.isHiddingInterface and widget:isVisible() then
		widget:setVisible(false)
	end
end

function Menu.hideWindows(windows, ignoreShow)
	for _, widget in ipairs(windows) do
		if not Menu.isHiddingInterface then
			disconnect(widget, {
				onVisibilityChange = Menu.onInterfaceVisibilityChange
			})

			if widget.hideInterfaceOptionEnabled then
				widget:show()
			end

			widget.hideInterfaceOptionEnabled = nil
		elseif not widget.hideInterfaceOptionEnabled then
			if type(widget) == "table" then
				table.print(widget)
			end

			widget.hideInterfaceOptionEnabled = widget:isVisible()

			widget:hide()
			connect(widget, {
				onVisibilityChange = Menu.onInterfaceVisibilityChange
			})
		end
	end
end

function Menu.updateInterfacesHideOption()
	for _, config in ipairs(Menu.interfaces) do
		if config.windows then
			Menu.hideWindows(config.windows)
		end

		if config.callback then
			config.callback()
		end
	end
end

function Menu.toggleInterface(value)
	Menu.isHiddingInterface = value

	addEvent(Menu.updateInterfacesHideOption)
end

function Menu.onWindowVisibilityChange(widget, visible)
	if widget.isHidding and visible then
		widget:setVisible(false)
	end
end

function Menu.toggleWindows(value, showAll, excludeList)
	for _, data in pairs(Menu.modules) do
		if not excludeList or not table.find(excludeList, data.name) then
			if not value then
				disconnect(data.window, {
					onVisibilityChange = Menu.onWindowVisibilityChange
				})

				if data.window.isHidding then
					if showAll and data.window.wasVisible then
						data.window:show()
					end

					data.window.isHidding = nil
				end

				data.window.wasVisible = nil
			elseif not data.window.isHidding then
				data.window.wasVisible = data.window:isVisible()

				data.window:hide()
				connect(data.window, {
					onVisibilityChange = Menu.onWindowVisibilityChange
				})

				data.window.isHidding = true
			end
		end
	end
end

function Menu.onCutsceneModeChange(value)
	modules.game_interface.getHUDPanel():setVisible(not value)
end

function Menu.onHouseModeChange(value)
	if not modules.game_settings.getOption("hideInterface") then
		Menu.toggleInterface(value)
	end

	Menu.toggleWindows(value, true, {
		"House"
	})

	if not value then
		addEvent(function()
			Menu.icon:setOn(false)
		end)
	end
end

function Menu.onLevelChange(localPlayer, level)
	for _, data in pairs(Menu.modules) do
		if data.unlockLevel and level < data.unlockLevel then
			local widget = Menu.window:recursiveGetChildById(data.icon)

			if widget then
				widget.unlockLevel = data.unlockLevel

				widget.lock:show()
			end

			if data.window and not data.window.__menuDisconnects then
				local disconnects = connect(data.window, {
					onVisibilityChange = function(widget, visible)
						if visible then
							widget:hide()
						end
					end
				})

				data.window.__menuDisconnects = disconnects
			end
		else
			local widget = Menu.window:recursiveGetChildById(data.icon)

			if widget then
				widget.lock:hide()
			end

			if data.window and data.window.__menuDisconnects then
				for _, disconnect in ipairs(data.window.__menuDisconnects) do
					disconnect()
				end

				data.window.__menuDisconnects = nil
			end
		end
	end
end

function Menu:addNotification(widgets)
	local removeWidget = widgets and widgets.remove

	if not removeWidget or removeWidget:isVisible() or Menu.notifications[removeWidget:getId()] then
		return
	end

	local player = widgets.unlockLevel and g_game.getLocalPlayer()

	if player and widgets.unlockLevel > player:getLevel() then
		return
	end

	local icons = {}

	for _, widget in ipairs(widgets.icons) do
		local currentWidget = widget.widget

		if type(currentWidget) == "string" then
			currentWidget = Menu.window.iconList:getChildById(currentWidget)
		end

		local icon = g_ui.createWidget("MenuNotificationIcon", currentWidget)

		if widget.offset then
			icon:setImageOffset(widget.offset)
		end

		table.insert(icons, icon)
	end

	local function onRemoveVisibilityChange(widget, visible)
		if visible then
			for _, icon in ipairs(icons) do
				icon:destroy()
			end

			Menu.notifications[widget:getId()] = nil

			disconnect(widget, {
				onVisibilityChange = onRemoveVisibilityChange
			})

			if table.empty(Menu.notifications) then
				Menu.icon.notificationIcon:setVisible(false)
			end
		end
	end

	Menu.notifications[removeWidget:getId()] = {
		name = widgets.name,
		rootIndex = widgets.rootIndex,
		callback = function()
			onRemoveVisibilityChange(removeWidget, true)
		end
	}

	connect(removeWidget, {
		onVisibilityChange = onRemoveVisibilityChange
	}, true)
	Menu.icon.notificationIcon:setVisible(true)
end

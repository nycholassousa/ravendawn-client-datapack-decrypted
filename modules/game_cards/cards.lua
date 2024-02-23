-- chunkname: @/modules/game_cards/cards.lua

GameCards = {
	display_type = "list",
	shards = 0,
	cards_per_page = 9,
	page = 1,
	unlocked_card_count = 0,
	filter = {},
	cards = {},
	listCardWidgets = {},
	gridCardWidgets = {},
	card_packs = {},
	pity_chance = {},
	upgrade_shard_cost = {
		[CARD_RARITY_COMMON] = 0,
		[CARD_RARITY_UNCOMMON] = 60,
		[CARD_RARITY_GRAND] = 300,
		[CARD_RARITY_RARE] = 1400,
		[CARD_RARITY_ARCANE] = 7000,
		[CARD_RARITY_MYTHIC] = 36000,
		[CARD_RARITY_LEGENDARY] = 180000
	}
}

function GameCards:init()
	dofile("config.lua")
	g_ui.importStyle("styles/collection.otui")
	g_ui.importStyle("styles/filter_panel.otui")
	g_ui.importStyle("styles/view_panel.otui")

	if g_game.isRavenQuest() then
		g_ui.importStyle("styles/multiple/list_layout.otui")
		g_ui.importStyle("styles/multiple/grid_layout.otui")
		dofile("multiple_cards.lua")
	else
		g_ui.importStyle("styles/unique/list_layout.otui")
		g_ui.importStyle("styles/unique/grid_layout.otui")
		dofile("unique_cards.lua")
	end

	g_ui.importStyle("styles/card_preview.otui")
	g_ui.importStyle("styles/header_panel.otui")
	g_ui.importStyle("styles/upgrade_panel.otui")

	local HUDPanel = modules.game_interface.getHUDPanel()

	self.collection_window = g_ui.createWidget("GameCardsCollectionWindow", HUDPanel)

	self.collection_window:hide()

	self.upgrade_panel = self.collection_window:recursiveGetChildById("upgrade_panel")
	self.filter_panel = self.collection_window:recursiveGetChildById("filter_panel")
	self.view_panel = self.collection_window:recursiveGetChildById("view_panel")
	self.filters_panel = self.view_panel:recursiveGetChildById("filters_panel")
	self.status_label = self.view_panel:recursiveGetChildById("status_label")
	self.pagination_panel = self.collection_window:recursiveGetChildById("pagination_panel")
	self.list_layout = self.collection_window:recursiveGetChildById("list_layout")
	self.grid_layout = self.collection_window:recursiveGetChildById("grid_layout")
	self.clear_filter_button = self.filter_panel:recursiveGetChildById("clear_button")
	self.card_preview = g_ui.createWidget("GameCardsCollectionPreviewPanel", HUDPanel)

	self.card_preview:hide()

	self.header_panel = self.collection_window:recursiveGetChildById("header_panel")

	local upgrade_button = self.upgrade_panel.upgrade_bottom.upgrade_button

	self.upgrade_animation = Animation.create({
		restoreInitialStateOnEnd = true,
		pauseWhenHidden = true,
		duration = 2500,
		imageSource = "/images/ui/windows/ravencards/animation/upgrade/upgrade_%02d",
		canvas = self.upgrade_panel.upgrade_card.card.canvas,
		frames = FramesDataset.upgrade,
		onFrame = function(self, canvas, currentFrame)
			if currentFrame == 26 then
				GameCards:updateUpgradeInfo()
			end
		end,
		onStart = function(self, canvas)
			upgrade_button:disable()

			local soundId = UpgradeRaritySounds[self.newCardRarity] or UpgradeRaritySounds[1]

			self.playingID = g_sound.play(soundId)
		end,
		onPause = function(self)
			g_wwise.pauseEvent(self.playingID)
		end,
		onResume = function(self)
			g_wwise.resumeEvent(self.playingID)
		end
	})

	self.upgrade_animation:fadeIn({
		opacity = 1,
		start = 1,
		finish = 12
	})
	g_keyboard.bindKeyDown("G", self.toggleCollectionWindow)
	ProtocolGame.registerExtendedOpcode(ExtendedIds.Cards, GameCards.onExtendedOpcode)
	connect(g_game, {
		onGameEnd = GameCards.onGameEnd
	})
	connect(self, {
		onPacksChange = self.updatePacks
	})
	dofile("packs/animation.lua")
	self:initCardAnimation()
end

function GameCards:terminate()
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.Cards)
	g_keyboard.unbindKeyDown("G")
	self:clearCollectionFilters()
	self.collection_window:destroy()
	self.card_preview:destroy()
	disconnect(g_game, {
		onGameEnd = GameCards.onGameEnd
	})
	disconnect(self, {
		onPacksChange = self.updatePacks
	})
	self:terminateCardAnimation()

	GameCards = nil
end

function GameCards.onGameEnd()
	GameCards:clearCollectionFilters()
	GameCards:hideAnimationPanel()
	GameCards:resetAnimationPanel()
	GameCards:closeUpgradeCard()
	GameCards:resetPityPanel()

	for _, widget in pairs(GameCards.listCardWidgets) do
		widget:destroy()
	end

	for _, widget in pairs(GameCards.listCardWidgets) do
		widget:destroy()
	end

	GameCards.cards = {}
	GameCards.listCardWidgets = {}
	GameCards.gridCardWidgets = {}
	GameCards.filteredCardWidgets = {}
	GameCards.unlocked_card_count = 0
	GameCards.page = 1
	GameCards.cards_per_page = 9
	GameCards.card_packs = {}
	GameCards.pity_chance = {}
end

function GameCards.onExtendedOpcode(protocol, opcode, buffer)
	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	local action = data.action

	if action == "update_shards_amount" then
		if GameCards.is_playing_animation then
			GameCards.new_shards = data.shards

			return
		end

		GameCards.shards = data.shards

		GameCards:updateShardsOnUI()
	elseif action == "remove_active_card" then
		local spell = g_spells:getSpell(data.spellId)

		if spell then
			signalcall(GameCards.onRemoveCard, spell)
		end
	elseif action == "add_active_card" then
		local spell = g_spells:getSpell(data.spellId)

		if spell then
			signalcall(GameCards.onAddCard, spell, data.card)
		end
	elseif action == "receive_spell_cards" then
		local spell = g_spells:getSpell(data.spellId)

		if spell then
			signalcall(GameCards.onReceiveSpellCards, spell, data.cards)
		end
	elseif action == "unlocked_cards" then
		signalcall(GameCards.onReceiveCards, data.cards)

		for id, card in pairs(data.cards) do
			GameCards:addCollectionCard(id, card)
		end

		GameCards:updateCollectionFilterValues()
		GameCards:applyCollectionFilterValues()

		if data.packs then
			GameCards.card_packs = data.packs

			signalcall(GameCards.onPacksChange, GameCards.card_packs)
		end
	elseif action == "unlocked_card" then
		signalcall(GameCards.onReceiveCard, data.card)
		GameCards:addCollectionCard(data.card.id, data.card.rarities)
	elseif action == "open_card_pack" then
		table.sort(data.cards, function(a, b)
			return a.rarity > b.rarity
		end)
		signalcall(GameCards.onOpenPack, data.cards)
		GameCards:startCardOpening(data.cards, data.shards)

		if data.packs then
			GameCards.card_packs = data.packs

			signalcall(GameCards.onPacksChange, GameCards.card_packs)
		end
	elseif action == "remove_card_pack" then
		GameCards.card_packs[data.pack.id] = GameCards.card_packs[data.pack.id] or {
			amount = 0,
			id = data.pack.id
		}
		GameCards.card_packs[data.pack.id].amount = GameCards.card_packs[data.pack.id].amount - data.pack.amount

		if GameCards.card_packs[data.pack.id].amount <= 0 then
			GameCards.card_packs[data.pack.id] = nil
		end

		signalcall(GameCards.onPacksChange, GameCards.card_packs)
	elseif action == "add_card_pack" then
		GameCards.card_packs[data.pack.id] = GameCards.card_packs[data.pack.id] or {
			amount = 0,
			id = data.pack.id
		}
		GameCards.card_packs[data.pack.id].amount = GameCards.card_packs[data.pack.id].amount + data.pack.amount

		signalcall(GameCards.onPacksChange, GameCards.card_packs)
	elseif action == "upgrade_card" then
		GameCards:onCardUpgraded(data.rarity)
	elseif action == "update_cards_pity" then
		scheduleEvent(function()
			GameCards:onPityChanceChange(data.values)
		end, 2500)
	end
end

function GameCards:sendExtendedOpcode(data)
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.Cards, g_game.serializeTable(data))
	end
end

function GameCards:removeCard(cardData)
	local data = {
		action = "remove_card",
		cardId = cardData.id,
		spellName = cardData.spellInfo.name
	}

	self:sendExtendedOpcode(data)
end

function GameCards:addCard(cardData)
	local data = {
		action = "add_card",
		cardId = cardData.id,
		spellName = cardData.spellInfo.name,
		rarity = cardData.selectedRarity
	}

	self:sendExtendedOpcode(data)
end

function GameCards:updateShardsOnUI()
	self.animation_panel.button_panel.shards.amount:setText(self.shards)
	self.header_panel.shards.shards_count:setText(self.shards)
end

function GameCards:requestSpellCards(spell)
	local data = {
		action = "request_spell_cards",
		spellName = spell.name
	}

	self:sendExtendedOpcode(data)
end

function GameCards:selectSpellCard(spellName, cardName, rarity)
	local data = {
		action = "select_card",
		spellName = spellName,
		cardName = cardName,
		rarity = rarity
	}

	self:sendExtendedOpcode(data)
end

function GameCards.toggleCollectionWindow(mouseClick)
	if GameChat:isEnabled() or (type(mouseClick) ~= "boolean" or not mouseClick) and IsTextEditActive() then
		return
	end

	if GameCards.collection_window:isVisible() then
		GameCards.collection_window:hide()
	else
		if g_game:isInCutsceneMode() then
			return
		end

		GameCards.collection_window:show()
		GameCards.collection_window:raise()
	end
end

function GameCards:updateCollectionStatusLabel()
	local showing_from = self.page * self.cards_per_page - self.cards_per_page + 1
	local showing_to = math.min(#self.cards, self.page * self.cards_per_page)

	if #self.cards == 0 then
		self.status_label:setText("Showing 0 cards")

		return
	end

	self.status_label:setText(string.format("Showing %i-%i of %i cards", showing_from, showing_to, #self.cards))
end

function GameCards:updateCollectionPagination()
	local max_pages = math.ceil(#self.cards / self.cards_per_page)

	self.page = math.min(self.page, max_pages)

	self.pagination_panel.page_edit:setText(self.page)
	self.pagination_panel.page_edit:setCursorPos(-1)
	self.pagination_panel.prev_button:setOn(self.page > 1)
	self.pagination_panel.next_button:setOn(max_pages > self.page)
	self.pagination_panel.prev_button:setEnabled(self.page > 1)
	self.pagination_panel.next_button:setEnabled(max_pages > self.page)
	self.pagination_panel.page_count:setText(string.format("of %i", max_pages))
end

function GameCards:updateCollectionDisplay()
	local showing_from = self.page * self.cards_per_page - self.cards_per_page + 1

	if self.display_type == "list" then
		self.list_layout:hideAllChildren()
		self.list_layout:getChildByIndex(1):show()
	else
		self.grid_layout:hideAllChildren()
	end

	local widgets = self.filteredWidgets or self.listCardWidgets

	for i = 1, self.cards_per_page do
		local cardWidget = widgets[showing_from + i - 1]

		if cardWidget then
			cardWidget:setVisible(true)
			cardWidget:setChecked(i % 2 == 0)
		end
	end
end

function GameCards:changeCollectionPage(direction)
	local max_pages = math.ceil(#self.cards / self.cards_per_page)

	if direction == "next" then
		if max_pages > self.page then
			self.page = self.page + 1
		end
	elseif direction == "previous" then
		if self.page > 1 then
			self.page = self.page - 1
		end
	else
		direction = tonumber(direction)

		if not direction then
			return
		end

		self.page = math.min(math.max(direction, 1), max_pages)
	end

	self:updateCollectionStatusLabel()
	self:updateCollectionPagination()
	self:updateCollectionDisplay()
end

function GameCards:updateCollectionFilterValues(type)
	if self.filter_panel:getChildCount() == 0 then
		return
	end

	if not type or type == "name" then
		self.filter.name = nil
		self.filter.name = self.filter_panel.search_panel.search_input:getText()
	end

	if not type or type == "rarity" then
		self.filter.rarity = nil

		for _, child in ipairs(self.filter_panel.rarity_panel.list:getChildren()) do
			if child:isOn() then
				self.filter.rarity = child:getId()

				break
			end
		end
	end

	if not type or type == "archetype" then
		self.filter.archetype = nil
		self.filter.skill = nil

		for _, child in ipairs(self.filter_panel.archetype_panel.list:getChildren()) do
			if child:isOn() then
				self.filter.archetype = child:getId()

				break
			end
		end
	end

	if not type or type == "skill" then
		self.filter.skill = nil

		if self.filter.archetype then
			for _, child in ipairs(self.filter_panel.skill_panel.list:getChildren()) do
				if child:isOn() then
					self.filter.skill = child:getId():lower()

					break
				end
			end
		end
	end

	local widgetOrder = {}

	for _, filterName in ipairs({
		"rarity",
		"archetype",
		"skill"
	}) do
		local filterValue = self.filter[filterName]

		if filterValue then
			local filterWidget = self.filters_panel:getChildById(filterName) or g_ui.createWidget("GameCardsViewPanelFiltersPanelEntry", self.filters_panel)

			filterWidget:setId(filterName)
			table.insert(widgetOrder, filterWidget)

			if filterName == "rarity" then
				filterWidget.icon:setImageSource(string.format("/images/ui/ravencards/gem_%i", filterValue))
				filterWidget.icon:update()

				if filterWidget.text then
					filterWidget.text:destroy()
				end

				function filterWidget.onDestroy()
					local widget = self.filter_panel.rarity_panel.list:getChildById(filterValue)

					if widget and widget:isOn() then
						widget:onClick()
					end
				end
			elseif filterName == "archetype" then
				filterWidget.icon:setImageSource(string.format("/images/ui/icons/archetypes/28x28/%s", filterValue))
				filterWidget.icon:update()
				filterWidget.text:setText(filterValue:titleCase())

				function filterWidget.onDestroy()
					local widget = self.filter_panel.archetype_panel.list:getChildById(filterValue)

					if widget and widget:isOn() then
						widget:onClick()
					end
				end
			elseif filterName == "skill" then
				filterWidget.icon:setImageSource(string.format("/images/ui/icons/abilitybar/%s", filterValue))
				filterWidget.icon:update()
				filterWidget.text:setText(g_spells:getSpell(filterValue).name)

				function filterWidget.onDestroy()
					local widget = self.filter_panel.skill_panel.list:getChildById(filterValue)

					if widget and widget:isOn() then
						widget:onClick()
					end
				end
			end

			filterWidget:update()
		else
			local filterWidget = self.filters_panel:getChildById(filterName)

			if filterWidget then
				filterWidget:destroy()
			end
		end
	end

	self.filters_panel:setOn(self.filters_panel:getChildCount() > 0)
	self.clear_filter_button:setEnabled(self.filter.name ~= "" or self.filters_panel:getChildCount() > 0)
	self:applyCollectionFilterValues()
end

function GameCards:applyCollectionFilterValues()
	local filter = self.filter
	local cards = self.display_type == "list" and self.listCardWidgets or self.gridCardWidgets
	local filteredCards = {}
	local filteredCardWidgets = {}

	for _, widget in ipairs(cards) do
		local state = true
		local card = g_ravencards:getCardById(widget.cardData.id)

		if filter.name and filter.name ~= "" and not card.name:lower():find(filter.name:lower()) then
			state = false
		end

		if state and filter.rarity and not widget.cardData.card[tonumber(filter.rarity)] then
			state = false
		end

		if state and filter.archetype and card.archetype ~= filter.archetype then
			state = false
		end

		if state and filter.skill and card.spells[1] ~= filter.skill then
			state = false
		end

		if state then
			table.insert(filteredCards, 1)
			table.insert(filteredCardWidgets, widget)
		end
	end

	self.cards = filteredCards
	self.filteredWidgets = filteredCardWidgets
	self.page = 1

	self:updateCollectionStatusLabel()
	self:updateCollectionPagination()
	self:updateCollectionDisplay()
end

function GameCards:clearCollectionFilters()
	self.filter = {}

	self.filters_panel:destroyChildren()
	self.filter_panel.search_panel.search_input:setText("")
	self:updateCollectionFilterValues()
end

function GameCards:changeCollectionDisplayType(type)
	self.display_type = type

	if type == "list" then
		self.list_layout:setVisible(true)
		self.grid_layout:setVisible(false)

		self.cards_per_page = 9
	elseif type == "grid" then
		self.list_layout:setVisible(false)
		self.grid_layout:setVisible(true)

		self.cards_per_page = 8
	end

	self:updateCollectionFilterValues()
	self:updateCollectionDisplay()
end

function GameCards:displayCollectionPreview(cardData)
	if not cardData then
		self.card_preview:setVisible(false)

		return
	end

	local index = 1

	for i, widget in ipairs(self.filteredWidgets) do
		if widget.cardData.id == cardData.id then
			index = i

			break
		end
	end

	self.card_preview.step_index = index

	self.collection_window:blockInputPanel(true)

	local highestRarity = 0

	for rarity in pairs(cardData.card) do
		if highestRarity < rarity then
			highestRarity = rarity
		end
	end

	local card = g_ravencards:getCardById(cardData.id)
	local effect_description = g_ravencards:getCardDescription(cardData.id, highestRarity)

	self.card_preview.card:setData({
		rarity = highestRarity,
		name = card.name,
		description = g_ravencards:getCardDescription(cardData.id, highestRarity)
	})
	self.card_preview.description_panel.name:setText(card.name:titleCase())
	self.card_preview.description_panel.lore.text:setText(g_ravencards:getCardLore(cardData.id))
	self.card_preview.description_panel.description.text:setColoredText(GetHighlightedText(effect_description, "#CED2D9"))
	self.card_preview.description_panel.archetype_info.archetype:setImageSource(string.format("/images/ui/icons/archetypes/45x45/%s", card.archetype))
	self.card_preview.description_panel.archetype_info.archetype:setText(card.archetype:titleCase())
	self.card_preview.description_panel.archetype_info.skill:setImageSource(string.format("/images/ui/icons/abilitybar/%s", card.spells[1]))
	self.card_preview.description_panel.archetype_info.skill:setText(g_spells:getSpell(card.spells[1]).name)

	local rarity_panel = self.card_preview.description_panel.rarity_info

	for i = CARD_RARITY_END, CARD_RARITY_START, -1 do
		local rarity_widget = rarity_panel.list:getChildByIndex(i)

		rarity_widget:setOn(i == highestRarity)
		rarity_widget:setEnabled(cardData.card[i])
		rarity_widget.icon:update()

		function rarity_widget.updateCard()
			self.card_preview.card:setRarity(i)

			local effect_description = g_ravencards:getCardDescription(cardData.id, i)

			self.card_preview.description_panel.description.text:setColoredText(GetHighlightedText(effect_description, "#a6aab2"))
		end
	end

	self.card_preview:setVisible(true)
	self.card_preview:raise()

	function self.card_preview.onVisibilityChange(widget, visible)
		if not visible then
			self.collection_window:blockInputPanel(false)
		end
	end

	function self.collection_window.onVisibilityChange(widget, visible)
		if not visible then
			self.card_preview:setVisible(false)
		end
	end

	function self.collection_window.onFocusChange(widget, focused)
		if focused then
			self.card_preview:raise()
		end
	end
end

function GameCards:changeCollectionPreviewCard(step)
	local index = self.card_preview.step_index or 1
	local newIndex = index + step

	if newIndex < 1 then
		newIndex = #self.filteredWidgets
	elseif newIndex > #self.filteredWidgets then
		newIndex = 1
	end

	self:displayCollectionPreview(self.filteredWidgets[newIndex].cardData)
end

function GameCards:selectPanel(id)
	if id == "packs" then
		return self:displayAnimationPanel()
	end
end

function GameCards.updatePacks(packs)
	local oldPacks = GameCards.total_packs or -1

	GameCards.total_packs = 0

	for packId, pack in pairs(packs) do
		GameCards.total_packs = GameCards.total_packs + pack.amount
	end

	GameCards.header_panel.packs.holder.count_box:setText(GameCards.total_packs)
	signalcall(GameCards.onUpdateTotalPacks, oldPacks, GameCards.total_packs)

	local animation_panel = GameCards.animation_panel
	local packs_panel = animation_panel.packs_panel

	packs_panel:destroyChildren()

	if table.empty(packs) then
		return
	end

	local width = 0

	for packId, pack in pairs(packs) do
		local pack_widget = g_ui.createWidget("GameCardsAnimationPacksPanelPack", packs_panel)

		pack_widget.pack_image:setImageSource(string.format("/images/ui/windows/ravencards/packs/%spack_%s", g_game.isRavenQuest() and "ravenquest_" or "", packId))
		pack_widget.pack_count:setText(string.format("x%i", pack.amount))
		pack_widget.pack_name:setText(g_ravencards:getCardPackName(packId))

		pack_widget.packId = packId
		pack_widget.pack_data = pack

		function pack_widget.onDoubleClick()
			GameCards:openPack(packId, 1)
		end

		pack_widget:setEnabled(pack.amount >= 1 and not GameCards.is_playing_animation)

		width = width + pack_widget:getWidth()
	end

	width = width + packs_panel:getLayout():getSpacing() * (#packs_panel:getChildren() - 1)

	function packs_panel.onGeometryChange()
		packs_panel:getFirstChild():setMarginLeft((packs_panel:getParent():getWidth() - width) / 2)
	end

	packs_panel:getFirstChild():setMarginLeft((packs_panel:getParent():getWidth() - width) / 2)

	local button_panel = animation_panel.button_panel

	button_panel.open_multiple_packs:setEnabled(GameCards.total_packs >= 5 and not GameCards.is_playing_animation)
	button_panel.open_pack:setEnabled(GameCards.total_packs >= 1 and not GameCards.is_playing_animation)
end

function GameCards:openPack(packId, amount)
	if self.last_open_pack_time and self.last_open_pack_time + 1000 > g_clock.millis() then
		return
	end

	self.last_open_pack_time = g_clock.millis()

	if self.is_playing_animation then
		return
	end

	self:sendExtendedOpcode({
		packId = 1,
		action = "open_pack",
		amount = amount
	})
end

function GameCards:showUpgradeWindow(cardData)
	if not cardData then
		return
	end

	self.upgrade_card_data = cardData

	self.upgrade_animation:reset()
	self.upgrade_animation:restoreInitialState()
	self.view_panel:hide()
	self.filter_panel:hide()
	self.status_label:hide()
	self.pagination_panel:hide()
	self.upgrade_panel:show()
	self:updateUpgradeInfo()
end

function GameCards:getHighestRarityFromCardData(cardData)
	local highestRarity = 0

	for i = CARD_RARITY_END, CARD_RARITY_START, -1 do
		if cardData.card[i] then
			highestRarity = i

			break
		end
	end

	return highestRarity
end

function GameCards:updateUpgradeInfo()
	local cardData = self.upgrade_card_data

	if not cardData then
		return
	end

	local upgrade_cost = self.upgrade_panel.upgrade_info.upgrade_cost
	local highestRarity = self:getHighestRarityFromCardData(cardData)

	upgrade_cost:setMinimum(highestRarity - 1)

	local card = g_ravencards:getCardById(cardData.id)
	local card_name = self.upgrade_panel.upgrade_info.card_name

	card_name:setText(card.name:titleCase())

	local current_card_info = self.upgrade_panel.upgrade_info.current_card_info

	current_card_info.card_rarity:setImageSource(string.format("/images/ui/ravencards/gem_%s", highestRarity))

	local effect_description = g_ravencards:getCardDescription(cardData.id, highestRarity)

	current_card_info.description:setColoredText(GetHighlightedText(effect_description, "#cac2b0"))
	current_card_info:setImageColor(CardRarityToColor[highestRarity])

	local card_preview = self.upgrade_panel.upgrade_card.card

	card_preview:setData({
		rarity = highestRarity,
		name = card.name,
		description = card.description
	})
	upgrade_cost:setValue(math.min(highestRarity, CARD_RARITY_END), true)

	local slider_pos = upgrade_cost:getPosition()
	local second_gem = upgrade_cost.gems:getChildById(2)
	local marker_pos = second_gem.marker:getPosition()

	upgrade_cost.sliderComplete:setWidth(math.max(0, marker_pos.x - slider_pos.x) + 3)

	local total_rarity_cost = 0

	for rarity = CARD_RARITY_START, CARD_RARITY_END do
		local gem = upgrade_cost.gems:getChildById(rarity)
		local owned = rarity <= highestRarity

		gem.marker:setOn(owned)
		gem.marker:setChecked(false)
		gem.gem_icon:setOn(not owned)
		gem.cost:setVisible(not owned)
		gem.completed:setVisible(owned)
		gem:setEnabled(not owned)

		if owned and rarity > CARD_RARITY_COMMON then
			addEvent(function()
				local marker_pos = gem.marker:getPosition()

				upgrade_cost.sliderComplete:setWidth(gem.marker:getWidth() / 2 + math.max(0, marker_pos.x - slider_pos.x))
				GameCards:onUpgradeRarityChange(upgrade_cost)
			end)
		end

		if not owned then
			local cost = self.upgrade_shard_cost[rarity]

			total_rarity_cost = total_rarity_cost + cost

			gem.cost.value:setText(total_rarity_cost)

			if total_rarity_cost <= self.shards then
				gem.cost.value:setTextColor("#36F991")
				gem.gem_icon:setOn(false)
			else
				gem.cost.value:setTextColor("#A6AAB2")
				gem.gem_icon:setOn(true)
			end
		end
	end
end

function GameCards:getHighestUpgradableRarity(current_rarity)
	local cardData = self.upgrade_card_data

	if not cardData then
		return
	end

	local total_rarity_cost = 0
	local maximum_rarity = current_rarity

	for card_rarity = current_rarity + 1, CARD_RARITY_END do
		local cost = self.upgrade_shard_cost[card_rarity]

		total_rarity_cost = total_rarity_cost + cost

		if total_rarity_cost > self.shards then
			break
		end

		maximum_rarity = card_rarity
	end

	return maximum_rarity
end

function GameCards:updateUpgradeCosts(current_rarity, rarity)
	local upgrade_cost = self.upgrade_panel.upgrade_info.upgrade_cost
	local maximum_rarity = self:getHighestUpgradableRarity(current_rarity)

	for card_rarity = current_rarity + 1, maximum_rarity do
		local gem = upgrade_cost.gems:getChildById(card_rarity)

		if card_rarity < rarity then
			gem.cost:setVisible(false)
		else
			gem.cost:setVisible(true)
		end

		if card_rarity <= rarity then
			gem.marker:setChecked(true)
			gem.marker:setOn(false)
		elseif rarity < card_rarity then
			gem.marker:setChecked(false)
			gem.marker:setOn(false)
		end
	end
end

function GameCards:onUpgradeRarityChange(widget)
	local cardData = self.upgrade_card_data

	if not cardData then
		return
	end

	local rarity = widget:getValue() + 1
	local current_rarity = self:getHighestRarityFromCardData(cardData)
	local maximum_rarity = self:getHighestUpgradableRarity(current_rarity)

	if maximum_rarity < rarity then
		widget:setValue(maximum_rarity - 1, true, true)

		return
	end

	self:updateUpgradeCosts(current_rarity, rarity)

	local upgrade_card_info = self.upgrade_panel.upgrade_info.upgraded_card_info
	local upgrade_button = self.upgrade_panel.upgrade_bottom.upgrade_button

	if rarity <= current_rarity then
		upgrade_button:disable()
		widget:setMinimum(current_rarity - 1)

		if current_rarity == CARD_RARITY_END then
			upgrade_card_info.card_rarity:hide()
			upgrade_card_info.description:setText("Congratulations your card is already at its maximum rarity.")
		else
			upgrade_card_info.card_rarity:show()
			upgrade_card_info.card_rarity:setEnabled(false)
			upgrade_card_info.description:setText("Move the marker to the rarity that is to be upgraded.")
		end

		upgrade_card_info:setImageColor()

		return
	end

	local upgraded_effect_description = g_ravencards:getCardDescription(cardData.id, rarity)

	upgrade_card_info.description:setColoredText(GetHighlightedText(upgraded_effect_description, "#cac2b0"))
	upgrade_card_info.card_rarity:setEnabled(true)
	upgrade_card_info.card_rarity:setImageSource(string.format("/images/ui/ravencards/gem_%s", rarity))
	upgrade_card_info:setImageColor(CardRarityToColor[rarity])
	upgrade_button:enable()
end

function GameCards.closeUpgradeCard()
	GameCards.upgrade_panel:hide()
	GameCards.view_panel:show()
	GameCards.filter_panel:show()
	GameCards.status_label:show()
	GameCards.pagination_panel:show()
end

function GameCards:upgradeCard()
	local cardData = self.upgrade_card_data

	if not cardData then
		return
	end

	local upgrade_cost = self.upgrade_panel.upgrade_info.upgrade_cost
	local upgrade_to_rarity = tonumber(upgrade_cost:getValue())

	if not upgrade_to_rarity then
		return
	end

	upgrade_to_rarity = upgrade_to_rarity + 1

	if upgrade_to_rarity < CARD_RARITY_START or upgrade_to_rarity > CARD_RARITY_END then
		return
	end

	local data = {
		action = "upgrade_card",
		cardId = cardData.id,
		rarity = upgrade_to_rarity
	}

	self:sendExtendedOpcode(data)
end

function GameCards:onCardUpgraded(rarity)
	self.upgrade_animation.newCardRarity = rarity

	self.upgrade_animation:start()
end

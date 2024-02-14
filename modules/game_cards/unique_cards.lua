-- chunkname: @/modules/game_cards/unique_cards.lua

function GameCards:addCollectionCard(id, card)
	self.cards[id] = card

	local cardWidget = self.list_layout:getChildById(id) or g_ui.createWidget("GameCardsViewPanelListLayoutEntry", self.list_layout)

	cardWidget:setId(id)

	cardWidget.cardData = {
		id = id,
		card = card
	}

	if self.upgrade_card_data and id == self.upgrade_card_data.id then
		self.upgrade_card_data = cardWidget.cardData
	end

	local cardData = g_ravencards:getCardById(id)

	if not cardData then
		print("Card not found: " .. id)

		return
	end

	local highestRarity = 1

	for i = CARD_RARITY_END, CARD_RARITY_START, -1 do
		if card[i] then
			highestRarity = i

			break
		end
	end

	cardWidget.card_content.card:setData({
		name = cardData.name,
		description = cardData.description,
		rarity = highestRarity,
		shards = cardData.shards
	})
	cardWidget.card_name:setText(cardData.name:titleCase())

	local spellInfo = g_spells:getSpell(cardData.spells[1])

	cardWidget.archetype_info.archetype:setImageSource(string.format("/images/ui/icons/archetypes/20x20/%s", ArchetypeNames[spellInfo.archetype]:lower()))
	cardWidget.archetype_info.skill:setImageSource(string.format("/images/ui/icons/abilitybar/%s", spellInfo.name:lower()))
	cardWidget.rarity:setRarity(highestRarity)

	cardWidget.abilityTooltip = true
	cardWidget.ravenCardAbilityInfo = {
		name = cardData.name,
		description = g_ravencards:getCardDescription(cardData.name, highestRarity),
		rarity = highestRarity
	}

	function cardWidget.onClick(widget)
		GameCards:displayCollectionPreview(widget.cardData)
	end

	if not table.find(self.listCardWidgets, cardWidget) then
		table.insert(self.listCardWidgets, cardWidget)
	end

	cardWidget:setVisible(false)

	cardWidget = self.grid_layout:getChildById(id) or g_ui.createWidget("GameCardsViewPanelGridLayoutEntry", self.grid_layout)

	cardWidget:setId(id)

	cardWidget.cardData = {
		id = id,
		card = card
	}

	cardWidget.card_content.card:setData({
		name = cardData.name,
		description = cardData.description,
		rarity = highestRarity,
		shards = cardData.shards
	})
	cardWidget.card_content.card:setNameDisplay(true)
	cardWidget.info_holder.archetype_info.archetype:setImageSource(string.format("/images/ui/icons/archetypes/20x20/%s", ArchetypeNames[spellInfo.archetype]:lower()))
	cardWidget.info_holder.archetype_info.skill:setImageSource(string.format("/images/ui/icons/abilitybar/%s", spellInfo.name:lower()))

	cardWidget.abilityTooltip = true
	cardWidget.ravenCardAbilityInfo = {
		name = cardData.name,
		description = g_ravencards:getCardDescription(cardData.name, highestRarity),
		rarity = highestRarity
	}

	function cardWidget.onClick(widget)
		GameCards:displayCollectionPreview(widget.cardData)
	end

	if not table.find(self.gridCardWidgets, cardWidget) then
		table.insert(self.gridCardWidgets, cardWidget)
	end

	cardWidget:setVisible(false)
	self:applyCollectionFilterValues()
end

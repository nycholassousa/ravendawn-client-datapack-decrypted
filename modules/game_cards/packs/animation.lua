-- chunkname: @/modules/game_cards/packs/animation.lua

local numCards = 5
local appearDelay = 50
local flipDelay = 100
local leftToRightOrder = {}

for i = 1, numCards do
	if i % 2 == 1 then
		table.insert(leftToRightOrder, i)
	else
		table.insert(leftToRightOrder, 1, i)
	end
end

function GameCards:initCardAnimation()
	dofile("config.lua")
	g_ui.importStyle("animation.otui")

	self.animation_panel = g_ui.createWidget("GameCardsAnimationPanel", modules.game_interface.getHUDPanel())

	function self.animation_panel:onGeometryChange()
		if not self.animation_panel_mini or not self.animation_panel_normal then
			return
		end

		local width = self:getWidth()

		if width > 1922 then
			local diff = width - 1922

			self.animation_panel_mini:setPaddingLeft(math.floor(diff / 2))
		else
			self.animation_panel_mini:setPaddingLeft(0)
		end

		local height = self:getHeight()

		if height > 1080 then
			local diff = height - 1080

			self.animation_panel_mini:setPaddingTop(math.floor(diff / 2))
			self.animation_panel_normal:setPaddingTop(math.floor(diff / 2))
		else
			self.animation_panel_mini:setPaddingTop(0)
			self.animation_panel_normal:setPaddingTop(0)
		end
	end

	self.animation_panel.onEscape = self.hideAnimationPanel

	self.animation_panel:hide()

	self.animations = {}
	self.animation_events = {}
	self.view_toggle_panel = self.animation_panel.view_toggle_panel
	self.normal_cards_panel = self.animation_panel.animation_panel_normal
	self.mini_cards_panel = self.animation_panel.animation_panel_mini
	self.mini_cards = {}

	for i = 1, numCards * 5 do
		self.mini_cards[i] = g_ui.createWidget("GameCardsAnimationBoxMini", self.mini_cards_panel)
	end

	local animation_panel_onVisiblityChange = connect(self.animation_panel, {
		onVisibilityChange = function(widget, visible)
			if not visible then
				if self.texturesToUnload then
					for i = 1, #self.texturesToUnload do
						g_textures.unload(self.texturesToUnload[i])
					end

					self.texturesToUnload = nil
				end

				self:toggleCardAnimationView(false, false, true)
				modules.game_menu.Menu.toggleWindows(false, true)
			end
		end
	})

	function self.animation_panel.onDestroy(widget)
		for _, disconnect in pairs(animation_panel_onVisiblityChange) do
			disconnect()
		end
	end

	for i = 1, numCards do
		self.animations[i] = g_ui.createWidget("GameCardsAnimationBox", self.normal_cards_panel)
		self.animations[i].onDestroy = function(widget)
			if widget.card.animate_event then
				removeEvent(widget.card.animate_event)
			end

			if widget.vfx.animate_event then
				removeEvent(widget.vfx.animate_event)
			end
		end
	end

	self.animation_panel.pack:raise()

	local animation = Animation.create({
		imageSource = "/images/ui/windows/ravencards/packs/shards_increasing_anim/small_shard_%02d",
		restoreInitialState = true,
		duration = 400,
		framesCount = 18,
		canvas = self.animation_panel.button_panel.shards.icon,
		frames = FramesDataset.shards_increasing,
		onEnd = function(self, canvas)
			return
		end
	})

	self.animation_panel.button_panel.shards.icon.anim = animation
	self.pity_panel = self.animation_panel.pity_panel

	for i = CARD_RARITY_START + 1, CARD_RARITY_END do
		local rarityName = CardRarityToName[i]
		local widget = g_ui.createWidget("GameCardsPityPanelWidget", self.pity_panel.panel)

		widget:setId(rarityName:lower())
		widget.icon_holder.icon:setImageSource(string.format("/images/ui/windows/ravencards/pity/animation_%s/00", rarityName:lower()))

		if i == CARD_RARITY_END then
			widget.separator:destroy()
		end
	end
end

function GameCards:resetPityPanel()
	for i = CARD_RARITY_START + 1, CARD_RARITY_END do
		local rarityName = CardRarityToName[i]
		local widget = self.pity_panel.panel:getChildById(rarityName:lower())

		widget:setText("+0%")
		widget.icon_holder.icon:setImageSource(string.format("/images/ui/windows/ravencards/pity/animation_%s/00", rarityName:lower()))
	end
end

function GameCards:terminateCardAnimation()
	for _, eventId in pairs(self.animation_events) do
		removeEvent(eventId)
	end

	self.mini_cards_panel:destroyChildren()
	self.mini_cards_panel:destroy()
	self.animation_panel:destroyChildren()
	self.animation_panel:destroy()
	g_sound.play(sounds.ambience.stop, g_sound.ravencardsAnimationEmitterId)
end

function GameCards:displayAnimationPanel()
	if signalcall(self.onAnimationPanelOpen) then
		return
	end

	if not GameCards.total_packs or GameCards.total_packs == 0 then
		self:hideOpenPackButton()
		self:hidePacksPanel()
		self:showBuyPacksButton()
	else
		self:showPacksPanel()
		self:showOpenPackButton()
		self:hideBuyPacksButton()
	end

	self.animation_panel:show()
	self.animation_panel:raise()

	local Menu = modules.game_menu.Menu

	Menu.toggleInterface(true)
	Menu.toggleWindows(true, false, {
		"CardOpeningWindow"
	})
	g_wwise.muteAllEmitters()
	self:unmuteAnimationSounds()
	g_sound.play(sounds.ambience.start, g_sound.ravencardsAnimationEmitterId)

	for _, child in ipairs(self.animation_panel:getChildren()) do
		if child:getId():find("shardsReceivedLabel", 1, true) then
			child:destroy()
		end
	end
end

function GameCards:hideAnimationPanel()
	if signalcall(self.onAnimationPanelClose) then
		return
	end

	self.animation_panel:hide()

	local Menu = modules.game_menu.Menu

	if not modules.game_settings.getOption("hideInterface") then
		Menu.toggleInterface(false)
	end

	Menu.toggleWindows(false, true)
	g_sound.play(sounds.ambience.stop, g_sound.ravencardsAnimationEmitterId)
	g_wwise.unmuteAllEmitters()
	self:muteAnimationSounds()
end

function GameCards:displayCardWidget(animation_widget, cardData, isFinalEffect)
	local card = g_ravencards:getCardById(cardData.id)
	local data = {
		rarity = cardData.rarity,
		name = card.name,
		description = g_ravencards:getCardDescription(card.name, cardData.rarity),
		shards = cardData.shards
	}

	animation_widget.card:setData(data)

	animation_widget.card.abilityTooltip = true
	animation_widget.card.ravenCardAbilityInfo = data

	animation_widget.card:setNameDisplay(true)
	animation_widget.card:getChildById("name"):setHeight(120)
	animation_widget.card:getChildById("name"):setFont("mirza-medium-30")
	animation_widget.card:show()

	local delayToAppear = 500

	if isFinalEffect then
		if cardData.new then
			animation_widget.disenchanted:setVisible(false)
		else
			animation_widget.disenchanted:setVisible(true)
			animation_widget.disenchanted.panel.amount:setText(cardData.shards)
			g_effects.fadeIn(animation_widget.disenchanted, delayToAppear)
		end
	else
		animation_widget.disenchanted:setVisible(false)
	end

	g_effects.fadeIn(animation_widget.card, delayToAppear, nil, nil, function()
		if cardData.new then
			g_effects.fadeIn(animation_widget.new_card, 250)
		end

		animation_widget.new_card:setVisible(cardData.new)
	end)
end

function GameCards:animate(type, cycle, position, animation_widget, cardData, restart)
	local panel = not (type ~= "pack" and type ~= "boom") and self.animation_panel or self.animations[position]

	animation_widget = animation_widget or panel[type]

	if not animation_widget then
		return
	end

	if animation_widget.cycle ~= cycle or restart then
		if cycle == "appear" then
			panel:setMarginLeft(0)
			panel:setMarginTop(0)

			panel.isMoving = false
		end

		if animation_widget.animate_event then
			removeEvent(animation_widget.animate_event)

			animation_widget.animate_event = nil
		end

		if animation_widget.card and cycle == "appear" then
			animation_widget.card:hide()
		end

		animation_widget.cycle = cycle
		animation_widget.current_frame = 1
		panel.fromMargin = {
			x = panel:getMarginLeft(),
			y = panel:getMarginTop()
		}
		animation_widget.total_frames = type == "card" and card[cycle].count or type == "vfx" and VFX[cycle].count or type == "pack" and pack[cycle].count or type == "boom" and boom[cycle].count
	end

	local previousImageSource = animation_widget:getImageSource()

	cardData = cardData or self.current_pack_cards[position]

	local currentImageSource = self:getImageSource(type, cycle, cardData.rarity, animation_widget.current_frame)

	if not animation_widget.disableShowingVFX then
		animation_widget:setImageSource(currentImageSource)
	end

	animation_widget.texturesToUnload = animation_widget.texturesToUnload or {}

	table.insert(animation_widget.texturesToUnload, "/data" .. previousImageSource)

	if animation_widget.current_frame % 32 == 0 then
		self.texturesToUnload = self.texturesToUnload or {}

		for i = 1, #animation_widget.texturesToUnload do
			g_textures.unload(animation_widget.texturesToUnload[i])

			self.texturesToUnload[animation_widget.texturesToUnload[i]] = true
		end

		animation_widget.texturesToUnload = {}
	end

	if animation_widget.current_frame + 1 <= animation_widget.total_frames then
		local nextImageSource = self:getImageSource(type, cycle, position, animation_widget.current_frame + 1)

		if nextImageSource then
			g_textures.preload(nextImageSource)
		end
	end

	animation_widget:show()

	if cycle == "flip" and type == "vfx" and animation_widget.current_frame == card.loop.card_frame then
		self:displayCardWidget(animation_widget, cardData)
	end

	if type == "vfx" or type == "card" then
		if panel.isMoving and cycle == "loop" then
			panel.isMoving = false
		end

		if cycle == "appear" and animation_widget.current_frame == 10 then
			panel.isMoving = true
		end

		if panel.isMoving and (not panel.startMovingFrame or panel.startMovingFrame <= animation_widget.current_frame) then
			local rateDone = (animation_widget.current_frame - (panel.startMovingFrame or 0)) / (animation_widget.total_frames - (panel.startMovingFrame or 0))

			if panel.movingType == "retarding" then
				rateDone = math.min(math.max((math.sqrt(rateDone) - 0.1) * 1.1, 0), 1)
			elseif panel.movingType == "accelerating" then
				rateDone = math.pow(rateDone, 2)
			end

			local marginLeft = panel:getMarginLeft()
			local destinationMarginX = panel.destinationMargin and panel.destinationMargin.x or 0

			if destinationMarginX ~= 0 then
				panel:setMarginLeft(panel.fromMargin.x + (destinationMarginX - panel.fromMargin.x) * rateDone)
			end

			local marginTop = panel:getMarginTop()
			local destinationMarginY = panel.destinationMargin and panel.destinationMargin.y or 0

			if destinationMarginY ~= 0 then
				panel:setMarginTop(panel.fromMargin.y + (destinationMarginY - panel.fromMargin.y) * rateDone)
			end
		end

		if cycle == "appear" then
			panel:setMarginTop((animation_widget.current_frame - 2) * -5)
		end

		local config = type == "vfx" and VFX or card

		if config[cycle].frames or config[cycle].rarities and config[cycle].rarities[cardData.rarity] then
			config = config[cycle].rarities and config[cycle].rarities[cardData.rarity][animation_widget.current_frame] or config[cycle].frames[animation_widget.current_frame]

			local originalSize = panel.originalSize
			local size = config.size
			local widgetSize = animation_widget:getSize()
			local ratio = widgetSize.width / originalSize.width

			if size.width == 0 or size.height == 0 then
				animation_widget:setImageSource(nil)
			else
				animation_widget:setImageSize({
					width = math.round(size.width * ratio),
					height = math.round(size.height * ratio)
				})
				animation_widget:setImageOffset({
					x = math.round(config.pos.x * ratio),
					y = math.round(config.pos.y * ratio)
				})
			end
		else
			animation_widget:setImageSize(animation_widget:getSize())
			animation_widget:setImageOffset({
				x = 0,
				y = 0
			})
		end

		if cycle == "flip" and position == leftToRightOrder[1] and animation_widget.current_frame == sounds.events.flip.frame then
			g_sound.play(sounds.events.flip.id, g_sound.ravencardsAnimationEmitterId)
		end
	elseif type == "pack" then
		local config = pack[cycle].frames[animation_widget.current_frame]
		local originalResolution = pack[cycle].originalResolution

		animation_widget:setSize(config.size)

		local marginLeft = (config.pos.x - originalResolution.width / 2 + config.size.width / 2) * (g_window.getWidth() / originalResolution.width)

		animation_widget:setMarginLeft(marginLeft)

		local marginTop = (config.pos.y - originalResolution.height / 2 + config.size.height / 2) * (g_window.getHeight() / originalResolution.height)

		animation_widget:setMarginTop(marginTop)

		if animation_widget.current_frame == sounds.events.whoosh.frame then
			g_sound.play(sounds.events.whoosh.id, g_sound.ravencardsAnimationEmitterId)
		elseif animation_widget.current_frame == sounds.events.open.frame then
			g_sound.play(sounds.events.open.id, g_sound.ravencardsAnimationEmitterId)
		elseif animation_widget.current_frame == sounds.events.deal.frame then
			g_sound.play(sounds.events.deal.id, g_sound.ravencardsAnimationEmitterId)
		elseif animation_widget.current_frame == sounds.events.boom.frame then
			g_sound.play(sounds.events.boom.id, g_sound.ravencardsAnimationEmitterId)
		end
	elseif type == "boom" then
		local config = boom[cycle].frames[animation_widget.current_frame]

		animation_widget:setImageSize(config.size)
		animation_widget:setImageOffset({
			x = config.pos.x,
			y = config.pos.y
		})
	end

	if animation_widget.current_frame == animation_widget.total_frames then
		animation_widget.current_frame = 1

		if cycle == "appear" then
			if position == numCards and type == "vfx" then
				for index, order in ipairs(leftToRightOrder) do
					scheduleEvent(function()
						self:animate("vfx", "flip", order, nil, nil, true)
						self:animate("card", "flip", order, nil, nil, true)
					end, index * flipDelay)
				end

				return
			elseif type == "pack" or type == "boom" then
				animation_widget:hide()
			end

			return
		elseif cycle == "flip" and type == "vfx" then
			return self:animate(type, "loop", position, nil, nil, true)
		elseif cycle == "flip" and type == "card" then
			return
		elseif cycle == "loop" then
			if position == numCards and type == "vfx" then
				local timeRequiredPossibilities = {
					{
						110,
						1
					},
					{
						150,
						2
					},
					{
						210,
						3
					},
					{
						300,
						4
					},
					{
						420,
						5
					}
				}
				local amount = 0

				for index, order in ipairs(leftToRightOrder) do
					local cardData = self.current_pack_cards[order]
					local cardWidget = self.animations[order].vfx.card

					if not cardData.new and cardData.shards and not cardWidget.goingToDisenchantEvent then
						amount = amount + 1
					end
				end

				if amount ~= 0 then
					local timeRequired = {}

					for i = 1, amount do
						table.insert(timeRequired, timeRequiredPossibilities[i])
					end

					local lastTime = timeRequired[amount][1]

					table.permute(timeRequired)

					local index = 1

					for _, order in ipairs(leftToRightOrder) do
						local cardData = self.current_pack_cards[order]
						local cardWidget = self.animations[order].vfx.card

						if not cardData.new and cardData.shards and not cardWidget.goingToDisenchantEvent then
							g_effects.fadeOut(cardWidget, 1000, nil, nil, function()
								cardWidget:hide()
								cardWidget:setOpacity(1)
							end)

							local isLast = timeRequired[index][2] == amount

							cardWidget.last = isLast
							cardWidget.order = timeRequired[index][2]
							cardWidget.goingToDisenchantEvent = scheduleEvent(function()
								local cardWidget = self.animations[order]

								cardWidget:raise()
								self:animate("card", "disenchant", order, nil, nil, false)
							end, timeRequired[index][1])
							index = index + 1
						end
					end
				end
			end
		elseif type == "card" and cycle == "disenchant" then
			local pos = self.animations[position]:getPosition()
			local marginTop = self.animations[position]:getMarginTop()
			local marginLeft = self.animations[position]:getMarginLeft()
			local shardsPosition = self.animation_panel.button_panel.shards:getPosition()
			local displacement = {
				x = shardsPosition.x - pos.x - self.animations[position]:getWidth() / 2,
				y = shardsPosition.y - pos.y - self.animations[position]:getHeight() / 2
			}

			self.animations[position].destinationMargin.x = marginLeft + displacement.x
			self.animations[position].destinationMargin.y = marginTop + displacement.y
			self.animations[position].fromMargin = {
				x = marginLeft,
				y = marginTop
			}
			self.animations[position].isMoving = true
			self.animations[position].startMovingFrame = nil
			self.animations[position].movingType = "accelerating"

			return self:animate("card", "shard_extraction", position, nil, nil, false)
		elseif cycle == "shard_extraction" then
			local cardData = self.current_pack_cards[position]

			if not cardData.shards then
				cardData.shards = 0
			end

			self.shards = self.shards + cardData.shards

			if self.animations[position].vfx.card.last then
				self:finishAnimation()
			end

			self:updateShardsOnUI()
			animation_widget:hide()
			self.animations[position]:setMarginTop(self.animations[position].fromMargin.y)
			self.animations[position]:setMarginLeft(self.animations[position].fromMargin.x)
			scheduleEvent(function()
				local widget = g_ui.createWidget("ShardsReceivedLabel", self.animation_panel)

				widget:setId("shardsReceivedLabel" .. position)

				local pos = self.animation_panel.button_panel.shards.icon:getPosition()

				widget:setMarginTop(pos.y)
				widget:setMarginLeft(pos.x)
				widget.amount:setText(cardData.shards)

				local animation = Animation.create({
					duration = 2000,
					framesCount = 36,
					canvas = widget,
					onEnd = function(self, canvas)
						canvas:destroy()
					end,
					onFrame = function(self, canvas, frame)
						if frame == sounds.events.shard_coin.frame then
							g_sound.play(sounds.events.shard_coin.id, g_sound.ravencardsAnimationEmitterId)
						end
					end
				})

				animation:fadeIn({
					start = 1,
					finish = 6,
					opacity = 1
				})
				animation:move({
					finish = 36,
					start = 1,
					offset = {
						top = -220
					}
				})
				animation:fadeOut({
					start = 7,
					finish = 36,
					opacity = 0
				})
				animation:start()
				self:displayCardWidget(self.animations[position].vfx, cardData, true)

				self.animations[position].vfx.disableShowingVFX = nil

				g_effects.fadeIn(self.animations[position].vfx, 500)
				self:animate("vfx", "loop", position, self.animations[position].vfx, nil, false)
				self.animation_panel.button_panel.shards.icon.anim:start()
			end, 200 * (self.animations[position].vfx.card.order - 1))

			self.animations[position].isMoving = false
			self.animations[position].destinationMargin = nil
			self.animations[position].startMovingFrame = nil
			self.animations[position].movingType = nil

			return
		elseif type == "pack" or type == "boom" then
			return
		end
	elseif cycle == "loop" then
		if animation_widget.disableShowingVFX then
			return
		end

		if animation_widget.current_frame == 1 and position == numCards then
			local finished = true

			for index, order in ipairs(leftToRightOrder) do
				local cardData = self.current_pack_cards[order]

				if not cardData.new and cardData.shards then
					finished = false
				end
			end

			if finished then
				self:finishAnimation()
			end

			signalcall(self.onAnimationEnd)
		end
	elseif type == "pack" and animation_widget.current_frame == pack.appear.card_frame then
		for i = 1, numCards do
			scheduleEvent(function()
				modules.game_cards.GameCards:animate("card", "appear", i, nil, nil, true)
				modules.game_cards.GameCards:animate("vfx", "appear", i, nil, nil, true)
			end, appearDelay * i)
		end
	elseif type == "card" and cycle == "disenchant" then
		if animation_widget.current_frame == 34 then
			self.animations[position].vfx.disableShowingVFX = true

			self.animations[position].vfx:setImageSource(nil)
		end

		if self.playingDisenchantSoundsWidget == nil or self.playingDisenchantSoundsWidget == animation_widget then
			if animation_widget.current_frame == sounds.events.crystalize.frame then
				g_sound.play(sounds.events.crystalize.id, g_sound.ravencardsAnimationEmitterId)

				self.playingDisenchantSoundsWidget = animation_widget
			elseif animation_widget.current_frame == sounds.events.crackling.frame then
				g_sound.play(sounds.events.crackling.id, g_sound.ravencardsAnimationEmitterId)

				self.playingDisenchantSoundsWidget = animation_widget
			elseif animation_widget.current_frame == sounds.events.explosion.frame then
				g_sound.play(sounds.events.explosion.id, g_sound.ravencardsAnimationEmitterId)

				self.playingDisenchantSoundsWidget = animation_widget
			elseif animation_widget.current_frame == sounds.events.shard_forming.frame then
				g_sound.play(sounds.events.shard_forming.id, g_sound.ravencardsAnimationEmitterId)

				self.playingDisenchantSoundsWidget = animation_widget
			end
		end
	end

	local panelVisible = self.animation_panel:isVisible() and animation_widget:isVisible()

	animation_widget.current_frame = animation_widget.current_frame + (panelVisible and 1 or 0)

	local timeForNextExecution = 1000 / (panelVisible and 24 or 2)

	if cycle == "shard_extraction" then
		timeForNextExecution = 20.833333333333332
	end

	animation_widget.animate_event = scheduleEvent(function()
		self:animate(type, cycle, position, animation_widget, cardData)
	end, timeForNextExecution)
	self.animation_events[animation_widget] = animation_widget.animate_event
end

function GameCards:finishAnimation()
	self.is_playing_animation = false

	if self.new_shards then
		self.shards = self.new_shards

		self:updateShardsOnUI()

		self.new_shards = nil
	end

	if #self.current_pack_cards > numCards then
		self.view_toggle_panel:show()
		self.view_toggle_panel:raise()
		g_effects.fadeIn(self.view_toggle_panel, 500)
	end

	self.playingDisenchantSoundsWidget = nil

	scheduleEvent(function()
		self:blockOpenPackButton(true)
	end, 1000)
end

function GameCards:getImageSource(type, cycle, rarity, frame)
	if type == "pack" then
		if g_game.isRavenQuest() then
			type = "ravenquest_pack"
		end

		return string.format("/images/ui/windows/ravencards/animation/%s/%s.png", type, string.format(pack[cycle].name, string.format("%02d", frame - 1)))
	elseif type == "boom" then
		return string.format("/images/ui/windows/ravencards/animation/%s/%s.png", type, string.format(boom[cycle].name, string.format("%02d", frame)))
	elseif type == "vfx" and rarity == CARD_RARITY_COMMON then
		return
	elseif type == "card" and card[cycle].frames[frame] and card[cycle].frames[frame].name then
		return string.format("/images/ui/windows/ravencards/animation/%s/%s.png", type, card[cycle].frames[frame].name)
	end

	return string.format("/images/ui/windows/ravencards/animation/%s/%s%s.png", type, type == "vfx" and string.format("%i/", rarity) or "", string.format(type == "vfx" and VFX[cycle].name or card[cycle].name, string.format("%02d", frame)))
end

function GameCards:resetAnimationPanel()
	self.is_playing_animation = false

	self:toggleCardAnimationView(false, true)

	for _, panel in ipairs(self.animations) do
		if panel.card.animate_event then
			removeEvent(panel.card.animate_event)
		end

		if panel.vfx.animate_event then
			removeEvent(panel.vfx.animate_event)
		end

		panel.vfx.new_card:setVisible(false)
		panel.vfx.disenchanted:setVisible(false)

		panel.vfx.disableShowingVFX = nil
		panel.isMoving = false
		panel.destinationMargin = nil
		panel.startMovingFrame = nil
		panel.movingType = nil

		if panel.vfx.card.goingToDisenchantEvent then
			removeEvent(panel.vfx.card.goingToDisenchantEvent)

			panel.vfx.card.goingToDisenchantEvent = nil
		end

		g_effects.fadeOut(panel.card, 250, nil, nil, function()
			panel.card:hide()
			panel.card:setOpacity(1)
		end)
		g_effects.fadeOut(panel.vfx, 250, nil, nil, function()
			panel.vfx:hide()
			panel.vfx:setOpacity(1)
		end)
		panel:onSetup()
	end

	g_effects.fadeOut(self.view_toggle_panel, 250, nil, nil, function()
		self.view_toggle_panel:hide()
		self.view_toggle_panel:setOpacity(1)
	end)

	for _, eventId in pairs(self.animation_events) do
		removeEvent(eventId)
	end

	self.animation_events = {}

	self.animation_panel.pack:hide()
	self.animation_panel.boom:hide()

	if self.texturesToUnload then
		for i = 1, #self.texturesToUnload do
			g_textures.unload(self.texturesToUnload[i])
		end

		self.texturesToUnload = nil
	end
end

function GameCards:startCardOpening(cards, newShards)
	self:resetAnimationPanel()

	self.current_pack_cards = cards
	self.new_shards = newShards
	self.is_playing_animation = true

	self.view_toggle_panel.most_rare_cards:onClick()

	local unique_rarities = {}

	for i = 1, #cards do
		if cards[i].rarity ~= CARD_RARITY_COMMON then
			unique_rarities[cards[i].rarity] = true
		end
	end

	for rarity in pairs(unique_rarities) do
		for i = 1, card.appear.count do
			g_textures.preload(self:getImageSource("vfx", "appear", rarity, i))
			g_textures.preload(self:getImageSource("vfx", "flip", rarity, i))
		end

		for i = 1, card.flip.count do
			g_textures.preload(self:getImageSource("card", "appear", rarity, i))
			g_textures.preload(self:getImageSource("card", "flip", rarity, i))
		end
	end

	for i = 1, pack.appear.count do
		g_textures.preload(self:getImageSource("pack", "appear", nil, i))
	end

	addEvent(function()
		GameCards:animate("pack", "appear", 1, nil, nil, true)
	end)
	signalcall(self.onAnimationStart)
end

function GameCards:blockOpenPackButton(state)
	local animation_panel = GameCards.animation_panel
	local button_panel = animation_panel.button_panel

	if not GameCards.total_packs then
		return
	end

	local packs_panel = animation_panel.packs_panel

	for _, packChild in ipairs(packs_panel:getChildren()) do
		packChild:setEnabled(packChild.pack_data.amount > 0 and state)
	end

	local canEnableSingle = GameCards.total_packs > 0 and state
	local canEnableMultiple = GameCards.total_packs >= 5 and state

	button_panel.open_pack:setEnabled(canEnableSingle)
	button_panel.open_multiple_packs:setEnabled(canEnableMultiple)

	if GameCards.total_packs == 0 then
		self:hideOpenPackButton()
		self:hidePacksPanel()
		self:showBuyPacksButton()
	else
		self:showPacksPanel()
		self:showOpenPackButton()
		self:hideBuyPacksButton()
	end
end

function GameCards:toggleCardAnimationView(state, animationRestart, changeButtonState)
	if state and self.mini_cards_panel:isVisible() then
		return
	end

	if changeButtonState then
		self.view_toggle_panel.most_rare_cards:onClick()
	end

	self.mini_cards_panel:setVisible(state)
	self.view_toggle_panel.text:setOn(state)

	local func = state and g_effects.fadeIn or g_effects.fadeOut

	func(self.mini_cards_panel, 250)

	if state then
		for index, cardData in ipairs(self.current_pack_cards) do
			local widget = self.mini_cards_panel:getChildByIndex(index)
			local vfx = widget.vfx
			local card = g_ravencards:getCardById(cardData.id)
			local data = {
				rarity = cardData.rarity,
				name = card.name,
				description = g_ravencards:getCardDescription(card.name, cardData.rarity),
				shards = cardData.shards
			}

			vfx.card:setData(data)

			vfx.card.abilityTooltip = true
			vfx.card.ravenCardAbilityInfo = data

			vfx.card:setNameDisplay(true)
			vfx.card:getChildById("name"):setHeight(45)

			if cardData.new then
				g_effects.fadeIn(vfx.new_card, 250)
			end

			vfx.new_card:setVisible(cardData.new)

			if not cardData.shards then
				vfx.disenchanted:setOn(false)
				vfx.disenchanted.panel.amount:setText("")
			elseif cardData.shards and not cardData.new then
				vfx.disenchanted:setOn(true)
				vfx.disenchanted.panel.amount:setText(cardData.shards)
			end

			self:animate("vfx", "loop", 1, vfx, cardData, true)

			function widget.onDestroy()
				if vfx.animate_event then
					removeEvent(vfx.animate_event)
				end
			end
		end
	elseif self.current_pack_cards then
		for index, cardData in ipairs(self.current_pack_cards) do
			local widget = self.mini_cards_panel:getChildByIndex(index)
			local vfx = widget.vfx

			if vfx.animate_event then
				removeEvent(vfx.animate_event)
			end
		end
	end

	func = state and g_effects.fadeOut or g_effects.fadeIn

	for _, panel in ipairs(self.animations) do
		panel:setVisible(not state)

		if not animationRestart then
			func(panel, 250)
		end
	end
end

function GameCards:unmuteAnimationSounds()
	local volume = g_settings.getNumber("volumeUI") or 75

	g_wwise.setOutputBusVolume(300, CONST_ALL_GAME_OBJECTS, volume / 100)
end

function GameCards:muteAnimationSounds()
	g_wwise.setOutputBusVolume(300, CONST_ALL_GAME_OBJECTS, 0)
end

function GameCards:onPityChanceChange(values)
	if not values then
		return
	end

	for id = CARD_RARITY_START, CARD_RARITY_END do
		local chance = values[id] or 0
		local rarityName = CardRarityToName[id]:lower()
		local widget = self.pity_panel.panel:getChildById(rarityName)

		if widget then
			widget:setText(string.format("+%d%%", chance))

			local value = self.pity_chance and self.pity_chance[id] or -1
			local value, newValue = value, values[id] or 0

			if value > -1 and value < newValue then
				if widget.animation_event then
					removeEvent(widget.animation_event)
				end

				local frameCount = 48

				widget.currentFrame = 0
				widget.animation_event = cycleEvent(function()
					local exit = false

					widget.currentFrame = widget.currentFrame + 1

					if widget.currentFrame > frameCount then
						widget.currentFrame = 1
						exit = true
					end

					widget.icon_holder.icon:setImageSource(string.format("/images/ui/windows/ravencards/pity/animation_%s/%02d", rarityName, widget.currentFrame))

					local textureWidth = widget.icon_holder.icon:getImageTextureWidth()
					local textureHeight = widget.icon_holder.icon:getImageTextureHeight()

					widget.icon_holder.icon:setSize({
						width = textureWidth,
						height = textureHeight
					})

					if exit then
						removeEvent(widget.animation_event)

						widget.animation_event = nil
					end
				end, 41.666666666666664)
			end
		end
	end

	self.pity_chance = values
end

function GameCards:hideOpenPackButton()
	self.animation_panel.button_panel.open_pack:hide()
	self.animation_panel.button_panel.open_multiple_packs:hide()
	self.animation_panel.button_panel.no_packs_label:show()
end

function GameCards:showBuyPacksButton()
	return
end

function GameCards:hideBuyPacksButton()
	return
end

function GameCards:showOpenPackButton()
	self.animation_panel.button_panel.open_pack:show()
	self.animation_panel.button_panel.open_multiple_packs:show()
	self.animation_panel.button_panel.no_packs_label:hide()
end

function GameCards:hidePacksPanel()
	self.animation_panel.packs_panel:hideAllChildren()
end

function GameCards:showPacksPanel()
	self.animation_panel.packs_panel:showAllChildren()
end

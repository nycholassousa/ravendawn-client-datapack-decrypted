-- chunkname: @/modules/game_fishfight/fishfight.lua

FishFight = {}

local STATE_NONE = 0
local STATE_GAME = 1
local fish, rod, position

FishFight.gameState = STATE_NONE

local cooldownEvent
local cooldownEventTimer = 0
local healthBar, durabilityBar, durabilityLoss, nameLabel, behaviourIcon, spellProgressRect, timeoutLabel, abilityTimer, abilityTimerLabel

FishFight.bigNumbers = false

local fishBehaviour = {
	[FISHFIGHT_STATE_AGGRESSIVE] = {
		description = "Increases the damage done to your rod by 200%.",
		icon = "/images/ui/windows/fishfight/fish_state_aggressive"
	},
	[FISHFIGHT_STATE_TIRED] = {
		description = "Increases the damage done to the fish by 50%.",
		icon = "/images/ui/windows/fishfight/fish_state_tired"
	},
	[FISHFIGHT_STATE_TIRED_2] = {
		description = "Increases the damage done to the fish by 100%.",
		icon = "/images/ui/windows/fishfight/fish_state_tired",
		text = "2"
	},
	[FISHFIGHT_STATE_TIRED_3] = {
		description = "Increases the damage done to the fish by 150%.",
		icon = "/images/ui/windows/fishfight/fish_state_tired",
		text = "3"
	},
	[FISHFIGHT_STATE_TIRED_4] = {
		description = "Increases the damage done to the fish by 200%.",
		icon = "/images/ui/windows/fishfight/fish_state_tired",
		text = "4"
	},
	[FISHFIGHT_STATE_TIRED_5] = {
		description = "Increases the damage done to the fish by 250%.",
		icon = "/images/ui/windows/fishfight/fish_state_tired",
		text = "5"
	}
}

local function updateAbilityTimer()
	if FishFight.gameState ~= STATE_GAME then
		return
	end

	if abilityTimer then
		abilityTimerLabel:setVisible(abilityTimer > 0)
		abilityTimerLabel:setText(formatTime(abilityTimer / 1000))

		abilityTimer = abilityTimer - 100
	end

	scheduleEvent(updateAbilityTimer, 100)
end

local weightColors = {
	large = "#87c72c",
	medium = "white",
	gargantuan = "#fc8c08",
	small = "#b3b3b3"
}

function FishFight.sendAbility(id)
	if FishFight.gameState ~= STATE_GAME then
		return
	end

	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		local data = {
			action = "playerInput",
			ability = id
		}

		protocolGame:sendExtendedOpcode(ExtendedIds.FishFight, g_game.serializeTable(data))
	end
end

function FishFight.stopFight()
	if FishFight.gameState == STATE_GAME then
		local protocolGame = g_game.getProtocolGame()

		if protocolGame then
			local data = {
				action = "endFight"
			}

			protocolGame:sendExtendedOpcode(ExtendedIds.FishFight, g_game.serializeTable(data))
		end

		FishFight.hide()
	end
end

local function onFishFightRequest(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.FishFight then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	if data.action == "startFight" then
		fish = data.fish
		fish.maxHealth = fish.health
		position = data.position
		rod = data.rod
		rod.durability = rod.maxDurability

		FishFight.show(fish)

		FishFight.gameState = STATE_GAME
		FishFight.bigNumbers = false
		abilityTimer = 0

		updateAbilityTimer()
	elseif data.action == "update" then
		fish = data.fish
		rod.maxDurability = data.rod.maxDurability
		rod.currentDurability = data.rod.currentDurability

		healthBar:setPercentage(math.max(0, math.min(fish.maxHealth, math.round(fish.health))), fish.maxHealth)
		durabilityLoss:setWidth(150 * (rod.durability - rod.maxDurability) / rod.durability)
		durabilityBar:setPercent(rod.currentDurability / rod.maxDurability * 100)

		local behaviour = fishBehaviour[fish.behaviour]

		if behaviour then
			FishFight.bigNumbers = fish.behaviour >= FISHFIGHT_STATE_TIRED

			if FishFight.currentBehaviour ~= behaviour or FishFight.currentBehaviour == behaviour and data.timeLeft > 9750 then
				behaviourIcon:setImageSource(behaviour.icon)
				behaviourIcon:setTooltip(behaviour.description)

				abilityTimer = data.timeLeft

				timeoutLabel:setText(formatTime(abilityTimer))
				spellProgressRect:setPercent(0)
				spellProgressRect:onSpellCooldown(abilityTimer, false, function()
					behaviourIcon:setVisible(false)
				end)
				behaviourIcon:getChildById("number"):setText(behaviour.text or "")
			end
		end

		FishFight.currentBehaviour = behaviour

		behaviourIcon:setVisible(behaviour and true or false)
	elseif data.action == "endFight" then
		FishFight.gameState = STATE_NONE

		FishFight.hide()
	elseif data.action == "reward" then
		FishFight.displayInfoWindow(data)
	end
end

function FishFight.init()
	FishFight.create()

	abilityTimerLabel = FishFight.window:recursiveGetChildById("abilityTimerLabel")

	ProtocolGame.registerExtendedOpcode(ExtendedIds.FishFight, onFishFightRequest)
	connect(g_game, {
		onGameEnd = FishFight.hide
	}, true)
	connect(LocalPlayer, {
		onPositionChange = FishFight.onGeometryChange
	})
	connect(modules.game_interface.getMapPanel(), {
		onGeometryChange = FishFight.onGeometryChange
	})
end

function FishFight.create()
	FishFight.window = g_ui.loadUI("fishfight.otui", modules.game_interface.getRootPanel())

	FishFight.window:hide()

	healthBar = FishFight.window:recursiveGetChildById("healthBar")

	healthBar:resizeElements(0.5, true)
	healthBar:setPercentage(100, 100)

	durabilityBar = FishFight.window:recursiveGetChildById("durabilityBar")

	durabilityBar:resizeElements(0.5, true)
	durabilityBar:setPercent(0)

	durabilityBar.minWidth = 0
	durabilityLoss = FishFight.window:recursiveGetChildById("durabilityLoss")

	durabilityLoss:setWidth(0)

	nameLabel = FishFight.window:recursiveGetChildById("fishName")
	behaviourIcon = FishFight.window:recursiveGetChildById("behaviourIcon")
	timeoutLabel = FishFight.window:recursiveGetChildById("timeout")
	spellProgressRect = FishFight.window:recursiveGetChildById("spellProgressRect")

	spellProgressRect:setId("spellProgressRect")

	spellProgressRect.icon = behaviourIcon

	spellProgressRect:fill("parent")
	spellProgressRect:setCircle(true)

	spellProgressRect.reversed = true

	behaviourIcon:setBorderWidth(0)

	local overlay = FishFight.window:recursiveGetChildById("overlay")

	overlay:getChildById("labelBackground"):hide()
end

function FishFight.terminate()
	FishFight.window:destroy()

	FishFight.window = nil

	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.FishFight)
	disconnect(g_game, {
		onGameEnd = FishFight.hide
	}, true)
	disconnect(LocalPlayer, {
		onPositionChange = FishFight.onGeometryChange
	})
	disconnect(modules.game_interface.getMapPanel(), {
		onGeometryChange = FishFight.onGeometryChange
	})
end

function FishFight.hide()
	if healthBar.event then
		scheduleEvent(function()
			FishFight.hide()
		end, 50)

		return
	end

	g_layout.onCloseWindow()
	FishFight.window:hide()

	abilityTimer = 0

	if g_game.isInShip() then
		AbilityBar.setState(AbilityBarCategoryShip)
	else
		AbilityBar.setDefaultState()
	end

	FishFight.unlock()
end

function FishFight.show(fish)
	nameLabel:setText(string.format("%s %s", fish.namePrefix, fish.name):titleCase())
	nameLabel:setColor(weightColors[fish.namePrefix])

	local pos = modules.game_interface.getMapPanel():transformPositionTo2D(position)

	pos.y = math.max(pos.y, 100)
	pos.x = math.min(pos.x, modules.game_interface.getRootPanel():getWidth() - 180)

	FishFight.window:setMarginTop(pos.y - 90)
	FishFight.window:setMarginLeft(pos.x - 90)
	g_layout.onCloseWindow()
	FishFight.window:show()
	healthBar:setPercentage(100, 100)
	healthBar:recursiveGetChildById("fish"):setMarginTop(1)
	durabilityBar:setPercent(0)
	durabilityLoss:setWidth(0)
	timeoutLabel:setText("")
	AbilityBar.setState(AbilityBarCategoryFishing)
	behaviourIcon:setVisible(false)
	FishFight.lock()
end

function FishFight.onGeometryChange()
	if FishFight.window and FishFight.window:isVisible() then
		local pos = modules.game_interface.getMapPanel():transformPositionTo2D(position)

		FishFight.window:setMarginTop(pos.y - 90)
		FishFight.window:setMarginLeft(pos.x - 90)
	end
end

function FishFight.lock()
	modules.game_walking.setWalking(false)
end

function FishFight.unlock()
	modules.game_walking.setWalking(true)
end

function FishFight.displayInfoWindow(data)
	if not data.uuid then
		return
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local item = player:getItemByUUID(data.uuid)

	if not item then
		return
	end

	local window = g_ui.createWidget("GameTooltipWindow", modules.game_interface.getHUDPanel())

	if not window then
		return
	end

	window:hide()
	g_gameTooltip.displayItem(item, nil, window)
	scheduleEvent(function()
		local GameLootNotification = modules.game_lootnotification.GameLootNotification

		if GameLootNotification then
			GameLootNotification:addFishRewardWindow(window)
		else
			g_layout.onOpenWindow(window, 1000, true)

			local pos = modules.game_interface.getMapPanel():transformPositionTo2D(g_game.getLocalPlayer():getPosition())

			pos.x = math.min(pos.x + window:getWidth() / 2, modules.game_interface.getRootPanel():getWidth() - window:getWidth())
			pos.y = pos.y - window:getHeight()

			window:setPosition(pos)
			scheduleEvent(function()
				g_effects.fadeOut(window, 1000, nil, true)
			end, 5000)
		end
	end, 30)

	return window
end

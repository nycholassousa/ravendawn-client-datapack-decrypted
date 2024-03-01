-- chunkname: @/modules/game_icons/icons.lua

CONST_ME_FALLINGLEAF1 = 674
CONST_ME_FALLINGLEAF2 = 675
CONST_ME_FALLINGLEAF3 = 676
g_icons = {
	font = "baby-14",
	textColor = "#17e91c",
	animationDuration = 1250,
	fonts = {
		[INFAMY_ICON_ID] = "baby-14",
		[SILVER_ICON_ID] = "baby-14",
		[REPUTATION_MERCENARY_ICON_ID] = "baby-14",
		[REPUTATION_ORDER_ICON_ID] = "baby-14",
		[REPUTATION_CRIMINAL_ICON_ID] = "baby-14",
		[LEVEL_UP_ICON_ID] = "baby-32"
	},
	textOffset = {
		x = 0,
		y = 0
	},
	offset = {
		x = 0,
		y = -30
	},
	textAlign = AlignRight,
	speed = {
		x = -100,
		y = -100
	},
	colors = {
		[INFAMY_ICON_ID] = "#c93a3a",
		[LEVEL_UP_ICON_ID] = "#e7b131"
	},
	customCases = {
		[INFAMY_ICON_ID] = true,
		[LEVEL_UP_ICON_ID] = true,
		[REPUTATION_MERCENARY_ICON_ID] = true,
		[REPUTATION_ORDER_ICON_ID] = true,
		[REPUTATION_CRIMINAL_ICON_ID] = true
	}
}

function g_icons.init()
	connect(g_map, {
		onSetupItemIcon = g_icons.onSetupItemIcon,
		onEffect = g_icons.onEffect
	})
end

function g_icons.terminate()
	disconnect(g_map, {
		onSetupItemIcon = g_icons.onSetupItemIcon,
		onEffect = g_icons.onEffect
	})
end

function g_icons.onEffect(effect)
	local hasOffset = false
	local pos = effect:getPosition()
	local tile = g_map.getTile(pos)

	if not tile then
		return
	end

	for _, item in pairs(tile:getItems()) do
		if item:getId() == 33887 then
			hasOffset = true

			break
		end
	end

	if hasOffset then
		effect:setOffset({
			x = -16,
			y = -16
		})
	end
end

function g_icons.onWoodcuttingEffect(pos)
	local tile = g_map.getTile(pos)

	if not tile then
		return
	end

	local hasOffset = false

	for _, item in pairs(tile:getItems()) do
		if item:getId() == 33887 then
			hasOffset = true

			break
		end
	end

	local fallingLeafsEffects = {
		CONST_ME_FALLINGLEAF1,
		CONST_ME_FALLINGLEAF2,
		CONST_ME_FALLINGLEAF3
	}
	local fallingLeafEffect = Effect.create()

	fallingLeafEffect:setId(fallingLeafsEffects[math.random(1, #fallingLeafsEffects)])

	if hasOffset then
		fallingLeafEffect:setOffset({
			x = -16,
			y = -16
		})
	end

	tile:addThing(fallingLeafEffect)
	scheduleEvent(function()
		tile:removeThing(fallingLeafEffect)
	end, fallingLeafEffect:getTotalDuration())
end

function g_icons.onGatheringScreenshake(pos)
	if g_settings.getBoolean("screenShake") and Position.isInRange(g_game.getLocalPlayer():getPosition(), pos, 2, 2) then
		modules.game_interface.getMapPanel():shake(3, 1, 50, 0, 1)
	end
end

local function getIconImageSource(id)
	if id == SILVER_ICON_ID then
		return "/images/ui/icons/silver"
	elseif id == REPUTATION_MERCENARY_ICON_ID then
		return "/images/ui/windows/dialogue//mercenary"
	elseif id == REPUTATION_ORDER_ICON_ID then
		return "/images/ui/windows/dialogue//order"
	elseif id == REPUTATION_CRIMINAL_ICON_ID then
		return "/images/ui/windows/dialogue/villain"
	elseif id == INFAMY_ICON_ID then
		return "/images/ui/icons/infamy"
	else
		return nil
	end
end

local iconsSize = {
	[SPELL_RECAST_ICON] = 2,
	[LEVEL_UP_ICON_ID] = 5
}

function g_icons.onSetupItemIcon(widget)
	local iconId = widget:getId()
	local angle = iconId == LEVEL_UP_ICON_ID and math.pi / 2 or math.random() * math.pi / 2 + math.pi / 4
	local speedX = g_icons.speed.x * math.cos(angle)
	local speedY = g_icons.speed.y * math.sin(angle)
	local x = iconId == LEVEL_UP_ICON_ID and 10 or g_icons.offset.x + math.random(-10, 10)
	local y = iconId == LEVEL_UP_ICON_ID and 10 or g_icons.offset.y + math.random(-10, 10)
	local imageWidget = g_ui.createWidget("UIItem")

	if iconId == SPELL_RECAST_ICON then
		imageWidget:setImageSource(widget:getText())
		imageWidget:setSize({
			width = widget:getSize(),
			height = widget:getSize()
		})
		widget:setText("")
	else
		local hasCount = g_icons.customCases[iconId]
		local iconSource = getIconImageSource(iconId)

		if iconSource then
			imageWidget:setImageSource(iconSource)
			imageWidget:setTextOffset({
				x = -2,
				y = -3
			})

			if not hasCount then
				widget:setCount(0)
			end

			imageWidget:setSize({
				height = 96,
				width = 96
			})
			imageWidget:setMarginLeft(32)
			imageWidget:setMarginTop(32)
			imageWidget:setImageSize({
				height = 48,
				width = 48
			})
			imageWidget:setImageOffset({
				x = 8,
				y = 8
			})
		end

		if widget:getCount() <= 0 then
			imageWidget:setText("")
		end
	end

	scheduleEvent(function()
		imageWidget:destroy()
	end, g_icons.animationDuration)
	widget:setImageWidget(imageWidget)
	widget:setSize(iconsSize[iconId] or widget:getSize() * 3)
	widget:setFont(g_icons.fonts[iconId] or g_icons.font)
	widget:setTextOffset({
		x = 16,
		y = 16
	})
	widget:setColorEx(g_icons.colors[iconId] or g_icons.textColor)
	widget:setOffset(iconId == LEVEL_UP_ICON_ID and {
		x = x - 80,
		y = y - 145
	} or {
		x = x,
		y = y
	})
	widget:setAnimationDuration(g_icons.animationDuration)
	widget:setSpeed({
		x = speedX,
		y = speedY
	})

	if g_icons.textAlign then
		widget:setTextAlign(AlignCenter)
	end
end

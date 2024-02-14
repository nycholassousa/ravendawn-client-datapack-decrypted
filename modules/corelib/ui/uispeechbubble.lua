-- chunkname: @/modules/corelib/ui/uispeechbubble.lua

UISpeechBubble = extends(UIWidget, "UISpeechBubble")

local removeTalkBubbleEvent = {}

function UISpeechBubble.create()
	local self = UISpeechBubble.internalCreate()

	self.hash = nil
	self.owner = nil

	return self
end

function UISpeechBubble:setHash(hash)
	self.hash = hash
end

function UISpeechBubble:setOwner(owner)
	self.owner = owner
end

function UISpeechBubble:setValue(text)
	self:setText(text)
	self.text:setText(self:getText())
end

function UISpeechBubble:display(talker, color, force)
	if not force and not modules.game_settings.getOption("showChatBubble") then
		return
	end

	local talkerId = talker:getId()

	if removeTalkBubbleEvent[talkerId] then
		removeEvent(removeTalkBubbleEvent[talkerId])

		removeTalkBubbleEvent[talkerId] = nil

		local talkBubbleWidget = talker:getTalkBubbleWidget()

		if talkBubbleWidget then
			talkBubbleWidget:destroy()
			talker:setTalkBubbleWidget(nil)
		end
	else
		local talkBubbleWidget = talker:getTalkBubbleWidget()

		if talkBubbleWidget then
			g_effects.cancelFade(talkBubbleWidget)
		end
	end

	if color then
		self.text:setTextColor(color)
	end

	signalcall(self.text.onTextChange, self.text, self.text:getText(), "")

	local opacity = math.max(force and 0.8 or 0, modules.game_settings.getOption("chatBubbleOpacity") / 100)

	self.background:setOpacity(opacity)
	self.triangle:setOpacity(opacity)
	g_effects.fadeIn(self, 500)

	local fadeTime = modules.game_settings.getOption("chatBubbleFadeTime")
	local fadeDelay = math.max(fadeTime == 1 and 3000 or fadeTime == 2 and 2000 or fadeTime == 3 and 1000 or 2000, #self:getText() * 65)

	removeTalkBubbleEvent[talkerId] = scheduleEvent(function()
		removeTalkBubbleEvent[talkerId] = nil

		g_effects.fadeOut(self, 500, nil, true, function()
			if talker and not talker:isRemoved() then
				talker:setTalkBubbleWidget(nil)
			end
		end)
	end, fadeDelay)

	talker:setTalkBubbleWidget(self)
	addEvent(function()
		local height = self:getHeight()

		self:setMarginTop(-52 - height / 2)
		self:setMarginLeft(-17)
	end)
	signalcall(self.onDisplay, self)
end

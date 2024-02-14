-- chunkname: @/modules/game_voiceacting/voice_acting.lua

GameVoiceActing = {
	currentlyPlayingId = 0
}

function GameVoiceActing:loadConfig()
	local func, error = loadfile("config.lua")

	if not func then
		g_logger.fatal(error)

		return false
	end

	func()

	local env = getfenv(0)

	env.cfg = {}

	setmetatable(env.cfg, {
		__index = env
	})
	setfenv(func, env.cfg)

	return true
end

function GameVoiceActing:init()
	self:loadConfig()
	connect(g_game, {
		onCloseNpcWindow = self.onCloseNpcWindow
	})
	connect(UISpeechBubble, {
		onDisplay = self.onSpeechBubbleDisplay
	})
end

function GameVoiceActing:terminate()
	disconnect(g_game, {
		onCloseNpcWindow = self.onCloseNpcWindow
	})
	disconnect(UISpeechBubble, {
		onDisplay = self.onSpeechBubbleDisplay
	})
end

function GameVoiceActing:onDialogueVoice(hash)
	local language = "EN"
	local voices = cfg.voices[language]

	if not voices then
		g_logger.error("No voices for language " .. language)

		return
	end

	local eventId = voices[hash]

	if not eventId then
		return
	end

	self:play(eventId)
end

function GameVoiceActing:play(eventId)
	if self.currentlyPlayingId ~= 0 then
		self:stop()
	end

	self.currentlyPlayingId = g_sound.play(eventId)

	if self.currentlyPlayingId == 0 then
		g_logger.error("Failed to play voice event " .. eventId)
	end
end

function GameVoiceActing:stop()
	if self.currentlyPlayingId ~= 0 then
		g_wwise.stopEvent(self.currentlyPlayingId)

		self.currentlyPlayingId = 0
	end
end

function GameVoiceActing.onCloseNpcWindow()
	local self = GameVoiceActing

	self:stop()
end

function GameVoiceActing.onSpeechBubbleDisplay(speechBubble)
	local self = GameVoiceActing
	local language = "EN"
	local voices = cfg.voices[language]

	if not voices then
		g_logger.error("No voices for language " .. language)

		return
	end

	local hash = speechBubble.hash

	if not hash then
		return
	end

	local eventId = voices[hash]

	if not eventId then
		return
	end

	local owner = speechBubble.owner

	if not owner then
		g_logger.error("No owner for speech bubble")

		return
	end

	if owner.playingID and owner.playingID ~= 0 then
		g_wwise.stopEvent(owner.playingID)
	end

	local playingID = g_sound.play(eventId, owner:getId(), owner:getPosition())

	if playingID == 0 then
		g_logger.error("Failed to play voice event " .. eventId)

		return
	end

	owner.playingID = playingID
end

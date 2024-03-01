-- chunkname: @/modules/game_chat/config.lua

buttonList = {
	{
		splitter = true,
		name = "general",
		isTab = true,
		tooltip = "General Chat"
	},
	{
		name = "global",
		selection = {
			english = {
				name = "english",
				hasSelection = true,
				buffer = "global_en",
				isTab = true,
				channelId = 8,
				tooltip = "English Global Chat"
			},
			portuguese = {
				name = "portuguese",
				hasSelection = true,
				buffer = "global_br",
				isTab = true,
				channelId = 9,
				tooltip = "Portuguese Global Chat"
			},
			polish = {
				name = "polish",
				hasSelection = true,
				buffer = "global_pl",
				isTab = true,
				channelId = 10,
				tooltip = "Polish Global Chat"
			},
			spanish = {
				name = "spanish",
				hasSelection = true,
				buffer = "global_spa",
				isTab = true,
				channelId = 11,
				tooltip = "Spanish Global Chat"
			}
		}
	},
	{
		name = "server_log",
		bufferSize = 50,
		internal = true,
		isTab = true,
		tooltip = "Server Log"
	},
	{
		name = "action_log",
		bufferSize = 50,
		internal = true,
		isTab = true,
		tooltip = "Action Log"
	},
	{
		isTab = true,
		channelId = 1,
		name = "party",
		tooltip = "Party Chat"
	},
	{
		isTab = true,
		channelId = 2,
		name = "guild",
		tooltip = "Guild Chat"
	},
	{
		isTab = true,
		channelId = 12,
		name = "looking_for_group",
		tooltip = "Looking for Group"
	}
}
indexedButtonList = {}

for _, info in ipairs(buttonList) do
	if info.selection then
		for _, selection in pairs(info.selection) do
			indexedButtonList[selection.buffer] = selection
		end
	else
		indexedButtonList[info.name] = info
	end
end

channelIdToBufferName = {}

for _, info in ipairs(buttonList) do
	if info.selection then
		for _, selection in pairs(info.selection) do
			channelIdToBufferName[selection.channelId] = selection.buffer
		end
	elseif info.channelId then
		channelIdToBufferName[info.channelId] = info.name
	end
end

textModeSettings = {
	[TextTypes.TextTypeConsoleBlue] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeConsoleRed] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeDefault] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeWarning] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_WARNING
	},
	[TextTypes.TextTypeEventAdvance] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_INFO
	},
	[TextTypes.TextTypeSmall] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeInfoDescription] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_WARNING
	},
	[TextTypes.TextTypeDamageDealt] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeDamageOthers] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeDamageReceived] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeHeal] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeHealOthers] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeExp] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeExpOthers] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeEventDefault] = {
		tab = "action_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeLoot] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeConsoleOrange] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeConsoleWhite] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeEventOrange] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeLook] = {
		tab = "server_log",
		color = "#FCBE7F"
	},
	[TextTypes.TextTypeProgress] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_SUCCESS
	},
	[TextTypes.TextTypeBroadcast] = {
		tab = "general",
		color = "#FF5151",
		type = NOTIFICATION_STAFF
	},
	[TextTypes.TextTypeSpeechBubble] = {
		tab = "general",
		color = "#CED2D9"
	},
	[TextTypes.TextTypeError] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_ERROR
	},
	[TextTypes.TextTypeScreenBox] = {
		tab = "server_log"
	},
	[TextTypes.TextTypeScreenBoxNoDuration] = {
		tab = "server_log"
	},
	[TextTypes.TextTypeScreenError] = {
		tab = "server_log"
	}
}
talkModeSettings = {
	[TalkTypes.TalkTypeSay] = {
		tab = "general",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	},
	[TalkTypes.TalkTypePrivateFrom] = {
		ignoreSelf = true,
		private = true,
		color = {
			send = "#A556FF",
			receive = "#A556FF"
		}
	},
	[TalkTypes.TalkTypePrivateTo] = {
		private = true,
		color = {
			send = "#D3ACFF",
			receive = "#D3ACFF"
		}
	},
	[TalkTypes.TalkTypeChannelWhite] = {
		tab = "global",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	},
	[TalkTypes.TalkTypeChannelYellow] = {
		tab = "global",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	},
	[TalkTypes.TalkTypeChannelOrange] = {
		tab = "global",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	},
	[TalkTypes.TalkTypeGamemasterBroadcast] = {
		tab = "general",
		color = {
			send = "#FF5151",
			receive = "#FF5151"
		}
	},
	[TalkTypes.TalkTypeGameMasterPrivateFrom] = {
		ignoreSelf = true,
		private = true,
		color = {
			send = "#FF5151",
			receive = "#FF5151"
		}
	},
	[TalkTypes.TalkTypeGameMasterPrivateTo] = {
		private = true,
		color = {
			send = "#A2CAFB",
			receive = "#A2CAFB"
		}
	},
	[TalkTypes.TalkTypeChannelGold] = {
		tab = "global",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	},
	[TalkTypes.TalkTypeChannelGreen] = {
		tab = "global",
		color = {
			send = "#FFFFFF",
			receive = "#CED2D9"
		}
	}
}
chatMessageTitlePrefix = {
	looking_for_group = "[LFG]",
	general = "[Local]",
	private = "[Whisper]",
	guild = "[Guild]",
	party = "[Party]",
	global_spa = "[Global-SPA]",
	global_pl = "[Global-PL]",
	global_br = "[Global-BR]",
	global_en = "[Global-EN]"
}
messageHistorySize = 50
messageBufferSize = 50
npcTextColor = "#FEFEC6"
partyTextColor = {
	send = "#A2CAFB",
	receive = "#5DA4FB"
}
guildTextColor = {
	send = "#ADD2A5",
	receive = "#77D463"
}
premiumTextColor = {
	send = "#F8D97F",
	receive = "#F7B900"
}
LFGTextColor = {
	send = "#FFFFFF",
	receive = "#CED2D9"
}
LuaChannelId = 7
PartyChannelId = 1
GuildChannelId = 2
LFGChannelId = 12
talkTypes = {
	{
		name = "Say",
		color = "#CED2D9"
	},
	{
		name = "Whisper",
		color = "#A556FF"
	},
	{
		name = "Party",
		color = "#5DA4FB"
	},
	{
		name = "Guild",
		color = "#77D463"
	},
	{
		name = "Global",
		color = "#CED2D9"
	},
	{
		name = "Looking for Group",
		color = "#CED2D9"
	}
}
talkTypesColor = {}

for _, t in ipairs(talkTypes) do
	talkTypesColor[t.name] = t.color
end

TYPING_SFX = 899728676
SEND_MESSAGE_SFX = 3863070935
SEND_WHISPER_SFX = 2845289928
RECEIVE_WHISPER_SFX = 4234828879

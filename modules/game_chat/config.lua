-- chunkname: @/modules/game_chat/config.lua

buttonList = {
	{
		splitter = true,
		isTab = true,
		name = "general",
		tooltip = "General Chat"
	},
	{
		name = "global",
		selection = {
			english = {
				tooltip = "English Global Chat",
				hasSelection = true,
				name = "english",
				isTab = true,
				buffer = "global_en",
				channelId = 8
			},
			portuguese = {
				tooltip = "Portuguese Global Chat",
				hasSelection = true,
				name = "portuguese",
				isTab = true,
				buffer = "global_br",
				channelId = 9
			},
			polish = {
				tooltip = "Polish Global Chat",
				hasSelection = true,
				name = "polish",
				isTab = true,
				buffer = "global_pl",
				channelId = 10
			},
			spanish = {
				tooltip = "Spanish Global Chat",
				hasSelection = true,
				name = "spanish",
				isTab = true,
				buffer = "global_spa",
				channelId = 11
			}
		}
	},
	{
		name = "server_log",
		internal = true,
		bufferSize = 50,
		isTab = true,
		tooltip = "Server Log"
	},
	{
		name = "action_log",
		internal = true,
		bufferSize = 50,
		isTab = true,
		tooltip = "Action Log"
	},
	{
		name = "party",
		tooltip = "Party Chat",
		isTab = true,
		channelId = 1
	},
	{
		name = "guild",
		tooltip = "Guild Chat",
		isTab = true,
		channelId = 2
	},
	{
		name = "looking_for_group",
		tooltip = "Looking for Group",
		isTab = true,
		channelId = 12
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
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeConsoleRed] = {
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeDefault] = {
		color = "#FCBE7F",
		tab = "server_log"
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
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeInfoDescription] = {
		tab = "server_log",
		color = "#FCBE7F",
		type = NOTIFICATION_WARNING
	},
	[TextTypes.TextTypeDamageDealt] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeDamageOthers] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeDamageReceived] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeHeal] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeHealOthers] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeExp] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeExpOthers] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeEventDefault] = {
		color = "#FCBE7F",
		tab = "action_log"
	},
	[TextTypes.TextTypeLoot] = {
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeConsoleOrange] = {
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeConsoleWhite] = {
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeEventOrange] = {
		color = "#FCBE7F",
		tab = "server_log"
	},
	[TextTypes.TextTypeLook] = {
		color = "#FCBE7F",
		tab = "server_log"
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
		color = "#CED2D9",
		tab = "general"
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
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	},
	[TalkTypes.TalkTypePrivateFrom] = {
		ignoreSelf = true,
		private = true,
		color = {
			receive = "#A556FF",
			send = "#A556FF"
		}
	},
	[TalkTypes.TalkTypePrivateTo] = {
		private = true,
		color = {
			receive = "#D3ACFF",
			send = "#D3ACFF"
		}
	},
	[TalkTypes.TalkTypeChannelWhite] = {
		tab = "global",
		color = {
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	},
	[TalkTypes.TalkTypeChannelYellow] = {
		tab = "global",
		color = {
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	},
	[TalkTypes.TalkTypeChannelOrange] = {
		tab = "global",
		color = {
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	},
	[TalkTypes.TalkTypeGamemasterBroadcast] = {
		tab = "general",
		color = {
			receive = "#FF5151",
			send = "#FF5151"
		}
	},
	[TalkTypes.TalkTypeGameMasterPrivateFrom] = {
		ignoreSelf = true,
		private = true,
		color = {
			receive = "#FF5151",
			send = "#FF5151"
		}
	},
	[TalkTypes.TalkTypeGameMasterPrivateTo] = {
		private = true,
		color = {
			receive = "#A2CAFB",
			send = "#A2CAFB"
		}
	},
	[TalkTypes.TalkTypeChannelGold] = {
		tab = "global",
		color = {
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	},
	[TalkTypes.TalkTypeChannelGreen] = {
		tab = "global",
		color = {
			receive = "#CED2D9",
			send = "#FFFFFF"
		}
	}
}
chatMessageTitlePrefix = {
	global_spa = "[Global-SPA]",
	global_en = "[Global-EN]",
	looking_for_group = "[LFG]",
	guild = "[Guild]",
	party = "[Party]",
	general = "[Local]",
	global_pl = "[Global-PL]",
	global_br = "[Global-BR]",
	private = "[Whisper]"
}
messageHistorySize = 50
messageBufferSize = 50
npcTextColor = "#FEFEC6"
partyTextColor = {
	receive = "#5DA4FB",
	send = "#A2CAFB"
}
guildTextColor = {
	receive = "#77D463",
	send = "#ADD2A5"
}
premiumTextColor = {
	receive = "#F7B900",
	send = "#F8D97F"
}
LFGTextColor = {
	receive = "#CED2D9",
	send = "#FFFFFF"
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

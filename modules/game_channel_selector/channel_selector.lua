-- chunkname: @/modules/game_channel_selector/channel_selector.lua

local p_window, confirmBox
local STATE_LOADING = 1
local STATE_LOADED = 2

function init()
	g_ui.importStyle("selector")

	p_window = g_ui.createWidget("ChannelSelectorWindow", modules.game_interface.getHUDPanel())
	p_window.originalHeight = p_window:getHeight()

	p_window:hide()

	function p_window:onVisibilityChange(visible)
		if confirmBox then
			confirmBox:destroy()

			confirmBox = nil
		end
	end

	connect(g_game, {
		onGameEnd = hide
	})
	ProtocolGame.registerExtendedOpcode(ExtendedIds.ChannelSelector, onExtendedOpcode)
end

function terminate()
	p_window:destroy()
	disconnect(g_game, {
		onGameEnd = hide
	})
	ProtocolGame.unregisterExtendedOpcode(ExtendedIds.ChannelSelector)
end

function hide()
	p_window:hide()
end

function setState(newState)
	local currentState = p_window.state

	if currentState == newState then
		return
	end

	if newState == STATE_LOADING then
		p_window:recursiveGetChildById("channelsPanel"):destroyChildren()
		p_window:recursiveGetChildById("loading"):show()
	elseif newState == STATE_LOADED then
		p_window:recursiveGetChildById("loading"):hide()
	end

	p_window.state = newState
end

function toggle()
	if p_window:isVisible() then
		hide()

		return
	end

	requestOpeningChannelsList()
	setState(STATE_LOADING)
	p_window:show()
	p_window:raise()
	p_window:focus()
end

function requestOpeningChannelsList()
	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.ChannelSelector, g_game.serializeTable({
			action = "request_channel_selection_window"
		}))
	end
end

function swapToChannel(self)
	if confirmBox then
		return
	end

	local channelsPanel = p_window:getChildById("content"):getChildById("channelsPanel")
	local selectedChannel

	for _, widget in pairs(channelsPanel:getChildren()) do
		if widget:isChecked() then
			selectedChannel = widget
		end
	end

	if not selectedChannel then
		return
	end

	local function yesCallback()
		confirmBox:destroy()

		confirmBox = nil

		local protocolGame = g_game.getProtocolGame()

		if protocolGame then
			protocolGame:sendExtendedOpcode(ExtendedIds.ChannelSelector, g_game.serializeTable({
				action = "request_channel_swap",
				channelId = selectedChannel.channelId
			}))
		end
	end

	local function noCallback()
		confirmBox:destroy()

		confirmBox = nil
	end

	local buttonYes = {
		text = tr("Yes"),
		callback = yesCallback
	}
	local buttonNo = {
		text = tr("No"),
		callback = noCallback
	}
	local buttonCancel = {
		text = tr("Cancel"),
		callback = noCallback
	}
	local description = "You are about to switch to a warmode channel. This channel has the following properties:\n\n- PvP enabled in all areas with no infamy penalty.\n- Value of Tradepacks created and sold in this channel increased by 20%%.\n- Experience from killing creatures and loot rates increased by 10%%.\n\n"
	local hasEnoughLevel = selectedChannel.minimumLevel <= g_game.getLocalPlayer():getLevel()

	if hasEnoughLevel then
		description = description .. "Do you want to continue?"
	else
		description = description .. string.format("You need at least %d legacy level to join this channel.", selectedChannel.minimumLevel)
	end

	if bit.band(selectedChannel.flags, CHANNEL_FLAG_WARMODE) == CHANNEL_FLAG_WARMODE then
		confirmBox = displayGeneralBox(tr("Warmode Channel"), tr(description), {
			hasEnoughLevel and buttonYes or buttonCancel,
			hasEnoughLevel and buttonNo or nil
		}, hasEnoughLevel and yesCallback or noCallback, noCallback)

		return
	end

	local protocolGame = g_game.getProtocolGame()

	if protocolGame then
		protocolGame:sendExtendedOpcode(ExtendedIds.ChannelSelector, g_game.serializeTable({
			action = "request_channel_swap",
			channelId = selectedChannel.channelId
		}))
	end
end

function enableChannelSwap()
	local tableData = p_window:recursiveGetChildById("channelsTableData")

	for _, rowChild in pairs(tableData:getChildren()) do
		local actionsColumnWidget = rowChild:getChildByIndex(3)

		actionsColumnWidget:getChildById("swapBtn"):setEnabled(true)
	end
end

function updateWindowSize()
	local channelsPanel = p_window:getChildById("content"):getChildById("channelsPanel")
	local height = p_window.originalHeight + channelsPanel:getHeight()

	p_window:setHeight(height)
end

function onExtendedOpcode(protocol, opcode, buffer)
	if opcode ~= ExtendedIds.ChannelSelector or buffer == "" then
		return
	end

	local data = g_game.unserializeTable(buffer)

	if type(data) ~= "table" then
		return
	end

	table.sort(data.channels, function(a, b)
		if a.id < b.id then
			return true
		end

		return false
	end)

	if data.action == "open_channel_selection_window" then
		local currentChannel = p_window:getChildById("content"):getChildById("headerPanel")
		local channelsPanel = p_window:getChildById("content"):getChildById("channelsPanel")

		channelsPanel:destroyChildren()

		local channelsAmount = #data.channels - 1
		local height = math.min(math.max(60 * channelsAmount, 130), channelsPanel.maxHeight)

		channelsPanel:setHeight(height)
		updateWindowSize()

		local swapChannelBtn = p_window:recursiveGetChildById("swapChannelBtn")

		swapChannelBtn:setStyle("DisabledButton")

		for _, info in pairs(data.channels) do
			if bit.band(info.flags, CHANNEL_FLAG_WARMODE) == CHANNEL_FLAG_WARMODE then
				info.name = info.name:gsub("#%d+", "")
			end

			if info.id == G.currentChannelId then
				currentChannel.channelLbl:setText(tr("%s", info.name))
			else
				local channelWidget = g_ui.createWidget("ChannelWidget", channelsPanel)

				channelWidget.channelLbl:setText(tr("%s", info.name))

				channelWidget.channelId = info.id
				channelWidget.flags = info.flags
				channelWidget.minimumLevel = info.minimumLevel

				if info.state == "ONLINE" then
					channelWidget:setOn(true)
				else
					channelWidget:setOn(false)
				end
			end
		end

		G.channelsInfo = data.channels

		signalcall(g_game.onUpdateChannelInfo, data.channels)
		setState(STATE_LOADED)
	elseif data.action == "channel_info" then
		G.channelsInfo = data.channels

		signalcall(g_game.onUpdateChannelInfo, data.channels)
	end
end

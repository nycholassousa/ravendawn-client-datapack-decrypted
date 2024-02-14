-- chunkname: @/modules/game_feedback/feedback.lua

categories = {
	bugs = {
		"Suggestion",
		"Map",
		"Interface",
		"Gameplay",
		"Quest",
		"RavenCards",
		"Rangers Company",
		"Other"
	}
}
feedbackWindow = nil
feedbackTextEdit = nil
feedbackUrlEdit = nil
feedbackList = nil
feebackUrlsList = nil

local messageBox
local lastSubmitRequest = 0

function init()
	g_ui.importStyle("feedback")

	feedbackWindow = g_ui.createWidget("FeedbackWindow", modules.game_interface.getHUDPanel())

	feedbackWindow:hide()

	feedbackTextEdit = feedbackWindow:recursiveGetChildById("feedbackText")
	feedbackUrlEdit = feedbackWindow:recursiveGetChildById("urlTextEdit")
	feedbackList = feedbackWindow:getChildById("feedbackList")
	feebackUrlsList = feedbackWindow:recursiveGetChildById("urlsList")

	connect(g_game, {
		onGameEnd = onGameEnd
	})
end

function terminate()
	destroyWindows()
end

function destroyFeedbackWindow()
	if feedbackWindow then
		feedbackWindow:destroy()

		feedbackWindow = nil
	end
end

function destroyWindows()
	destroyFeedbackWindow()

	if messageBox then
		messageBox:destroy()

		messageBox = nil
	end

	modules.game_interface.getMapPanel():focus()
	disconnect(g_game, {
		onGameEnd = onGameEnd
	})
end

function toggle()
	if feedbackWindow:isVisible() then
		hide()
	else
		show()
	end
end

function hide()
	reset()
	modules.game_minimap.toggleMinimapButton("feedbackButton", false)
	feedbackWindow:hide()
	modules.game_interface.getMapPanel():focus()
end

function show()
	modules.game_minimap.toggleMinimapButton("feedbackButton", true)
	feedbackWindow:show()
	feedbackWindow:raise()
	feedbackWindow:focus()
end

function reset()
	feedbackTextEdit:clearText()
	feedbackUrlEdit:clearText()
	feebackUrlsList:destroyChildren()
	feebackUrlsList:setHeight(0)
	feebackUrlsList:setVisible(false)
	resizeToFit()
end

function resizeToFit()
	local children = feedbackWindow:getChildById("contents"):getChildren()
	local height = 0

	for _, child in pairs(children) do
		if not child:getLayout() then
			height = height + child:getHeight() + child:getMarginTop() + child:getMarginBottom() + child:getPaddingBottom() + child:getPaddingTop()
		elseif #child:getChildren() >= 0 then
			height = height + #child:getChildren() * 16
		end
	end

	feedbackWindow:setHeight(height + 56)
end

function onSubmit()
	if not feedbackWindow or messageBox or g_clock.millis() - lastSubmitRequest <= 5000 then
		return
	end

	lastSubmitRequest = g_clock.millis()

	local category = feedbackWindow:recursiveGetChildById("category"):getCurrentOption()

	if not category or category and not table.find(categories.bugs, category.text) then
		showMessageBox("Feedback error", "Please select a category for your report.")

		return
	end

	local message = feedbackWindow:recursiveGetChildById("feedbackText"):getText()

	if message == "" or #message < 20 then
		showMessageBox("Feedback error", "Sorry, a report must contain at least 20 characters.")

		return
	end

	if feedbackWindow:recursiveGetChildById("urlTextEdit"):getText() ~= "" then
		showMessageBox("Feedback error", "Please click on the 'Add' button or remove text from the URL box.")

		return
	end

	local urls = {}

	for _, url in pairs(feedbackWindow:recursiveGetChildById("urlsList"):getChildren()) do
		table.insert(urls, url:getText())
	end

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local pos = player:getPosition()

	local function custom()
		local data = {}
		local tracker = modules.game_questlog

		if tracker then
			for _, quest in pairs(tracker.taskListHud.quests:getChildren()) do
				data[quest:getId()] = {}

				for __, task in pairs(quest.taskListPanel:getChildren()) do
					table.insert(data[quest:getId()], {
						name = task.taskDescription,
						taskId = task.taskId,
						progress = task.taskProgress
					})
				end
			end
		end

		return json.encode(data, 2)
	end

	local data = {
		category = category.text,
		message = message,
		urls = urls,
		playerName = player:getName(),
		position = string.format("%i, %i, %i", pos.x, pos.y, pos.z),
		custom = custom(),
		test = APP_TITLE:lower():find("test", 1, true) ~= nil,
		effectiveLevel = player:getEffectiveLevel(),
		level = player:getLevel(),
		channelName = g_game.getChannelName(),
		worldName = g_game.getWorldName()
	}
	local url = g_game.isRavenQuest() and "ravenquest.io" or "ravendawn.online"

	HTTP.postJSON(string.format("https://%s/server/bug-report", url), data, function(data, err)
		if err then
			print(err)
			showMessageBox("Feedback error", "There was an issue submitting your report. Please try again later.", function()
				hide()
			end)
		end

		showMessageBox("Feedback sent", string.format("Your report has been forwarded to the %s Team.\nThank you for your support!", g_game.isRavenQuest() and "RavenQuest" or "Ravendawn"), function()
			hide()
		end)
	end)
end

function showMessageBox(title, message, func)
	if messageBox then
		return
	end

	local function callback()
		messageBox:destroy()

		messageBox = nil

		if func then
			func()
		end
	end

	messageBox = displayGeneralBox(title, message, {
		{
			text = tr("OK"),
			callback = callback
		},
		anchor = AnchorHorizontalCenter
	}, callback, nil, "myriad-pro-16", feedbackWindow)

	messageBox:setDraggable(false)
end

function onGameEnd()
	hide()
end

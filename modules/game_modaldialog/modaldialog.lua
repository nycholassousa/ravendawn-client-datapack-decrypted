-- chunkname: @/modules/game_modaldialog/modaldialog.lua

WINDOW_TYPE_TEXT = 0
WINDOW_TYPE_ITEM = 1
WINDOW_TYPE_OUTFIT = 2
WINDOW_TYPE_EFFECT = 3
ModalDialog = ModalDialog or {
	windows = {},
	positions = {}
}
MODAL_CUSTOMID_TEMPORARY = 1501
MODAL_CUSTOMID_DEATHPENALTY = 1502
MODAL_CUSTOMID_LEARNARCHETYPE = 1503

local temporaryModalTime = 15000
local persistentModals = {
	MODAL_CUSTOMID_DEATHPENALTY
}

local function shortName(text)
	if string.len(text) < 13 then
		return text
	end

	return string.sub(text, 1, 10) .. "..."
end

function init()
	g_ui.importStyle("modaldialog")
	connect(g_game, {
		onModalDialog = onModalDialog,
		onGameEnd = destroyDialog
	})

	local dialog = rootWidget:recursiveGetChildById("modalDialog")

	if dialog then
		ModalDialog.window = dialog
	end
end

function terminate()
	disconnect(g_game, {
		onModalDialog = onModalDialog,
		onGameEnd = clearModalWindows
	})
end

function destroyDialog(modalDialog)
	if not modalDialog then
		return
	end

	modules.game_interface.focusMapPanel()

	if modalDialog.event then
		removeEvent(modalDialog.event)

		modalDialog.event = nil
	end

	if modalDialog.customId == MODAL_CUSTOMID_TEMPORARY then
		ModalDialog.windows[modalDialog.id] = nil
	else
		ModalDialog.window = nil
	end

	g_keyboard.unbindKeyPress("Up", modalDialog)
	g_keyboard.unbindKeyPress("Down", modalDialog)
	addEvent(function()
		if ModalDialog.modalDialog then
			ModalDialog.modalDialog:destroy()

			ModalDialog.modalDialog = nil
		end

		modalDialog:destroy()
	end)
end

function clearModalWindows()
	destroyDialog(ModalDialog.modalDialog)

	for _, modal in pairs(ModalDialog.windows) do
		destroyDialog(modal)
	end

	ModalDialog.window = nil
	ModalDialog.windows = {}
	ModalDialog.modalDialog = nil
end

function onModalDialog(id, customId, title, message, sender, height, width, windowType, buttons, enterButton, escapeButton, choices, priority, restorePosition)
	local isTemporary = customId == MODAL_CUSTOMID_TEMPORARY

	if ModalDialog.modalDialog and not isTemporary then
		return
	end

	local modalDialog = g_ui.createWidget("ModalDialog", modules.game_interface.getHUDPanel())

	modalDialog.id = id
	modalDialog.customId = customId

	if table.find(persistentModals, customId) then
		modalDialog.persistent = true
	end

	if not isTemporary then
		ModalDialog.modalDialog = modalDialog

		function modalDialog.onFocusChange()
			if not modalDialog:isFocused() then
				modalDialog:raise()
				modalDialog:focus()
			else
				modalDialog:shake(4, 3)
			end
		end
	end

	local messageLabel = modalDialog:getChildById("messageLabel")
	local choiceList = modalDialog:getChildById("choiceList")
	local choiceScrollbar = modalDialog:getChildById("choiceScrollBar")
	local buttonsPanel = modalDialog:getChildById("buttonsPanel")
	local outfit = {
		lookShader = 0,
		lookAura = 0,
		lookMount = 0,
		lookWing = 0,
		auxType = 0,
		lookFeet = 114,
		lookLegs = 114,
		lookBody = 114,
		lookHead = 114,
		lookAddons = 3,
		lookType = 0,
		category = ThingCategoryCreature
	}
	local player = g_game.getLocalPlayer()

	if player then
		outfit = player:getOutfit()
		outfit.lookAddons = 3
		outfit.category = ThingCategoryCreature
		outfit.auxType = 0
		outfit.lookWing = 0
		outfit.lookMount = 0
		outfit.lookAura = 0
		outfit.lookShader = 0
	end

	g_keyboard.bindKeyPress("Down", function()
		choiceList:focusNextChild(KeyboardFocusReason)
	end, modalDialog)
	g_keyboard.bindKeyPress("Up", function()
		choiceList:focusPreviousChild(KeyboardFocusReason)
	end, modalDialog)
	modalDialog:setText(title)

	if string.len(message) == 0 then
		messageLabel:hide()
	else
		messageLabel:show()
	end

	local highlightData = GetHighlightedText(title, "white")

	if #highlightData > 0 then
		modalDialog:setColoredText(highlightData)
	end

	messageLabel:setText(message)

	highlightData = GetHighlightedText(message, "white")

	if #highlightData > 0 then
		messageLabel:setColoredText(highlightData)
	end

	if windowType ~= WINDOW_TYPE_TEXT then
		choiceList = modalDialog:getChildById("choiceListCustom")
		choiceScrollbar = modalDialog:getChildById("choiceCustomScrollBar")

		if windowType == WINDOW_TYPE_ITEM then
			choiceList:getLayout():setCellSize(tosize("100 106"))
		end
	end

	local labelHeight

	for i = 1, #choices do
		local choiceId = choices[i][1]
		local primarySpecialId = choices[i][2]
		local secondarySpecialId = choices[i][3]
		local choiceName = choices[i][4]

		if windowType == WINDOW_TYPE_TEXT then
			local label = g_ui.createWidget("ChoiceListLabel", choiceList)

			label.choiceId = choiceId

			label:setText(choiceName)
			label:setPhantom(false)

			if not labelHeight then
				labelHeight = 0
			end
		elseif primarySpecialId > 0 then
			if windowType ~= WINDOW_TYPE_ITEM then
				if windowType == WINDOW_TYPE_EFFECT then
					outfit.lookType = 0
					outfit.category = ThingCategoryEffect
					outfit.auxType = primarySpecialId
				else
					outfit.lookType = primarySpecialId

					if secondarySpecialId > 0 then
						outfit.lookAddons = secondarySpecialId
					end
				end

				local label = g_ui.createWidget("ChoiceListOutfit", choiceList)

				label.choiceId = choiceId

				label:getChildById("name"):setText(shortName(choiceName))
				label:getChildById("name"):setTooltip(choiceName)
				label:recursiveGetChildById("creature"):setOutfit(outfit)
				label:setPhantom(false)

				if not labelHeight then
					labelHeight = 20
				end
			else
				local label = g_ui.createWidget("ChoiceListItem", choiceList)

				label.choiceId = choiceId

				label:getChildById("name"):setText(shortName(choiceName))
				label:getChildById("name"):setTooltip(choiceName)
				label:recursiveGetChildById("item"):setItemId(primarySpecialId)
				label:setPhantom(false)

				labelHeight = labelHeight or 20
			end
		end
	end

	choiceList:focusNextChild()

	local buttonsWidth = 0

	for i = 1, #buttons do
		local buttonId = buttons[i][1]
		local buttonText = buttons[i][2]
		local button = g_ui.createWidget("ModalButton", buttonsPanel)

		button:setText(buttonText)
		button:setWidth(math.max(130, button:getTextSize().width + 20))

		button.clickSound = true

		function button:onClick()
			local focusedChoice = choiceList:getFocusedChild()
			local choice = 255

			if focusedChoice then
				choice = focusedChoice.choiceId
			end

			if not restorePosition and customId > 0 then
				ModalDialog.positions[customId] = modalDialog:getPosition()
			end

			if buttonId == enterButton then
				signalcall(modalDialog.onConfirm, modalDialog)
			elseif buttonId == escapeButton then
				signalcall(modalDialog.onCancel)
			end

			g_game.answerModalDialog(id, buttonId, choice)
			destroyDialog(modalDialog)
		end

		buttonsWidth = buttonsWidth == 0 and buttonsWidth + button:getWidth() + button:getMarginLeft() + button:getMarginRight() or buttonsWidth
	end

	buttonsPanel:setWidth(#buttons * buttonsWidth + 10)

	local additionalHeight = 0

	if #choices > 0 then
		choiceList:setVisible(true)
		choiceScrollbar:setVisible(true)
		choiceList:setHeight(choiceList:getFirstChild():getHeight() * #choices)

		additionalHeight = choiceList:getHeight() + choiceList:getMarginBottom() + choiceList:getMarginTop() + 2
	end

	local horizontalPadding = modalDialog:getPaddingLeft() + modalDialog:getPaddingRight()

	buttonsWidth = buttonsPanel:getWidth() + horizontalPadding

	if height ~= 0 then
		modalDialog:setHeight(height)
	else
		modalDialog:setHeight(math.min(modalDialog.maximumHeight, math.max(modalDialog.minimumHeight, modalDialog:getHeight() + additionalHeight + messageLabel:getHeight() - 25)))
	end

	if width ~= 0 then
		modalDialog:setWidth(width)
		messageLabel:setWidth(width - horizontalPadding)
	else
		modalDialog:setWidth(math.min(modalDialog.maximumWidth, math.max(buttonsWidth, messageLabel:getWidth(), modalDialog.minimumWidth)) + horizontalPadding)
		messageLabel:setWidth(modalDialog:getWidth() - horizontalPadding)
	end

	local function enterFunc()
		local focusedChoice = choiceList:getFocusedChild()
		local choice = 255

		if focusedChoice then
			choice = focusedChoice.choiceId
		end

		if not restorePosition and customId > 0 then
			ModalDialog.positions[customId] = modalDialog:getPosition()
		end

		signalcall(modalDialog.onConfirm)
		g_game.answerModalDialog(id, enterButton, choice)
		destroyDialog(modalDialog)

		return true
	end

	local function escapeFunc()
		local focusedChoice = choiceList:getFocusedChild()
		local choice = 255

		if focusedChoice then
			choice = focusedChoice.choiceId
		end

		signalcall(modalDialog.onCancel)
		g_game.answerModalDialog(id, escapeButton, choice)
		destroyDialog(modalDialog)
	end

	choiceList.onDoubleClick = enterFunc

	choiceList:focusChild(choiceList:getFirstChild())

	modalDialog.onEnter = enterFunc

	if #buttons > 1 then
		modalDialog.onEscape = escapeFunc
	end

	function modalDialog.onVisibilityChange(widget, visible)
		if not visible then
			escapeFunc()
		end
	end

	modalDialog.onDestroy = escapeFunc

	if ModalDialog.positions[customId] then
		modalDialog:breakAnchors()
		modalDialog:setPosition(ModalDialog.positions[customId])

		ModalDialog.positions[customId] = nil
	end

	if isTemporary then
		modalDialog:breakAnchors()
		modalDialog:setPosition({
			y = 50,
			x = modalDialog:getPosition().x
		})

		modalDialog.event = scheduleEvent(function()
			if modalDialog then
				if modalDialog.onEscape then
					modalDialog.onEscape()
				else
					destroyDialog(modalDialog)
				end
			end
		end, temporaryModalTime)

		if ModalDialog.windows[id] then
			destroyDialog(ModalDialog.windows[id])
		end

		ModalDialog.windows[id] = modalDialog
	else
		ModalDialog.window = modalDialog
	end

	if not isTemporary then
		modalDialog:raise()
		modalDialog:focus()
	else
		modules.game_interface.focusMapPanel()
	end

	if sender ~= "" and modules.game_social.GameSocial:isIgnored(sender) then
		modalDialog:destroy()

		return
	end
end

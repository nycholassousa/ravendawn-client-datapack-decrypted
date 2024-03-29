﻿-- chunkname: @/modules/game_npcs/builder.lua

BuilderShop = {
	items = {},
	categoriesData = {
		Hull = {
			iconName = "iconHull",
			dir = East
		},
		Sail = {
			iconName = "iconSail",
			dir = South
		},
		Cabin = {
			iconName = "iconCabin",
			dir = West
		},
		Cargo = {
			iconName = "iconCargo",
			dir = North
		},
		Wagons = {
			dir = East
		},
		["Moa Equipment"] = {
			dir = South
		},
		Decoration = {
			dir = South
		}
	},
	windowIconName = {
		["moa equipment"] = "icon_moa_equipment_builder",
		wagon = "icon_wagon_builder",
		ship = "icon_ship_builder"
	}
}

local wagonSets = {
	[3012] = {
		rightWheel = 3013,
		leftWheel = 3014
	},
	[5304] = {
		rightWheel = 5302,
		leftWheel = 5303
	},
	[3015] = {
		rightWheel = 3016,
		leftWheel = 3017
	},
	[5301] = {
		rightWheel = 5299,
		leftWheel = 5300
	},
	[3018] = {
		rightWheel = 3019,
		leftWheel = 3020
	}
}

function BuilderShop.init()
	connect(g_game, {
		onGameEnd = BuilderShop.hide
	}, true)
	connect(Container, {
		onOpen = BuilderShop.updateMaterials,
		onRemoveItem = BuilderShop.updateMaterials,
		onUpdateItem = BuilderShop.updateMaterials,
		onAddItem = BuilderShop.updateMaterials
	})

	BuilderShop.events = {}

	g_ui.importStyle("styles/builder.otui")

	BuilderShop.window = g_ui.createWidget("BuilderShopWindow", modules.game_interface.getHUDPanel())

	BuilderShop.window:hide()

	BuilderShop.leftPanel = BuilderShop.window:recursiveGetChildById("left_panel")
	BuilderShop.leftPanelList = BuilderShop.leftPanel:recursiveGetChildById("list")
	BuilderShop.rightPanel = BuilderShop.window:recursiveGetChildById("right_panel")
	BuilderShop.materialsList = BuilderShop.rightPanel:recursiveGetChildById("materials_list")
	BuilderShop.craftButton = BuilderShop.rightPanel:recursiveGetChildById("craft_button")

	function BuilderShop.craftButton.onClick()
		GameNpc:sendOpcode({
			option = "npc_builder_build",
			action = "dialogue",
			dialogueId = GameNpc.dialogueId,
			npcName = GameNpc.npcName,
			name = BuilderShop.selectedItemName
		})
	end
end

function BuilderShop.terminate()
	disconnect(g_game, {
		onGameEnd = BuilderShop.hide
	}, true)

	for _, event in pairs(BuilderShop.events) do
		if event ~= nil then
			removeEvent(event)

			event = nil
		end
	end

	BuilderShop.window:destroy()

	BuilderShop.window = nil
end

function BuilderShop:resetInfo()
	for name, data in pairs(self.categoriesData) do
		if data.list then
			data.list:destroy()

			data.list = nil
		end
	end

	self.leftPanelList:clearChildren()
	self.rightPanel:setVisible(false)

	self.items = {}
	self.selectedItemName = nil
end

function BuilderShop:hide()
	if BuilderShop.window:isVisible() then
		BuilderShop.window:hide()
		GameNpc:onClose()
	end
end

function BuilderShop.buyItem()
	return
end

function BuilderShop.updateMaterials()
	local self = BuilderShop

	if not self.selectedId or not self.rightPanel:isVisible() then
		return
	end

	self.materialsList:clearChildren()

	local player = g_game.getLocalPlayer()

	if not player then
		return
	end

	local canCraft = true

	for _, material in ipairs(self.items[self.selectedId].materials) do
		local listItem = g_ui.createWidget("BuilderShopMaterialsListItem", self.materialsList)

		listItem.item:setItemId(material.clientId)

		listItem.item.name = material.name

		listItem.name:setText(material.name)

		local playerAmount = player:getItemsCount(material.clientId)
		local amountText = string.format("%i / %i", playerAmount, material.amount)

		listItem.amount:setText(amountText)

		if playerAmount < material.amount then
			canCraft = false
		else
			listItem.amount:setOn(true)
		end
	end

	local wagons = self.items[self.selectedId].wagons

	if wagons then
		for _, wagon in ipairs(wagons) do
			local outfit = {
				category = 1,
				wagonActive = 1,
				wagon = wagon.lookType,
				wagonBody = wagon.lookType,
				lookType = wagon.lookType,
				wagonLeftWheel = wagonSets[wagon.lookType].leftWheel,
				wagonRightWheel = wagonSets[wagon.lookType].rightWheel
			}
			local wagonItem = g_ui.createWidget("BuilderShopMaterialsListOutfit", self.materialsList)

			wagonItem.outfit:setOutfit(outfit)
			wagonItem.outfit:setDirection(South)
			wagonItem.name:setText(wagon.name)

			local playerAmount = wagon.active and 1 or 0
			local amountText = string.format("%i / %i", playerAmount, wagon.amount)

			wagonItem.amount:setText(amountText)

			if playerAmount < wagon.amount then
				canCraft = false
			else
				wagonItem.amount:setOn(true)
			end
		end
	end

	local ships = self.items[self.selectedId].ships

	if ships then
		for _, ship in ipairs(ships) do
			local shipItem = g_ui.createWidget("BuilderShopMaterialsListOutfit", self.materialsList)
			local outfit = {
				category = 1,
				lookType = ship.lookType
			}

			shipItem.outfit:setOutfit(outfit)
			shipItem.outfit:setDirection(South)
			shipItem.name:setText(ship.name)

			local playerAmount = ship.active and 1 or 0
			local amountText = string.format("%i / %i", playerAmount, ship.amount)

			shipItem.amount:setText(amountText)

			if playerAmount < ship.amount then
				canCraft = false
			else
				shipItem.amount:setOn(true)
			end
		end
	end

	self.craftButton:setEnabled(canCraft)
end

function BuilderShop:selectItem(id, widget)
	if self.currentSelectedWidget then
		self.currentSelectedWidget:setOn(false)
	end

	self.currentSelectedWidget = widget

	self.currentSelectedWidget:setOn(true)

	self.selectedItemName = self.items[id].name
	self.selectedId = id

	local topPanel = self.rightPanel.content.top_panel

	if widget.icon then
		topPanel.icon:show()
		topPanel.icon:setOutfit(widget.icon:getOutfit())

		topPanel.icon.outfitId = widget.icon.outfitId

		topPanel.icon:setDirection(widget.icon:getDirection())
		topPanel.name:setText(self.items[id].name)
		topPanel.value:setText(self.items[id].buy)
		topPanel.item:hide()
	else
		topPanel.item:show()
		topPanel.item:setItemId(widget.item:getItemId())
		topPanel.name:setText(self.items[id].name)
		topPanel.value:setText(self.items[id].buy)
		topPanel.icon:hide()
	end

	self.rightPanel:setVisible(true)
	self:updateMaterials()
end

function BuilderShop:updateTitle()
	local title = self.window:recursiveGetChildById("title")

	if title then
		title:setText(string.format("%s", self.category:titleCase()))
	end

	if self.windowIconName[self.category] then
		local icon = self.window:recursiveGetChildById("icon")

		if icon then
			icon:setImageSource(string.format("/images/ui/windows/base_window/%s", self.windowIconName[self.category]))
		end
	end
end

function BuilderShop:show(data)
	self:resetInfo()

	self.items = data.items
	self.category = data.category

	self:updateTitle()

	for id, item in ipairs(self.items) do
		if not self.categoriesData[item.category].list then
			local listCategory = g_ui.createWidget("BuilderShopLeftPanelListCategory", self.leftPanelList)

			listCategory.button_holder.expand_button:setText(item.category)

			if self.categoriesData[item.category].iconName then
				listCategory.button_holder.icon:setImageSource(string.format("/images/ui/windows/npcs/builder/%s", self.categoriesData[item.category].iconName))
			end

			self.categoriesData[item.category].list = listCategory
		end

		local entryWidget = g_ui.createWidget("BuilderShopLeftPanelListEntry", self.categoriesData[item.category].list)

		entryWidget:setText(item.name)

		if item.lookType then
			local outfit = {}

			if item.category == "Wagons" then
				outfit = {
					category = 1,
					wagonActive = 1,
					wagon = item.lookType,
					wagonBody = item.lookType,
					lookType = item.lookType,
					wagonLeftWheel = wagonSets[item.lookType].leftWheel,
					wagonRightWheel = wagonSets[item.lookType].rightWheel
				}
			elseif item.category == "Moa Equipment" then
				entryWidget.icon.outfitId = item.lookType
				outfit = {
					mount = 3540,
					category = 1,
					mountBody = 3540,
					mountArmor = item.lookType
				}
			else
				outfit = {
					category = 1,
					lookType = item.lookType
				}
			end

			entryWidget.icon:setOutfit(outfit)
			entryWidget.icon:setDirection(self.categoriesData[item.category].dir)
		elseif item.accessoryId then
			entryWidget.icon:destroy()
			entryWidget.item:setItemId(item.clientId)
			entryWidget.item:show()
		end

		function entryWidget.onClick(widget)
			self:selectItem(id, widget)
		end
	end

	for _, data in pairs(self.categoriesData) do
		if data.list then
			data.list:onSetup()
			data.list:onClick()
		end
	end

	GameNpc:hide()

	local firstList = self.categoriesData.Hull.list or self.categoriesData.Wagons.list or self.categoriesData.Decoration.list or self.categoriesData["Moa Equipment"].list

	if firstList then
		firstList:onClick()
	end

	self.window:setVisible(true)
	self.window:raise()
	self.window:focus()
	self.updateMaterials()
end

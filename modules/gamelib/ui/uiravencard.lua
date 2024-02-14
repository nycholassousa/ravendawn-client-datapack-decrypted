-- chunkname: @/modules/gamelib/ui/uiravencard.lua

UIRavencard = extends(UIWidget, "UIRavencard")

function UIRavencard.create()
	local card = UIRavencard.internalCreate()

	card.rarity = 1
	card.name = "rat scavenger"
	card.description = ""
	card.displayName = false

	return card
end

function UIRavencard:onSetup()
	addEvent(function()
		self.frame_widget = self:recursiveGetChildById("frame")
		self.rarity_widget = self:recursiveGetChildById("rarity")
		self.illustration_widget = self:recursiveGetChildById("illustration")
		self.description_widget = self:recursiveGetChildById("description")
		self.name_widget = self:recursiveGetChildById("name")

		self:onUpdate()
	end)
end

function UIRavencard:onUpdate()
	if not self.rarity_widget or not self.illustration_widget or not self.description_widget then
		addEvent(function()
			self:onUpdate()
		end)

		return
	end

	self.rarity_widget:onUpdate()
	self.illustration_widget:onUpdate()
	self.name_widget:setText(self.name:titleCase())
	self.name_widget:setVisible(self.displayName)
end

function UIRavencard:getRarity()
	return self.rarity
end

function UIRavencard:setRarity(rarity)
	self.rarity = rarity

	self:onUpdate()
end

function UIRavencard:getName()
	return self.name
end

function UIRavencard:setName(name)
	self.name = name

	self:onUpdate()
end

function UIRavencard:getDescription()
	return self.description
end

function UIRavencard:setData(data)
	self.rarity = data.rarity
	self.name = data.name
	self.description = data.description

	self:onUpdate()
end

function UIRavencard:setNameDisplay(display)
	self.displayName = display

	self:onUpdate()
end

-- chunkname: @/modules/gamelib/ui/uianim.lua

UIAnim = extends(UIImageView, "UIAnim")

function UIAnim.create()
	local widget = UIAnim.internalCreate()

	widget.anim = {
		opacity = {
			delta = 0.1,
			value = 1,
			dir = 1,
			speed = 0
		},
		sprite = {
			index = 0,
			path = "",
			defaultIndex = 1,
			startIndex = 1,
			count = 0,
			playing = true,
			prefix = "",
			speed = 0
		}
	}
	widget.events = {}

	return widget
end

function UIAnim:onStyleApply(styleName, styleNode)
	local updateAnim = false

	for name, value in pairs(styleNode) do
		if name == "sprite-path" then
			if not value:ends("/") then
				value = value .. "/"
			end

			self.anim.sprite.path = value
			updateAnim = true
		elseif name == "sprite-prefix" then
			self.anim.sprite.prefix = value
			updateAnim = true
		elseif name == "sprite-count" then
			self.anim.sprite.count = tonumber(value)
			updateAnim = true
		elseif name == "sprite-speed" then
			self.anim.sprite.speed = tonumber(value)
			updateAnim = true
		elseif name == "sprite-start-index" then
			self.anim.sprite.startIndex = tonumber(value)
			updateAnim = true
		elseif name == "sprite-default-index" then
			self.anim.sprite.defaultIndex = tonumber(value)
			updateAnim = true
		elseif name == "opacity-speed" then
			self.anim.opacity.speed = tonumber(value)
			updateAnim = true
		elseif name == "opacity-delta" then
			self.anim.opacity.delta = tonumber(value)
			updateAnim = true
		end
	end

	if updateAnim then
		self:updateAnim()
	end
end

function UIAnim:onSpriteReset()
	local sprite = self.anim.sprite

	sprite.index = sprite.defaultIndex

	local filename = sprite.path .. sprite.prefix .. sprite.index

	self:setImageSource(filename)
end

function UIAnim:onSprite()
	local sprite = self.anim.sprite

	sprite.index = sprite.index + 1

	if sprite.index > sprite.count then
		sprite.index = sprite.startIndex
	end

	local filename = sprite.path .. sprite.prefix .. sprite.index

	self:setImageSource(filename)
end

function UIAnim:onOpacity()
	local settings = self.anim.opacity
	local opacity = self:getOpacity()
	local delta = settings.delta
	local dir = settings.dir

	opacity = opacity + dir * delta

	if opacity < 0 or opacity > 1 then
		settings.dir = dir * -1
	end

	self:setOpacity(opacity)
end

function UIAnim:updateAnim(name)
	if not name or name == "sprite" then
		if self.events.sprite then
			removeEvent(self.events.sprite)

			self.events.sprite = nil
		end

		if self.anim.sprite then
			local speed = self.anim.sprite.speed

			if speed > 0 then
				self.events.sprite = cycleEvent(function()
					self:onSprite()
				end, speed)
			end
		end
	end

	if not name or name == "opacity" then
		if self.events.opacity then
			removeEvent(self.events.opacity)

			self.events.opacity = nil
		end

		if self.anim.opacity then
			local settings = self.anim.opacity

			if settings.speed > 0 then
				local delta = settings.delta

				self.events.opacity = cycleEvent(function()
					self:onOpacity()
				end, settings.speed)
			end
		end
	end
end

function UIAnim:stopAnim(name)
	if name == "sprite" then
		removeEvent(self.events.sprite)

		self.events.sprite = nil

		self:onSpriteReset()
	elseif name == "opacity" then
		removeEvent(self.events.opacity)

		self.events.opacity = nil
	elseif not name then
		for name, event in pairs(self.events) do
			removeEvent(event)

			if name == "sprite" then
				self:onSpriteReset()
			end
		end

		self.events = {}
	end
end

function UIAnim:startAnim(name)
	self:updateAnim(name)
end

function UIAnim:onDestroy()
	for _, event in pairs(self.events) do
		removeEvent(event)
	end

	self.events = {}
end

function UIAnim:isPlaying(name)
	name = name or "sprite"

	if name == "sprite" then
		return self.events.sprite ~= nil
	else
		return self.events.opacity ~= nil
	end
end

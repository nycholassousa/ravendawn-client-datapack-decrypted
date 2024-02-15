-- chunkname: @/modules/gamelib/ui/uisprite.lua

UISprite = extends(UIImageView, "UISprite")

function UISprite.create()
	local widget = UISprite.internalCreate()

	widget.anim = {
		startIndex = 1,
		speed = 0,
		count = 0,
		prefix = "",
		currentIndex = 0,
		defaultIndex = 1,
		path = ""
	}
	widget.event = nil
	widget.playing = false

	return widget
end

function UISprite:onStyleApply(styleName, styleNode)
	local updateAnim = false

	for name, value in pairs(styleNode) do
		if name == "path" then
			if not value:ends("/") then
				value = value .. "/"
			end

			self.anim.path = value
			updateAnim = true
		elseif name == "prefix" then
			self.anim.prefix = value
			updateAnim = true
		elseif name == "count" then
			self.anim.count = tonumber(value)
			updateAnim = true
		elseif name == "speed" then
			self.anim.speed = tonumber(value)
			updateAnim = true
		elseif name == "start-index" then
			self.anim.startIndex = tonumber(value)
			updateAnim = true
		elseif name == "default-index" then
			self.anim.defaultIndex = tonumber(value)
			updateAnim = true
		end
	end

	if updateAnim then
		self:updateAnim()
	end
end

function UISprite:onReset()
	local anim = self.anim

	anim.currentIndex = anim.defaultIndex

	local filename = anim.path .. anim.prefix .. anim.currentIndex

	self:setImageSource(filename)
end

function UISprite:onStep()
	local anim = self.anim

	anim.currentIndex = anim.currentIndex + 1

	if anim.currentIndex > anim.count then
		self:stopAnim()

		return
	end

	local filename = anim.path .. anim.prefix .. anim.currentIndex

	self:setImageSource(filename)
end

function UISprite:updateAnim()
	if self.event then
		removeEvent(self.event)

		self.event = nil
	end

	if self.playing == false then
		return
	end

	if self.anim then
		local speed = self.anim.speed

		if speed > 0 then
			self.event = cycleEvent(function()
				self:onStep()
			end, speed)
		end
	end
end

function UISprite:stopAnim()
	removeEvent(self.event)

	self.event = nil

	removeEvent(self.delayEvent)

	self.delayEvent = nil
	self.playing = false

	self:onReset()
end

function UISprite:startAnim(delay)
	if delay and delay < 0 then
		delay = 0
	end

	local spr = self

	if delay and delay > 0 then
		self.delayEvent = scheduleEvent(function()
			spr.playing = true

			spr:updateAnim()
		end, delay)
	else
		spr.playing = true

		spr:updateAnim()
	end
end

function UISprite:onDestroy()
	removeEvent(self.event)

	self.event = nil
end

function UISprite:isPlaying()
	return self.event ~= nil
end

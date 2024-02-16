-- chunkname: @/modules/corelib/ui/animation.lua

TextureSharedCounter = {}
Animation = {
	const = {
		FadeOut = 2,
		FadeIn = 1,
		ReasonFrame = 3,
		ReasonDestroy = 2,
		ReasonVisibility = 1
	}
}

function Animation.create(config)
	local animation = {
		imageSource = config.imageSource,
		frames = config.frames,
		framesCount = config.framesCount,
		fadeInConfig = config.fadeInConfig,
		duration = config.duration,
		loop = {
			current = 0,
			total = config.loop or 0
		},
		movements = {},
		fades = {},
		initialState = {},
		onStart = config.onStart,
		onStop = config.onStop,
		onEnd = config.onEnd,
		onFrame = config.onFrame,
		onPause = config.onPause,
		onResume = config.onResume,
		currentFrame = config.currentFrame or 1,
		pauseWhenHidden = config.pauseWhenHidden,
		restoreInitialStateOnEnd = config.restoreInitialState
	}
	local amountOfFrames = config.frames and #config.frames or config.framesCount

	if not amountOfFrames then
		error("unable to create animation without the amount of frames")

		return animation
	end

	animation.frameRate = animation.duration / amountOfFrames

	setmetatable(animation, {
		__index = Animation
	})
	animation:setCanvasWidget(config.canvas)

	return animation
end

function Animation:isLooping()
	return self.loop.total == -1 or self.loop.current < self.loop.total - 1
end

function Animation:isLoop()
	return self.loop.total == -1 or self.loop.total > 0
end

function Animation:updateInitialState()
	self.initialState.imageSource = self.canvas:getImageSource()
	self.initialState.imageSize = self.canvas:getImageSize()
	self.initialState.imageOffset = self.canvas:getImageOffset()
end

function Animation:restoreInitialState()
	self.canvas:setImageSource(self.initialState.imageSource)
	self.canvas:setImageSize(string.format("%d %d", self.initialState.imageSize.width, self.initialState.imageSize.height))
	self.canvas:setImageOffset(string.format("%d %d", self.initialState.imageOffset.x, self.initialState.imageOffset.y))
end

function Animation:updateInitialMargin()
	self.initialState.left = self.canvas:getMarginLeft()
	self.initialState.right = self.canvas:getMarginRight()
	self.initialState.top = self.canvas:getMarginTop()
	self.initialState.bottom = self.canvas:getMarginBottom()
end

function Animation:updateInitialOpacity()
	self.initialState.opacity = self.canvas:getOpacity()
end

function Animation:setCanvasWidget(widget)
	if not widget then
		return
	end

	if self.canvas then
		for _, connection in ipairs(self.connections) do
			disconnect(self.canvas, connection)
		end
	end

	self.canvas = widget

	self:updateInitialMargin()
	self:updateInitialOpacity()
	self:updateInitialState()

	local connections = {
		{
			onDestroy = function()
				return self:onDestroy()
			end
		},
		{
			onVisibilityChange = function(widget, visible)
				return self:onVisibilityChange(widget, visible)
			end
		}
	}

	for _, connection in ipairs(connections) do
		connect(widget, connection)
	end

	self.connections = connections
end

function Animation:onDestroy(widget, visible)
	self:stop(self.const.ReasonDestroy)
end

function Animation:onVisibilityChange(widget, visible)
	if visible then
		if self.paused and self.pauseWhenHidden and not self.stoped then
			self:unpause()
		end

		return
	end

	if self.pauseWhenHidden and not self.stoped then
		self:pause()
	else
		self:stop(self.const.ReasonVisibility)
	end
end

function Animation:update()
	if self.onFrame then
		self.onFrame(self, self.canvas, self.currentFrame, self.loop.current)
	end

	if not table.empty(self.movements) then
		for _, movement in ipairs(self.movements) do
			if self.currentFrame == movement.start then
				self:updateInitialMargin()
			end

			if self.currentFrame >= movement.start and self.currentFrame < movement.finish then
				self:internalMove(movement)
			end
		end
	end

	if not table.empty(self.fades) then
		for _, fade in ipairs(self.fades) do
			if self.currentFrame == fade.start then
				self:updateInitialOpacity()
			end

			if self.currentFrame >= fade.start and self.currentFrame < fade.finish then
				self:internalFade(fade)
			end
		end
	end

	if self.frames then
		local frameData = self.frames[self.currentFrame]

		if frameData.size then
			self.canvas:setImageSize(string.format("%d %d", frameData.size.width, frameData.size.height))
		end

		if frameData.offset then
			self.canvas:setImageOffset(string.format("%d %d", frameData.offset.x, frameData.offset.y))
		end

		self.canvas:setImageSource(frameData.name or string.format(self.imageSource, self.currentFrame))
	end

	self.currentFrame = self.currentFrame + 1

	if self.currentFrame > self:getTotalFrames() then
		if self:isLooping() then
			self.currentFrame = 1
			self.loop.current = self.loop.current + 1
			self.startTime = g_clock.millis()
		else
			self:stop(self.const.ReasonFrame)

			if self.restoreInitialStateOnEnd then
				self:restoreInitialState()
			end

			if self.onEnd then
				self.onEnd(self, self.canvas)
			end
		end
	end
end

function Animation:getTotalFrames()
	if self.frames then
		return #self.frames
	end

	if self.framesCount then
		return self.framesCount
	end

	error("you must add frames count from frames table or through framesCount param in order to execute this animation")
end

function Animation:reset()
	self.currentFrame = 1
	self.paused = false
	self.loop.current = 0

	self:removeUpdateEvent()

	if self.moveEvent then
		removeEvent(self.moveEvent)

		self.moveEvent = nil
	end
end

function Animation:removeUpdateEvent()
	if self.animateEvent then
		removeEvent(self.animateEvent)

		self.animateEvent = nil
	end
end

function Animation:startUpdateEvent()
	self:removeUpdateEvent()

	self.animateEvent = cycleEvent(function()
		self:update()
	end, self.frameRate, true)
end

function Animation:start()
	self:reset()

	self.startTime = g_clock.millis()

	self.canvas:show()

	self.stoped = false

	if self.onStart then
		self.onStart(self, self.canvas)
	end

	self:startUpdateEvent()
end

function Animation:setFrameRate(rate)
	self.frameRate = rate

	self:startUpdateEvent()
end

function Animation:stop(reason)
	self:reset()

	self.stoped = true

	if self.onStop then
		self.onStop(self, self.canvas, reason)
	end
end

function Animation:pause()
	self.paused = true

	self:removeUpdateEvent()

	if self.onPause then
		self:onPause()
	end
end

function Animation:isRunning()
	return not not self.animateEvent
end

function Animation:unpause()
	if not self.paused then
		return
	end

	self.paused = false

	if self:isRunning() then
		return
	end

	self:startUpdateEvent()

	if self.onResume then
		self:onResume()
	end
end

function Animation:setFrame(frame)
	self.currentFrame = frame

	self:update()
end

function Animation:ease(start, finish, easeIn, easeOut, easeInOut)
	local t = (self.currentFrame - start + 1) / (finish - start)

	if t > 1 then
		return false
	end

	if t > 0.5 then
		if easeOut then
			t = easeOut(t)
		end
	elseif easeIn then
		t = easeIn(t)
	end

	if easeInOut then
		t = easeInOut(t)
	end

	return t
end

function Animation:move(movement)
	table.insert(self.movements, movement)
end

function Animation:internalMove(movement)
	local delta = self:ease(movement.start, movement.finish, movement.easeIn, movement.easeOut, movement.easeInOut)

	if not delta then
		return false
	end

	if movement.offset.left then
		self.canvas:setMarginLeft(self.initialState.left + math.floor(movement.offset.left * delta))
	end

	if movement.offset.bottom then
		self.canvas:setMarginBottom(self.initialState.bottom + math.floor(movement.offset.bottom * delta))
	end

	if movement.offset.top then
		self.canvas:setMarginTop(self.initialState.top + math.floor(movement.offset.top * delta))
	end

	if movement.offset.right then
		self.canvas:setMarginRight(self.initialState.right + math.floor(movement.offset.right * delta))
	end

	return true
end

function Animation:fadeIn(fade)
	fade.type = self.const.FadeIn

	table.insert(self.fades, fade)
end

function Animation:fadeOut(fade)
	fade.type = self.const.FadeOut

	table.insert(self.fades, fade)
end

function Animation:internalFade(fade)
	local delta = self:ease(fade.start, fade.finish, fade.easeIn, fade.easeOut, fade.easeInOut)

	if not delta then
		self.canvas:setOpacity(fade.opacity)

		return false
	end

	if fade.type == self.const.FadeIn then
		self.canvas:setOpacity(fade.opacity * delta)
	else
		self.canvas:setOpacity(1 - (1 - fade.opacity) * delta)
	end

	return true
end

function Animation:preload()
	if self.preloaded then
		return
	end

	if not self.frames then
		self.preloaded = true

		return
	end

	for frame, frameData in ipairs(self.frames) do
		g_textures.preload(frameData.name or string.format(self.imageSource, frame))
	end

	self.preloaded = true
end

function Animation:unload()
	if not self.preloaded then
		return
	end

	if not self.frames then
		self.preloaded = false

		return
	end

	for frame, _ in ipairs(self.frames) do
		g_textures.unload(string.format(self.imageSource, frame))
	end

	self.preloaded = false
end

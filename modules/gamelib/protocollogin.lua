-- chunkname: @/modules/gamelib/protocollogin.lua

ProtocolLogin = extends(Protocol, "ProtocolLogin")
LOGIN_OPCODE_CHARACTERLIST = 180
LOGIN_OPCODE_ERROR = 88
LOGIN_OPCODE_TOKENERROR = 152
LOGIN_OPCODE_TOKENSUCCESS = 181
LOGIN_OPCODE_MOTD = 164
LOGIN_OPCODE_SESSIONKEY = 124
LOGIN_OPCODE_CHARACTERCREATION = 125
LOGIN_OPCODE_SPAWNPOINTSELECTION = 126
LOGIN_OPCODE_REFRESHWORLDS = 127
LOGIN_OPCODE_REFRESHCHANNELS = 128
LOGIN_OPCODE_PLAYERAUTHREQUEST = 129
CHARACTER_OPCODE_NAMEAVAILABLE = 1
CHARACTER_OPCODE_CREATIONSUCCESS = 2
CHARACTER_OPCODE_DELETIONSUCCESS = 3

function ProtocolLogin:cancelLogin()
	self:disconnect()
end

function ProtocolLogin:login(host, port, worldId, accountName, accountPassword, authenticatorToken, stayLogged)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.accountName = accountName
	self.accountPassword = accountPassword
	self.authenticatorToken = authenticatorToken
	self.stayLogged = stayLogged
	self.connectCallback = self.sendLoginPacket

	self:connect(host, port)
end

function ProtocolLogin:enterCharacter(host, port, worldId, sessionKey, characterName)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.characterName = characterName
	self.sessionKey = sessionKey
	self.connectCallback = self.sendEnterCharacterPacket

	self:connect(host, port)
end

function ProtocolLogin:createNewCharacter(host, port, worldId, accountName, characterName, characterVoc, characterSex)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginServerError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.accountName = accountName
	self.characterName = characterName
	self.characterVoc = characterVoc
	self.characterSex = characterSex
	self.connectCallback = self.sendNewCharacterPacket

	self:connect(host, port)
end

function ProtocolLogin:deleteCharacter(host, port, worldId, accountName, accountPassword, characterName)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginServerError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.accountName = accountName
	self.accountPassword = accountPassword
	self.characterName = characterName
	self.connectCallback = self.sendDeleteCharacterPacket

	self:connect(host, port)
end

function ProtocolLogin:selectSpawnPoint(host, port, worldId, accountName, accountPassword, characterName, spawnPoint)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginServerError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.accountName = accountName
	self.accountPassword = accountPassword
	self.characterName = characterName
	self.spawnPoint = spawnPoint
	self.connectCallback = self.sendSelectSpawnPointPacket

	self:connect(host, port)
end

function ProtocolLogin:requestWorldsList(host, port)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginServerError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.connectCallback = self.sendRequestWorldsList

	self:connect(host, port)
end

function ProtocolLogin:requestChannelsList(host, port, worldId)
	if string.len(host) == 0 or port == nil or port == 0 then
		signalcall(self.onLoginServerError, self, tr("You must enter a valid server address and port."))

		return
	end

	self.worldId = worldId
	self.connectCallback = self.sendRequestChannelsList

	self:connect(host, port)
end

function ProtocolLogin:addBasicData(msg)
	msg:addU8(CLIENT_OPCODE_LOGINPROTOCOL)

	if g_game.getFeature(GameClientVersion) then
		msg:addU32(g_game.getClientVersion())
	end

	if g_game.getFeature(GameClientHash) then
		msg:addString(g_resources.selfSha256sum())
	end
end

function ProtocolLogin:setupXTEAKey(msg)
	if not g_game.getFeature(GameLoginPacketEncryption) then
		return
	end

	msg:addU8(0)
	self:generateXteaKey()

	local xteaKey = self:getXteaKey()

	msg:addU32(xteaKey[1])
	msg:addU32(xteaKey[2])
	msg:addU32(xteaKey[3])
	msg:addU32(xteaKey[4])
end

function ProtocolLogin:addFeetInfo(msg, offset)
	local paddingBytes = g_crypt.rsaGetSize() - (msg:getMessageSize() - offset)

	assert(paddingBytes >= 0)

	for i = 1, paddingBytes do
		msg:addU8(math.random(0, 255))
	end

	if g_game.getFeature(GameLoginPacketEncryption) then
		msg:encryptRsa()
	end

	if g_game.getFeature(GameOGLInformation) then
		msg:addU8(1)
		msg:addU8(1)

		if g_game.getClientVersion() >= 1072 then
			msg:addString(string.format("%s %s", g_graphics.getVendor(), g_graphics.getRenderer()))
		else
			msg:addString(g_graphics.getRenderer())
		end

		msg:addString(g_graphics.getVersion())
	end

	if g_game.getFeature(GameAuthenticator) then
		offset = msg:getMessageSize()

		msg:addU8(0)
		msg:addString(self.authenticatorToken)

		if g_game.getFeature(GameSessionKey) then
			msg:addU8(booleantonumber(self.stayLogged))
		end

		paddingBytes = g_crypt.rsaGetSize() - (msg:getMessageSize() - offset)

		assert(paddingBytes >= 0)

		for i = 1, paddingBytes do
			msg:addU8(math.random(0, 255))
		end

		msg:encryptRsa()
	end

	if g_game.getFeature(GamePacketSizeU32) then
		self:enableBigPackets()
	end

	if g_game.getFeature(GameProtocolChecksum) then
		self:enableChecksum()
	end
end

function ProtocolLogin:sendLoginPacket()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_CHARACTERLIST)
	msg:addU16(self.worldId)

	if g_game.getFeature(GameAccountNames) then
		msg:addString(self.accountName)
	else
		msg:addU32(tonumber(self.accountName))
	end

	msg:addString(self.accountPassword)

	if self.getLoginExtendedData then
		local data = self:getLoginExtendedData()

		msg:addString(data)
	end

	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendEnterCharacterPacket()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_PLAYERAUTHREQUEST)
	msg:addU16(self.worldId)
	msg:addString(self.sessionKey)
	msg:addString(self.characterName)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendNewCharacterPacket()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_CREATECHARACTER)
	msg:addU16(self.worldId)
	msg:addString(self.accountName)
	msg:addString(self.characterName)
	msg:addU8(self.characterVoc)
	msg:addU8(self.characterSex)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendSelectSpawnPointPacket()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_SELECTSPAWNPOINT)
	msg:addU16(self.worldId)
	msg:addString(self.accountName)
	msg:addString(self.accountPassword)
	msg:addString(self.characterName)
	msg:addU32(self.spawnPoint)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendDeleteCharacterPacket()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_DELETECHARACTER)
	msg:addU16(self.worldId)
	msg:addString(self.accountName)
	msg:addString(self.accountPassword)
	msg:addString(self.characterName)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendRequestWorldsList()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_REQUESTWORLDSLIST)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:sendRequestChannelsList()
	local msg = OutputMessage.create()

	self:addBasicData(msg)

	local offset = msg:getMessageSize()

	self:setupXTEAKey(msg)
	msg:addU8(CLIENT_OPCODE_REQUESTWORLDSLIST)
	msg:addU16(self.worldId)
	self:addFeetInfo(msg, offset)
	self:send(msg)

	if g_game.getFeature(GameLoginPacketEncryption) then
		self:enableXteaEncryption()
	end

	self:recv()
end

function ProtocolLogin:onConnect()
	self.gotConnection = true

	self:connectCallback()

	self.connectCallback = nil
end

function ProtocolLogin:onRecv(msg)
	while not msg:eof() do
		local opcode = msg:getU8()

		if opcode == LOGIN_OPCODE_ERROR then
			self:parseError(msg)
		elseif opcode == LOGIN_OPCODE_MOTD then
			self:parseMotd(msg)
		elseif opcode == LOGIN_OPCODE_TOKENSUCCESS then
			-- block empty
		elseif opcode == LOGIN_OPCODE_TOKENERROR then
			signalcall(self.onLoginError, self, tr("Invalid authentication token."))
		elseif opcode == LOGIN_OPCODE_CHARACTERLIST then
			self:parseCharacterList(msg)
		elseif opcode == LOGIN_OPCODE_SESSIONKEY then
			self:parseSessionKey(msg)
		elseif opcode == LOGIN_OPCODE_CHARACTERCREATION then
			self:parseCharacterCreation(msg)
		elseif opcode == LOGIN_OPCODE_SPAWNPOINTSELECTION then
			self:parseSpawnPointSelected(msg)
		elseif opcode == LOGIN_OPCODE_REFRESHWORLDS then
			self:parseWorldsList(msg)
		elseif opcode == LOGIN_OPCODE_REFRESHCHANNELS then
			self:parseChannelsList(msg)
		elseif opcode == LOGIN_OPCODE_PLAYERAUTHREQUEST then
			self:parsePlayerAuthResponse(msg)
		else
			self:parseOpcode(opcode, msg)
		end
	end

	self:disconnect()
end

function ProtocolLogin:parseError(msg)
	local errorMessage = msg:getString()

	signalcall(self.onLoginError, self, errorMessage)
end

function ProtocolLogin:parseMotd(msg)
	local motd = msg:getString()

	signalcall(self.onMotd, self, motd)
end

function ProtocolLogin:parseSessionKey(msg)
	local sessionKey = msg:getString()

	signalcall(self.onSessionKey, self, sessionKey)
end

function ProtocolLogin:parseWorldsList(msg)
	local worlds = {}
	local worldsAmount = msg:getU16()

	for i = 1, worldsAmount do
		local world = {}

		world.id = msg:getU16()
		world.name = msg:getString()
		world.icon = msg:getString()
		world.isOnline = not not msg:getU8()
		world.rootIp = msg:getString()
		worlds[i] = world
	end

	signalcall(self.onRefreshWorldsList, self, worlds)
end

function ProtocolLogin:parsePlayerAuthResponse(msg)
	local worldId = msg:getU16()
	local channelId = msg:getU16()
	local authKey = msg:getString()

	signalcall(self.onRecvPlayerAuth, self, worldId, channelId, authKey)
end

function ProtocolLogin:parseCharacterList(msg)
	local channels = {}
	local characters = {}
	local channelsAmount = msg:getU16()
	local uniqueHosts = {}

	for i = 1, channelsAmount do
		local channel = {}

		channel.id = msg:getU16()
		channel.worldId = msg:getU16()
		channel.name = msg:getString()
		channel.ip = msg:getString()
		channel.port = msg:getU16()
		channel.isPublic = msg:getU8() == 1
		channel.isOnline = msg:getU8() == 1
		channel.onlinePlayers = msg:getU16()
		channel.maxPlayers = msg:getU16()
		channel.ping = 9999
		channel.proxies = {}
		uniqueHosts[channel.ip] = channel.port

		for j = 1, msg:getU8() do
			channel.proxies[j] = {}
			channel.proxies[j].ip = msg:getString()
			channel.proxies[j].ping = 9999
			uniqueHosts[channel.proxies[j].ip] = channel.port
		end

		function channel:setLowestPingConnectionInfo()
			local lowestPing, host = self.ping, self.ip

			for i = 1, #self.proxies do
				if lowestPing > self.proxies[i].ping then
					lowestPing, host = self.proxies[i].ping, self.proxies[i].ip
				end
			end

			self.host = host
		end

		channels[i] = channel
	end

	if EnterGame.tunnelingServiceEnabled then
		for host, port in pairs(uniqueHosts) do
			local protocol = ProtocolLoginPing.create()

			function protocol:onConnect()
				local ping = g_clock.millis() - self._connectionIntialTime

				for _, ch in ipairs(channels) do
					if ch.ip == host then
						ch.ping = ping
					else
						for i = 1, #ch.proxies do
							if ch.proxies[i].ip == host then
								ch.proxies[i].ping = ping
							end
						end
					end
				end

				self:disconnect()
				HTTP.postJSON("https://ravendawn.online/server/ping", {
					account = G.account,
					ping = ping,
					host = host
				}, function()
					return
				end)
			end

			protocol:tryConnect(host, port)
		end
	end

	local charactersCount = msg:getU8()

	for i = 1, charactersCount do
		local character = {
			outfit = {
				auxType = 0,
				category = ThingCategoryCreature
			}
		}

		character.name = msg:getString()
		character.level = msg:getU32()
		character.archetypes = msg:getU32()
		character.outfit.lookType = msg:getU16()

		if character.outfit.lookType == 0 then
			character.outfit.auxType = msg:getU16()
		else
			character.outfit.headColor = msg:getU8()
			character.outfit.bodyColor = msg:getU8()
			character.outfit.legsColor = msg:getU8()
			character.outfit.feetColor = msg:getU8()
			character.outfit.mount = msg:getU16()
			character.outfit.aura = msg:getU16()
			character.outfit.shader = msg:getU16()
			character.outfit.primaryAddon = msg:getU16()
			character.outfit.secondaryAddon = msg:getU16()
		end

		characters[i] = character
	end

	signalcall(self.onCharacterList, self, characters, channels, {}, self.characterName)
end

function ProtocolLogin:parseOpcode(opcode, msg)
	signalcall(self.onOpcode, self, opcode, msg)
end

function ProtocolLogin:onError(msg, code)
	local text = translateNetworkError(code, self:isConnecting(), msg)

	signalcall(self.onLoginError, self, text)
end

function ProtocolLogin:parseCharacterCreation(msg)
	local opcode = msg:getU8()

	if opcode == CHARACTER_OPCODE_NAMEAVAILABLE then
		signalcall(self.onCharacterName, self, opcode)
	elseif opcode == CHARACTER_OPCODE_CREATIONSUCCESS then
		local charName = msg:getString()

		signalcall(self.onCharacterCreated, self, opcode, charName)
	elseif opcode == CHARACTER_OPCODE_DELETIONSUCCESS then
		signalcall(self.onCharacterDeleted, self, opcode)
	end
end

function ProtocolLogin:parseSpawnPointSelected(msg)
	signalcall(self.onSpawnPointSelected, self)
end

ProtocolLoginPing = extends(Protocol, "ProtocolLoginPing")

function ProtocolLoginPing:onConnect()
	self:disconnect()
end

function ProtocolLoginPing:tryConnect(host, port)
	self._connectionIntialTime = g_clock.millis()

	self:connect(host, port)
end

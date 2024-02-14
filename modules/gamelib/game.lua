-- chunkname: @/modules/gamelib/game.lua

TURN_KEYS = {}

function g_game.logout()
	g_game.safeLogout()
end

function g_game.getRsa()
	return G.currentRsa
end

function g_game.findPlayerItem(itemId, subType)
	local localPlayer = g_game.getLocalPlayer()

	if localPlayer then
		for slot = InventorySlotFirst, InventorySlotLast do
			if slot ~= InventorySlotPurse then
				local item = localPlayer:getInventoryItem(slot)

				if item and item:getId() == itemId and (subType == -1 or item:getSubType() == subType) then
					return item
				end
			end
		end
	end

	return g_game.findItemInContainers(itemId, subType)
end

function g_game.chooseRsa(host)
	g_game.setRsa(RD_RSA)
end

function g_game.setRsa(rsa, e)
	e = e or "65537"

	g_crypt.rsaSetPublicKey(rsa, e)

	G.currentRsa = rsa
end

if not G.currentRsa then
	g_game.setRsa(RD_RSA)
end

function g_game.insertIndex(i, buffer)
	table.insert(buffer, "[")

	if type(i) == "string" then
		table.insert(buffer, "\"")
		table.insert(buffer, i)
		table.insert(buffer, "\"")
	elseif type(i) == "number" then
		table.insert(buffer, tostring(i))
	end

	table.insert(buffer, "] = ")
end

function g_game.indexToStr(i, v, buffer)
	local tp = type(v)
	local itp = type(i)

	if itp ~= "number" and itp ~= "string" then
		print("Invalid index to serialize: " .. type(i))
	elseif tp == "table" then
		g_game.insertIndex(i, buffer)
		g_game.serializeTable(v, buffer)
		table.insert(buffer, ",")
	elseif tp == "number" then
		g_game.insertIndex(i, buffer)
		table.insert(buffer, tostring(v))
		table.insert(buffer, ",")
	elseif tp == "string" then
		g_game.insertIndex(i, buffer)
		table.insert(buffer, "\"")
		table.insert(buffer, v)
		table.insert(buffer, "\",")
	elseif tp == "boolean" then
		g_game.insertIndex(i, buffer)
		table.insert(buffer, v == true and "true" or "false")
		table.insert(buffer, ",")
	else
		print("Invalid type to serialize: " .. tp .. ", index: " .. i)
	end
end

function g_game.serializeTable(t, buffer)
	local buffer = buffer or {}

	table.insert(buffer, "{")

	for i, x in pairs(t) do
		g_game.indexToStr(i, x, buffer)
	end

	table.insert(buffer, "}")

	return table.concat(buffer)
end

function g_game.copyTable(t, out)
	out = out or {}

	if type(t) ~= "table" then
		return false
	end

	for i, x in pairs(t) do
		if type(x) == "table" then
			out[i] = {}

			g_game.copyTable(t[i], out[i])
		else
			out[i] = x
		end
	end

	return out
end

function g_game.unserializeTable(str, out)
	local tmp = loadstring("return " .. str)

	if tmp then
		tmp = tmp()
	else
		print("Unserialization error: " .. str)

		return false
	end

	return g_game.copyTable(tmp, out)
end

LAST_MOUSE_POSITION = nil
LAST_SELECTED_TILE = nil

function g_game.getLastMousePosition()
	return LAST_MOUSE_POSITION
end

function g_game.setLastMousePosition(position)
	LAST_MOUSE_POSITION = position

	return true
end

function g_game.getLastSelectedTile()
	return LAST_SELECTED_TILE
end

function g_game.setLastSelectedTile(tile)
	LAST_SELECTED_TILE = tile

	return true
end

function g_game.getReverseDirection(direction)
	if direction == West then
		return East
	elseif direction == East then
		return West
	elseif direction == North then
		return South
	elseif direction == South then
		return North
	elseif direction == NorthWest then
		return SouthEast
	elseif direction == NorthEast then
		return SouthWest
	elseif direction == SouthWest then
		return NorthEast
	elseif direction == SouthEast then
		return NorthWest
	end
end

function g_game.getShipInvalidDirections(direction)
	if direction == West then
		return {
			East,
			NorthEast,
			SouthEast
		}
	elseif direction == East then
		return {
			West,
			NorthWest,
			SouthWest
		}
	elseif direction == North then
		return {
			South,
			SouthEast,
			SouthWest
		}
	elseif direction == South then
		return {
			North,
			NorthEast,
			NorthWest
		}
	elseif direction == NorthWest then
		return {
			SouthEast,
			NorthEast,
			East
		}
	elseif direction == NorthEast then
		return {
			SouthWest,
			NorthWest,
			West
		}
	elseif direction == SouthWest then
		return {
			NorthEast,
			SouthEast,
			East
		}
	elseif direction == SouthEast then
		return {
			NorthWest,
			SouthWest,
			West
		}
	end
end

function g_game.isWarmodeChannel()
	if not G.channelsInfo or type(G.channelsInfo) ~= "table" then
		return false
	end

	local channelInfo = G.channelsInfo[G.currentChannelId]

	if not channelInfo then
		return false
	end

	if bit.band(channelInfo.flags, CHANNEL_FLAG_WARMODE) == CHANNEL_FLAG_WARMODE then
		return true
	end

	return false
end

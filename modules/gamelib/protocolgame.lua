-- chunkname: @/modules/gamelib/protocolgame.lua

local opcodeCallbacks = {}
local extendedCallbacks = {}

function ProtocolGame:onOpcode(opcode, msg)
	for i, callback in pairs(opcodeCallbacks) do
		if i == opcode then
			callback(self, msg)

			return true
		end
	end

	return false
end

function ProtocolGame:onExtendedOpcode(opcode, buffer)
	local callbacks = extendedCallbacks[opcode]

	if not callbacks then
		print("Unregistered extended opcode: " .. opcode)

		return
	end

	for _, callback in pairs(callbacks) do
		callback(self, opcode, buffer)
	end
end

function ProtocolGame.registerOpcode(opcode, callback)
	if opcodeCallbacks[opcode] then
		error("opcode " .. opcode .. " already registered will be overriden")
	end

	opcodeCallbacks[opcode] = callback
end

function ProtocolGame.unregisterOpcode(opcode)
	opcodeCallbacks[opcode] = nil
end

function ProtocolGame.registerExtendedOpcode(opcode, callback, moduleName)
	if not callback or type(callback) ~= "function" then
		error("Invalid callback.")
	end

	if opcode < 0 or opcode > 255 then
		error("Invalid opcode. Range: 0-255")
	end

	extendedCallbacks[opcode] = extendedCallbacks[opcode] or {}

	if not moduleName and extendedCallbacks[opcode].default or extendedCallbacks[opcode][moduleName] then
		error("Opcode is already taken.")
	end

	moduleName = moduleName or "default"
	extendedCallbacks[opcode][moduleName] = callback
end

function ProtocolGame.unregisterExtendedOpcode(opcode, moduleName)
	if opcode < 0 or opcode > 255 then
		error("Invalid opcode. Range: 0-255")
	end

	moduleName = moduleName or "default"

	local callbacks = extendedCallbacks[opcode]

	if not callbacks or not callbacks[moduleName] then
		return
	end

	extendedCallbacks[opcode][moduleName] = nil
end

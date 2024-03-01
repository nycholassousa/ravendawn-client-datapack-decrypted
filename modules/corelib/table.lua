-- chunkname: @/modules/corelib/table.lua

function table.dump(t, depth)
	depth = depth or 0

	for k, v in pairs(t) do
		str = (" "):rep(depth * 2) .. k .. ": "

		if type(v) ~= "table" then
			print(str .. tostring(v))
		else
			print(str)
			table.dump(v, depth + 1)
		end
	end
end

function table.clear(t)
	for k, v in pairs(t) do
		t[k] = nil
	end
end

function table.copy(t)
	local res = {}

	for k, v in pairs(t) do
		res[k] = v
	end

	return res
end

function table.recursivecopy(t)
	local res = {}

	for k, v in pairs(t) do
		if type(v) == "table" then
			res[k] = table.recursivecopy(v)
		else
			res[k] = v
		end
	end

	return res
end

function table.selectivecopy(t, keys)
	local res = {}

	for i, v in ipairs(keys) do
		res[v] = t[v]
	end

	return res
end

function table.merge(t, src)
	for k, v in pairs(src) do
		t[k] = v
	end
end

function table.find(t, value, lowercase, findInValue)
	for k, v in pairs(t) do
		if lowercase and type(value) == "string" and type(v) == "string" and v:lower() == value:lower() then
			return k
		end

		if findInValue and type(v) == "string" and type(value) == "string" and v:find(value, 1, true) then
			return k
		end

		if v == value then
			return k
		end
	end
end

function table.findbykey(t, key, lowercase)
	for k, v in pairs(t) do
		if lowercase and type(key) == "string" and type(k) == "string" and k:lower() == key:lower() then
			return v
		end

		if k == key then
			return v
		end
	end
end

function table.contains(t, value, lowercase)
	return table.find(t, value, lowercase) ~= nil
end

function table.findkey(t, key)
	if t and type(t) == "table" then
		for k, v in pairs(t) do
			if k == key then
				return k
			end
		end
	end
end

function table.haskey(t, key)
	return table.findkey(t, key) ~= nil
end

function table.removevalue(t, value)
	for k, v in pairs(t) do
		if v == value then
			table.remove(t, k)

			return true
		end
	end

	return false
end

function table.popvalue(t, value)
	local index

	for k, v in pairs(t) do
		if v == value or not value then
			index = k
		end
	end

	if index then
		table.remove(t, index)

		return true
	end

	return false
end

function table.compare(t, other)
	if #t ~= #other then
		return false
	end

	for k, v in pairs(t) do
		if v ~= other[k] then
			return false
		end
	end

	return true
end

function table.empty(t)
	if t and type(t) == "table" then
		return next(t) == nil
	end

	return true
end

function table.permute(t, n, count)
	n = n or #t

	for i = 1, count or n do
		local j = math.random(i, n)

		t[i], t[j] = t[j], t[i]
	end

	return t
end

function table.findbyfield(t, fieldname, fieldvalue)
	for _i, subt in pairs(t) do
		if subt[fieldname] == fieldvalue then
			return subt, _i
		end
	end

	return nil, nil
end

function table.size(t)
	local size = 0

	for i, n in pairs(t) do
		size = size + 1
	end

	return size
end

function table.collect(t, func)
	local res = {}

	for k, v in pairs(t) do
		local a, b = func(k, v)

		if a and b then
			res[a] = b
		elseif a ~= nil then
			table.insert(res, a)
		end
	end

	return res
end

function table.equals(t, comp)
	if type(t) == "table" and type(comp) == "table" then
		for k, v in pairs(t) do
			if v ~= comp[k] then
				return false
			end
		end
	end

	return true
end

function table.equal(t1, t2, ignore_mt)
	local ty1 = type(t1)
	local ty2 = type(t2)

	if ty1 ~= ty2 then
		return false
	end

	if ty1 ~= "table" and ty2 ~= "table" then
		return t1 == t2
	end

	local mt = getmetatable(t1)

	if not ignore_mt and mt and mt.__eq then
		return t1 == t2
	end

	for k1, v1 in pairs(t1) do
		local v2 = t2[k1]

		if v2 == nil or not table.equal(v1, v2) then
			return false
		end
	end

	for k2, v2 in pairs(t2) do
		local v1 = t1[k2]

		if v1 == nil or not table.equal(v1, v2) then
			return false
		end
	end

	return true
end

json2 = {
	_version = "0.1.2"
}

do
	local escape_char_map = {
		["\n"] = "\\n",
		["\\"] = "\\\\",
		["\r"] = "\\r",
		["\f"] = "\\f",
		["\t"] = "\\t",
		["\b"] = "\\b",
		["\""] = "\\\""
	}
	local escape_char_map_inv = {
		["\\/"] = "/"
	}

	for k, v in pairs(escape_char_map) do
		escape_char_map_inv[v] = k
	end

	local function escape_char(c)
		return escape_char_map[c] or string.format("\\u%04x", c:byte())
	end

	local parse

	local function create_set(...)
		local res = {}

		for i = 1, select("#", ...) do
			res[select(i, ...)] = true
		end

		return res
	end

	local space_chars = create_set(" ", "\t", "\r", "\n")
	local delim_chars = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
	local escape_chars = create_set("\\", "/", "\"", "b", "f", "n", "r", "t", "u")
	local literals = create_set("true", "false", "nil")
	local literal_map = {
		["true"] = true,
		["false"] = false
	}

	local function next_char(str, idx, set, negate)
		for i = idx, #str do
			if set[str:sub(i, i)] ~= negate then
				return i
			end
		end

		return #str + 1
	end

	local function codepoint_to_utf8(n)
		local f = math.floor

		if n <= 127 then
			return string.char(n)
		elseif n <= 2047 then
			return string.char(f(n / 64) + 192, n % 64 + 128)
		elseif n <= 65535 then
			return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
		elseif n <= 1114111 then
			return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128, f(n % 4096 / 64) + 128, n % 64 + 128)
		end

		error(string.format("invalid unicode codepoint '%x'", n))
	end

	local function parse_unicode_escape(s)
		local n1 = tonumber(s:sub(3, 6), 16)
		local n2 = tonumber(s:sub(9, 12), 16)

		if n2 then
			return codepoint_to_utf8((n1 - 55296) * 1024 + (n2 - 56320) + 65536)
		else
			return codepoint_to_utf8(n1)
		end
	end

	local function parse_string(str, i)
		local has_unicode_escape = false
		local has_surrogate_escape = false
		local has_escape = false
		local last

		for j = i + 1, #str do
			local x = str:byte(j)

			if x < 32 then
				return nil
			end

			if last == 92 then
				if x == 117 then
					local hex = str:sub(j + 1, j + 5)

					if not hex:find("%x%x%x%x") then
						return nil
					end

					if hex:find("^[dD][89aAbB]") then
						has_surrogate_escape = true
					else
						has_unicode_escape = true
					end
				else
					local c = string.char(x)

					if not escape_chars[c] then
						return nil
					end

					has_escape = true
				end

				last = nil
			elseif x == 34 then
				local s = str:sub(i + 1, j - 1)

				if has_surrogate_escape then
					s = s:gsub("\\u[dD][89aAbB]..\\u....", parse_unicode_escape)
				end

				if has_unicode_escape then
					s = s:gsub("\\u....", parse_unicode_escape)
				end

				if has_escape then
					s = s:gsub("\\.", escape_char_map_inv)
				end

				return s, j + 1
			else
				last = x
			end
		end

		return nil
	end

	local function parse_number(str, i)
		local x = next_char(str, i, delim_chars)
		local s = str:sub(i, x - 1)
		local n = tonumber(s)

		if not n then
			return nil
		end

		return n, x
	end

	local function parse_literal(str, i)
		local x = next_char(str, i, delim_chars)
		local word = str:sub(i, x - 1)

		if not literals[word] then
			return nil
		end

		return literal_map[word], x
	end

	local function parse_object(str, i)
		local res = {}

		i = i + 1

		while true do
			local key, val

			i = next_char(str, i, space_chars, true)

			if str:sub(i, i) == "}" then
				i = i + 1

				break
			end

			if str:sub(i, i) ~= "[" then
				return nil
			end

			if str:sub(i + 1, i + 1) == "\"" then
				local tmp = i

				key, i = parse_string(str, i + 1)

				if key == nil then
					return nil
				end

				i = i + 1
			else
				local tmp = i

				i = str:find("]", i)

				if i == nil then
					return nil
				end

				i = i + 1
				key = tonumber(str:sub(tmp + 1, i - 2))
			end

			i = next_char(str, i, space_chars, true)

			if str:sub(i, i) ~= "=" then
				return nil
			end

			i = next_char(str, i + 1, space_chars, true)
			val, i = parse(str, i)

			if val == nil then
				return nil
			end

			res[key] = val
			i = next_char(str, i, space_chars, true)

			local chr = str:sub(i, i)

			i = i + 1

			if chr == "}" then
				break
			end

			if chr ~= "," then
				return nil
			end
		end

		return res, i
	end

	local char_func_map = {
		["\""] = parse_string,
		["0"] = parse_number,
		["1"] = parse_number,
		["2"] = parse_number,
		["3"] = parse_number,
		["4"] = parse_number,
		["5"] = parse_number,
		["6"] = parse_number,
		["7"] = parse_number,
		["8"] = parse_number,
		["9"] = parse_number,
		["-"] = parse_number,
		t = parse_literal,
		f = parse_literal,
		n = parse_literal,
		["{"] = parse_object
	}

	function parse2(str, idx)
		local chr = str:sub(idx, idx)
		local f = char_func_map[chr]

		if f then
			return f(str, idx)
		end

		return nil
	end

	function json2.decode(str)
		if type(str) ~= "string" then
			return nil
		end

		local res, idx = parse2(str, next_char(str, 1, space_chars, true))

		if res == nil then
			return nil
		end

		idx = next_char(str, idx, space_chars, true)

		if idx <= #str then
			return nil
		end

		return res
	end
end

function table.print(node)
	print(table.tostring(node))
end

function table.tostring(node)
	local function tab(amt)
		local str = ""

		for i = 1, amt do
			str = str .. "\t"
		end

		return str
	end

	local cache, stack, output = {}, {}, {}
	local depth = 1
	local output_str = "{\n"

	while true do
		local size = 0

		for k, v in pairs(node) do
			size = size + 1
		end

		local cur_index = 1

		for k, v in pairs(node) do
			if cache[node] == nil or cur_index >= cache[node] then
				if string.find(output_str, "}", output_str:len()) then
					output_str = output_str .. ",\n"
				elseif not string.find(output_str, "\n", output_str:len()) then
					output_str = output_str .. "\n"
				end

				table.insert(output, output_str)

				output_str = ""

				local key

				if type(k) == "number" or type(k) == "boolean" then
					key = "[" .. tostring(k) .. "]"
				else
					key = "['" .. tostring(k) .. "']"
				end

				if type(v) == "number" or type(v) == "boolean" then
					output_str = output_str .. tab(depth) .. key .. " = " .. tostring(v)
				elseif type(v) == "table" then
					output_str = output_str .. tab(depth) .. key .. " = {\n"

					table.insert(stack, node)
					table.insert(stack, v)

					cache[node] = cur_index + 1

					break
				else
					output_str = output_str .. tab(depth) .. key .. " = '" .. tostring(v) .. "'"
				end

				if cur_index == size then
					output_str = output_str .. "\n" .. tab(depth - 1) .. "}"
				else
					output_str = output_str .. ","
				end
			elseif cur_index == size then
				output_str = output_str .. "\n" .. tab(depth - 1) .. "}"
			end

			cur_index = cur_index + 1
		end

		if size == 0 then
			output_str = output_str .. "\n" .. tab(depth - 1) .. "}"
		end

		if #stack > 0 then
			node = stack[#stack]
			stack[#stack] = nil
			depth = cache[node] == nil and depth + 1 or depth - 1
		else
			break
		end
	end

	table.insert(output, output_str)

	output_str = table.concat(output)

	return output_str
end

function table.isList(t)
	local size = #t

	return table.size(t) == size and size > 0
end

function table.isStringList(t)
	if not table.isList(t) then
		return false
	end

	for k, v in ipairs(t) do
		if type(v) ~= "string" then
			return false
		end
	end

	return true
end

function table.isStringPairList(t)
	if not table.isList(t) then
		return false
	end

	for k, v in ipairs(t) do
		if type(v) ~= "table" or #v ~= 2 or type(v[1]) ~= "string" or type(v[2]) ~= "string" then
			return false
		end
	end

	return true
end

function table.encodeStringPairList(t)
	local ret = ""

	for k, v in ipairs(t) do
		if v[2]:find("\n") then
			ret = ret .. v[1] .. ":[[\n" .. v[2] .. "\n]]\n"
		else
			ret = ret .. v[1] .. ":" .. v[2] .. "\n"
		end
	end

	return ret
end

function table.decodeStringPairList(l)
	local ret = {}
	local r = regexMatch(l, "(?:^|\\n)([^:^\n]{1,20}):?(.*)(?:$|\\n)")
	local multiline = ""
	local multilineKey = ""
	local multilineActive = false

	for k, v in ipairs(r) do
		if multilineActive then
			local endPos = v[1]:find("%]%]")

			if endPos then
				if endPos > 1 then
					table.insert(ret, {
						multilineKey,
						multiline .. "\n" .. v[1]:sub(1, endPos - 1)
					})
				else
					table.insert(ret, {
						multilineKey,
						multiline
					})
				end

				multilineActive = false
				multiline = ""
				multilineKey = ""
			elseif multiline:len() == 0 then
				multiline = v[1]
			else
				multiline = multiline .. "\n" .. v[1]
			end
		else
			local bracketPos = v[3]:find("%[%[")

			if bracketPos == 1 then
				multiline = v[3]:sub(bracketPos + 2)
				multilineActive = true
				multilineKey = v[2]
			elseif v[2]:len() > 0 and v[3]:len() > 0 then
				table.insert(ret, {
					v[2],
					v[3]
				})
			end
		end
	end

	return ret
end

function table.reverse(t)
	local ret = {}

	for i = #t, 1, -1 do
		table.insert(ret, t[i])
	end

	return ret
end

function table.keys(t)
	local ret = {}

	for k, v in pairs(t) do
		table.insert(ret, k)
	end

	return ret
end

function table.count(t)
	local ret = 0

	for k, v in pairs(t) do
		ret = ret + 1
	end

	return ret
end

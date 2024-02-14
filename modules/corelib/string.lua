-- chunkname: @/modules/corelib/string.lua

function string:split(delim)
	local start = 1
	local results = {}

	while true do
		local pos = string.find(self, delim, start, true)

		if not pos then
			break
		end

		table.insert(results, string.sub(self, start, pos - 1))

		start = pos + string.len(delim)
	end

	table.insert(results, string.sub(self, start))
	table.removevalue(results, "")

	return results
end

function string:starts(start)
	return string.sub(self, 1, #start) == start
end

function string:ends(test)
	return test == "" or string.sub(self, -string.len(test)) == test
end

function string:trim()
	return string.match(self, "^%s*(.*%S)") or ""
end

function string:explode(sep, limit)
	if type(sep) ~= "string" or tostring(self):len() == 0 or sep:len() == 0 then
		return {}
	end

	local i, pos, tmp, t = 0, 1, "", {}

	for s, e in function()
		return string.find(self, sep, pos)
	end do
		tmp = self:sub(pos, s - 1):trim()

		table.insert(t, tmp)

		pos = e + 1
		i = i + 1

		if limit ~= nil and i == limit then
			break
		end
	end

	tmp = self:sub(pos):trim()

	table.insert(t, tmp)

	return t
end

function string:contains(str, checkCase, start, plain)
	if not checkCase then
		self = self:lower()
		str = str:lower()
	end

	return string.find(self, str, start and start or 1, plain == nil and true or false)
end

function string:contains(str, checkCase, start, plain)
	if not checkCase then
		self = self:lower()
		str = str:lower()
	end

	return string.find(self, str, start and start or 1, plain == nil and true or false)
end

function string.titleCase(str)
	return tr(str:gsub("(%a)([%w_']*)", function(first, rest)
		return first:upper() .. rest:lower()
	end))
end

function string:startswith(str)
	return self:find("^" .. str) ~= nil
end

function string:rfind(str)
	local find = self:reverse():find(str)

	if not find then
		return nil
	end

	return #self - find + 1
end

function string:wrap(numWords)
	local words = self:split(" ")

	lines = {}
	i = 1

	while i <= #words do
		lines[#lines + 1] = {}

		for j = i, i + numWords do
			if j > #words then
				break
			end

			table.insert(lines[#lines], words[j])
		end

		lines[#lines] = table.concat(lines[#lines], " ")
		i = i + numWords + 1
	end

	return table.concat(lines, "\n")
end

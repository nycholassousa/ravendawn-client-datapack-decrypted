-- chunkname: @/modules/corelib/globals.lua

APP_LOGIN_SERVICES = {
	{
		ip = "15.204.197.91",
		index = 1,
		port = 7001
	},
	{
		ip = "15.204.197.91",
		index = 2,
		port = 7002
	},
	{
		ip = "15.204.197.91",
		index = 3,
		port = 7003
	},
	{
		ip = "15.204.197.91",
		index = 4,
		port = 7004
	},
	{
		ip = "15.204.197.91",
		index = 5,
		port = 7005
	},
	{
		ip = "15.204.197.91",
		index = 6,
		port = 7006
	},
	{
		ip = "15.204.197.91",
		index = 7,
		port = 7007
	},
	{
		ip = "15.204.197.91",
		index = 8,
		port = 7008
	},
	{
		ip = "15.204.197.91",
		index = 9,
		port = 7009
	},
	{
		ip = "15.204.197.91",
		index = 10,
		port = 7010
	}
}
DEMO_VERSION = false
rootWidget = g_ui.getRootWidget()
modules = package.loaded
G = G or {}
savedPositionToReplaceIds = {}

function scheduleEvent(callback, delay)
	local desc = "lua"
	local info = debug.getinfo(2, "Sl")

	if info then
		desc = info.short_src .. ":" .. info.currentline
	end

	local event = g_dispatcher.scheduleEvent(desc, callback, delay)

	event._callback = callback

	return event
end

function addEvent(callback, front)
	local desc = "lua"
	local info = debug.getinfo(2, "Sl")

	if info then
		desc = info.short_src .. ":" .. info.currentline
	end

	local event = g_dispatcher.addEvent(desc, callback, front)

	event._callback = callback

	return event
end

function cycleEvent(callback, interval, runNow)
	local desc = "lua"
	local info = debug.getinfo(2, "Sl")

	if info then
		desc = info.short_src .. ":" .. info.currentline
	end

	if runNow then
		callback()
	end

	local event = g_dispatcher.cycleEvent(desc, callback, interval)

	event._callback = callback

	return event
end

function periodicalEvent(eventFunc, conditionFunc, delay, autoRepeatDelay)
	delay = delay or 30
	autoRepeatDelay = autoRepeatDelay or delay

	local func

	function func()
		if conditionFunc and not conditionFunc() then
			func = nil

			return
		end

		eventFunc()
		scheduleEvent(func, delay)
	end

	scheduleEvent(function()
		func()
	end, autoRepeatDelay)
end

function removeEvent(event)
	if event then
		event:cancel()

		event._callback = nil
	end
end

function callEvent(event)
	if event and event._callback then
		event._callback()
	end

	removeEvent(event)
end

function spairs(t, order)
	local keys = {}

	for key in pairs(t) do
		keys[#keys + 1] = key
	end

	if order then
		table.sort(keys, function(a, b)
			return order(t, a, b)
		end)
	else
		table.sort(keys)
	end

	local i = 0

	return function()
		i = i + 1

		if keys[i] then
			return keys[i], t[keys[i]]
		end
	end
end

function formatTime(time)
	local seconds = math.max(0, time) % 3600

	return string.format("%.1f", seconds)
end

function msToTime(duration)
	local seconds = math.floor(duration / 1000)

	return string.format("%s%s", seconds, " second" .. (seconds > 1 and "s" or ""))
end

function SecondsToTime(seconds)
	local days = math.floor(seconds / 86400)
	local hours = math.floor((seconds - days * 86400) / 3600)
	local minutes = math.floor((seconds - days * 86400 - hours * 3600) / 60)
	local seconds = math.floor(seconds - days * 86400 - hours * 3600 - minutes * 60)

	if days > 0 then
		return string.format("%dd %dh %dm %ds", days, hours, minutes, seconds)
	elseif hours > 0 then
		return string.format("%dh %dm %ds", hours, minutes, seconds)
	elseif minutes > 0 then
		return string.format("%dm %ds", minutes, seconds)
	else
		return string.format("%ds", seconds)
	end
end

function SecondsToClock(seconds)
	seconds = tonumber(seconds)

	if seconds <= 0 then
		return "00:00:00"
	else
		local hours = string.format("%02.f", math.floor(seconds / 3600))
		local mins = string.format("%02.f", math.floor(seconds / 60 - hours * 60))
		local secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))

		return hours .. ":" .. mins .. ":" .. secs
	end
end

function GetHighlightedText(text, baseColor)
	text = tr(text:gsub("%%", function()
		return "%%"
	end))
	baseColor = baseColor or "white"

	local tmpData = {}
	local pattern = "{([^}]+)}"
	local start = 1

	while true do
		local x, y = string.find(text, pattern, start)

		if x == nil then
			break
		end

		table.insert(tmpData, {
			start = x,
			finish = y
		})

		start = y + 1
	end

	local t = table.copy(tmpData)

	tmpData = {}

	local p = 1

	for index, data in ipairs(t) do
		local prefix = string.sub(text, p, data.start - 1)

		table.insert(tmpData, prefix)
		table.insert(tmpData, baseColor)

		p = data.finish + 1

		local explode = string.explode(string.sub(text, data.start + 1, data.finish - 1), ", ")

		for _, str in ipairs(explode) do
			table.insert(tmpData, str)
		end
	end

	t = nil

	table.insert(tmpData, string.sub(text, p, #text))
	table.insert(tmpData, baseColor)

	return tmpData
end

function CalculateNewFontSize(multiplier, fonts)
	local newFonts = {}

	for font, size in pairs(fonts) do
		for _, fontSize in ipairs(size) do
			local newSize = math.ceil(fontSize * multiplier)
			local newFont = font .. "-" .. newSize

			newFonts[font .. "-" .. fontSize] = newFont
		end
	end

	return newFonts
end

function CalculateResizedFontSize(multiplier, font)
	local fontSize = tonumber(string.match(font, "%d+"))
	local newFontSize = math.ceil(fontSize * multiplier)

	return string.gsub(font, "%d+", newFontSize)
end

function RefreshStyle(widget)
	for _, child in pairs(widget:recursiveGetChildren()) do
		local text = child:getText()

		if text ~= "" then
			child:setFont(child.originalFont or child:getFont())
		end
	end
end

function IsTextEditActive()
	for _, widget in ipairs(g_ui.getTextEditWidgets()) do
		if widget:isVisible() and widget:isFocused() and widget:isActive() and widget:isEditable() then
			return true
		end
	end

	return false
end

function FormatCommaNumber(number)
	local text = tostring(number)
	local formatted = ""
	local count = 0

	for i = text:len(), 1, -1 do
		formatted = text:sub(i, i) .. formatted
		count = count + 1

		if count == 3 and i > 1 then
			formatted = "," .. formatted
			count = 0
		end
	end

	return formatted
end

function ExportTooltipText()
	local rootWidget = g_ui.getRootWidget()
	local uniqueText = {}

	for _, child in ipairs(rootWidget:recursiveGetChildren()) do
		local tooltip = child.tooltip

		if tooltip and tooltip ~= "" then
			uniqueText[tooltip] = true
		end
	end

	local txt = ""

	for text, _ in pairs(uniqueText) do
		txt = txt .. text:gsub("\n", "\\n") .. ";\n"
	end

	local file = io.open("tooltips.csv", "w")

	file:write(txt)
	file:close()
end

function SecondsToTimeAgo(seconds)
	local minutes = math.floor(seconds / 60)
	local hours = math.floor(minutes / 60)
	local days = math.floor(hours / 24)
	local weeks = math.floor(days / 7)
	local months = math.floor(days / 30)
	local years = math.floor(days / 365)

	if years > 0 then
		return string.format("%d year%s ago", years, years > 1 and "s" or "")
	elseif months > 0 then
		return string.format("%d month%s ago", months, months > 1 and "s" or "")
	elseif weeks > 0 then
		return string.format("%d week%s ago", weeks, weeks > 1 and "s" or "")
	elseif days > 0 then
		return string.format("%d day%s ago", days, days > 1 and "s" or "")
	elseif hours > 0 then
		return string.format("%d hour%s ago", hours, hours > 1 and "s" or "")
	elseif minutes > 0 then
		return string.format("%d minute%s ago", minutes, minutes > 1 and "s" or "")
	else
		return "few seconds ago"
	end
end

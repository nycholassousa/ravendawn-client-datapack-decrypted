-- chunkname: @/modules/client_locale/locale.lua

ClientLocale = {
	locales = {}
}

function ClientLocale:loadLocales()
	local directories = g_resources.listDirectoryFiles(resolvepath("locales"))

	for _, directory in ipairs(directories) do
		local files = g_resources.listDirectoryFiles(resolvepath("locales/" .. directory))

		for _, file in ipairs(files) do
			local env = {}

			setmetatable(env, {
				__index = _G
			})
			setfenv(0, env)

			local func, error = loadfile("locales/" .. directory .. "/" .. file)

			if not func then
				g_logger.fatal(error)

				return false
			end

			setfenv(func, env)
			func()
			setfenv(0, _G)

			self.locales[directory] = self.locales[directory] or {}

			for key, value in pairs(env.translation) do
				self.locales[directory][key] = value
			end

			env = nil
		end
	end

	return true
end

function ClientLocale:init()
	self:loadLocales()
	connect(UIWidget, {
		onTextChange = self.onTextChange
	})
	connect(UILabel, {
		onTextChange = self.onTextChange
	})
end

function ClientLocale:terminate()
	disconnect(UIWidget, {
		onTextChange = self.onTextChange
	})
	disconnect(UILabel, {
		onTextChange = self.onTextChange
	})

	self.locales = nil
	ClientLocale = nil
end

function ClientLocale.onTextChange(widget, text, oldText)
	local locale = g_settings.get("locale")

	locale = locale or "en-GB"

	if locale == "en-GB" then
		return
	end

	if widget:getClassName() == "UITextEdit" and widget:isEditable() then
		return
	end

	local self = ClientLocale

	locale = self.locales[locale]

	if not locale then
		return
	end

	local success, error = pcall(tr, text)

	if not success then
		return
	end

	local translation = tr(text)

	if translation == text then
		return
	end

	widget:setText(translation, true)
end

local function stripPipeWords(pipeWords, str)
	local i = 1
	local txt = str:gsub("|(.-)|", function(w)
		pipeWords[i] = w
		i = i + 1

		return "||"
	end)

	return txt
end

local function reinsertPipeWords(pipeWords, trText)
	local i = 1
	local txt = trText:gsub("||", function()
		local word = pipeWords[i]

		i = i + 1

		return word or ""
	end)

	return txt
end

function ClientLocale:translate(text, ...)
	if not text or type(text) ~= "string" then
		return text
	end

	local pipeWords = {}
	local strippedText = stripPipeWords(pipeWords, text)
	local locale = g_settings.get("locale") or "en-GB"

	if locale == "en-GB" then
		return string.format(text:gsub("|", ""), ...)
	end

	local translations = self.locales[locale]

	if not translations then
		return string.format(text:gsub("|", ""), ...)
	end

	local translation = translations[strippedText]

	if not translation then
		local translatedArgs = {}

		for i, arg in ipairs({
			...
		}) do
			translatedArgs[i] = self:translate(arg)
		end

		translation = string.format(strippedText, unpack(translatedArgs))
	else
		translation = string.format(translation, ...)
	end

	return reinsertPipeWords(pipeWords, translation)
end

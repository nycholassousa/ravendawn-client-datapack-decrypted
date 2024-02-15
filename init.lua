-- CONFIG
APP_NAME = "ravendawn"
APP_VERSION = 1338
APP_TITLE = "Ravendawn"
APP_ICON = "/images/client_icon"
APP_PROTOCOL_VERSION = 1097
APP_GAME_VERSION = 22025
APP_LOGIN_IP_ADDRESS  = "15.204.197.91"
APP_LOGIN_PORT = 7001
APP_USE_LOGIN_SERVICES = true
WEBSITE_URL = ""

Services = {
  website = "",
  news = "",
  stats = "",
  crash = "",
  feedback = "",
  updater = "https://dw.ravendawn.online/production/checksums.txt"
}

-- print first terminal message
g_logger.info(os.date("== application started at %b %d %Y %X"))
g_logger.info(g_app.getName() .. ' ' .. g_app.getVersion() .. ' rev ' .. g_app.getBuildRevision() .. ' (' .. g_app.getBuildCommit() .. ') built on ' .. g_app.getBuildDate() .. ' for arch ' .. g_app.getBuildArch())

if not g_resources.directoryExists("/data") then
  g_logger.fatal("Data dir doesn't exist.")
end

if not g_resources.directoryExists("/modules") then
  g_logger.fatal("Modules dir doesn't exist.")
end

-- settings
g_configs.loadSettings("/config.otml")

-- load mods
g_modules.discoverModules()
g_modules.ensureModuleLoaded("corelib")

local function loadModules()
  -- libraries modules 0-99
  g_modules.autoLoadModules(99)
  g_modules.ensureModuleLoaded("gamelib")

  -- client modules 100-499
  g_modules.autoLoadModules(499)
  g_modules.ensureModuleLoaded("client")

  -- game modules 500-999
  g_modules.autoLoadModules(999)
  g_modules.ensureModuleLoaded("game_interface")

  -- mods 1000-9999
  g_modules.autoLoadModules(9999)
end

-- report crash
if type(Services.crash) == 'string' and Services.crash:len() > 4 and g_modules.getModule("crash_reporter") then
  g_modules.ensureModuleLoaded("crash_reporter")
end

-- Set Title and Icon
g_window.setTitle(APP_TITLE)
g_window.setIcon(APP_ICON, APP_ICON .. "_small")

-- run updater, must use data.zip
if true then
  g_modules.ensureModuleLoaded("updater")
  return Updater.init(loadModules)
end

loadModules()

-- Set Client and Protocol
g_game.setClientVersion(APP_GAME_VERSION)
g_game.setProtocolVersion(APP_PROTOCOL_VERSION)
local util = require("github-theme.util")
local theme = require("github-theme.theme")
local configModule = require("github-theme.config")

local function setup(userConfig)
  if userConfig then configModule.applyConfiguration(userConfig) end

  -- Load colorscheme
  util.load(theme.setup(configModule.config))
end

return {setup = setup}

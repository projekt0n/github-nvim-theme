local util = require("github.util")
local theme = require("github.theme")
local configModule = require("github.config")

local function setup(userConfig)
  if userConfig then configModule.applyConfiguration(userConfig) end

  -- Load colorscheme
  util.load(theme.setup(configModule.config))
end

return {setup = setup}

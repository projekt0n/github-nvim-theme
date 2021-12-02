local util = require("github-theme.util")
local theme = require("github-theme.theme")
local config_module = require("github-theme.config")

local function setup(user_config)
  if user_config then config_module.apply_configuration(user_config) end

  -- Load colorscheme
  util.load(theme.setup(config_module.config))
end

return {setup = setup}

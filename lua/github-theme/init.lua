local util = require("github-theme.util")
local config = require("github-theme.config")

---@param user_config gt.ConfigSchema
local function setup(user_config)
  if user_config then config.apply_configuration(user_config) end

  -- Load colorscheme
  local theme = require("github-theme.theme")(config.schema)
  util.load(theme)
end

return {setup = setup}

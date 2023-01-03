local config = require('github-theme.config')
local theme = require('github-theme.theme')
local util = require('github-theme.util')

---@class gt.Init
local init = {}

---@param user_config gt.ConfigSchema?
init.setup = function(user_config)
  if user_config then
    config.apply_configuration(user_config)
  end

  -- Load colorscheme
  vim.cmd([[hi clear]]) -- necessary to clear highlight from previous theme, otherwise it will be layered on top of the new one
  util.load(theme.setup(config.schema))
end

return init

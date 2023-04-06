local M = {}

local config = require('github-theme.config')
local theme = require('github-theme.theme')
local util = require('github-theme.util')
local dep = require('github-theme.util.deprecation')

M.setup = function(user_config)
  local c = config.default
  if user_config then
    c = vim.tbl_deep_extend('force', config.default, user_config or {})
  end

  dep.check_deprecation(c)

  -- Load colorscheme
  util.load(theme.setup(c))
end

return M

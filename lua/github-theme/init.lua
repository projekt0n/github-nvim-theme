local M = {}

local config = require('github-theme.config')
local theme = require('github-theme.theme')
local util = require('github-theme.util')
local dep = require('github-theme.util.deprecation')

local did_setup = false

M.setup = function(opts)
  did_setup = true

  if opts then
    config.set_options(opts)
  end

  dep.check_deprecation(config.options)

  -- Load colorscheme
  util.load(theme.setup(config.options))
end

return M

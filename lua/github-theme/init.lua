local M = {}

local config = require('github-theme.config')
local highlight = require('github-theme.lib.highlight').highlight
local dep = require('github-theme.util.deprecation')

local did_setup = false

function M.reset()
  require('github-theme.config').reset()
end

-- Avoid g:colors_name reloading
local lock = false

M.load = function(opts)
  if lock then
    return
  end

  if not did_setup then
    M.setup()
  end

  lock = true

  local spec = require('github-theme.spec').load(config.theme)
  local groups = require('github-theme.group').from(spec)
  local background = spec.palette.meta.light and 'light' or 'dark'

  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = config.theme
  vim.o.background = background

  highlight(groups)
  require('github-theme.autocmds').set()

  lock = false
end

M.setup = function(opts)
  did_setup = true
  opts = opts or {}

  local override = require('github-theme.override')

  -- TODO: Remove these individual conditions when migration
  -- from old config to 'opts.options' has been DONE.
  if opts.dev then
    config.set_options({ dev = opts.dev })
  end

  -- New configs
  if opts.options then
    config.set_options(opts.options)
  end

  if opts.palettes then
    override.palettes = opts.palettes
  end

  if opts.specs then
    override.specs = opts.specs
  end

  if opts.groups then
    override.groups = opts.groups
  end

  dep.check_deprecation(opts)
end

return M

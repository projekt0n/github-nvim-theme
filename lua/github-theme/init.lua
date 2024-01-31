local config = require('github-theme.config')

local function read_file(filepath)
  local file = io.open(filepath, 'r')
  if file then
    local content = file:read()
    file:close()
    return content
  end
end

local function write_file(filepath, content)
  local file = io.open(filepath, 'wb')
  if file then
    file:write(content)
    file:close()
  end
end

local M = {}

function M.reset()
  require('github-theme.config').reset()
  require('github-theme.override').reset()
end

---Compiles all themes/styles with their current settings.
---@return nil
function M.compile()
  require('github-theme.lib.log').clear()
  local compiler = require('github-theme.lib.compiler')
  local themes = require('github-theme.palette').themes
  local current_theme = config.theme
  for _, theme in ipairs(themes) do
    -- Compile current theme last (see discussion in #290)
    if theme ~= current_theme then
      compiler.compile({ theme = theme })
    end
  end
  compiler.compile({ theme = current_theme })
end

-- Avoid g:colors_name reloading
local lock = false
local did_setup = false

function M.load(opts)
  if lock then
    return
  end

  if not did_setup then
    M.setup()
  end

  opts = opts or {}

  local _, compiled_file = config.get_compiled_info(opts)
  lock = true

  local f = loadfile(compiled_file)
  if not f then
    M.compile()
    f = loadfile(compiled_file)
  end

  ---@diagnostic disable-next-line: need-check-nil
  f()

  require('github-theme.autocmds').set_autocmds()
  lock = false
end

M.setup = function(opts)
  did_setup = true
  opts = opts or {}

  local override = require('github-theme.override')

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

  local util = require('github-theme.util')
  util.ensure_dir(config.options.compile_path)

  local cached_path = util.join_paths(config.options.compile_path, 'cache')
  local cached = read_file(cached_path)

  local git_path =
    vim.fn.fnamemodify(vim.fn.resolve(debug.getinfo(1).source:sub(2)), ':p:h:h:h')
  local git = vim.fn.getftime(util.join_paths(git_path, '.git'))
  local hash = require('github-theme.lib.hash')(opts) .. (git == -1 and git_path or git)

  if cached ~= hash then
    M.compile()
    write_file(cached_path, hash)
  end

  require('github-theme.util.deprecation').check_deprecation(opts)
end

return M

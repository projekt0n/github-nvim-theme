local config = require('github-theme.config')
local override = require('github-theme.override')
local keys = { 'palettes', 'specs', 'groups' }
local did_setup = false
local M = {}

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

function M.reset()
  require('github-theme.config').reset()
  require('github-theme.override').reset()
end

---Compiles all themes/styles with their current settings.
---@param force boolean true by default
---@return nil
function M.compile(force)
  local util = require('github-theme.util')
  util.ensure_dir(config.options.compile_path)

  local cached_path = util.join_paths(config.options.compile_path, 'cache')
  local cached = read_file(cached_path)
  local git_path =
    vim.fn.fnamemodify(vim.fn.resolve(debug.getinfo(1).source:sub(2)), ':p:h:h:h')
  local git = vim.fn.getftime(util.join_paths(git_path, '.git'))

  -- This is needed because neither `opts` nor `config` necessarily contain
  -- everything we need to hash. For example, `opts` may not contain all
  -- overrides and config currently in use (`setup()` might have been called
  -- before, or maybe overrides were set directly and outside of `setup()`), and
  -- `config` does not contain any of the overrides in use. Therefore, we need
  -- to create a new table which contains everything in-use.
  local dummy = { options = config.options }
  for _, k in ipairs(keys) do
    dummy[k] = override[k]
  end

  local hash = require('github-theme.lib.hash')(dummy) .. (git == -1 and git_path or git)

  if force ~= false or cached ~= hash then
    require('github-theme.lib.log').clear()
    local compiler = require('github-theme.lib.compiler')
    local themes = require('github-theme.palette').themes
    local current_theme = config.theme

    for theme in pairs(themes) do
      -- Compile current theme last (see discussion in #290)
      if theme ~= current_theme then
        compiler.compile({ theme = theme })
      end
    end

    compiler.compile({ theme = current_theme })
    write_file(cached_path, hash)
  end

  getmetatable(override).__index.changed_since_last_compile = false
end

function M.load(opts)
  opts = opts or {}
  local _, compiled_file = config.get_compiled_info(opts)
  local f = loadfile(compiled_file)

  if not did_setup or override.changed_since_last_compile or not f then
    M.setup()
    f = loadfile(compiled_file)
  end

  ---@diagnostic disable-next-line: need-check-nil
  f()
  require('github-theme.autocmds').set_autocmds()
end

---Applies any new config or overrides then (re)compiles if needed.
---@param opts? table
function M.setup(opts)
  opts = opts or {}
  did_setup = true

  -- New configs
  if opts.options then
    config.set_options(opts.options)
  end

  for _, k in ipairs(keys) do
    local v = opts[k]
    if v ~= nil then
      override[k] = v
    end
  end

  M.compile(false)
  require('github-theme.util.deprecation').check_deprecation(opts)
end

return M

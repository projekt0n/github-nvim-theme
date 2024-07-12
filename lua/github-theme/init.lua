local uv = vim.loop
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

local function stat_file(path)
  for _ = 1, 3 do
    local stat = uv.fs_stat(path)
    if stat then
      return stat
    end
    uv.sleep(1)
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

  local git_mtime
  local git_path = debug.getinfo(1).source

  if (git_path or ''):find('^@.') then
    git_path = git_path:sub(2) .. '/../../../.git'
    local st = stat_file(git_path)

    if not st then
      goto skip
    end

    -- Handle a .git "file" (e.g. worktree or submodule)
    if st.type == 'file' then
      local f = io.open(git_path, 'r')

      if not f then
        goto skip
      end

      local gitdir_path = (f:read('*l') or ''):match('^gitdir: (.+)')
      f:close()

      if not gitdir_path then
        goto skip
      end

      git_path = gitdir_path
      st = stat_file(git_path)

      if not st then
        goto skip
      end
    end

    local sec, nsec = st.mtime.sec, st.mtime.nsec or 0

    if nsec == 1e9 then
      sec = sec + 1
      nsec = 0
    end

    git_mtime = ('%d.%09d'):format(sec, nsec)
  end

  ::skip::

  local hash = ('%s %s'):format(
    require('github-theme.lib.hash')(opts),
    git_mtime or git_path
  )

  -- Force re-compile if .git dir could not be detected (plugin may have been
  -- updated and we don't want to use a stale cache).
  if cached ~= hash or not git_mtime then
    M.compile()
    write_file(cached_path, hash)
  end

  require('github-theme.util.deprecation').check_deprecation(opts)
end

return M

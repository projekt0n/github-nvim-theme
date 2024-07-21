-- https://github.com/airblade/vim-gitgutter

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local git = spec.git

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    GitGutterAdd    = { fg = git.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = git.changed }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = git.removed }, -- diff mode: Deleted line |diff.txt|
  }
end

return M

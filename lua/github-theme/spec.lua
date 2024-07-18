local M = {}

--#region Types

---@class GhTheme.Spec
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field fg0 string
---@field fg1 string
---@field fg2 string
---@field fg3 string
---@field sel0 string
---@field sel1 string
---@field sel2 string
---@field syntax GhTheme.Spec.Syntax
---@field diag GhTheme.Spec.Diagnostic
---@field diag_bg GhTheme.Spec.DiagnosticBg
---@field diff GhTheme.Spec.Diff
---@field git GhTheme.Spec.Git

---@class GhTheme.Spec.Syntax
---@field bracket string
---@field builtin0 string
---@field builtin1 string
---@field builtin2 string
---@field comment string
---@field conditional string
---@field const string
---@field dep string
---@field field string
---@field func string
---@field ident string
---@field keyword string
---@field number string
---@field operator string
---@field param string
---@field preproc string
---@field regex string
---@field statement string
---@field string string
---@field tag string
---@field type string
---@field variable string

---@class GhTheme.Spec.Diagnostic
---@field error string
---@field warn string
---@field info string
---@field hint string

---@class GhTheme.Spec.DiagnosticBg
---@field error string
---@field warn string
---@field info string
---@field hint string

---@class GhTheme.Spec.Diff
---@field add string
---@field delete string
---@field change string
---@field text string

---@class GhTheme.Spec.Git
---@field add string
---@field removed string
---@field changed string

--#endregion

---@param theme GhTheme.Theme
local function get_spec(theme)
  local template = require('github-theme.util.template')
  local ovr = require('github-theme.override').specs
  local pal = require('github-theme.palette').load(theme)
  local spec = pal.generate_spec(pal)
  if ovr.all then
    pal = vim.tbl_deep_extend('force', pal, template.parse(ovr.all, pal))
  end
  if ovr[theme] then
    pal = vim.tbl_deep_extend('force', pal, template.parse(ovr[theme], pal))
  end
  spec.palette = pal
  return spec
end

---Returns the spec for the given `theme`, or all themes (i.e. a map from theme
---name to spec) if `theme` is `nil`.
---@param theme? GhTheme.Theme
function M.load(theme)
  if theme ~= nil then
    return get_spec(theme)
  else
    local all = {}

    ---@diagnostic disable-next-line: redefined-local
    for theme in pairs(M.themes) do
      all[theme] = get_spec(theme)
    end

    return all
  end
end

return M

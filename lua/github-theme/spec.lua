local M = {}

--#region Types

---@class GhTheme.Spec
---@field bg0 string Dark bg (popup and float)
---@field bg1 string Default bg
---@field bg2 string Lighter bg (colorcolumn Folds)
---@field bg3 string Lighter bg (cursor line)
---@field bg4 string Conceal
---@field fg0 string Lighter fg
---@field fg1 string Default fg
---@field fg2 string Darker fg (status line)
---@field fg3 string Darker fg (line numbers, fold columns)
---@field sel0 string Visual selection bg
---@field sel1 string Popup sel bg
---@field sel2 string Search bg
---@field syntax GhTheme.Spec.Syntax
---@field diag GhTheme.Spec.Diagnostic
---@field diag_bg GhTheme.Spec.DiagnosticBg
---@field diff GhTheme.Spec.Diff
---@field git GhTheme.Spec.Git

---@class GhTheme.Spec.Syntax
---@field bracket string Brackets and Punctuation
---@field builtin0 string Builtin variable
---@field builtin1 string Builtin type
---@field builtin2 string Builtin const
---@field comment string Comment
---@field conditional string Conditional and loop
---@field const string Constants, imports and booleans
---@field dep string Deprecated
---@field field string Field
---@field func string Functions and Titles
---@field ident string Identifiers
---@field keyword string Keywords
---@field number string Numbers
---@field operator string Operators
---@field param string Parameters
---@field preproc string PreProc
---@field regex string Regex
---@field statement string Statements
---@field string string Strings
---@field tag string Tags
---@field type string Types
---@field variable string Variables

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
    spec = vim.tbl_deep_extend('force', spec, template.parse(ovr.all, spec))
  end
  if ovr[theme] then
    spec = vim.tbl_deep_extend('force', spec, template.parse(ovr[theme], spec))
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

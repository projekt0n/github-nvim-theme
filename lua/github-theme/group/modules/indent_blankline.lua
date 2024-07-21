-- https://github.com/lukas-reineke/indent-blankline.nvim

local C = require('github-theme.lib.color')

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local p = spec.palette

  local fg = C(spec.bg1):blend(C(spec.fg1), 0.1):to_css()
  local cyan_fg = C(spec.bg1):blend(C(p.cyan.bright), 0.35):to_css()

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    IndentBlanklineChar = { fg = fg  },
    IndentBlanklineContextChar = { fg = cyan_fg },
    IndentBlanklineContextStart = { style = 'underline', sp = p.orange },
  }
end

return M

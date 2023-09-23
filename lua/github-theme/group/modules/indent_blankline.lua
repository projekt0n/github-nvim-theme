-- https://github.com/lukas-reineke/indent-blankline.nvim

local C = require('github-theme.lib.color')

local M = {}

function M.get(spec, config, opts)
  local p = spec.palette

  local fg = C(spec.bg1):blend(C(spec.fg1), 0.1):to_css()
  local cyan_fg = C(spec.bg1):blend(C(p.cyan.bright), 0.35):to_css()

  -- stylua: ignore
  return {
    IndentBlanklineChar = { fg = fg  },
    IndentBlanklineContextChar = { fg = cyan_fg },
    IndentBlanklineContextStart = { style = 'underline', sp = p.orange },
  }
end

return M

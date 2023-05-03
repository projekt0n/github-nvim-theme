-- https://github.com/lukas-reineke/indent-blankline.nvim

local C = require('github-theme.lib.color')

local M = {}

function M.get(spec, config, opts)
  local fg = C(spec.bg1):blend(C(spec.fg1), 0.2):to_css()
  local blue_fg = C(spec.bg1):blend(C(spec.palette.cyan.bright), 0.4):to_css()

  -- stylua: ignore
  return {
    IndentBlanklineChar = { fg = fg  },
    IndentBlanklineContextChar = { fg = blue_fg },
  }
end

return M

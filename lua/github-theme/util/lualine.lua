local C = require('github-theme.lib.color')

return function(style)
  local config = require('github-theme.config').options
  local s = require('github-theme.spec').load(style)
  local p = s.palette
  local tbg = config.transparent and 'NONE' or s.bg0

  local function blend(color, a)
    return C(s.bg1):blend(C(color), a):to_css()
  end

  --- Create lualine group colors for github-theme
  ---@param color string
  local tint = function(color)
    return {
      a = { bg = color, fg = s.bg1 },
      b = { bg = blend(color, 0.2), fg = blend(color, 0.8) },
      c = { bg = blend(color, 0.01), fg = blend(color, 0.60) },
    }
  end

  local inactive_hi = { bg = tbg, fg = blend(s.fg1, 0.3) }

  -- Fix for https://github.com/projekt0n/github-nvim-theme/issues/175
  vim.cmd('hi! link StatusLine Normal')

  return {
    normal = tint(p.blue.base),
    insert = tint(p.green.base),
    command = tint(p.magenta.bright),
    visual = tint(p.yellow.base),
    replace = tint(p.red.base),
    terminal = tint(p.orange),
    inactive = {
      a = inactive_hi,
      b = inactive_hi,
      c = inactive_hi,
    },
  }
end

local C = require('github-theme.lib.color')

return function(style)
  local config = require('github-theme.config').options
  local s = require('github-theme.spec').load(style)
  local p = s.palette
  local tbg = config.transparent and 'NONE' or s.bg0

  local function blend(color, a)
    return C(s.bg1):blend(C(color), a):to_css()
  end

  local generate_color_map = function(color)
    local t = {
      { tbg, color, 59, 74 }, -- guifg guibg ctermfg ctermbg
      { color, blend(color, 0.1), 74, 59 }, -- guifg guibg ctermfg ctermbg
      { s.fg2, blend(p.black.base, 0.2), 145, 16 }, -- guifg guibg ctermfg ctermbg
    }
    return vim.fn['airline#themes#generate_color_map'](t[1], t[2], t[3])
  end

  vim.g['airline#themes#' .. style .. '#palette'] = {
    normal = generate_color_map(p.blue.base),
    insert = generate_color_map(p.green.base),
    visual = generate_color_map(p.yellow.base),
    replace = generate_color_map(p.red.base),
    commandline = generate_color_map(p.magenta.bright),
    terminal = generate_color_map(p.orange),
    inactive = generate_color_map(s.fg0),
  }
end

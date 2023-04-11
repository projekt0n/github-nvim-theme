local util = require('github-theme.util')

--- build lualine theme for github theme
return function(style)
  local c = require('github-theme.palette.' .. style)()

  --- create lualine group colors for github-theme
  ---@param color string
  ---@return table
  local tint_lualine_group = function(color)
    local group = {
      a = { bg = color, fg = c.bg },
      b = { bg = util.darken(color, 0.2), fg = util.lighten(color, 0.2) },
    }
    if vim.o.background == 'dark' then
      group.c = {
        bg = util.darken(color, 0.01, c.bg2),
        fg = util.lighten(color, 0.4, c.fg),
      }
    else
      -- inverting colors for light colorschemes
      group.c = {
        bg = util.lighten(color, 0.01, c.bg2),
        fg = util.darken(color, 0.4, c.fg),
      }
    end
    return group
  end

  local inactive_hi = { bg = c.bg2, fg = util.darken(c.fg, 0.3) }

  -- Fix for https://github.com/projekt0n/github-nvim-theme/issues/175
  vim.cmd('hi! link StatusLine Normal')

  return {
    normal = tint_lualine_group(c.blue),
    insert = tint_lualine_group(c.green),
    command = tint_lualine_group(c.bright_magenta),
    visual = tint_lualine_group(c.yellow),
    replace = tint_lualine_group(c.red),
    terminal = tint_lualine_group(c.orange),
    inactive = {
      a = inactive_hi,
      b = inactive_hi,
      c = inactive_hi,
    },
  }
end

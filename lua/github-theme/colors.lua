local util = require('github-theme.util')
local config = require('github-theme.config')

---Setup Colors
---@param cfg gt.ConfigSchema
---@return gt.Palette
return function(cfg)
  cfg = cfg or config.global

  ---@type gt.Palette
  local colors = require('github-theme.palette')(cfg.theme_style)

  -- useful for 'util.darken()' and 'util.lighten()'
  util.bg = colors.bg
  util.fg = colors.fg

  --
  -- NOTE: These colors are also configurable
  --

  -- EndOfBuffer
  colors.sidebar_eob = cfg.dark_sidebar and colors.bg2 or colors.bg
  colors.sidebar_eob = cfg.hide_end_of_buffer and colors.sidebar_eob or colors.fg_gutter
  colors.eob = cfg.hide_end_of_buffer and colors.bg or colors.fg_gutter

  -- Statusline
  colors.bg_statusline = colors.blue
  colors.fg_statusline = colors.bg
  colors.bg_nc_statusline = colors.bg2
  colors.fg_nc_statusline = util.darken(colors.fg, 0.3)

  -- Search
  colors.fg_search = colors.none

  -- Border
  colors.border_highlight = colors.blue

  -- Folded
  colors.fg_folded = colors.fg
  colors.bg_folded = colors.bg_visual_selection

  -- Popups
  colors.bg_popup = colors.bg2

  -- Sidebar and Floats
  colors.bg_sidebar = cfg.dark_sidebar and colors.bg2 or colors.bg
  colors.bg_sidebar = cfg.transparent and colors.none or colors.bg_sidebar
  colors.bg_float = cfg.dark_float and colors.bg2 or colors.bg

  -- Lualine

  --- create lualine group colors for github-theme
  ---@param color string
  ---@return table
  local tint_lualine_group = function(color)
    local group = {
      a = { bg = color, fg = colors.bg },
      b = { bg = util.darken(color, 0.2), fg = util.lighten(color, 0.2) },
    }
    if vim.o.background == 'dark' then
      group.c = {
        bg = util.darken(color, 0.01, colors.bg2),
        fg = util.lighten(color, 0.4, colors.fg),
      }
    else
      -- inverting colors for light colorschemes
      group.c = {
        bg = util.lighten(color, 0.01, colors.bg2),
        fg = util.darken(color, 0.4, colors.fg),
      }
    end
    return group
  end

  colors.lualine = {
    normal = tint_lualine_group(colors.blue),
    insert = tint_lualine_group(colors.green),
    command = tint_lualine_group(colors.bright_magenta),
    visual = tint_lualine_group(colors.yellow),
    replace = tint_lualine_group(colors.red),
    terminal = tint_lualine_group(colors.orange),
    inactive = {
      a = { bg = colors.bg_nc_statusline, fg = colors.fg_nc_statusline },
      b = { bg = colors.bg_nc_statusline, fg = colors.fg_nc_statusline },
      c = { bg = colors.bg_nc_statusline, fg = colors.fg_nc_statusline },
    },
  }

  util.color_overrides(colors, cfg)

  return colors
end

local util = require('github-theme.util')
local light_palette = require('github-theme.palette.light')

return function()
  ---@type gt.ColorPalette
  local palette = {
    -- Background Colors
    bg = '#ffffff',
    bg2 = '#f6f8fa',

    -- Foreground Colors
    -- fg = '#24292e',
    fg_dark = '#424242',
    fg_gutter = '#24292e',
    fg_light = '#24292e',
    fg_term = '#0E1116',

    -- Background Highlights Colors
    -- bg_highlight = '#d5e5f6',
    -- bg_search = '#fff2be',
    -- bg_visual = '#e1e4e8',
    -- bg_visual_selection = '#dbe9f9',
    -- border = '#044289',

    -- Cursor & LineNumber Colors
    -- cursor = '#044289',
    -- cursor_line_nr = '#24292e',
    -- line_nr = '#959da5',

    -- LSP & Diagnostic Colors
    -- error = '#cb2431',
    -- warning = '#bf8803',
    -- info = '#75beff',
    -- hint = '#6c6c6c',
    lsp = { ref_txt = '#ccf3d5' },

    -- Auto-Complication Colors
    pmenu = {
      -- bg = '#f6f8fa',
      sbar = '#e7e9eb',
    },

    -- Git & Diff Colors
    git = {
      add = '#22863a',
      change = '#b08800',
      delete = '#cb2431',
      conflict = '#b08800',
      -- ignore = '#959da5',
      -- renamed = '#007100',
    },
    -- diff = {
    --   add = '#d4f8db',
    --   add_fg = '#22863a',
    --   change = '#fff5b1',
    --   change_fg = '#b08800',
    --   delete = '#fae5e7',
    --   delete_fg = '#cb2431',
    -- },

    -- Syntax Colors
    syntax = {
      -- comment = '#6a737d',
      -- constant = '#005cc5',
      -- string = '#032f62',
      variable = '#e36209',
      -- keyword = '#d73a49',
      -- func = '#6f42c1',
      -- func_param = '#24292e',
      match_paren_bg = '#ccf3d5',
      -- tag = '#22863a',
      -- html_arg = '#b31d28',
      -- param = '#e36209',
      -- json_label = '#005cc5',
    },

    -- Terminal Colors
    -- orange = '#d18616',
    black = '#24292f',
    bright_black = '#57606a',
    white = '#6e7781',
    bright_white = '#8c959f',
    red = '#cf222e',
    bright_red = '#a40e26',
    green = '#116329',
    bright_green = '#1a7f37',
    yellow = '#4d2d00',
    bright_yellow = '#633c01',
    blue = '#0969da',
    bright_blue = '#218bff',
    magenta = '#8250df',
    bright_magenta = '#a475f9',
    cyan = '#1b7c83',
    bright_cyan = '#3192aa',

    -- Plugin Colors
    git_signs = {
      add = '#34d058',
      change = '#f9c513',
      -- delete = '#d73a49'
    },
  }

  return util.color_overrides(light_palette(), palette)
end

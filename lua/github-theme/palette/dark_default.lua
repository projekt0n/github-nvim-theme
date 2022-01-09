local util = require('github-theme.util')
local dark_palette = require('github-theme.palette.dark')

return function()
  ---@type gt.ColorPalette
  local palette = {
    -- Background Colors
    bg = '#0d1117',
    bg2 = '#090c10',

    -- foreground colors
    -- fg = '#c9d1d9',
    fg_dark = '#4d5566',
    fg_gutter = '#c5c5c5',
    fg_light = '#b3b1ad',
    fg_term = '#b3b1ad',

    -- Background Highlights Colors
    bg_highlight = '#161b22',
    bg_search = '#2c2b1c',
    bg_visual = '#b3b1ad',
    bg_visual_selection = '#163356',
    border = '#b3b1ad',

    -- Cursor & LineNumber Colors
    cursor = '#73b7f2',
    cursor_line_nr = '#c9d1d9',
    line_nr = '#8b949e',

    -- LSP & Diagnostic Colors
    error = '#f85149',
    warning = '#f0883e',
    -- info = '#75beff',
    -- hint = '#eeeeb3',
    lsp = { ref_txt = '#164449' },

    -- Auto-Complication Colors
    pmenu = { bg = '#161b22', sbar = '#31373d' },

    -- Git & Diff Colors
    git = {
      add = '#56d364',
      change = '#ac8934',
      delete = '#f85149',
      conflict = '#e3b341',
      ignore = '#484f58',
      -- renamed = '#73c991',
    },
    -- diff = {
    --   add = '#244032',
    --   add_fg = '#56d364',
    --   change = '#341a00',
    --   change_fg = '#e3b341',
    --   delete = '#462c32',
    --   delete_fg = '#f85149',
    -- },

    -- Syntax Colors
    syntax = {
      comment = '#8b949e',
      -- constant = '#79c0ff',
      string = '#a5d6ff',
      variable = '#ffa657',
      keyword = '#ff7b72',
      func = '#d2a8ff',
      func_param = '#c9d1d9',
      match_paren_bg = '#105357',
      tag = '#7ee787',
      html_arg = '#ff7b72',
      param = '#ffa657',
      json_label = '#79c0ff',
    },

    -- Terminal Colors
    -- orange = '#d18616',
    black = '#484f58',
    bright_black = '#6e7681',
    -- white = '#b1bac4',
    bright_white = '#f0f6fc',
    red = '#ff7b72',
    bright_red = '#ffa198',
    green = '#3fb950',
    bright_green = '#56d364',
    yellow = '#d29922',
    bright_yellow = '#e3b341',
    blue = '#58a6ff',
    bright_blue = '#79c0ff',
    magenta = '#bc8cff',
    bright_magenta = '#d2a8ff',
    cyan = '#39c5cf',
    bright_cyan = '#56d4dd',

    -- Plugin Colors
    git_signs = { add = '#196c2e', change = '#9e6a03', delete = '#b62324' },
  }

  return util.color_overrides(dark_palette(), palette)
end

local util = require('github-theme.util')
local dark_palette = require('github-theme.palette.dark')

return function()
  ---@type gt.ColorPalette
  local palette = {
    -- Background Colors
    bg = '#22272e',
    bg2 = '#1e2228',

    -- foreground colors
    fg = '#adbac7',
    fg_dark = '#636e7b',
    fg_gutter = '#768390',
    fg_light = '#adbac7',
    fg_term = '#768390',

    -- Background Highlights Colors
    bg_highlight = '#2d333b',
    bg_search = '#3f3e30',
    -- bg_visual = '#444c56',
    bg_visual_selection = '#264466',
    border = '#444c56',

    -- Cursor & LineNumber Colors
    cursor = '#6cb6ff',
    cursor_line_nr = '#adbac7',
    line_nr = '#768390',

    -- LSP & Diagnostic Colors
    error = '#e5534b',
    -- warning = '#cca700',
    -- info = '#75beff',
    -- hint = '#eeeeb3',
    lsp = { ref_txt = '#28575d' },

    -- Auto-Complication Colors
    pmenu = { bg = '#2d333b', sbar = '#363b44' },

    -- Git & Diff Colors
    git = {
      add = '#6bc46d',
      change = '#daaa3f',
      delete = '#b34642',
      conflict = '#daaa3f',
      ignore = '#545d68',
      --   renamed = '#73c991',
    },
    -- diff = {
    --   add = '#293d34',
    --   add_fg = '#6bc46d',
    --   change = '#452700',
    --   change_fg = '#daaa3f',
    --   delete = '#432b30',
    --   delete_fg = '#e5534b',
    -- },

    -- Syntax Colors
    syntax = {
      comment = '#768390',
      constant = '#6cb6ff',
      string = '#96d0ff',
      variable = '#6cb6ff',
      keyword = '#f47067',
      func = '#dcbdfb',
      func_param = '#adbac7',
      match_paren_bg = '#266a70',
      tag = '#8ddb8c',
      html_arg = '#ff938a',
      param = '#f69d50',
      json_label = '#6cb6ff',
    },

    -- Terminal Colors
    -- orange = '#d18616',
    black = '#545d68',
    bright_black = '#636e7b',
    white = '#909dab',
    bright_white = '#cdd9e5',
    red = '#f47067',
    bright_red = '#ff938a',
    green = '#57ab5a',
    bright_green = '#6bc46d',
    yellow = '#c69026',
    bright_yellow = '#daaa3f',
    blue = '#539bf5',
    bright_blue = '#6cb6ff',
    magenta = '#b083f0',
    bright_magenta = '#dcbdfb',
    cyan = '#39c5cf',
    bright_cyan = '#56d4dd',

    -- Plugin Colors
    git_signs = { add = '#2b6a30', change = '#966600', delete = '#ad2e2c' },
  }

  return util.color_overrides(dark_palette(), palette)
end

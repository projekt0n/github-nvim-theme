return function()
  ---@type gt.ColorPalette
  local palette = {
    -- Background Colors
    bg = '#24292e',
    bg2 = '#1f2428',

    -- Foreground Colors
    fg = '#c9d1d9',
    fg_dark = '#666666',
    fg_gutter = '#e1e4e8',
    fg_light = '#d1d5da',
    fg_term = '#d1d5da',

    -- Background Highlights Colors
    bg_highlight = '#2c313a',
    bg_search = '#404030',
    bg_visual = '#444c56',
    bg_visual_selection = '#264466',
    border = '#c9d1d9',

    -- Cursor & LineNumber Colors
    cursor = '#c8e1ff',
    cursor_line_nr = '#e1e4e8',
    line_nr = '#444d56',

    -- LSP & Diagnostic Colors
    error = '#e5534b',
    warning = '#daaa3f',
    info = '#539bf5',
    hint = '#6cb6ff',
    lsp = { ref_txt = '#adbac7' },

    -- Auto-Complication Colors
    pmenu = { bg = '#2d333b', sbar = '#363b44' },

    -- Git & Diff Colors
    git = {
      add = '#57ab5a',
      change = '#daaa3f',
      delete = '#e5534b',
      conflict = '#daaa3f',
      ignore = '#545d68',
      renamed = '#73c991',
    },
    diff = {
      -- add = '#293d34',
      add_fg = '#57ab5a',
      -- change = '#452700',
      change_fg = '#daaa3f',
      -- delete = '#432b30',
      delete_fg = '#e5534b',
    },

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
    orange = '#d18616',
    black = '#545d68',
    bright_black = '#636e7b',
    white = '#909dab',
    bright_white = '#cdd9e5',
    red = '#e5534b',
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
    git_signs = { add = '#57ab5a', change = '#daaa3f', delete = '#e5534b' },
  }

  return palette
end

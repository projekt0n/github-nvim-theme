---@type gt.ColorPalette
return {
  -- Background Colors
  bg = '#ffffff',
  bg2 = '#f6f8fa',

  -- foreground colors
  fg = '#24292e',
  fg_dark = '#666666',
  fg_gutter = '#babbbd',
  fg_light = '#586069',
  fg_term = '#586069',

  -- Background Highlights Colors
  bg_highlight = '#d5e5f6',
  bg_search = '#fff2be',
  bg_visual = '#e1e4e8',
  bg_visual_selection = '#dbe9f9',
  border = '#044289',

  -- Cursor & LineNumber Colors
  cursor = '#044289',
  cursor_line_nr = '#24292e',
  line_nr = '#babbbd',

  -- LSP & Diagnostic Colors
  error = '#cb2431',
  warning = '#bf8803',
  info = '#75beff',
  hint = '#6c6c6c',
  lsp = { ref_txt = '#c6eed2' },

  -- Auto-Complication Colors
  pmenu = { bg = '#f6f8fa', sbar = '#f0f1f3' },

  -- Git & Diff Colors
  git = {
    add = '#28a745',
    change = '#895503',
    delete = '#d73a49',
    conflict = '#e36209',
    ignore = '#959da5',
    renamed = '#007100',
  },
  diff = {
    add = '#d4f8db',
    add_fg = '#22863a',
    change = '#fff5b1',
    change_fg = '#b08800',
    delete = '#fae5e7',
    delete_fg = '#cb2431',
  },

  -- Syntax Colors
  syntax = {
    comment = '#6a737d',
    constant = '#005cc5',
    string = '#032f62',
    variable = '#005cc5',
    keyword = '#d73a49',
    func = '#6f42c1',
    func_param = '#24292e',
    match_paren_bg = '#c6eed2',
    tag = '#22863a',
    html_arg = '#b31d28',
    param = '#e36209',
    json_label = '#005cc5',
  },

  -- Terminal Colors
  orange = '#d18616',
  black = '#697179',
  bright_black = '#666666',
  white = '#e1e4e8',
  bright_white = '#a5a5a5',
  red = '#d03d3d',
  bright_red = '#cd3131',
  green = '#14ce14',
  bright_green = '#14ce14',
  yellow = '#949800',
  bright_yellow = '#b5ba00',
  blue = '#0451a5',
  bright_blue = '#0451a5',
  magenta = '#bc05bc',
  bright_magenta = '#bc05bc',
  cyan = '#0598bc',
  bright_cyan = '#0598bc',

  -- Plugin Colors
  git_signs = { add = '#28a745', change = '#2188ff', delete = '#d73a49' },
}

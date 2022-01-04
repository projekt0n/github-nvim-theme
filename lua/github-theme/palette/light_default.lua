---@type gt.Palette
local light_default_palette = {
  -- Background Colors
  bg = "#ffffff",
  bg2 = "#f6f8fa",

  -- Foreground Colors
  fg = "#24292e",
  fg_dark = "#424242",
  fg_gutter = "#24292e",
  fg_light = "#24292e",
  term_fg = "#4d5566",

  -- Background Highlights Colors
  bg_highlight = "#d5e5f6",
  bg_search = "#fff2be",
  bg_visual = "#e1e4e8",
  bg_visual_selection = "#dbe9f9",
  border = "#044289",

  -- Cursor & LineNumber Colors
  cursor = "#044289",
  cursor_line_nr = "#24292e",
  line_nr = "#959da5",

  -- LSP & Diagnostic Colors
  error = "#cb2431",
  warning = "#bf8803",
  info = "#75beff",
  hint = "#6c6c6c",
  lsp = {referenceText = "#ccf3d5"},

  -- Auto-Complication Colors
  pmenu = {bg = "#f6f8fa", sbar = "#e7e9eb"},

  -- Git & Diff Colors
  git = {
    add = "#22863a",
    change = "#b08800",
    delete = "#cb2431",
    conflict = "#b08800",
    ignore = "#959da5",
    renamed = "#007100"
  },
  diff = {
    add = "#d4f8db",
    add_fg = "#22863a",
    change = "#fff5b1",
    change_fg = "#b08800",
    delete = "#fae5e7",
    delete_fg = "#cb2431"
  },

  -- Syntax Colors
  syntax = {
    comment = "#6a737d",
    constant = "#005cc5",
    string = "#032f62",
    variable = "#e36209",
    keyword = "#d73a49",
    func = "#6f42c1",
    func_param = "#24292e",
    match_paren_bg = "#ccf3d5",
    tag = "#22863a",
    html_arg = "#b31d28",
    param = "#e36209",
    json_label = "#005cc5"
  },

  -- Terminal Colors
  orange = "#d18616",
  black = "#24292e",
  bright_black = "#586069",
  white = "#6a737d",
  bright_white = "#959da5",
  red = "#d73a49",
  bright_red = "#cb2431",
  green = "#22863a",
  bright_green = "#28a745",
  yellow = "#b08800",
  bright_yellow = "#dbab09",
  blue = "#0366d6",
  bright_blue = "#2188ff",
  magenta = "#6f42c1",
  bright_magenta = "#8a63d2",
  cyan = "#1b7c83",
  bright_cyan = "#3192aa",

  -- Plugin Colors
  git_signs = {add = "#34d058", change = "#f9c513", delete = "#d73a49"}
}

return light_default_palette

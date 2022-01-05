local gt = {}

---@class gt.HexColor string

---@class gt.LspPalette
---@field ref_txt gt.HexColor

---@class gt.PMenuPalette
---@field bg gt.HexColor
---@field sbar gt.HexColor

---@class gt.GitPalette
---@field add gt.HexColor
---@field change gt.HexColor
---@field delete gt.HexColor
---@field conflict gt.HexColor
---@field ignore gt.HexColor
---@field renamed gt.HexColor

---@class gt.DiffPalette
---@field add gt.HexColor
---@field add_fg gt.HexColor
---@field change gt.HexColor
---@field change_fg gt.HexColor
---@field delete gt.HexColor
---@field delete_fg gt.HexColor

---@class gt.SyntaxPalette
---@field comment gt.HexColor
---@field constant gt.HexColor
---@field string gt.HexColor
---@field variable gt.HexColor
---@field keyword gt.HexColor
---@field func gt.HexColor
---@field func_param gt.HexColor
---@field match_paren_bg gt.HexColor
---@field tag gt.HexColor
---@field html_arg gt.HexColor
---@field param gt.HexColor
---@field json_label gt.HexColor

---@class gt.GitSignPalette
---@field add gt.HexColor
---@field change gt.HexColor
---@field delete gt.HexColor

---@class gt.Palette
---Background Colors
---@field bg gt.HexColor
---@field bg2 gt.HexColor
---Foreground Colors
---@field fg gt.HexColor
---@field fg_dark gt.HexColor
---@field fg_gutter gt.HexColor
---@field fg_light gt.HexColor
---@field term_fg gt.HexColor
---Background Highlights Colors
---@field bg_highlight gt.HexColor
---@field bg_search gt.HexColor
---@field bg_visual gt.HexColor
---@field bg_visual_selection gt.HexColor
---@field border gt.HexColor
---Cursor & LineNumber Colors
---@field cursor gt.HexColor
---@field cursor_line_nr gt.HexColor
---@field line_nr gt.HexColor
---LSP & Diagnostic Colors
---@field error gt.HexColor
---@field warning gt.HexColor
---@field info gt.HexColor
---@field hint gt.HexColor
---@field lsp gt.LspPalette
---DropDown Menu Colors
---@field pmenu gt.PMenuPalette
---Git Colors
---@field git gt.GitPalette
---Git-Diff Colors
---@field diff gt.DiffPalette
---Syntax Related Colors
---@field syntax gt.SyntaxPalette
---Terminal Colors
---@field orange gt.HexColor
---@field black gt.HexColor
---@field bright_black gt.HexColor
---@field white gt.HexColor
---@field bright_white gt.HexColor
---@field red gt.HexColor
---@field bright_red gt.HexColor
---@field green gt.HexColor
---@field bright_green gt.HexColor
---@field yellow gt.HexColor
---@field bright_yellow gt.HexColor
---@field blue gt.HexColor
---@field bright_blue gt.HexColor
---@field magenta gt.HexColor
---@field bright_magenta gt.HexColor
---@field cyan gt.HexColor
---@field bright_cyan gt.HexColor
---GitSign Plugin Colors
---@field git_signs gt.GitSignPalette

---@alias gt.ThemeStyle "'dark'" | "'dark_default'" | "'dimmed'" | "'light'" | "'light_default'"
gt.ThemeStyle = {}
gt.ThemeStyle.Dark = "dark"
gt.ThemeStyle.DarkDefault = "dark_default"
gt.ThemeStyle.Dimmed = "dimmed"
gt.ThemeStyle.Light = "light"
gt.ThemeStyle.LightDefault = "light_default"

return gt

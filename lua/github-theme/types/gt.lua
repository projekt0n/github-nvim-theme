local gt = {}

---@class gt.HexColor string

---@class gt.LspPalette
---@field public ref_txt gt.HexColor

---@class gt.PMenuPalette
---@field public bg gt.HexColor
---@field public sbar gt.HexColor

---@class gt.GitPalette
---@field public add gt.HexColor
---@field public change gt.HexColor
---@field public delete gt.HexColor
---@field public conflict gt.HexColor
---@field public ignore gt.HexColor
---@field public renamed gt.HexColor

---@class gt.DiffPalette
---@field public add gt.HexColor
---@field public add_fg gt.HexColor
---@field public change gt.HexColor
---@field public change_fg gt.HexColor
---@field public delete gt.HexColor
---@field public delete_fg gt.HexColor

---@class gt.SyntaxPalette
---@field public comment gt.HexColor
---@field public constant gt.HexColor
---@field public string gt.HexColor
---@field public variable gt.HexColor
---@field public keyword gt.HexColor
---@field public func gt.HexColor
---@field public func_param gt.HexColor
---@field public match_paren_bg gt.HexColor
---@field public tag gt.HexColor
---@field public html_arg gt.HexColor
---@field public param gt.HexColor
---@field public json_label gt.HexColor

---@class gt.GitSignPalette
---@field public add gt.HexColor
---@field public change gt.HexColor
---@field public delete gt.HexColor

---@class gt.Palette
---Background Colors
---@field public bg gt.HexColor
---@field public bg2 gt.HexColor
---Foreground Colors
---@field public fg gt.HexColor
---@field public fg_dark gt.HexColor
---@field public fg_gutter gt.HexColor
---@field public fg_light gt.HexColor
---@field public term_fg gt.HexColor
---Background Highlights Colors
---@field public bg_highlight gt.HexColor
---@field public bg_search gt.HexColor
---@field public bg_visual gt.HexColor
---@field public bg_visual_selection gt.HexColor
---@field public border gt.HexColor
---Cursor & LineNumber Colors
---@field public cursor gt.HexColor
---@field public cursor_line_nr gt.HexColor
---@field public line_nr gt.HexColor
---LSP & Diagnostic Colors
---@field public error gt.HexColor
---@field public warning gt.HexColor
---@field public info gt.HexColor
---@field public hint gt.HexColor
---@field public lsp gt.LspPalette
---DropDown Menu Colors
---@field public pmenu gt.PMenuPalette
---Git Colors
---@field public git gt.GitPalette
---Git-Diff Colors
---@field public diff gt.DiffPalette
---Syntax Related Colors
---@field public syntax gt.SyntaxPalette
---Terminal Colors
---@field public orange gt.HexColor
---@field public black gt.HexColor
---@field public bright_black gt.HexColor
---@field public white gt.HexColor
---@field public bright_white gt.HexColor
---@field public red gt.HexColor
---@field public bright_red gt.HexColor
---@field public green gt.HexColor
---@field public bright_green gt.HexColor
---@field public yellow gt.HexColor
---@field public bright_yellow gt.HexColor
---@field public blue gt.HexColor
---@field public bright_blue gt.HexColor
---@field public magenta gt.HexColor
---@field public bright_magenta gt.HexColor
---@field public cyan gt.HexColor
---@field public bright_cyan gt.HexColor
---GitSign Plugin Colors
---@field public git_signs gt.GitSignPalette

---@alias gt.ThemeStyle "'dark'" | "'dark_default'" | "'dimmed'" | "'light'" | "'light_default'"
gt.ThemeStyle = {}
gt.ThemeStyle.Dark = "dark"
gt.ThemeStyle.DarkDefault = "dark_default"
gt.ThemeStyle.Dimmed = "dimmed"
gt.ThemeStyle.Light = "light"
gt.ThemeStyle.LightDefault = "light_default"

---@alias gt.HighlightStyle "'NONE'" | "'bold'" | "'underline'" | "'undercurl'" | "'undercurl'" | "'inverse'" | "'italic'" | "'stanout'" | "'nocombine'" | "'strikethrough'"
gt.HighlightStyle = {}
gt.HighlightStyle.None = "NONE"
gt.HighlightStyle.Bold = "bold"
gt.HighlightStyle.Underline = "underline"
gt.HighlightStyle.Undercurl = "undercurl"
gt.HighlightStyle.Inverse = "inverse"
gt.HighlightStyle.Italic = "italic"
gt.HighlightStyle.Stanout = "stanout"
gt.HighlightStyle.NoCombine = "nocombine"
gt.HighlightStyle.Strikethrough = "strikethrough"

---@class gt.Highlight
---Foreground Color
---@field public fg gt.HexColor|nil
---Background Color
---@field public bg gt.HexColor|nil
---Style Color
---@field public sp gt.HexColor|nil
---Highlight Style
---@field public style gt.HighlightStyle|nil

---@class gt.LinkHighlight
---Existing Highlight
---@field public link string

---@class gt.HighlightGroup table<string, gt.Highlight|gt.LinkHighlight>

---@class gt.ConfigSchema
---@field public colors gt.Palette
---@field public comment_style gt.HighlightStyle
---@field public dark_float boolean
---@field public dark_sidebar boolean
---@field public dev boolean
---@field public function_style gt.HighlightStyle
---@field public hide_end_of_buffer boolean
---@field public hide_inactive_statusline boolean
---@field public keyword_style gt.HighlightStyle
---@field public msg_area_style gt.HighlightStyle
---@field public overrides gt.HighlightGroup
---@field public sidebars table<number, string>
---@field public theme_style gt.ThemeStyle
---@field public transform_colors boolean
---@field public transparent boolean
---@field public variable_style gt.HighlightStyle

return gt

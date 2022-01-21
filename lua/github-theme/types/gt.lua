---@diagnostic disable: duplicate-doc-class
local gt = {}

---@alias gt.ThemeStyle "'dark'" | "'dark_default'" | "'dark_colorblind'" | "'dimmed'" | "'light'" | "'light_default'" | " 'light_colorblind'"
gt.ThemeStyle = {}
gt.ThemeStyle.Dark = 'dark'
gt.ThemeStyle.DarkDefault = 'dark_default'
gt.ThemeStyle.DarkColorblind = 'dark_colorblind'
gt.ThemeStyle.Dimmed = 'dimmed'
gt.ThemeStyle.Light = 'light'
gt.ThemeStyle.LightDefault = 'light_default'
gt.ThemeStyle.LightColorblind = 'light_colorblind'

---@alias gt.HighlightStyle "'NONE'" | "'bold'" | "'underline'" | "'undercurl'" | "'undercurl'" | "'inverse'" | "'italic'" | "'stanout'" | "'nocombine'" | "'strikethrough'"
gt.HighlightStyle = {}
gt.HighlightStyle.None = 'NONE'
gt.HighlightStyle.Bold = 'bold'
gt.HighlightStyle.Underline = 'underline'
gt.HighlightStyle.Undercurl = 'undercurl'
gt.HighlightStyle.Inverse = 'inverse'
gt.HighlightStyle.Italic = 'italic'
gt.HighlightStyle.Stanout = 'stanout'
gt.HighlightStyle.NoCombine = 'nocombine'
gt.HighlightStyle.Strikethrough = 'strikethrough'

---@alias gt.TerminalConf "'conf'" | "'yml'" | "'itermcolors'" | "'colorscheme'" | "'tmux'"
gt.TerminalConf = {}
gt.TerminalConf.kitty = 'conf'
gt.TerminalConf.alacritty = 'yml'
gt.TerminalConf.iterm = 'itermcolors'
gt.TerminalConf.konsole = 'colorscheme'
gt.TerminalConf.tmux = 'tmux'

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

---@class gt.ConfigSchema
---@field public colors gt.ColorPalette
---@field public comment_style gt.HighlightStyle
---@field public dark_float boolean
---@field public dark_sidebar boolean
---@field public dev boolean
---@field public function_style gt.HighlightStyle
---@field public hide_end_of_buffer boolean
---@field public hide_inactive_statusline boolean
---@field public keyword_style gt.HighlightStyle
---@field public msg_area_style gt.HighlightStyle
---@field public overrides function(c: gt.ColorPalette): gt.Highlights
---@field public sidebars table<number, string>
---@field public theme_style gt.ThemeStyle
---@field public transparent boolean
---@field public variable_style gt.HighlightStyle

return gt

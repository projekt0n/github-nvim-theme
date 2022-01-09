local types = require('github-theme.types')

---@return gt.ConfigSchema
return {
  colors = {},
  comment_style = types.gt.HighlightStyle.Italic,
  dark_float = false,
  dark_sidebar = true,
  dev = false,
  function_style = types.gt.HighlightStyle.None,
  hide_end_of_buffer = true,
  hide_inactive_statusline = true,
  keyword_style = types.gt.HighlightStyle.Italic,
  msg_area_style = types.gt.HighlightStyle.None,
  overrides = function()
    return {}
  end,
  sidebars = {},
  theme_style = types.gt.ThemeStyle.Dark,
  transparent = false,
  variable_style = types.gt.HighlightStyle.None,
}

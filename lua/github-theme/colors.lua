local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or configModule.config

  local themes = function(options)
    return options[config.themeStyle]
  end

  -- Color Palette
  ---@class ColorScheme
  local colors = {
    none = "NONE",

    -- Core Colors
    fg_dark = themes({dark = "#666666", dimmed = "#636e7b", light = "#666666"}),
    term_fg = themes({dark = "#d1d5da", dimmed = "#768390", light = "#586069"}),

    orange = "#d18616",
    black = themes({dark = "#24292e", dimmed = "#22272e", light = "#697179"}),
    brightBlack = themes({dark = "#666666", dimmed = "#636e7b", light = "#666666"}),
    white = themes({dark = "#b1bac4", dimmed = "#909dab", light = "#e1e4e8"}),
    brightWhite = themes({dark = "#e5e5e5", dimmed = "#cdd9e5", light = "#a5a5a5"}),
    red = themes({dark = "#f14c4c", dimmed = "#ff938a", light = "#d03d3d"}),
    brightRed = themes({dark = "#f14c4c", dimmed = "#ff938a", light = "#cd3131"}),
    green = themes({dark = "#23d18b", dimmed = "#6bc46d", light = "#14ce14"}),
    brightGreen = themes({dark = "#23d18b", dimmed = "#6bc46d", light = "#14ce14"}),
    yellow = themes({dark = "#e2e210", dimmed = "#c69026", light = "#949800"}),
    brightYellow = themes({dark = "#f5f543", dimmed = "#daaa3f", light = "#b5ba00"}),
    blue = themes({dark = "#3b8eea", dimmed = "#6cb6ff", light = "#0451a5"}),
    brightBlue = themes({dark = "#3b8eea", dimmed = "#6cb6ff", light = "#0451a5"}),
    magenta = themes({dark = "#bc3fbc", dimmed = "#b083f0", light = "#bc05bc"}),
    brightMagenta = themes({dark = "#d670d6", dimmed = "#dcbdfb", light = "#bc05bc"}),
    cyan = themes({dark = "#29b7da", dimmed = "#56d4dd", light = "#0598BC"}),
    brightCyan = themes({dark = "#29b8db", dimmed = "#56d4dd", light = "#0598bc"}),

    bg = themes({dark = "#24292e", dimmed = "#22272e", light = "#ffffff"}),
    bg2 = themes({dark = "#1f2428", dimmed = "#1e2228", light = "#f6f8fa"}),
    bg_visual = themes({dark = "#1b1f23", dimmed = "#444C56", light = "#e1e4e8"}),
    bg_visual_selection = themes({dark = "#284566", dimmed = "#264466", light = "#dbe9f9"}),
    bg_highlight = themes({dark = "#2C313A", dimmed = "#2d333b", light = "#f6f8fa"}),

    fg = themes({dark = "#C9D1D9", dimmed = "#adbac7", light = "#24292e"}),
    fg_light = themes({dark = "#d1d5da", dimmed = "#adbac7", light = "#586069"}),
    fg_gutter = themes({dark = "#e1e4e8", dimmed = "#768390", light = "#babbbd"}),

    cursor = themes({dark = "#c8e1ff", dimmed = "#6cb6ff", light = "#044289"}),

    line_nr = themes({dark = "#444d56", dimmed = "#768390", light = "#babbbd"}),
    cursor_line_nr = themes({dark = "#e1e4e8", dimmed = "#adbac7", light = "#24292e"}),

    fg_search = "NONE",
    bg_search = themes({dark = "#404030", dimmed = "#3f3e30", light = "#fff2be"}),

    error = themes({dark = "#f97583", dimmed = "#e5534b", light = "#cb2431"}),
    warning = themes({dark = "#cca700", dimmed = "#cca700", light = "#bf8803"}),
    info = "#75beff",
    hint = themes({dark = "#eeeeb3", dimmed = "#eeeeb3", light = "#6c6c6c"}),

    lsp = {
      referenceText = themes({dark = "#265459", dimmed = "#28575d", light = "#c6eed2"})
    },

    syntax = {
      comment = themes({dark = "#6a737d", dimmed = "#768390", light = "#6a737d"}),
      constant = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5"}),
      commentConstant = themes({dark = "#b392f0", dimmed = "#f69d50", light = "#6f42c1"}),
      string = themes({dark = "#9ecbff", dimmed = "#96d0ff", light = "#032f62"}),
      variable = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5"}),
      keyword = themes({dark = "#f97583", dimmed = "#f47067", light = "#d73a49"}),
      func = themes({dark = "#b392f0", dimmed = "#dcbdfb", light = "#6f42c1"}),
      func_param = themes({dark = "#e1e4e8", dimmed = "#adbac7", light = "#24292e"}),
      matchParenBG = themes({dark = "#25686c", dimmed = "#266a70", light = "#c6eed2"}),
      tag = themes({dark = "#85e89d", dimmed = "#8ddb8c", light = "#22863a"}),
      htmlArg = themes({dark = "#fdaeb7", dimmed = "#ff938a", light = "#b31d28"}),
      param = themes({dark = "#ffab70", dimmed = "#f69d50", light = "#e36209"}),
      jsonLabel = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5"})
    },

    pmenu = {
      select = themes({dark = "#044289", dimmed = "#373e47", light = "#cce5ff"}),
      bg = themes({dark = "#1f2428", dimmed = "#323941", light = "#f6f8fa"}),
      sbar = themes({dark = "#32383e", dimmed = "#363b44", light = "#f0f1f3"})
    },

    git = {
      change = themes({dark = "#79b8ff", dimmed = "#daaa3f", light = "#005cc8"}),
      add = themes({dark = "#34d058", dimmed = "#6bc46d", light = "#28a745"}),
      delete = themes({dark = "#ea4a5a", dimmed = "#B34642", light = "#d73a49"}),
      conflict = themes({dark = "#ffab70", dimmed = "#daaa3f", light = "#e36209"}),
      ignore = themes({dark = "#6a737d", dimmed = "#545d68", light = "#959da5"})
    },

    diff = {
      add = themes({dark = "#244032", dimmed = "#293d34", light = "#e4f9e9"}),
      add_fg = themes({dark = "#56d364", dimmed = "#6bc46d", light = "#22863a"}),
      change = themes({dark = "#341a00", dimmed = "#452700", light = "#fff5b1"}),
      change_fg = themes({dark = "#e3b341", dimmed = "#daaa3f", light = "#b08800"}),
      delete = themes({dark = "#462c32", dimmed = "#432b30", light = "#fae5e7"}),
      delete_fg = themes({dark = "#f85149", dimmed = "#e5534b", light = "#cb2431"})
    },

    gitSigns = {
      change = themes({dark = "#2188ff", dimmed = "#966600", light = "#2188ff"}),
      add = themes({dark = "#28a745", dimmed = "#2b6a30", light = "#28a745"}),
      delete = themes({dark = "#ea4a5a", dimmed = "#ad2e2c", light = "#d73a49"})
    }

  }

  util.bg = colors.bg

  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = colors.blue
  colors.bg_statusline = colors.blue

  -- Popups always get a dark background
  colors.bg_popup = colors.bg2

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.darkSidebar and colors.bg2 or colors.bg
  colors.bg_sidebar = config.transparent and colors.none or colors.bg_sidebar
  colors.bg_float = config.darkFloat and colors.bg2 or colors.bg

  util.color_overrides(colors, config)

  return colors
end

return M

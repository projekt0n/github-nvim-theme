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

    -- Terminal Colors
    fg_dark = themes({dark = "#666666", dimmed = "#636e7b", light = "#666666", dark_default = "#4d5566"}),
    term_fg = themes({dark = "#d1d5da", dimmed = "#768390", light = "#586069", dark_default = "#b3b1ad"}),
    orange = "#d18616",
    black = themes({dark = "#24292e", dimmed = "#22272e", light = "#697179", dark_default = "#484f58"}),
    brightBlack = themes({dark = "#666666", dimmed = "#636e7b", light = "#666666", dark_default = "#6e7681"}),
    white = themes({dark = "#b1bac4", dimmed = "#909dab", light = "#e1e4e8", dark_default = "#b1bac4"}),
    brightWhite = themes({dark = "#e5e5e5", dimmed = "#cdd9e5", light = "#a5a5a5", dark_default = "#f0f6fc"}),
    red = themes({dark = "#f14c4c", dimmed = "#ff938a", light = "#d03d3d", dark_default = "#ff7b72"}),
    brightRed = themes({dark = "#f14c4c", dimmed = "#ff938a", light = "#cd3131", dark_default = "#ffa198"}),
    green = themes({dark = "#23d18b", dimmed = "#6bc46d", light = "#14ce14", dark_default = "#3fb950"}),
    brightGreen = themes({dark = "#23d18b", dimmed = "#6bc46d", light = "#14ce14", dark_default = "#56d364"}),
    yellow = themes({dark = "#e2e210", dimmed = "#c69026", light = "#949800", dark_default = "#d29922"}),
    brightYellow = themes({dark = "#f5f543", dimmed = "#daaa3f", light = "#b5ba00", dark_default = "#e3b341"}),
    blue = themes({dark = "#3b8eea", dimmed = "#6cb6ff", light = "#0451a5", dark_default = "#58a6ff"}),
    brightBlue = themes({dark = "#3b8eea", dimmed = "#6cb6ff", light = "#0451a5", dark_default = "#79c0ff"}),
    magenta = themes({dark = "#bc3fbc", dimmed = "#b083f0", light = "#bc05bc", dark_default = "#bc8cff"}),
    brightMagenta = themes({dark = "#d670d6", dimmed = "#dcbdfb", light = "#bc05bc", dark_default = "#d2a8ff"}),
    cyan = themes({dark = "#29b7da", dimmed = "#56d4dd", light = "#0598bc", dark_default = "#39c5cf"}),
    brightCyan = themes({dark = "#29b8db", dimmed = "#56d4dd", light = "#0598bc", dark_default = "#56d4dd"}),

    -- basic
    bg = themes({dark = "#24292e", dimmed = "#22272e", light = "#ffffff", dark_default = "#0d1117"}),
    bg2 = themes({dark = "#1f2428", dimmed = "#1e2228", light = "#f6f8fa", dark_default = "#090c10"}),
    bg_visual = themes({dark = "#444c56", dimmed = "#444c56", light = "#e1e4e8", dark_default = "#b3b1ad"}),
    bg_visual_selection = themes({dark = "#284566", dimmed = "#264466", light = "#dbe9f9", dark_default = "#163356"}),
    bg_highlight = themes({dark = "#2c313a", dimmed = "#2d333b", light = "#f6f8fa", dark_default = "#161b22"}),

    border = themes({dark = "#c9d1d9", dimmed = "#444c56", light = "#044289", dark_default = "#b3b1ad"}),

    fg = themes({dark = "#c9d1d9", dimmed = "#adbac7", light = "#24292e", dark_default = "#c9d1d9"}),
    fg_light = themes({dark = "#d1d5da", dimmed = "#adbac7", light = "#586069", dark_default = "#b3b1ad"}),
    fg_gutter = themes({dark = "#e1e4e8", dimmed = "#768390", light = "#babbbd", dark_default = "#c5c5c5"}),

    -- cursor
    cursor = themes({dark = "#c8e1ff", dimmed = "#6cb6ff", light = "#044289", dark_default = "#73b7f2"}),

    line_nr = themes({dark = "#444d56", dimmed = "#768390", light = "#babbbd", dark_default = "#8b949e"}),
    cursor_line_nr = themes({dark = "#e1e4e8", dimmed = "#adbac7", light = "#24292e", dark_default = "#c9d1d9"}),

    bg_search = themes({dark = "#404030", dimmed = "#3f3e30", light = "#fff2be", dark_default = "#2c2b1c"}),

    -- lsp
    error = themes({dark = "#f97583", dimmed = "#e5534b", light = "#cb2431", dark_default = "#f85149"}),
    warning = themes({dark = "#cca700", dimmed = "#cca700", light = "#bf8803", dark_default = "#f0883e"}),
    info = "#75beff",
    hint = themes({dark = "#eeeeb3", dimmed = "#eeeeb3", light = "#6c6c6c", dark_default = "#eeeeb3"}),

    lsp = {referenceText = themes({dark = "#265459", dimmed = "#28575d", light = "#c6eed2", dark_default = "#164449"})},

    syntax = {
      comment = themes({dark = "#6a737d", dimmed = "#768390", light = "#6a737d", dark_default = "#8b949e"}),
      constant = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5", dark_default = "#79c0ff"}),
      string = themes({dark = "#9ecbff", dimmed = "#96d0ff", light = "#032f62", dark_default = "#A5D6FF"}),
      variable = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5", dark_default = "#FFA657"}),
      keyword = themes({dark = "#f97583", dimmed = "#f47067", light = "#d73a49", dark_default = "#ff7b72"}),
      func = themes({dark = "#b392f0", dimmed = "#dcbdfb", light = "#6f42c1", dark_default = "#d2a8ff"}),
      func_param = themes({dark = "#e1e4e8", dimmed = "#adbac7", light = "#24292e", dark_default = "#c9d1d9"}),
      match_paren_bg = themes({dark = "#25686c", dimmed = "#266a70", light = "#c6eed2", dark_default = "#105357"}),
      tag = themes({dark = "#85e89d", dimmed = "#8ddb8c", light = "#22863a", dark_default = "#7ee787"}),
      html_arg = themes({dark = "#fdaeb7", dimmed = "#ff938a", light = "#b31d28", dark_default = "#ff7b72"}),
      param = themes({dark = "#ffab70", dimmed = "#f69d50", light = "#e36209", dark_default = "#ffa657"}),
      json_label = themes({dark = "#79b8ff", dimmed = "#6cb6ff", light = "#005cc5", dark_default = "#79c0ff"})
    },

    -- auto complication
    pmenu = {
      select = themes({dark = "#044289", dimmed = "#373e47", light = "#cce5ff", dark_default = "#39414a"}),
      bg = themes({dark = "#1f2428", dimmed = "#323941", light = "#f6f8fa", dark_default = "#1c2128"}),
      sbar = themes({dark = "#32383e", dimmed = "#363b44", light = "#f0f1f3", dark_default = "#31373d"})
    },

    git = {
      change = themes({dark = "#79b8ff", dimmed = "#daaa3f", light = "#005cc8", dark_default = "#ac8934"}),
      add = themes({dark = "#34d058", dimmed = "#6bc46d", light = "#28a745", dark_default = "#56d364"}),
      delete = themes({dark = "#ea4a5a", dimmed = "#b34642", light = "#d73a49", dark_default = "#f85149"}),
      conflict = themes({dark = "#ffab70", dimmed = "#daaa3f", light = "#e36209", dark_default = "#e3b341"}),
      ignore = themes({dark = "#6a737d", dimmed = "#545d68", light = "#959da5", dark_default = "#484f58"})
    },

    diff = {
      add = themes({dark = "#244032", dimmed = "#293d34", light = "#e4f9e9", dark_default = "#c9d1d9"}),
      add_fg = themes({dark = "#56d364", dimmed = "#6bc46d", light = "#22863a", dark_default = "#1f4b2d"}),
      change = themes({dark = "#341a00", dimmed = "#452700", light = "#fff5b1", dark_default = "#9e6a03"}),
      change_fg = themes({dark = "#e3b341", dimmed = "#daaa3f", light = "#b08800", dark_default = "#e3b341"}),
      delete = themes({dark = "#462c32", dimmed = "#432b30", light = "#fae5e7", dark_default = "#b3b1ad"}),
      delete_fg = themes({dark = "#f85149", dimmed = "#e5534b", light = "#cb2431", dark_default = "#f85149"})
    },

    gitSigns = {
      change = themes({dark = "#2188ff", dimmed = "#966600", light = "#2188ff", dark_default = "#9e6a03"}),
      add = themes({dark = "#28a745", dimmed = "#2b6a30", light = "#28a745", dark_default = "#196c2e"}),
      delete = themes({dark = "#ea4a5a", dimmed = "#ad2e2c", light = "#d73a49", dark_default = "#b62324"})
    },

    devIcons = {
      c = "#519aba",
      clojure = "#8dc149",
      coffeescript = "#cbcb41",
      csharp = "#519aba",
      css = "#519aba",
      markdown = "#519aba",
      go = "#519aba",
      html = "#e37933",
      java = "#cc3e44",
      javascript = "#cbcb41",
      json = "#cbcb41",
      less = "#519aba",
      make = "#e37933",
      mustache = "#e37933",
      php = "#a074c4",
      python = "#4e93b3",
      ruby_on_rails = "#cc3e44",
      ruby = "#cc3e44",
      sass = "#f55385",
      scss = "#f55385",
      shellscipt = "#4d5a5e",
      sql = "#f55385",
      typescript = "#519aba",
      xml = "#e37933",
      yml = "#a074c4"
    }

  }

  -- EndOfBuffer colors are configurable
  colors.sidebar_eob = config.darkSidebar and colors.bg2 or colors.bg
  colors.sidebar_eob = config.hideEndOfBuffer and colors.sidebar_eob or colors.fg_light
  colors.eob = config.hideEndOfBuffer and colors.bg or colors.fg_light

  util.bg = colors.bg
  colors.bg = config.transparent and colors.none or colors.bg

  colors.fg_search = colors.none
  colors.border_highlight = colors.blue
  colors.bg_statusline = colors.blue

  -- Folded colors are configurable
  colors.fg_folded = colors.fg
  colors.bg_folded = colors.bg_visual_selection

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

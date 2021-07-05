local configModule = require("github.config")

local config = configModule.config
config.themeStyle = configModule.getThemeStyle()

local colors = require("github.colors").setup(config)

return {
  normal = {
    a = {bg = colors.blue, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.blue},
    c = {bg = colors.bg_statusline, fg = colors.fg_light}
  },
  insert = {
    a = {bg = colors.green, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.green}
  },
  command = {
    a = {bg = colors.purple, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.purple}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.yellow}
  },
  replace = {
    a = {bg = colors.red, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.red}
  },
  inactive = {
    a = {bg = colors.bg_statusline, fg = colors.green},
    b = {bg = colors.bg_statusline, fg = colors.bg2, gui = "bold"},
    c = {bg = colors.bg_statusline, fg = colors.bg2}
  }
}

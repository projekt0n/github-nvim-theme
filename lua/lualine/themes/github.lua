local configModule = require("github-theme.config")

local config = configModule.config
local colors = require("github-theme.colors").setup(config)

return {
  normal = {
    a = {bg = colors.blue, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.blue},
    c = {bg = colors.bg, fg = colors.fg_light}
  },
  insert = {
    a = {bg = colors.green, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.green}
  },
  command = {
    a = {bg = colors.magenta, fg = colors.bg},
    b = {bg = colors.bg2, fg = colors.magenta}
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

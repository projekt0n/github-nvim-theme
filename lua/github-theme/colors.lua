local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or configModule.config

  local themes = function(options)
    return options[config.theme_style]
  end

  -- Color Palette
  ---@class ColorScheme
  local colors = {
    none = "NONE",

    -- Terminal Colors
    fg_dark = themes({
      dark = "#666666",
      dimmed = "#636e7b",
      light = "#666666",
      dark_default = "#4d5566",
      light_default = "#424242"
    }),
    term_fg = themes({
      dark = "#d1d5da",
      dimmed = "#768390",
      light = "#586069",
      dark_default = "#b3b1ad",
      light_default = "#4d5566"
    }),
    orange = "#d18616",
    black = themes({
      dark = "#24292e",
      dimmed = "#22272e",
      light = "#697179",
      dark_default = "#484f58",
      light_default = "#24292e"
    }),
    brightBlack = themes({
      dark = "#666666",
      dimmed = "#636e7b",
      light = "#666666",
      dark_default = "#6e7681",
      light_default = "#586069"
    }),
    white = themes({
      dark = "#b1bac4",
      dimmed = "#909dab",
      light = "#e1e4e8",
      dark_default = "#b1bac4",
      light_default = "#6a737d"
    }),
    brightWhite = themes({
      dark = "#e5e5e5",
      dimmed = "#cdd9e5",
      light = "#a5a5a5",
      dark_default = "#f0f6fc",
      light_default = "#959da5"
    }),
    red = themes({
      dark = "#f14c4c",
      dimmed = "#ff938a",
      light = "#d03d3d",
      dark_default = "#ff7b72",
      light_default = "#d73a49"
    }),
    brightRed = themes({
      dark = "#f14c4c",
      dimmed = "#ff938a",
      light = "#cd3131",
      dark_default = "#ffa198",
      light_default = "#cb2431"
    }),
    green = themes({
      dark = "#23d18b",
      dimmed = "#6bc46d",
      light = "#14ce14",
      dark_default = "#3fb950",
      light_default = "#22863a"
    }),
    brightGreen = themes({
      dark = "#23d18b",
      dimmed = "#6bc46d",
      light = "#14ce14",
      dark_default = "#56d364",
      light_default = "#28a745"
    }),
    yellow = themes({
      dark = "#e2e210",
      dimmed = "#c69026",
      light = "#949800",
      dark_default = "#d29922",
      light_default = "#b08800"
    }),
    brightYellow = themes({
      dark = "#f5f543",
      dimmed = "#daaa3f",
      light = "#b5ba00",
      dark_default = "#e3b341",
      light_default = "#dbab09"
    }),
    blue = themes({
      dark = "#3b8eea",
      dimmed = "#6cb6ff",
      light = "#0451a5",
      dark_default = "#58a6ff",
      light_default = "#0366d6"
    }),
    brightBlue = themes({
      dark = "#3b8eea",
      dimmed = "#6cb6ff",
      light = "#0451a5",
      dark_default = "#79c0ff",
      light_default = "#2188ff"
    }),
    magenta = themes({
      dark = "#bc3fbc",
      dimmed = "#b083f0",
      light = "#bc05bc",
      dark_default = "#bc8cff",
      light_default = "#6f42c1"
    }),
    brightMagenta = themes({
      dark = "#d670d6",
      dimmed = "#dcbdfb",
      light = "#bc05bc",
      dark_default = "#d2a8ff",
      light_default = "#8a63d2"
    }),
    cyan = themes({
      dark = "#29b7da",
      dimmed = "#56d4dd",
      light = "#0598bc",
      dark_default = "#39c5cf",
      light_default = "#1b7c83"
    }),
    brightCyan = themes({
      dark = "#29b8db",
      dimmed = "#56d4dd",
      light = "#0598bc",
      dark_default = "#56d4dd",
      light_default = "#3192aa"
    }),

    -- basic
    bg = themes({
      dark = "#24292e",
      dimmed = "#22272e",
      light = "#ffffff",
      dark_default = "#0d1117",
      light_default = "#ffffff"
    }),
    bg2 = themes({
      dark = "#1f2428",
      dimmed = "#1e2228",
      light = "#f6f8fa",
      dark_default = "#090c10",
      light_default = "#f6f8fa"
    }),

    bg_visual = themes({
      dark = "#444c56",
      dimmed = "#444c56",
      light = "#e1e4e8",
      dark_default = "#b3b1ad",
      light_default = "#e1e4e8"
    }),
    bg_visual_selection = themes({
      dark = "#284566",
      dimmed = "#264466",
      light = "#dbe9f9",
      dark_default = "#163356",
      light_default = "#dbe9f9"
    }),
    bg_highlight = themes({
      dark = "#2c313a",
      dimmed = "#2d333b",
      light = "#f6f8fa",
      dark_default = "#161b22",
      light_default = "#fafbfc"
    }),

    border = themes({
      dark = "#c9d1d9",
      dimmed = "#444c56",
      light = "#044289",
      dark_default = "#b3b1ad",
      light_default = "#044289"
    }),

    fg = themes({
      dark = "#c9d1d9",
      dimmed = "#adbac7",
      light = "#24292e",
      dark_default = "#c9d1d9",
      light_default = "#24292e"
    }),

    fg_light = themes({
      dark = "#d1d5da",
      dimmed = "#adbac7",
      light = "#586069",
      dark_default = "#b3b1ad",
      light_default = "#24292e"
    }),
    fg_gutter = themes({
      dark = "#e1e4e8",
      dimmed = "#768390",
      light = "#babbbd",
      dark_default = "#c5c5c5",
      light_default = "#24292e"
    }),

    -- cursor
    cursor = themes({
      dark = "#c8e1ff",
      dimmed = "#6cb6ff",
      light = "#044289",
      dark_default = "#73b7f2",
      light_default = "#044289"
    }),

    line_nr = themes({
      dark = "#444d56",
      dimmed = "#768390",
      light = "#babbbd",
      dark_default = "#8b949e",
      light_default = "#959da5"
    }),
    cursor_line_nr = themes({
      dark = "#e1e4e8",
      dimmed = "#adbac7",
      light = "#24292e",
      dark_default = "#c9d1d9",
      light_default = "#24292e"
    }),

    bg_search = themes({
      dark = "#404030",
      dimmed = "#3f3e30",
      light = "#fff2be",
      dark_default = "#2c2b1c",
      light_default = "#fff2be"
    }),

    -- lsp
    error = themes({
      dark = "#f97583",
      dimmed = "#e5534b",
      light = "#cb2431",
      dark_default = "#f85149",
      light_default = "#cb2431"
    }),
    warning = themes({
      dark = "#cca700",
      dimmed = "#cca700",
      light = "#bf8803",
      dark_default = "#f0883e",
      light_default = "#bf8803"
    }),
    info = "#75beff",
    hint = themes({
      dark = "#eeeeb3",
      dimmed = "#eeeeb3",
      light = "#6c6c6c",
      dark_default = "#eeeeb3",
      light_default = "#6c6c6c"
    }),

    lsp = {
      referenceText = themes({
        dark = "#265459",
        dimmed = "#28575d",
        light = "#c6eed2",
        dark_default = "#164449",
        light_default = "#ccf3d5"
      })
    },

    syntax = {
      comment = themes({
        dark = "#6a737d",
        dimmed = "#768390",
        light = "#6a737d",
        dark_default = "#8b949e",
        light_default = "#6a737d"
      }),
      constant = themes({
        dark = "#79b8ff",
        dimmed = "#6cb6ff",
        light = "#005cc5",
        dark_default = "#79c0ff",
        light_default = "#005cc5"
      }),
      string = themes({
        dark = "#9ecbff",
        dimmed = "#96d0ff",
        light = "#032f62",
        dark_default = "#A5D6FF",
        light_default = "#032f62"
      }),
      variable = themes({
        dark = "#79b8ff",
        dimmed = "#6cb6ff",
        light = "#005cc5",
        dark_default = "#FFA657",
        light_default = "#e36209"
      }),
      keyword = themes({
        dark = "#f97583",
        dimmed = "#f47067",
        light = "#d73a49",
        dark_default = "#ff7b72",
        light_default = "#d73a49"
      }),
      func = themes({
        dark = "#b392f0",
        dimmed = "#dcbdfb",
        light = "#6f42c1",
        dark_default = "#d2a8ff",
        light_default = "#6f42c1"
      }),
      func_param = themes({
        dark = "#e1e4e8",
        dimmed = "#adbac7",
        light = "#24292e",
        dark_default = "#c9d1d9",
        light_default = "#24292e"
      }),
      match_paren_bg = themes({
        dark = "#25686c",
        dimmed = "#266a70",
        light = "#c6eed2",
        dark_default = "#105357",
        light_default = "#ccf3d5"
      }),
      tag = themes({
        dark = "#85e89d",
        dimmed = "#8ddb8c",
        light = "#22863a",
        dark_default = "#7ee787",
        light_default = "#22863a"
      }),
      html_arg = themes({
        dark = "#fdaeb7",
        dimmed = "#ff938a",
        light = "#b31d28",
        dark_default = "#ff7b72",
        light_default = "#b31d28"
      }),
      param = themes({
        dark = "#ffab70",
        dimmed = "#f69d50",
        light = "#e36209",
        dark_default = "#ffa657",
        light_default = "#e36209"
      }),
      json_label = themes({
        dark = "#79b8ff",
        dimmed = "#6cb6ff",
        light = "#005cc5",
        dark_default = "#79c0ff",
        light_default = "#005cc5"
      })
    },

    -- auto complication
    pmenu = {
      bg = themes({
        dark = "#1f2428",
        dimmed = "#323941",
        light = "#f6f8fa",
        dark_default = "#1c2128",
        light_default = "#fafbfc"
      }),
      select = themes({
        dark = "#044289",
        dimmed = "#373e47",
        light = "#cce5ff",
        dark_default = "#39414a",
        light_default = "#e2e5e9"
      }),
      sbar = themes({
        dark = "#32383e",
        dimmed = "#363b44",
        light = "#f0f1f3",
        dark_default = "#31373d",
        light_default = "#e7e9eb"
      })
    },

    git = {
      add = themes({
        dark = "#34d058",
        dimmed = "#6bc46d",
        light = "#28a745",
        dark_default = "#56d364",
        light_default = "#22863a"
      }),
      change = themes({
        dark = "#79b8ff",
        dimmed = "#daaa3f",
        light = "#005cc8",
        dark_default = "#ac8934",
        light_default = "#b08800"
      }),
      delete = themes({
        dark = "#ea4a5a",
        dimmed = "#b34642",
        light = "#d73a49",
        dark_default = "#f85149",
        light_default = "#cb2431"
      }),
      conflict = themes({
        dark = "#ffab70",
        dimmed = "#daaa3f",
        light = "#e36209",
        dark_default = "#e3b341",
        light_default = "#b08800"
      }),
      ignore = themes({
        dark = "#6a737d",
        dimmed = "#545d68",
        light = "#959da5",
        dark_default = "#484f58",
        light_default = "#959da5"
      })
    },

    diff = {
      add = themes({
        dark = "#244032",
        dimmed = "#293d34",
        light = "#d4f8db",
        dark_default = "#244032",
        light_default = "#d4f8db"
      }),
      add_fg = themes({
        dark = "#56d364",
        dimmed = "#6bc46d",
        light = "#22863a",
        dark_default = "#56d364",
        light_default = "#22863a"
      }),
      change = themes({
        dark = "#341a00",
        dimmed = "#452700",
        light = "#fff5b1",
        dark_default = "#341a00",
        light_default = "#fff5b1"
      }),
      change_fg = themes({
        dark = "#e3b341",
        dimmed = "#daaa3f",
        light = "#b08800",
        dark_default = "#e3b341",
        light_default = "#b08800"
      }),
      delete = themes({
        dark = "#462c32",
        dimmed = "#432b30",
        light = "#fae5e7",
        dark_default = "#462c32",
        light_default = "#fae5e7"
      }),
      delete_fg = themes({
        dark = "#f85149",
        dimmed = "#e5534b",
        light = "#cb2431",
        dark_default = "#f85149",
        light_default = "#cb2431"
      })
    },

    git_signs = {
      add = themes({
        dark = "#28a745",
        dimmed = "#2b6a30",
        light = "#28a745",
        dark_default = "#196c2e",
        light_default = "#34d058"
      }),
      change = themes({
        dark = "#2188ff",
        dimmed = "#966600",
        light = "#2188ff",
        dark_default = "#9e6a03",
        light_default = "#f9c513"
      }),
      delete = themes({
        dark = "#ea4a5a",
        dimmed = "#ad2e2c",
        light = "#d73a49",
        dark_default = "#b62324",
        light_default = "#d73a49"
      })
    },

    dev_icons = {
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

  util.bg = colors.bg

  -- lualine colors are configurable
  colors.lualine = {
    normal = {
      a = {bg = colors.blue, fg = colors.bg},
      b = {bg = colors.bg2, fg = colors.blue},
      c = {bg = colors.bg, fg = colors.fg_light}
    },
    insert = {a = {bg = colors.green, fg = colors.bg}, b = {bg = colors.bg2, fg = colors.green}},
    command = {a = {bg = colors.magenta, fg = colors.bg}, b = {bg = colors.bg2, fg = colors.magenta}},
    visual = {a = {bg = colors.yellow, fg = colors.bg}, b = {bg = colors.bg2, fg = colors.yellow}},
    replace = {a = {bg = colors.red, fg = colors.bg}, b = {bg = colors.bg2, fg = colors.red}},
    inactive = {
      a = {bg = colors.bg_statusline, fg = colors.green},
      b = {bg = colors.bg_statusline, fg = colors.bg2, gui = "bold"},
      c = {bg = colors.bg_statusline, fg = colors.bg2}
    }
  }

  -- EndOfBuffer colors are configurable
  colors.sidebar_eob = config.dark_sidebar and colors.bg2 or colors.bg
  colors.sidebar_eob = config.hide_end_of_buffer and colors.sidebar_eob or colors.fg_light
  colors.eob = config.hide_end_of_buffer and colors.bg or colors.fg_light

  colors.fg_search = colors.none
  colors.border_highlight = colors.blue
  colors.bg_statusline = colors.blue

  -- Folded colors are configurable
  colors.fg_folded = colors.fg
  colors.bg_folded = colors.bg_visual_selection

  -- Popups always get a dark background
  colors.bg_popup = colors.bg2

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.dark_sidebar and colors.bg2 or colors.bg
  colors.bg_sidebar = config.transparent and colors.none or colors.bg_sidebar
  colors.bg_float = config.dark_float and colors.bg2 or colors.bg

  util.color_overrides(colors, config)

  return colors
end

return M

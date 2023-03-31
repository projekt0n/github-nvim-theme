local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark_high_contrast',
  light = false,
}

---Github Dark High Contrast scale variables
---source: https://github.com/primer/primitives/blob/main/data/colors/themes/dark_high_contrast.ts
-- stylua: ignore
local scale = {
  black= '#010409',
  white= '#ffffff',
  gray= {
    '#ffffff', '#f0f3f6', '#d9dee3', '#bdc4cc', '#9ea7b3',
    '#7a828e', '#525964', '#272b33', '#272b33', '#0a0c10'
  },
  blue= {
    '#caeaff', '#addcff', '#91cbff', '#71b7ff', '#409eff',
    '#409eff', '#318bf8', '#2672f3', '#1e60d5', '#194fb1'
  },
  green= {
    '#acf7b6', '#72f088', '#4ae168', '#26cd4d', '#09b43a',
    '#09b43a', '#02a232', '#008c2c', '#007728', '#006222'
  },
  yellow= {
    '#fbe59e', '#fbd669', '#f7c843', '#f0b72f', '#e09b13',
    '#e09b13', '#c88508', '#ae7104', '#945d02', '#7b4900'
  },
  orange= {
    '#ffe1b4', '#ffcf86', '#ffb757', '#fe9a2d', '#e7811d',
    '#e7811d', '#d57014', '#bf5e0a', '#a74c00', '#8f3c00'
  },
  red= {
    '#ffdedb', '#ffc9c7', '#ffb1af', '#ff9492', '#ff6a69',
    '#ff6a69', '#ff4445', '#e82a2f', '#cc1421', '#ad0116'
  },
  purple= {
    '#f0dfff', '#e6ccff', '#dbb7ff', '#cb9eff', '#b780ff',
    '#b87fff', '#a66bff', '#954ffd', '#8031f7', '#6921d7'
  },
  pink= {
    '#ffdceb', '#ffc7e1', '#ffadd4', '#ff8dc7', '#ef6eb1',
    '#ef6eb1', '#e456a3', '#d23d91', '#b72c7d', '#9c1d6a'
  },
  coral= {
    '#ffded4', '#ffcbb9', '#ffb39b', '#ff967d', '#fc704f',
    '#fc704f', '#f75133', '#e03b21', '#c62612', '#a91500'
  }
}

local function alpha(color, a)
  local bg = scale.gray[10]
  return C(bg):blend(color, a)
end

local palette = {
  scale = scale,

  orange = scale.orange[4],

  black = { base = scale.gray[10], bright = scale.gray[9] },
  gray = { base = scale.gray[5], bright = scale.gray[5] },
  blue = { base = scale.blue[4], bright = scale.blue[3] },
  green = { base = scale.green[4], bright = scale.green[3] },
  magenta = { base = scale.purple[4], bright = scale.purple[3] },
  pink = { base = scale.pink[4], bright = scale.pink[3] },
  red = { base = scale.red[4], bright = scale.red[3] },
  white = { base = scale.gray[3], bright = scale.gray[3] },
  yellow = { base = scale.yellow[4], bright = scale.yellow[3] },
  cyan = { base = '#76e3ea', bright = '#b3f0ff' },

  fg = {
    default = scale.gray[2],
    muted = scale.gray[3],
    subtle = scale.gray[5],
    on_emphasis = scale.gray[10],
  },

  canvas = {
    default = scale.gray[10],
    overlay = scale.gray[9],
    inset = scale.black,
    subtle = scale.gray[9],
  },

  border = {
    default = scale.gray[6],
    muted = scale.gray[6],
    subtle = scale.gray[6],
  },

  neutral = {
    emphasis = scale.gray[5],
    emphasis_plus = scale.gray[5],
    muted = alpha(C.from_rgba(110, 118, 129, 1), 0.4),
    subtle = alpha(C.from_rgba(110, 118, 129, 1), 0.1),
  },

  accent = {
    fg = scale.blue[5],
    emphasis = scale.blue[6],
    muted = alpha(C.from_rgba(56, 139, 253, 1), 0.4),
    subtle = alpha(C.from_rgba(56, 139, 253, 1), 0.15),
  },

  success = {
    fg = scale.green[5],
    emphasis = scale.green[6],
    muted = alpha(C.from_rgba(46, 160, 67, 1), 0.4),
    subtle = alpha(C.from_rgba(46, 160, 67, 1), 0.15),
  },

  attention = {
    fg = scale.yellow[5],
    emphasis = scale.yellow[6],
    muted = alpha(C.from_rgba(187, 128, 9, 1), 0.4),
    subtle = alpha(C.from_rgba(187, 128, 9, 1), 0.15),
  },

  severe = {
    fg = scale.orange[5],
    emphasis = scale.orange[6],
    muted = alpha(C.from_rgba(219, 109, 40, 1), 0.4),
    subtle = alpha(C.from_rgba(219, 109, 40, 1), 0.15),
  },

  danger = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = alpha(C.from_rgba(248, 81, 73, 1), 0.4),
    subtle = alpha(C.from_rgba(248, 81, 73, 1), 0.15),
  },

  open = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = alpha(C.from_rgba(46, 160, 67, 1), 0.4),
    subtle = alpha(C.from_rgba(46, 160, 67, 1), 0.15),
  },

  done = {
    fg = scale.purple[5],
    emphasis = scale.purple[6],
    muted = alpha(C.from_rgba(163, 113, 247, 1), 0.4),
    subtle = alpha(C.from_rgba(163, 113, 247, 1), 0.15),
  },

  closed = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = alpha(C.from_rgba(248, 81, 73, 1), 0.4),
    subtle = alpha(C.from_rgba(248, 81, 73, 1), 0.15),
  },

  sponsors = {
    fg = scale.pink[5],
    emphasis = scale.pink[6],
    muted = alpha(C.from_rgba(219, 97, 162, 1), 0.4),
    subtle = alpha(C.from_rgba(219, 97, 162, 1), 0.15),
  },
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.canvas.inset,                        -- Dark bg (status line, popup and float)
    bg1  = pal.canvas.default,                      -- Default bg
    bg2  = alpha(C(pal.neutral.emphasis), 0.1),     -- Lighter bg (colorcolumn Folds)
    bg3  = pal.sacle.gray[7],                       -- Lighter bg (cursor line)
    bg4  = pal.border.default,                      -- Conceal, border fg

    fg0  = pal.fg.subtle,                           -- Lighter fg
    fg1  = pal.fg.default,                          -- Default fg
    fg2  = pal.fg.muted,                            -- Darker fg (status line)
    fg3  = pal.scale.gray[7],                       -- Darker fg (line numbers, fold columns)

    sel0 = alpha(C(pal.accent.fg), 0.2),            -- Visual selection bg
    sel1 = pal.accent.subtle,                       -- Popup sel bg
    sel2 = pal.attention.emphasis                   -- Search bg
  }

  spec.syntax = {
    bracket     = alpha(pal.scale.green[4], 0.25),      -- Brackets and Punctuation
    builtin0    = pal.scale.orange[3],                  -- Builtin variable                  ( light-> orange[7] )
    builtin1    = pal.scale.red[4],                     -- Builtin type                      ( light-> red[6] )
    builtin2    = pal.scale.blue[3],                    -- Builtin const                     ( light-> blue[7] )
    comment     = pal.scale.gray[4],                    -- Comment                           ( light-> gray[6] )
    conditional = pal.scale.red[4],                     -- Conditional and loop              ( light-> red[6] )
    const       = pal.scale.blue[3],                    -- Constants, imports and booleans   ( light-> blue[7] )
    dep         = pal.scale.red[3],                     -- Deprecated                        ( light-> red[8] )
    field       = spec.fg1,                             -- Field
    func        = pal.scale.purple[3],                  -- Functions and Titles              ( light-> purple[6] )
    ident       = pal.scale.blue[3],                    -- Identifiers                       ( light -> blue[7] )
    keyword     = pal.scale.red[4],                     -- Keywords                          ( light -> red[6] )
    -- number      = pal.orange.base,                      -- Numbers
    operator     = pal.scale.red[4],                    -- Operators                         ( light -> red[6] )
    preproc     = pal.fg.default,                       -- PreProc
    regex       = pal.sacle.blue[3],                    -- Regex                             ( light -> blue[9] )
    statement   = pal.scale.red[4],                     -- Statements                        ( light -> red[6] )
    string      = pal.scale.blue[2],                    -- Strings                           ( light -> blue[9] )
    type        = pal.scale.red[4],                     -- Types                             ( light -> red[6] )
    variable    = pal.scale.orange[3],                  -- Variables                         ( light -> orange[7] )
  }

  -- stylua: ignore end
  return spec
end

return { meta, palette, generate_spec }

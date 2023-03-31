local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark_dimmed',
  light = false,
}

---Github Dark Dimmed scale variables
---source: https://github.com/primer/primitives/blob/main/data/colors/themes/dark_dimmed.ts
-- stylua: ignore
local scale = {
  black = '#1c2128',
  white = '#cdd9e5',
  gray = {
    '#cdd9e5', '#adbac7', '#909dab', '#768390', '#636e7b',
    '#545d68', '#444c56', '#373e47', '#2d333b', '#22272e',
  },
  blue = {
    '#c6e6ff', '#96d0ff', '#6cb6ff', '#539bf5', '#4184e4',
    '#316dca', '#255ab2', '#1b4b91', '#143d79', '#0f2d5c',
  },
  green = {
    '#b4f1b4', '#8ddb8c', '#6bc46d', '#57ab5a', '#46954a',
    '#347d39', '#2b6a30', '#245829', '#1b4721', '#113417',
  },
  yellow = {
    '#fbe090', '#eac55f', '#daaa3f', '#c69026', '#ae7c14',
    '#966600', '#805400', '#6c4400', '#593600', '#452700',
  },
  orange = {
    '#ffddb0', '#ffbc6f', '#f69d50', '#e0823d', '#cc6b2c',
    '#ae5622', '#94471b', '#7f3913', '#682d0f', '#4d210c',
  },
  red = {
    '#ffd8d3', '#ffb8b0', '#ff938a', '#f47067', '#e5534b',
    '#c93c37', '#ad2e2c', '#922323', '#78191b', '#5d0f12',
  },
  purple = {
    '#eedcff', '#dcbdfb', '#dcbdfb', '#b083f0', '#986ee2',
    '#8256d0', '#6b44bc', '#5936a2', '#472c82', '#352160',
  },
  pink = {
    '#ffd7eb', '#ffb3d8', '#fc8dc7', '#e275ad', '#c96198',
    '#ae4c82', '#983b6e', '#7e325a', '#69264a', '#551639',
  },
  coral = {
    '#ffdacf', '#ffb9a5', '#f79981', '#ec775c', '#de5b41',
    '#c2442d', '#a93524', '#8d291b', '#771d13', '#5d1008',
  },
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
    muted = scale.gray[4],
    subtle = scale.gray[5],
    on_emphasis = scale.white,
  },

  canvas = {
    default = scale.gray[10],
    overlay = scale.gray[9],
    inset = scale.black,
    subtle = scale.gray[9],
  },

  border = {
    default = scale.gray[7],
    muted = scale.gray[8],
    subtle = alpha(C.from_rgba(240, 246, 252, 1), 0.1),
  },

  neutral = {
    emphasis_plus = scale.gray[5],
    emphasis = scale.gray[5],
    muted = alpha(C.from_rgba(110, 118, 129, 1), 0.4),
    subtle = alpha(C.from_rgba(110, 118, 129, 1), 0.1),
  },

  accent = {
    fg = scale.blue[4],
    emphasis = scale.blue[6],
    muted = alpha(C.from_rgba(56, 139, 253, 1), 0.4),
    subtle = alpha(C.from_rgba(56, 139, 253, 1), 0.15),
  },

  success = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = alpha(C.from_rgba(46, 160, 67, 1), 0.4),
    subtle = alpha(C.from_rgba(46, 160, 67, 1), 0.15),
  },

  attention = {
    fg = scale.yellow[4],
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

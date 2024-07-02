local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark',
  light = false,
}

local primitives =
  require('github-theme.palette.primitives.' .. meta.name:gsub('^github%W*', '', 1))

local pl = primitives.color.prettylights
local scale = primitives.scale

C.WHITE = C(scale.white)
C.BLACK = C(scale.black)
C.BG = C(scale.neutral[7])
local BG = C(scale.neutral[7])

local palette = {
  scale = scale,

  orange = scale.orange[4],

  black = { base = scale.neutral[10], bright = scale.neutral[9] },
  gray = { base = scale.neutral[5], bright = scale.neutral[5] },
  blue = { base = scale.blue[4], bright = scale.blue[3] },
  green = { base = scale.green[4], bright = scale.green[3] },
  magenta = { base = scale.purple[4], bright = scale.purple[3] },
  pink = { base = scale.pink[4], bright = scale.pink[3] },
  red = { base = scale.red[4], bright = scale.red[3] },
  white = { base = scale.neutral[3], bright = scale.neutral[3] },
  yellow = { base = scale.yellow[4], bright = scale.yellow[3] },
  cyan = { base = '#76e3ea', bright = '#b3f0ff' },

  fg = {
    default = '#e6edf3',
    muted = '#7d8590',
    subtle = scale.neutral[5],
    on_emphasis = scale.white,
  },

  canvas = {
    default = scale.neutral[7],
    overlay = scale.neutral[9],
    inset = scale.neutral[8],
    subtle = scale.neutral[9],
  },

  border = {
    default = scale.neutral[9],
    muted = scale.neutral[8],
    subtle = BG:blend(C.from_rgba(240, 246, 252, 1), 0.1):to_css(),
  },

  neutral = {
    emphasis_plus = scale.neutral[5],
    emphasis = scale.neutral[5],
    muted = BG:blend(C.from_rgba(110, 118, 129, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(110, 118, 129, 1), 0.1):to_css(),
  },

  accent = {
    fg = '#2f81f7',
    emphasis = scale.blue[6],
    muted = BG:blend(C.from_rgba(56, 139, 253, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(56, 139, 253, 1), 0.15):to_css(),
  },

  success = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = BG:blend(C.from_rgba(46, 160, 67, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(46, 160, 67, 1), 0.15):to_css(),
  },

  attention = {
    fg = scale.yellow[4],
    emphasis = scale.yellow[6],
    muted = BG:blend(C.from_rgba(187, 128, 9, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(187, 128, 9, 1), 0.15):to_css(),
  },

  severe = {
    fg = scale.orange[5],
    emphasis = scale.orange[6],
    muted = BG:blend(C.from_rgba(219, 109, 40, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(219, 109, 40, 1), 0.1):to_css(),
  },

  danger = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = BG:blend(C.from_rgba(248, 81, 73, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(248, 81, 73, 1), 0.1):to_css(),
  },

  open = {
    fg = scale.green[4],
    emphasis = scale.green[6],
    muted = BG:blend(C.from_rgba(46, 160, 67, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(46, 160, 67, 1), 0.15):to_css(),
  },

  done = {
    fg = scale.purple[5],
    emphasis = scale.purple[6],
    muted = BG:blend(C.from_rgba(163, 113, 247, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(163, 113, 247, 1), 0.1):to_css(),
  },

  closed = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = BG:blend(C.from_rgba(248, 81, 73, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(248, 81, 73, 1), 0.15):to_css(),
  },

  sponsors = {
    fg = scale.pink[5],
    emphasis = scale.pink[6],
    muted = BG:blend(C.from_rgba(219, 97, 162, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(219, 97, 162, 1), 0.1):to_css(),
  },
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = BG:blend(C(primitives.bgColor.inset), 0.75):to_css(),         -- Dark bg (popup and float)
    bg1  = primitives.bgColor.default,                  -- Default bg
    bg2  = BG:blend(C(pal.neutral.emphasis), 0.1):to_css(),      -- Lighter bg (colorcolumn Folds)
    bg3  = pal.scale.neutral[6],                        -- Lighter bg (cursor line)
    bg4  = pal.scale.neutral[4],                        -- Conceal

    fg0  = pal.fg.subtle,                               -- Lighter fg
    fg1  = primitives.fgColor.default,                  -- Default fg
    fg2  = pal.fg.muted,                                -- Darker fg (status line)
    fg3  = pal.scale.neutral[5],                        -- Darker fg (line numbers, fold columns)

    sel0 = BG:blend(C(pal.accent.fg), 0.30):to_css(),            -- Visual selection bg
    sel1 = BG:blend(C(pal.accent.muted), 0.90):to_css(),         -- Popup sel bg
    sel2 = BG:blend(C(pal.scale.yellow[1]), 0.20):to_css(),      -- Search bg
  }

  spec.syntax = {
    bracket     = spec.fg1,                             -- Brackets and Punctuation
    builtin0    = pl.syntax.constant.default,           -- Builtin variable
    builtin1    = pl.syntax.keyword,                    -- Builtin type
    builtin2    = pl.syntax.constant.default,           -- Builtin const
    comment     = pl.syntax.comment,                    -- Comment
    conditional = pl.syntax.keyword,                    -- Conditional and loop
    const       = pl.syntax.constant.default,           -- Constants, imports and booleans
    dep         = pal.scale.red[3],                     -- Deprecated
    field       = pl.syntax.constant.default,           -- Field
    func        = pl.syntax.entity.default,             -- Functions and Titles
    ident       = spec.fg1,                             -- Identifiers
    keyword     = pl.syntax.keyword,                    -- Keywords
    number      = pl.syntax.constant.default,           -- Numbers
    operator    = pl.syntax.constant.default,           -- Operators
    param       = spec.fg1,                             -- Parameters
    preproc     = pl.syntax.keyword,                    -- PreProc
    regex       = pl.syntax.string.default,             -- Regex
    statement   = pl.syntax.keyword,                    -- Statements
    string      = pl.syntax.string.default,             -- Strings
    type        = pl.syntax.variable,                   -- Types
    tag         = pl.syntax.entity.tag,                 -- Tags
    variable    = spec.fg1,                             -- Variables
  }

  spec.diag = {
    error = pal.danger.fg,
    warn  = pal.attention.fg,
    info  = pal.accent.fg,
    hint  = pal.fg.muted,
  }

  spec.diag_bg = {
    error = BG:blend(C(spec.diag.error), 0.15):to_css(),
    warn  = BG:blend(C(spec.diag.warn), 0.15):to_css(),
    info  = BG:blend(C(spec.diag.info), 0.15):to_css(),
    hint  = BG:blend(C(spec.diag.hint), 0.15):to_css(),
  }

  spec.diff = {
    add    = BG:blend(C(pal.scale.green[6]), 0.15):to_css(),
    delete = BG:blend(C(pal.scale.red[6]), 0.15):to_css(),
    change = BG:blend(C(pal.scale.yellow[6]), 0.15):to_css(),
    text   = spec.fg0
  }

  spec.git = {
    add      = pal.success.fg,
    removed  = pal.danger.fg,
    changed  = pal.attention.fg,
    conflict = pal.severe.fg,
    ignored  = pal.fg.subtle,
  }

  -- stylua: ignore end
  return spec
end

return {
  meta = meta,
  primitives = primitives,
  palette = palette,
  generate_spec = generate_spec,
}

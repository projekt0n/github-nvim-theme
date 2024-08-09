local C = require('github-theme.lib.color')

local meta = {
  name = 'github_dark_colorblind',
  light = false,
}

local primitives =
  require('github-theme.palette.primitives.' .. meta.name:gsub('^github%W*', '', 1))

local pl = primitives.prettylights
local scale = primitives.scale

C.WHITE = C(scale.white)
C.BLACK = C(scale.black)
C.BG = C(assert(primitives.canvas.default))
local BG = C(assert(primitives.canvas.default))

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

  canvas = primitives.canvas,

  border = {
    default = scale.gray[7],
    muted = scale.gray[8],
    subtle = BG:blend(C.from_rgba(240, 246, 252, 1), 0.1):to_css(),
  },

  neutral = {
    emphasis_plus = scale.gray[5],
    emphasis = scale.gray[5],
    muted = BG:blend(C.from_rgba(110, 118, 129, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(110, 118, 129, 1), 0.1):to_css(),
  },

  accent = {
    fg = scale.blue[4],
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
    subtle = BG:blend(C.from_rgba(219, 109, 40, 1), 0.15):to_css(),
  },

  danger = {
    fg = scale.red[5],
    emphasis = scale.red[6],
    muted = BG:blend(C.from_rgba(248, 81, 73, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(248, 81, 73, 1), 0.15):to_css(),
  },

  open = {
    fg = scale.orange[4],
    emphasis = scale.orange[6],
    muted = BG:blend(C.from_hex(scale.orange[5]), 0.4):to_css(),
    subtle = BG:blend(C.from_hex(scale.orange[5]), 0.15):to_css(),
  },

  done = {
    fg = scale.purple[5],
    emphasis = scale.purple[6],
    muted = BG:blend(C.from_rgba(163, 113, 247, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(163, 113, 247, 1), 0.15):to_css(),
  },

  closed = {
    fg = scale.gray[4],
    emphasis = scale.gray[5],
    muted = BG:blend(C.from_hex(scale.gray[5]), 0.4):to_css(),
    subtle = BG:blend(C.from_hex(scale.gray[5]), 0.10):to_css(),
  },

  sponsors = {
    fg = scale.pink[5],
    emphasis = scale.pink[6],
    muted = BG:blend(C.from_rgba(219, 97, 162, 1), 0.4):to_css(),
    subtle = BG:blend(C.from_rgba(219, 97, 162, 1), 0.15):to_css(),
  },
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = BG:blend(C(pal.canvas.inset), 0.75):to_css(),         -- Dark bg (status line, popup and float)
    bg1  = pal.canvas.default,                          -- Default bg
    bg2  = BG:blend(C(pal.neutral.emphasis), 0.1):to_css(),      -- Lighter bg (colorcolumn Folds)
    bg3  = pal.scale.gray[9],                           -- Lighter bg (cursor line)
    bg4  = pal.scale.gray[4],                           -- Conceal

    fg0  = pal.fg.subtle,                               -- Lighter fg
    fg1  = pal.fg.default,                              -- Default fg
    fg2  = pal.fg.muted,                                -- Darker fg (status line)
    fg3  = pal.scale.gray[5],                           -- Darker fg (line numbers, fold columns)

    sel0 = BG:blend(C(pal.accent.fg), 0.45):to_css(),            -- Visual selection bg
    sel1 = BG:blend(C(pal.accent.muted), 0.90):to_css(),         -- Popup sel bg
    sel2 = BG:blend(C(pal.scale.yellow[3]), 0.60):to_css(),      -- Search bg
  }

  spec.syntax = {
    bracket     = spec.fg1,                             -- Brackets and Punctuation
    builtin0    = pl.syntax.constant,                   -- Builtin variable
    builtin1    = pl.syntax.keyword,                    -- Builtin type
    builtin2    = pl.syntax.constant,                   -- Builtin const
    comment     = pl.syntax.comment,                    -- Comment
    conditional = pl.syntax.keyword,                    -- Conditional and loop
    const       = pl.syntax.constant,                   -- Constants, imports and booleans
    dep         = pal.scale.red[3],                     -- Deprecated
    field       = pl.syntax.constant,                   -- Field
    func        = pl.syntax.entity,                     -- Functions and Titles
    ident       = spec.fg1,                             -- Identifiers
    keyword     = pl.syntax.keyword,                    -- Keywords
    number      = pl.syntax.constant,                   -- Numbers
    operator    = pl.syntax.constant,                   -- Operators
    param       = spec.fg1,                             -- Parameters
    preproc     = pl.syntax.keyword,                    -- PreProc
    regex       = pl.syntax.string,                     -- Regex
    statement   = pl.syntax.keyword,                    -- Statements
    string      = pl.syntax.string,                     -- Strings
    type        = pl.syntax.variable,                   -- Types
    tag         = pl.syntax.entityTag,                  -- Tags
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

local C = require('github-theme.lib.color')

local meta = {
  name = 'github_light_default',
  light = true,
}

local primitives = require('github-theme.palette.primitives.light')

local pl = primitives.color.prettylights
local scale = primitives.scale

C.WHITE = C(scale.white)
C.BLACK = C(scale.black)
C.BG = C(assert(primitives.bgColor.default))
local BG = C(assert(primitives.bgColor.default))

-- Temp override until Primitives are updated
local palette = {
  scale = scale,

  orange = scale.orange[4],
  gray = scale.neutral[6],

  black = { base = scale.neutral[10], bright = scale.neutral[7] },
  white = { base = scale.neutral[6], bright = scale.neutral[5] },
  red = { base = scale.red[6], bright = scale.red[7] },
  green = { base = scale.green[7], bright = scale.green[6] },
  yellow = { base = scale.yellow[9], bright = scale.yellow[8] },
  blue = { base = scale.blue[6], bright = scale.blue[5] },
  magenta = { base = scale.purple[6], bright = scale.purple[5] },
  pink = { base = scale.pink[6], bright = scale.pink[5] },
  cyan = { base = '#1b7c83', bright = '#3192aa' },

  fg = {
    default = scale.black,
    muted = scale.neutral[3],
    subtle = scale.neutral[6],
    on_emphasis = scale.white,
  },

  border = {
    default = scale.neutral[3],
    muted = C(scale.neutral[3]):lighten(0.03), -- TODO: lighten method not working
    subtle = BG:blend(C(scale.black), 0.15):to_css(),
  },

  neutral = {
    emphasis_plus = scale.neutral[10],
    emphasis = scale.neutral[6],
    muted = BG:blend(C(scale.neutral[4]), 0.2):to_css(),
    subtle = BG:blend(C(scale.neutral[2]), 0.5):to_css(),
  },

  accent = {
    fg = scale.blue[6],
    emphasis = scale.blue[6],
    muted = BG:blend(C(scale.blue[4]), 0.4):to_css(),
    subtle = scale.blue[1],
  },

  success = {
    fg = scale.green[6],
    emphasis = '#1f883d',
    muted = BG:blend(C(scale.green[4]), 0.4):to_css(),
    subtle = scale.green[1],
  },

  attention = {
    fg = scale.yellow[6],
    emphasis = scale.yellow[6],
    muted = BG:blend(C(scale.yellow[4]), 0.4):to_css(),
    subtle = scale.yellow[1],
  },

  severe = {
    fg = scale.orange[6],
    emphasis = scale.orange[6],
    muted = BG:blend(C(scale.orange[4]), 0.4):to_css(),
    subtle = scale.orange[1],
  },

  danger = {
    fg = '#d1242f',
    emphasis = scale.red[6],
    muted = BG:blend(C(scale.red[4]), 0.4):to_css(),
    subtle = scale.red[1],
  },

  open = {
    fg = scale.green[6],
    emphasis = '#1f883d',
    muted = BG:blend(C(scale.green[4]), 0.4):to_css(),
    subtle = scale.green[1],
  },

  closed = {
    fg = '#d1242f',
    emphasis = scale.red[6],
    muted = BG:blend(C(scale.red[4]), 0.4):to_css(),
    subtle = scale.red[1],
  },

  done = {
    fg = scale.purple[6],
    emphasis = scale.purple[6],
    muted = BG:blend(C(scale.purple[4]), 0.4):to_css(),
    subtle = scale.purple[1],
  },

  sponsors = {
    fg = scale.pink[6],
    emphasis = scale.pink[6],
    muted = BG:blend(C(scale.pink[4]), 0.4):to_css(),
    subtle = scale.pink[1],
  },
}

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = primitives.bgColor.inset,                    -- Dark bg (popup and float)
    bg1  = primitives.bgColor.default,                  -- Default bg
    bg2  = BG:blend(C(pal.neutral.emphasis), 0.1):to_css(),      -- Lighter bg (colorcolumn Folds)
    bg3  = BG:blend(C(pal.scale.blue[9]), 0.1):to_css(),         -- Lighter bg (cursor line)
    bg4  = pal.scale.neutral[6],                        -- Conceal

    fg0  = pal.fg.subtle,                               -- Lighter fg
    fg1  = primitives.fgColor.default,                  -- Default fg
    fg2  = pal.scale.neutral[9],                        -- Darker fg (status line)
    fg3  = pal.scale.neutral[7],                        -- Darker fg (line numbers, fold columns)

    sel0 = BG:blend(C(pal.accent.fg), 0.15):to_css(),            -- Visual selection bg
    sel1 = BG:blend(C(pal.accent.muted), 0.90):to_css(),         -- Popup sel bg
    sel2 = BG:blend(C(pal.attention.emphasis), 0.3):to_css()     -- Search bg
  }

  spec.syntax = {
    bracket     = spec.fg1,                             -- Brackets and Punctuation
    builtin0    = pl.syntax.constant.default,           -- Builtin variable
    builtin1    = pl.syntax.keyword,                    -- Builtin type
    builtin2    = pl.syntax.constant.default,           -- Builtin const
    comment     = pl.syntax.comment,                    -- Comment
    conditional = pl.syntax.keyword,                    -- Conditional and loop
    const       = pl.syntax.constant.default,           -- Constants, imports and booleans
    dep         = pal.scale.red[8],                     -- Deprecated
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
    add    = BG:blend(C(pal.scale.green[7]), 0.3):to_css(),
    delete = BG:blend(C(pal.scale.red[7]), 0.3):to_css(),
    change = BG:blend(C(pal.scale.yellow[7]), 0.3):to_css(),
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

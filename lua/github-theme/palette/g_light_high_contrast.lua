local C = require('github-theme.lib.color')

local meta = {
  name = 'github_light_high_contrast',
  light = true,
}

---Github Light High Contrast scale variables
---source: https://github.com/primer/primitives/blob/main/data/colors/themes/light_high_contrast.ts
-- stylua: ignore
local scale = {
  black = '#010409',
  white = '#ffffff',
  gray = {
    '#ffffff', '#e7ecf0', '#ced5dc', '#acb6c0', '#88929d',
    '#66707b', '#4b535d', '#343b43', '#20252c', '#0e1116',
  },
  blue = {
    '#dff7ff', '#9cd7ff', '#67b3fd', '#368cf9', '#1168e3',
    '#0349b4', '#023b95', '#022f7a', '#032563', '#021a4a',
  },
  green = {
    '#d2fedb', '#82e596', '#43c663', '#26a148', '#117f32',
    '#055d20', '#024c1a', '#013d14', '#003110', '#00230b',
  },
  yellow = {
    '#fcf7be', '#f0ce53', '#d5a824', '#b58407', '#956400',
    '#744500', '#603700', '#4e2c00', '#3f2200', '#2e1800',
  },
  orange = {
    '#fff2d5', '#ffc67b', '#f99636', '#dc6d1a', '#b45105',
    '#873800', '#702c00', '#5b2300', '#491b00', '#361200',
  },
  red = {
    '#fff0ee', '#ffc1bc', '#ff8e8a', '#ee5a5d', '#d5232c',
    '#a0111f', '#86061d', '#6e011a', '#5a0016', '#430011',
  },
  purple = {
    '#faf0fe', '#e0c5ff', '#c49bff', '#a371f7', '#844ae7',
    '#622cbc', '#512598', '#411d7b', '#341763', '#260f49',
  },
  pink = {
    '#feeff7', '#ffbde0', '#fc87ca', '#ed4baf', '#c9248e',
    '#971368', '#7d0c57', '#660847', '#53043a', '#3e022b',
  },
  coral = {
    '#fff0ed', '#ffc2b6', '#ff8f7e', '#ef5b48', '#cd3425',
    '#9f1710', '#870706', '#6f0107', '#5b0002', '#430200',
  },
}

local function alpha(color, a)
  local bg = scale.white
  return C(bg):blend(color, a)
end

-- Temp override until Primitives are updated
local palette = {
  scale = scale,

  orange = scale.orange[4],
  gray = scale.gray[6],

  black = { base = scale.gray[10], bright = scale.gray[7] },
  white = { base = scale.gray[6], bright = scale.gray[5] },
  red = { base = scale.red[6], bright = scale.red[7] },
  green = { base = scale.green[7], bright = scale.green[6] },
  yellow = { base = scale.yellow[9], bright = scale.yellow[8] },
  blue = { base = scale.blue[6], bright = scale.blue[5] },
  magenta = { base = scale.purple[6], bright = scale.purple[5] },
  pink = { base = scale.pink[6], bright = scale.pink[5] },
  cyan = { base = '#1b7c83', bright = '#3192aa' },

  fg = {
    default = scale.black,
    muted = scale.gray[10],
    subtle = scale.gray[6],
    on_emphasis = scale.white,
  },

  canvas = {
    default = scale.white,
    overlay = scale.white,
    inset = scale.white,
    subtle = scale.gray[2],
  },

  border = {
    default = scale.gray[9],
    muted = scale.gray[5],
    subtle = alpha(C.from_hex(scale.black), 0.8),
  },

  neutral = {
    emphasis_plus = scale.gray[10],
    emphasis = scale.gray[6],
    muted = alpha(C.from_hex(scale.gray[4]), 0.2),
    subtle = scale.gray[2],
  },

  accent = {
    fg = scale.blue[6],
    emphasis = scale.blue[6],
    muted = scale.blue[4],
    subtle = scale.blue[1],
  },

  success = {
    fg = scale.green[6],
    emphasis = scale.green[6],
    muted = scale.green[4],
    subtle = scale.green[1],
  },

  attention = {
    fg = scale.yellow[6],
    emphasis = scale.yellow[6],
    muted = scale.yellow[4],
    subtle = scale.yellow[1],
  },

  severe = {
    fg = scale.orange[6],
    emphasis = scale.orange[6],
    muted = alpha(C.from_hex(scale.orange[4]), 0.4),
    subtle = scale.orange[4],
  },

  danger = {
    fg = '#d1242f',
    emphasis = scale.red[6],
    muted = scale.red[4],
    subtle = scale.red[1],
  },

  open = {
    fg = scale.green[6],
    emphasis = '#1f883d',
    muted = alpha(C.from_hex(scale.green[4]), 0.4),
    subtle = scale.green[1],
  },

  closed = {
    fg = '#d1242f',
    emphasis = scale.red[6],
    muted = alpha(C.from_hex(scale.red[4]), 0.4),
    subtle = scale.red[1],
  },

  done = {
    fg = scale.purple[6],
    emphasis = scale.purple[6],
    muted = scale.purple[4],
    subtle = scale.purple[1],
  },

  sponsors = {
    fg = scale.pink[6],
    emphasis = scale.pink[6],
    muted = scale.pink[4],
    subtle = scale.pink[1],
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
    builtin0    = pal.scale.orange[7],                  -- Builtin variable                    ( dark-> orange[3] )
    builtin1    = pal.scale.red[6],                     -- Builtin type                        ( dark-> red[4] )
    builtin2    = pal.scale.blue[7],                    -- Builtin const                       ( dark-> blue[3] )
    comment     = pal.scale.gray[6],                    -- Comment                             ( dark-> gray[4] )
    conditional = pal.scale.red[6],                     -- Conditional and loop                ( dark-> red[4] )
    const       = pal.scale.blue[7],                    -- Constants, imports and booleans     ( dark-> blue[3] )
    dep         = pal.scale.red[8],                     -- Deprecated                          ( dark-> red[3] )
    field       = spec.fg1,                             -- Field
    func        = pal.scale.purple[6],                  -- Functions and Titles                ( dark-> purple[3] )
    ident       = pal.scale.blue[7],                    -- Identifiers                         ( dark -> blue[3] )
    keyword     = pal.scale.red[6],                     -- Keywords                            ( dark -> red[4] )
    -- number      = pal.orange.base,                      -- Numbers
    operator     = pal.scale.red[6],                    -- Operators                           ( dark -> red[4] )
    preproc     = pal.fg.default,                       -- PreProc
    regex       = pal.sacle.blue[9],                    -- Regex                               ( dark -> blue[3] )
    statement   = pal.scale.red[6],                     -- Statements                          ( dark -> red[4] )
    string      = pal.scale.blue[9],                    -- Strings                             ( dark -> blue[2] )
    type        = pal.scale.red[6],                     -- Types                               ( dark -> red[4] )
    variable    = pal.scale.orange[7],                  -- Variables                           ( dark -> orange[3] )
  }

  -- stylua: ignore end
  return spec
end

return { meta, palette, generate_spec }

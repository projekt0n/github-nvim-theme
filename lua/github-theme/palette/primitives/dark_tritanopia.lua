-- NOTE: THIS IS AN AUTO-GENERATED FILE. DO NOT EDIT BY-HAND.
local mt = {
  __index = function(_, k)
    error('invalid index: ' .. k)
  end,
}
---@generic T
---@param tbl T
---@return T
local function m(tbl)
  return setmetatable(tbl, mt)
end
local M = m({
  timelineBadge = m({
    bgColor = '#21262d',
  }),
  bgColor = m({
    severe = m({
      muted = '#f851491a',
      emphasis = '#da3633',
    }),
    disabled = '#21262db3',
    danger = m({
      muted = '#f851491a',
      emphasis = '#da3633',
    }),
    closed = m({
      muted = '#6e768126',
      emphasis = '#484f58',
    }),
    black = '#010409',
    attention = m({
      muted = '#bb800926',
      emphasis = '#9e6a03',
    }),
    accent = m({
      muted = '#388bfd1a',
      emphasis = '#1f6feb',
    }),
    emphasis = '#6e7681',
    transparent = '#00000000',
    inset = '#010409',
    open = m({
      muted = '#f851491a',
      emphasis = '#da3633',
    }),
    inverse = '#ffffff',
    neutral = m({
      muted = '#6e768166',
      emphasis = '#6e7681',
    }),
    done = m({
      muted = '#ab7df826',
      emphasis = '#8957e5',
    }),
    success = m({
      muted = '#388bfd26',
      emphasis = '#1f6feb',
    }),
    white = '#ffffff',
    default = '#0d1117',
    upsell = m({
      muted = '#ab7df826',
      emphasis = '#8957e5',
    }),
    muted = '#161b22',
    sponsors = m({
      muted = '#db61a21a',
      emphasis = '#bf4b8a',
    }),
  }),
  controlTrack = m({
    bgColor = m({
      rest = '#21262d',
      hover = '#292e36',
      disabled = '#6e7681',
      active = '#31363e',
    }),
    borderColor = m({
      disabled = '#6e7681',
      rest = '#00000000',
    }),
    fgColor = m({
      disabled = '#ffffff',
      rest = '#8d96a0',
    }),
  }),
  sideNav = m({
    bgColor = m({
      selected = '#21262d',
    }),
  }),
  controlKnob = m({
    borderColor = m({
      disabled = '#21262db3',
      rest = '#666e79',
      checked = '#1f6feb',
    }),
    bgColor = m({
      disabled = '#21262db3',
      rest = '#010409',
      checked = '#ffffff',
    }),
  }),
  shadow = m({
    inset = 'inset 0px 1px 0px 0px #0104093d',
    resting = m({
      medium = '0px 3px 6px 0px #010409cc',
      small = '0px 1px 0px 0px #01040966',
      xsmall = '0px 1px 0px 0px #010409cc',
    }),
    floating = m({
      legacy = '0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      large = '0px 0px 0px 1px #30363d, 0px 24px 48px 0px #010409',
      small = '0px 0px 0px 1px #30363d, 0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      medium = '0px 0px 0px 1px #30363d, 0px 8px 16px -4px #01040966, 0px 4px 32px -4px #01040966, 0px 24px 48px -12px #01040966, 0px 48px 96px -24px #01040966',
      xlarge = '0px 0px 0px 1px #30363d, 0px 32px 64px 0px #010409',
    }),
  }),
  control = m({
    bgColor = m({
      disabled = '#21262db3',
      active = '#31363e',
      selected = '#161b22',
      rest = '#21262d',
      hover = '#292e36',
    }),
    danger = m({
      bgColor = m({
        active = '#f8514966',
        hover = '#f851491a',
      }),
      fgColor = m({
        hover = '#ff7b72',
        rest = '#f85149',
      }),
    }),
    transparent = m({
      borderColor = m({
        hover = '#00000000',
        rest = '#00000000',
        active = '#00000000',
      }),
      bgColor = m({
        disabled = '#21262db3',
        active = '#b1bac433',
        selected = '#b1bac414',
        rest = '#00000000',
        hover = '#b1bac41f',
      }),
    }),
    borderColor = m({
      disabled = '#21262db3',
      emphasis = '#666e79',
      danger = '#da3633',
      selected = '#f0f6fc',
      rest = '#30363d',
      warning = '#9e6a03',
      success = '#1f6feb',
    }),
    checked = m({
      bgColor = m({
        rest = '#1f6feb',
        hover = '#2a7aef',
        disabled = '#6e7681',
        active = '#3685f3',
      }),
      borderColor = m({
        rest = '#1f6feb',
        hover = '#2a7aef',
        disabled = '#6e7681',
        active = '#3685f3',
      }),
      fgColor = m({
        disabled = '#010409',
        rest = '#ffffff',
      }),
    }),
    iconColor = m({
      rest = '#8d96a0',
    }),
    fgColor = m({
      rest = '#c9d1d9',
      disabled = '#6e7681',
      placeholder = '#858e98',
    }),
  }),
  scale = m({
    coral = m({
      [1] = '#ffddd2',
      [2] = '#ffc2b2',
      [3] = '#ffa28b',
      [4] = '#f78166',
      [5] = '#ea6045',
      [6] = '#cf462d',
      [7] = '#ac3220',
      [8] = '#872012',
      [9] = '#640d04',
      [10] = '#460701',
    }),
    pink = m({
      [1] = '#ffdaec',
      [2] = '#ffbedd',
      [3] = '#ff9bce',
      [4] = '#f778ba',
      [5] = '#db61a2',
      [6] = '#bf4b8a',
      [7] = '#9e3670',
      [8] = '#7d2457',
      [9] = '#5e103e',
      [10] = '#42062a',
    }),
    neutral = m({
      [1] = '#f0f6fc',
      [2] = '#c9d1d9',
      [3] = '#b1bac4',
      [4] = '#8b949e',
      [5] = '#6e7681',
      [6] = '#484f58',
      [7] = '#30363d',
      [8] = '#21262d',
      [9] = '#161b22',
      [10] = '#0d1117',
    }),
    yellow = m({
      [1] = '#f8e3a1',
      [2] = '#f2cc60',
      [3] = '#e3b341',
      [4] = '#d29922',
      [5] = '#bb8009',
      [6] = '#9e6a03',
      [7] = '#845306',
      [8] = '#693e00',
      [9] = '#4b2900',
      [10] = '#341a00',
    }),
    blue = m({
      [1] = '#cae8ff',
      [2] = '#a5d6ff',
      [3] = '#79c0ff',
      [4] = '#58a6ff',
      [5] = '#388bfd',
      [6] = '#1f6feb',
      [7] = '#1158c7',
      [8] = '#0d419d',
      [9] = '#0c2d6b',
      [10] = '#051d4d',
    }),
    green = m({
      [1] = '#aff5b4',
      [2] = '#7ee787',
      [3] = '#56d364',
      [4] = '#3fb950',
      [5] = '#2ea043',
      [6] = '#238636',
      [7] = '#196c2e',
      [8] = '#0f5323',
      [9] = '#033a16',
      [10] = '#04260f',
    }),
    orange = m({
      [1] = '#ffdfb6',
      [2] = '#ffc680',
      [3] = '#ffa657',
      [4] = '#f0883e',
      [5] = '#db6d28',
      [6] = '#bd561d',
      [7] = '#9b4215',
      [8] = '#762d0a',
      [9] = '#5a1e02',
      [10] = '#3d1300',
    }),
    red = m({
      [1] = '#ffdcd7',
      [2] = '#ffc1ba',
      [3] = '#ffa198',
      [4] = '#ff7b72',
      [5] = '#f85149',
      [6] = '#da3633',
      [7] = '#b62324',
      [8] = '#8e1519',
      [9] = '#67060c',
      [10] = '#490202',
    }),
    white = '#ffffff',
    transparent = '#00000000',
    purple = m({
      [1] = '#eddeff',
      [2] = '#e2c5ff',
      [3] = '#d2a8ff',
      [4] = '#be8fff',
      [5] = '#ab7df8',
      [6] = '#8957e5',
      [7] = '#6e40c9',
      [8] = '#553098',
      [9] = '#3c1e70',
      [10] = '#271052',
    }),
    black = '#010409',
  }),
  codeMirror = m({
    matchingBracket = m({
      fgColor = '#e6edf3',
    }),
    bgColor = '#0d1117',
    selection = m({
      bgColor = '#388bfd66',
    }),
    lineNumber = m({
      fgColor = '#8d96a0',
    }),
    gutters = m({
      bgColor = '#0d1117',
    }),
    fgColor = '#e6edf3',
    cursor = m({
      fgColor = '#e6edf3',
    }),
    syntax = m({
      fgColor = m({
        comment = '#8b949e',
        variable = '#ffa198',
        constant = '#79c0ff',
        storage = '#ff7b72',
        string = '#a5d6ff',
        support = '#79c0ff',
        keyword = '#ff7b72',
        entity = '#d2a8ff',
      }),
    }),
    activeline = m({
      bgColor = '#6e768166',
    }),
    gutterMarker = m({
      fgColor = m({
        muted = '#8d96a0',
        default = '#0d1117',
      }),
    }),
    lines = m({
      bgColor = '#0d1117',
    }),
  }),
  base = m({
    display = m({
      color = m({
        lime = m({
          [0] = '#141f0f',
          [1] = '#1f3116',
          [2] = '#2c441d',
          [3] = '#375421',
          [4] = '#496c28',
          [5] = '#5f892f',
          [6] = '#7dae37',
          [7] = '#89ba36',
          [8] = '#9fcc3e',
          [9] = '#bcda67',
        }),
        lemon = m({
          [0] = '#291d00',
          [1] = '#372901',
          [2] = '#4f3c02',
          [3] = '#614c05',
          [4] = '#786008',
          [5] = '#977b0c',
          [6] = '#ba9b12',
          [7] = '#c4a717',
          [8] = '#d7bc1d',
          [9] = '#e3d04f',
        }),
        black = '#0d1117',
        yellow = m({
          [0] = '#2e1a00',
          [1] = '#3d2401',
          [2] = '#5a3702',
          [3] = '#6d4403',
          [4] = '#895906',
          [5] = '#aa7109',
          [6] = '#d3910d',
          [7] = '#df9e11',
          [8] = '#edb431',
          [9] = '#f0ca6a',
        }),
        indigo = m({
          [0] = '#1b183f',
          [1] = '#25215f',
          [2] = '#312c90',
          [3] = '#3935c0',
          [4] = '#514ed4',
          [5] = '#7070e1',
          [6] = '#9899ec',
          [7] = '#a2a5f1',
          [8] = '#b7baf6',
          [9] = '#c8cbf9',
        }),
        teal = m({
          [0] = '#041f25',
          [1] = '#073036',
          [2] = '#0a464d',
          [3] = '#0c555a',
          [4] = '#106c70',
          [5] = '#158a8a',
          [6] = '#1cb0ab',
          [7] = '#1fbdb2',
          [8] = '#24d6c4',
          [9] = '#5fe3d1',
        }),
        green = m({
          [0] = '#122117',
          [1] = '#182f1f',
          [2] = '#214529',
          [3] = '#285830',
          [4] = '#2f6f37',
          [5] = '#388f3f',
          [6] = '#41b445',
          [7] = '#46c144',
          [8] = '#75d36f',
          [9] = '#99e090',
        }),
        red = m({
          [0] = '#3c0614',
          [1] = '#58091a',
          [2] = '#790c20',
          [3] = '#990f24',
          [4] = '#c31328',
          [5] = '#eb3342',
          [6] = '#f27d83',
          [7] = '#f48b8d',
          [8] = '#f7adab',
          [9] = '#f9c1be',
        }),
        gray = m({
          [0] = '#1c1c1c',
          [1] = '#2a2b2d',
          [2] = '#393d41',
          [3] = '#474e57',
          [4] = '#576270',
          [5] = '#6e7f96',
          [6] = '#92a1b5',
          [7] = '#9babbf',
          [8] = '#b3c0d1',
          [9] = '#c4cfde',
        }),
        purple = m({
          [0] = '#211047',
          [1] = '#31146b',
          [2] = '#481a9e',
          [3] = '#5b1cca',
          [4] = '#7730e8',
          [5] = '#975bf1',
          [6] = '#b687f7',
          [7] = '#c398fb',
          [8] = '#d2affd',
          [9] = '#e1c7ff',
        }),
        cyan = m({
          [0] = '#001f29',
          [1] = '#002e3d',
          [2] = '#014156',
          [3] = '#02536f',
          [4] = '#036a8c',
          [5] = '#0587b3',
          [6] = '#07ace4',
          [7] = '#09b7f1',
          [8] = '#45cbf7',
          [9] = '#80dbf9',
        }),
        plum = m({
          [0] = '#2a0e3f',
          [1] = '#40125e',
          [2] = '#5c1688',
          [3] = '#7517ab',
          [4] = '#9518d8',
          [5] = '#b643ef',
          [6] = '#d07ef7',
          [7] = '#d889fa',
          [8] = '#e4a5fd',
          [9] = '#edbdff',
        }),
        coral = m({
          [0] = '#351008',
          [1] = '#51180b',
          [2] = '#72220d',
          [3] = '#902a0e',
          [4] = '#b3350f',
          [5] = '#e1430e',
          [6] = '#f7794b',
          [7] = '#fa8c61',
          [8] = '#fdaa86',
          [9] = '#ffc0a3',
        }),
        pink = m({
          [0] = '#2d1524',
          [1] = '#451c35',
          [2] = '#65244a',
          [3] = '#842a5d',
          [4] = '#ac2f74',
          [5] = '#d34591',
          [6] = '#e57bb2',
          [7] = '#ec8dbd',
          [8] = '#f4a9cd',
          [9] = '#f9bed9',
        }),
        brown = m({
          [0] = '#241c14',
          [1] = '#342a1d',
          [2] = '#483a28',
          [3] = '#5d4a32',
          [4] = '#755e3e',
          [5] = '#94774c',
          [6] = '#b69a6d',
          [7] = '#bfa77d',
          [8] = '#cdbb98',
          [9] = '#dbceb3',
        }),
        pine = m({
          [0] = '#082119',
          [1] = '#0b3224',
          [2] = '#0e4430',
          [3] = '#115a3e',
          [4] = '#14714c',
          [5] = '#18915e',
          [6] = '#1bb673',
          [7] = '#1ac176',
          [8] = '#1bda81',
          [9] = '#3eea97',
        }),
        blue = m({
          [0] = '#001a47',
          [1] = '#002766',
          [2] = '#00378a',
          [3] = '#0046a8',
          [4] = '#005bd1',
          [5] = '#0576ff',
          [6] = '#4da0ff',
          [7] = '#61adff',
          [8] = '#85c2ff',
          [9] = '#a3d3ff',
        }),
        orange = m({
          [0] = '#311708',
          [1] = '#43200a',
          [2] = '#632f0d',
          [3] = '#7b3c0e',
          [4] = '#984b10',
          [5] = '#c46212',
          [6] = '#ed8326',
          [7] = '#f1933b',
          [8] = '#f6b06a',
          [9] = '#fac68f',
        }),
        auburn = m({
          [0] = '#271817',
          [1] = '#3a2422',
          [2] = '#543331',
          [3] = '#6d4340',
          [4] = '#87534f',
          [5] = '#a86f6b',
          [6] = '#bf9592',
          [7] = '#c6a19f',
          [8] = '#d4b7b5',
          [9] = '#dfcac8',
        }),
        white = '#ffffff',
        olive = m({
          [0] = '#171e0b',
          [1] = '#252d10',
          [2] = '#374115',
          [3] = '#485219',
          [4] = '#5e681d',
          [5] = '#7a8321',
          [6] = '#a2a626',
          [7] = '#b2af24',
          [8] = '#cbc025',
          [9] = '#e2d04b',
        }),
      }),
    }),
    color = m({
      coral = m({
        [0] = '#ffddd2',
        [1] = '#ffc2b2',
        [2] = '#ffa28b',
        [3] = '#f78166',
        [4] = '#ea6045',
        [5] = '#cf462d',
        [6] = '#ac3220',
        [7] = '#872012',
        [8] = '#640d04',
        [9] = '#460701',
      }),
      pink = m({
        [0] = '#ffdaec',
        [1] = '#ffbedd',
        [2] = '#ff9bce',
        [3] = '#f778ba',
        [4] = '#db61a2',
        [5] = '#bf4b8a',
        [6] = '#9e3670',
        [7] = '#7d2457',
        [8] = '#5e103e',
        [9] = '#42062a',
      }),
      neutral = m({
        [0] = '#f0f6fc',
        [1] = '#c9d1d9',
        [2] = '#b1bac4',
        [3] = '#8b949e',
        [4] = '#6e7681',
        [5] = '#484f58',
        [6] = '#30363d',
        [7] = '#21262d',
        [8] = '#161b22',
        [9] = '#0d1117',
      }),
      black = '#010409',
      blue = m({
        [0] = '#cae8ff',
        [1] = '#a5d6ff',
        [2] = '#79c0ff',
        [3] = '#58a6ff',
        [4] = '#388bfd',
        [5] = '#1f6feb',
        [6] = '#1158c7',
        [7] = '#0d419d',
        [8] = '#0c2d6b',
        [9] = '#051d4d',
      }),
      green = m({
        [0] = '#aff5b4',
        [1] = '#7ee787',
        [2] = '#56d364',
        [3] = '#3fb950',
        [4] = '#2ea043',
        [5] = '#238636',
        [6] = '#196c2e',
        [7] = '#0f5323',
        [8] = '#033a16',
        [9] = '#04260f',
      }),
      orange = m({
        [0] = '#ffdfb6',
        [1] = '#ffc680',
        [2] = '#ffa657',
        [3] = '#f0883e',
        [4] = '#db6d28',
        [5] = '#bd561d',
        [6] = '#9b4215',
        [7] = '#762d0a',
        [8] = '#5a1e02',
        [9] = '#3d1300',
      }),
      red = m({
        [0] = '#ffdcd7',
        [1] = '#ffc1ba',
        [2] = '#ffa198',
        [3] = '#ff7b72',
        [4] = '#f85149',
        [5] = '#da3633',
        [6] = '#b62324',
        [7] = '#8e1519',
        [8] = '#67060c',
        [9] = '#490202',
      }),
      white = '#ffffff',
      transparent = '#00000000',
      purple = m({
        [0] = '#eddeff',
        [1] = '#e2c5ff',
        [2] = '#d2a8ff',
        [3] = '#be8fff',
        [4] = '#ab7df8',
        [5] = '#8957e5',
        [6] = '#6e40c9',
        [7] = '#553098',
        [8] = '#3c1e70',
        [9] = '#271052',
      }),
      yellow = m({
        [0] = '#f8e3a1',
        [1] = '#f2cc60',
        [2] = '#e3b341',
        [3] = '#d29922',
        [4] = '#bb8009',
        [5] = '#9e6a03',
        [6] = '#845306',
        [7] = '#693e00',
        [8] = '#4b2900',
        [9] = '#341a00',
      }),
    }),
  }),
  selection = m({
    bgColor = '#1f6febb3',
  }),
  selectMenu = m({
    borderColor = '#484f58',
    bgColor = m({
      active = '#0c2d6b',
    }),
  }),
  reactionButton = m({
    selected = m({
      bgColor = m({
        hover = '#3a8cfd5c',
        rest = '#388bfd33',
      }),
      fgColor = m({
        hover = '#79c0ff',
        rest = '#4493f8',
      }),
    }),
  }),
  fgColor = m({
    severe = '#f85149',
    disabled = '#6e7681',
    danger = '#f85149',
    closed = '#6e7681',
    black = '#010409',
    attention = '#d29922',
    accent = '#4493f8',
    open = '#f85149',
    neutral = '#6e7681',
    sponsors = '#db61a2',
    success = '#58a6ff',
    onEmphasis = '#ffffff',
    white = '#ffffff',
    done = '#ab7df8',
    default = '#e6edf3',
    upsell = '#ab7df8',
    muted = '#8d96a0',
    link = '#4493f8',
  }),
  page = m({
    header = m({
      bgColor = '#0d1117',
    }),
  }),
  header = m({
    bgColor = '#161b22f2',
    borderColor = m({
      divider = '#8b949e',
    }),
    fgColor = m({
      logo = '#f0f6fc',
      default = '#ffffffb3',
    }),
  }),
  card = m({
    bgColor = '#161b22',
  }),
  buttonCounter = m({
    danger = m({
      bgColor = m({
        hover = '#ffffff33',
        disabled = '#da36330d',
        rest = '#49020233',
      }),
      fgColor = m({
        hover = '#ffffff',
        disabled = '#f8514980',
        rest = '#f85149',
      }),
    }),
    invisible = m({
      bgColor = m({
        rest = '#30363d',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#30363d',
      }),
    }),
    outline = m({
      bgColor = m({
        hover = '#051d4d33',
        disabled = '#1f6feb0d',
        rest = '#051d4d33',
      }),
      fgColor = m({
        hover = '#58a6ff',
        disabled = '#4493f880',
        rest = '#388bfd',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#04260f33',
      }),
    }),
  }),
  outline = m({
    focus = '#1f6feb solid 2px',
  }),
  focus = m({
    outlineColor = '#1f6feb',
  }),
  menu = m({
    bgColor = m({
      active = '#161b22',
    }),
  }),
  label = m({
    lime = m({
      bgColor = m({
        hover = '#1f3116',
        rest = '#141f0f',
        active = '#2c441d',
      }),
      fgColor = m({
        hover = '#89ba36',
        rest = '#7dae37',
        active = '#9fcc3e',
      }),
    }),
    lemon = m({
      bgColor = m({
        hover = '#372901',
        rest = '#291d00',
        active = '#4f3c02',
      }),
      fgColor = m({
        hover = '#c4a717',
        rest = '#ba9b12',
        active = '#d7bc1d',
      }),
    }),
    yellow = m({
      bgColor = m({
        hover = '#3d2401',
        rest = '#2e1a00',
        active = '#5a3702',
      }),
      fgColor = m({
        hover = '#df9e11',
        rest = '#d3910d',
        active = '#edb431',
      }),
    }),
    indigo = m({
      bgColor = m({
        hover = '#25215f',
        rest = '#1b183f',
        active = '#312c90',
      }),
      fgColor = m({
        hover = '#a2a5f1',
        rest = '#9899ec',
        active = '#b7baf6',
      }),
    }),
    teal = m({
      bgColor = m({
        hover = '#073036',
        rest = '#041f25',
        active = '#0a464d',
      }),
      fgColor = m({
        hover = '#1fbdb2',
        rest = '#1cb0ab',
        active = '#24d6c4',
      }),
    }),
    green = m({
      bgColor = m({
        hover = '#182f1f',
        rest = '#122117',
        active = '#214529',
      }),
      fgColor = m({
        hover = '#46c144',
        rest = '#41b445',
        active = '#75d36f',
      }),
    }),
    red = m({
      bgColor = m({
        hover = '#58091a',
        rest = '#3c0614',
        active = '#790c20',
      }),
      fgColor = m({
        hover = '#f48b8d',
        rest = '#f27d83',
        active = '#f7adab',
      }),
    }),
    gray = m({
      bgColor = m({
        hover = '#2a2b2d',
        rest = '#1c1c1c',
        active = '#393d41',
      }),
      fgColor = m({
        hover = '#9babbf',
        rest = '#92a1b5',
        active = '#b3c0d1',
      }),
    }),
    purple = m({
      bgColor = m({
        hover = '#31146b',
        rest = '#211047',
        active = '#481a9e',
      }),
      fgColor = m({
        hover = '#c398fb',
        rest = '#b687f7',
        active = '#d2affd',
      }),
    }),
    cyan = m({
      bgColor = m({
        hover = '#002e3d',
        rest = '#001f29',
        active = '#014156',
      }),
      fgColor = m({
        hover = '#09b7f1',
        rest = '#07ace4',
        active = '#45cbf7',
      }),
    }),
    plum = m({
      bgColor = m({
        hover = '#40125e',
        rest = '#2a0e3f',
        active = '#5c1688',
      }),
      fgColor = m({
        hover = '#d889fa',
        rest = '#d07ef7',
        active = '#e4a5fd',
      }),
    }),
    coral = m({
      bgColor = m({
        hover = '#51180b',
        rest = '#351008',
        active = '#72220d',
      }),
      fgColor = m({
        hover = '#fa8c61',
        rest = '#f7794b',
        active = '#fdaa86',
      }),
    }),
    pink = m({
      bgColor = m({
        hover = '#451c35',
        rest = '#2d1524',
        active = '#65244a',
      }),
      fgColor = m({
        hover = '#ec8dbd',
        rest = '#e57bb2',
        active = '#f4a9cd',
      }),
    }),
    brown = m({
      bgColor = m({
        hover = '#342a1d',
        rest = '#241c14',
        active = '#483a28',
      }),
      fgColor = m({
        hover = '#bfa77d',
        rest = '#b69a6d',
        active = '#cdbb98',
      }),
    }),
    pine = m({
      bgColor = m({
        hover = '#0b3224',
        rest = '#082119',
        active = '#0e4430',
      }),
      fgColor = m({
        hover = '#1ac176',
        rest = '#1bb673',
        active = '#1bda81',
      }),
    }),
    blue = m({
      bgColor = m({
        hover = '#002766',
        rest = '#001a47',
        active = '#00378a',
      }),
      fgColor = m({
        hover = '#61adff',
        rest = '#4da0ff',
        active = '#85c2ff',
      }),
    }),
    orange = m({
      bgColor = m({
        hover = '#43200a',
        rest = '#311708',
        active = '#632f0d',
      }),
      fgColor = m({
        hover = '#f1933b',
        rest = '#ed8326',
        active = '#f6b06a',
      }),
    }),
    auburn = m({
      bgColor = m({
        hover = '#3a2422',
        rest = '#271817',
        active = '#543331',
      }),
      fgColor = m({
        hover = '#c6a19f',
        rest = '#bf9592',
        active = '#d4b7b5',
      }),
    }),
    olive = m({
      bgColor = m({
        hover = '#252d10',
        rest = '#171e0b',
        active = '#374115',
      }),
      fgColor = m({
        hover = '#b2af24',
        rest = '#a2a626',
        active = '#cbc025',
      }),
    }),
  }),
  button = m({
    inactive = m({
      bgColor = '#21262d',
      fgColor = '#8b949e',
    }),
    star = m({
      iconColor = '#e3b341',
    }),
    danger = m({
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        rest = '#21262d',
        hover = '#b62324',
        disabled = '#21262db3',
        active = '#d03533',
      }),
      borderColor = m({
        hover = '#f0f6fc1a',
        rest = '#30363d',
        active = '#f0f6fc1a',
      }),
      iconColor = m({
        hover = '#ffffff',
        rest = '#f85149',
      }),
      fgColor = m({
        rest = '#f85149',
        hover = '#ffffff',
        disabled = '#f8514980',
        active = '#ffffff',
      }),
    }),
    invisible = m({
      iconColor = m({
        hover = '#e6edf3',
        disabled = '#6e7681',
        rest = '#8d96a0',
      }),
      bgColor = m({
        rest = '#00000000',
        hover = '#b1bac41f',
        disabled = '#21262db3',
        active = '#b1bac433',
      }),
      borderColor = m({
        hover = '#00000000',
        disabled = '#21262db3',
        rest = '#00000000',
      }),
      fgColor = m({
        hover = '#58a6ff',
        disabled = '#6e7681',
        rest = '#4493f8',
      }),
    }),
    default = m({
      shadow = m({
        resting = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        disabled = '#21262db3',
        active = '#31363e',
        selected = '#31363e',
        rest = '#21262d',
        hover = '#292e36',
      }),
      borderColor = m({
        rest = '#30363d',
        hover = '#30363d',
        disabled = '#21262db3',
        active = '#30363d',
      }),
      fgColor = m({
        rest = '#c9d1d9',
      }),
    }),
    primary = m({
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        rest = '#1f6feb',
        hover = '#2a7aef',
        disabled = '#5fabfe',
        active = '#3685f3',
      }),
      borderColor = m({
        rest = '#f0f6fc1a',
        hover = '#f0f6fc1a',
        disabled = '#5fabfe',
        active = '#f0f6fc1a',
      }),
      iconColor = m({
        rest = '#ffffff',
      }),
      fgColor = m({
        disabled = '#ffffff66',
        rest = '#ffffff',
      }),
    }),
    outline = m({
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        rest = '#f0f6fc',
        hover = '#30363d',
        disabled = '#0d1117',
        active = '#0d419d',
      }),
      borderColor = m({
        selected = '#f0f6fc1a',
        hover = '#f0f6fc1a',
      }),
      fgColor = m({
        rest = '#388bfd',
        hover = '#58a6ff',
        disabled = '#4493f880',
        active = '#ffffff',
      }),
    }),
  }),
  diffBlob = m({
    addition = m({
      bgColor = m({
        num = '#58a6ff4d',
        line = '#388bfd26',
        word = '#388bfd66',
      }),
      fgColor = m({
        num = '#e6edf3',
        text = '#e6edf3',
      }),
    }),
    expander = m({
      iconColor = '#8d96a0',
    }),
    deletion = m({
      bgColor = m({
        num = '#f851494d',
        line = '#f8514926',
        word = '#f8514966',
      }),
      fgColor = m({
        num = '#e6edf3',
        text = '#e6edf3',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#388bfd66',
      }),
    }),
  }),
  avatar = m({
    shadow = '0px 0px 0px 2px #0d1117',
    bgColor = '#ffffff1a',
    borderColor = '#ffffff26',
  }),
  counter = m({
    borderColor = '#00000000',
  }),
  color = m({
    prettylights = m({
      syntax = m({
        comment = '#8b949e',
        carriage = m({
          ['return'] = m({
            bg = '#b62324',
            text = '#f0f6fc',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#c9d1d9',
          }),
        }),
        brackethighlighter = m({
          unmatched = '#f85149',
          angle = '#8b949e',
        }),
        keyword = '#ff7b72',
        invalid = m({
          illegal = m({
            bg = '#8e1519',
            text = '#f0f6fc',
          }),
        }),
        variable = '#ffa198',
        meta = m({
          diff = m({
            range = '#d2a8ff',
          }),
        }),
        entity = m({
          tag = '#a5d6ff',
          default = '#d2a8ff',
        }),
        string = m({
          regexp = '#a5d6ff',
          default = '#a5d6ff',
        }),
        constant = m({
          other = m({
            reference = m({
              link = '#a5d6ff',
            }),
          }),
          default = '#79c0ff',
        }),
        sublimelinter = m({
          gutter = m({
            mark = '#484f58',
          }),
        }),
        markup = m({
          list = '#f2cc60',
          deleted = m({
            bg = '#67060c',
            text = '#ffdcd7',
          }),
          italic = '#c9d1d9',
          changed = m({
            bg = '#67060c',
            text = '#ffdcd7',
          }),
          inserted = m({
            bg = '#0c2d6b',
            text = '#cae8ff',
          }),
          bold = '#c9d1d9',
          heading = '#1f6feb',
          ignored = m({
            bg = '#1158c7',
            text = '#c9d1d9',
          }),
        }),
      }),
    }),
    ansi = m({
      black = m({
        default = '#484f58',
        bright = '#6e7681',
      }),
      yellow = m({
        default = '#d29922',
        bright = '#e3b341',
      }),
      blue = m({
        default = '#58a6ff',
        bright = '#79c0ff',
      }),
      green = m({
        default = '#58a6ff',
        bright = '#79c0ff',
      }),
      magenta = m({
        default = '#be8fff',
        bright = '#d2a8ff',
      }),
      red = m({
        default = '#ff7b72',
        bright = '#ffa198',
      }),
      white = m({
        default = '#b1bac4',
        bright = '#ffffff',
      }),
      gray = '#6e7681',
      cyan = m({
        default = '#39c5cf',
        bright = '#56d4dd',
      }),
    }),
  }),
  display = m({
    lime = m({
      bgColor = m({
        muted = '#141f0f',
        emphasis = '#5f892f',
      }),
      borderColor = m({
        muted = '#1f3116',
        emphasis = '#5f892f',
      }),
      fgColor = '#7dae37',
    }),
    lemon = m({
      bgColor = m({
        muted = '#291d00',
        emphasis = '#977b0c',
      }),
      borderColor = m({
        muted = '#372901',
        emphasis = '#977b0c',
      }),
      fgColor = '#ba9b12',
    }),
    yellow = m({
      bgColor = m({
        muted = '#2e1a00',
        emphasis = '#aa7109',
      }),
      borderColor = m({
        muted = '#3d2401',
        emphasis = '#aa7109',
      }),
      fgColor = '#d3910d',
    }),
    indigo = m({
      bgColor = m({
        muted = '#1b183f',
        emphasis = '#7070e1',
      }),
      borderColor = m({
        muted = '#25215f',
        emphasis = '#7070e1',
      }),
      fgColor = '#9899ec',
    }),
    teal = m({
      bgColor = m({
        muted = '#041f25',
        emphasis = '#158a8a',
      }),
      borderColor = m({
        muted = '#073036',
        emphasis = '#158a8a',
      }),
      fgColor = '#1cb0ab',
    }),
    green = m({
      bgColor = m({
        muted = '#122117',
        emphasis = '#388f3f',
      }),
      borderColor = m({
        muted = '#182f1f',
        emphasis = '#388f3f',
      }),
      fgColor = '#41b445',
    }),
    red = m({
      bgColor = m({
        muted = '#3c0614',
        emphasis = '#eb3342',
      }),
      borderColor = m({
        muted = '#58091a',
        emphasis = '#eb3342',
      }),
      fgColor = '#f27d83',
    }),
    gray = m({
      bgColor = m({
        muted = '#1c1c1c',
        emphasis = '#6e7f96',
      }),
      borderColor = m({
        muted = '#2a2b2d',
        emphasis = '#6e7f96',
      }),
      fgColor = '#92a1b5',
    }),
    purple = m({
      bgColor = m({
        muted = '#211047',
        emphasis = '#975bf1',
      }),
      borderColor = m({
        muted = '#31146b',
        emphasis = '#975bf1',
      }),
      fgColor = '#b687f7',
    }),
    cyan = m({
      bgColor = m({
        muted = '#001f29',
        emphasis = '#0587b3',
      }),
      borderColor = m({
        muted = '#002e3d',
        emphasis = '#0587b3',
      }),
      fgColor = '#07ace4',
    }),
    plum = m({
      bgColor = m({
        muted = '#2a0e3f',
        emphasis = '#b643ef',
      }),
      borderColor = m({
        muted = '#40125e',
        emphasis = '#b643ef',
      }),
      fgColor = '#d07ef7',
    }),
    coral = m({
      bgColor = m({
        muted = '#3c0614',
        emphasis = '#eb3342',
      }),
      borderColor = m({
        muted = '#58091a',
        emphasis = '#eb3342',
      }),
      fgColor = '#f27d83',
    }),
    pink = m({
      bgColor = m({
        muted = '#2d1524',
        emphasis = '#d34591',
      }),
      borderColor = m({
        muted = '#451c35',
        emphasis = '#d34591',
      }),
      fgColor = '#e57bb2',
    }),
    brown = m({
      bgColor = m({
        muted = '#241c14',
        emphasis = '#94774c',
      }),
      borderColor = m({
        muted = '#342a1d',
        emphasis = '#94774c',
      }),
      fgColor = '#b69a6d',
    }),
    pine = m({
      bgColor = m({
        muted = '#082119',
        emphasis = '#18915e',
      }),
      borderColor = m({
        muted = '#0b3224',
        emphasis = '#18915e',
      }),
      fgColor = '#1bb673',
    }),
    blue = m({
      bgColor = m({
        muted = '#001a47',
        emphasis = '#0576ff',
      }),
      borderColor = m({
        muted = '#002766',
        emphasis = '#0576ff',
      }),
      fgColor = '#4da0ff',
    }),
    orange = m({
      bgColor = m({
        muted = '#311708',
        emphasis = '#c46212',
      }),
      borderColor = m({
        muted = '#43200a',
        emphasis = '#c46212',
      }),
      fgColor = '#ed8326',
    }),
    auburn = m({
      bgColor = m({
        muted = '#271817',
        emphasis = '#a86f6b',
      }),
      borderColor = m({
        muted = '#3a2422',
        emphasis = '#a86f6b',
      }),
      fgColor = '#bf9592',
    }),
    olive = m({
      bgColor = m({
        muted = '#171e0b',
        emphasis = '#7a8321',
      }),
      borderColor = m({
        muted = '#252d10',
        emphasis = '#7a8321',
      }),
      fgColor = '#a2a626',
    }),
  }),
  underlineNav = m({
    borderColor = m({
      active = '#f78166',
      hover = '#6e768166',
    }),
    iconColor = m({
      rest = '#8d96a0',
    }),
  }),
  data = m({
    pink = m({
      color = m({
        muted = '#2d1524',
        default = '#d34591',
      }),
    }),
    yellow = m({
      color = m({
        muted = '#2e1a00',
        default = '#895906',
      }),
    }),
    teal = m({
      color = m({
        muted = '#041f25',
        default = '#106c70',
      }),
    }),
    green = m({
      color = m({
        muted = '#122117',
        default = '#2f6f37',
      }),
    }),
    orange = m({
      color = m({
        muted = '#311708',
        default = '#984b10',
      }),
    }),
    red = m({
      color = m({
        muted = '#3c0614',
        default = '#eb3342',
      }),
    }),
    gray = m({
      color = m({
        muted = '#1c1c1c',
        default = '#576270',
      }),
    }),
    auburn = m({
      color = m({
        muted = '#271817',
        default = '#a86f6b',
      }),
    }),
    purple = m({
      color = m({
        muted = '#211047',
        default = '#975bf1',
      }),
    }),
    blue = m({
      color = m({
        muted = '#001a47',
        default = '#0576ff',
      }),
    }),
  }),
  highlight = m({
    neutral = m({
      bgColor = '#d2992266',
    }),
  }),
  skeletonLoader = m({
    bgColor = '#161b22',
  }),
  borderColor = m({
    severe = m({
      muted = '#f8514966',
      emphasis = '#da3633',
    }),
    disabled = '#21262db3',
    danger = m({
      muted = '#f8514966',
      emphasis = '#da3633',
    }),
    translucent = '#ffffff26',
    attention = m({
      muted = '#bb800966',
      emphasis = '#9e6a03',
    }),
    accent = m({
      muted = '#388bfd66',
      emphasis = '#1f6feb',
    }),
    emphasis = '#484f58',
    transparent = '#00000000',
    open = m({
      muted = '#f8514966',
      emphasis = '#da3633',
    }),
    neutral = m({
      muted = '#6e768166',
      emphasis = '#6e7681',
    }),
    closed = m({
      muted = '#6e768166',
      emphasis = '#484f58',
    }),
    success = m({
      muted = '#388bfd66',
      emphasis = '#1f6feb',
    }),
    done = m({
      muted = '#ab7df866',
      emphasis = '#8957e5',
    }),
    default = '#30363d',
    upsell = m({
      muted = '#ab7df866',
      emphasis = '#8957e5',
    }),
    muted = '#30363db3',
    sponsors = m({
      muted = '#db61a266',
      emphasis = '#bf4b8a',
    }),
  }),
  overlay = m({
    bgColor = '#161b22',
    borderColor = '#30363db3',
    backdrop = m({
      bgColor = '#161b2266',
    }),
  }),
  headerSearch = m({
    borderColor = '#30363d',
    bgColor = '#0d1117',
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#8d96a0',
      }),
    }),
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        muted = '#21262d',
        default = '#30363d',
      }),
    }),
  }),
  topicTag = m({
    borderColor = '#00000000',
  }),
})
M._VERSION =
  vim.json.decode([=["8.2.3"]=], { luanil = { object = false, array = false } })
M._LICENSE = [=[
The MIT License (MIT)

Copyright (c) 2018 GitHub Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.]=]
return M

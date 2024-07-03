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
  shadow = m({
    floating = m({
      legacy = '0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      large = '0px 0px 0px 1px #30363d, 0px 24px 48px 0px #010409',
      small = '0px 0px 0px 1px #30363d, 0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      medium = '0px 0px 0px 1px #30363d, 0px 8px 16px -4px #01040966, 0px 4px 32px -4px #01040966, 0px 24px 48px -12px #01040966, 0px 48px 96px -24px #01040966',
      xlarge = '0px 0px 0px 1px #30363d, 0px 32px 64px 0px #010409',
    }),
    inset = 'inset 0px 1px 0px 0px #0104093d',
    resting = m({
      xsmall = '0px 1px 0px 0px #010409cc',
      medium = '0px 3px 6px 0px #010409cc',
      small = '0px 1px 0px 0px #01040966',
    }),
  }),
  button = m({
    invisible = m({
      iconColor = m({
        disabled = '#6e7681',
        rest = '#8d96a0',
        hover = '#e6edf3',
      }),
      fgColor = m({
        disabled = '#6e7681',
        rest = '#4493f8',
        hover = '#58a6ff',
      }),
      bgColor = m({
        active = '#b1bac433',
        disabled = '#21262db3',
        rest = '#00000000',
        hover = '#b1bac41f',
      }),
      borderColor = m({
        disabled = '#21262db3',
        rest = '#00000000',
        hover = '#00000000',
      }),
    }),
    inactive = m({
      fgColor = '#8b949e',
      bgColor = '#21262d',
    }),
    danger = m({
      iconColor = m({
        rest = '#db6d28',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        active = '#b5531d',
        disabled = '#21262db3',
        rest = '#21262d',
        hover = '#9b4215',
      }),
      borderColor = m({
        active = '#f0f6fc1a',
        rest = '#30363d',
        hover = '#f0f6fc1a',
      }),
      fgColor = m({
        active = '#ffffff',
        disabled = '#db6d2880',
        rest = '#db6d28',
        hover = '#ffffff',
      }),
    }),
    default = m({
      fgColor = m({
        rest = '#c9d1d9',
      }),
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
        active = '#30363d',
        disabled = '#21262db3',
        rest = '#30363d',
        hover = '#30363d',
      }),
    }),
    primary = m({
      iconColor = m({
        rest = '#ffffff',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        active = '#3685f3',
        disabled = '#1158c7',
        rest = '#1f6feb',
        hover = '#2a7aef',
      }),
      borderColor = m({
        active = '#f0f6fc1a',
        disabled = '#1158c7',
        rest = '#f0f6fc1a',
        hover = '#f0f6fc1a',
      }),
      fgColor = m({
        rest = '#ffffff',
        disabled = '#ffffff66',
      }),
    }),
    outline = m({
      fgColor = m({
        active = '#ffffff',
        disabled = '#4493f880',
        rest = '#388bfd',
        hover = '#58a6ff',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        active = '#0d419d',
        disabled = '#0d1117',
        rest = '#f0f6fc',
        hover = '#30363d',
      }),
      borderColor = m({
        hover = '#f0f6fc1a',
        selected = '#f0f6fc1a',
      }),
    }),
    star = m({
      iconColor = '#e3b341',
    }),
  }),
  diffBlob = m({
    deletion = m({
      fgColor = m({
        num = '#e6edf3',
        text = '#e6edf3',
      }),
      bgColor = m({
        line = '#db6d2826',
        word = '#db6d2866',
        num = '#db6d284d',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#388bfd66',
      }),
    }),
    addition = m({
      fgColor = m({
        num = '#e6edf3',
        text = '#e6edf3',
      }),
      bgColor = m({
        line = '#388bfd26',
        word = '#388bfd66',
        num = '#58a6ff4d',
      }),
    }),
    expander = m({
      iconColor = '#8d96a0',
    }),
  }),
  selection = m({
    bgColor = '#1f6febb3',
  }),
  selectMenu = m({
    bgColor = m({
      active = '#0c2d6b',
    }),
    borderColor = '#484f58',
  }),
  reactionButton = m({
    selected = m({
      fgColor = m({
        rest = '#4493f8',
        hover = '#79c0ff',
      }),
      bgColor = m({
        rest = '#388bfd33',
        hover = '#3a8cfd5c',
      }),
    }),
  }),
  fgColor = m({
    open = '#f0883e',
    neutral = '#6e7681',
    default = '#e6edf3',
    white = '#ffffff',
    upsell = '#ab7df8',
    success = '#58a6ff',
    sponsors = '#db61a2',
    severe = '#db6d28',
    onEmphasis = '#ffffff',
    muted = '#8d96a0',
    link = '#4493f8',
    done = '#ab7df8',
    disabled = '#6e7681',
    danger = '#db6d28',
    closed = '#8b949e',
    black = '#010409',
    attention = '#d29922',
    accent = '#4493f8',
  }),
  page = m({
    header = m({
      bgColor = '#0d1117',
    }),
  }),
  header = m({
    fgColor = m({
      default = '#ffffffb3',
      logo = '#f0f6fc',
    }),
    bgColor = '#161b22f2',
    borderColor = m({
      divider = '#8b949e',
    }),
  }),
  overlay = m({
    backdrop = m({
      bgColor = '#161b2266',
    }),
    bgColor = '#161b22',
    borderColor = '#30363db3',
  }),
  avatar = m({
    shadow = '0px 0px 0px 2px #0d1117',
    bgColor = '#ffffff1a',
    borderColor = '#ffffff26',
  }),
  counter = m({
    borderColor = '#00000000',
  }),
  focus = m({
    outlineColor = '#1f6feb',
  }),
  controlTrack = m({
    fgColor = m({
      rest = '#8d96a0',
      disabled = '#ffffff',
    }),
    bgColor = m({
      active = '#31363e',
      disabled = '#6e7681',
      rest = '#21262d',
      hover = '#292e36',
    }),
    borderColor = m({
      rest = '#00000000',
      disabled = '#6e7681',
    }),
  }),
  menu = m({
    bgColor = m({
      active = '#161b22',
    }),
  }),
  label = m({
    brown = m({
      fgColor = m({
        active = '#cdbb98',
        rest = '#b69a6d',
        hover = '#bfa77d',
      }),
      bgColor = m({
        active = '#483a28',
        rest = '#241c14',
        hover = '#342a1d',
      }),
    }),
    yellow = m({
      fgColor = m({
        active = '#edb431',
        rest = '#d3910d',
        hover = '#df9e11',
      }),
      bgColor = m({
        active = '#5a3702',
        rest = '#2e1a00',
        hover = '#3d2401',
      }),
    }),
    orange = m({
      fgColor = m({
        active = '#f6b06a',
        rest = '#ed8326',
        hover = '#f1933b',
      }),
      bgColor = m({
        active = '#632f0d',
        rest = '#311708',
        hover = '#43200a',
      }),
    }),
    teal = m({
      fgColor = m({
        active = '#24d6c4',
        rest = '#1cb0ab',
        hover = '#1fbdb2',
      }),
      bgColor = m({
        active = '#0a464d',
        rest = '#041f25',
        hover = '#073036',
      }),
    }),
    olive = m({
      fgColor = m({
        active = '#cbc025',
        rest = '#a2a626',
        hover = '#b2af24',
      }),
      bgColor = m({
        active = '#374115',
        rest = '#171e0b',
        hover = '#252d10',
      }),
    }),
    red = m({
      fgColor = m({
        active = '#f7adab',
        rest = '#f27d83',
        hover = '#f48b8d',
      }),
      bgColor = m({
        active = '#790c20',
        rest = '#3c0614',
        hover = '#58091a',
      }),
    }),
    lime = m({
      fgColor = m({
        active = '#9fcc3e',
        rest = '#7dae37',
        hover = '#89ba36',
      }),
      bgColor = m({
        active = '#2c441d',
        rest = '#141f0f',
        hover = '#1f3116',
      }),
    }),
    purple = m({
      fgColor = m({
        active = '#d2affd',
        rest = '#b687f7',
        hover = '#c398fb',
      }),
      bgColor = m({
        active = '#481a9e',
        rest = '#211047',
        hover = '#31146b',
      }),
    }),
    lemon = m({
      fgColor = m({
        active = '#d7bc1d',
        rest = '#ba9b12',
        hover = '#c4a717',
      }),
      bgColor = m({
        active = '#4f3c02',
        rest = '#291d00',
        hover = '#372901',
      }),
    }),
    plum = m({
      fgColor = m({
        active = '#e4a5fd',
        rest = '#d07ef7',
        hover = '#d889fa',
      }),
      bgColor = m({
        active = '#5c1688',
        rest = '#2a0e3f',
        hover = '#40125e',
      }),
    }),
    indigo = m({
      fgColor = m({
        active = '#b7baf6',
        rest = '#9899ec',
        hover = '#a2a5f1',
      }),
      bgColor = m({
        active = '#312c90',
        rest = '#1b183f',
        hover = '#25215f',
      }),
    }),
    pink = m({
      fgColor = m({
        active = '#f4a9cd',
        rest = '#e57bb2',
        hover = '#ec8dbd',
      }),
      bgColor = m({
        active = '#65244a',
        rest = '#2d1524',
        hover = '#451c35',
      }),
    }),
    green = m({
      fgColor = m({
        active = '#75d36f',
        rest = '#41b445',
        hover = '#46c144',
      }),
      bgColor = m({
        active = '#214529',
        rest = '#122117',
        hover = '#182f1f',
      }),
    }),
    pine = m({
      fgColor = m({
        active = '#1bda81',
        rest = '#1bb673',
        hover = '#1ac176',
      }),
      bgColor = m({
        active = '#0e4430',
        rest = '#082119',
        hover = '#0b3224',
      }),
    }),
    gray = m({
      fgColor = m({
        active = '#b3c0d1',
        rest = '#92a1b5',
        hover = '#9babbf',
      }),
      bgColor = m({
        active = '#393d41',
        rest = '#1c1c1c',
        hover = '#2a2b2d',
      }),
    }),
    cyan = m({
      fgColor = m({
        active = '#45cbf7',
        rest = '#07ace4',
        hover = '#09b7f1',
      }),
      bgColor = m({
        active = '#014156',
        rest = '#001f29',
        hover = '#002e3d',
      }),
    }),
    auburn = m({
      fgColor = m({
        active = '#d4b7b5',
        rest = '#bf9592',
        hover = '#c6a19f',
      }),
      bgColor = m({
        active = '#543331',
        rest = '#271817',
        hover = '#3a2422',
      }),
    }),
    coral = m({
      fgColor = m({
        active = '#fdaa86',
        rest = '#f7794b',
        hover = '#fa8c61',
      }),
      bgColor = m({
        active = '#72220d',
        rest = '#351008',
        hover = '#51180b',
      }),
    }),
    blue = m({
      fgColor = m({
        active = '#85c2ff',
        rest = '#4da0ff',
        hover = '#61adff',
      }),
      bgColor = m({
        active = '#00378a',
        rest = '#001a47',
        hover = '#002766',
      }),
    }),
  }),
  controlKnob = m({
    bgColor = m({
      checked = '#ffffff',
      rest = '#010409',
      disabled = '#21262db3',
    }),
    borderColor = m({
      checked = '#1f6feb',
      rest = '#666e79',
      disabled = '#21262db3',
    }),
  }),
  data = m({
    pink = m({
      color = m({
        default = '#d34591',
        muted = '#2d1524',
      }),
    }),
    yellow = m({
      color = m({
        default = '#895906',
        muted = '#2e1a00',
      }),
    }),
    green = m({
      color = m({
        default = '#2f6f37',
        muted = '#122117',
      }),
    }),
    orange = m({
      color = m({
        default = '#984b10',
        muted = '#311708',
      }),
    }),
    teal = m({
      color = m({
        default = '#106c70',
        muted = '#041f25',
      }),
    }),
    gray = m({
      color = m({
        default = '#576270',
        muted = '#1c1c1c',
      }),
    }),
    red = m({
      color = m({
        default = '#eb3342',
        muted = '#3c0614',
      }),
    }),
    purple = m({
      color = m({
        default = '#975bf1',
        muted = '#211047',
      }),
    }),
    auburn = m({
      color = m({
        default = '#a86f6b',
        muted = '#271817',
      }),
    }),
    blue = m({
      color = m({
        default = '#0576ff',
        muted = '#001a47',
      }),
    }),
  }),
  control = m({
    iconColor = m({
      rest = '#8d96a0',
    }),
    transparent = m({
      bgColor = m({
        disabled = '#21262db3',
        active = '#b1bac433',
        selected = '#b1bac414',
        rest = '#00000000',
        hover = '#b1bac41f',
      }),
      borderColor = m({
        active = '#00000000',
        rest = '#00000000',
        hover = '#00000000',
      }),
    }),
    bgColor = m({
      disabled = '#21262db3',
      active = '#31363e',
      selected = '#161b22',
      rest = '#21262d',
      hover = '#292e36',
    }),
    danger = m({
      fgColor = m({
        rest = '#db6d28',
        hover = '#f0883e',
      }),
      bgColor = m({
        hover = '#db6d281a',
        active = '#db6d2866',
      }),
    }),
    checked = m({
      fgColor = m({
        rest = '#ffffff',
        disabled = '#010409',
      }),
      bgColor = m({
        active = '#3685f3',
        disabled = '#6e7681',
        rest = '#1f6feb',
        hover = '#2a7aef',
      }),
      borderColor = m({
        active = '#3685f3',
        disabled = '#6e7681',
        rest = '#1f6feb',
        hover = '#2a7aef',
      }),
    }),
    borderColor = m({
      danger = '#bd561d',
      disabled = '#21262db3',
      success = '#1f6feb',
      warning = '#9e6a03',
      selected = '#f0f6fc',
      rest = '#30363d',
      emphasis = '#666e79',
    }),
    fgColor = m({
      placeholder = '#858e98',
      rest = '#c9d1d9',
      disabled = '#6e7681',
    }),
  }),
  codeMirror = m({
    fgColor = '#e6edf3',
    lineNumber = m({
      fgColor = '#8d96a0',
    }),
    gutters = m({
      bgColor = '#0d1117',
    }),
    lines = m({
      bgColor = '#0d1117',
    }),
    gutterMarker = m({
      fgColor = m({
        default = '#0d1117',
        muted = '#8d96a0',
      }),
    }),
    cursor = m({
      fgColor = '#e6edf3',
    }),
    syntax = m({
      fgColor = m({
        entity = '#d2a8ff',
        storage = '#f0883e',
        string = '#a5d6ff',
        support = '#79c0ff',
        keyword = '#f0883e',
        constant = '#79c0ff',
        comment = '#8b949e',
        variable = '#ffa657',
      }),
    }),
    bgColor = '#0d1117',
    selection = m({
      bgColor = '#388bfd66',
    }),
    matchingBracket = m({
      fgColor = '#e6edf3',
    }),
    activeline = m({
      bgColor = '#6e768166',
    }),
  }),
  headerSearch = m({
    bgColor = '#0d1117',
    borderColor = '#30363d',
  }),
  color = m({
    prettylights = m({
      syntax = m({
        carriage = m({
          ['return'] = m({
            bg = '#9b4215',
            text = '#f0f6fc',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#c9d1d9',
          }),
        }),
        string = m({
          regexp = '#a5d6ff',
          default = '#a5d6ff',
        }),
        brackethighlighter = m({
          unmatched = '#db6d28',
          angle = '#8b949e',
        }),
        meta = m({
          diff = m({
            range = '#d2a8ff',
          }),
        }),
        invalid = m({
          illegal = m({
            bg = '#762d0a',
            text = '#f0f6fc',
          }),
        }),
        markup = m({
          italic = '#c9d1d9',
          changed = m({
            bg = '#5a1e02',
            text = '#ffdfb6',
          }),
          inserted = m({
            bg = '#0c2d6b',
            text = '#cae8ff',
          }),
          bold = '#c9d1d9',
          deleted = m({
            bg = '#5a1e02',
            text = '#ffdfb6',
          }),
          ignored = m({
            bg = '#1158c7',
            text = '#c9d1d9',
          }),
          list = '#f2cc60',
          heading = '#1f6feb',
        }),
        entity = m({
          tag = '#a5d6ff',
          default = '#d2a8ff',
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
        variable = '#ffa657',
        comment = '#8b949e',
        keyword = '#f0883e',
      }),
    }),
    ansi = m({
      white = m({
        default = '#b1bac4',
        bright = '#ffffff',
      }),
      yellow = m({
        default = '#d29922',
        bright = '#e3b341',
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
        default = '#f0883e',
        bright = '#ffa657',
      }),
      cyan = m({
        default = '#39c5cf',
        bright = '#56d4dd',
      }),
      black = m({
        default = '#484f58',
        bright = '#6e7681',
      }),
      gray = '#6e7681',
      blue = m({
        default = '#58a6ff',
        bright = '#79c0ff',
      }),
    }),
  }),
  base = m({
    color = m({
      white = '#ffffff',
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
      transparent = '#00000000',
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
    }),
    display = m({
      color = m({
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
        white = '#ffffff',
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
        black = '#0d1117',
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
      }),
    }),
  }),
  underlineNav = m({
    iconColor = m({
      rest = '#8d96a0',
    }),
    borderColor = m({
      hover = '#6e768166',
      active = '#f78166',
    }),
  }),
  scale = m({
    white = '#ffffff',
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
    transparent = '#00000000',
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
  }),
  borderColor = m({
    translucent = '#ffffff26',
    emphasis = '#484f58',
    open = m({
      emphasis = '#db6d28',
      muted = '#db6d2866',
    }),
    transparent = '#00000000',
    neutral = m({
      emphasis = '#6e7681',
      muted = '#6e768166',
    }),
    upsell = m({
      emphasis = '#8957e5',
      muted = '#ab7df866',
    }),
    success = m({
      emphasis = '#1f6feb',
      muted = '#388bfd66',
    }),
    sponsors = m({
      emphasis = '#bf4b8a',
      muted = '#db61a266',
    }),
    severe = m({
      emphasis = '#bd561d',
      muted = '#db6d2866',
    }),
    muted = '#30363db3',
    done = m({
      emphasis = '#8957e5',
      muted = '#ab7df866',
    }),
    disabled = '#21262db3',
    danger = m({
      emphasis = '#bd561d',
      muted = '#db6d2866',
    }),
    closed = m({
      emphasis = '#6e7681',
      muted = '#6e768166',
    }),
    default = '#30363d',
    attention = m({
      emphasis = '#9e6a03',
      muted = '#bb800966',
    }),
    accent = m({
      emphasis = '#1f6feb',
      muted = '#388bfd66',
    }),
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        default = '#30363d',
        muted = '#21262d',
      }),
    }),
  }),
  bgColor = m({
    emphasis = '#6e7681',
    inset = '#010409',
    open = m({
      emphasis = '#bd561d',
      muted = '#db6d2866',
    }),
    transparent = '#00000000',
    neutral = m({
      emphasis = '#6e7681',
      muted = '#6e768166',
    }),
    white = '#ffffff',
    upsell = m({
      emphasis = '#8957e5',
      muted = '#ab7df826',
    }),
    success = m({
      emphasis = '#1f6feb',
      muted = '#388bfd26',
    }),
    sponsors = m({
      emphasis = '#bf4b8a',
      muted = '#db61a21a',
    }),
    severe = m({
      emphasis = '#bd561d',
      muted = '#db6d281a',
    }),
    inverse = '#ffffff',
    muted = '#161b22',
    closed = m({
      emphasis = '#6e7681',
      muted = '#6e768166',
    }),
    done = m({
      emphasis = '#8957e5',
      muted = '#ab7df826',
    }),
    disabled = '#21262db3',
    danger = m({
      emphasis = '#bd561d',
      muted = '#db6d281a',
    }),
    default = '#0d1117',
    black = '#010409',
    attention = m({
      emphasis = '#9e6a03',
      muted = '#bb800926',
    }),
    accent = m({
      emphasis = '#1f6feb',
      muted = '#388bfd1a',
    }),
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#8d96a0',
      }),
    }),
  }),
  highlight = m({
    neutral = m({
      bgColor = '#d2992266',
    }),
  }),
  topicTag = m({
    borderColor = '#00000000',
  }),
  timelineBadge = m({
    bgColor = '#21262d',
  }),
  card = m({
    bgColor = '#161b22',
  }),
  skeletonLoader = m({
    bgColor = '#161b22',
  }),
  buttonCounter = m({
    invisible = m({
      bgColor = m({
        rest = '#30363d',
      }),
    }),
    danger = m({
      fgColor = m({
        disabled = '#db6d2880',
        rest = '#db6d28',
        hover = '#ffffff',
      }),
      bgColor = m({
        disabled = '#bd561d0d',
        rest = '#49020233',
        hover = '#ffffff33',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#30363d',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#04260f33',
      }),
    }),
    outline = m({
      fgColor = m({
        disabled = '#4493f880',
        rest = '#388bfd',
        hover = '#58a6ff',
      }),
      bgColor = m({
        disabled = '#1f6feb0d',
        rest = '#051d4d33',
        hover = '#051d4d33',
      }),
    }),
  }),
  outline = m({
    focus = '#1f6feb solid 2px',
  }),
  sideNav = m({
    bgColor = m({
      selected = '#21262d',
    }),
  }),
  display = m({
    brown = m({
      fgColor = '#b69a6d',
      bgColor = m({
        emphasis = '#94774c',
        muted = '#241c14',
      }),
      borderColor = m({
        emphasis = '#94774c',
        muted = '#342a1d',
      }),
    }),
    yellow = m({
      fgColor = '#d3910d',
      bgColor = m({
        emphasis = '#aa7109',
        muted = '#2e1a00',
      }),
      borderColor = m({
        emphasis = '#aa7109',
        muted = '#3d2401',
      }),
    }),
    orange = m({
      fgColor = '#ed8326',
      bgColor = m({
        emphasis = '#c46212',
        muted = '#311708',
      }),
      borderColor = m({
        emphasis = '#c46212',
        muted = '#43200a',
      }),
    }),
    teal = m({
      fgColor = '#1cb0ab',
      bgColor = m({
        emphasis = '#158a8a',
        muted = '#041f25',
      }),
      borderColor = m({
        emphasis = '#158a8a',
        muted = '#073036',
      }),
    }),
    olive = m({
      fgColor = '#a2a626',
      bgColor = m({
        emphasis = '#7a8321',
        muted = '#171e0b',
      }),
      borderColor = m({
        emphasis = '#7a8321',
        muted = '#252d10',
      }),
    }),
    red = m({
      fgColor = '#f27d83',
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
    }),
    lime = m({
      fgColor = '#7dae37',
      bgColor = m({
        emphasis = '#5f892f',
        muted = '#141f0f',
      }),
      borderColor = m({
        emphasis = '#5f892f',
        muted = '#1f3116',
      }),
    }),
    purple = m({
      fgColor = '#b687f7',
      bgColor = m({
        emphasis = '#975bf1',
        muted = '#211047',
      }),
      borderColor = m({
        emphasis = '#975bf1',
        muted = '#31146b',
      }),
    }),
    lemon = m({
      fgColor = '#ba9b12',
      bgColor = m({
        emphasis = '#977b0c',
        muted = '#291d00',
      }),
      borderColor = m({
        emphasis = '#977b0c',
        muted = '#372901',
      }),
    }),
    plum = m({
      fgColor = '#d07ef7',
      bgColor = m({
        emphasis = '#b643ef',
        muted = '#2a0e3f',
      }),
      borderColor = m({
        emphasis = '#b643ef',
        muted = '#40125e',
      }),
    }),
    indigo = m({
      fgColor = '#9899ec',
      bgColor = m({
        emphasis = '#7070e1',
        muted = '#1b183f',
      }),
      borderColor = m({
        emphasis = '#7070e1',
        muted = '#25215f',
      }),
    }),
    pink = m({
      fgColor = '#e57bb2',
      bgColor = m({
        emphasis = '#d34591',
        muted = '#2d1524',
      }),
      borderColor = m({
        emphasis = '#d34591',
        muted = '#451c35',
      }),
    }),
    green = m({
      fgColor = '#41b445',
      bgColor = m({
        emphasis = '#388f3f',
        muted = '#122117',
      }),
      borderColor = m({
        emphasis = '#388f3f',
        muted = '#182f1f',
      }),
    }),
    pine = m({
      fgColor = '#1bb673',
      bgColor = m({
        emphasis = '#18915e',
        muted = '#082119',
      }),
      borderColor = m({
        emphasis = '#18915e',
        muted = '#0b3224',
      }),
    }),
    gray = m({
      fgColor = '#92a1b5',
      bgColor = m({
        emphasis = '#6e7f96',
        muted = '#1c1c1c',
      }),
      borderColor = m({
        emphasis = '#6e7f96',
        muted = '#2a2b2d',
      }),
    }),
    cyan = m({
      fgColor = '#07ace4',
      bgColor = m({
        emphasis = '#0587b3',
        muted = '#001f29',
      }),
      borderColor = m({
        emphasis = '#0587b3',
        muted = '#002e3d',
      }),
    }),
    auburn = m({
      fgColor = '#bf9592',
      bgColor = m({
        emphasis = '#a86f6b',
        muted = '#271817',
      }),
      borderColor = m({
        emphasis = '#a86f6b',
        muted = '#3a2422',
      }),
    }),
    coral = m({
      fgColor = '#f27d83',
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
    }),
    blue = m({
      fgColor = '#4da0ff',
      bgColor = m({
        emphasis = '#0576ff',
        muted = '#001a47',
      }),
      borderColor = m({
        emphasis = '#0576ff',
        muted = '#002766',
      }),
    }),
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

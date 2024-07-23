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
  sideNav = m({
    bgColor = m({
      selected = '#ffffff',
    }),
  }),
  shadow = m({
    resting = m({
      small = '0px 1px 0px 0px #1f23280a',
      xsmall = '0px 1px 0px 0px #1f23281a',
      medium = '0px 3px 6px 0px #424a531f',
    }),
    floating = m({
      xlarge = '0px 0px 0px 1px #d0d7de, 0px 56px 112px 0px #424a5352',
      legacy = '0px 6px 12px -3px #424a530a, 0px 6px 18px 0px #424a531f',
      large = '0px 0px 0px 1px #d0d7de, 0px 40px 80px 0px #424a533d',
      small = '0px 0px 0px 1px #d0d7de80, 0px 6px 12px -3px #424a530a, 0px 6px 18px 0px #424a531f',
      medium = '0px 0px 0px 1px #d0d7de, 0px 8px 16px -4px #424a5314, 0px 4px 32px -4px #424a5314, 0px 24px 48px -12px #424a5314, 0px 48px 96px -24px #424a5314',
    }),
    inset = 'inset 0px 1px 0px 0px #1f23280a',
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        muted = '#d0d7de',
        default = '#afb8c1',
      }),
    }),
  }),
  selection = m({
    bgColor = '#0969da33',
  }),
  selectMenu = m({
    bgColor = m({
      active = '#b6e3ff',
    }),
    borderColor = '#ffffff00',
  }),
  counter = m({
    borderColor = '#ffffff00',
  }),
  reactionButton = m({
    selected = m({
      fgColor = m({
        rest = '#0969da',
        hover = '#0550ae',
      }),
      bgColor = m({
        rest = '#ddf4ff',
        hover = '#caecff',
      }),
    }),
  }),
  controlTrack = m({
    bgColor = m({
      rest = '#eaeef2',
      disabled = '#8c959f',
      active = '#d2d8de',
      hover = '#dee3e8',
    }),
    borderColor = m({
      rest = '#ffffff00',
      disabled = '#8c959f',
    }),
    fgColor = m({
      rest = '#636c76',
      disabled = '#ffffff',
    }),
  }),
  highlight = m({
    neutral = m({
      bgColor = '#fff8c5',
    }),
  }),
  page = m({
    header = m({
      bgColor = '#f6f8fa',
    }),
  }),
  controlKnob = m({
    bgColor = m({
      rest = '#ffffff',
      disabled = '#eaeef2b3',
      checked = '#ffffff',
    }),
    borderColor = m({
      rest = '#868f99',
      disabled = '#eaeef2b3',
      checked = '#0969da',
    }),
  }),
  overlay = m({
    bgColor = '#ffffff',
    borderColor = '#d0d7de80',
    backdrop = m({
      bgColor = '#8c959f33',
    }),
  }),
  headerSearch = m({
    bgColor = '#24292f',
    borderColor = '#57606a',
  }),
  codeMirror = m({
    lineNumber = m({
      fgColor = '#636c76',
    }),
    fgColor = '#1f2328',
    gutterMarker = m({
      fgColor = m({
        muted = '#636c76',
        default = '#ffffff',
      }),
    }),
    lines = m({
      bgColor = '#ffffff',
    }),
    activeline = m({
      bgColor = '#afb8c133',
    }),
    cursor = m({
      fgColor = '#1f2328',
    }),
    syntax = m({
      fgColor = m({
        entity = '#8250df',
        variable = '#953800',
        support = '#0550ae',
        storage = '#bc4c00',
        constant = '#0550ae',
        comment = '#24292f',
        keyword = '#bc4c00',
        string = '#0a3069',
      }),
    }),
    bgColor = '#ffffff',
    matchingBracket = m({
      fgColor = '#1f2328',
    }),
    selection = m({
      bgColor = '#54aeff66',
    }),
    gutters = m({
      bgColor = '#ffffff',
    }),
  }),
  control = m({
    fgColor = m({
      rest = '#24292f',
      disabled = '#8c959f',
      placeholder = '#69727c',
    }),
    danger = m({
      fgColor = m({
        rest = '#be4e02',
        hover = '#be4e02',
      }),
      bgColor = m({
        hover = '#fff1e5',
        active = '#fff1e566',
      }),
    }),
    transparent = m({
      bgColor = m({
        rest = '#ffffff00',
        disabled = '#eaeef2b3',
        hover = '#d0d7de33',
        active = '#d0d7de66',
        selected = '#d0d7de33',
      }),
      borderColor = m({
        rest = '#ffffff00',
        active = '#ffffff00',
        hover = '#ffffff00',
      }),
    }),
    bgColor = m({
      rest = '#f6f8fa',
      disabled = '#eaeef2b3',
      hover = '#eef1f4',
      active = '#e7ebef',
      selected = '#f6f8fa',
    }),
    borderColor = m({
      rest = '#d0d7de',
      disabled = '#eaeef2b3',
      success = '#218bff',
      danger = '#bc4c00',
      emphasis = '#868f99',
      warning = '#bf8700',
      selected = '#f6f8fa',
    }),
    iconColor = m({
      rest = '#636c76',
    }),
    checked = m({
      bgColor = m({
        rest = '#0969da',
        disabled = '#8c959f',
        active = '#0757ba',
        hover = '#0860ca',
      }),
      borderColor = m({
        rest = '#0969da',
        disabled = '#8c959f',
        active = '#0757ba',
        hover = '#0860ca',
      }),
      fgColor = m({
        rest = '#ffffff',
        disabled = '#ffffff',
      }),
    }),
  }),
  menu = m({
    bgColor = m({
      active = '#ffffff00',
    }),
  }),
  focus = m({
    outlineColor = '#0969da',
    outline = '#0969da solid 2px',
  }),
  scale = m({
    white = '#ffffff',
    blue = m({
      [1] = '#ddf4ff',
      [2] = '#b6e3ff',
      [3] = '#80ccff',
      [4] = '#54aeff',
      [5] = '#218bff',
      [6] = '#0969da',
      [7] = '#0550ae',
      [8] = '#033d8b',
      [9] = '#0a3069',
      [10] = '#002155',
    }),
    green = m({
      [1] = '#dafbe1',
      [2] = '#aceebb',
      [3] = '#6fdd8b',
      [4] = '#4ac26b',
      [5] = '#2da44e',
      [6] = '#1a7f37',
      [7] = '#116329',
      [8] = '#044f1e',
      [9] = '#003d16',
      [10] = '#002d11',
    }),
    orange = m({
      [1] = '#fff1e5',
      [2] = '#ffd8b5',
      [3] = '#ffb77c',
      [4] = '#fb8f44',
      [5] = '#e16f24',
      [6] = '#bc4c00',
      [7] = '#953800',
      [8] = '#762c00',
      [9] = '#5c2200',
      [10] = '#471700',
    }),
    red = m({
      [1] = '#ffebe9',
      [2] = '#ffcecb',
      [3] = '#ffaba8',
      [4] = '#ff8182',
      [5] = '#fa4549',
      [6] = '#cf222e',
      [7] = '#a40e26',
      [8] = '#82071e',
      [9] = '#660018',
      [10] = '#4c0014',
    }),
    neutral = m({
      [1] = '#f6f8fa',
      [2] = '#eaeef2',
      [3] = '#d0d7de',
      [4] = '#afb8c1',
      [5] = '#8c959f',
      [6] = '#6e7781',
      [7] = '#57606a',
      [8] = '#424a53',
      [9] = '#32383f',
      [10] = '#24292f',
    }),
    purple = m({
      [1] = '#fbefff',
      [2] = '#ecd8ff',
      [3] = '#d8b9ff',
      [4] = '#c297ff',
      [5] = '#a475f9',
      [6] = '#8250df',
      [7] = '#6639ba',
      [8] = '#512a97',
      [9] = '#3e1f79',
      [10] = '#2e1461',
    }),
    transparent = '#ffffff00',
    black = '#1f2328',
    pink = m({
      [1] = '#ffeff7',
      [2] = '#ffd3eb',
      [3] = '#ffadda',
      [4] = '#ff80c8',
      [5] = '#e85aad',
      [6] = '#bf3989',
      [7] = '#99286e',
      [8] = '#772057',
      [9] = '#611347',
      [10] = '#4d0336',
    }),
    yellow = m({
      [1] = '#fff8c5',
      [2] = '#fae17d',
      [3] = '#eac54f',
      [4] = '#d4a72c',
      [5] = '#bf8700',
      [6] = '#9a6700',
      [7] = '#7d4e00',
      [8] = '#633c01',
      [9] = '#4d2d00',
      [10] = '#3b2300',
    }),
    coral = m({
      [1] = '#fff0eb',
      [2] = '#ffd6cc',
      [3] = '#ffb4a1',
      [4] = '#fd8c73',
      [5] = '#ec6547',
      [6] = '#c4432b',
      [7] = '#9e2f1c',
      [8] = '#801f0f',
      [9] = '#691105',
      [10] = '#510901',
    }),
  }),
  color = m({
    prettylights = m({
      syntax = m({
        brackethighlighter = m({
          angle = '#57606a',
          unmatched = '#762c00',
        }),
        keyword = '#bc4c00',
        invalid = m({
          illegal = m({
            bg = '#762c00',
            text = '#f6f8fa',
          }),
        }),
        meta = m({
          diff = m({
            range = '#8250df',
          }),
        }),
        string = m({
          regexp = '#0550ae',
          default = '#0a3069',
        }),
        entity = m({
          default = '#6639ba',
          tag = '#0550ae',
        }),
        variable = '#953800',
        constant = m({
          default = '#0550ae',
          other = m({
            reference = m({
              link = '#0a3069',
            }),
          }),
        }),
        storage = m({
          modifier = m({
            import = '#24292f',
          }),
        }),
        markup = m({
          list = '#3b2300',
          changed = m({
            bg = '#ffd8b5',
            text = '#953800',
          }),
          italic = '#24292f',
          bold = '#24292f',
          ignored = m({
            bg = '#0550ae',
            text = '#eaeef2',
          }),
          heading = '#0550ae',
          inserted = m({
            bg = '#ddf4ff',
            text = '#0550ae',
          }),
          deleted = m({
            bg = '#fff1e5',
            text = '#762c00',
          }),
        }),
        comment = '#57606a',
        sublimelinter = m({
          gutter = m({
            mark = '#8c959f',
          }),
        }),
        carriage = m({
          ['return'] = m({
            bg = '#bc4c00',
            text = '#f6f8fa',
          }),
        }),
      }),
    }),
    ansi = m({
      white = m({
        bright = '#8c959f',
        default = '#6e7781',
      }),
      blue = m({
        bright = '#218bff',
        default = '#0969da',
      }),
      green = m({
        bright = '#0969da',
        default = '#0550ae',
      }),
      red = m({
        bright = '#953800',
        default = '#bc4c00',
      }),
      gray = '#6e7781',
      magenta = m({
        bright = '#a475f9',
        default = '#8250df',
      }),
      cyan = m({
        bright = '#3192aa',
        default = '#1b7c83',
      }),
      black = m({
        bright = '#57606a',
        default = '#24292f',
      }),
      yellow = m({
        bright = '#633c01',
        default = '#4d2d00',
      }),
    }),
  }),
  base = m({
    display = m({
      color = m({
        white = '#ffffff',
        teal = m({
          [0] = '#c7f5ef',
          [1] = '#89ebe1',
          [2] = '#22d3c7',
          [3] = '#1db9b4',
          [4] = '#179b9b',
          [5] = '#127e81',
          [6] = '#106e75',
          [7] = '#0d5b63',
          [8] = '#0a4852',
          [9] = '#073740',
        }),
        green = m({
          [0] = '#caf7ca',
          [1] = '#9ceda0',
          [2] = '#54d961',
          [3] = '#31bf46',
          [4] = '#30a147',
          [5] = '#2c8141',
          [6] = '#2b6e3f',
          [7] = '#285c3b',
          [8] = '#254b34',
          [9] = '#1d3528',
        }),
        red = m({
          [0] = '#ffe2e0',
          [1] = '#fecdcd',
          [2] = '#fda5a7',
          [3] = '#fb8389',
          [4] = '#f85461',
          [5] = '#df0c24',
          [6] = '#c50d28',
          [7] = '#a60c29',
          [8] = '#880c27',
          [9] = '#610a20',
        }),
        gray = m({
          [0] = '#e8ecf2',
          [1] = '#d2dae4',
          [2] = '#b4c0cf',
          [3] = '#9ba9bb',
          [4] = '#808fa3',
          [5] = '#647182',
          [6] = '#5c6570',
          [7] = '#4e535a',
          [8] = '#424448',
          [9] = '#303031',
        }),
        purple = m({
          [0] = '#f1e5ff',
          [1] = '#e6d2fe',
          [2] = '#d1b1fc',
          [3] = '#bc91f8',
          [4] = '#a672f3',
          [5] = '#894ceb',
          [6] = '#783ae4',
          [7] = '#6223d7',
          [8] = '#4f21ab',
          [9] = '#391b79',
        }),
        cyan = m({
          [0] = '#bdf4ff',
          [1] = '#7ae9ff',
          [2] = '#00d0fa',
          [3] = '#00b7db',
          [4] = '#0099b8',
          [5] = '#007b94',
          [6] = '#006a80',
          [7] = '#00596b',
          [8] = '#004857',
          [9] = '#003742',
        }),
        plum = m({
          [0] = '#f8e5ff',
          [1] = '#f0cdfe',
          [2] = '#e2a7fb',
          [3] = '#d487f7',
          [4] = '#c264f2',
          [5] = '#a830e8',
          [6] = '#961edc',
          [7] = '#7d1eb8',
          [8] = '#651d96',
          [9] = '#471769',
        }),
        coral = m({
          [0] = '#ffe5db',
          [1] = '#fecebe',
          [2] = '#fcab92',
          [3] = '#f88768',
          [4] = '#f25f3a',
          [5] = '#d43511',
          [6] = '#ba2e12',
          [7] = '#9b2712',
          [8] = '#7e2011',
          [9] = '#5d180e',
        }),
        black = '#0d1117',
        pink = m({
          [0] = '#ffe5f1',
          [1] = '#fdc9e2',
          [2] = '#f8a5cf',
          [3] = '#f184bc',
          [4] = '#e55da5',
          [5] = '#ce2c85',
          [6] = '#b12f79',
          [7] = '#8e2e66',
          [8] = '#6e2b53',
          [9] = '#4d233d',
        }),
        brown = m({
          [0] = '#eeeae2',
          [1] = '#dfd7c8',
          [2] = '#cbbda4',
          [3] = '#b8a484',
          [4] = '#a68b64',
          [5] = '#856d4c',
          [6] = '#755f43',
          [7] = '#64513a',
          [8] = '#51412f',
          [9] = '#3a2e22',
        }),
        pine = m({
          [0] = '#bff8db',
          [1] = '#80efb9',
          [2] = '#1dd781',
          [3] = '#1dbf76',
          [4] = '#1aa267',
          [5] = '#167e53',
          [6] = '#156f4b',
          [7] = '#135d41',
          [8] = '#114b36',
          [9] = '#0d3627',
        }),
        blue = m({
          [0] = '#d1f0ff',
          [1] = '#ade1ff',
          [2] = '#75c8ff',
          [3] = '#47afff',
          [4] = '#0f8fff',
          [5] = '#006edb',
          [6] = '#005fcc',
          [7] = '#004db3',
          [8] = '#003d99',
          [9] = '#002b75',
        }),
        orange = m({
          [0] = '#ffe7d1',
          [1] = '#fecfaa',
          [2] = '#fbaf74',
          [3] = '#f68c41',
          [4] = '#eb670f',
          [5] = '#b8500f',
          [6] = '#a24610',
          [7] = '#8d3c11',
          [8] = '#70300f',
          [9] = '#54230d',
        }),
        auburn = m({
          [0] = '#f2e9e9',
          [1] = '#e6d6d5',
          [2] = '#d4b7b5',
          [3] = '#c59e9b',
          [4] = '#b4827e',
          [5] = '#9d615c',
          [6] = '#8a5551',
          [7] = '#744744',
          [8] = '#5d3937',
          [9] = '#432928',
        }),
        olive = m({
          [0] = '#f0f0ad',
          [1] = '#dbe170',
          [2] = '#b9c832',
          [3] = '#9bae32',
          [4] = '#819532',
          [5] = '#64762d',
          [6] = '#56682c',
          [7] = '#495a2b',
          [8] = '#3b4927',
          [9] = '#2a331f',
        }),
        lime = m({
          [0] = '#e3f2b5',
          [1] = '#c7e580',
          [2] = '#9bd039',
          [3] = '#80b530',
          [4] = '#6c9d2f',
          [5] = '#527a29',
          [6] = '#476c28',
          [7] = '#3a5b25',
          [8] = '#2f4a21',
          [9] = '#213319',
        }),
        lemon = m({
          [0] = '#f7eea1',
          [1] = '#f0db3d',
          [2] = '#d8bd0e',
          [3] = '#c2a60a',
          [4] = '#a68c07',
          [5] = '#866e04',
          [6] = '#786002',
          [7] = '#654f01',
          [8] = '#523f00',
          [9] = '#3d2e00',
        }),
        yellow = m({
          [0] = '#ffec9e',
          [1] = '#ffd642',
          [2] = '#ebb400',
          [3] = '#d19d00',
          [4] = '#b88700',
          [5] = '#946a00',
          [6] = '#805900',
          [7] = '#704d00',
          [8] = '#5c3d00',
          [9] = '#422b00',
        }),
        indigo = m({
          [0] = '#e5e9ff',
          [1] = '#d2d7fe',
          [2] = '#b1b9fb',
          [3] = '#979ff7',
          [4] = '#7a82f0',
          [5] = '#5a61e7',
          [6] = '#494edf',
          [7] = '#393cd5',
          [8] = '#2d2db4',
          [9] = '#25247b',
        }),
      }),
    }),
    color = m({
      white = '#ffffff',
      blue = m({
        [0] = '#ddf4ff',
        [1] = '#b6e3ff',
        [2] = '#80ccff',
        [3] = '#54aeff',
        [4] = '#218bff',
        [5] = '#0969da',
        [6] = '#0550ae',
        [7] = '#033d8b',
        [8] = '#0a3069',
        [9] = '#002155',
      }),
      green = m({
        [0] = '#dafbe1',
        [1] = '#aceebb',
        [2] = '#6fdd8b',
        [3] = '#4ac26b',
        [4] = '#2da44e',
        [5] = '#1a7f37',
        [6] = '#116329',
        [7] = '#044f1e',
        [8] = '#003d16',
        [9] = '#002d11',
      }),
      orange = m({
        [0] = '#fff1e5',
        [1] = '#ffd8b5',
        [2] = '#ffb77c',
        [3] = '#fb8f44',
        [4] = '#e16f24',
        [5] = '#bc4c00',
        [6] = '#953800',
        [7] = '#762c00',
        [8] = '#5c2200',
        [9] = '#471700',
      }),
      red = m({
        [0] = '#ffebe9',
        [1] = '#ffcecb',
        [2] = '#ffaba8',
        [3] = '#ff8182',
        [4] = '#fa4549',
        [5] = '#cf222e',
        [6] = '#a40e26',
        [7] = '#82071e',
        [8] = '#660018',
        [9] = '#4c0014',
      }),
      neutral = m({
        [0] = '#f6f8fa',
        [1] = '#eaeef2',
        [2] = '#d0d7de',
        [3] = '#afb8c1',
        [4] = '#8c959f',
        [5] = '#6e7781',
        [6] = '#57606a',
        [7] = '#424a53',
        [8] = '#32383f',
        [9] = '#24292f',
      }),
      coral = m({
        [0] = '#fff0eb',
        [1] = '#ffd6cc',
        [2] = '#ffb4a1',
        [3] = '#fd8c73',
        [4] = '#ec6547',
        [5] = '#c4432b',
        [6] = '#9e2f1c',
        [7] = '#801f0f',
        [8] = '#691105',
        [9] = '#510901',
      }),
      transparent = '#ffffff00',
      black = '#1f2328',
      pink = m({
        [0] = '#ffeff7',
        [1] = '#ffd3eb',
        [2] = '#ffadda',
        [3] = '#ff80c8',
        [4] = '#e85aad',
        [5] = '#bf3989',
        [6] = '#99286e',
        [7] = '#772057',
        [8] = '#611347',
        [9] = '#4d0336',
      }),
      yellow = m({
        [0] = '#fff8c5',
        [1] = '#fae17d',
        [2] = '#eac54f',
        [3] = '#d4a72c',
        [4] = '#bf8700',
        [5] = '#9a6700',
        [6] = '#7d4e00',
        [7] = '#633c01',
        [8] = '#4d2d00',
        [9] = '#3b2300',
      }),
      purple = m({
        [0] = '#fbefff',
        [1] = '#ecd8ff',
        [2] = '#d8b9ff',
        [3] = '#c297ff',
        [4] = '#a475f9',
        [5] = '#8250df',
        [6] = '#6639ba',
        [7] = '#512a97',
        [8] = '#3e1f79',
        [9] = '#2e1461',
      }),
    }),
  }),
  card = m({
    bgColor = '#ffffff',
  }),
  buttonCounter = m({
    invisible = m({
      bgColor = m({
        rest = '#afb8c133',
      }),
    }),
    danger = m({
      fgColor = m({
        rest = '#c21c2c',
        disabled = '#be4e0280',
        hover = '#ffffff',
      }),
      bgColor = m({
        rest = '#bc4c001a',
        disabled = '#bc4c000d',
        hover = '#ffffff33',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#002d1133',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#afb8c133',
      }),
    }),
    outline = m({
      fgColor = m({
        rest = '#0550ae',
        disabled = '#0969da80',
        hover = '#ffffff',
      }),
      bgColor = m({
        rest = '#0969da1a',
        disabled = '#0969da0d',
        hover = '#ffffff33',
      }),
    }),
  }),
  data = m({
    teal = m({
      color = m({
        muted = '#c7f5ef',
        default = '#179b9b',
      }),
    }),
    green = m({
      color = m({
        muted = '#caf7ca',
        default = '#30a147',
      }),
    }),
    orange = m({
      color = m({
        muted = '#ffe7d1',
        default = '#eb670f',
      }),
    }),
    red = m({
      color = m({
        muted = '#ffe2e0',
        default = '#df0c24',
      }),
    }),
    gray = m({
      color = m({
        muted = '#e8ecf2',
        default = '#808fa3',
      }),
    }),
    purple = m({
      color = m({
        muted = '#f1e5ff',
        default = '#894ceb',
      }),
    }),
    auburn = m({
      color = m({
        muted = '#f2e9e9',
        default = '#9d615c',
      }),
    }),
    pink = m({
      color = m({
        muted = '#ffe5f1',
        default = '#ce2c85',
      }),
    }),
    yellow = m({
      color = m({
        muted = '#ffec9e',
        default = '#b88700',
      }),
    }),
    blue = m({
      color = m({
        muted = '#d1f0ff',
        default = '#006edb',
      }),
    }),
  }),
  display = m({
    teal = m({
      bgColor = m({
        muted = '#c7f5ef',
        emphasis = '#127e81',
      }),
      borderColor = m({
        muted = '#89ebe1',
        emphasis = '#127e81',
      }),
      fgColor = '#106e75',
    }),
    green = m({
      bgColor = m({
        muted = '#caf7ca',
        emphasis = '#2c8141',
      }),
      borderColor = m({
        muted = '#9ceda0',
        emphasis = '#2c8141',
      }),
      fgColor = '#2b6e3f',
    }),
    red = m({
      bgColor = m({
        muted = '#ffe2e0',
        emphasis = '#df0c24',
      }),
      borderColor = m({
        muted = '#fecdcd',
        emphasis = '#df0c24',
      }),
      fgColor = '#c50d28',
    }),
    gray = m({
      bgColor = m({
        muted = '#e8ecf2',
        emphasis = '#647182',
      }),
      borderColor = m({
        muted = '#d2dae4',
        emphasis = '#647182',
      }),
      fgColor = '#5c6570',
    }),
    purple = m({
      bgColor = m({
        muted = '#f1e5ff',
        emphasis = '#894ceb',
      }),
      borderColor = m({
        muted = '#e6d2fe',
        emphasis = '#894ceb',
      }),
      fgColor = '#783ae4',
    }),
    cyan = m({
      bgColor = m({
        muted = '#bdf4ff',
        emphasis = '#007b94',
      }),
      borderColor = m({
        muted = '#7ae9ff',
        emphasis = '#007b94',
      }),
      fgColor = '#006a80',
    }),
    plum = m({
      bgColor = m({
        muted = '#f8e5ff',
        emphasis = '#a830e8',
      }),
      borderColor = m({
        muted = '#f0cdfe',
        emphasis = '#a830e8',
      }),
      fgColor = '#961edc',
    }),
    coral = m({
      bgColor = m({
        muted = '#ffe5db',
        emphasis = '#d43511',
      }),
      borderColor = m({
        muted = '#fecebe',
        emphasis = '#d43511',
      }),
      fgColor = '#ba2e12',
    }),
    pink = m({
      bgColor = m({
        muted = '#ffe5f1',
        emphasis = '#ce2c85',
      }),
      borderColor = m({
        muted = '#fdc9e2',
        emphasis = '#ce2c85',
      }),
      fgColor = '#b12f79',
    }),
    brown = m({
      bgColor = m({
        muted = '#eeeae2',
        emphasis = '#856d4c',
      }),
      borderColor = m({
        muted = '#dfd7c8',
        emphasis = '#856d4c',
      }),
      fgColor = '#755f43',
    }),
    pine = m({
      bgColor = m({
        muted = '#bff8db',
        emphasis = '#167e53',
      }),
      borderColor = m({
        muted = '#80efb9',
        emphasis = '#167e53',
      }),
      fgColor = '#156f4b',
    }),
    blue = m({
      bgColor = m({
        muted = '#d1f0ff',
        emphasis = '#006edb',
      }),
      borderColor = m({
        muted = '#ade1ff',
        emphasis = '#006edb',
      }),
      fgColor = '#005fcc',
    }),
    orange = m({
      bgColor = m({
        muted = '#ffe7d1',
        emphasis = '#b8500f',
      }),
      borderColor = m({
        muted = '#fecfaa',
        emphasis = '#b8500f',
      }),
      fgColor = '#a24610',
    }),
    auburn = m({
      bgColor = m({
        muted = '#f2e9e9',
        emphasis = '#9d615c',
      }),
      borderColor = m({
        muted = '#e6d6d5',
        emphasis = '#9d615c',
      }),
      fgColor = '#8a5551',
    }),
    olive = m({
      bgColor = m({
        muted = '#f0f0ad',
        emphasis = '#64762d',
      }),
      borderColor = m({
        muted = '#dbe170',
        emphasis = '#64762d',
      }),
      fgColor = '#56682c',
    }),
    lime = m({
      bgColor = m({
        muted = '#e3f2b5',
        emphasis = '#527a29',
      }),
      borderColor = m({
        muted = '#c7e580',
        emphasis = '#527a29',
      }),
      fgColor = '#476c28',
    }),
    lemon = m({
      bgColor = m({
        muted = '#f7eea1',
        emphasis = '#866e04',
      }),
      borderColor = m({
        muted = '#f0db3d',
        emphasis = '#866e04',
      }),
      fgColor = '#786002',
    }),
    yellow = m({
      bgColor = m({
        muted = '#ffec9e',
        emphasis = '#946a00',
      }),
      borderColor = m({
        muted = '#ffd642',
        emphasis = '#946a00',
      }),
      fgColor = '#805900',
    }),
    indigo = m({
      bgColor = m({
        muted = '#e5e9ff',
        emphasis = '#5a61e7',
      }),
      borderColor = m({
        muted = '#d2d7fe',
        emphasis = '#5a61e7',
      }),
      fgColor = '#494edf',
    }),
  }),
  underlineNav = m({
    iconColor = m({
      rest = '#636c76',
    }),
    borderColor = m({
      hover = '#afb8c133',
      active = '#fd8c73',
    }),
  }),
  avatar = m({
    bgColor = '#ffffff',
    borderColor = '#1f232826',
    shadow = '0px 0px 0px 2px #ffffffcc',
  }),
  borderColor = m({
    upsell = m({
      muted = '#c297ff66',
      emphasis = '#8250df',
    }),
    success = m({
      muted = '#54aeff66',
      emphasis = '#218bff',
    }),
    sponsors = m({
      muted = '#ff80c866',
      emphasis = '#bf3989',
    }),
    severe = m({
      muted = '#fb8f4466',
      emphasis = '#bc4c00',
    }),
    muted = '#d0d7deb3',
    open = m({
      muted = '#fb8f4466',
      emphasis = '#e16f24',
    }),
    disabled = '#eaeef2b3',
    danger = m({
      muted = '#fb8f4466',
      emphasis = '#bc4c00',
    }),
    closed = m({
      muted = '#afb8c166',
      emphasis = '#6e7781',
    }),
    attention = m({
      muted = '#d4a72c66',
      emphasis = '#bf8700',
    }),
    accent = m({
      muted = '#54aeff66',
      emphasis = '#0969da',
    }),
    translucent = '#1f232826',
    emphasis = '#6e7781',
    default = '#d0d7de',
    neutral = m({
      muted = '#afb8c133',
      emphasis = '#6e7781',
    }),
    transparent = '#ffffff00',
    done = m({
      muted = '#c297ff66',
      emphasis = '#8250df',
    }),
  }),
  header = m({
    bgColor = '#24292f',
    borderColor = m({
      divider = '#57606a',
    }),
    fgColor = m({
      logo = '#ffffff',
      default = '#ffffffb3',
    }),
  }),
  topicTag = m({
    borderColor = '#ffffff00',
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#54aeff',
      }),
    }),
  }),
  label = m({
    teal = m({
      fgColor = m({
        rest = '#106e75',
        active = '#0a4852',
        hover = '#0d5b63',
      }),
      bgColor = m({
        rest = '#c7f5ef',
        active = '#22d3c7',
        hover = '#89ebe1',
      }),
    }),
    green = m({
      fgColor = m({
        rest = '#2b6e3f',
        active = '#254b34',
        hover = '#285c3b',
      }),
      bgColor = m({
        rest = '#caf7ca',
        active = '#54d961',
        hover = '#9ceda0',
      }),
    }),
    red = m({
      fgColor = m({
        rest = '#c50d28',
        active = '#880c27',
        hover = '#a60c29',
      }),
      bgColor = m({
        rest = '#ffe2e0',
        active = '#fda5a7',
        hover = '#fecdcd',
      }),
    }),
    gray = m({
      fgColor = m({
        rest = '#5c6570',
        active = '#424448',
        hover = '#4e535a',
      }),
      bgColor = m({
        rest = '#e8ecf2',
        active = '#b4c0cf',
        hover = '#d2dae4',
      }),
    }),
    purple = m({
      fgColor = m({
        rest = '#783ae4',
        active = '#4f21ab',
        hover = '#6223d7',
      }),
      bgColor = m({
        rest = '#f1e5ff',
        active = '#d1b1fc',
        hover = '#e6d2fe',
      }),
    }),
    cyan = m({
      fgColor = m({
        rest = '#006a80',
        active = '#004857',
        hover = '#00596b',
      }),
      bgColor = m({
        rest = '#bdf4ff',
        active = '#00d0fa',
        hover = '#7ae9ff',
      }),
    }),
    plum = m({
      fgColor = m({
        rest = '#961edc',
        active = '#651d96',
        hover = '#7d1eb8',
      }),
      bgColor = m({
        rest = '#f8e5ff',
        active = '#e2a7fb',
        hover = '#f0cdfe',
      }),
    }),
    coral = m({
      fgColor = m({
        rest = '#ba2e12',
        active = '#7e2011',
        hover = '#9b2712',
      }),
      bgColor = m({
        rest = '#ffe5db',
        active = '#fcab92',
        hover = '#fecebe',
      }),
    }),
    pink = m({
      fgColor = m({
        rest = '#b12f79',
        active = '#6e2b53',
        hover = '#8e2e66',
      }),
      bgColor = m({
        rest = '#ffe5f1',
        active = '#f8a5cf',
        hover = '#fdc9e2',
      }),
    }),
    brown = m({
      fgColor = m({
        rest = '#755f43',
        active = '#51412f',
        hover = '#64513a',
      }),
      bgColor = m({
        rest = '#eeeae2',
        active = '#cbbda4',
        hover = '#dfd7c8',
      }),
    }),
    pine = m({
      fgColor = m({
        rest = '#156f4b',
        active = '#114b36',
        hover = '#135d41',
      }),
      bgColor = m({
        rest = '#bff8db',
        active = '#1dd781',
        hover = '#80efb9',
      }),
    }),
    blue = m({
      fgColor = m({
        rest = '#005fcc',
        active = '#003d99',
        hover = '#004db3',
      }),
      bgColor = m({
        rest = '#d1f0ff',
        active = '#75c8ff',
        hover = '#ade1ff',
      }),
    }),
    orange = m({
      fgColor = m({
        rest = '#a24610',
        active = '#70300f',
        hover = '#8d3c11',
      }),
      bgColor = m({
        rest = '#ffe7d1',
        active = '#fbaf74',
        hover = '#fecfaa',
      }),
    }),
    auburn = m({
      fgColor = m({
        rest = '#8a5551',
        active = '#5d3937',
        hover = '#744744',
      }),
      bgColor = m({
        rest = '#f2e9e9',
        active = '#d4b7b5',
        hover = '#e6d6d5',
      }),
    }),
    olive = m({
      fgColor = m({
        rest = '#56682c',
        active = '#3b4927',
        hover = '#495a2b',
      }),
      bgColor = m({
        rest = '#f0f0ad',
        active = '#b9c832',
        hover = '#dbe170',
      }),
    }),
    lime = m({
      fgColor = m({
        rest = '#476c28',
        active = '#2f4a21',
        hover = '#3a5b25',
      }),
      bgColor = m({
        rest = '#e3f2b5',
        active = '#9bd039',
        hover = '#c7e580',
      }),
    }),
    lemon = m({
      fgColor = m({
        rest = '#786002',
        active = '#523f00',
        hover = '#654f01',
      }),
      bgColor = m({
        rest = '#f7eea1',
        active = '#d8bd0e',
        hover = '#f0db3d',
      }),
    }),
    yellow = m({
      fgColor = m({
        rest = '#805900',
        active = '#5c3d00',
        hover = '#704d00',
      }),
      bgColor = m({
        rest = '#ffec9e',
        active = '#ebb400',
        hover = '#ffd642',
      }),
    }),
    indigo = m({
      fgColor = m({
        rest = '#494edf',
        active = '#2d2db4',
        hover = '#393cd5',
      }),
      bgColor = m({
        rest = '#e5e9ff',
        active = '#b1b9fb',
        hover = '#d2d7fe',
      }),
    }),
  }),
  diffBlob = m({
    addition = m({
      fgColor = m({
        num = '#1f2328',
        text = '#1f2328',
      }),
      bgColor = m({
        num = '#54aeff66',
        line = '#ddf4ff80',
        word = '#54aeff66',
      }),
    }),
    expander = m({
      iconColor = '#636c76',
    }),
    deletion = m({
      fgColor = m({
        num = '#1f2328',
        text = '#1f2328',
      }),
      bgColor = m({
        num = '#fb8f4466',
        line = '#fff1e580',
        word = '#ffb77c80',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#54aeff66',
      }),
    }),
  }),
  timelineBadge = m({
    bgColor = '#eaeef2',
  }),
  bgColor = m({
    white = '#ffffff',
    upsell = m({
      muted = '#fbefff',
      emphasis = '#8250df',
    }),
    success = m({
      muted = '#ddf4ff',
      emphasis = '#0f72e3',
    }),
    sponsors = m({
      muted = '#ffeff7',
      emphasis = '#bf3989',
    }),
    severe = m({
      muted = '#fff1e5',
      emphasis = '#bc4c00',
    }),
    muted = '#f6f8fa',
    inset = '#f6f8fa',
    open = m({
      muted = '#fb8f4466',
      emphasis = '#e16f24',
    }),
    disabled = '#eaeef2b3',
    danger = m({
      muted = '#fff1e5',
      emphasis = '#bc4c00',
    }),
    closed = m({
      muted = '#afb8c166',
      emphasis = '#6e7781',
    }),
    black = '#1f2328',
    attention = m({
      muted = '#fff8c5',
      emphasis = '#9a6700',
    }),
    accent = m({
      muted = '#ddf4ff',
      emphasis = '#0969da',
    }),
    emphasis = '#24292f',
    default = '#ffffff',
    neutral = m({
      muted = '#afb8c133',
      emphasis = '#6e7781',
    }),
    transparent = '#ffffff00',
    inverse = '#24292f',
    done = m({
      muted = '#fbefff',
      emphasis = '#8250df',
    }),
  }),
  skeletonLoader = m({
    bgColor = '#f6f8fa',
  }),
  fgColor = m({
    white = '#ffffff',
    upsell = '#8250df',
    success = '#0969da',
    sponsors = '#bf3989',
    severe = '#bc4c00',
    onEmphasis = '#ffffff',
    muted = '#636c76',
    link = '#0969da',
    open = '#bc4c00',
    disabled = '#8c959f',
    danger = '#be4e02',
    closed = '#6e7781',
    black = '#1f2328',
    attention = '#9a6700',
    accent = '#0969da',
    default = '#1f2328',
    neutral = '#6e7781',
    done = '#8250df',
  }),
  button = m({
    invisible = m({
      bgColor = m({
        rest = '#ffffff00',
        disabled = '#eaeef2b3',
        active = '#d0d7de66',
        hover = '#d0d7de33',
      }),
      borderColor = m({
        rest = '#ffffff00',
        disabled = '#eaeef2b3',
        hover = '#ffffff00',
      }),
      iconColor = m({
        rest = '#636c76',
        disabled = '#8c959f',
        hover = '#636c76',
      }),
      fgColor = m({
        rest = '#0969da',
        disabled = '#8c959f',
        hover = '#0969da',
      }),
    }),
    danger = m({
      fgColor = m({
        rest = '#be4e02',
        disabled = '#be4e0280',
        active = '#ffffff',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #47170033',
      }),
      bgColor = m({
        rest = '#f6f8fa',
        disabled = '#eaeef2b3',
        active = '#7e2f00',
        hover = '#953800',
      }),
      borderColor = m({
        rest = '#d0d7de',
        active = '#1f232826',
        hover = '#1f232826',
      }),
      iconColor = m({
        rest = '#be4e02',
        hover = '#ffffff',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#f6f8fa',
        disabled = '#eaeef2b3',
        hover = '#eef1f4',
        active = '#e7ebef',
        selected = '#e7ebef',
      }),
      borderColor = m({
        rest = '#d0d7de',
        disabled = '#eaeef2b3',
        active = '#d0d7de',
        hover = '#d0d7de',
      }),
      fgColor = m({
        rest = '#24292f',
      }),
      shadow = m({
        resting = '0px 1px 0px 0px #1f23280a',
      }),
    }),
    primary = m({
      fgColor = m({
        rest = '#ffffff',
        disabled = '#ffffffcc',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #0021554d',
      }),
      bgColor = m({
        rest = '#0f72e3',
        disabled = '#92caff',
        active = '#0b64ce',
        hover = '#0d6bd8',
      }),
      borderColor = m({
        rest = '#1f232826',
        disabled = '#92caff',
        active = '#1f232826',
        hover = '#1f232826',
      }),
      iconColor = m({
        rest = '#ffffffcc',
      }),
    }),
    inactive = m({
      fgColor = '#57606a',
      bgColor = '#eaeef2',
    }),
    star = m({
      iconColor = '#eac54f',
    }),
    outline = m({
      bgColor = m({
        rest = '#f6f8fa',
        disabled = '#f6f8fa',
        active = '#0757ba',
        hover = '#0969da',
      }),
      borderColor = m({
        hover = '#1f232826',
        active = '#1f232826',
      }),
      fgColor = m({
        rest = '#0969da',
        disabled = '#0969da80',
        active = '#ffffff',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #00215533',
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

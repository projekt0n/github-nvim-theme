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
  topicTag = m({
    borderColor = '#ffffff00',
  }),
  timelineBadge = m({
    bgColor = '#eaeef2',
  }),
  bgColor = m({
    attention = m({
      emphasis = '#9a6700',
      muted = '#fff8c5',
    }),
    white = '#ffffff',
    inset = '#f6f8fa',
    success = m({
      emphasis = '#0f72e3',
      muted = '#ddf4ff',
    }),
    sponsors = m({
      emphasis = '#bf3989',
      muted = '#ffeff7',
    }),
    severe = m({
      emphasis = '#cf222e',
      muted = '#ffebe9',
    }),
    default = '#ffffff',
    muted = '#f6f8fa',
    inverse = '#24292f',
    done = m({
      emphasis = '#8250df',
      muted = '#fbefff',
    }),
    disabled = '#eaeef2b3',
    danger = m({
      emphasis = '#cf222e',
      muted = '#ffebe9',
    }),
    open = m({
      emphasis = '#cf222e',
      muted = '#ffebe9',
    }),
    transparent = '#ffffff00',
    neutral = m({
      emphasis = '#6e7781',
      muted = '#afb8c133',
    }),
    accent = m({
      emphasis = '#0969da',
      muted = '#ddf4ff',
    }),
    black = '#1f2328',
    closed = m({
      emphasis = '#6e7781',
      muted = '#f6f8fa',
    }),
    upsell = m({
      emphasis = '#8250df',
      muted = '#fbefff',
    }),
    emphasis = '#24292f',
  }),
  skeletonLoader = m({
    bgColor = '#f6f8fa',
  }),
  sideNav = m({
    bgColor = m({
      selected = '#ffffff',
    }),
  }),
  button = m({
    inactive = m({
      bgColor = '#eaeef2',
      fgColor = '#57606a',
    }),
    star = m({
      iconColor = '#eac54f',
    }),
    default = m({
      borderColor = m({
        rest = '#d0d7de',
        active = '#d0d7de',
        disabled = '#eaeef2b3',
        hover = '#d0d7de',
      }),
      fgColor = m({
        rest = '#24292f',
      }),
      shadow = m({
        resting = '0px 1px 0px 0px #1f23280a',
      }),
      bgColor = m({
        hover = '#eef1f4',
        selected = '#e7ebef',
        active = '#e7ebef',
        disabled = '#eaeef2b3',
        rest = '#f6f8fa',
      }),
    }),
    invisible = m({
      borderColor = m({
        rest = '#ffffff00',
        disabled = '#eaeef2b3',
        hover = '#ffffff00',
      }),
      fgColor = m({
        rest = '#0969da',
        disabled = '#8c959f',
        hover = '#0969da',
      }),
      iconColor = m({
        rest = '#636c76',
        disabled = '#8c959f',
        hover = '#636c76',
      }),
      bgColor = m({
        rest = '#ffffff00',
        active = '#d0d7de66',
        disabled = '#eaeef2b3',
        hover = '#d0d7de33',
      }),
    }),
    outline = m({
      borderColor = m({
        active = '#1f232826',
        hover = '#1f232826',
      }),
      fgColor = m({
        rest = '#0969da',
        active = '#ffffff',
        disabled = '#0969da80',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #00215533',
      }),
      bgColor = m({
        rest = '#f6f8fa',
        active = '#0757ba',
        disabled = '#f6f8fa',
        hover = '#0969da',
      }),
    }),
    danger = m({
      iconColor = m({
        hover = '#ffffff',
        rest = '#d1242f',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #4c001433',
      }),
      bgColor = m({
        rest = '#f6f8fa',
        active = '#8b0820',
        disabled = '#eaeef2b3',
        hover = '#a40e26',
      }),
      borderColor = m({
        active = '#1f232826',
        rest = '#d0d7de',
        hover = '#1f232826',
      }),
      fgColor = m({
        rest = '#d1242f',
        active = '#ffffff',
        disabled = '#d1242f80',
        hover = '#ffffff',
      }),
    }),
    primary = m({
      iconColor = m({
        rest = '#ffffffcc',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #0021554d',
      }),
      bgColor = m({
        rest = '#0f72e3',
        active = '#0b64ce',
        disabled = '#92caff',
        hover = '#0d6bd8',
      }),
      borderColor = m({
        rest = '#1f232826',
        active = '#1f232826',
        disabled = '#92caff',
        hover = '#1f232826',
      }),
      fgColor = m({
        disabled = '#ffffffcc',
        rest = '#ffffff',
      }),
    }),
  }),
  shadow = m({
    floating = m({
      xlarge = '0px 0px 0px 1px #d0d7de, 0px 56px 112px 0px #424a5352',
      legacy = '0px 6px 12px -3px #424a530a, 0px 6px 18px 0px #424a531f',
      large = '0px 0px 0px 1px #d0d7de, 0px 40px 80px 0px #424a533d',
      small = '0px 0px 0px 1px #d0d7de80, 0px 6px 12px -3px #424a530a, 0px 6px 18px 0px #424a531f',
      medium = '0px 0px 0px 1px #d0d7de, 0px 8px 16px -4px #424a5314, 0px 4px 32px -4px #424a5314, 0px 24px 48px -12px #424a5314, 0px 48px 96px -24px #424a5314',
    }),
    inset = 'inset 0px 1px 0px 0px #1f23280a',
    resting = m({
      small = '0px 1px 0px 0px #1f23280a',
      xsmall = '0px 1px 0px 0px #1f23281a',
      medium = '0px 3px 6px 0px #424a531f',
    }),
  }),
  diffBlob = m({
    deletion = m({
      bgColor = m({
        line = '#ffebe9',
        word = '#ff818266',
        num = '#ffcecb',
      }),
      fgColor = m({
        num = '#1f2328',
        text = '#1f2328',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#54aeff66',
      }),
    }),
    addition = m({
      bgColor = m({
        line = '#ddf4ff',
        word = '#b6e3ff',
        num = '#d5f1ff',
      }),
      fgColor = m({
        num = '#1f2328',
        text = '#1f2328',
      }),
    }),
    expander = m({
      iconColor = '#636c76',
    }),
  }),
  selectMenu = m({
    borderColor = '#ffffff00',
    bgColor = m({
      active = '#b6e3ff',
    }),
  }),
  avatar = m({
    borderColor = '#1f232826',
    shadow = '0px 0px 0px 2px #ffffffcc',
    bgColor = '#ffffff',
  }),
  reactionButton = m({
    selected = m({
      bgColor = m({
        hover = '#caecff',
        rest = '#ddf4ff',
      }),
      fgColor = m({
        hover = '#0550ae',
        rest = '#0969da',
      }),
    }),
  }),
  fgColor = m({
    white = '#ffffff',
    upsell = '#8250df',
    success = '#0969da',
    sponsors = '#bf3989',
    severe = '#cf222e',
    onEmphasis = '#ffffff',
    muted = '#636c76',
    link = '#0969da',
    done = '#8250df',
    disabled = '#8c959f',
    danger = '#d1242f',
    open = '#cf222e',
    black = '#1f2328',
    neutral = '#6e7781',
    accent = '#0969da',
    attention = '#9a6700',
    default = '#1f2328',
    closed = '#6e7781',
  }),
  headerSearch = m({
    borderColor = '#57606a',
    bgColor = '#24292f',
  }),
  page = m({
    header = m({
      bgColor = '#f6f8fa',
    }),
  }),
  header = m({
    borderColor = m({
      divider = '#57606a',
    }),
    fgColor = m({
      default = '#ffffffb3',
      logo = '#ffffff',
    }),
    bgColor = '#24292f',
  }),
  overlay = m({
    borderColor = '#d0d7de80',
    backdrop = m({
      bgColor = '#8c959f33',
    }),
    bgColor = '#ffffff',
  }),
  focus = m({
    outline = '#0969da solid 2px',
    outlineColor = '#0969da',
  }),
  codeMirror = m({
    matchingBracket = m({
      fgColor = '#1f2328',
    }),
    lineNumber = m({
      fgColor = '#636c76',
    }),
    selection = m({
      bgColor = '#54aeff66',
    }),
    gutters = m({
      bgColor = '#ffffff',
    }),
    lines = m({
      bgColor = '#ffffff',
    }),
    gutterMarker = m({
      fgColor = m({
        default = '#ffffff',
        muted = '#636c76',
      }),
    }),
    fgColor = '#1f2328',
    syntax = m({
      fgColor = m({
        comment = '#24292f',
        variable = '#a40e26',
        constant = '#0550ae',
        storage = '#cf222e',
        entity = '#8250df',
        support = '#0550ae',
        keyword = '#cf222e',
        string = '#0a3069',
      }),
    }),
    activeline = m({
      bgColor = '#afb8c133',
    }),
    bgColor = '#ffffff',
    cursor = m({
      fgColor = '#1f2328',
    }),
  }),
  scale = m({
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
    transparent = '#ffffff00',
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
    black = '#1f2328',
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
    white = '#ffffff',
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
  }),
  counter = m({
    borderColor = '#ffffff00',
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        default = '#afb8c1',
        muted = '#d0d7de',
      }),
    }),
  }),
  controlTrack = m({
    borderColor = m({
      disabled = '#8c959f',
      rest = '#ffffff00',
    }),
    fgColor = m({
      disabled = '#ffffff',
      rest = '#636c76',
    }),
    bgColor = m({
      rest = '#eaeef2',
      active = '#d2d8de',
      disabled = '#8c959f',
      hover = '#dee3e8',
    }),
  }),
  base = m({
    color = m({
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
      black = '#1f2328',
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
      transparent = '#ffffff00',
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
      white = '#ffffff',
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
    }),
    display = m({
      color = m({
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
        white = '#ffffff',
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
      }),
    }),
  }),
  card = m({
    bgColor = '#ffffff',
  }),
  label = m({
    teal = m({
      bgColor = m({
        active = '#22d3c7',
        rest = '#c7f5ef',
        hover = '#89ebe1',
      }),
      fgColor = m({
        active = '#0a4852',
        rest = '#106e75',
        hover = '#0d5b63',
      }),
    }),
    red = m({
      bgColor = m({
        active = '#fda5a7',
        rest = '#ffe2e0',
        hover = '#fecdcd',
      }),
      fgColor = m({
        active = '#880c27',
        rest = '#c50d28',
        hover = '#a60c29',
      }),
    }),
    gray = m({
      bgColor = m({
        active = '#b4c0cf',
        rest = '#e8ecf2',
        hover = '#d2dae4',
      }),
      fgColor = m({
        active = '#424448',
        rest = '#5c6570',
        hover = '#4e535a',
      }),
    }),
    cyan = m({
      bgColor = m({
        active = '#00d0fa',
        rest = '#bdf4ff',
        hover = '#7ae9ff',
      }),
      fgColor = m({
        active = '#004857',
        rest = '#006a80',
        hover = '#00596b',
      }),
    }),
    coral = m({
      bgColor = m({
        active = '#fcab92',
        rest = '#ffe5db',
        hover = '#fecebe',
      }),
      fgColor = m({
        active = '#7e2011',
        rest = '#ba2e12',
        hover = '#9b2712',
      }),
    }),
    pine = m({
      bgColor = m({
        active = '#1dd781',
        rest = '#bff8db',
        hover = '#80efb9',
      }),
      fgColor = m({
        active = '#114b36',
        rest = '#156f4b',
        hover = '#135d41',
      }),
    }),
    auburn = m({
      bgColor = m({
        active = '#d4b7b5',
        rest = '#f2e9e9',
        hover = '#e6d6d5',
      }),
      fgColor = m({
        active = '#5d3937',
        rest = '#8a5551',
        hover = '#744744',
      }),
    }),
    orange = m({
      bgColor = m({
        active = '#fbaf74',
        rest = '#ffe7d1',
        hover = '#fecfaa',
      }),
      fgColor = m({
        active = '#70300f',
        rest = '#a24610',
        hover = '#8d3c11',
      }),
    }),
    blue = m({
      bgColor = m({
        active = '#75c8ff',
        rest = '#d1f0ff',
        hover = '#ade1ff',
      }),
      fgColor = m({
        active = '#003d99',
        rest = '#005fcc',
        hover = '#004db3',
      }),
    }),
    brown = m({
      bgColor = m({
        active = '#cbbda4',
        rest = '#eeeae2',
        hover = '#dfd7c8',
      }),
      fgColor = m({
        active = '#51412f',
        rest = '#755f43',
        hover = '#64513a',
      }),
    }),
    olive = m({
      bgColor = m({
        active = '#b9c832',
        rest = '#f0f0ad',
        hover = '#dbe170',
      }),
      fgColor = m({
        active = '#3b4927',
        rest = '#56682c',
        hover = '#495a2b',
      }),
    }),
    yellow = m({
      bgColor = m({
        active = '#ebb400',
        rest = '#ffec9e',
        hover = '#ffd642',
      }),
      fgColor = m({
        active = '#5c3d00',
        rest = '#805900',
        hover = '#704d00',
      }),
    }),
    pink = m({
      bgColor = m({
        active = '#f8a5cf',
        rest = '#ffe5f1',
        hover = '#fdc9e2',
      }),
      fgColor = m({
        active = '#6e2b53',
        rest = '#b12f79',
        hover = '#8e2e66',
      }),
    }),
    lime = m({
      bgColor = m({
        active = '#9bd039',
        rest = '#e3f2b5',
        hover = '#c7e580',
      }),
      fgColor = m({
        active = '#2f4a21',
        rest = '#476c28',
        hover = '#3a5b25',
      }),
    }),
    purple = m({
      bgColor = m({
        active = '#d1b1fc',
        rest = '#f1e5ff',
        hover = '#e6d2fe',
      }),
      fgColor = m({
        active = '#4f21ab',
        rest = '#783ae4',
        hover = '#6223d7',
      }),
    }),
    indigo = m({
      bgColor = m({
        active = '#b1b9fb',
        rest = '#e5e9ff',
        hover = '#d2d7fe',
      }),
      fgColor = m({
        active = '#2d2db4',
        rest = '#494edf',
        hover = '#393cd5',
      }),
    }),
    plum = m({
      bgColor = m({
        active = '#e2a7fb',
        rest = '#f8e5ff',
        hover = '#f0cdfe',
      }),
      fgColor = m({
        active = '#651d96',
        rest = '#961edc',
        hover = '#7d1eb8',
      }),
    }),
    green = m({
      bgColor = m({
        active = '#54d961',
        rest = '#caf7ca',
        hover = '#9ceda0',
      }),
      fgColor = m({
        active = '#254b34',
        rest = '#2b6e3f',
        hover = '#285c3b',
      }),
    }),
    lemon = m({
      bgColor = m({
        active = '#d8bd0e',
        rest = '#f7eea1',
        hover = '#f0db3d',
      }),
      fgColor = m({
        active = '#523f00',
        rest = '#786002',
        hover = '#654f01',
      }),
    }),
  }),
  controlKnob = m({
    borderColor = m({
      checked = '#0969da',
      disabled = '#eaeef2b3',
      rest = '#868f99',
    }),
    bgColor = m({
      checked = '#ffffff',
      disabled = '#eaeef2b3',
      rest = '#ffffff',
    }),
  }),
  highlight = m({
    neutral = m({
      bgColor = '#fff8c5',
    }),
  }),
  underlineNav = m({
    borderColor = m({
      active = '#fd8c73',
      hover = '#afb8c133',
    }),
    iconColor = m({
      rest = '#636c76',
    }),
  }),
  menu = m({
    bgColor = m({
      active = '#ffffff00',
    }),
  }),
  control = m({
    transparent = m({
      borderColor = m({
        active = '#ffffff00',
        rest = '#ffffff00',
        hover = '#ffffff00',
      }),
      bgColor = m({
        hover = '#d0d7de33',
        selected = '#d0d7de33',
        active = '#d0d7de66',
        disabled = '#eaeef2b3',
        rest = '#ffffff00',
      }),
    }),
    iconColor = m({
      rest = '#636c76',
    }),
    bgColor = m({
      hover = '#eef1f4',
      selected = '#f6f8fa',
      active = '#e7ebef',
      disabled = '#eaeef2b3',
      rest = '#f6f8fa',
    }),
    borderColor = m({
      danger = '#cf222e',
      disabled = '#eaeef2b3',
      emphasis = '#868f99',
      success = '#218bff',
      warning = '#bf8700',
      selected = '#f6f8fa',
      rest = '#d0d7de',
    }),
    checked = m({
      borderColor = m({
        rest = '#0969da',
        active = '#0757ba',
        disabled = '#8c959f',
        hover = '#0860ca',
      }),
      fgColor = m({
        disabled = '#ffffff',
        rest = '#ffffff',
      }),
      bgColor = m({
        rest = '#0969da',
        active = '#0757ba',
        disabled = '#8c959f',
        hover = '#0860ca',
      }),
    }),
    fgColor = m({
      placeholder = '#69727c',
      disabled = '#8c959f',
      rest = '#24292f',
    }),
    danger = m({
      bgColor = m({
        active = '#ffebe966',
        hover = '#ffebe9',
      }),
      fgColor = m({
        hover = '#d1242f',
        rest = '#d1242f',
      }),
    }),
  }),
  selection = m({
    bgColor = '#0969da33',
  }),
  data = m({
    teal = m({
      color = m({
        default = '#179b9b',
        muted = '#c7f5ef',
      }),
    }),
    orange = m({
      color = m({
        default = '#eb670f',
        muted = '#ffe7d1',
      }),
    }),
    green = m({
      color = m({
        default = '#30a147',
        muted = '#caf7ca',
      }),
    }),
    auburn = m({
      color = m({
        default = '#9d615c',
        muted = '#f2e9e9',
      }),
    }),
    purple = m({
      color = m({
        default = '#894ceb',
        muted = '#f1e5ff',
      }),
    }),
    blue = m({
      color = m({
        default = '#006edb',
        muted = '#d1f0ff',
      }),
    }),
    gray = m({
      color = m({
        default = '#808fa3',
        muted = '#e8ecf2',
      }),
    }),
    red = m({
      color = m({
        default = '#df0c24',
        muted = '#ffe2e0',
      }),
    }),
    pink = m({
      color = m({
        default = '#ce2c85',
        muted = '#ffe5f1',
      }),
    }),
    yellow = m({
      color = m({
        default = '#b88700',
        muted = '#ffec9e',
      }),
    }),
  }),
  color = m({
    prettylights = m({
      syntax = m({
        comment = '#57606a',
        carriage = m({
          ['return'] = m({
            bg = '#cf222e',
            text = '#f6f8fa',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#24292f',
          }),
        }),
        brackethighlighter = m({
          unmatched = '#82071e',
          angle = '#57606a',
        }),
        keyword = '#cf222e',
        string = m({
          regexp = '#0550ae',
          default = '#0a3069',
        }),
        invalid = m({
          illegal = m({
            bg = '#82071e',
            text = '#f6f8fa',
          }),
        }),
        variable = '#a40e26',
        entity = m({
          tag = '#0550ae',
          default = '#6639ba',
        }),
        meta = m({
          diff = m({
            range = '#8250df',
          }),
        }),
        constant = m({
          other = m({
            reference = m({
              link = '#0a3069',
            }),
          }),
          default = '#0550ae',
        }),
        sublimelinter = m({
          gutter = m({
            mark = '#8c959f',
          }),
        }),
        markup = m({
          list = '#3b2300',
          deleted = m({
            bg = '#ffebe9',
            text = '#82071e',
          }),
          italic = '#24292f',
          changed = m({
            bg = '#ffcecb',
            text = '#a40e26',
          }),
          inserted = m({
            bg = '#ddf4ff',
            text = '#0550ae',
          }),
          bold = '#24292f',
          heading = '#0550ae',
          ignored = m({
            bg = '#0550ae',
            text = '#eaeef2',
          }),
        }),
      }),
    }),
    ansi = m({
      blue = m({
        default = '#0969da',
        bright = '#218bff',
      }),
      green = m({
        default = '#0550ae',
        bright = '#0969da',
      }),
      gray = '#6e7781',
      black = m({
        default = '#24292f',
        bright = '#57606a',
      }),
      magenta = m({
        default = '#8250df',
        bright = '#a475f9',
      }),
      cyan = m({
        default = '#1b7c83',
        bright = '#3192aa',
      }),
      white = m({
        default = '#6e7781',
        bright = '#8c959f',
      }),
      red = m({
        default = '#cf222e',
        bright = '#a40e26',
      }),
      yellow = m({
        default = '#4d2d00',
        bright = '#633c01',
      }),
    }),
  }),
  borderColor = m({
    translucent = '#1f232826',
    upsell = m({
      emphasis = '#8250df',
      muted = '#c297ff66',
    }),
    success = m({
      emphasis = '#218bff',
      muted = '#54aeff66',
    }),
    sponsors = m({
      emphasis = '#bf3989',
      muted = '#ff80c866',
    }),
    severe = m({
      emphasis = '#cf222e',
      muted = '#ff818266',
    }),
    default = '#d0d7de',
    muted = '#d0d7deb3',
    done = m({
      emphasis = '#8250df',
      muted = '#c297ff66',
    }),
    disabled = '#eaeef2b3',
    danger = m({
      emphasis = '#cf222e',
      muted = '#ff818266',
    }),
    open = m({
      emphasis = '#cf222e',
      muted = '#ff818266',
    }),
    transparent = '#ffffff00',
    attention = m({
      emphasis = '#bf8700',
      muted = '#d4a72c66',
    }),
    accent = m({
      emphasis = '#0969da',
      muted = '#54aeff66',
    }),
    neutral = m({
      emphasis = '#6e7781',
      muted = '#afb8c133',
    }),
    closed = m({
      emphasis = '#6e7781',
      muted = '#afb8c166',
    }),
    emphasis = '#6e7781',
  }),
  display = m({
    teal = m({
      borderColor = m({
        emphasis = '#127e81',
        muted = '#89ebe1',
      }),
      fgColor = '#106e75',
      bgColor = m({
        emphasis = '#127e81',
        muted = '#c7f5ef',
      }),
    }),
    red = m({
      borderColor = m({
        emphasis = '#df0c24',
        muted = '#fecdcd',
      }),
      fgColor = '#c50d28',
      bgColor = m({
        emphasis = '#df0c24',
        muted = '#ffe2e0',
      }),
    }),
    gray = m({
      borderColor = m({
        emphasis = '#647182',
        muted = '#d2dae4',
      }),
      fgColor = '#5c6570',
      bgColor = m({
        emphasis = '#647182',
        muted = '#e8ecf2',
      }),
    }),
    cyan = m({
      borderColor = m({
        emphasis = '#007b94',
        muted = '#7ae9ff',
      }),
      fgColor = '#006a80',
      bgColor = m({
        emphasis = '#007b94',
        muted = '#bdf4ff',
      }),
    }),
    coral = m({
      borderColor = m({
        emphasis = '#d43511',
        muted = '#fecebe',
      }),
      fgColor = '#ba2e12',
      bgColor = m({
        emphasis = '#d43511',
        muted = '#ffe5db',
      }),
    }),
    pine = m({
      borderColor = m({
        emphasis = '#167e53',
        muted = '#80efb9',
      }),
      fgColor = '#156f4b',
      bgColor = m({
        emphasis = '#167e53',
        muted = '#bff8db',
      }),
    }),
    auburn = m({
      borderColor = m({
        emphasis = '#9d615c',
        muted = '#e6d6d5',
      }),
      fgColor = '#8a5551',
      bgColor = m({
        emphasis = '#9d615c',
        muted = '#f2e9e9',
      }),
    }),
    orange = m({
      borderColor = m({
        emphasis = '#b8500f',
        muted = '#fecfaa',
      }),
      fgColor = '#a24610',
      bgColor = m({
        emphasis = '#b8500f',
        muted = '#ffe7d1',
      }),
    }),
    blue = m({
      borderColor = m({
        emphasis = '#006edb',
        muted = '#ade1ff',
      }),
      fgColor = '#005fcc',
      bgColor = m({
        emphasis = '#006edb',
        muted = '#d1f0ff',
      }),
    }),
    brown = m({
      borderColor = m({
        emphasis = '#856d4c',
        muted = '#dfd7c8',
      }),
      fgColor = '#755f43',
      bgColor = m({
        emphasis = '#856d4c',
        muted = '#eeeae2',
      }),
    }),
    olive = m({
      borderColor = m({
        emphasis = '#64762d',
        muted = '#dbe170',
      }),
      fgColor = '#56682c',
      bgColor = m({
        emphasis = '#64762d',
        muted = '#f0f0ad',
      }),
    }),
    yellow = m({
      borderColor = m({
        emphasis = '#946a00',
        muted = '#ffd642',
      }),
      fgColor = '#805900',
      bgColor = m({
        emphasis = '#946a00',
        muted = '#ffec9e',
      }),
    }),
    pink = m({
      borderColor = m({
        emphasis = '#ce2c85',
        muted = '#fdc9e2',
      }),
      fgColor = '#b12f79',
      bgColor = m({
        emphasis = '#ce2c85',
        muted = '#ffe5f1',
      }),
    }),
    lime = m({
      borderColor = m({
        emphasis = '#527a29',
        muted = '#c7e580',
      }),
      fgColor = '#476c28',
      bgColor = m({
        emphasis = '#527a29',
        muted = '#e3f2b5',
      }),
    }),
    purple = m({
      borderColor = m({
        emphasis = '#894ceb',
        muted = '#e6d2fe',
      }),
      fgColor = '#783ae4',
      bgColor = m({
        emphasis = '#894ceb',
        muted = '#f1e5ff',
      }),
    }),
    indigo = m({
      borderColor = m({
        emphasis = '#5a61e7',
        muted = '#d2d7fe',
      }),
      fgColor = '#494edf',
      bgColor = m({
        emphasis = '#5a61e7',
        muted = '#e5e9ff',
      }),
    }),
    plum = m({
      borderColor = m({
        emphasis = '#a830e8',
        muted = '#f0cdfe',
      }),
      fgColor = '#961edc',
      bgColor = m({
        emphasis = '#a830e8',
        muted = '#f8e5ff',
      }),
    }),
    green = m({
      borderColor = m({
        emphasis = '#2c8141',
        muted = '#9ceda0',
      }),
      fgColor = '#2b6e3f',
      bgColor = m({
        emphasis = '#2c8141',
        muted = '#caf7ca',
      }),
    }),
    lemon = m({
      borderColor = m({
        emphasis = '#866e04',
        muted = '#f0db3d',
      }),
      fgColor = '#786002',
      bgColor = m({
        emphasis = '#866e04',
        muted = '#f7eea1',
      }),
    }),
  }),
  buttonCounter = m({
    default = m({
      bgColor = m({
        rest = '#afb8c133',
      }),
    }),
    invisible = m({
      bgColor = m({
        rest = '#afb8c133',
      }),
    }),
    outline = m({
      bgColor = m({
        rest = '#0969da1a',
        disabled = '#0969da0d',
        hover = '#ffffff33',
      }),
      fgColor = m({
        rest = '#0550ae',
        disabled = '#0969da80',
        hover = '#ffffff',
      }),
    }),
    danger = m({
      bgColor = m({
        rest = '#cf222e1a',
        disabled = '#cf222e0d',
        hover = '#ffffff33',
      }),
      fgColor = m({
        rest = '#c21c2c',
        disabled = '#d1242f80',
        hover = '#ffffff',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#002d1133',
      }),
    }),
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#54aeff',
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

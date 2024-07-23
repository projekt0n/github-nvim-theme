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
  bgColor = m({
    transparent = '#ffffff00',
    white = '#ffffff',
    upsell = m({
      muted = '#faf0fe',
      emphasis = '#622cbc',
    }),
    success = m({
      muted = '#d2fedb',
      emphasis = '#055d20',
    }),
    sponsors = m({
      muted = '#feeff7',
      emphasis = '#971368',
    }),
    severe = m({
      muted = '#fff2d5',
      emphasis = '#873800',
    }),
    muted = '#e7ecf0',
    inset = '#ffffff',
    done = m({
      muted = '#faf0fe',
      emphasis = '#622cbc',
    }),
    disabled = '#ced5dcb3',
    danger = m({
      muted = '#fff0ee',
      emphasis = '#a0111f',
    }),
    closed = m({
      muted = '#fff0ee',
      emphasis = '#a0111f',
    }),
    black = '#010409',
    attention = m({
      muted = '#fcf7be',
      emphasis = '#744500',
    }),
    accent = m({
      muted = '#dff7ff',
      emphasis = '#0349b4',
    }),
    emphasis = '#0e1116',
    open = m({
      muted = '#d2fedb',
      emphasis = '#055d20',
    }),
    default = '#ffffff',
    inverse = '#0e1116',
    neutral = m({
      muted = '#e7ecf0',
      emphasis = '#66707b',
    }),
  }),
  diffBlob = m({
    expander = m({
      iconColor = '#0e1116',
    }),
    deletion = m({
      fgColor = m({
        num = '#010409',
        text = '#ffffff',
      }),
      bgColor = m({
        word = '#a0111f',
        line = '#fff0ee',
        num = '#ffc1bc',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#9cd7ff',
      }),
    }),
    addition = m({
      fgColor = m({
        num = '#010409',
        text = '#ffffff',
      }),
      bgColor = m({
        word = '#117f32',
        line = '#d2fedb',
        num = '#c2f9cd',
      }),
    }),
  }),
  sideNav = m({
    bgColor = m({
      selected = '#ffffff',
    }),
  }),
  shadow = m({
    resting = m({
      small = '0px 1px 0px 0px #0104090a',
      xsmall = '0px 1px 0px 0px #0104091a',
      medium = '0px 3px 6px 0px #343b431f',
    }),
    floating = m({
      large = '0px 0px 0px 1px #88929d, 0px 40px 80px 0px #343b433d',
      small = '0px 0px 0px 1px #88929d80, 0px 6px 12px -3px #343b430a, 0px 6px 18px 0px #343b431f',
      medium = '0px 0px 0px 1px #88929d, 0px 8px 16px -4px #343b4314, 0px 4px 32px -4px #343b4314, 0px 24px 48px -12px #343b4314, 0px 48px 96px -24px #343b4314',
      xlarge = '0px 0px 0px 1px #88929d, 0px 56px 112px 0px #343b4352',
      legacy = '0px 6px 12px -3px #343b430a, 0px 6px 18px 0px #343b431f',
    }),
    inset = 'inset 0px 1px 0px 0px #0104090a',
  }),
  selection = m({
    bgColor = '#0349b433',
  }),
  selectMenu = m({
    bgColor = m({
      active = '#9cd7ff',
    }),
    borderColor = '#ffffff00',
  }),
  reactionButton = m({
    selected = m({
      fgColor = m({
        rest = '#023b95',
        hover = '#023b95',
      }),
      bgColor = m({
        rest = '#dff7ff',
        hover = '#c7e9ff',
      }),
    }),
  }),
  fgColor = m({
    white = '#ffffff',
    upsell = '#622cbc',
    success = '#055d20',
    sponsors = '#971368',
    severe = '#873800',
    onEmphasis = '#ffffff',
    muted = '#0e1116',
    link = '#023b95',
    done = '#622cbc',
    disabled = '#66707b',
    danger = '#8a071e',
    closed = '#8a071e',
    black = '#010409',
    attention = '#744500',
    accent = '#023b95',
    open = '#055d20',
    default = '#010409',
    neutral = '#66707b',
  }),
  counter = m({
    borderColor = '#20252c',
  }),
  controlTrack = m({
    bgColor = m({
      rest = '#acb6c0',
      disabled = '#66707b',
      active = '#909aa4',
      hover = '#9ea8b2',
    }),
    borderColor = m({
      rest = '#ffffff00',
      disabled = '#66707b',
    }),
    fgColor = m({
      rest = '#010409',
      disabled = '#ffffff',
    }),
  }),
  header = m({
    bgColor = '#0e1116',
    borderColor = m({
      divider = '#acb6c0',
    }),
    fgColor = m({
      logo = '#ffffff',
      default = '#ffffffb3',
    }),
  }),
  overlay = m({
    bgColor = '#ffffff',
    borderColor = '#88929d',
    backdrop = m({
      bgColor = '#88929d33',
    }),
  }),
  color = m({
    ansi = m({
      black = m({
        bright = '#4b535d',
        default = '#0e1116',
      }),
      magenta = m({
        bright = '#844ae7',
        default = '#622cbc',
      }),
      yellow = m({
        bright = '#4e2c00',
        default = '#3f2200',
      }),
      white = m({
        bright = '#88929d',
        default = '#66707b',
      }),
      blue = m({
        bright = '#1168e3',
        default = '#0349b4',
      }),
      green = m({
        bright = '#055d20',
        default = '#024c1a',
      }),
      red = m({
        bright = '#86061d',
        default = '#a0111f',
      }),
      gray = '#66707b',
      cyan = m({
        bright = '#3192aa',
        default = '#1b7c83',
      }),
    }),
    prettylights = m({
      syntax = m({
        variable = '#702c00',
        entity = m({
          default = '#512598',
          tag = '#023b95',
        }),
        constant = m({
          default = '#023b95',
          other = m({
            reference = m({
              link = '#032563',
            }),
          }),
        }),
        sublimelinter = m({
          gutter = m({
            mark = '#88929d',
          }),
        }),
        comment = '#4b535d',
        string = m({
          default = '#032563',
          regexp = '#024c1a',
        }),
        carriage = m({
          ['return'] = m({
            bg = '#a0111f',
            text = '#ffffff',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#0e1116',
          }),
        }),
        markup = m({
          deleted = m({
            bg = '#fff0ee',
            text = '#6e011a',
          }),
          italic = '#0e1116',
          changed = m({
            bg = '#ffc67b',
            text = '#702c00',
          }),
          inserted = m({
            bg = '#d2fedb',
            text = '#024c1a',
          }),
          bold = '#0e1116',
          heading = '#023b95',
          ignored = m({
            bg = '#023b95',
            text = '#e7ecf0',
          }),
          list = '#2e1800',
        }),
        brackethighlighter = m({
          angle = '#4b535d',
          unmatched = '#6e011a',
        }),
        keyword = '#a0111f',
        meta = m({
          diff = m({
            range = '#622cbc',
          }),
        }),
        invalid = m({
          illegal = m({
            bg = '#6e011a',
            text = '#ffffff',
          }),
        }),
      }),
    }),
  }),
  controlKnob = m({
    bgColor = m({
      rest = '#ffffff',
      disabled = '#ced5dcb3',
      checked = '#ffffff',
    }),
    borderColor = m({
      rest = '#20252c',
      disabled = '#ced5dcb3',
      checked = '#0349b4',
    }),
  }),
  menu = m({
    bgColor = m({
      active = '#ffffff00',
    }),
  }),
  label = m({
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
  }),
  codeMirror = m({
    cursor = m({
      fgColor = '#010409',
    }),
    selection = m({
      bgColor = '#368cf9',
    }),
    syntax = m({
      fgColor = m({
        variable = '#702c00',
        string = '#032563',
        storage = '#a0111f',
        constant = '#023b95',
        support = '#023b95',
        keyword = '#a0111f',
        entity = '#622cbc',
        comment = '#0e1116',
      }),
    }),
    fgColor = '#010409',
    matchingBracket = m({
      fgColor = '#010409',
    }),
    lineNumber = m({
      fgColor = '#0e1116',
    }),
    activeline = m({
      bgColor = '#e7ecf0',
    }),
    gutters = m({
      bgColor = '#ffffff',
    }),
    bgColor = '#ffffff',
    gutterMarker = m({
      fgColor = m({
        muted = '#0e1116',
        default = '#ffffff',
      }),
    }),
    lines = m({
      bgColor = '#ffffff',
    }),
  }),
  scale = m({
    black = '#010409',
    pink = m({
      [1] = '#feeff7',
      [2] = '#ffbde0',
      [3] = '#fc87ca',
      [4] = '#ed4baf',
      [5] = '#c9248e',
      [6] = '#971368',
      [7] = '#7d0c57',
      [8] = '#660847',
      [9] = '#53043a',
      [10] = '#3e022b',
    }),
    yellow = m({
      [1] = '#fcf7be',
      [2] = '#f0ce53',
      [3] = '#d5a824',
      [4] = '#b58407',
      [5] = '#956400',
      [6] = '#744500',
      [7] = '#603700',
      [8] = '#4e2c00',
      [9] = '#3f2200',
      [10] = '#2e1800',
    }),
    white = '#ffffff',
    blue = m({
      [1] = '#dff7ff',
      [2] = '#9cd7ff',
      [3] = '#67b3fd',
      [4] = '#368cf9',
      [5] = '#1168e3',
      [6] = '#0349b4',
      [7] = '#023b95',
      [8] = '#022f7a',
      [9] = '#032563',
      [10] = '#021a4a',
    }),
    green = m({
      [1] = '#d2fedb',
      [2] = '#82e596',
      [3] = '#43c663',
      [4] = '#26a148',
      [5] = '#117f32',
      [6] = '#055d20',
      [7] = '#024c1a',
      [8] = '#013d14',
      [9] = '#003110',
      [10] = '#00230b',
    }),
    orange = m({
      [1] = '#fff2d5',
      [2] = '#ffc67b',
      [3] = '#f99636',
      [4] = '#dc6d1a',
      [5] = '#b45105',
      [6] = '#873800',
      [7] = '#702c00',
      [8] = '#5b2300',
      [9] = '#491b00',
      [10] = '#361200',
    }),
    red = m({
      [1] = '#fff0ee',
      [2] = '#ffc1bc',
      [3] = '#ff8e8a',
      [4] = '#ee5a5d',
      [5] = '#d5232c',
      [6] = '#a0111f',
      [7] = '#86061d',
      [8] = '#6e011a',
      [9] = '#5a0016',
      [10] = '#430011',
    }),
    purple = m({
      [1] = '#faf0fe',
      [2] = '#e0c5ff',
      [3] = '#c49bff',
      [4] = '#a371f7',
      [5] = '#844ae7',
      [6] = '#622cbc',
      [7] = '#512598',
      [8] = '#411d7b',
      [9] = '#341763',
      [10] = '#260f49',
    }),
    neutral = m({
      [1] = '#ffffff',
      [2] = '#e7ecf0',
      [3] = '#ced5dc',
      [4] = '#acb6c0',
      [5] = '#88929d',
      [6] = '#66707b',
      [7] = '#4b535d',
      [8] = '#343b43',
      [9] = '#20252c',
      [10] = '#0e1116',
    }),
    transparent = '#ffffff00',
    coral = m({
      [1] = '#fff0ed',
      [2] = '#ffc2b6',
      [3] = '#ff8f7e',
      [4] = '#cd3425',
      [5] = '#ef5b48',
      [6] = '#9f1710',
      [7] = '#870706',
      [8] = '#6f0107',
      [9] = '#5b0002',
      [10] = '#430200',
    }),
  }),
  avatar = m({
    bgColor = '#ffffff',
    borderColor = '#010409e6',
    shadow = '0px 0px 0px 2px #ffffffcc',
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        muted = '#ced5dc',
        default = '#acb6c0',
      }),
    }),
  }),
  base = m({
    display = m({
      color = m({
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
      }),
    }),
    color = m({
      black = '#010409',
      pink = m({
        [0] = '#feeff7',
        [1] = '#ffbde0',
        [2] = '#fc87ca',
        [3] = '#ed4baf',
        [4] = '#c9248e',
        [5] = '#971368',
        [6] = '#7d0c57',
        [7] = '#660847',
        [8] = '#53043a',
        [9] = '#3e022b',
      }),
      yellow = m({
        [0] = '#fcf7be',
        [1] = '#f0ce53',
        [2] = '#d5a824',
        [3] = '#b58407',
        [4] = '#956400',
        [5] = '#744500',
        [6] = '#603700',
        [7] = '#4e2c00',
        [8] = '#3f2200',
        [9] = '#2e1800',
      }),
      white = '#ffffff',
      blue = m({
        [0] = '#dff7ff',
        [1] = '#9cd7ff',
        [2] = '#67b3fd',
        [3] = '#368cf9',
        [4] = '#1168e3',
        [5] = '#0349b4',
        [6] = '#023b95',
        [7] = '#022f7a',
        [8] = '#032563',
        [9] = '#021a4a',
      }),
      green = m({
        [0] = '#d2fedb',
        [1] = '#82e596',
        [2] = '#43c663',
        [3] = '#26a148',
        [4] = '#117f32',
        [5] = '#055d20',
        [6] = '#024c1a',
        [7] = '#013d14',
        [8] = '#003110',
        [9] = '#00230b',
      }),
      orange = m({
        [0] = '#fff2d5',
        [1] = '#ffc67b',
        [2] = '#f99636',
        [3] = '#dc6d1a',
        [4] = '#b45105',
        [5] = '#873800',
        [6] = '#702c00',
        [7] = '#5b2300',
        [8] = '#491b00',
        [9] = '#361200',
      }),
      red = m({
        [0] = '#fff0ee',
        [1] = '#ffc1bc',
        [2] = '#ff8e8a',
        [3] = '#ee5a5d',
        [4] = '#d5232c',
        [5] = '#a0111f',
        [6] = '#86061d',
        [7] = '#6e011a',
        [8] = '#5a0016',
        [9] = '#430011',
      }),
      purple = m({
        [0] = '#faf0fe',
        [1] = '#e0c5ff',
        [2] = '#c49bff',
        [3] = '#a371f7',
        [4] = '#844ae7',
        [5] = '#622cbc',
        [6] = '#512598',
        [7] = '#411d7b',
        [8] = '#341763',
        [9] = '#260f49',
      }),
      neutral = m({
        [0] = '#ffffff',
        [1] = '#e7ecf0',
        [2] = '#ced5dc',
        [3] = '#acb6c0',
        [4] = '#88929d',
        [5] = '#66707b',
        [6] = '#4b535d',
        [7] = '#343b43',
        [8] = '#20252c',
        [9] = '#0e1116',
      }),
      transparent = '#ffffff00',
      coral = m({
        [0] = '#fff0ed',
        [1] = '#ffc2b6',
        [2] = '#ff8f7e',
        [3] = '#cd3425',
        [4] = '#ef5b48',
        [5] = '#9f1710',
        [6] = '#870706',
        [7] = '#6f0107',
        [8] = '#5b0002',
        [9] = '#430200',
      }),
    }),
  }),
  focus = m({
    outlineColor = '#0349b4',
    outline = '#0349b4 solid 2px',
  }),
  headerSearch = m({
    bgColor = '#0e1116',
    borderColor = '#4b535d',
  }),
  highlight = m({
    neutral = m({
      bgColor = '#fcf7be',
    }),
  }),
  card = m({
    bgColor = '#ffffff',
  }),
  display = m({
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
  }),
  buttonCounter = m({
    invisible = m({
      bgColor = m({
        rest = '#66707b33',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#66707b33',
      }),
    }),
    danger = m({
      fgColor = m({
        rest = '#980e1e',
        disabled = '#8a071e80',
        hover = '#ffffff',
      }),
      bgColor = m({
        rest = '#a0111f1a',
        disabled = '#a0111f0d',
        hover = '#ffffff33',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#00230b33',
      }),
    }),
    outline = m({
      fgColor = m({
        rest = '#023b95',
        disabled = '#023b9580',
        hover = '#ffffff',
      }),
      bgColor = m({
        rest = '#0349b41a',
        disabled = '#0349b40d',
        hover = '#ffffff33',
      }),
    }),
  }),
  data = m({
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
    blue = m({
      color = m({
        muted = '#d1f0ff',
        default = '#006edb',
      }),
    }),
  }),
  page = m({
    header = m({
      bgColor = '#e7ecf0',
    }),
  }),
  skeletonLoader = m({
    bgColor = '#e7ecf0',
  }),
  borderColor = m({
    transparent = '#ffffff00',
    upsell = m({
      muted = '#a371f766',
      emphasis = '#622cbc',
    }),
    success = m({
      muted = '#26a148',
      emphasis = '#055d20',
    }),
    sponsors = m({
      muted = '#ed4baf',
      emphasis = '#971368',
    }),
    severe = m({
      muted = '#dc6d1a',
      emphasis = '#873800',
    }),
    muted = '#88929d',
    done = m({
      muted = '#a371f7',
      emphasis = '#622cbc',
    }),
    disabled = '#ced5dcb3',
    danger = m({
      muted = '#ee5a5d',
      emphasis = '#a0111f',
    }),
    closed = m({
      muted = '#ee5a5d66',
      emphasis = '#a0111f',
    }),
    attention = m({
      muted = '#b58407',
      emphasis = '#744500',
    }),
    accent = m({
      muted = '#368cf9',
      emphasis = '#0349b4',
    }),
    emphasis = '#66707b',
    open = m({
      muted = '#26a148',
      emphasis = '#055d20',
    }),
    translucent = '#20252c',
    default = '#20252c',
    neutral = m({
      muted = '#88929d',
      emphasis = '#66707b',
    }),
  }),
  underlineNav = m({
    iconColor = m({
      rest = '#0e1116',
    }),
    borderColor = m({
      hover = '#88929d',
      active = '#cd3425',
    }),
  }),
  timelineBadge = m({
    bgColor = '#e7ecf0',
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#368cf9',
      }),
    }),
  }),
  control = m({
    bgColor = m({
      hover = '#dbe1e6',
      active = '#cfd6dd',
      selected = '#acb6c0',
      rest = '#e7ecf0',
      disabled = '#ced5dcb3',
    }),
    borderColor = m({
      danger = '#a0111f',
      disabled = '#ced5dcb3',
      selected = '#ffffff',
      rest = '#20252c',
      warning = '#744500',
      success = '#055d20',
      emphasis = '#20252c',
    }),
    transparent = m({
      bgColor = m({
        hover = '#e7ecf0',
        active = '#ced5dc',
        selected = '#ced5dc33',
        rest = '#ffffff00',
        disabled = '#ced5dcb3',
      }),
      borderColor = m({
        rest = '#ffffff00',
        active = '#ffffff00',
        hover = '#20252c',
      }),
    }),
    checked = m({
      bgColor = m({
        rest = '#0349b4',
        disabled = '#66707b',
        active = '#033f9d',
        hover = '#0344a8',
      }),
      borderColor = m({
        rest = '#0349b4',
        disabled = '#66707b',
        active = '#033f9d',
        hover = '#0344a8',
      }),
      fgColor = m({
        rest = '#ffffff',
        disabled = '#ffffff',
      }),
    }),
    iconColor = m({
      rest = '#0e1116',
    }),
    danger = m({
      fgColor = m({
        rest = '#8a071e',
        hover = '#ffffff',
      }),
      bgColor = m({
        hover = '#a0111f',
        active = '#8c0b1d',
      }),
    }),
    fgColor = m({
      rest = '#0e1116',
      disabled = '#66707b',
      placeholder = '#616a75',
    }),
  }),
  topicTag = m({
    borderColor = '#0349b4',
  }),
  button = m({
    star = m({
      iconColor = '#d5a824',
    }),
    invisible = m({
      bgColor = m({
        rest = '#ffffff00',
        disabled = '#ced5dcb3',
        active = '#4b535d',
        hover = '#20252c',
      }),
      borderColor = m({
        rest = '#ffffff00',
        disabled = '#ced5dcb3',
        hover = '#20252c',
      }),
      iconColor = m({
        rest = '#0e1116',
        disabled = '#66707b',
        hover = '#ffffff',
      }),
      fgColor = m({
        rest = '#023b95',
        disabled = '#66707b',
        hover = '#67b3fd',
      }),
    }),
    outline = m({
      bgColor = m({
        rest = '#e7ecf0',
        disabled = '#ffffff',
        active = '#033f9d',
        hover = '#0349b4',
      }),
      borderColor = m({
        hover = '#01040926',
        active = '#01040926',
      }),
      fgColor = m({
        rest = '#023b95',
        disabled = '#023b9580',
        active = '#ffffff',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #021a4a33',
      }),
    }),
    danger = m({
      bgColor = m({
        rest = '#e7ecf0',
        disabled = '#ced5dcb3',
        active = '#74041a',
        hover = '#86061d',
      }),
      borderColor = m({
        rest = '#20252c',
        active = '#01040926',
        hover = '#01040926',
      }),
      iconColor = m({
        rest = '#8a071e',
        hover = '#ffffff',
      }),
      fgColor = m({
        rest = '#8a071e',
        disabled = '#8a071e80',
        active = '#ffffff',
        hover = '#ffffff',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #43001133',
      }),
    }),
    default = m({
      bgColor = m({
        hover = '#dbe1e6',
        active = '#cfd6dd',
        selected = '#cfd6dd',
        rest = '#e7ecf0',
        disabled = '#ced5dcb3',
      }),
      borderColor = m({
        rest = '#20252c',
        disabled = '#ced5dcb3',
        active = '#20252c',
        hover = '#20252c',
      }),
      fgColor = m({
        rest = '#0e1116',
      }),
      shadow = m({
        resting = '0px 1px 0px 0px #0104090a',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#055d20',
        disabled = '#85cb97',
        active = '#03501b',
        hover = '#04571e',
      }),
      borderColor = m({
        rest = '#013d14',
        disabled = '#85cb97',
        active = '#013d14',
        hover = '#013d14',
      }),
      iconColor = m({
        rest = '#ffffffcc',
      }),
      fgColor = m({
        rest = '#ffffff',
        disabled = '#ffffffcc',
      }),
      shadow = m({
        selected = 'inset 0px 1px 0px 0px #00230b4d',
      }),
    }),
    inactive = m({
      fgColor = '#4b535d',
      bgColor = '#e7ecf0',
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

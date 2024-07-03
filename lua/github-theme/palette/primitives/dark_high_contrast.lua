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
  outline = m({
    focus = '#409eff solid 2px',
  }),
  focus = m({
    outlineColor = '#409eff',
  }),
  menu = m({
    bgColor = m({
      active = '#272b33',
    }),
  }),
  label = m({
    lime = m({
      bgColor = m({
        active = '#2c441d',
        rest = '#141f0f',
        hover = '#1f3116',
      }),
      fgColor = m({
        active = '#9fcc3e',
        rest = '#7dae37',
        hover = '#89ba36',
      }),
    }),
    lemon = m({
      bgColor = m({
        active = '#4f3c02',
        rest = '#291d00',
        hover = '#372901',
      }),
      fgColor = m({
        active = '#d7bc1d',
        rest = '#ba9b12',
        hover = '#c4a717',
      }),
    }),
    yellow = m({
      bgColor = m({
        active = '#5a3702',
        rest = '#2e1a00',
        hover = '#3d2401',
      }),
      fgColor = m({
        active = '#edb431',
        rest = '#d3910d',
        hover = '#df9e11',
      }),
    }),
    indigo = m({
      bgColor = m({
        active = '#312c90',
        rest = '#1b183f',
        hover = '#25215f',
      }),
      fgColor = m({
        active = '#b7baf6',
        rest = '#9899ec',
        hover = '#a2a5f1',
      }),
    }),
    teal = m({
      bgColor = m({
        active = '#0a464d',
        rest = '#041f25',
        hover = '#073036',
      }),
      fgColor = m({
        active = '#24d6c4',
        rest = '#1cb0ab',
        hover = '#1fbdb2',
      }),
    }),
    green = m({
      bgColor = m({
        active = '#214529',
        rest = '#122117',
        hover = '#182f1f',
      }),
      fgColor = m({
        active = '#75d36f',
        rest = '#41b445',
        hover = '#46c144',
      }),
    }),
    red = m({
      bgColor = m({
        active = '#790c20',
        rest = '#3c0614',
        hover = '#58091a',
      }),
      fgColor = m({
        active = '#f7adab',
        rest = '#f27d83',
        hover = '#f48b8d',
      }),
    }),
    gray = m({
      bgColor = m({
        active = '#393d41',
        rest = '#1c1c1c',
        hover = '#2a2b2d',
      }),
      fgColor = m({
        active = '#b3c0d1',
        rest = '#92a1b5',
        hover = '#9babbf',
      }),
    }),
    purple = m({
      bgColor = m({
        active = '#481a9e',
        rest = '#211047',
        hover = '#31146b',
      }),
      fgColor = m({
        active = '#d2affd',
        rest = '#b687f7',
        hover = '#c398fb',
      }),
    }),
    cyan = m({
      bgColor = m({
        active = '#014156',
        rest = '#001f29',
        hover = '#002e3d',
      }),
      fgColor = m({
        active = '#45cbf7',
        rest = '#07ace4',
        hover = '#09b7f1',
      }),
    }),
    plum = m({
      bgColor = m({
        active = '#5c1688',
        rest = '#2a0e3f',
        hover = '#40125e',
      }),
      fgColor = m({
        active = '#e4a5fd',
        rest = '#d07ef7',
        hover = '#d889fa',
      }),
    }),
    coral = m({
      bgColor = m({
        active = '#72220d',
        rest = '#351008',
        hover = '#51180b',
      }),
      fgColor = m({
        active = '#fdaa86',
        rest = '#f7794b',
        hover = '#fa8c61',
      }),
    }),
    pink = m({
      bgColor = m({
        active = '#65244a',
        rest = '#2d1524',
        hover = '#451c35',
      }),
      fgColor = m({
        active = '#f4a9cd',
        rest = '#e57bb2',
        hover = '#ec8dbd',
      }),
    }),
    brown = m({
      bgColor = m({
        active = '#483a28',
        rest = '#241c14',
        hover = '#342a1d',
      }),
      fgColor = m({
        active = '#cdbb98',
        rest = '#b69a6d',
        hover = '#bfa77d',
      }),
    }),
    pine = m({
      bgColor = m({
        active = '#0e4430',
        rest = '#082119',
        hover = '#0b3224',
      }),
      fgColor = m({
        active = '#1bda81',
        rest = '#1bb673',
        hover = '#1ac176',
      }),
    }),
    blue = m({
      bgColor = m({
        active = '#00378a',
        rest = '#001a47',
        hover = '#002766',
      }),
      fgColor = m({
        active = '#85c2ff',
        rest = '#4da0ff',
        hover = '#61adff',
      }),
    }),
    orange = m({
      bgColor = m({
        active = '#632f0d',
        rest = '#311708',
        hover = '#43200a',
      }),
      fgColor = m({
        active = '#f6b06a',
        rest = '#ed8326',
        hover = '#f1933b',
      }),
    }),
    auburn = m({
      bgColor = m({
        active = '#543331',
        rest = '#271817',
        hover = '#3a2422',
      }),
      fgColor = m({
        active = '#d4b7b5',
        rest = '#bf9592',
        hover = '#c6a19f',
      }),
    }),
    olive = m({
      bgColor = m({
        active = '#374115',
        rest = '#171e0b',
        hover = '#252d10',
      }),
      fgColor = m({
        active = '#cbc025',
        rest = '#a2a626',
        hover = '#b2af24',
      }),
    }),
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        default = '#525964',
        muted = '#3d424d',
      }),
    }),
  }),
  avatar = m({
    borderColor = '#ffffffe6',
    shadow = '0px 0px 0px 2px #0a0c10',
    bgColor = '#ffffff1a',
  }),
  highlight = m({
    neutral = m({
      bgColor = '#f0b72f66',
    }),
  }),
  data = m({
    purple = m({
      color = m({
        default = '#975bf1',
        muted = '#211047',
      }),
    }),
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
    auburn = m({
      color = m({
        default = '#a86f6b',
        muted = '#271817',
      }),
    }),
    teal = m({
      color = m({
        default = '#106c70',
        muted = '#041f25',
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
    red = m({
      color = m({
        default = '#eb3342',
        muted = '#3c0614',
      }),
    }),
    gray = m({
      color = m({
        default = '#576270',
        muted = '#1c1c1c',
      }),
    }),
    blue = m({
      color = m({
        default = '#0576ff',
        muted = '#001a47',
      }),
    }),
  }),
  diffBlob = m({
    hunk = m({
      bgColor = m({
        num = '#5cacff66',
      }),
    }),
    addition = m({
      bgColor = m({
        num = '#28d7514d',
        word = '#0ac740',
        line = '#0ac74026',
      }),
      fgColor = m({
        text = '#0a0c10',
        num = '#fbfcfd',
      }),
    }),
    expander = m({
      iconColor = '#fbfcfd',
    }),
    deletion = m({
      bgColor = m({
        num = '#ff80804d',
        word = '#ff6a69',
        line = '#ff808026',
      }),
      fgColor = m({
        text = '#0a0c10',
        num = '#fbfcfd',
      }),
    }),
  }),
  display = m({
    lime = m({
      borderColor = m({
        emphasis = '#5f892f',
        muted = '#1f3116',
      }),
      fgColor = '#7dae37',
      bgColor = m({
        emphasis = '#5f892f',
        muted = '#141f0f',
      }),
    }),
    lemon = m({
      borderColor = m({
        emphasis = '#977b0c',
        muted = '#372901',
      }),
      fgColor = '#ba9b12',
      bgColor = m({
        emphasis = '#977b0c',
        muted = '#291d00',
      }),
    }),
    yellow = m({
      borderColor = m({
        emphasis = '#aa7109',
        muted = '#3d2401',
      }),
      fgColor = '#d3910d',
      bgColor = m({
        emphasis = '#aa7109',
        muted = '#2e1a00',
      }),
    }),
    indigo = m({
      borderColor = m({
        emphasis = '#7070e1',
        muted = '#25215f',
      }),
      fgColor = '#9899ec',
      bgColor = m({
        emphasis = '#7070e1',
        muted = '#1b183f',
      }),
    }),
    teal = m({
      borderColor = m({
        emphasis = '#158a8a',
        muted = '#073036',
      }),
      fgColor = '#1cb0ab',
      bgColor = m({
        emphasis = '#158a8a',
        muted = '#041f25',
      }),
    }),
    green = m({
      borderColor = m({
        emphasis = '#388f3f',
        muted = '#182f1f',
      }),
      fgColor = '#41b445',
      bgColor = m({
        emphasis = '#388f3f',
        muted = '#122117',
      }),
    }),
    red = m({
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
      fgColor = '#f27d83',
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
    }),
    gray = m({
      borderColor = m({
        emphasis = '#6e7f96',
        muted = '#2a2b2d',
      }),
      fgColor = '#92a1b5',
      bgColor = m({
        emphasis = '#6e7f96',
        muted = '#1c1c1c',
      }),
    }),
    purple = m({
      borderColor = m({
        emphasis = '#975bf1',
        muted = '#31146b',
      }),
      fgColor = '#b687f7',
      bgColor = m({
        emphasis = '#975bf1',
        muted = '#211047',
      }),
    }),
    cyan = m({
      borderColor = m({
        emphasis = '#0587b3',
        muted = '#002e3d',
      }),
      fgColor = '#07ace4',
      bgColor = m({
        emphasis = '#0587b3',
        muted = '#001f29',
      }),
    }),
    plum = m({
      borderColor = m({
        emphasis = '#b643ef',
        muted = '#40125e',
      }),
      fgColor = '#d07ef7',
      bgColor = m({
        emphasis = '#b643ef',
        muted = '#2a0e3f',
      }),
    }),
    coral = m({
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
      fgColor = '#f27d83',
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
    }),
    pink = m({
      borderColor = m({
        emphasis = '#d34591',
        muted = '#451c35',
      }),
      fgColor = '#e57bb2',
      bgColor = m({
        emphasis = '#d34591',
        muted = '#2d1524',
      }),
    }),
    brown = m({
      borderColor = m({
        emphasis = '#94774c',
        muted = '#342a1d',
      }),
      fgColor = '#b69a6d',
      bgColor = m({
        emphasis = '#94774c',
        muted = '#241c14',
      }),
    }),
    pine = m({
      borderColor = m({
        emphasis = '#18915e',
        muted = '#0b3224',
      }),
      fgColor = '#1bb673',
      bgColor = m({
        emphasis = '#18915e',
        muted = '#082119',
      }),
    }),
    blue = m({
      borderColor = m({
        emphasis = '#0576ff',
        muted = '#002766',
      }),
      fgColor = '#4da0ff',
      bgColor = m({
        emphasis = '#0576ff',
        muted = '#001a47',
      }),
    }),
    orange = m({
      borderColor = m({
        emphasis = '#c46212',
        muted = '#43200a',
      }),
      fgColor = '#ed8326',
      bgColor = m({
        emphasis = '#c46212',
        muted = '#311708',
      }),
    }),
    auburn = m({
      borderColor = m({
        emphasis = '#a86f6b',
        muted = '#3a2422',
      }),
      fgColor = '#bf9592',
      bgColor = m({
        emphasis = '#a86f6b',
        muted = '#271817',
      }),
    }),
    olive = m({
      borderColor = m({
        emphasis = '#7a8321',
        muted = '#252d10',
      }),
      fgColor = '#a2a626',
      bgColor = m({
        emphasis = '#7a8321',
        muted = '#171e0b',
      }),
    }),
  }),
  underlineNav = m({
    borderColor = m({
      active = '#ff967d',
      hover = '#bdc4cc',
    }),
    iconColor = m({
      rest = '#f0f3f6',
    }),
  }),
  scale = m({
    purple = m({
      [1] = '#f0dfff',
      [2] = '#e6ccff',
      [3] = '#dbb7ff',
      [4] = '#cb9eff',
      [5] = '#bf8fff',
      [6] = '#b87fff',
      [7] = '#a66bff',
      [8] = '#954ffd',
      [9] = '#8031f7',
      [10] = '#6921d7',
    }),
    black = '#010409',
    transparent = '#00000000',
    pink = m({
      [1] = '#ffdceb',
      [2] = '#ffc7e1',
      [3] = '#ffadd4',
      [4] = '#ff8dc7',
      [5] = '#f87cbd',
      [6] = '#ef6eb1',
      [7] = '#e456a3',
      [8] = '#d23d91',
      [9] = '#b72c7d',
      [10] = '#9c1d6a',
    }),
    white = '#ffffff',
    neutral = m({
      [1] = '#ffffff',
      [2] = '#f0f3f6',
      [3] = '#d9dee3',
      [4] = '#bdc4cc',
      [5] = '#9ea7b3',
      [6] = '#7a828e',
      [7] = '#525964',
      [8] = '#3d424d',
      [9] = '#272b33',
      [10] = '#0a0c10',
    }),
    blue = m({
      [1] = '#caeaff',
      [2] = '#addcff',
      [3] = '#91cbff',
      [4] = '#71b7ff',
      [5] = '#5cacff',
      [6] = '#409eff',
      [7] = '#318bf8',
      [8] = '#2672f3',
      [9] = '#1e60d5',
      [10] = '#194fb1',
    }),
    green = m({
      [1] = '#acf7b6',
      [2] = '#72f088',
      [3] = '#4ae168',
      [4] = '#28d751',
      [5] = '#0ac740',
      [6] = '#09b43a',
      [7] = '#02a232',
      [8] = '#008c2c',
      [9] = '#007728',
      [10] = '#006222',
    }),
    orange = m({
      [1] = '#ffe1b4',
      [2] = '#ffcf86',
      [3] = '#ffb757',
      [4] = '#fe9a2d',
      [5] = '#f48b25',
      [6] = '#e7811d',
      [7] = '#d57014',
      [8] = '#bf5e0a',
      [9] = '#a74c00',
      [10] = '#8f3c00',
    }),
    red = m({
      [1] = '#ffdedb',
      [2] = '#ffc9c7',
      [3] = '#ffb1af',
      [4] = '#ff9492',
      [5] = '#ff8080',
      [6] = '#ff6a69',
      [7] = '#ff4445',
      [8] = '#e82a2f',
      [9] = '#cc1421',
      [10] = '#ad0116',
    }),
    yellow = m({
      [1] = '#fbe59e',
      [2] = '#fbd669',
      [3] = '#f7c843',
      [4] = '#f0b72f',
      [5] = '#edaa27',
      [6] = '#e09b13',
      [7] = '#c88508',
      [8] = '#ae7104',
      [9] = '#945d02',
      [10] = '#7b4900',
    }),
    coral = m({
      [1] = '#ffded4',
      [2] = '#ffcbb9',
      [3] = '#ffb39b',
      [4] = '#ff967d',
      [5] = '#fd8468',
      [6] = '#fc704f',
      [7] = '#f75133',
      [8] = '#e03b21',
      [9] = '#c62612',
      [10] = '#a91500',
    }),
  }),
  color = m({
    prettylights = m({
      syntax = m({
        invalid = m({
          illegal = m({
            text = '#ffffff',
            bg = '#e82a2f',
          }),
        }),
        string = m({
          regexp = '#72f088',
          default = '#addcff',
        }),
        variable = '#ffb757',
        entity = m({
          tag = '#72f088',
          default = '#dbb7ff',
        }),
        constant = m({
          other = m({
            reference = m({
              link = '#addcff',
            }),
          }),
          default = '#91cbff',
        }),
        sublimelinter = m({
          gutter = m({
            mark = '#7a828e',
          }),
        }),
        comment = '#bdc4cc',
        carriage = m({
          ['return'] = m({
            text = '#ffffff',
            bg = '#ff4445',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#f0f3f6',
          }),
        }),
        meta = m({
          diff = m({
            range = '#dbb7ff',
          }),
        }),
        brackethighlighter = m({
          unmatched = '#ff8080',
          angle = '#bdc4cc',
        }),
        keyword = '#ff9492',
        markup = m({
          list = '#fbd669',
          deleted = m({
            text = '#ffdedb',
            bg = '#cc1421',
          }),
          italic = '#f0f3f6',
          changed = m({
            text = '#ffe1b4',
            bg = '#a74c00',
          }),
          inserted = m({
            text = '#acf7b6',
            bg = '#007728',
          }),
          bold = '#f0f3f6',
          heading = '#409eff',
          ignored = m({
            text = '#f0f3f6',
            bg = '#318bf8',
          }),
        }),
      }),
    }),
    ansi = m({
      cyan = m({
        default = '#39c5cf',
        bright = '#56d4dd',
      }),
      magenta = m({
        default = '#cb9eff',
        bright = '#dbb7ff',
      }),
      black = m({
        default = '#7a828e',
        bright = '#9ea7b3',
      }),
      white = m({
        default = '#d9dee3',
        bright = '#ffffff',
      }),
      blue = m({
        default = '#71b7ff',
        bright = '#91cbff',
      }),
      green = m({
        default = '#28d751',
        bright = '#4ae168',
      }),
      red = m({
        default = '#ff9492',
        bright = '#ffb1af',
      }),
      gray = '#9ea7b3',
      yellow = m({
        default = '#f0b72f',
        bright = '#f7c843',
      }),
    }),
  }),
  base = m({
    color = m({
      purple = m({
        [0] = '#f0dfff',
        [1] = '#e6ccff',
        [2] = '#dbb7ff',
        [3] = '#cb9eff',
        [4] = '#bf8fff',
        [5] = '#b87fff',
        [6] = '#a66bff',
        [7] = '#954ffd',
        [8] = '#8031f7',
        [9] = '#6921d7',
      }),
      black = '#010409',
      transparent = '#00000000',
      pink = m({
        [0] = '#ffdceb',
        [1] = '#ffc7e1',
        [2] = '#ffadd4',
        [3] = '#ff8dc7',
        [4] = '#f87cbd',
        [5] = '#ef6eb1',
        [6] = '#e456a3',
        [7] = '#d23d91',
        [8] = '#b72c7d',
        [9] = '#9c1d6a',
      }),
      white = '#ffffff',
      coral = m({
        [0] = '#ffded4',
        [1] = '#ffcbb9',
        [2] = '#ffb39b',
        [3] = '#ff967d',
        [4] = '#fd8468',
        [5] = '#fc704f',
        [6] = '#f75133',
        [7] = '#e03b21',
        [8] = '#c62612',
        [9] = '#a91500',
      }),
      blue = m({
        [0] = '#caeaff',
        [1] = '#addcff',
        [2] = '#91cbff',
        [3] = '#71b7ff',
        [4] = '#5cacff',
        [5] = '#409eff',
        [6] = '#318bf8',
        [7] = '#2672f3',
        [8] = '#1e60d5',
        [9] = '#194fb1',
      }),
      green = m({
        [0] = '#acf7b6',
        [1] = '#72f088',
        [2] = '#4ae168',
        [3] = '#28d751',
        [4] = '#0ac740',
        [5] = '#09b43a',
        [6] = '#02a232',
        [7] = '#008c2c',
        [8] = '#007728',
        [9] = '#006222',
      }),
      orange = m({
        [0] = '#ffe1b4',
        [1] = '#ffcf86',
        [2] = '#ffb757',
        [3] = '#fe9a2d',
        [4] = '#f48b25',
        [5] = '#e7811d',
        [6] = '#d57014',
        [7] = '#bf5e0a',
        [8] = '#a74c00',
        [9] = '#8f3c00',
      }),
      red = m({
        [0] = '#ffdedb',
        [1] = '#ffc9c7',
        [2] = '#ffb1af',
        [3] = '#ff9492',
        [4] = '#ff8080',
        [5] = '#ff6a69',
        [6] = '#ff4445',
        [7] = '#e82a2f',
        [8] = '#cc1421',
        [9] = '#ad0116',
      }),
      yellow = m({
        [0] = '#fbe59e',
        [1] = '#fbd669',
        [2] = '#f7c843',
        [3] = '#f0b72f',
        [4] = '#edaa27',
        [5] = '#e09b13',
        [6] = '#c88508',
        [7] = '#ae7104',
        [8] = '#945d02',
        [9] = '#7b4900',
      }),
      neutral = m({
        [0] = '#ffffff',
        [1] = '#f0f3f6',
        [2] = '#d9dee3',
        [3] = '#bdc4cc',
        [4] = '#9ea7b3',
        [5] = '#7a828e',
        [6] = '#525964',
        [7] = '#3d424d',
        [8] = '#272b33',
        [9] = '#0a0c10',
      }),
    }),
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
        black = '#0d1117',
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
  }),
  borderColor = m({
    neutral = m({
      emphasis = '#9ea7b3',
      muted = '#9ea7b3',
    }),
    translucent = '#7a828e',
    upsell = m({
      emphasis = '#b87fff',
      muted = '#bf8fff66',
    }),
    success = m({
      emphasis = '#09b43a',
      muted = '#0ac740',
    }),
    default = '#7a828e',
    severe = m({
      emphasis = '#e7811d',
      muted = '#f48b25',
    }),
    muted = '#7a828e',
    done = m({
      emphasis = '#b87fff',
      muted = '#bf8fff',
    }),
    disabled = '#3d424db3',
    open = m({
      emphasis = '#09b43a',
      muted = '#0ac740',
    }),
    closed = m({
      emphasis = '#ff6a69',
      muted = '#ff808066',
    }),
    attention = m({
      emphasis = '#e09b13',
      muted = '#edaa27',
    }),
    accent = m({
      emphasis = '#409eff',
      muted = '#5cacff',
    }),
    emphasis = '#7a828e',
    sponsors = m({
      emphasis = '#ef6eb1',
      muted = '#f87cbd',
    }),
    danger = m({
      emphasis = '#ff6a69',
      muted = '#ff8080',
    }),
    transparent = '#00000000',
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#f0f3f6',
      }),
    }),
  }),
  topicTag = m({
    borderColor = '#409eff',
  }),
  timelineBadge = m({
    bgColor = '#3d424d',
  }),
  bgColor = m({
    neutral = m({
      emphasis = '#9ea7b3',
      muted = '#9ea7b366',
    }),
    white = '#ffffff',
    upsell = m({
      emphasis = '#b87fff',
      muted = '#bf8fff26',
    }),
    success = m({
      emphasis = '#09b43a',
      muted = '#0ac74026',
    }),
    default = '#0a0c10',
    severe = m({
      emphasis = '#e7811d',
      muted = '#f48b251a',
    }),
    muted = '#272b33',
    inset = '#010409',
    done = m({
      emphasis = '#b87fff',
      muted = '#bf8fff26',
    }),
    disabled = '#3d424db3',
    open = m({
      emphasis = '#09b43a',
      muted = '#0ac7401a',
    }),
    closed = m({
      emphasis = '#ff6a69',
      muted = '#ff808026',
    }),
    black = '#010409',
    transparent = '#00000000',
    accent = m({
      emphasis = '#409eff',
      muted = '#5cacff1a',
    }),
    inverse = '#ffffff',
    emphasis = '#ffffff',
    attention = m({
      emphasis = '#e09b13',
      muted = '#edaa2726',
    }),
    sponsors = m({
      emphasis = '#ef6eb1',
      muted = '#f87cbd1a',
    }),
    danger = m({
      emphasis = '#ff6a69',
      muted = '#ff80801a',
    }),
  }),
  codeMirror = m({
    cursor = m({
      fgColor = '#fbfcfd',
    }),
    syntax = m({
      fgColor = m({
        comment = '#bdc4cc',
        string = '#addcff',
        variable = '#ffb757',
        storage = '#ff9492',
        constant = '#91cbff',
        support = '#91cbff',
        keyword = '#ff9492',
        entity = '#dbb7ff',
      }),
    }),
    selection = m({
      bgColor = '#5cacff66',
    }),
    matchingBracket = m({
      fgColor = '#fbfcfd',
    }),
    fgColor = '#fbfcfd',
    activeline = m({
      bgColor = '#9ea7b366',
    }),
    lineNumber = m({
      fgColor = '#f0f3f6',
    }),
    bgColor = '#0a0c10',
    gutters = m({
      bgColor = '#0a0c10',
    }),
    lines = m({
      bgColor = '#0a0c10',
    }),
    gutterMarker = m({
      fgColor = m({
        default = '#0a0c10',
        muted = '#f0f3f6',
      }),
    }),
  }),
  sideNav = m({
    bgColor = m({
      selected = '#3d424d',
    }),
  }),
  counter = m({
    borderColor = '#00000000',
  }),
  shadow = m({
    floating = m({
      xlarge = '0px 0px 0px 1px #7a828e, 0px 32px 64px 0px #010409',
      legacy = '0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      large = '0px 0px 0px 1px #7a828e, 0px 24px 48px 0px #010409',
      small = '0px 0px 0px 1px #7a828e, 0px 6px 12px -3px #01040966, 0px 6px 18px 0px #01040966',
      medium = '0px 0px 0px 1px #7a828e, 0px 8px 16px -4px #01040966, 0px 4px 32px -4px #01040966, 0px 24px 48px -12px #01040966, 0px 48px 96px -24px #01040966',
    }),
    inset = 'inset 0px 1px 0px 0px #0104093d',
    resting = m({
      small = '0px 1px 0px 0px #01040966',
      xsmall = '0px 1px 0px 0px #010409cc',
      medium = '0px 3px 6px 0px #010409cc',
    }),
  }),
  controlTrack = m({
    borderColor = m({
      disabled = '#9ea7b3',
      rest = '#00000000',
    }),
    fgColor = m({
      disabled = '#0a0c10',
      rest = '#fbfcfd',
    }),
    bgColor = m({
      disabled = '#9ea7b3',
      active = '#555c67',
      rest = '#3d424d',
      hover = '#494f5a',
    }),
  }),
  button = m({
    outline = m({
      borderColor = m({
        selected = '#ffffff1a',
        hover = '#ffffff1a',
      }),
      fgColor = m({
        disabled = '#60aeff80',
        active = '#ffffff',
        rest = '#5cacff',
        hover = '#71b7ff',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        disabled = '#0a0c10',
        active = '#2672f3',
        rest = '#ffffff',
        hover = '#525964',
      }),
    }),
    default = m({
      borderColor = m({
        disabled = '#3d424db3',
        active = '#7a828e',
        rest = '#7a828e',
        hover = '#7a828e',
      }),
      fgColor = m({
        rest = '#f0f3f6',
      }),
      shadow = m({
        resting = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        disabled = '#3d424db3',
        hover = '#494f5a',
        active = '#555c67',
        selected = '#555c67',
        rest = '#3d424d',
      }),
    }),
    danger = m({
      iconColor = m({
        hover = '#ffffff',
        rest = '#ff8080',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        disabled = '#3d424db3',
        active = '#ff5c5d',
        rest = '#3d424d',
        hover = '#ff4445',
      }),
      borderColor = m({
        active = '#ffffff1a',
        rest = '#7a828e',
        hover = '#ffffff1a',
      }),
      fgColor = m({
        disabled = '#ff808080',
        active = '#ffffff',
        rest = '#ff9492',
        hover = '#ffffff',
      }),
    }),
    inactive = m({
      bgColor = '#3d424d',
      fgColor = '#bdc4cc',
    }),
    star = m({
      iconColor = '#f7c843',
    }),
    primary = m({
      iconColor = m({
        rest = '#0a0c10',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
      bgColor = m({
        disabled = '#048f2f',
        active = '#15c243',
        rest = '#09b43a',
        hover = '#0fbb3f',
      }),
      borderColor = m({
        disabled = '#4ae16866',
        active = '#4ae168',
        rest = '#4ae168',
        hover = '#4ae168',
      }),
      fgColor = m({
        disabled = '#0a0c1080',
        rest = '#0a0c10',
      }),
    }),
    invisible = m({
      borderColor = m({
        disabled = '#3d424db3',
        rest = '#00000000',
        hover = '#7a828e',
      }),
      fgColor = m({
        disabled = '#9ea7b3',
        rest = '#60aeff',
        hover = '#1e60d5',
      }),
      iconColor = m({
        disabled = '#9ea7b3',
        rest = '#f0f3f6',
        hover = '#0a0c10',
      }),
      bgColor = m({
        disabled = '#3d424db3',
        active = '#d9dee3',
        rest = '#00000000',
        hover = '#f0f3f6',
      }),
    }),
  }),
  controlKnob = m({
    borderColor = m({
      disabled = '#3d424db3',
      checked = '#409eff',
      rest = '#7a828e',
    }),
    bgColor = m({
      disabled = '#3d424db3',
      checked = '#ffffff',
      rest = '#010409',
    }),
  }),
  control = m({
    checked = m({
      borderColor = m({
        disabled = '#9ea7b3',
        active = '#54a8ff',
        rest = '#409eff',
        hover = '#4aa3ff',
      }),
      fgColor = m({
        disabled = '#010409',
        rest = '#0a0c10',
      }),
      bgColor = m({
        disabled = '#9ea7b3',
        active = '#54a8ff',
        rest = '#409eff',
        hover = '#4aa3ff',
      }),
    }),
    iconColor = m({
      rest = '#f0f3f6',
    }),
    bgColor = m({
      disabled = '#3d424db3',
      hover = '#494f5a',
      active = '#555c67',
      selected = '#525964',
      rest = '#3d424d',
    }),
    transparent = m({
      borderColor = m({
        active = '#9ea7b3',
        rest = '#00000000',
        hover = '#7a828e',
      }),
      bgColor = m({
        disabled = '#3d424db3',
        hover = '#272b33',
        active = '#525964',
        selected = '#525964',
        rest = '#00000000',
      }),
    }),
    borderColor = m({
      disabled = '#3d424db3',
      success = '#09b43a',
      danger = '#ff6a69',
      emphasis = '#7a828e',
      warning = '#e09b13',
      selected = '#ffffff',
      rest = '#7a828e',
    }),
    fgColor = m({
      placeholder = '#b7bec7',
      disabled = '#9ea7b3',
      rest = '#f0f3f6',
    }),
    danger = m({
      bgColor = m({
        active = '#f65052',
        hover = '#ff6a69',
      }),
      fgColor = m({
        hover = '#0a0c10',
        rest = '#ff8080',
      }),
    }),
  }),
  card = m({
    bgColor = '#272b33',
  }),
  selectMenu = m({
    borderColor = '#7a828e',
    bgColor = m({
      active = '#1e60d5',
    }),
  }),
  buttonCounter = m({
    outline = m({
      bgColor = m({
        disabled = '#409eff0d',
        rest = '#194fb133',
        hover = '#194fb133',
      }),
      fgColor = m({
        disabled = '#60aeff80',
        rest = '#5cacff',
        hover = '#71b7ff',
      }),
    }),
    default = m({
      bgColor = m({
        rest = '#525964',
      }),
    }),
    danger = m({
      bgColor = m({
        disabled = '#ff6a690d',
        rest = '#01040926',
        hover = '#01040926',
      }),
      fgColor = m({
        disabled = '#ff808080',
        rest = '#ff8080',
        hover = '#ffffff',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#01040926',
      }),
    }),
    invisible = m({
      bgColor = m({
        rest = '#525964',
      }),
    }),
  }),
  reactionButton = m({
    selected = m({
      bgColor = m({
        hover = '#5dadff5c',
        rest = '#5cacff33',
      }),
      fgColor = m({
        hover = '#91cbff',
        rest = '#60aeff',
      }),
    }),
  }),
  fgColor = m({
    neutral = '#9ea7b3',
    white = '#ffffff',
    upsell = '#bf8fff',
    success = '#28d751',
    default = '#fbfcfd',
    severe = '#f48b25',
    onEmphasis = '#0a0c10',
    muted = '#f0f3f6',
    link = '#60aeff',
    done = '#bf8fff',
    disabled = '#9ea7b3',
    open = '#28d751',
    closed = '#ff8080',
    black = '#010409',
    attention = '#f0b72f',
    accent = '#60aeff',
    sponsors = '#f87cbd',
    danger = '#ff8080',
  }),
  selection = m({
    bgColor = '#409effb3',
  }),
  skeletonLoader = m({
    bgColor = '#272b33',
  }),
  page = m({
    header = m({
      bgColor = '#0a0c10',
    }),
  }),
  header = m({
    borderColor = m({
      divider = '#bdc4cc',
    }),
    fgColor = m({
      default = '#ffffffb3',
      logo = '#ffffff',
    }),
    bgColor = '#272b33f2',
  }),
  overlay = m({
    borderColor = '#7a828e',
    backdrop = m({
      bgColor = '#272b3366',
    }),
    bgColor = '#272b33',
  }),
  headerSearch = m({
    borderColor = '#525964',
    bgColor = '#0a0c10',
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

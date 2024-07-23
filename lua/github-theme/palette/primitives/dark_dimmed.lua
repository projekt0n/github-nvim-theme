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
  scale = m({
    green = m({
      [1] = '#b4f1b4',
      [2] = '#8ddb8c',
      [3] = '#6bc46d',
      [4] = '#57ab5a',
      [5] = '#46954a',
      [6] = '#347d39',
      [7] = '#2b6a30',
      [8] = '#245829',
      [9] = '#1b4721',
      [10] = '#113417',
    }),
    orange = m({
      [1] = '#ffddb0',
      [2] = '#ffbc6f',
      [3] = '#f69d50',
      [4] = '#e0823d',
      [5] = '#cc6b2c',
      [6] = '#ae5622',
      [7] = '#94471b',
      [8] = '#7f3913',
      [9] = '#682d0f',
      [10] = '#4d210c',
    }),
    transparent = '#00000000',
    white = '#cdd9e5',
    neutral = m({
      [1] = '#cdd9e5',
      [2] = '#adbac7',
      [3] = '#909dab',
      [4] = '#768390',
      [5] = '#636e7b',
      [6] = '#545d68',
      [7] = '#444c56',
      [8] = '#373e47',
      [9] = '#2d333b',
      [10] = '#22272e',
    }),
    coral = m({
      [1] = '#ffdacf',
      [2] = '#ffb9a5',
      [3] = '#f79981',
      [4] = '#ec775c',
      [5] = '#de5b41',
      [6] = '#c2442d',
      [7] = '#a93524',
      [8] = '#8d291b',
      [9] = '#771d13',
      [10] = '#5d1008',
    }),
    purple = m({
      [1] = '#eedcff',
      [2] = '#dcbdfb',
      [3] = '#dcbdfb',
      [4] = '#b083f0',
      [5] = '#986ee2',
      [6] = '#8256d0',
      [7] = '#6b44bc',
      [8] = '#5936a2',
      [9] = '#472c82',
      [10] = '#352160',
    }),
    pink = m({
      [1] = '#ffd7eb',
      [2] = '#ffb3d8',
      [3] = '#fc8dc7',
      [4] = '#e275ad',
      [5] = '#c96198',
      [6] = '#ae4c82',
      [7] = '#983b6e',
      [8] = '#7e325a',
      [9] = '#69264a',
      [10] = '#551639',
    }),
    yellow = m({
      [1] = '#fbe090',
      [2] = '#eac55f',
      [3] = '#daaa3f',
      [4] = '#c69026',
      [5] = '#ae7c14',
      [6] = '#966600',
      [7] = '#805400',
      [8] = '#6c4400',
      [9] = '#593600',
      [10] = '#452700',
    }),
    red = m({
      [1] = '#ffd8d3',
      [2] = '#ffb8b0',
      [3] = '#ff938a',
      [4] = '#f47067',
      [5] = '#e5534b',
      [6] = '#c93c37',
      [7] = '#ad2e2c',
      [8] = '#922323',
      [9] = '#78191b',
      [10] = '#5d0f12',
    }),
    black = '#1c2128',
    blue = m({
      [1] = '#c6e6ff',
      [2] = '#96d0ff',
      [3] = '#6cb6ff',
      [4] = '#539bf5',
      [5] = '#4184e4',
      [6] = '#316dca',
      [7] = '#255ab2',
      [8] = '#1b4b91',
      [9] = '#143d79',
      [10] = '#0f2d5c',
    }),
  }),
  diffBlob = m({
    expander = m({
      iconColor = '#c5d1de',
    }),
    deletion = m({
      fgColor = m({
        text = '#c5d1de',
        num = '#c5d1de',
      }),
      bgColor = m({
        word = '#e5534b66',
        line = '#e5534b26',
        num = '#e5534b4d',
      }),
    }),
    hunk = m({
      bgColor = m({
        num = '#4184e466',
      }),
    }),
    addition = m({
      fgColor = m({
        text = '#c5d1de',
        num = '#c5d1de',
      }),
      bgColor = m({
        word = '#46954a66',
        line = '#46954a26',
        num = '#57ab5a4d',
      }),
    }),
  }),
  base = m({
    color = m({
      green = m({
        [0] = '#b4f1b4',
        [1] = '#8ddb8c',
        [2] = '#6bc46d',
        [3] = '#57ab5a',
        [4] = '#46954a',
        [5] = '#347d39',
        [6] = '#2b6a30',
        [7] = '#245829',
        [8] = '#1b4721',
        [9] = '#113417',
      }),
      orange = m({
        [0] = '#ffddb0',
        [1] = '#ffbc6f',
        [2] = '#f69d50',
        [3] = '#e0823d',
        [4] = '#cc6b2c',
        [5] = '#ae5622',
        [6] = '#94471b',
        [7] = '#7f3913',
        [8] = '#682d0f',
        [9] = '#4d210c',
      }),
      transparent = '#00000000',
      neutral = m({
        [0] = '#cdd9e5',
        [1] = '#adbac7',
        [2] = '#909dab',
        [3] = '#768390',
        [4] = '#636e7b',
        [5] = '#545d68',
        [6] = '#444c56',
        [7] = '#373e47',
        [8] = '#2d333b',
        [9] = '#22272e',
      }),
      black = '#1c2128',
      coral = m({
        [0] = '#ffdacf',
        [1] = '#ffb9a5',
        [2] = '#f79981',
        [3] = '#ec775c',
        [4] = '#de5b41',
        [5] = '#c2442d',
        [6] = '#a93524',
        [7] = '#8d291b',
        [8] = '#771d13',
        [9] = '#5d1008',
      }),
      white = '#cdd9e5',
      pink = m({
        [0] = '#ffd7eb',
        [1] = '#ffb3d8',
        [2] = '#fc8dc7',
        [3] = '#e275ad',
        [4] = '#c96198',
        [5] = '#ae4c82',
        [6] = '#983b6e',
        [7] = '#7e325a',
        [8] = '#69264a',
        [9] = '#551639',
      }),
      yellow = m({
        [0] = '#fbe090',
        [1] = '#eac55f',
        [2] = '#daaa3f',
        [3] = '#c69026',
        [4] = '#ae7c14',
        [5] = '#966600',
        [6] = '#805400',
        [7] = '#6c4400',
        [8] = '#593600',
        [9] = '#452700',
      }),
      red = m({
        [0] = '#ffd8d3',
        [1] = '#ffb8b0',
        [2] = '#ff938a',
        [3] = '#f47067',
        [4] = '#e5534b',
        [5] = '#c93c37',
        [6] = '#ad2e2c',
        [7] = '#922323',
        [8] = '#78191b',
        [9] = '#5d0f12',
      }),
      purple = m({
        [0] = '#eedcff',
        [1] = '#dcbdfb',
        [2] = '#dcbdfb',
        [3] = '#b083f0',
        [4] = '#986ee2',
        [5] = '#8256d0',
        [6] = '#6b44bc',
        [7] = '#5936a2',
        [8] = '#472c82',
        [9] = '#352160',
      }),
      blue = m({
        [0] = '#c6e6ff',
        [1] = '#96d0ff',
        [2] = '#6cb6ff',
        [3] = '#539bf5',
        [4] = '#4184e4',
        [5] = '#316dca',
        [6] = '#255ab2',
        [7] = '#1b4b91',
        [8] = '#143d79',
        [9] = '#0f2d5c',
      }),
    }),
    display = m({
      color = m({
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
        black = '#0d1117',
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
        white = '#ffffff',
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
      }),
    }),
  }),
  display = m({
    green = m({
      bgColor = m({
        emphasis = '#388f3f',
        muted = '#122117',
      }),
      borderColor = m({
        emphasis = '#388f3f',
        muted = '#182f1f',
      }),
      fgColor = '#41b445',
    }),
    red = m({
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
      fgColor = '#f27d83',
    }),
    gray = m({
      bgColor = m({
        emphasis = '#6e7f96',
        muted = '#1c1c1c',
      }),
      borderColor = m({
        emphasis = '#6e7f96',
        muted = '#2a2b2d',
      }),
      fgColor = '#92a1b5',
    }),
    purple = m({
      bgColor = m({
        emphasis = '#975bf1',
        muted = '#211047',
      }),
      borderColor = m({
        emphasis = '#975bf1',
        muted = '#31146b',
      }),
      fgColor = '#b687f7',
    }),
    cyan = m({
      bgColor = m({
        emphasis = '#0587b3',
        muted = '#001f29',
      }),
      borderColor = m({
        emphasis = '#0587b3',
        muted = '#002e3d',
      }),
      fgColor = '#07ace4',
    }),
    plum = m({
      bgColor = m({
        emphasis = '#b643ef',
        muted = '#2a0e3f',
      }),
      borderColor = m({
        emphasis = '#b643ef',
        muted = '#40125e',
      }),
      fgColor = '#d07ef7',
    }),
    coral = m({
      bgColor = m({
        emphasis = '#eb3342',
        muted = '#3c0614',
      }),
      borderColor = m({
        emphasis = '#eb3342',
        muted = '#58091a',
      }),
      fgColor = '#f27d83',
    }),
    pink = m({
      bgColor = m({
        emphasis = '#d34591',
        muted = '#2d1524',
      }),
      borderColor = m({
        emphasis = '#d34591',
        muted = '#451c35',
      }),
      fgColor = '#e57bb2',
    }),
    brown = m({
      bgColor = m({
        emphasis = '#94774c',
        muted = '#241c14',
      }),
      borderColor = m({
        emphasis = '#94774c',
        muted = '#342a1d',
      }),
      fgColor = '#b69a6d',
    }),
    pine = m({
      bgColor = m({
        emphasis = '#18915e',
        muted = '#082119',
      }),
      borderColor = m({
        emphasis = '#18915e',
        muted = '#0b3224',
      }),
      fgColor = '#1bb673',
    }),
    blue = m({
      bgColor = m({
        emphasis = '#0576ff',
        muted = '#001a47',
      }),
      borderColor = m({
        emphasis = '#0576ff',
        muted = '#002766',
      }),
      fgColor = '#4da0ff',
    }),
    orange = m({
      bgColor = m({
        emphasis = '#c46212',
        muted = '#311708',
      }),
      borderColor = m({
        emphasis = '#c46212',
        muted = '#43200a',
      }),
      fgColor = '#ed8326',
    }),
    auburn = m({
      bgColor = m({
        emphasis = '#a86f6b',
        muted = '#271817',
      }),
      borderColor = m({
        emphasis = '#a86f6b',
        muted = '#3a2422',
      }),
      fgColor = '#bf9592',
    }),
    olive = m({
      bgColor = m({
        emphasis = '#7a8321',
        muted = '#171e0b',
      }),
      borderColor = m({
        emphasis = '#7a8321',
        muted = '#252d10',
      }),
      fgColor = '#a2a626',
    }),
    lime = m({
      bgColor = m({
        emphasis = '#5f892f',
        muted = '#141f0f',
      }),
      borderColor = m({
        emphasis = '#5f892f',
        muted = '#1f3116',
      }),
      fgColor = '#7dae37',
    }),
    lemon = m({
      bgColor = m({
        emphasis = '#977b0c',
        muted = '#291d00',
      }),
      borderColor = m({
        emphasis = '#977b0c',
        muted = '#372901',
      }),
      fgColor = '#ba9b12',
    }),
    yellow = m({
      bgColor = m({
        emphasis = '#aa7109',
        muted = '#2e1a00',
      }),
      borderColor = m({
        emphasis = '#aa7109',
        muted = '#3d2401',
      }),
      fgColor = '#d3910d',
    }),
    indigo = m({
      bgColor = m({
        emphasis = '#7070e1',
        muted = '#1b183f',
      }),
      borderColor = m({
        emphasis = '#7070e1',
        muted = '#25215f',
      }),
      fgColor = '#9899ec',
    }),
    teal = m({
      bgColor = m({
        emphasis = '#158a8a',
        muted = '#041f25',
      }),
      borderColor = m({
        emphasis = '#158a8a',
        muted = '#073036',
      }),
      fgColor = '#1cb0ab',
    }),
  }),
  card = m({
    bgColor = '#2d333b',
  }),
  underlineNav = m({
    iconColor = m({
      rest = '#778491',
    }),
    borderColor = m({
      hover = '#636e7b66',
      active = '#ec775c',
    }),
  }),
  buttonCounter = m({
    default = m({
      bgColor = m({
        rest = '#444c56',
      }),
    }),
    invisible = m({
      bgColor = m({
        rest = '#444c56',
      }),
    }),
    danger = m({
      fgColor = m({
        rest = '#e5534b',
        disabled = '#e5534b80',
        hover = '#cdd9e5',
      }),
      bgColor = m({
        rest = '#5d0f1233',
        disabled = '#c93c370d',
        hover = '#cdd9e533',
      }),
    }),
    outline = m({
      fgColor = m({
        rest = '#4184e4',
        disabled = '#478be680',
        hover = '#539bf5',
      }),
      bgColor = m({
        rest = '#0f2d5c33',
        disabled = '#316dca0d',
        hover = '#0f2d5c33',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#11341733',
      }),
    }),
  }),
  highlight = m({
    neutral = m({
      bgColor = '#c6902666',
    }),
  }),
  borderColor = m({
    closed = m({
      emphasis = '#c93c37',
      muted = '#e5534b66',
    }),
    transparent = '#00000000',
    accent = m({
      emphasis = '#316dca',
      muted = '#4184e466',
    }),
    emphasis = '#545d68',
    open = m({
      emphasis = '#347d39',
      muted = '#46954a66',
    }),
    default = '#444c56',
    translucent = '#cdd9e526',
    neutral = m({
      emphasis = '#636e7b',
      muted = '#636e7b66',
    }),
    upsell = m({
      emphasis = '#8256d0',
      muted = '#986ee266',
    }),
    success = m({
      emphasis = '#347d39',
      muted = '#46954a66',
    }),
    sponsors = m({
      emphasis = '#ae4c82',
      muted = '#c9619866',
    }),
    severe = m({
      emphasis = '#ae5622',
      muted = '#cc6b2c66',
    }),
    muted = '#444c56b3',
    attention = m({
      emphasis = '#966600',
      muted = '#ae7c1466',
    }),
    done = m({
      emphasis = '#8256d0',
      muted = '#986ee266',
    }),
    disabled = '#373e47b3',
    danger = m({
      emphasis = '#c93c37',
      muted = '#e5534b66',
    }),
  }),
  data = m({
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
    blue = m({
      color = m({
        default = '#0576ff',
        muted = '#001a47',
      }),
    }),
    teal = m({
      color = m({
        default = '#106c70',
        muted = '#041f25',
      }),
    }),
  }),
  topicTag = m({
    borderColor = '#00000000',
  }),
  counter = m({
    borderColor = '#00000000',
  }),
  button = m({
    inactive = m({
      fgColor = '#768390',
      bgColor = '#373e47',
    }),
    star = m({
      iconColor = '#daaa3f',
    }),
    invisible = m({
      bgColor = m({
        rest = '#00000000',
        active = '#909dab33',
        disabled = '#373e47b3',
        hover = '#909dab1f',
      }),
      borderColor = m({
        rest = '#00000000',
        disabled = '#373e47b3',
        hover = '#00000000',
      }),
      iconColor = m({
        rest = '#778491',
        disabled = '#636e7b',
        hover = '#778491',
      }),
      fgColor = m({
        rest = '#478be6',
        disabled = '#636e7b',
        hover = '#539bf5',
      }),
    }),
    danger = m({
      bgColor = m({
        rest = '#373e47',
        active = '#c33d38',
        disabled = '#373e47b3',
        hover = '#ad2e2c',
      }),
      borderColor = m({
        rest = '#444c56',
        active = '#cdd9e51a',
        hover = '#cdd9e51a',
      }),
      iconColor = m({
        rest = '#e5534b',
        hover = '#cdd9e5',
      }),
      fgColor = m({
        rest = '#e5534b',
        active = '#cdd9e5',
        disabled = '#e5534b80',
        hover = '#cdd9e5',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
    }),
    default = m({
      bgColor = m({
        hover = '#3d444e',
        active = '#434a54',
        selected = '#434a54',
        rest = '#373e47',
        disabled = '#373e47b3',
      }),
      borderColor = m({
        rest = '#444c56',
        active = '#444c56',
        disabled = '#373e47b3',
        hover = '#444c56',
      }),
      fgColor = m({
        rest = '#adbac7',
      }),
      shadow = m({
        resting = '0px 0px 0px 0px #000000',
      }),
    }),
    outline = m({
      bgColor = m({
        rest = '#cdd9e5',
        active = '#1b4b91',
        disabled = '#22272e',
        hover = '#444c56',
      }),
      borderColor = m({
        hover = '#cdd9e51a',
        selected = '#cdd9e51a',
      }),
      fgColor = m({
        rest = '#4184e4',
        active = '#cdd9e5',
        disabled = '#478be680',
        hover = '#539bf5',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
    }),
    primary = m({
      bgColor = m({
        rest = '#347d39',
        active = '#428f46',
        disabled = '#50a254',
        hover = '#3b8640',
      }),
      borderColor = m({
        rest = '#cdd9e51a',
        active = '#cdd9e51a',
        disabled = '#50a254',
        hover = '#cdd9e51a',
      }),
      iconColor = m({
        rest = '#ffffff',
      }),
      fgColor = m({
        rest = '#ffffff',
        disabled = '#cdd9e566',
      }),
      shadow = m({
        selected = '0px 0px 0px 0px #000000',
      }),
    }),
  }),
  skeletonLoader = m({
    bgColor = '#2d333b',
  }),
  sideNav = m({
    bgColor = m({
      selected = '#373e47',
    }),
  }),
  controlKnob = m({
    bgColor = m({
      rest = '#1c2128',
      disabled = '#373e47b3',
      checked = '#cdd9e5',
    }),
    borderColor = m({
      rest = '#606b77',
      disabled = '#373e47b3',
      checked = '#316dca',
    }),
  }),
  shadow = m({
    resting = m({
      small = '0px 1px 0px 0px #1c212866',
      xsmall = '0px 1px 0px 0px #1c2128cc',
      medium = '0px 3px 6px 0px #1c2128cc',
    }),
    floating = m({
      large = '0px 0px 0px 1px #444c56, 0px 24px 48px 0px #1c2128',
      small = '0px 0px 0px 1px #444c56, 0px 6px 12px -3px #1c212866, 0px 6px 18px 0px #1c212866',
      medium = '0px 0px 0px 1px #444c56, 0px 8px 16px -4px #1c212866, 0px 4px 32px -4px #1c212866, 0px 24px 48px -12px #1c212866, 0px 48px 96px -24px #1c212866',
      xlarge = '0px 0px 0px 1px #444c56, 0px 32px 64px 0px #1c2128',
      legacy = '0px 6px 12px -3px #1c212866, 0px 6px 18px 0px #1c212866',
    }),
    inset = 'inset 0px 1px 0px 0px #1c21283d',
  }),
  control = m({
    bgColor = m({
      hover = '#3d444e',
      active = '#434a54',
      selected = '#2d333b',
      rest = '#373e47',
      disabled = '#373e47b3',
    }),
    borderColor = m({
      danger = '#c93c37',
      disabled = '#373e47b3',
      selected = '#cdd9e5',
      rest = '#444c56',
      emphasis = '#606b77',
      warning = '#966600',
      success = '#347d39',
    }),
    transparent = m({
      bgColor = m({
        hover = '#909dab1f',
        active = '#909dab33',
        selected = '#909dab14',
        rest = '#00000000',
        disabled = '#373e47b3',
      }),
      borderColor = m({
        rest = '#00000000',
        active = '#00000000',
        hover = '#00000000',
      }),
    }),
    checked = m({
      bgColor = m({
        rest = '#316dca',
        active = '#3f7fdb',
        disabled = '#636e7b',
        hover = '#3876d3',
      }),
      borderColor = m({
        rest = '#316dca',
        active = '#3f7fdb',
        disabled = '#636e7b',
        hover = '#3876d3',
      }),
      fgColor = m({
        rest = '#cdd9e5',
        disabled = '#1c2128',
      }),
    }),
    fgColor = m({
      rest = '#adbac7',
      placeholder = '#727f8c',
      disabled = '#636e7b',
    }),
    iconColor = m({
      rest = '#778491',
    }),
    danger = m({
      fgColor = m({
        rest = '#e5534b',
        hover = '#f47067',
      }),
      bgColor = m({
        hover = '#e5534b1a',
        active = '#e5534b66',
      }),
    }),
  }),
  selection = m({
    bgColor = '#316dcab3',
  }),
  selectMenu = m({
    bgColor = m({
      active = '#143d79',
    }),
    borderColor = '#545d68',
  }),
  reactionButton = m({
    selected = m({
      fgColor = m({
        rest = '#478be6',
        hover = '#6cb6ff',
      }),
      bgColor = m({
        rest = '#4184e433',
        hover = '#4285e55c',
      }),
    }),
  }),
  fgColor = m({
    closed = '#e5534b',
    black = '#1c2128',
    attention = '#c69026',
    accent = '#478be6',
    open = '#57ab5a',
    default = '#c5d1de',
    neutral = '#636e7b',
    white = '#cdd9e5',
    upsell = '#986ee2',
    success = '#57ab5a',
    sponsors = '#c96198',
    severe = '#cc6b2c',
    onEmphasis = '#cdd9e5',
    muted = '#778491',
    link = '#478be6',
    done = '#986ee2',
    disabled = '#636e7b',
    danger = '#e5534b',
  }),
  bgColor = m({
    closed = m({
      emphasis = '#c93c37',
      muted = '#e5534b26',
    }),
    black = '#1c2128',
    transparent = '#00000000',
    inset = '#1c2128',
    inverse = '#cdd9e5',
    emphasis = '#636e7b',
    open = m({
      emphasis = '#347d39',
      muted = '#46954a1a',
    }),
    default = '#22272e',
    accent = m({
      emphasis = '#316dca',
      muted = '#4184e41a',
    }),
    white = '#cdd9e5',
    upsell = m({
      emphasis = '#8256d0',
      muted = '#986ee226',
    }),
    success = m({
      emphasis = '#347d39',
      muted = '#46954a26',
    }),
    sponsors = m({
      emphasis = '#ae4c82',
      muted = '#c961981a',
    }),
    severe = m({
      emphasis = '#ae5622',
      muted = '#cc6b2c1a',
    }),
    attention = m({
      emphasis = '#966600',
      muted = '#ae7c1426',
    }),
    muted = '#2d333b',
    neutral = m({
      emphasis = '#636e7b',
      muted = '#636e7b66',
    }),
    done = m({
      emphasis = '#8256d0',
      muted = '#986ee226',
    }),
    disabled = '#373e47b3',
    danger = m({
      emphasis = '#c93c37',
      muted = '#e5534b1a',
    }),
  }),
  page = m({
    header = m({
      bgColor = '#22272e',
    }),
  }),
  header = m({
    bgColor = '#2d333bf2',
    borderColor = m({
      divider = '#768390',
    }),
    fgColor = m({
      logo = '#cdd9e5',
      default = '#cdd9e5b3',
    }),
  }),
  overlay = m({
    bgColor = '#2d333b',
    borderColor = '#444c56b3',
    backdrop = m({
      bgColor = '#2d333b66',
    }),
  }),
  avatarStack = m({
    fade = m({
      bgColor = m({
        default = '#444c56',
        muted = '#373e47',
      }),
    }),
  }),
  avatar = m({
    bgColor = '#cdd9e51a',
    borderColor = '#cdd9e526',
    shadow = '0px 0px 0px 2px #22272e',
  }),
  headerSearch = m({
    bgColor = '#22272e',
    borderColor = '#444c56',
  }),
  focus = m({
    outlineColor = '#316dca',
  }),
  timelineBadge = m({
    bgColor = '#373e47',
  }),
  menu = m({
    bgColor = m({
      active = '#2d333b',
    }),
  }),
  outline = m({
    focus = '#316dca solid 2px',
  }),
  label = m({
    green = m({
      fgColor = m({
        rest = '#41b445',
        active = '#75d36f',
        hover = '#46c144',
      }),
      bgColor = m({
        rest = '#122117',
        active = '#214529',
        hover = '#182f1f',
      }),
    }),
    red = m({
      fgColor = m({
        rest = '#f27d83',
        active = '#f7adab',
        hover = '#f48b8d',
      }),
      bgColor = m({
        rest = '#3c0614',
        active = '#790c20',
        hover = '#58091a',
      }),
    }),
    gray = m({
      fgColor = m({
        rest = '#92a1b5',
        active = '#b3c0d1',
        hover = '#9babbf',
      }),
      bgColor = m({
        rest = '#1c1c1c',
        active = '#393d41',
        hover = '#2a2b2d',
      }),
    }),
    purple = m({
      fgColor = m({
        rest = '#b687f7',
        active = '#d2affd',
        hover = '#c398fb',
      }),
      bgColor = m({
        rest = '#211047',
        active = '#481a9e',
        hover = '#31146b',
      }),
    }),
    cyan = m({
      fgColor = m({
        rest = '#07ace4',
        active = '#45cbf7',
        hover = '#09b7f1',
      }),
      bgColor = m({
        rest = '#001f29',
        active = '#014156',
        hover = '#002e3d',
      }),
    }),
    plum = m({
      fgColor = m({
        rest = '#d07ef7',
        active = '#e4a5fd',
        hover = '#d889fa',
      }),
      bgColor = m({
        rest = '#2a0e3f',
        active = '#5c1688',
        hover = '#40125e',
      }),
    }),
    coral = m({
      fgColor = m({
        rest = '#f7794b',
        active = '#fdaa86',
        hover = '#fa8c61',
      }),
      bgColor = m({
        rest = '#351008',
        active = '#72220d',
        hover = '#51180b',
      }),
    }),
    pink = m({
      fgColor = m({
        rest = '#e57bb2',
        active = '#f4a9cd',
        hover = '#ec8dbd',
      }),
      bgColor = m({
        rest = '#2d1524',
        active = '#65244a',
        hover = '#451c35',
      }),
    }),
    brown = m({
      fgColor = m({
        rest = '#b69a6d',
        active = '#cdbb98',
        hover = '#bfa77d',
      }),
      bgColor = m({
        rest = '#241c14',
        active = '#483a28',
        hover = '#342a1d',
      }),
    }),
    pine = m({
      fgColor = m({
        rest = '#1bb673',
        active = '#1bda81',
        hover = '#1ac176',
      }),
      bgColor = m({
        rest = '#082119',
        active = '#0e4430',
        hover = '#0b3224',
      }),
    }),
    blue = m({
      fgColor = m({
        rest = '#4da0ff',
        active = '#85c2ff',
        hover = '#61adff',
      }),
      bgColor = m({
        rest = '#001a47',
        active = '#00378a',
        hover = '#002766',
      }),
    }),
    orange = m({
      fgColor = m({
        rest = '#ed8326',
        active = '#f6b06a',
        hover = '#f1933b',
      }),
      bgColor = m({
        rest = '#311708',
        active = '#632f0d',
        hover = '#43200a',
      }),
    }),
    auburn = m({
      fgColor = m({
        rest = '#bf9592',
        active = '#d4b7b5',
        hover = '#c6a19f',
      }),
      bgColor = m({
        rest = '#271817',
        active = '#543331',
        hover = '#3a2422',
      }),
    }),
    olive = m({
      fgColor = m({
        rest = '#a2a626',
        active = '#cbc025',
        hover = '#b2af24',
      }),
      bgColor = m({
        rest = '#171e0b',
        active = '#374115',
        hover = '#252d10',
      }),
    }),
    lime = m({
      fgColor = m({
        rest = '#7dae37',
        active = '#9fcc3e',
        hover = '#89ba36',
      }),
      bgColor = m({
        rest = '#141f0f',
        active = '#2c441d',
        hover = '#1f3116',
      }),
    }),
    lemon = m({
      fgColor = m({
        rest = '#ba9b12',
        active = '#d7bc1d',
        hover = '#c4a717',
      }),
      bgColor = m({
        rest = '#291d00',
        active = '#4f3c02',
        hover = '#372901',
      }),
    }),
    yellow = m({
      fgColor = m({
        rest = '#d3910d',
        active = '#edb431',
        hover = '#df9e11',
      }),
      bgColor = m({
        rest = '#2e1a00',
        active = '#5a3702',
        hover = '#3d2401',
      }),
    }),
    indigo = m({
      fgColor = m({
        rest = '#9899ec',
        active = '#b7baf6',
        hover = '#a2a5f1',
      }),
      bgColor = m({
        rest = '#1b183f',
        active = '#312c90',
        hover = '#25215f',
      }),
    }),
    teal = m({
      fgColor = m({
        rest = '#1cb0ab',
        active = '#24d6c4',
        hover = '#1fbdb2',
      }),
      bgColor = m({
        rest = '#041f25',
        active = '#0a464d',
        hover = '#073036',
      }),
    }),
  }),
  codeMirror = m({
    matchingBracket = m({
      fgColor = '#c5d1de',
    }),
    lineNumber = m({
      fgColor = '#778491',
    }),
    gutters = m({
      bgColor = '#22272e',
    }),
    gutterMarker = m({
      fgColor = m({
        default = '#22272e',
        muted = '#778491',
      }),
    }),
    bgColor = '#22272e',
    selection = m({
      bgColor = '#4184e466',
    }),
    syntax = m({
      fgColor = m({
        comment = '#768390',
        variable = '#f69d50',
        constant = '#6cb6ff',
        storage = '#f47067',
        entity = '#dcbdfb',
        support = '#6cb6ff',
        keyword = '#f47067',
        string = '#96d0ff',
      }),
    }),
    lines = m({
      bgColor = '#22272e',
    }),
    activeline = m({
      bgColor = '#636e7b66',
    }),
    fgColor = '#c5d1de',
    cursor = m({
      fgColor = '#c5d1de',
    }),
  }),
  treeViewItem = m({
    leadingVisual = m({
      iconColor = m({
        rest = '#778491',
      }),
    }),
  }),
  controlTrack = m({
    bgColor = m({
      rest = '#373e47',
      active = '#434a54',
      disabled = '#636e7b',
      hover = '#3d444e',
    }),
    borderColor = m({
      rest = '#00000000',
      disabled = '#636e7b',
    }),
    fgColor = m({
      rest = '#778491',
      disabled = '#cdd9e5',
    }),
  }),
  color = m({
    prettylights = m({
      syntax = m({
        comment = '#768390',
        carriage = m({
          ['return'] = m({
            text = '#cdd9e5',
            bg = '#ad2e2c',
          }),
        }),
        storage = m({
          modifier = m({
            import = '#adbac7',
          }),
        }),
        brackethighlighter = m({
          unmatched = '#e5534b',
          angle = '#768390',
        }),
        keyword = '#f47067',
        invalid = m({
          illegal = m({
            text = '#cdd9e5',
            bg = '#922323',
          }),
        }),
        variable = '#f69d50',
        constant = m({
          other = m({
            reference = m({
              link = '#96d0ff',
            }),
          }),
          default = '#6cb6ff',
        }),
        entity = m({
          tag = '#8ddb8c',
          default = '#dcbdfb',
        }),
        meta = m({
          diff = m({
            range = '#dcbdfb',
          }),
        }),
        string = m({
          regexp = '#8ddb8c',
          default = '#96d0ff',
        }),
        sublimelinter = m({
          gutter = m({
            mark = '#545d68',
          }),
        }),
        markup = m({
          list = '#eac55f',
          deleted = m({
            text = '#ffd8d3',
            bg = '#78191b',
          }),
          italic = '#adbac7',
          changed = m({
            text = '#ffddb0',
            bg = '#682d0f',
          }),
          inserted = m({
            text = '#b4f1b4',
            bg = '#1b4721',
          }),
          bold = '#adbac7',
          heading = '#316dca',
          ignored = m({
            text = '#adbac7',
            bg = '#255ab2',
          }),
        }),
      }),
    }),
    ansi = m({
      green = m({
        default = '#57ab5a',
        bright = '#6bc46d',
      }),
      black = m({
        default = '#545d68',
        bright = '#636e7b',
      }),
      red = m({
        default = '#f47067',
        bright = '#ff938a',
      }),
      gray = '#636e7b',
      white = m({
        default = '#909dab',
        bright = '#cdd9e5',
      }),
      cyan = m({
        default = '#39c5cf',
        bright = '#56d4dd',
      }),
      magenta = m({
        default = '#b083f0',
        bright = '#dcbdfb',
      }),
      yellow = m({
        default = '#c69026',
        bright = '#daaa3f',
      }),
      blue = m({
        default = '#539bf5',
        bright = '#6cb6ff',
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

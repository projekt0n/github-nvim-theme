-- NOTE: THIS IS AN AUTO-GENERATED FILE. DO NOT EDIT BY-HAND.
local M = vim.json.decode(
  [=[{
  "canvasDefaultTransparent": "rgba(34,39,46,0)",
  "pageHeaderBg": "#22272e",
  "marketingIcon": {
    "primary": "#6cb6ff",
    "secondary": "#316dca"
  },
  "diffBlob": {
    "addition": {
      "numText": "#adbac7",
      "fg": "#adbac7",
      "numBg": "rgba(87,171,90,0.3)",
      "lineBg": "rgba(70,149,74,0.15)",
      "wordBg": "rgba(70,149,74,0.4)"
    },
    "deletion": {
      "numText": "#adbac7",
      "fg": "#adbac7",
      "numBg": "rgba(229,83,75,0.3)",
      "lineBg": "rgba(229,83,75,0.1)",
      "wordBg": "rgba(229,83,75,0.4)"
    },
    "hunk": {
      "numBg": "rgba(65,132,228,0.4)"
    },
    "expander": {
      "icon": "#adbac7"
    },
    "selectedLineHighlightMixBlendMode": "screen"
  },
  "diffstat": {
    "deletionBorder": "rgba(205,217,229,0.1)",
    "additionBorder": "rgba(205,217,229,0.1)",
    "additionBg": "#57ab5a"
  },
  "searchKeyword": {
    "hl": "rgba(198,144,38,0.4)"
  },
  "prettylights": {
    "syntax": {
      "comment": "#768390",
      "constant": "#6cb6ff",
      "entity": "#dcbdfb",
      "storageModifierImport": "#adbac7",
      "entityTag": "#8ddb8c",
      "keyword": "#f47067",
      "string": "#96d0ff",
      "variable": "#f69d50",
      "brackethighlighterUnmatched": "#e5534b",
      "invalidIllegalText": "#cdd9e5",
      "invalidIllegalBg": "#922323",
      "carriageReturnText": "#cdd9e5",
      "carriageReturnBg": "#ad2e2c",
      "stringRegexp": "#8ddb8c",
      "markupList": "#eac55f",
      "markupHeading": "#316dca",
      "markupItalic": "#adbac7",
      "markupBold": "#adbac7",
      "markupDeletedText": "#ffd8d3",
      "markupDeletedBg": "#78191b",
      "markupInsertedText": "#b4f1b4",
      "markupInsertedBg": "#1b4721",
      "markupChangedText": "#ffddb0",
      "markupChangedBg": "#682d0f",
      "markupIgnoredText": "#adbac7",
      "markupIgnoredBg": "#255ab2",
      "metaDiffRange": "#dcbdfb",
      "brackethighlighterAngle": "#768390",
      "sublimelinterGutterMark": "#545d68",
      "constantOtherReferenceLink": "#96d0ff"
    }
  },
  "codemirror": {
    "text": "#adbac7",
    "bg": "#22272e",
    "guttersBg": "#22272e",
    "guttermarkerText": "#22272e",
    "guttermarkerSubtleText": "#636e7b",
    "linenumberText": "#768390",
    "cursor": "#adbac7",
    "selectionBg": "rgba(65,132,228,0.4)",
    "activelineBg": "rgba(99,110,123,0.1)",
    "matchingbracketText": "#adbac7",
    "linesBg": "#22272e",
    "syntax": {
      "comment": "#768390",
      "constant": "#6cb6ff",
      "entity": "#dcbdfb",
      "keyword": "#f47067",
      "storage": "#f47067",
      "string": "#96d0ff",
      "support": "#6cb6ff",
      "variable": "#f69d50"
    }
  },
  "checks": {
    "bg": "#1c2128",
    "runBorderWidth": "1px",
    "containerBorderWidth": "1px",
    "textPrimary": "#adbac7",
    "textSecondary": "#768390",
    "textLink": "#539bf5",
    "btnIcon": "#768390",
    "btnHoverIcon": "#adbac7",
    "btnHoverBg": "rgba(99,110,123,0.1)",
    "inputText": "#768390",
    "inputPlaceholderText": "#636e7b",
    "inputFocusText": "#adbac7",
    "inputBg": "#2d333b",
    "inputShadow": "0 0 0 1px (obj) => (0, get_1.default)(obj, path)",
    "donutError": "#e5534b",
    "donutPending": "#c69026",
    "donutSuccess": "#46954a",
    "donutNeutral": "#768390",
    "dropdownText": "#adbac7",
    "dropdownBg": "#2d333b",
    "dropdownBorder": "#444c56",
    "dropdownShadow": "rgba(28,33,40,0.3)",
    "dropdownHoverText": "#adbac7",
    "dropdownHoverBg": "rgba(99,110,123,0.1)",
    "dropdownBtnHoverText": "#adbac7",
    "dropdownBtnHoverBg": "rgba(99,110,123,0.1)",
    "scrollbarThumbBg": "rgba(99,110,123,0.4)",
    "headerLabelText": "#768390",
    "headerLabelOpenText": "#adbac7",
    "headerBorder": "#373e47",
    "headerIcon": "#768390",
    "lineText": "#768390",
    "lineNumText": "#636e7b",
    "lineTimestampText": "#636e7b",
    "lineHoverBg": "rgba(99,110,123,0.1)",
    "lineSelectedBg": "rgba(65,132,228,0.1)",
    "lineSelectedNumText": "#539bf5",
    "lineDtFmText": "#cdd9e5",
    "lineDtFmBg": "#966600",
    "gateBg": "rgba(174,124,20,0.15)",
    "gateText": "#768390",
    "gateWaitingText": "#c69026",
    "stepHeaderOpenBg": "#2d333b",
    "stepErrorText": "#e5534b",
    "stepWarningText": "#c69026",
    "loglineText": "#768390",
    "loglineNumText": "#636e7b",
    "loglineDebugText": "#986ee2",
    "loglineErrorText": "#768390",
    "loglineErrorNumText": "#636e7b",
    "loglineErrorBg": "rgba(229,83,75,0.1)",
    "loglineWarningText": "#768390",
    "loglineWarningNumText": "#c69026",
    "loglineWarningBg": "rgba(174,124,20,0.15)",
    "loglineCommandText": "#539bf5",
    "loglineSectionText": "#57ab5a",
    "ansi": {
      "black": "#22272e",
      "blackBright": "#2d333b",
      "white": "#909dab",
      "whiteBright": "#909dab",
      "gray": "#636e7b",
      "red": "#f47067",
      "redBright": "#ff938a",
      "green": "#57ab5a",
      "greenBright": "#6bc46d",
      "yellow": "#c69026",
      "yellowBright": "#daaa3f",
      "blue": "#539bf5",
      "blueBright": "#6cb6ff",
      "magenta": "#b083f0",
      "magentaBright": "#dcbdfb",
      "cyan": "#76e3ea",
      "cyanBright": "#b3f0ff"
    }
  },
  "project": {
    "headerBg": "#22272e",
    "sidebarBg": "#2d333b",
    "gradientIn": "#2d333b",
    "gradientOut": "rgba(45,51,59,0)"
  },
  "mktg": {
    "btn": {
      "bg": "#f6f8fa",
      "shadow": {
        "outline": "rgb(255 255 255 / 25%) 0 0 0 1px inset",
        "focus": "rgb(255 255 255 / 25%) 0 0 0 4px",
        "hover": "0 4px 7px rgba(0, 0, 0, 0.15), 0 100px 80px rgba(255, 255, 255, 0.02), 0 42px 33px rgba(255, 255, 255, 0.024), 0 22px 18px rgba(255, 255, 255, 0.028), 0 12px 10px rgba(255, 255, 255, 0.034), 0 7px 5px rgba(255, 255, 255, 0.04), 0 3px 2px rgba(255, 255, 255, 0.07)",
        "hoverMuted": "rgb(255 255 255) 0 0 0 2px inset"
      }
    }
  },
  "control": {
    "borderColor": {
      "emphasis": "#606771"
    }
  },
  "avatar": {
    "bg": "rgba(205,217,229,0.1)",
    "border": "rgba(205,217,229,0.1)",
    "stackFade": "#444c56",
    "stackFadeMore": "#373e47",
    "childShadow": "0 0 0 2px #22272e"
  },
  "topicTag": {
    "border": "rgba(0,0,0,0)"
  },
  "counter": {
    "border": "rgba(0,0,0,0)"
  },
  "selectMenu": {
    "backdropBorder": "#545d68",
    "tapHighlight": "rgba(68,76,86,0.5)",
    "tapFocusBg": "#143d79"
  },
  "overlay": {
    "shadow": "0 0 0 1px #444c56, 0 16px 32px rgba(28,33,40,0.85)",
    "backdrop": "rgba(45,51,59,0.4)"
  },
  "header": {
    "text": "rgba(205,217,229,0.7)",
    "bg": "#2d333b",
    "divider": "#768390",
    "logo": "#cdd9e5"
  },
  "headerSearch": {
    "bg": "#22272e",
    "border": "#444c56"
  },
  "sidenav": {
    "selectedBg": "#373e47"
  },
  "menu": {
    "bgActive": "#2d333b"
  },
  "input": {
    "disabledBg": "rgba(99,110,123,0)"
  },
  "timeline": {
    "badgeBg": "#373e47"
  },
  "ansi": {
    "black": "#545d68",
    "blackBright": "#636e7b",
    "white": "#909dab",
    "whiteBright": "#cdd9e5",
    "gray": "#636e7b",
    "red": "#f47067",
    "redBright": "#ff938a",
    "green": "#57ab5a",
    "greenBright": "#6bc46d",
    "yellow": "#c69026",
    "yellowBright": "#daaa3f",
    "blue": "#539bf5",
    "blueBright": "#6cb6ff",
    "magenta": "#b083f0",
    "magentaBright": "#dcbdfb",
    "cyan": "#39c5cf",
    "cyanBright": "#56d4dd"
  },
  "btn": {
    "text": "#adbac7",
    "bg": "#373e47",
    "border": "rgba(205,217,229,0.1)",
    "shadow": "0 0 transparent",
    "insetShadow": "0 0 transparent",
    "hoverBg": "#444c56",
    "hoverBorder": "#768390",
    "activeBg": "hsla(213,12%,27%,1)",
    "activeBorder": "#636e7b",
    "selectedBg": "#2d333b",
    "counterBg": "#444c56",
    "primary": {
      "text": "#ffffff",
      "bg": "#347d39",
      "border": "rgba(205,217,229,0.1)",
      "shadow": "0 0 transparent",
      "insetShadow": "0 0 transparent",
      "hoverBg": "#46954a",
      "hoverBorder": "rgba(205,217,229,0.1)",
      "selectedBg": "#347d39",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(205,217,229,0.5)",
      "disabledBg": "rgba(52,125,57,0.6)",
      "disabledBorder": "rgba(205,217,229,0.1)",
      "icon": "#cdd9e5",
      "counterBg": "rgba(17,52,23,0.2)"
    },
    "outline": {
      "text": "#4184e4",
      "hoverText": "#539bf5",
      "hoverBg": "#444c56",
      "hoverBorder": "rgba(205,217,229,0.1)",
      "hoverShadow": "0 1px 0 rgba(28,33,40,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(205,217,229,0.03)",
      "hoverCounterBg": "rgba(15,45,92,0.2)",
      "selectedText": "#cdd9e5",
      "selectedBg": "#1b4b91",
      "selectedBorder": "rgba(205,217,229,0.1)",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(83,155,245,0.5)",
      "disabledBg": "#22272e",
      "disabledCounterBg": "rgba(49,109,202,0.05)",
      "counterBg": "rgba(15,45,92,0.2)",
      "hoverCounterFg": "#539bf5",
      "disabledCounterFg": "rgba(83,155,245,0.5)",
      "counterFg": "#4184e4"
    },
    "danger": {
      "text": "#e5534b",
      "hoverText": "#cdd9e5",
      "hoverBg": "#c93c37",
      "hoverBorder": "#e5534b",
      "hoverShadow": "0 0 transparent",
      "hoverInsetShadow": "0 0 transparent",
      "hoverIcon": "#cdd9e5",
      "hoverCounterBg": "rgba(255,255,255,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "#ad2e2c",
      "selectedBorder": "#f47067",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(229,83,75,0.5)",
      "disabledBg": "#22272e",
      "disabledCounterBg": "rgba(201,60,55,0.05)",
      "counterBg": "rgba(93,15,18,0.2)",
      "icon": "#e5534b",
      "counterFg": "#e5534b",
      "disabledCounterFg": "rgba(229,83,75,0.5)",
      "hoverCounterFg": "#cdd9e5"
    }
  },
  "underlinenav": {
    "icon": "#636e7b",
    "borderHover": "rgba(99,110,123,0.4)"
  },
  "actionListItem": {
    "inlineDivider": "rgba(68,76,86,0.48)",
    "default": {
      "hoverBg": "rgba(144,157,171,0.12)",
      "hoverBorder": "rgba(0,0,0,0)",
      "activeBg": "rgba(144,157,171,0.2)",
      "activeBorder": "rgba(0,0,0,0)",
      "selectedBg": "rgba(144,157,171,0.08)"
    },
    "danger": {
      "hoverBg": "rgba(229,83,75,0.16)",
      "activeBg": "rgba(229,83,75,0.24)",
      "hoverText": "#f47067"
    }
  },
  "switchTrack": {
    "bg": "rgba(99,110,123,0.1)",
    "hoverBg": "hsla(213,11%,69%,0.1)",
    "activeBg": "rgba(99,110,123,0.4)",
    "disabledBg": "#373e47",
    "fg": "#768390",
    "disabledFg": "#1c2128",
    "border": "rgba(0,0,0,0)",
    "checked": {
      "bg": "rgba(49,109,202,0.35)",
      "hoverBg": "rgba(49,109,202,0.5)",
      "activeBg": "rgba(49,109,202,0.65)",
      "fg": "#cdd9e5",
      "disabledFg": "#1c2128",
      "border": "rgba(0,0,0,0)"
    }
  },
  "switchKnob": {
    "bg": "#22272e",
    "border": "#606771",
    "disabledBg": "#2d333b",
    "checked": {
      "bg": "#22272e",
      "disabledBg": "#2d333b",
      "border": "rgba(49,109,202,0.35)"
    }
  },
  "segmentedControl": {
    "bg": "rgba(99,110,123,0.1)",
    "button": {
      "bg": "#22272e",
      "hover": {
        "bg": "#444c56"
      },
      "active": {
        "bg": "#373e47"
      },
      "selected": {
        "border": "#636e7b"
      }
    }
  },
  "treeViewItem": {
    "chevron": {
      "hoverBg": "rgba(144,157,171,0.12)"
    },
    "directory": {
      "fill": "#768390"
    }
  },
  "fg": {
    "default": "#adbac7",
    "muted": "#768390",
    "subtle": "#636e7b",
    "onEmphasis": "#cdd9e5"
  },
  "canvas": {
    "default": "#22272e",
    "overlay": "#2d333b",
    "inset": "#1c2128",
    "subtle": "#2d333b"
  },
  "border": {
    "default": "#444c56",
    "muted": "#373e47",
    "subtle": "rgba(205,217,229,0.1)"
  },
  "shadow": {
    "small": "0 0 transparent",
    "medium": "0 3px 6px #1c2128",
    "large": "0 8px 24px #1c2128",
    "extraLarge": "0 12px 48px #1c2128"
  },
  "neutral": {
    "emphasisPlus": "#636e7b",
    "emphasis": "#636e7b",
    "muted": "rgba(99,110,123,0.4)",
    "subtle": "rgba(99,110,123,0.1)"
  },
  "accent": {
    "fg": "#539bf5",
    "emphasis": "#316dca",
    "muted": "rgba(65,132,228,0.4)",
    "subtle": "rgba(65,132,228,0.1)"
  },
  "success": {
    "fg": "#57ab5a",
    "emphasis": "#347d39",
    "muted": "rgba(70,149,74,0.4)",
    "subtle": "rgba(70,149,74,0.15)"
  },
  "attention": {
    "fg": "#c69026",
    "emphasis": "#966600",
    "muted": "rgba(174,124,20,0.4)",
    "subtle": "rgba(174,124,20,0.15)"
  },
  "severe": {
    "fg": "#cc6b2c",
    "emphasis": "#ae5622",
    "muted": "rgba(204,107,44,0.4)",
    "subtle": "rgba(204,107,44,0.1)"
  },
  "danger": {
    "fg": "#e5534b",
    "emphasis": "#c93c37",
    "muted": "rgba(229,83,75,0.4)",
    "subtle": "rgba(229,83,75,0.1)"
  },
  "open": {
    "fg": "#57ab5a",
    "emphasis": "#347d39",
    "muted": "rgba(70,149,74,0.4)",
    "subtle": "rgba(70,149,74,0.15)"
  },
  "closed": {
    "fg": "#e5534b",
    "emphasis": "#c93c37",
    "muted": "rgba(229,83,75,0.4)",
    "subtle": "rgba(229,83,75,0.15)"
  },
  "done": {
    "fg": "#986ee2",
    "emphasis": "#8256d0",
    "muted": "rgba(152,110,226,0.4)",
    "subtle": "rgba(152,110,226,0.1)"
  },
  "sponsors": {
    "fg": "#c96198",
    "emphasis": "#ae4c82",
    "muted": "rgba(201,97,152,0.4)",
    "subtle": "rgba(201,97,152,0.1)"
  },
  "primer": {
    "fg": {
      "disabled": "#545d68"
    },
    "canvas": {
      "backdrop": "rgba(28,33,40,0.8)",
      "sticky": "rgba(34,39,46,0.95)"
    },
    "border": {
      "active": "#ec775c",
      "contrast": "rgba(205,217,229,0.2)"
    },
    "shadow": {
      "highlight": "0 0 transparent",
      "inset": "0 0 transparent"
    }
  },
  "scale": {
    "black": "#1c2128",
    "white": "#cdd9e5",
    "gray": [
      "#cdd9e5",
      "#adbac7",
      "#909dab",
      "#768390",
      "#636e7b",
      "#545d68",
      "#444c56",
      "#373e47",
      "#2d333b",
      "#22272e"
    ],
    "blue": [
      "#c6e6ff",
      "#96d0ff",
      "#6cb6ff",
      "#539bf5",
      "#4184e4",
      "#316dca",
      "#255ab2",
      "#1b4b91",
      "#143d79",
      "#0f2d5c"
    ],
    "green": [
      "#b4f1b4",
      "#8ddb8c",
      "#6bc46d",
      "#57ab5a",
      "#46954a",
      "#347d39",
      "#2b6a30",
      "#245829",
      "#1b4721",
      "#113417"
    ],
    "yellow": [
      "#fbe090",
      "#eac55f",
      "#daaa3f",
      "#c69026",
      "#ae7c14",
      "#966600",
      "#805400",
      "#6c4400",
      "#593600",
      "#452700"
    ],
    "orange": [
      "#ffddb0",
      "#ffbc6f",
      "#f69d50",
      "#e0823d",
      "#cc6b2c",
      "#ae5622",
      "#94471b",
      "#7f3913",
      "#682d0f",
      "#4d210c"
    ],
    "red": [
      "#ffd8d3",
      "#ffb8b0",
      "#ff938a",
      "#f47067",
      "#e5534b",
      "#c93c37",
      "#ad2e2c",
      "#922323",
      "#78191b",
      "#5d0f12"
    ],
    "purple": [
      "#eedcff",
      "#dcbdfb",
      "#dcbdfb",
      "#b083f0",
      "#986ee2",
      "#8256d0",
      "#6b44bc",
      "#5936a2",
      "#472c82",
      "#352160"
    ],
    "pink": [
      "#ffd7eb",
      "#ffb3d8",
      "#fc8dc7",
      "#e275ad",
      "#c96198",
      "#ae4c82",
      "#983b6e",
      "#7e325a",
      "#69264a",
      "#551639"
    ],
    "coral": [
      "#ffdacf",
      "#ffb9a5",
      "#f79981",
      "#ec775c",
      "#de5b41",
      "#c2442d",
      "#a93524",
      "#8d291b",
      "#771d13",
      "#5d1008"
    ]
  }
}]=],
  { luanil = { object = false, array = false } }
)
M._VERSION =
  vim.json.decode([=["7.13.1"]=], { luanil = { object = false, array = false } })
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

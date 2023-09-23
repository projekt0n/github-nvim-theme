-- NOTE: THIS IS AN AUTO-GENERATED FILE. DO NOT EDIT BY-HAND.
local M = vim.json.decode(
  [=[{
  "canvasDefaultTransparent": "rgba(10,12,16,0)",
  "pageHeaderBg": "#0a0c10",
  "marketingIcon": {
    "primary": "#91cbff",
    "secondary": "#409eff"
  },
  "diffBlob": {
    "addition": {
      "numText": "#f0f3f6",
      "fg": "#0a0c10",
      "numBg": "rgba(38,205,77,0.3)",
      "lineBg": "rgba(9,180,58,0.15)",
      "wordBg": "#09b43a"
    },
    "deletion": {
      "numText": "#f0f3f6",
      "fg": "#0a0c10",
      "numBg": "rgba(255,106,105,0.3)",
      "lineBg": "rgba(255,106,105,0.1)",
      "wordBg": "#ff6a69"
    },
    "hunk": {
      "numBg": "rgba(64,158,255,0.4)"
    },
    "expander": {
      "icon": "#f0f3f6"
    },
    "selectedLineHighlightMixBlendMode": "screen"
  },
  "diffstat": {
    "deletionBorder": "#ffb1af",
    "additionBorder": "#4ae168",
    "additionBg": "#26cd4d"
  },
  "searchKeyword": {
    "hl": "rgba(240,183,47,0.4)"
  },
  "prettylights": {
    "syntax": {
      "comment": "#bdc4cc",
      "constant": "#91cbff",
      "entity": "#dbb7ff",
      "storageModifierImport": "#f0f3f6",
      "entityTag": "#72f088",
      "keyword": "#ff9492",
      "string": "#addcff",
      "variable": "#ffb757",
      "brackethighlighterUnmatched": "#ff6a69",
      "invalidIllegalText": "#ffffff",
      "invalidIllegalBg": "#e82a2f",
      "carriageReturnText": "#ffffff",
      "carriageReturnBg": "#ff4445",
      "stringRegexp": "#72f088",
      "markupList": "#fbd669",
      "markupHeading": "#409eff",
      "markupItalic": "#f0f3f6",
      "markupBold": "#f0f3f6",
      "markupDeletedText": "#ffdedb",
      "markupDeletedBg": "#cc1421",
      "markupInsertedText": "#acf7b6",
      "markupInsertedBg": "#007728",
      "markupChangedText": "#ffe1b4",
      "markupChangedBg": "#a74c00",
      "markupIgnoredText": "#f0f3f6",
      "markupIgnoredBg": "#318bf8",
      "metaDiffRange": "#dbb7ff",
      "brackethighlighterAngle": "#bdc4cc",
      "sublimelinterGutterMark": "#7a828e",
      "constantOtherReferenceLink": "#addcff"
    }
  },
  "codemirror": {
    "text": "#f0f3f6",
    "bg": "#0a0c10",
    "guttersBg": "#0a0c10",
    "guttermarkerText": "#0a0c10",
    "guttermarkerSubtleText": "#9ea7b3",
    "linenumberText": "#f0f3f6",
    "cursor": "#f0f3f6",
    "selectionBg": "rgba(64,158,255,0.4)",
    "activelineBg": "rgba(158,167,179,0.1)",
    "matchingbracketText": "#f0f3f6",
    "linesBg": "#0a0c10",
    "syntax": {
      "comment": "#bdc4cc",
      "constant": "#91cbff",
      "entity": "#dbb7ff",
      "keyword": "#ff9492",
      "storage": "#ff9492",
      "string": "#addcff",
      "support": "#91cbff",
      "variable": "#ffb757"
    }
  },
  "checks": {
    "bg": "#010409",
    "runBorderWidth": "1px",
    "containerBorderWidth": "1px",
    "textPrimary": "#f0f3f6",
    "textSecondary": "#f0f3f6",
    "textLink": "#71b7ff",
    "btnIcon": "#f0f3f6",
    "btnHoverIcon": "#f0f3f6",
    "btnHoverBg": "rgba(158,167,179,0.1)",
    "inputText": "#f0f3f6",
    "inputPlaceholderText": "#9ea7b3",
    "inputFocusText": "#f0f3f6",
    "inputBg": "#272b33",
    "inputShadow": "0 0 0 1px (obj) => (0, get_1.default)(obj, path)",
    "donutError": "#ff6a69",
    "donutPending": "#f0b72f",
    "donutSuccess": "#09b43a",
    "donutNeutral": "#bdc4cc",
    "dropdownText": "#f0f3f6",
    "dropdownBg": "#272b33",
    "dropdownBorder": "#7a828e",
    "dropdownShadow": "rgba(1,4,9,0.3)",
    "dropdownHoverText": "#f0f3f6",
    "dropdownHoverBg": "rgba(158,167,179,0.1)",
    "dropdownBtnHoverText": "#f0f3f6",
    "dropdownBtnHoverBg": "rgba(158,167,179,0.1)",
    "scrollbarThumbBg": "rgba(158,167,179,0.4)",
    "headerLabelText": "#f0f3f6",
    "headerLabelOpenText": "#f0f3f6",
    "headerBorder": "#7a828e",
    "headerIcon": "#f0f3f6",
    "lineText": "#f0f3f6",
    "lineNumText": "#9ea7b3",
    "lineTimestampText": "#9ea7b3",
    "lineHoverBg": "rgba(158,167,179,0.1)",
    "lineSelectedBg": "rgba(64,158,255,0.1)",
    "lineSelectedNumText": "#71b7ff",
    "lineDtFmText": "#0a0c10",
    "lineDtFmBg": "#e09b13",
    "gateBg": "rgba(224,155,19,0.15)",
    "gateText": "#f0f3f6",
    "gateWaitingText": "#f0b72f",
    "stepHeaderOpenBg": "#272b33",
    "stepErrorText": "#ff6a69",
    "stepWarningText": "#f0b72f",
    "loglineText": "#f0f3f6",
    "loglineNumText": "#9ea7b3",
    "loglineDebugText": "#b780ff",
    "loglineErrorText": "#f0f3f6",
    "loglineErrorNumText": "#9ea7b3",
    "loglineErrorBg": "rgba(255,106,105,0.1)",
    "loglineWarningText": "#f0f3f6",
    "loglineWarningNumText": "#f0b72f",
    "loglineWarningBg": "rgba(224,155,19,0.15)",
    "loglineCommandText": "#71b7ff",
    "loglineSectionText": "#26cd4d",
    "ansi": {
      "black": "#0a0c10",
      "blackBright": "#272b33",
      "white": "#d9dee3",
      "whiteBright": "#d9dee3",
      "gray": "#9ea7b3",
      "red": "#ff9492",
      "redBright": "#ffb1af",
      "green": "#26cd4d",
      "greenBright": "#4ae168",
      "yellow": "#f0b72f",
      "yellowBright": "#f7c843",
      "blue": "#71b7ff",
      "blueBright": "#91cbff",
      "magenta": "#cb9eff",
      "magentaBright": "#dbb7ff",
      "cyan": "#76e3ea",
      "cyanBright": "#b3f0ff"
    }
  },
  "project": {
    "headerBg": "#0a0c10",
    "sidebarBg": "#272b33",
    "gradientIn": "#272b33",
    "gradientOut": "rgba(39,43,51,0)"
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
      "emphasis": "#9ea7b3"
    }
  },
  "avatar": {
    "bg": "rgba(255,255,255,0.1)",
    "border": "rgba(255,255,255,0.9)",
    "stackFade": "#525964",
    "stackFadeMore": "#272b33",
    "childShadow": "0 0 0 2px #0a0c10"
  },
  "topicTag": {
    "border": "#409eff"
  },
  "counter": {
    "border": "rgba(0,0,0,0)"
  },
  "selectMenu": {
    "backdropBorder": "#7a828e",
    "tapHighlight": "rgba(82,89,100,0.5)",
    "tapFocusBg": "#1e60d5"
  },
  "overlay": {
    "shadow": "0 0 0 1px #525964, 0 16px 32px rgba(1,4,9,0.85)",
    "backdrop": "rgba(39,43,51,0.4)"
  },
  "header": {
    "text": "rgba(255,255,255,0.7)",
    "bg": "#272b33",
    "divider": "#bdc4cc",
    "logo": "#ffffff"
  },
  "headerSearch": {
    "bg": "#0a0c10",
    "border": "#525964"
  },
  "sidenav": {
    "selectedBg": "#272b33"
  },
  "menu": {
    "bgActive": "#272b33"
  },
  "input": {
    "disabledBg": "rgba(158,167,179,0)"
  },
  "timeline": {
    "badgeBg": "#272b33"
  },
  "ansi": {
    "black": "#7a828e",
    "blackBright": "#9ea7b3",
    "white": "#d9dee3",
    "whiteBright": "#ffffff",
    "gray": "#9ea7b3",
    "red": "#ff9492",
    "redBright": "#ffb1af",
    "green": "#26cd4d",
    "greenBright": "#4ae168",
    "yellow": "#f0b72f",
    "yellowBright": "#f7c843",
    "blue": "#71b7ff",
    "blueBright": "#91cbff",
    "magenta": "#cb9eff",
    "magentaBright": "#dbb7ff",
    "cyan": "#39c5cf",
    "cyanBright": "#56d4dd"
  },
  "btn": {
    "text": "#f0f3f6",
    "bg": "#272b33",
    "border": "#7a828e",
    "shadow": "0 0 transparent",
    "insetShadow": "0 0 transparent",
    "hoverBg": "#525964",
    "hoverBorder": "#bdc4cc",
    "activeBg": "hsla(217,10%,33%,1)",
    "activeBorder": "#9ea7b3",
    "selectedBg": "rgba(82,89,100,0.9)",
    "counterBg": "#525964",
    "primary": {
      "text": "#0a0c10",
      "bg": "#09b43a",
      "border": "#4ae168",
      "shadow": "0 0 transparent",
      "insetShadow": "0 0 transparent",
      "hoverBg": "#26cd4d",
      "hoverBorder": "#4ae168",
      "selectedBg": "#09b43a",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(10,12,16,0.5)",
      "disabledBg": "rgba(9,180,58,0.6)",
      "disabledBorder": "rgba(74,225,104,0.4)",
      "icon": "#0a0c10",
      "counterBg": "rgba(1,4,9,0.15)"
    },
    "outline": {
      "text": "#409eff",
      "hoverText": "#71b7ff",
      "hoverBg": "#525964",
      "hoverBorder": "#7a828e",
      "hoverShadow": "0 1px 0 rgba(1,4,9,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverCounterBg": "rgba(25,79,177,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "#2672f3",
      "selectedBorder": "#7a828e",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(113,183,255,0.5)",
      "disabledBg": "#0a0c10",
      "disabledCounterBg": "rgba(64,158,255,0.05)",
      "counterBg": "rgba(25,79,177,0.2)",
      "hoverCounterFg": "#71b7ff",
      "disabledCounterFg": "rgba(113,183,255,0.5)",
      "counterFg": "#409eff"
    },
    "danger": {
      "text": "#ff6a69",
      "hoverText": "#0a0c10",
      "hoverBg": "#ff6a69",
      "hoverBorder": "#ff6a69",
      "hoverShadow": "0 0 transparent",
      "hoverInsetShadow": "0 0 transparent",
      "hoverIcon": "#0a0c10",
      "hoverCounterBg": "rgba(1,4,9,0.15)",
      "selectedText": "#ffffff",
      "selectedBg": "#ff4445",
      "selectedBorder": "#ff9492",
      "selectedShadow": "0 0 transparent",
      "disabledText": "rgba(255,106,105,0.5)",
      "disabledBg": "#0a0c10",
      "disabledCounterBg": "rgba(255,106,105,0.05)",
      "counterBg": "rgba(1,4,9,0.15)",
      "icon": "#ff6a69",
      "counterFg": "#ff6a69",
      "disabledCounterFg": "rgba(255,106,105,0.5)",
      "hoverCounterFg": "#ffffff"
    }
  },
  "underlinenav": {
    "icon": "#f0f3f6",
    "borderHover": "#bdc4cc"
  },
  "actionListItem": {
    "inlineDivider": "#7a828e",
    "default": {
      "hoverBg": "#272b33",
      "hoverBorder": "#7a828e",
      "activeBg": "#525964",
      "activeBorder": "#9ea7b3",
      "selectedBg": "#525964"
    },
    "danger": {
      "hoverBg": "#ff6a69",
      "activeBg": "#ff4445",
      "hoverText": "#0a0c10"
    }
  },
  "switchTrack": {
    "bg": "#9ea7b3",
    "hoverBg": "hsla(214,12%,61%,1)",
    "activeBg": "hsla(214,12%,58%,1)",
    "disabledBg": "#272b33",
    "fg": "#0a0c10",
    "disabledFg": "#010409",
    "border": "rgba(0,0,0,0)",
    "checked": {
      "bg": "#409eff",
      "hoverBg": "rgba(64,158,255,0.5)",
      "activeBg": "rgba(64,158,255,0.65)",
      "fg": "#0a0c10",
      "disabledFg": "#010409",
      "border": "rgba(0,0,0,0)"
    }
  },
  "switchKnob": {
    "bg": "#0a0c10",
    "border": "#9ea7b3",
    "disabledBg": "#272b33",
    "checked": {
      "bg": "#0a0c10",
      "disabledBg": "#272b33",
      "border": "#409eff"
    }
  },
  "segmentedControl": {
    "bg": "rgba(158,167,179,0.1)",
    "button": {
      "bg": "#0a0c10",
      "hover": {
        "bg": "#525964"
      },
      "active": {
        "bg": "#272b33"
      },
      "selected": {
        "border": "#9ea7b3"
      }
    }
  },
  "treeViewItem": {
    "chevron": {
      "hoverBg": "#525964"
    },
    "directory": {
      "fill": "#f0f3f6"
    }
  },
  "fg": {
    "default": "#f0f3f6",
    "muted": "#f0f3f6",
    "subtle": "#9ea7b3",
    "onEmphasis": "#0a0c10"
  },
  "canvas": {
    "default": "#0a0c10",
    "overlay": "#272b33",
    "inset": "#010409",
    "subtle": "#272b33"
  },
  "border": {
    "default": "#7a828e",
    "muted": "#7a828e",
    "subtle": "#7a828e"
  },
  "shadow": {
    "small": "0 0 transparent",
    "medium": "0 3px 6px #010409",
    "large": "0 8px 24px #010409",
    "extraLarge": "0 12px 48px #010409"
  },
  "neutral": {
    "emphasisPlus": "#ffffff",
    "emphasis": "#9ea7b3",
    "muted": "rgba(158,167,179,0.4)",
    "subtle": "rgba(158,167,179,0.1)"
  },
  "accent": {
    "fg": "#71b7ff",
    "emphasis": "#409eff",
    "muted": "#409eff",
    "subtle": "rgba(64,158,255,0.1)"
  },
  "success": {
    "fg": "#26cd4d",
    "emphasis": "#09b43a",
    "muted": "#09b43a",
    "subtle": "rgba(9,180,58,0.15)"
  },
  "attention": {
    "fg": "#f0b72f",
    "emphasis": "#e09b13",
    "muted": "#e09b13",
    "subtle": "rgba(224,155,19,0.15)"
  },
  "severe": {
    "fg": "#e7811d",
    "emphasis": "#e7811d",
    "muted": "#e7811d",
    "subtle": "rgba(231,129,29,0.1)"
  },
  "danger": {
    "fg": "#ff6a69",
    "emphasis": "#ff6a69",
    "muted": "#ff6a69",
    "subtle": "rgba(255,106,105,0.1)"
  },
  "open": {
    "fg": "#26cd4d",
    "emphasis": "#09b43a",
    "muted": "rgba(9,180,58,0.4)",
    "subtle": "rgba(9,180,58,0.15)"
  },
  "closed": {
    "fg": "#ff6a69",
    "emphasis": "#ff6a69",
    "muted": "rgba(255,106,105,0.4)",
    "subtle": "rgba(255,106,105,0.15)"
  },
  "done": {
    "fg": "#b780ff",
    "emphasis": "#b87fff",
    "muted": "#b780ff",
    "subtle": "rgba(183,128,255,0.1)"
  },
  "sponsors": {
    "fg": "#ef6eb1",
    "emphasis": "#ef6eb1",
    "muted": "#ef6eb1",
    "subtle": "rgba(239,110,177,0.1)"
  },
  "primer": {
    "fg": {
      "disabled": "#7a828e"
    },
    "canvas": {
      "backdrop": "rgba(1,4,9,0.8)",
      "sticky": "rgba(10,12,16,0.95)"
    },
    "border": {
      "active": "#ff967d",
      "contrast": "rgba(255,255,255,0.2)"
    },
    "shadow": {
      "highlight": "0 0 transparent",
      "inset": "0 0 transparent"
    }
  },
  "scale": {
    "black": "#010409",
    "white": "#ffffff",
    "gray": [
      "#ffffff",
      "#f0f3f6",
      "#d9dee3",
      "#bdc4cc",
      "#9ea7b3",
      "#7a828e",
      "#525964",
      "#272b33",
      "#272b33",
      "#0a0c10"
    ],
    "blue": [
      "#caeaff",
      "#addcff",
      "#91cbff",
      "#71b7ff",
      "#409eff",
      "#409eff",
      "#318bf8",
      "#2672f3",
      "#1e60d5",
      "#194fb1"
    ],
    "green": [
      "#acf7b6",
      "#72f088",
      "#4ae168",
      "#26cd4d",
      "#09b43a",
      "#09b43a",
      "#02a232",
      "#008c2c",
      "#007728",
      "#006222"
    ],
    "yellow": [
      "#fbe59e",
      "#fbd669",
      "#f7c843",
      "#f0b72f",
      "#e09b13",
      "#e09b13",
      "#c88508",
      "#ae7104",
      "#945d02",
      "#7b4900"
    ],
    "orange": [
      "#ffe1b4",
      "#ffcf86",
      "#ffb757",
      "#fe9a2d",
      "#e7811d",
      "#e7811d",
      "#d57014",
      "#bf5e0a",
      "#a74c00",
      "#8f3c00"
    ],
    "red": [
      "#ffdedb",
      "#ffc9c7",
      "#ffb1af",
      "#ff9492",
      "#ff6a69",
      "#ff6a69",
      "#ff4445",
      "#e82a2f",
      "#cc1421",
      "#ad0116"
    ],
    "purple": [
      "#f0dfff",
      "#e6ccff",
      "#dbb7ff",
      "#cb9eff",
      "#b780ff",
      "#b87fff",
      "#a66bff",
      "#954ffd",
      "#8031f7",
      "#6921d7"
    ],
    "pink": [
      "#ffdceb",
      "#ffc7e1",
      "#ffadd4",
      "#ff8dc7",
      "#ef6eb1",
      "#ef6eb1",
      "#e456a3",
      "#d23d91",
      "#b72c7d",
      "#9c1d6a"
    ],
    "coral": [
      "#ffded4",
      "#ffcbb9",
      "#ffb39b",
      "#ff967d",
      "#fc704f",
      "#fc704f",
      "#f75133",
      "#e03b21",
      "#c62612",
      "#a91500"
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

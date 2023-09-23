-- NOTE: THIS IS AN AUTO-GENERATED FILE. DO NOT EDIT BY-HAND.
local M = vim.json.decode(
  [=[{
  "canvasDefaultTransparent": "rgba(255,255,255,0)",
  "pageHeaderBg": "#ffffff",
  "marketingIcon": {
    "primary": "#1168e3",
    "secondary": "#368cf9"
  },
  "diffBlob": {
    "addition": {
      "numText": "#0e1116",
      "fg": "#ffffff",
      "numBg": "#ccffd8",
      "lineBg": "#e6ffec",
      "wordBg": "#055d20"
    },
    "deletion": {
      "numText": "#0e1116",
      "fg": "#ffffff",
      "numBg": "#ffd7d5",
      "lineBg": "#fff0ee",
      "wordBg": "#a0111f"
    },
    "hunk": {
      "numBg": "#9cd7ff"
    },
    "expander": {
      "icon": "#0e1116"
    },
    "selectedLineHighlightMixBlendMode": "multiply"
  },
  "diffstat": {
    "deletionBorder": "rgba(1,4,9,0.8)",
    "additionBorder": "rgba(1,4,9,0.8)",
    "additionBg": "#055d20"
  },
  "searchKeyword": {
    "hl": "#fcf7be"
  },
  "prettylights": {
    "syntax": {
      "comment": "#66707b",
      "constant": "#023b95",
      "entity": "#512598",
      "storageModifierImport": "#0e1116",
      "entityTag": "#024c1a",
      "keyword": "#a0111f",
      "string": "#032563",
      "variable": "#702c00",
      "brackethighlighterUnmatched": "#6e011a",
      "invalidIllegalText": "#ffffff",
      "invalidIllegalBg": "#6e011a",
      "carriageReturnText": "#ffffff",
      "carriageReturnBg": "#a0111f",
      "stringRegexp": "#024c1a",
      "markupList": "#2e1800",
      "markupHeading": "#023b95",
      "markupItalic": "#0e1116",
      "markupBold": "#0e1116",
      "markupDeletedText": "#6e011a",
      "markupDeletedBg": "#fff0ee",
      "markupInsertedText": "#024c1a",
      "markupInsertedBg": "#d2fedb",
      "markupChangedText": "#702c00",
      "markupChangedBg": "#ffc67b",
      "markupIgnoredText": "#e7ecf0",
      "markupIgnoredBg": "#023b95",
      "metaDiffRange": "#622cbc",
      "brackethighlighterAngle": "#4b535d",
      "sublimelinterGutterMark": "#88929d",
      "constantOtherReferenceLink": "#032563"
    }
  },
  "codemirror": {
    "text": "#0e1116",
    "bg": "#ffffff",
    "guttersBg": "#ffffff",
    "guttermarkerText": "#ffffff",
    "guttermarkerSubtleText": "#66707b",
    "linenumberText": "#0e1116",
    "cursor": "#0e1116",
    "selectionBg": "#368cf9",
    "activelineBg": "#e7ecf0",
    "matchingbracketText": "#0e1116",
    "linesBg": "#ffffff",
    "syntax": {
      "comment": "#0e1116",
      "constant": "#023b95",
      "entity": "#622cbc",
      "keyword": "#a0111f",
      "storage": "#a0111f",
      "string": "#032563",
      "support": "#023b95",
      "variable": "#702c00"
    }
  },
  "checks": {
    "bg": "#0e1116",
    "runBorderWidth": "0px",
    "containerBorderWidth": "0px",
    "textPrimary": "#ffffff",
    "textSecondary": "#88929d",
    "textLink": "#368cf9",
    "btnIcon": "#acb6c0",
    "btnHoverIcon": "#ffffff",
    "btnHoverBg": "rgba(255,255,255,0.125)",
    "inputText": "#e7ecf0",
    "inputPlaceholderText": "#88929d",
    "inputFocusText": "#88929d",
    "inputBg": "#20252c",
    "inputShadow": "none",
    "donutError": "#d5232c",
    "donutPending": "#956400",
    "donutSuccess": "#055d20",
    "donutNeutral": "#acb6c0",
    "dropdownText": "#acb6c0",
    "dropdownBg": "#20252c",
    "dropdownBorder": "#343b43",
    "dropdownShadow": "rgba(1,4,9,0.3)",
    "dropdownHoverText": "#ffffff",
    "dropdownHoverBg": "#343b43",
    "dropdownBtnHoverText": "#ffffff",
    "dropdownBtnHoverBg": "#20252c",
    "scrollbarThumbBg": "#4b535d",
    "headerLabelText": "#ced5dc",
    "headerLabelOpenText": "#ffffff",
    "headerBorder": "#20252c",
    "headerIcon": "#88929d",
    "lineText": "#ced5dc",
    "lineNumText": "rgba(136,146,157,0.75)",
    "lineTimestampText": "#88929d",
    "lineHoverBg": "#20252c",
    "lineSelectedBg": "rgba(17,104,227,0.15)",
    "lineSelectedNumText": "#368cf9",
    "lineDtFmText": "#0e1116",
    "lineDtFmBg": "#744500",
    "gateBg": "rgba(96,55,0,0.15)",
    "gateText": "#ced5dc",
    "gateWaitingText": "#b58407",
    "stepHeaderOpenBg": "#20252c",
    "stepErrorText": "#ee5a5d",
    "stepWarningText": "#b58407",
    "loglineText": "#88929d",
    "loglineNumText": "rgba(136,146,157,0.75)",
    "loglineDebugText": "#a371f7",
    "loglineErrorText": "#ced5dc",
    "loglineErrorNumText": "#ee5a5d",
    "loglineErrorBg": "rgba(134,6,29,0.15)",
    "loglineWarningText": "#ced5dc",
    "loglineWarningNumText": "#b58407",
    "loglineWarningBg": "rgba(96,55,0,0.15)",
    "loglineCommandText": "#368cf9",
    "loglineSectionText": "#26a148",
    "ansi": {
      "black": "#0e1116",
      "blackBright": "#20252c",
      "white": "#ced5dc",
      "whiteBright": "#ced5dc",
      "gray": "#88929d",
      "red": "#ee5a5d",
      "redBright": "#ff8e8a",
      "green": "#26a148",
      "greenBright": "#43c663",
      "yellow": "#b58407",
      "yellowBright": "#d5a824",
      "blue": "#368cf9",
      "blueBright": "#67b3fd",
      "magenta": "#a371f7",
      "magentaBright": "#c49bff",
      "cyan": "#76e3ea",
      "cyanBright": "#b3f0ff"
    }
  },
  "project": {
    "headerBg": "#0e1116",
    "sidebarBg": "#ffffff",
    "gradientIn": "#ffffff",
    "gradientOut": "rgba(255,255,255,0)"
  },
  "mktg": {
    "btn": {
      "bg": "#1b1f23",
      "shadow": {
        "outline": "rgb(0 0 0 / 15%) 0 0 0 1px inset",
        "focus": "rgb(0 0 0 / 15%) 0 0 0 4px",
        "hover": "0 3px 2px rgba(0, 0, 0, 0.07), 0 7px 5px rgba(0, 0, 0, 0.04), 0 12px 10px rgba(0, 0, 0, 0.03), 0 22px 18px rgba(0, 0, 0, 0.03), 0 42px 33px rgba(0, 0, 0, 0.02), 0 100px 80px rgba(0, 0, 0, 0.02)",
        "hoverMuted": "rgb(0 0 0 / 70%) 0 0 0 2px inset"
      }
    }
  },
  "control": {
    "borderColor": {
      "emphasis": "#20252c"
    }
  },
  "avatar": {
    "bg": "#ffffff",
    "border": "rgba(1,4,9,0.8)",
    "stackFade": "#acb6c0",
    "stackFadeMore": "#ced5dc",
    "childShadow": "0 0 0 2px rgba(255,255,255,0.8)"
  },
  "topicTag": {
    "border": "#0349b4"
  },
  "counter": {
    "border": "#20252c"
  },
  "selectMenu": {
    "backdropBorder": "rgba(0,0,0,0)",
    "tapHighlight": "rgba(172,182,192,0.5)",
    "tapFocusBg": "#9cd7ff"
  },
  "overlay": {
    "shadow": "0 1px 3px rgba(1,4,9,0.12), 0 8px 24px rgba(52,59,67,0.12)",
    "backdrop": "rgba(136,146,157,0.2)"
  },
  "header": {
    "text": "rgba(255,255,255,0.7)",
    "bg": "#0e1116",
    "divider": "#acb6c0",
    "logo": "#ffffff"
  },
  "headerSearch": {
    "bg": "#0e1116",
    "border": "#4b535d"
  },
  "sidenav": {
    "selectedBg": "#ffffff"
  },
  "menu": {
    "bgActive": "rgba(0,0,0,0)"
  },
  "input": {
    "disabledBg": "rgba(172,182,192,0.2)"
  },
  "timeline": {
    "badgeBg": "#e7ecf0"
  },
  "ansi": {
    "black": "#0e1116",
    "blackBright": "#4b535d",
    "white": "#66707b",
    "whiteBright": "#88929d",
    "gray": "#66707b",
    "red": "#a0111f",
    "redBright": "#86061d",
    "green": "#024c1a",
    "greenBright": "#055d20",
    "yellow": "#3f2200",
    "yellowBright": "#4e2c00",
    "blue": "#0349b4",
    "blueBright": "#1168e3",
    "magenta": "#622cbc",
    "magentaBright": "#844ae7",
    "cyan": "#1b7c83",
    "cyanBright": "#3192aa"
  },
  "btn": {
    "text": "#0e1116",
    "bg": "#e7ecf0",
    "border": "rgba(1,4,9,0.8)",
    "shadow": "0 1px 0 rgba(1,4,9,0.04)",
    "insetShadow": "inset 0 1px 0 rgba(255,255,255,0.25)",
    "hoverBg": "#ced5dc",
    "hoverBorder": "rgba(1,4,9,0.8)",
    "activeBg": "#acb6c0",
    "activeBorder": "rgba(1,4,9,0.8)",
    "selectedBg": "#acb6c0",
    "counterBg": "rgba(1,4,9,0.08)",
    "primary": {
      "text": "#ffffff",
      "bg": "#055d20",
      "border": "#013d14",
      "shadow": "0 1px 0 rgba(1,4,9,0.1)",
      "insetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverBg": "#024c1a",
      "hoverBorder": "#013d14",
      "selectedBg": "hsla(139,95%,13%,1)",
      "selectedShadow": "inset 0 1px 0 rgba(0,35,11,0.2)",
      "disabledText": "rgba(255,255,255,0.8)",
      "disabledBg": "#94d3a2",
      "disabledBorder": "rgba(1,4,9,0.8)",
      "icon": "rgba(255,255,255,0.8)",
      "counterBg": "rgba(0,35,11,0.2)"
    },
    "outline": {
      "text": "#023b95",
      "hoverText": "#ffffff",
      "hoverBg": "#0349b4",
      "hoverBorder": "#022f7a",
      "hoverShadow": "0 1px 0 rgba(1,4,9,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverCounterBg": "rgba(255,255,255,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "#022f7a",
      "selectedBorder": "#022f7a",
      "selectedShadow": "inset 0 1px 0 rgba(2,26,74,0.2)",
      "disabledText": "rgba(3,73,180,0.5)",
      "disabledBg": "#e7ecf0",
      "disabledCounterBg": "rgba(3,73,180,0.05)",
      "counterBg": "#0969da1a",
      "counterFg": "#023b95",
      "hoverCounterFg": "#ffffff",
      "disabledCounterFg": "rgba(3,73,180,0.5)"
    },
    "danger": {
      "text": "#86061d",
      "hoverText": "#ffffff",
      "hoverBg": "#a0111f",
      "hoverBorder": "#6e011a",
      "hoverShadow": "0 1px 0 rgba(1,4,9,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverCounterBg": "rgba(255,255,255,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "#6e011a",
      "selectedBorder": "#6e011a",
      "selectedShadow": "inset 0 1px 0 rgba(67,0,17,0.2)",
      "disabledText": "rgba(160,17,31,0.5)",
      "disabledBg": "#e7ecf0",
      "disabledCounterBg": "rgba(160,17,31,0.05)",
      "counterBg": "rgba(160,17,31,0.1)",
      "icon": "#86061d",
      "hoverIcon": "#ffffff",
      "counterFg": "#86061d",
      "hoverCounterFg": "#ffffff",
      "disabledCounterFg": "rgba(160,17,31,0.5)"
    }
  },
  "underlinenav": {
    "icon": "#66707b",
    "borderHover": "rgba(172,182,192,0.2)"
  },
  "actionListItem": {
    "inlineDivider": "#88929d",
    "default": {
      "hoverBg": "#e7ecf0",
      "hoverBorder": "#88929d",
      "activeBg": "#ced5dc",
      "activeBorder": "#20252c",
      "selectedBg": "#ced5dc"
    },
    "danger": {
      "hoverBg": "#a0111f",
      "activeBg": "#6e011a",
      "hoverText": "#ffffff"
    }
  },
  "switchTrack": {
    "bg": "#66707b",
    "hoverBg": "hsla(211,9%,47%,1)",
    "activeBg": "hsla(211,9%,49%,1)",
    "disabledBg": "#88929d",
    "fg": "#ffffff",
    "disabledFg": "#ffffff",
    "border": "rgba(0,0,0,0)",
    "checked": {
      "bg": "#0349b4",
      "hoverBg": "#0860CA",
      "activeBg": "#0757BA",
      "fg": "#ffffff",
      "disabledFg": "#ffffff",
      "border": "rgba(0,0,0,0)"
    }
  },
  "switchKnob": {
    "bg": "#ffffff",
    "disabledBg": "#e7ecf0",
    "border": "#20252c",
    "checked": {
      "bg": "#ffffff",
      "disabledBg": "#e7ecf0",
      "border": "#0349b4"
    }
  },
  "segmentedControl": {
    "bg": "#e7ecf0",
    "button": {
      "bg": "#ffffff",
      "hover": {
        "bg": "rgba(172,182,192,0.2)"
      },
      "active": {
        "bg": "rgba(172,182,192,0.4)"
      },
      "selected": {
        "border": "#88929d"
      }
    }
  },
  "treeViewItem": {
    "chevron": {
      "hoverBg": "#ced5dc"
    },
    "directory": {
      "fill": "#368cf9"
    }
  },
  "fg": {
    "default": "#0e1116",
    "muted": "#0e1116",
    "subtle": "#66707b",
    "onEmphasis": "#ffffff"
  },
  "canvas": {
    "default": "#ffffff",
    "overlay": "#ffffff",
    "inset": "#ffffff",
    "subtle": "#e7ecf0"
  },
  "border": {
    "default": "#20252c",
    "muted": "#88929d",
    "subtle": "rgba(1,4,9,0.8)"
  },
  "shadow": {
    "small": "0 1px 0 rgba(1,4,9,0.04)",
    "medium": "0 3px 6px rgba(136,146,157,0.15)",
    "large": "0 8px 24px rgba(136,146,157,0.2)",
    "extraLarge": "0 12px 28px rgba(136,146,157,0.3)"
  },
  "neutral": {
    "emphasisPlus": "#0e1116",
    "emphasis": "#66707b",
    "muted": "rgba(172,182,192,0.2)",
    "subtle": "#e7ecf0"
  },
  "accent": {
    "fg": "#0349b4",
    "emphasis": "#0349b4",
    "muted": "#368cf9",
    "subtle": "#dff7ff"
  },
  "success": {
    "fg": "#055d20",
    "emphasis": "#055d20",
    "muted": "#26a148",
    "subtle": "#d2fedb"
  },
  "attention": {
    "fg": "#744500",
    "emphasis": "#744500",
    "muted": "#b58407",
    "subtle": "#fcf7be"
  },
  "severe": {
    "fg": "#873800",
    "emphasis": "#873800",
    "muted": "#dc6d1a",
    "subtle": "#fff2d5"
  },
  "danger": {
    "fg": "#d1242f",
    "emphasis": "#a0111f",
    "muted": "#ee5a5d",
    "subtle": "#fff0ee"
  },
  "open": {
    "fg": "#055d20",
    "emphasis": "#055d20",
    "muted": "rgba(38,161,72,0.4)",
    "subtle": "#d2fedb"
  },
  "closed": {
    "fg": "#d1242f",
    "emphasis": "#a0111f",
    "muted": "rgba(238,90,93,0.4)",
    "subtle": "#fff0ee"
  },
  "done": {
    "fg": "#622cbc",
    "emphasis": "#622cbc",
    "muted": "#a371f7",
    "subtle": "#faf0fe"
  },
  "sponsors": {
    "fg": "#971368",
    "emphasis": "#971368",
    "muted": "#ed4baf",
    "subtle": "#feeff7"
  },
  "primer": {
    "fg": {
      "disabled": "#88929d"
    },
    "canvas": {
      "backdrop": "rgba(1,4,9,0.5)",
      "sticky": "rgba(255,255,255,0.95)"
    },
    "border": {
      "active": "#ef5b48",
      "contrast": "rgba(1,4,9,0.1)"
    },
    "shadow": {
      "highlight": "inset 0 1px 0 rgba(255,255,255,0.25)",
      "inset": "inset 0 1px 0 rgba(206,213,220,0.2)"
    }
  },
  "scale": {
    "black": "#010409",
    "white": "#ffffff",
    "gray": [
      "#ffffff",
      "#e7ecf0",
      "#ced5dc",
      "#acb6c0",
      "#88929d",
      "#66707b",
      "#4b535d",
      "#343b43",
      "#20252c",
      "#0e1116"
    ],
    "blue": [
      "#dff7ff",
      "#9cd7ff",
      "#67b3fd",
      "#368cf9",
      "#1168e3",
      "#0349b4",
      "#023b95",
      "#022f7a",
      "#032563",
      "#021a4a"
    ],
    "green": [
      "#d2fedb",
      "#82e596",
      "#43c663",
      "#26a148",
      "#117f32",
      "#055d20",
      "#024c1a",
      "#013d14",
      "#003110",
      "#00230b"
    ],
    "yellow": [
      "#fcf7be",
      "#f0ce53",
      "#d5a824",
      "#b58407",
      "#956400",
      "#744500",
      "#603700",
      "#4e2c00",
      "#3f2200",
      "#2e1800"
    ],
    "orange": [
      "#fff2d5",
      "#ffc67b",
      "#f99636",
      "#dc6d1a",
      "#b45105",
      "#873800",
      "#702c00",
      "#5b2300",
      "#491b00",
      "#361200"
    ],
    "red": [
      "#fff0ee",
      "#ffc1bc",
      "#ff8e8a",
      "#ee5a5d",
      "#d5232c",
      "#a0111f",
      "#86061d",
      "#6e011a",
      "#5a0016",
      "#430011"
    ],
    "purple": [
      "#faf0fe",
      "#e0c5ff",
      "#c49bff",
      "#a371f7",
      "#844ae7",
      "#622cbc",
      "#512598",
      "#411d7b",
      "#341763",
      "#260f49"
    ],
    "pink": [
      "#feeff7",
      "#ffbde0",
      "#fc87ca",
      "#ed4baf",
      "#c9248e",
      "#971368",
      "#7d0c57",
      "#660847",
      "#53043a",
      "#3e022b"
    ],
    "coral": [
      "#fff0ed",
      "#ffc2b6",
      "#ff8f7e",
      "#ef5b48",
      "#cd3425",
      "#9f1710",
      "#870706",
      "#6f0107",
      "#5b0002",
      "#430200"
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

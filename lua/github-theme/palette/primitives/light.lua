-- NOTE: THIS IS AN AUTO-GENERATED FILE. DO NOT EDIT BY-HAND.
local M = vim.json.decode(
  [=[{
  "canvasDefaultTransparent": "rgba(255,255,255,0)",
  "pageHeaderBg": "#f6f8fa",
  "marketingIcon": {
    "primary": "#218bff",
    "secondary": "#54aeff"
  },
  "diffBlob": {
    "addition": {
      "numText": "#1F2328",
      "fg": "#1F2328",
      "numBg": "#ccffd8",
      "lineBg": "#e6ffec",
      "wordBg": "#abf2bc"
    },
    "deletion": {
      "numText": "#1F2328",
      "fg": "#1F2328",
      "numBg": "#ffd7d5",
      "lineBg": "#ffebe9",
      "wordBg": "rgba(255,129,130,0.4)"
    },
    "hunk": {
      "numBg": "rgba(84,174,255,0.4)"
    },
    "expander": {
      "icon": "#656d76"
    },
    "selectedLineHighlightMixBlendMode": "multiply"
  },
  "diffstat": {
    "deletionBorder": "rgba(31,35,40,0.15)",
    "additionBorder": "rgba(31,35,40,0.15)",
    "additionBg": "#1f883d"
  },
  "searchKeyword": {
    "hl": "#fff8c5"
  },
  "prettylights": {
    "syntax": {
      "comment": "#6e7781",
      "constant": "#0550ae",
      "entity": "#6639ba",
      "storageModifierImport": "#24292f",
      "entityTag": "#116329",
      "keyword": "#cf222e",
      "string": "#0a3069",
      "variable": "#953800",
      "brackethighlighterUnmatched": "#82071e",
      "invalidIllegalText": "#f6f8fa",
      "invalidIllegalBg": "#82071e",
      "carriageReturnText": "#f6f8fa",
      "carriageReturnBg": "#cf222e",
      "stringRegexp": "#116329",
      "markupList": "#3b2300",
      "markupHeading": "#0550ae",
      "markupItalic": "#24292f",
      "markupBold": "#24292f",
      "markupDeletedText": "#82071e",
      "markupDeletedBg": "#ffebe9",
      "markupInsertedText": "#116329",
      "markupInsertedBg": "#dafbe1",
      "markupChangedText": "#953800",
      "markupChangedBg": "#ffd8b5",
      "markupIgnoredText": "#eaeef2",
      "markupIgnoredBg": "#0550ae",
      "metaDiffRange": "#8250df",
      "brackethighlighterAngle": "#57606a",
      "sublimelinterGutterMark": "#8c959f",
      "constantOtherReferenceLink": "#0a3069"
    }
  },
  "codemirror": {
    "text": "#1F2328",
    "bg": "#ffffff",
    "guttersBg": "#ffffff",
    "guttermarkerText": "#ffffff",
    "guttermarkerSubtleText": "#6e7781",
    "linenumberText": "#656d76",
    "cursor": "#1F2328",
    "selectionBg": "rgba(84,174,255,0.4)",
    "activelineBg": "rgba(234,238,242,0.5)",
    "matchingbracketText": "#1F2328",
    "linesBg": "#ffffff",
    "syntax": {
      "comment": "#24292f",
      "constant": "#0550ae",
      "entity": "#8250df",
      "keyword": "#cf222e",
      "storage": "#cf222e",
      "string": "#0a3069",
      "support": "#0550ae",
      "variable": "#953800"
    }
  },
  "checks": {
    "bg": "#24292f",
    "runBorderWidth": "0px",
    "containerBorderWidth": "0px",
    "textPrimary": "#f6f8fa",
    "textSecondary": "#8c959f",
    "textLink": "#54aeff",
    "btnIcon": "#afb8c1",
    "btnHoverIcon": "#f6f8fa",
    "btnHoverBg": "rgba(255,255,255,0.125)",
    "inputText": "#eaeef2",
    "inputPlaceholderText": "#8c959f",
    "inputFocusText": "#8c959f",
    "inputBg": "#32383f",
    "inputShadow": "none",
    "donutError": "#fa4549",
    "donutPending": "#bf8700",
    "donutSuccess": "#1f883d",
    "donutNeutral": "#afb8c1",
    "dropdownText": "#afb8c1",
    "dropdownBg": "#32383f",
    "dropdownBorder": "#424a53",
    "dropdownShadow": "rgba(31,35,40,0.3)",
    "dropdownHoverText": "#f6f8fa",
    "dropdownHoverBg": "#424a53",
    "dropdownBtnHoverText": "#f6f8fa",
    "dropdownBtnHoverBg": "#32383f",
    "scrollbarThumbBg": "#57606a",
    "headerLabelText": "#d0d7de",
    "headerLabelOpenText": "#f6f8fa",
    "headerBorder": "#32383f",
    "headerIcon": "#8c959f",
    "lineText": "#d0d7de",
    "lineNumText": "rgba(140,149,159,0.75)",
    "lineTimestampText": "#8c959f",
    "lineHoverBg": "#32383f",
    "lineSelectedBg": "rgba(33,139,255,0.15)",
    "lineSelectedNumText": "#54aeff",
    "lineDtFmText": "#24292f",
    "lineDtFmBg": "#9a6700",
    "gateBg": "rgba(125,78,0,0.15)",
    "gateText": "#d0d7de",
    "gateWaitingText": "#d4a72c",
    "stepHeaderOpenBg": "#32383f",
    "stepErrorText": "#ff8182",
    "stepWarningText": "#d4a72c",
    "loglineText": "#8c959f",
    "loglineNumText": "rgba(140,149,159,0.75)",
    "loglineDebugText": "#c297ff",
    "loglineErrorText": "#d0d7de",
    "loglineErrorNumText": "#ff8182",
    "loglineErrorBg": "rgba(164,14,38,0.15)",
    "loglineWarningText": "#d0d7de",
    "loglineWarningNumText": "#d4a72c",
    "loglineWarningBg": "rgba(125,78,0,0.15)",
    "loglineCommandText": "#54aeff",
    "loglineSectionText": "#4ac26b",
    "ansi": {
      "black": "#24292f",
      "blackBright": "#32383f",
      "white": "#d0d7de",
      "whiteBright": "#d0d7de",
      "gray": "#8c959f",
      "red": "#ff8182",
      "redBright": "#ffaba8",
      "green": "#4ac26b",
      "greenBright": "#6fdd8b",
      "yellow": "#d4a72c",
      "yellowBright": "#eac54f",
      "blue": "#54aeff",
      "blueBright": "#80ccff",
      "magenta": "#c297ff",
      "magentaBright": "#d8b9ff",
      "cyan": "#76e3ea",
      "cyanBright": "#b3f0ff"
    }
  },
  "project": {
    "headerBg": "#24292f",
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
      "emphasis": "#858F99"
    }
  },
  "avatar": {
    "bg": "#ffffff",
    "border": "rgba(31,35,40,0.15)",
    "stackFade": "#afb8c1",
    "stackFadeMore": "#d0d7de",
    "childShadow": "0 0 0 2px rgba(255,255,255,0.8)"
  },
  "topicTag": {
    "border": "rgba(0,0,0,0)"
  },
  "counter": {
    "border": "rgba(0,0,0,0)"
  },
  "selectMenu": {
    "backdropBorder": "rgba(0,0,0,0)",
    "tapHighlight": "rgba(175,184,193,0.5)",
    "tapFocusBg": "#b6e3ff"
  },
  "overlay": {
    "shadow": "0 1px 3px rgba(31,35,40,0.12), 0 8px 24px rgba(66,74,83,0.12)",
    "backdrop": "rgba(140,149,159,0.2)"
  },
  "header": {
    "text": "rgba(255,255,255,0.7)",
    "bg": "#24292f",
    "divider": "#57606a",
    "logo": "#ffffff"
  },
  "headerSearch": {
    "bg": "#24292f",
    "border": "#57606a"
  },
  "sidenav": {
    "selectedBg": "#ffffff"
  },
  "menu": {
    "bgActive": "rgba(0,0,0,0)"
  },
  "input": {
    "disabledBg": "rgba(175,184,193,0.2)"
  },
  "timeline": {
    "badgeBg": "#eaeef2"
  },
  "ansi": {
    "black": "#24292f",
    "blackBright": "#57606a",
    "white": "#6e7781",
    "whiteBright": "#8c959f",
    "gray": "#6e7781",
    "red": "#cf222e",
    "redBright": "#a40e26",
    "green": "#116329",
    "greenBright": "#1a7f37",
    "yellow": "#4d2d00",
    "yellowBright": "#633c01",
    "blue": "#0969da",
    "blueBright": "#218bff",
    "magenta": "#8250df",
    "magentaBright": "#a475f9",
    "cyan": "#1b7c83",
    "cyanBright": "#3192aa"
  },
  "btn": {
    "text": "#24292f",
    "bg": "#f6f8fa",
    "border": "rgba(31,35,40,0.15)",
    "shadow": "0 1px 0 rgba(31,35,40,0.04)",
    "insetShadow": "inset 0 1px 0 rgba(255,255,255,0.25)",
    "hoverBg": "#f3f4f6",
    "hoverBorder": "rgba(31,35,40,0.15)",
    "activeBg": "hsla(220,14%,93%,1)",
    "activeBorder": "rgba(31,35,40,0.15)",
    "selectedBg": "hsla(220,14%,94%,1)",
    "counterBg": "rgba(31,35,40,0.08)",
    "primary": {
      "text": "#ffffff",
      "bg": "#1f883d",
      "border": "rgba(31,35,40,0.15)",
      "shadow": "0 1px 0 rgba(31,35,40,0.1)",
      "insetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverBg": "#1a7f37",
      "hoverBorder": "rgba(31,35,40,0.15)",
      "selectedBg": "hsla(137,66%,28%,1)",
      "selectedShadow": "inset 0 1px 0 rgba(0,45,17,0.2)",
      "disabledText": "rgba(255,255,255,0.8)",
      "disabledBg": "#94d3a2",
      "disabledBorder": "rgba(31,35,40,0.15)",
      "icon": "rgba(255,255,255,0.8)",
      "counterBg": "rgba(0,45,17,0.2)"
    },
    "outline": {
      "text": "#0969da",
      "hoverText": "#ffffff",
      "hoverBg": "#0969da",
      "hoverBorder": "rgba(31,35,40,0.15)",
      "hoverShadow": "0 1px 0 rgba(31,35,40,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverCounterBg": "rgba(255,255,255,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "hsla(212,92%,42%,1)",
      "selectedBorder": "rgba(31,35,40,0.15)",
      "selectedShadow": "inset 0 1px 0 rgba(0,33,85,0.2)",
      "disabledText": "rgba(9,105,218,0.5)",
      "disabledBg": "#f6f8fa",
      "disabledCounterBg": "rgba(9,105,218,0.05)",
      "counterBg": "#0969da1a",
      "counterFg": "#0550ae",
      "hoverCounterFg": "#ffffff",
      "disabledCounterFg": "rgba(9,105,218,0.5)"
    },
    "danger": {
      "text": "#cf222e",
      "hoverText": "#ffffff",
      "hoverBg": "#a40e26",
      "hoverBorder": "rgba(31,35,40,0.15)",
      "hoverShadow": "0 1px 0 rgba(31,35,40,0.1)",
      "hoverInsetShadow": "inset 0 1px 0 rgba(255,255,255,0.03)",
      "hoverCounterBg": "rgba(255,255,255,0.2)",
      "selectedText": "#ffffff",
      "selectedBg": "hsla(356,72%,44%,1)",
      "selectedBorder": "rgba(31,35,40,0.15)",
      "selectedShadow": "inset 0 1px 0 rgba(76,0,20,0.2)",
      "disabledText": "rgba(207,34,46,0.5)",
      "disabledBg": "#f6f8fa",
      "disabledCounterBg": "rgba(207,34,46,0.05)",
      "counterBg": "rgba(207,34,46,0.1)",
      "icon": "#cf222e",
      "hoverIcon": "#ffffff",
      "counterFg": "#a40e26",
      "hoverCounterFg": "#ffffff",
      "disabledCounterFg": "rgba(207,34,46,0.5)"
    }
  },
  "underlinenav": {
    "icon": "#6e7781",
    "borderHover": "rgba(175,184,193,0.2)"
  },
  "actionListItem": {
    "inlineDivider": "rgba(208,215,222,0.48)",
    "default": {
      "hoverBg": "rgba(208,215,222,0.32)",
      "hoverBorder": "rgba(0,0,0,0)",
      "activeBg": "rgba(208,215,222,0.48)",
      "activeBorder": "rgba(0,0,0,0)",
      "selectedBg": "rgba(208,215,222,0.24)"
    },
    "danger": {
      "hoverBg": "rgba(255,235,233,0.64)",
      "activeBg": "#ffebe9",
      "hoverText": "#d1242f"
    }
  },
  "switchTrack": {
    "bg": "#eaeef2",
    "hoverBg": "hsla(210,24%,90%,1)",
    "activeBg": "hsla(210,24%,88%,1)",
    "disabledBg": "#8c959f",
    "fg": "#656d76",
    "disabledFg": "#ffffff",
    "border": "rgba(0,0,0,0)",
    "checked": {
      "bg": "#0969da",
      "hoverBg": "#0860CA",
      "activeBg": "#0757BA",
      "fg": "#ffffff",
      "disabledFg": "#ffffff",
      "border": "rgba(0,0,0,0)"
    }
  },
  "switchKnob": {
    "bg": "#ffffff",
    "disabledBg": "#f6f8fa",
    "border": "#858F99",
    "checked": {
      "bg": "#ffffff",
      "disabledBg": "#f6f8fa",
      "border": "#0969da"
    }
  },
  "segmentedControl": {
    "bg": "#eaeef2",
    "button": {
      "bg": "#ffffff",
      "hover": {
        "bg": "rgba(175,184,193,0.2)"
      },
      "active": {
        "bg": "rgba(175,184,193,0.4)"
      },
      "selected": {
        "border": "#8c959f"
      }
    }
  },
  "treeViewItem": {
    "chevron": {
      "hoverBg": "rgba(208,215,222,0.32)"
    },
    "directory": {
      "fill": "#54aeff"
    }
  },
  "fg": {
    "default": "#1F2328",
    "muted": "#656d76",
    "subtle": "#6e7781",
    "onEmphasis": "#ffffff"
  },
  "canvas": {
    "default": "#ffffff",
    "overlay": "#ffffff",
    "inset": "#f6f8fa",
    "subtle": "#f6f8fa"
  },
  "border": {
    "default": "#d0d7de",
    "muted": "hsla(210,18%,87%,1)",
    "subtle": "rgba(31,35,40,0.15)"
  },
  "shadow": {
    "small": "0 1px 0 rgba(31,35,40,0.04)",
    "medium": "0 3px 6px rgba(140,149,159,0.15)",
    "large": "0 8px 24px rgba(140,149,159,0.2)",
    "extraLarge": "0 12px 28px rgba(140,149,159,0.3)"
  },
  "neutral": {
    "emphasisPlus": "#24292f",
    "emphasis": "#6e7781",
    "muted": "rgba(175,184,193,0.2)",
    "subtle": "rgba(234,238,242,0.5)"
  },
  "accent": {
    "fg": "#0969da",
    "emphasis": "#0969da",
    "muted": "rgba(84,174,255,0.4)",
    "subtle": "#ddf4ff"
  },
  "success": {
    "fg": "#1a7f37",
    "emphasis": "#1f883d",
    "muted": "rgba(74,194,107,0.4)",
    "subtle": "#dafbe1"
  },
  "attention": {
    "fg": "#9a6700",
    "emphasis": "#9a6700",
    "muted": "rgba(212,167,44,0.4)",
    "subtle": "#fff8c5"
  },
  "severe": {
    "fg": "#bc4c00",
    "emphasis": "#bc4c00",
    "muted": "rgba(251,143,68,0.4)",
    "subtle": "#fff1e5"
  },
  "danger": {
    "fg": "#d1242f",
    "emphasis": "#cf222e",
    "muted": "rgba(255,129,130,0.4)",
    "subtle": "#ffebe9"
  },
  "open": {
    "fg": "#1a7f37",
    "emphasis": "#1f883d",
    "muted": "rgba(74,194,107,0.4)",
    "subtle": "#dafbe1"
  },
  "closed": {
    "fg": "#d1242f",
    "emphasis": "#cf222e",
    "muted": "rgba(255,129,130,0.4)",
    "subtle": "#ffebe9"
  },
  "done": {
    "fg": "#8250df",
    "emphasis": "#8250df",
    "muted": "rgba(194,151,255,0.4)",
    "subtle": "#fbefff"
  },
  "sponsors": {
    "fg": "#bf3989",
    "emphasis": "#bf3989",
    "muted": "rgba(255,128,200,0.4)",
    "subtle": "#ffeff7"
  },
  "primer": {
    "fg": {
      "disabled": "#8c959f"
    },
    "canvas": {
      "backdrop": "rgba(31,35,40,0.5)",
      "sticky": "rgba(255,255,255,0.95)"
    },
    "border": {
      "active": "#fd8c73",
      "contrast": "rgba(31,35,40,0.1)"
    },
    "shadow": {
      "highlight": "inset 0 1px 0 rgba(255,255,255,0.25)",
      "inset": "inset 0 1px 0 rgba(208,215,222,0.2)"
    }
  },
  "scale": {
    "black": "#1F2328",
    "white": "#ffffff",
    "gray": [
      "#f6f8fa",
      "#eaeef2",
      "#d0d7de",
      "#afb8c1",
      "#8c959f",
      "#6e7781",
      "#57606a",
      "#424a53",
      "#32383f",
      "#24292f"
    ],
    "blue": [
      "#ddf4ff",
      "#b6e3ff",
      "#80ccff",
      "#54aeff",
      "#218bff",
      "#0969da",
      "#0550ae",
      "#033d8b",
      "#0a3069",
      "#002155"
    ],
    "green": [
      "#dafbe1",
      "#aceebb",
      "#6fdd8b",
      "#4ac26b",
      "#2da44e",
      "#1a7f37",
      "#116329",
      "#044f1e",
      "#003d16",
      "#002d11"
    ],
    "yellow": [
      "#fff8c5",
      "#fae17d",
      "#eac54f",
      "#d4a72c",
      "#bf8700",
      "#9a6700",
      "#7d4e00",
      "#633c01",
      "#4d2d00",
      "#3b2300"
    ],
    "orange": [
      "#fff1e5",
      "#ffd8b5",
      "#ffb77c",
      "#fb8f44",
      "#e16f24",
      "#bc4c00",
      "#953800",
      "#762c00",
      "#5c2200",
      "#471700"
    ],
    "red": [
      "#ffebe9",
      "#ffcecb",
      "#ffaba8",
      "#ff8182",
      "#fa4549",
      "#cf222e",
      "#a40e26",
      "#82071e",
      "#660018",
      "#4c0014"
    ],
    "purple": [
      "#fbefff",
      "#ecd8ff",
      "#d8b9ff",
      "#c297ff",
      "#a475f9",
      "#8250df",
      "#6639ba",
      "#512a97",
      "#3e1f79",
      "#2e1461"
    ],
    "pink": [
      "#ffeff7",
      "#ffd3eb",
      "#ffadda",
      "#ff80c8",
      "#e85aad",
      "#bf3989",
      "#99286e",
      "#772057",
      "#611347",
      "#4d0336"
    ],
    "coral": [
      "#fff0eb",
      "#ffd6cc",
      "#ffb4a1",
      "#fd8c73",
      "#ec6547",
      "#c4432b",
      "#9e2f1c",
      "#801f0f",
      "#691105",
      "#510901"
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

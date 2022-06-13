local colors = require('github-theme.colors')
local types = require('github-theme.types')
local util = require('github-theme.util')

---@class gt.Theme
local theme = {}

---@param cfg gt.ConfigSchema
---@return gt.Highlights
theme.setup = function(cfg)
  ---@class gt.Highlights
  local hi = {}
  hi.config = cfg
  hi.colors = colors.setup(cfg)
  local c = hi.colors

  local Styles = types.gt.HighlightStyle

  ---@class gt.Highlights.Base
  hi.base = {
    ColorColumn = { bg = c.bg_visual }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.fg_gutter }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor = { link = 'Cursor' }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { link = 'Cursor' }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn = { link = 'CursorColumn' }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory = { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd = { fg = c.diff.add_fg, bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = c.diff.change_fg, bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = c.diff.delete_fg, bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { fg = c.fg_gutter }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.eob }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    ErrorMsg = { fg = c.error }, -- error messages on the command line
    VertSplit = { fg = c.bg_visual, bg = c.bg }, -- the column separating vertically split windows
    Folded = { fg = c.fg, bg = c.bg_visual_selection }, -- line used for closed folds
    FoldColumn = { link = 'Folded' }, -- 'foldcolumn'
    SignColumn = { fg = c.fg_gutter, bg = cfg.transparent and c.none or c.bg }, -- column where |signs| are displayed
    SignColumnSB = { fg = c.fg_gutter, bg = c.bg_sidebar }, -- column where |signs| are displayed
    Substitute = { fg = c.black, bg = c.red }, -- |:substitute| replacement text highlighting
    LineNr = { fg = cfg.transparent and c.cursor_line_nr or c.line_nr }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.cursor_line_nr }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.fg, bg = c.syntax.match_paren_bg }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg, style = Styles.Bold }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg, style = cfg.msg_area_style }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue }, -- |more-prompt|
    NonText = { fg = c.eob }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }, -- normal text
    NormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg, bg = c.bg_sidebar }, -- normal text in non-current windows
    NormalFloat = { fg = c.fg, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder = { fg = c.border },
    Pmenu = { fg = c.fg, bg = c.pmenu.bg }, -- Popup menu: normal item.
    PmenuSel = { fg = c.pmenu.bg, bg = util.darken(c.bright_blue, 0.75) }, -- Popup menu: selected item.
    PmenuSbar = { bg = c.pmenu.bg }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = c.pmenu.sbar }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = util.darken(c.blue, 0.2), style = Styles.Bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.none, bg = c.bg_search }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = '#000000', bg = c.orange }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    SpecialKey = { fg = c.fg_gutter }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, style = Styles.Undercurl }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, style = Styles.Undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, style = Styles.Undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, style = Styles.Undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.bg, bg = c.blue }, -- status line of current window
    StatusLineNC = { fg = util.darken(c.fg, 0.5), bg = c.bg }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.fg, bg = c.bg }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.bg2 }, -- tab pages line, where there are no labels
    TabLineSel = { link = 'PmenuSel' }, -- tab pages line, active tab page label
    Title = { fg = c.syntax.variable, style = Styles.Bold }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.bg_visual_selection }, -- Visual mode selection
    VisualNOS = { link = 'Visual' }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.warning }, -- warning messages
    Whitespace = { fg = util.darken(c.syntax.comment, 0.4) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment = { fg = c.syntax.comment, style = cfg.comment_style }, -- any comment
    Constant = { fg = c.syntax.constant }, -- (preferred) any constant
    String = { fg = c.syntax.string }, --   a string constant: "this is a string"
    Character = { fg = c.syntax.variable }, --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.syntax.variable, style = cfg.variable_style }, -- (preferred) any variable name
    Function = { fg = c.syntax.func, style = cfg.function_style }, -- function name (also: methods for classes)
    Statement = { fg = c.syntax.keyword }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.
    Operator = { fg = c.syntax.keyword }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.syntax.keyword, style = cfg.keyword_style }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc = { fg = c.syntax.keyword }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.syntax.keyword }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special = { fg = c.syntax.variable }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { style = Styles.Underline }, -- (preferred) text that stands out, HTML links
    Bold = { style = Styles.Bold },
    Italic = { style = Styles.Italic },
    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = c.error }, -- (preferred) any erroneous construct
    Todo = { fg = c.bg, bg = c.yellow }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr = { fg = c.syntax.keyword },
    qfFileName = { fg = c.blue },

    mkdCodeDelimiter = { fg = c.fg },
    mkdCodeStart = { fg = c.syntax.variable, style = Styles.Bold },
    mkdCodeEnd = { fg = c.syntax.variable, style = Styles.Bold },
    markdownHeadingDelimiter = { fg = c.syntax.variable, style = Styles.Bold },
    markdownTSTextReference = { link = 'Title' },
    markdownH1 = { fg = c.syntax.variable, style = Styles.Bold },
    markdownH2 = { fg = c.syntax.variable, style = Styles.Bold },
    markdownH3 = { fg = c.syntax.variable, style = Styles.Bold },
    markdownLinkText = { fg = c.fg, style = Styles.Underline },
    markdownUrl = { fg = c.fg, style = Styles.Underline },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = c.info, bg = util.darken(c.info, 0.1) }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.lsp.ref_txt }, -- used for highlighting "text" references
    LspReferenceRead = { link = 'LspReferenceText' }, -- used for highlighting "read" references
    LspReferenceWrite = { link = 'LspReferenceText' }, -- used for highlighting "write" references
    LspDiagnosticsDefaultError = { fg = c.error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning = { fg = c.warning }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation = { fg = c.info }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint = { fg = c.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsVirtualTextError = { fg = c.error, bg = util.darken(c.error, 0.1) }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { fg = c.warning, bg = util.darken(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { fg = c.info, bg = util.darken(c.info, 0.1) }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { fg = c.hint, bg = util.darken(c.hint, 0.1) }, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = { style = Styles.Undercurl, sp = c.error }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { style = Styles.Undercurl, sp = c.warning }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { style = Styles.Undercurl, sp = c.info }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { style = Styles.Undercurl, sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsError = { fg = c.error },
    LspDiagnosticsWarning = { fg = c.warning },
    LspDiagnosticsInformation = { fg = c.info },
    LspDiagnosticsHint = { fg = c.hint },

    DiagnosticError = { link = 'LspDiagnosticsDefaultError' }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticWarn = { link = 'LspDiagnosticsDefaultWarning' }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticInfo = { link = 'LspDiagnosticsDefaultInformation' }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticHint = { link = 'LspDiagnosticsDefaultHint' }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticUnderlineError = { link = 'LspDiagnosticsUnderlineError' }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { link = 'LspDiagnosticsUnderlineWarning' }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { link = 'LspDiagnosticsUnderlineInformation' }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { link = 'LspDiagnosticsVirtualTextHint' }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError             = { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning           = { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation       = { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint              = { }, -- Used for "Hint" signs in sign column
  }

  ---@class gt.Highlights.Plugins
  hi.plugins = {
    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    TSNote = { fg = c.bg, bg = c.info },
    TSWarning = { fg = c.bg, bg = c.warning },
    TSDanger = { fg = c.bg, bg = c.error },
    TSConstructor = { fg = c.syntax.variable }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    TSConstant = { fg = c.syntax.constant }, -- For constants
    commentTSConstant = { fg = c.syntax.keyword },
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = c.fg }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = c.syntax.keyword }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = c.syntax.keyword, style = cfg.keyword_style }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = c.syntax.keyword, style = cfg.function_style }, -- For keywords used to define a fuction.
    TSLabel = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    TSNamespace = { fg = c.fg }, -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = c.syntax.keyword }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = c.syntax.func_param }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { fg = c.syntax.func }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = c.fg }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = c.fg }, -- For brackets and parens.
    TSPunctSpecial = { fg = c.fg }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = c.syntax.variable }, -- For regexes.
    TSStringEscape = { fg = c.red }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    TSType = { fg = c.syntax.keyword }, -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariable = { fg = c.syntax.variable, style = cfg.variable_style }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin = { fg = c.syntax.variable }, -- Variable names that are defined by the languages, like `this` or `self`.
    TSTag = { fg = c.syntax.tag }, -- Tags like html tag names.
    TSTagDelimiter = { fg = c.fg }, -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = c.red }, -- FIXME
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { }, -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- Lua
    luaTSConstructor = { fg = c.fg },

    -- C
    cTSLabel = { fg = c.fg },

    -- CSS
    cssTSProperty = { fg = c.syntax.func },
    cssTSType = { fg = c.syntax.tag },

    -- html
    htmlTSConstant = { fg = c.syntax.tag },
    htmlTag = { fg = c.fg },
    htmlEndTag = { fg = c.fg },
    htmlTagName = { fg = c.syntax.tag },
    htmlArg = { fg = c.syntax.html_arg },

    -- javascript
    javascriptTSType = { fg = c.fg },
    javascriptTSParameter = { fg = c.syntax.param },
    javascriptTSVariable = { fg = c.syntax.variable },
    javascriptTSPunctDelimiter = { fg = c.fg },
    javascriptTSStringRegex = { fg = c.syntax.string },
    javascriptTSConstructor = { fg = c.syntax.func },
    javascriptTSProperty = { fg = c.syntax.func },
    regexTSStringEscape = { fg = c.syntax.keyword },

    -- json
    jsonTSLabel = { fg = c.syntax.json_label },

    -- less
    lessVariable = { fg = c.fg },
    lessProperty = { fg = c.syntax.variable },
    cssTagName = { fg = c.syntax.tag },
    cssPseudoClassId = { fg = c.syntax.func },
    lessClassCall = { fg = c.syntax.func },
    lessClass = { fg = c.syntax.func },

    -- make
    makeSpecial = { fg = c.syntax.keyword },

    -- obj-c
    cBlock = { fg = c.syntax.func },

    -- python
    pythonTSType = { fg = c.syntax.func },
    pythonTSParameter = { fg = c.syntax.param },

    -- ruby
    rubyTSType = { fg = c.syntax.func },

    -- scss
    scssTSVariable = { fg = c.syntax.param },
    scssTSType = { fg = c.syntax.tag },
    scssTSProperty = { fg = c.syntax.func },
    scssTSParameter = { fg = c.syntax.param },

    -- sql
    sqlFold = { fg = c.syntax.variable },
    sqlKeyword = { fg = c.syntax.keyword },

    -- typescript
    typescriptTSType = { fg = c.syntax.func },
    typescriptTSConstructor = { fg = c.syntax.func },
    typescriptTSTypeBuiltin = { fg = c.syntax.variable },

    -- xml
    xmlProcessing = { fg = c.syntax.tag },
    xmlTagName = { fg = c.syntax.tag },
    xmlTag = { fg = c.fg },
    xmlAttrib = { fg = c.syntax.tag },

    -- yaml
    yamlTSField = { fg = c.syntax.tag },

    -- java
    javaTSVariable = { fg = c.fg },
    javaTSType = { fg = c.syntax.func },
    javaTSParameter = { fg = c.syntax.param },

    -- Markdown
    markdownHeadingRule = { fg = c.syntax.variable },
    markdownListMarker = { fg = c.syntax.param },
    markdownRule = { fg = c.syntax.variable },
    markdownBold = { fg = c.fg, style = Styles.Bold },
    markdownItalic = { fg = c.fg, style = Styles.Italic },
    markdownCode = { fg = c.fg },
    markdownCodeBlock = { fg = c.fg },
    markdownBlockquote = { fg = c.syntax.tag },
    markdownCodeDelimiter = { fg = c.syntax.func },
    markdownUrlTitle = { fg = c.syntax.string, style = Styles.Underline },

    -- go
    goTSVariable = { fg = c.fg },

    -- LspTrouble
    LspTroubleText = { fg = c.fg },
    LspTroubleCount = { fg = c.magenta, bg = c.fg_gutter },
    LspTroubleNormal = { fg = c.bright_yellow, bg = c.bg_sidebar },

    -- Illuminate
    illuminatedWord = { bg = c.lsp.ref_txt },
    illuminatedCurWord = { bg = c.lsp.ref_txt },

    -- diff
    diffAdded = { link = 'DiffAdd' },
    diffChanged = { link = 'DiffChange' },
    diffRemoved = { link = 'DiffDelete' },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.fg_gutter },
    diffIndexLine = { fg = c.magenta },

    -- Neogit
    NeogitBranch = { fg = c.syntax.keyword },
    NeogitRemote = { fg = c.syntax.keyword },
    NeogitHunkHeader = { fg = c.fg, bg = c.bg_highlight },
    NeogitHunkHeaderHighlight = { fg = c.blue, bg = c.bg_highlight, style = Styles.Italic },
    NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
    NeogitDiffAddHighlight = { link = 'DiffAdd' },
    NeogitDiffDeleteHighlight = { link = 'DiffDelete' },

    -- GitGutter
    GitGutterAdd = { fg = c.git_signs.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.git_signs.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.git_signs.delete }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = c.git_signs.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.git_signs.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.git_signs.delete }, -- diff mode: Deleted line |diff.txt|
    GitSignsCurrentLineBlame = { fg = util.darken(c.syntax.comment, 0.6) }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.border },
    TelescopePromptPrefix = { fg = c.fg },
    TelescopeMatching = { fg = c.syntax.constant, style = Styles.Bold },
    TelescopeMultiSelection = { fg = c.syntax.comment },
    TelescopeSelection = { bg = c.bg_visual_selection },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg_light, bg = c.bg_sidebar },
    NvimTreeEndOfBuffer = { fg = c.sidebar_eob },
    NvimTreeRootFolder = { fg = c.fg_light, style = Styles.Bold },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitRenamed = { fg = c.git.renamed },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeGitIgnored = { fg = c.syntax.comment },
    NvimTreeSpecialFile = { fg = c.yellow, style = Styles.Underline },
    NvimTreeIndentMarker = { fg = c.syntax.comment },
    NvimTreeImageFile = { fg = c.bright_yellow },
    NvimTreeSymlink = { fg = c.magenta },
    NvimTreeFolderName = { fg = c.fg_light },
    NvimTreeOpenedFolderName = { fg = c.fg_light, style = Styles.Bold },

    -- Git Default
    gitcommitSummary = { fg = c.syntax.tag },

    -- Dashboard
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.green, style = Styles.Bold },
    DashboardShortCut = { fg = c.yellow },
    DashboardFooter = { fg = c.bright_white, style = Styles.Italic },

    -- WhichKey
    WhichKey = { fg = c.blue }, -- the key
    WhichKeyGroup = { fg = c.syntax.keyword }, -- a group
    WhichKeySeperator = { fg = c.syntax.comment }, -- the separator between the key and its label
    WhichKeyDesc = { fg = c.fg }, -- the label of the key
    WhichKeyFloat = { bg = c.bg2 }, -- Normal in the popup window
    WhichKeyValue = { fg = c.syntax.comment }, -- used by plugins that provide values

    -- LspSaga
    DiagnosticError = { fg = c.error },
    DiagnosticWarning = { fg = c.warning },
    DiagnosticInformation = { fg = c.info },
    DiagnosticHint = { fg = c.hint },

    -- NeoVim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warning },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.blue },

    -- Hop
    -- Deep red color for light themes
    -- Fixed https://github.com/projekt0n/github-nvim-theme/issues/189
    HopNextKey = { fg = vim.o.background == 'light' and c.bright_red or c.magenta, style = Styles.Bold },
    HopNextKey1 = { fg = c.blue, style = Styles.Bold },
    HopNextKey2 = { fg = util.darken(c.bright_blue, 0.8) },
    HopUnmatched = { fg = c.fg_dark },

    -- ALE
    ALEWarningSign = { fg = c.warning },
    ALEErrorSign = { fg = c.error },

    -- Compe
    CompeDocumentation = { links = 'NormalFloat' },
    CompeDocumentationBorder = { links = 'FloatBorder' },

    -- Cmp
    CmpDocumentation = { links = 'NormalFloat' },
    CmpDocumentationBorder = { links = 'FloatBorder' },
    CmpItemAbbrDeprecated = { fg = c.syntax.comment, style = 'strikethrough' },
    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrDefault = { fg = c.fg_light },
    CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },
    CmpItemMenuDefault = { link = 'CmpItemAbbrDefault' },

    -- Cmp Item Kind
    CmpItemKindColorDefault = { fg = c.bright_red },
    CmpItemKindPropertyDefault = { fg = c.syntax.func },
    CmpItemKindSnippetDefault = { fg = c.bright_yellow },

    CmpItemKindVariableDefault = { fg = c.syntax.variable },
    CmpItemKindClassDefault = { link = 'CmpItemKindVariableDefault' },
    CmpItemKindEnumDefault = { link = 'CmpItemKindVariableDefault' },
    CmpItemKindInterfaceDefault = { link = 'CmpItemKindVariableDefault' },
    CmpItemKindTextDefault = { link = 'CmpItemKindVariableDefault' },

    CmpItemKindKeywordDefault = { fg = c.syntax.keyword },
    CmpItemKindFieldDefault = { link = 'CmpItemKindKeywordDefault' },
    CmpItemKindUnitDefault = { link = 'CmpItemKindKeywordDefault' },
    CmpItemKindValueDefault = { link = 'CmpItemKindKeywordDefault' },

    CmpItemKindFileDefault = { fg = c.orange },
    CmpItemKindFolderDefault = { link = 'CmpItemKindFileDefault' },

    CmpItemKindFunctionDefault = { fg = c.syntax.func },
    CmpItemKindConstructorDefault = { link = 'CmpItemKindFunctionDefault' },
    CmpItemKindEventDefault = { link = 'CmpItemKindFunctionDefault' },
    CmpItemKindMethodDefault = { link = 'CmpItemKindFunctionDefault' },

    CmpItemKindOperatorDefault = { link = 'Operator' },
    CmpItemKindEnumMemberDefault = { link = 'CmpItemKindOperatorDefault' },
    CmpItemKindReferenceDefault = { link = 'CmpItemKindOperatorDefault' },
    CmpItemKindTypeParameter = { link = 'CmpItemKindOperatorDefault' },

    CmpItemKindConstantDefault = { fg = c.syntax.constant },
    CmpItemKindModuleDefault = { link = 'CmpItemKindConstantDefault' },
    CmpItemKindStructDefault = { link = 'CmpItemKindConstantDefault' },
    CmpItemKindTypeParameterDefault = { link = 'CmpItemKindConstantDefault' },

    -- nvim-notify
    NotifyERRORTitle = { fg = util.darken(c.error, 0.9) },
    NotifyWARNTitle = { fg = util.darken(c.warning, 0.9) },
    NotifyINFOTitle = { fg = util.darken(c.green, 0.9) },
    NotifyDEBUGTitle = { fg = util.darken(c.fg, 0.7) },
    NotifyTRACETitle = { fg = util.darken(c.bright_magenta, 0.9) },

    NotifyERRORIcon = { link = 'NotifyERRORTitle' },
    NotifyWARNIcon = { link = 'NotifyWARNTitle' },
    NotifyINFOIcon = { link = 'NotifyINFOTitle' },
    NotifyDEBUGIcon = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEIcon = { link = 'NotifyTRACETitle' },

    NotifyERRORBorder = { link = 'NotifyERRORTitle' },
    NotifyWARNBorder = { link = 'NotifyWARNTitle' },
    NotifyINFOBorder = { link = 'NotifyINFOTitle' },
    NotifyDEBUGBorder = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEBorder = { link = 'NotifyTRACETitle' },

    NotifyERRORBody = { fg = util.lighten(c.error, 0.1) },
    NotifyWARNBody = { fg = util.lighten(c.warning, 0.1) },
    NotifyINFOBody = { fg = util.lighten(c.green, 0.1) },
    NotifyDEBUGBody = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEBody = { fg = util.lighten(c.bright_magenta, 0.1) },

    -- Coc
    CocErrorSign = { link = 'ErrorMsg' },
    CocWarningSign = { link = 'WarningMsg' },
    CocInfoSign = { link = 'DiagnosticInfo' },
    CocHintSign = { link = 'DiagnosticHint' },
    CocErrorFloat = { link = 'ErrorMsg' },
    CocWarningFloat = { link = 'WarningMsg' },
    CocInfoFloat = { link = 'DiagnosticInfo' },
    CocHintFloat = { link = 'DiagnosticHint' },
    CocDiagnosticsError = { link = 'ErrorMsg' },
    CocDiagnosticsWarning = { link = 'WarningMsg' },
    CocDiagnosticsInfo = { link = 'DiagnosticInfo' },
    CocDiagnosticsHint = { link = 'DiagnosticHint' },
    CocSelectedText = { fg = c.red },
    CocCodeLens = { fg = c.fg_dark },

    CocErrorHighlight = { link = 'LspDiagnosticsUnderlineError' },
    CocWarningHighlight = { link = 'LspDiagnosticsUnderlineWarning' },
    CocInfoHighlight = { link = 'LspDiagnosticsUnderlineInformation' },
    CocHintHighlight = { link = 'LspDiagnosticsUnderlineHint' },

    CocHighlightText = { bg = c.bg_visual_selection },
    CocUnderline = { style = Styles.Undercurl },

    -- DiffView
    DiffAdd = { fg = c.diff.add_fg, bg = c.diff.add },
    DiffChange = { fg = c.diff.change_fg, bg = c.diff.change },
    DiffDelete = { fg = c.diff.delete_fg, bg = c.diff.delete },
    DiffText = { link = 'DiffChange' },
    DiffviewFilePanelFileName = { fg = c.fg_light },

    -- nvim-treesitter-context
    TreesitterContext = { bg = vim.o.background == 'light' and util.lighten(c.blue, 0.9) or util.darken(c.blue, 0.2) },
  }

  if cfg.hide_inactive_statusline then
    hi.base.StatusLineNC = { fg = c.bg, bg = c.bg, sp = c.bg_visual, style = Styles.Underline }
  end

  return hi
end

return theme

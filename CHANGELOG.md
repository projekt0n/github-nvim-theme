# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog], and this project adheres to [Semantic Versioning].

## [unreleased]

### Changes

-  Minimized colorscheme files in `colors/*.vim` and refactored-out duplicated logic
-  Removed the long-since deprecated `github_dimmed` theme (use `github_dark_dimmed` instead)
-  Improved `cmp` highlights (completion menu)

### Issues Fix

-  Fixed JSX/TSX tags are missing highlights with nvim 0.10 (#360)
-  Fixed loading palette or spec before colorscheme disrupts colors (#362 fixed-by #363)

## [v1.1.2] - 05 August 2024

_This release contains a crucial ***hotfix*** for a bug that prevented the ability to
override `specs` in any way (see #359)._

### What's New?

-  Added static/class function `Color.is_Color()` for detecting Color instances
-  Added `live_colors()` to the `interactive` module to assist internal development (debugging, color picking)

#### Highlight Improvements

-  **JSON:** keys
-  **Lua:** keys (in table literals and type annotations)

### Changes

-  Moved/migrated `plugin/*.vim` -> `plugin/*.lua`

### Issues Fix

-  Made `Color()` constructor idempotent (previously, passing a `Color` inst silently caused a bug)
-  Fixed unable to override/customize spec (#359)
-  Fixed `winhl` gets clobbered when set

## [v1.1.0] - 23 July 2024

### Highlight Groups

As of neovim `v0.10`, several highlight groups have changed. You may need to update your
config if you are using or overriding any of these groups. Use `:help
github-theme.nvim-0.10.0.hlgroups` in neovim for a precise breakdown of the groups
affected.

### Configuration Deprecation and Migration

-  Reverted/renamed `options.darken.sidebars.enabled` back to `options.darken.sidebars.enable` (see #343)

### What's New?

-  Added new highlight groups for mini.nvim (#333 by @echasnovski)
-  Improved highlight-group overrides (#349)
-  Assigning `false` or an empty table to a highlight group clears it
-  Assigning `false` to groups/specs/palettes clears previous settings from the config store for that category
-  Loading/sourcing colorscheme now causes recompilation if config or overrides changed, even if `setup()` was called before
-  Refactored and improved `Color` lib (LSP types and descriptions, code-dedupe, stricter ctor, etc.) (#352)
-  Added and improved types (LSP) for groups, config, and modules (#354)
-  Added tests and greatly improved test coverage
-  The highlighting of `gitignore` files has improved

### Changes

-  Clarify `options.transparent` in README (resolves #327)
-  Renamed function `Color:lumanance()` -> `Color:luminance()` in `Color` lib (typo/misspelling)
-  Changed Lua function/method calls to default pinkish color, but left builtin functions untouched (as a different color)

### Issues Fix

-  Fixed `punctuation.delimiter` treesitter group nearly invisible (#329 fixed-by #331)
-  Closed #305 (no longer valid, fixed)
-  Closed #292 (no longer valid, fixed)
-  fix(config): `options.darken.floats` is not used (#345)
-  fix(compiler): consider entire config when hashing (#350) (related-to #262, #340, #341)
-  fix(compiler): always write hash to fs when compile occurs incl. when `require('github-theme').compile()` is called directly (#350)
-  Fixed #340 and #341 (broken/outdated `overrides` example in docs)
-  Fixed floats not transparent when `transparent = true` (#337 fixed-by #351)
-  fix(Color): `Color.from_hsv()` is used for HSL
-  Fixed sidebar is not darkened when configured to do so (affects neo-tree, etc.) (#306 fixed-by #343)

## [v1.0.2] - 03 May 2023

### What's New?

-  Implement [highlight-blend](https://neovim.io/doc/user/syntax.html#highlight-blend) feature #251
-  Added Rust lifetime highlights #289
-  Reimplemented `*_default` colorschemes.
-  Support `WinSeparator` highlight, introduced in Neovim >= 0.10, replacing `VertSplit`.

### Changes

-  chore(ci): use `actions/checkout@v4`
-  fix(ci): update neovim macOS distribution naming

### Issues Fix

-  Fixed few regex-based/legacy highlight corrections (fixed #285)
-  Closed #251
-  Fixed bug where the current theme gets compiled multiple times instead of compiling all themes #290
-  Fixed darkened sidebars when disabling `options.sidebars.disabled`
-  Fixes #311

## [v1.0.1] - 23 July 2023

### What's New?

-  Included Airline themes Fixed #20
-  CI: Get and update primer primitives automatically #253
-  Support coc-explorer highlights

### Changes

-  Enhance Current Statusline and Popup selection with blue tint
-  Enhance [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) plugin highlights

### Issues Fix

-  Fixed Interactive mode in compiled colorscheme
-  #160 closed due to inactivity.
-  #232 fixed with #266
-  #254 fixed
-  #257 fixed
-  #261 fixed
-  #268 fixed
-  #274 fixed
-  #281 fixed

## [v1.0.0] - 19 May 2023

### Deprecation & Breaking Changes

-  The Method of setting and loading colorscheme is changed. Refer to `:h github-theme.changelog-10042023`
-  The `config.vim_config` and `config.default` modules are now deprecated.
-  The `config.apply_configuration()` function is also deprecated.
-  The `theme_style` option is removed. Use `:colorscheme` command instead.
-  The module `plugins.lualine` moved to `util.lualine` and `plugins` module removed.
-  Old `util` module deprecated.

### Configuration Deprecation and Migration

-  `msg_area_style` -> Removed.
-  `comment_style` -> `options.styles.comments`
-  `function_style` -> `options.styles.functions`
-  `keyword_style` -> `options.styles.keywords`
-  `variable_style` -> `options.styles.variables`
-  `transparent` -> `options.transparent`
-  `hide_end_of_buffer` -> `options.hide_end_of_buffer`
-  `hide_inactive_statusline` -> `options.hide_nc_statusline`
-  `dark_float` -> `options.darken.floats`
-  `dark_sidebar`-> `options.darken.sidebars.enable`
-  `sidebars`-> `options.darken.sidebars.list`
-  `colors`-> `palettes` or `specs`
-  `overrides` -> `groups`
-  `dev` -> use vim command `:GithubThemeInteractive`

### New Configuration

-  `options.compile_file_suffix` -> Option for setting compiled file suffix.
-  `options.compile_path` -> Option for setting compile files path.
-  `options.dim_inactive` -> Option for setting darker tint to non active buffers.
-  `options.terminal_colors` -> Option for toggling builtin terminal highlights.
-  `options.module_default` -> Option for toggling plugins highlights
-  `options.modules` -> Option for individual plugins related configuration
-  `options.styles.conditionals` -> Style for conditionals
-  `options.styles.constants` -> Style for constants
-  `options.styles.numbers` -> Style for numbers
-  `options.styles.operators` -> Style for operators
-  `options.styles.strings` -> Style for strings
-  `options.styles.types` -> Style for types
-  `options.inverse.match_paren` -> Reverse match parentheses
-  `options.inverse.visual` -> Reverse visual selection
-  `options.inverse.search` -> Reverse search string

### What's New?

-  Compiling colorscheme for blazingly fast load using `:GithubThemeCompile`
-  Interactive development mode using `:GithubThemeInteractive`
-  `lib.deprecation` - A Deprecation library to print Deprecation Messages.
-  `lib.log` - A logging library to print log Messages.
-  The `config.default` module has been changed to a variable and moved inside the `config` module.
-  Support [Fidget](https://github.com/j-hui/fidget.nvim) plugin highlights #202
-  Support [fzf-lua](https://github.com/ibhagwan/fzf-lua) plugin highlights #221
-  Support [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) plugin highlights #221
-  Support [dap-ui](https://github.com/rcarriga/nvim-dap-ui) plugin highlights #207
-  Support [diffchar.vim](https://github.com/rickhowe/diffchar.vim) plugin highlights #216

### Issues Fix

-  #157 fixed
-  #160 closed due to inactivity.
-  #191 closed due to inactivity.
-  #193 closed with conversation.
-  #201 fixed
-  #209 fixed
-  #213 fixed
-  #218 closed due to inactivity.
-  #225 closed with conversation.
-  #228 fixed
-  #229 closed with conversation.
-  #231 fixed
-  #232 closed due to inactivity.
-  #233 closed with conversation.
-  #235 closed with conversation.
-  #238 fixed
-  #239 fixed
-  #241 fixed
-  #243 fixed
-  #244 fixed
-  #246 fixed
-  #247 fixed
-  #249 fixed

## [v0.0.7] - 16 January 2023

### Changes

-  merged: #222
-  Fixed #214 #220 #223 #224

## [v0.0.6] - 03 August 2022

### Changes

-  Terminal Themes moved to
    [github-theme-contrib](https://github.com/projekt0n/github-theme-contrib)
-  Terminal themes related code removed

### Added

-  feat: plugin support [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) fixed #182
-  feat: plugin support [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) fixed #184
-  terminal-theme: foot theme added #183
-  Added `NvimTreeOpenedeFile` highlight
-  feat: plugin support [echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim)
-  feat: plugin support [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)
-  docs: Breaking Change logs with `:h github-theme-changelog`

### Fixes

-  fixed #175
-  removed `hi clear` command from loading colorscheme fixed #181
-  removed html tags from README.md
-  fixed #189
-  fixed #186
-  fixed #190
-  fixed lsp warnings and types

## [v0.0.5] - 03 May 2022

### Added

-  refactor: color types moved to `types/palette.lua`
-  chore: terminal colors
-  feat: use native autocmds on nvim >=0.7 ( fixed #168 )
-  chore: tmux theme's extension changed to `.conf` from `.tmux`
-  BREAKING-CHANGE: removed some colors from `colors.lua`
-  refactor: implement highlight override function in `util.load`
-  enhance: `overrides` function is now able to add custom highlight in `dev` mode.
-  docs: about developer mode
-  BREAKING-CHANGE: set lualine theme with `theme="auto"`
-  terminal-theme: Xresources theme added #166
-  chore: unlink 'Visual' highlight from plugin highlights
-  kitty: add cursor foreground color ( fixed #174 )
-  terminal-theme: Windows Terminal theme added #180 @mutecipher

### Fixes

-  tmp-fix: deleted lua queries #159
-  nvim-dev-icons colors fixed projekt0n/circles.nvim#6
-  make: tmux prefix fixed
-  tmux: set `bg2` as background in 'message-style' fixed #164
-  fixed #163
-  fixed #165
-  lualine docs updated (fixed #167)
-  fixed #177
-  fix: use pcall to clear autocmd silently @xiyaowong #178
-  fix: skip native_autocmds on some neovim0.7 builds
-  fixed #179

## [v0.0.4] - 11 January 2022

### Added

-  Github Dark ColorBlind(Beta) added 🎉 #96
-  Github Light ColorBlind(Beta) added 🎉 #96
-  Dark background color for inactive statusline and lualine
-  Minimal look (`hide_inactive_statusline`) removed from lualine
-  `terminal` highlight added for lualine
-  Added basic [coc.nvim](https://github.com/neoclide/coc.nvim) highlights #141
-  define global in project `luarc` config file.
-  Removed unnecessary defer function & highlights
-  allow customizing highlight group ful1e5/onedark.nvim#91
-  refactor: Colors moved to `palette` module
-  `types` module initiate
-  proper color docs with `gt.ColorPalette` type
-  Support `ConfigSchema` type with all modules
-  refactor: config module
-  feat: `githooks` init
-  formatter changed `LuaFormatter`-> `StyLua`
-  chore: removed unnecessary module (`hsluv.lua`)
-  feat: luadoc and type added inside `util.lua`
-  feat: TerminalConf type added in `types` module
-  refactor: modules export & typing
-  refactor: terminal themes moved 'extras' -> 'terminal'
-  feat: Apply highlight's style using `types.HighlightStyle` type
-  refactor: color name changed 'term_fg' -> 'fg_term'
-  feat: suggest config in `vim.g` autocompletion
-  feat: reuse common color in palettes
-  docs: team account added in funding

### Fixes

-  dark foreground color for visited entries in telescope.nvim
-  Fix #144 - Repatch removed hop.nvim highlights
-  Fix #133 - highlights of inactive tabline in lualine plugin
-  inherit `eof` color from `fg_gutter` #150
-  cleanup: _getColor()_ from `util` module
-  fix #156 - highlight added for `GitSignsCurrentLineBlame`
-  refactor: color renamed `lsp.referenceText` -> `lsp.ref_txt`
-  `TabLineSel` highlight link with `PmenuSel`
-  Fixed `iterm` theme generation
-  fix: lualine theme

## [v0.0.3] - 09 December 2021

### Added

-  Github `dark_default` theme added #15 #16 #24
-  Github `light_default` theme added #15 #16
-  Make target added for reloading kitty theme with `kitty_dark_default` & `kitty_light_default`
-  Individual themes for `colorscheme` command #68
-  BREAKING-CHANGE: use **snake_case** inside config instead of ~camelCase~
-  `hide_inactive_statusline` default value is `true`
-  `dark_float` default value is `false`
-  feat: vim config support with "vim.g"
-  lualine colors refactored inside `colors.lua` (related to #80)
-  `NvimTreeIndentMarker` highlight is light #74
-  Github's default themes for `tmux`
-  plugin support: nvim-compe, nvim-cmp and nvim-notify
-  set `vim.o.background` while loading individual colorscheme (folke/tokyonight.nvim#102)
-  enhance: assign config default value to `vim.g` variables
-  re-patch: #72
-  BREAKING-CHANGE: `github` deprecated from `colorscheme` command
-  `pmenu.select` color removed
-  pmenu select background color with dynamic blue color
-  BREAKING-CHANGE: terminal colors are renamed
-  feat: set `vim.o.background` with config module (re-patch #60 #116)
-  enhance: support colorschemes with fzf `Colors` command
-  enhance: unlink `NvimTreeGitIgnored` from `Comment`
-  refactor: global variable prefix store in `key_prefix` variable
-  refactor: pass common config in `extra` module
-  enhance: `StatusLine` foreground & `StatusLineNC` background colors are customizable ( related to #11 )
-  feat: vscode like lspkind highlighting inside `nvim-cmp` #137
-  enhance: highlight all lspkind list in `nvim-cmp` #137
-  Link common highlights for `diff` group

### Fixes

-  Fixed `diff` highlight colors for `dark_default` & `light_default`
-  Screenshots and docs updated #63 #16
-  #72 fixed
-  #73 fixed
-  #80 fixed
-  #76 fixed
-  `IncSearch` highlight linked with `Search`
-  `Search` highlight enhanced for `transparent` mode
-  `LineNr` highlight enhanced for `transparent` mode
-  refactor: `git_signs` & `dev_icons` colors
-  docs: removed `lua` table assignment from `vim` example (related to #89 #77)
-  Linting inside `tmux.lua`
-  NvimTree git highlight
-  refactor: de-attach 'bg_statusline' color from lualine
-  fix #83: inactive lualine colors
-  enhance: inactive statusline
-  load colorscheme according to `theme_style` config
-  removed `search` colors force assignments from `transparent` mode #113
-  todo highlight foreground color fixed #115
-  make `CursorLine` and `CursorColumn` background highlight more visible #109
-  `qfLineNr` & `QuickFixLine` colors updated #119
-  LuaDocs: duplicate warning fixed
-  missing `'` in vim config (README.md) fixed #134
-  typo inisde `theme.lua`
-  missing alias fixed inside `colors.lua`
-  Fix `vim.o.background` setting in config module
-  Fix assign `user_config` value to `vim.g` global variables

## [v0.0.2] - 15 September 2021

### Added

-  `folded` colors are configurable
-  Plugin Support check #16
-  added iTerm colorscheme #14
-  added Konsole colorscheme #33
-  `github-theme.util.color_overrides` function support "NONE" color (fix related to #36)
-  Terminal themes are structured through `extra/init.lua`
-  Area for messages and cmdline with `bold` text highlight #44
-  `hideEndOfBuffer` options added. Enabling this option, will hide filler lines (~) after the end of the buffer #46
-  Custom [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) colors (related to #16)
-  `msgAreaStyle` config added
-  `border` color added in `colors.lua`
-  Set `border` colors according to `themeStyle`

### Fixes

-  Kitty themes typo fixed #3
-  Change terminal background color to `bg` #2
-  Fold Bright background fixed #5
-  Added option to customize statusline background with `bg_statusline` #11
-  Lualine `c` section background color get dark color `bg2`
-  illuminate plugin highlights fixed #10
-  Change `commentTSConstant` highlight to `c.syntax.keyword` from `c.syntax.commentConstant`
-  Removed `commentConstant` color
-  lualine `command` background fixed #30
-  Make window-separator(`VertSplit`) highlight bright (related to #16)
-  Removed unnecessary colors from `colors.lua`
-  Enhanced `TabLineSel` is barely readable foreground color fixed #35
-  Enhanced `transparent` mode background color #41
-  Add proper `Description` inside `konsole` theme (bug from #33)
-  Lualine `normal` section background color set blue color #43
-  Kitty window border colors fix #47
-  refactored `lua/github-theme/config.lua` fixed #29
-  telescope.nvim highlights improved
-  use `bg_visiual` color as floating window border
-  use `bg` and `bg2` colors for `EndOfBuffer` `NoneText` fixed #66

## [v0.0.1] - 09 July 2021

### Added

-  Initial release 🎊

[unreleased]: https://github.com/projekt0n/github-nvim-theme/compare/v1.1.2...main
[v1.1.2]: https://github.com/projekt0n/github-nvim-theme/compare/v1.1.0...v1.1.2
[v1.1.0]: https://github.com/projekt0n/github-nvim-theme/compare/v1.0.2...v1.1.0
[v1.0.2]: https://github.com/projekt0n/github-nvim-theme/compare/v1.0.1...v1.0.2
[v1.0.1]: https://github.com/projekt0n/github-nvim-theme/compare/v1.0.0...v1.0.1
[v1.0.0]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.7...v1.0.0
[v0.0.7]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.6...v0.0.7
[v0.0.6]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.5...v0.0.6
[v0.0.5]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.4...v0.0.5
[v0.0.4]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.3...v0.0.4
[v0.0.3]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.2...v0.0.3
[v0.0.2]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.1...v0.0.2
[v0.0.1]: https://github.com/projekt0n/github-nvim-theme/tree/v0.0.1
[Keep a Changelog]: https://keepachangelog.com/en/1.0.0
[Semantic Versioning]: https://semver.org/spec/v2.0.0.html

# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [unreleased]

### Added

- refactor: color types moved to `types/palette.lua`
- chore: terminal colors

### Fixes

- tmp-fix: deleted lua queries #159

## [v0.0.4] - 11 Jan 2022

### Added

- Github Dark ColorBlind(Beta) added 🎉 #96
- Github Light ColorBlind(Beta) added 🎉 #96
- Dark background color for inactive statusline and lualine
- Minimal look (`hide_inactive_statusline`) removed from lualine
- `terminal` highlight added for lualine
- Added basic [coc.nvim](https://github.com/neoclide/coc.nvim) highlights #141
- define global in project `luarc` config file.
- Removed unnecessary defer function & highlights
- allow customizing highlight group ful1e5/onedark.nvim#91
- refactor: Colors moved to `palette` module
- `types` module initiate
- proper color docs with `gt.ColorPalette` type
- Support `ConfigSchema` type with all modules
- refactor: config module
- feat: `githooks` init
- formatter changed `LuaFormatter`-> `StyLua`
- chore: removed unnecessary module (`hsluv.lua`)
- feat: luadoc and type added inside `util.lua`
- feat: TerminalConf type added in `types` module
- refactor: modules export & typing
- refactor: terminal themes moved 'extras' -> 'terminal'
- feat: Apply highlight's style using `types.HighlightStyle` type
- refactor: color name changed 'term_fg' -> 'fg_term'
- feat: suggest config in `vim.g` autocompletion
- feat: reuse common color in palettes
- docs: team account added in funding

### Fixes

- dark foreground color for visited entries in telescope.nvim
- Fix #144 - Repatch removed hop.nvim highlights
- Fix #133 - highlights of inactive tabline in lualine plugin
- inherit `eof` color from `fg_gutter` #150
- cleanup: _getColor()_ from `util` module
- fix #156 - highlight added for `GitSignsCurrentLineBlame`
- refactor: color renamed `lsp.referenceText` -> `lsp.ref_txt`
- `TabLineSel` highlight link with `PmenuSel`
- Fixed `iterm` theme generation
- fix: lualine theme

## [v0.0.3] - 09 Dec 2021

### Added

- Github `dark_default` theme added #15 #16 #24
- Github `light_default` theme added #15 #16
- Make target added for reloading kitty theme with `kitty_dark_default` & `kitty_light_default`
- Individual themes for `colorscheme` command #68
- Breaking Change: use **snake_case** inside config instead of ~camelCase~
- `hide_inactive_statusline` default value is `true`
- `dark_float` default value is `false`
- feat: vim config support with "vim.g"
- lualine colors refactored inside `colors.lua` (related to #80)
- `NvimTreeIndentMarker` highlight is light #74
- Github's default themes for `tmux`
- plugin support: nvim-compe, nvim-cmp and nvim-notify
- set `vim.o.background` while loading individual colorscheme (folke/tokyonight.nvim#102)
- enhance: assign config default value to `vim.g` variables
- re-patch: #72
- breaking change: `github` deprecated from `colorscheme` command
- `pmenu.select` color removed
- pmenu select background color with dynamic blue color
- breaking change: terminal colors are renamed
- feat: set `vim.o.background` with config module (re-patch #60 #116)
- enhance: support colorschemes with fzf `Colors` command
- enhance: unlink `NvimTreeGitIgnored` from `Comment`
- refactor: global variable prefix store in `key_prefix` variable
- refactor: pass common config in `extra` module
- enhance: `StatusLine` foreground & `StatusLineNC` background colors are customizable ( related to #11 )
- feat: vscode like lspkind highlighting inside `nvim-cmp` #137
- enhance: highlight all lspkind list in `nvim-cmp` #137
- Link common highlights for `diff` group

### Fixes

- Fixed `diff` highlight colors for `dark_default` & `light_default`
- Screenshots and docs updated #63 #16
- #72 fixed
- #73 fixed
- #80 fixed
- #76 fixed
- `IncSearch` highlight linked with `Search`
- `Search` highlight enhanced for `transparent` mode
- `LineNr` highlight enhanced for `transparent` mode
- refactor: `git_signs` & `dev_icons` colors
- docs: removed `lua` table assignment from `vim` example (related to #89 #77)
- Linting inside `tmux.lua`
- NvimTree git highlight
- refactor: de-attach 'bg_statusline' color from lualine
- fix #83: inactive lualine colors
- enhance: inactive statusline
- load colorscheme according to `theme_style` config
- removed `search` colors force assignments from `transparent` mode #113
- todo highlight foreground color fixed #115
- make `CursorLine` and `CursorColumn` background highlight more visible #109
- `qfLineNr` & `QuickFixLine` colors updated #119
- LuaDocs: duplicate warning fixed
- missing `'` in vim config (README.md) fixed #134
- typo inisde `theme.lua`
- missing alias fixed inside `colors.lua`
- Fix `vim.o.background` setting in config module
- Fix assign `user_config` value to `vim.g` global variables

## [v0.0.2] - 15 Sep 2021

### Added

- `folded` colors are configurable
- Plugin Support check #16
- added iTerm colorscheme #14
- added Konsole colorscheme #33
- `github-theme.util.color_overrides` function support "NONE" color (fix related to #36)
- Terminal themes are structured through `extra/init.lua`
- Area for messages and cmdline with `bold` text highlight #44
- `hideEndOfBuffer` options added. Enabling this option, will hide filler lines (~) after the end of the buffer #46
- Custom [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) colors (related to #16)
- `msgAreaStyle` config added
- `border` color added in `colors.lua`
- Set `border` colors according to `themeStyle`

### Fixes

- Kitty themes typo fixed #3
- Change terminal background color to `bg` #2
- Fold Bright background fixed #5
- Added option to customize statusline background with `bg_statusline` #11
- Lualine `c` section background color get dark color `bg2`
- illuminate plugin highlights fixed #10
- Change `commentTSConstant` highlight to `c.syntax.keyword` from `c.syntax.commentConstant`
- Removed `commentConstant` color
- lualine `command` background fixed #30
- Make window-separator(`VertSplit`) highlight bright (related to #16)
- Removed unnecessary colors from `colors.lua`
- Enhanced `TabLineSel` is barely readable foreground color fixed #35
- Enhanced `transparent` mode background color #41
- Add proper `Description` inside `konsole` theme (bug from #33)
- Lualine `normal` section background color set blue color #43
- Kitty window border colors fix #47
- refactored `lua/github-theme/config.lua` fixed #29
- telescope.nvim highlights improved
- use `bg_visiual` color as floating window border
- use `bg` and `bg2` colors for `EndOfBuffer` `NoneText` fixed #66

## [v0.0.1] - 9 Jul 2021

### Added

- Initial release 🎊

[unreleased]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.4...main
[v0.0.4]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.4...v0.0.3
[v0.0.3]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.3...v0.0.2
[v0.0.2]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.2...v0.0.1
[v0.0.1]: https://github.com/projekt0n/github-nvim-theme/tree/v0.0.1

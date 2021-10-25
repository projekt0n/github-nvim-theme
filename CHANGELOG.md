# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [unreleased]

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
- revert 41f844a #113
- todo highlight foreground color fixed #115
- make `CursorLine` and `CursorColumn` background highlight more visible #109
- `qfLineNr` & `QuickFixLine` colors updated #119

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

[unreleased]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.2...main
[v0.0.2]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.2...v0.0.1
[v0.0.1]: https://github.com/projekt0n/github-nvim-theme/tree/v0.0.1

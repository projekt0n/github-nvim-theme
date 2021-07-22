# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [unreleased]

### Added

- `folded` colors are configurable
- Plugin Support check #16
- added iTerm colorscheme #14
- added Konsole colorscheme #33
- `github-theme.util.color_overrides` function support "NONE" color (fix related to #36)
- Terminal themes are structured through `extra/init.lua`
- Area for messages and cmdline with `bold` text highlight

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
- Enhanced `transparent` mode background color
- Add proper `Description` inside `konsole` theme (bug from #33)
- Lualine `normal` section background color set blue color #43

## [v0.0.1] - 9 Jul 2021

### Added

- Initial release 🎊

[unreleased]: https://github.com/projekt0n/github-nvim-theme/compare/v0.0.1...main
[v0.0.1]: https://github.com/projekt0n/github-nvim-theme/tree/v0.0.1

<p align="center">
  <img src="https://imgur.com/OLRFrjD.png" alt="github-nvim-theme" />
</p>

### Status

[![Linting](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml/badge.svg)](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml)
[![Twitter](https://img.shields.io/badge/twitter-projekt0n-blue)](https://twitter.com/projekt0n)

## Features

- supports the latest Neovim 0.5 features like TreeSitter and LSP
- minimal inactive statusline
- vim terminal colors
- darker background for sidebar-like windows
- color configs for [kitty](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include), [iTerm2](https://iterm2.com/), [Konsole](https://konsole.kde.org/), [tmux](https://github.com/tmux/tmux/wiki) and [Alacritty](https://github.com/alacritty/alacritty)
- Most elegant [**lualine** theme](./LUALINE.md#screenshots)

## Terminal Themes (Extras)

> To generate the configs `make extra` or `:luafile lua/github-theme/extra/init.lua`

Extra color configs for **kitty**, **iTerm**, **Konsole**, **tmux** and **Alacritty** can be found in [extras](extras/) directory. To use them, refer to their respective documentation.

## Plugin Support

- [Builtin lsp diagnostics](https://neovim.io/doc/user/lsp.html)
- [ale](https://github.com/dense-analysis/ale)
- [circles.nvim](https://github.com/projekt0n/circles.nvim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lsp-trouble.nvim](https://github.com/folke/lsp-trouble.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [neogit](https://github.com/TimUntersberger/neogit)
- [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Requirements

- Neovim >= 0.5.0

## Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'projekt0n/github-nvim-theme'
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use "projekt0n/github-nvim-theme"
```

## Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme github_*
```

```lua
-- Lua
require('github-theme').setup()
```

## Configuration

| Option                   | Default  | Description                                                                                                                                     |
| ------------------------ | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| theme_style              | `dark`   | Set theme variant (options: `dark`/`dark_default`/`dimmed`/`light`/`light_default`)                                                             |
| comment_style            | `italic` | Highlight style for comments (check `:help highlight-args` for options)                                                                         |
| keyword_style            | `italic` | Highlight style for keywords (check `:help highlight-args` for options)                                                                         |
| function_style           | `NONE`   | Highlight style for functions (check `:help highlight-args` for options)                                                                        |
| variable_style           | `NONE`   | Highlight style for variables and identifiers (check `:help highlight-args` for options)                                                        |
| msg_area_style           | `NONE`   | Highlight style for messages and cmdline (check `:help highlight-args` for options)                                                             |
| transparent              | `false`  | Enable this to disable setting the background color                                                                                             |
| hide_end_of_buffer       | `true`   | Enabling this option, will hide filler lines (~) after the end of the buffer                                                                    |
| hide_inactive_statusline | `true`   | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine**. |
| sidebars                 | `{}`     | Set a darker background on sidebar-like windows. For example: `{"qf", "vista_kind", "terminal", "packer"}`                                      |
| dark_sidebar             | `true`   | Sidebar like windows like `NvimTree` get a darker background                                                                                    |
| dark_float               | `false`  | Float windows like the lsp diagnostics windows get a darker background.                                                                         |
| colors                   | `{}`     | You can override specific color groups to use other groups or a hex color                                                                       |

```vim
" Example config in VimScript
" NOTE: Configuration needs to be set BEFORE loading the color scheme with `colorscheme` command
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme github_dark
```

```lua
-- Example config in Lua
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"}
})
```

### Lualine Support

check [LUALINE.md](./LUALINE.md)

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## Reference

- [primer/github-vscode-theme](https://github.com/primer/github-vscode-theme)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [monsonjeremy/onedark.nvim](https://github.com/monsonjeremy/onedark.nvim)

## 📺 Screenshot

- Font: [Ubuntu Mono](https://design.ubuntu.com/font/)
- Terminal: [kitty](https://sw.kovidgoyal.net/kitty)
- Icon: [circles.nvim](https://github.com/projekt0n/circles.nvim)
- StatusLine: **Default**. [dotfiles/nvim/.config/nvim/lua/options.lua#L19-L30](https://github.com/ful1e5/dotfiles/blob/a2777f85b104622dd82f4adfc6ad032e3ff074bf/nvim/.config/nvim/lua/options.lua#L19-L30)
- dotfiles: [dotfiles](https://github.com/ful1e5/dotfiles)

### Theme Styles

#### Dark

```vim
" VimScript
colorscheme github_dark
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "dark",
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/wsST2ZB.png" alt="github_dark" />
</p>

#### Dark Default

```vim
" VimScript
colorscheme github_dark_default
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "dark_default",
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/pNJDMft.png" alt="github_dark_default" />
</p>

#### Dimmed

```vim
" VimScript
colorscheme github_dimmed
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "dimmed",
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/LLp5qnT.png" alt="github_dimmed" />
</p>

#### Light

```vim
" VimScript
colorscheme github_light
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "light",
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/yXEj746.png" alt="github_light" />
</p>

#### Light Default

```vim
" VimScript
colorscheme github_light_default
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "light_default",
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/fykVFCr.png" alt="github_light_default" />
</p>

### Syntax Styles

#### Default

<p align="center">
  <img src="https://imgur.com/GbemreO.png" alt="github_default_syntax" />
</p>

#### Normal

```vim
" VimScript
let g:github_comment_style = "NONE"
let g:github_keyword_style = "NONE"
let g:github_function_style = "NONE"
let g:github_variable_style = "NONE"
```

```lua
-- Lua
require("github-theme").setup({
  comment_style = "NONE",
  keyword_style = "NONE",
  function_style = "NONE",
  variable_style = "NONE"
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/qrJwUDb.png" alt="github_normal_syntax" />
</p>

#### Italic

```vim
" VimScript
let g:github_comment_style = "italic"
let g:github_keyword_style = "italic"
let g:github_function_style = "italic"
let g:github_variable_style = "italic"
```

```lua
-- Lua
require("github-theme").setup({
  comment_style = "italic",
  keyword_style = "italic",
  function_style = "italic",
  variable_style = "italic"
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/TK6HEA4.png" alt="github_italic_syntax" />
</p>

### Minimal config

```vim
" VimScript
let g:github_dark_sidebar = 0
```

```lua
-- Lua
require("github-theme").setup({
  dark_sidebar = false,
  -- other config
})
```

<p align="center">
  <img src="https://imgur.com/TyaLR4n.png" alt="github_minimal" />
</p>

### Telescope

<p align="center">
  <img src="https://imgur.com/vVFjJad.png" alt="github_telescope" />
</p>

## Contributing

Check [CONTRIBUTING.md](./CONTRIBUTING.md), any suggestions for features and contributions to the continuing code masterelopment can be made via the issue tracker or code contributions via a `Fork` & `Pull requests`.

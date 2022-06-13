![github-nvim-theme](https://imgur.com/S6SlCiV.png)

[![Linting](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml/badge.svg)](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml)
[![Twitter](https://img.shields.io/badge/Notifications-twitter-blue)](https://twitter.com/projekt0n)

**Support our work with $1 or more on GitHub Sponsors.**

## Features

- Supports the latest Neovim 0.5 features like TreeSitter and LSP
- Minimal inactive statusline (only work with **Vim's Default StatusLine**)
- Vim terminal colors
- Darker background for sidebar-like windows
- Color configs for [Alacritty](https://github.com/alacritty/alacritty),
  [Foot](https://codeberg.org/dnkl/foot),
  [Konsole](https://konsole.kde.org/),
  [Windows Terminal](https://github.com/microsoft/terminal),
  [Xresources](https://wiki.archlinux.org/title/x_resources),
  [iTerm2](https://iterm2.com/),
  [kitty](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include)
  and [tmux](https://github.com/tmux/tmux/wiki)
- Most elegant [**lualine** theme](./LUALINE.md#screenshots)

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

| Option                   | Default    | Description                                                                                                                                     |
| ------------------------ | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| colors                   | `{}`       | You can override specific color groups to use other groups or a hex color                                                                       |
| comment_style            | `italic`   | Highlight style for comments (check `:help highlight-args` for options)                                                                         |
| dark_float               | `false`    | Float windows like the lsp diagnostics windows get a darker background.                                                                         |
| dark_sidebar             | `true`     | Sidebar like windows like `NvimTree` get a darker background                                                                                    |
| dev                      | `false`    | Developer Mode.                                                                                                                                 |
| function_style           | `NONE`     | Highlight style for functions (check `:help highlight-args` for options)                                                                        |
| hide_end_of_buffer       | `true`     | Enabling this option, will hide filler lines (~) after the end of the buffer                                                                    |
| hide_inactive_statusline | `true`     | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine**. |
| keyword_style            | `italic`   | Highlight style for keywords (check `:help highlight-args` for options)                                                                         |
| msg_area_style           | `NONE`     | Highlight style for messages and cmdline (check `:help highlight-args` for options)                                                             |
| overrides                | `function` | Override specific highlight groups. The function accpet colors as argument. You can also add a non-exists highlight by enabling the `dev` mode. |
| sidebars                 | `{}`       | Set a darker background on sidebar-like windows. For example: `{"qf", "vista_kind", "terminal", "packer"}`                                      |
| theme_style              | `dark`     | Set theme variant (options: `dark`/`dimmed`/`dark_default`/`dark_colorblind`/`light`/`light_default`/`light_colorblind`)                        |
| transparent              | `false`    | Enable this to disable setting the background color                                                                                             |
| variable_style           | `NONE`     | Highlight style for variables and identifiers (check `:help highlight-args` for options)                                                        |

### Using `vim`

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

### Using `lua`

```lua
-- Example config in Lua
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})
```

### Lualine Support

**Note:** `hide_inactive_statusline` option is deprecated for lualine. That means it does not force the underline
style to StatusLineNC highlight.

Installation docs and screenshots at [LUALINE.md](./LUALINE.md).

## Terminal Themes

> To generate the configs `make terminal` or `:luafile lua/github-theme/terminal/init.lua`

Extra color configs for **Alacritty**, **Foot**, **Konsole**, **Windows Terminal**, **Xresources**, **iTerm**,
**kitty**, and **tmux** can be found in [terminal](terminal/) directory. To use them, refer to their respective
documentation.

- Alacritty - [terminal/alacritty](./terminal/alacritty)
- Foot - [terminal/foot](./terminal/foot)
- Konsole - [terminal/konsole](./terminal/konsole)
- Windows Terminal - [terminal/windows_terminal](./terminal/windows_terminal)
- Xresources - [terminal/xresources](./terminal/xresources)
- iTerm - [terminal/iterm](./terminal/iterm)
- kitty - [terminal/kitty](./terminal/kitty)
- tmux - [terminal/tmux](./terminal/tmux)

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## Plugin Support

[Builtin lsp diagnostics](https://neovim.io/doc/user/lsp.html) ·
[dense-analysis/ale](https://github.com/dense-analysis/ale) ·
[projekt0n/circles.nvim](https://github.com/projekt0n/circles.nvim) ·
[neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) ·
[glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim) ·
[sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) ·
[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) ·
[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) ·
[folke/lsp-trouble.nvim](https://github.com/folke/lsp-trouble.nvim) ·
[glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) ·
[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) ·
[TimUntersberger/neogit](https://github.com/TimUntersberger/neogit) ·
[akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) ·
[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) ·
[hrsh7th/nvim-compe](https://github.com/hrsh7th/nvim-compe) ·
[rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify) ·
[kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) ·
[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) ·
[nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) ·
[kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) ·
[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) ·
[airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter) ·
[folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Screenshots

- Font: [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- Terminal: [kitty](https://sw.kovidgoyal.net/kitty)
- Icon: [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- StatusLine: **Default**. [config](https://github.com/ful1e5/dotfiles/blob/a2777f85b104622dd82f4adfc6ad032e3ff074bf/nvim/.config/nvim/lua/options.lua#L19-L30)
- dotfiles: [ful1e5/dotfiles/nvim](https://github.com/ful1e5/dotfiles/tree/main/nvim/.config/nvim)

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

![github_dark](https://imgur.com/XWxKWc8.png)

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

![github_dimmed](https://imgur.com/lMk4ifs.png)

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

![github_dark_default](https://imgur.com/ZfZcBGN.png)

#### Dark Colorblind (Beta)

```vim
" VimScript
colorscheme github_dark_colorblind
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "dark_colorblind",
  -- other config
})
```

![github_dark_colorblind](https://imgur.com/OIXgRL4.png)

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

![github_light](https://imgur.com/OPwBDI4.png)

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

![github_light_default](https://imgur.com/r9uPo5B.png)

#### Light Colorblind (Beta)

```vim
" VimScript
colorscheme github_light_colorblind
```

```lua
-- Lua
require("github-theme").setup({
  theme_style = "light_colorblind",
  -- other config
})
```

![github_light_colorblind](https://imgur.com/fL4ZOUg.png)

### Syntax Styles

#### Default

![github_default_syntax](https://imgur.com/V0DsNa0.png)

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

![github_normal_syntax](https://imgur.com/aRDXkWp.png)

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

![github_italic_syntax](https://imgur.com/5wr3dyQ.png)

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

![github_minimal](https://imgur.com/rAsEukW.png)

### Telescope

![github_telescope](https://imgur.com/XX7tixL.png)

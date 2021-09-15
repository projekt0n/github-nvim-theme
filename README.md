<p align="center">
  <img src="https://imgur.com/jP33Wgo.png" alt="github-nvim-theme" />
</p>

### Status

[![Linting](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml/badge.svg)](https://github.com/projekt0n/github-nvim-theme/actions/workflows/lint.yml)
[![Twitter](https://img.shields.io/badge/twitter-projekt0n-blue)](https://twitter.com/projekt0n)

## Features

- supports the latest Neovim 0.5 features like TreeSitter and LSP
- minimal inactive statusline
- vim terminal colors
- darker background for sidebar-like windows
- color configs for [kitty](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include), [iTerm2](https://iterm2.com/), [Konsole](https://konsole.kde.org/) and [Alacritty](https://github.com/alacritty/alacritty)
- dynamic **lualine** theme

## Terminal Themes (Extras)

> To generate the configs `make extra` or `:luafile lua/github-theme/extra/init.lua`

Extra color configs for **kitty**, **iTerm**, **Konsole** and **Alacritty** can be found in [extras](extras/) directory. To use them, refer to their respective documentation.

### Plugin Support

- [ALE](https://github.com/dense-analysis/ale)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [which-key.nvim](https://github.com/folke/which-key.nvim/)

## Requirements

- Neovim >= 0.5.0

## Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.2' }
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use {"projekt0n/github-nvim-theme", tag = "v0.0.2"}
```

## Usage

Enable the colorscheme:

```vim
" Vim Script
lua require('github-theme').setup()
```

```lua
-- Lua
require('github-theme').setup()
```

To enable the `github` theme for `Lualine`, simply specify it in your lualine settings:

> Set `lualine` configuration **before** `github-theme`.

```lua
require('lualine').setup {
  options = {
    theme = 'github',
    -- For round icons (require Nerd-Font)
    -- section_separators = {"", ""},
    -- component_separators = {"", ""},
    -- ... your lualine config
  }
}
```

## Configuration

| Option                 | Default  | Description                                                                                                                                                     |
| ---------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| themeStyle             | `dark`   | Set theme variant (options: `dark`/`dimmed`/`light`)                                                                                                            |
| commentStyle           | `italic` | Highlight style for comments (check `:help highlight-args` for options)                                                                                         |
| keywordStyle           | `italic` | Highlight style for keywords (check `:help highlight-args` for options)                                                                                         |
| functionStyle          | `NONE`   | Highlight style for functions (check `:help highlight-args` for options)                                                                                        |
| variableStyle          | `NONE`   | Highlight style for variables and identifiers (check `:help highlight-args` for options)                                                                        |
| msgAreaStyle           | `NONE`   | Highlight style for messages and cmdline (check `:help highlight-args` for options)                                                                             |
| transparent            | `false`  | Enable this to disable setting the background color                                                                                                             |
| hideEndOfBuffer        | `true`   | Enabling this option, will hide filler lines (~) after the end of the buffer                                                                                    |
| hideInactiveStatusline | `false`  | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**. |
| sidebars               | `{}`     | Set a darker background on sidebar-like windows. For example: `{"qf", "vista_kind", "terminal", "packer"}`                                                      |
| darkSidebar            | `true`   | Sidebar like windows like `NvimTree` get a darker background                                                                                                    |
| darkFloat              | `true`   | Float windows like the lsp diagnostics windows get a darker background.                                                                                         |
| colors                 | `{}`     | You can override specific color groups to use other groups or a hex color                                                                                       |

```lua
-- Example config in Lua
require("github-theme").setup({
  functionStyle = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"}
})
```

```vim
" Example config in VimScript
lua << EOF
require("github-theme").setup({
  functionStyle = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"}
})
EOF
```

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## Reference

- [monsonjeremy/onedark.nvim](https://github.com/monsonjeremy/onedark.nvim)
- [primer/github-vscode-theme](https://github.com/primer/github-vscode-theme)

## 📺 Screenshot

### Dark

```lua
require("github-theme").setup({
  themeStyle = "dark",
  -- ... your github-theme config
})
```

<p align="center">
    <img src="https://imgur.com/W5KOVl9.png" alt="github-dark-theme" />
</p>

### Dimmed

```lua
require("github-theme").setup({
  themeStyle = "dimmed",
  -- ... your github-theme config
})
```

<p align="center">
    <img src="https://imgur.com/4vyzl9p.png" alt="github-dimmed-theme" />
</p>

### Light

```lua
require("github-theme").setup({
  themeStyle = "light",
  -- ... your github-theme config
})
```

<p align="center">
  <img src="https://imgur.com/WoHO2KJ.png" alt="github-light-theme" />
</p>

### Default

<p align="center">
  <img src="https://imgur.com/yk9rD0p.png" alt="Default fonts" />
</p>

### Normal

```lua
require("github-theme").setup({
  commentStyle = "NONE",
  keywordStyle = "NONE",
  functionStyle = "NONE",
  variableStyle = "NONE"
  -- ... your github-theme config
})
```

<p align="center">
  <img src="https://imgur.com/wM8GZJX.png" alt="Normal fonts" />
</p>

### Italic

```lua
require("github-theme").setup({
  commentStyle = "italic",
  keywordStyle = "italic",
  functionStyle = "italic",
  variableStyle = "italic"
  -- ... your github-theme config
})
```

<p align="center">
  <img src="https://imgur.com/B93ytVb.png" alt="Italic fonts" />
</p>

### Minimal

```lua
require("github-theme").setup({
  hideInactiveStatusline = true,
  darkSidebar = false,
  darkFloat = true
  -- ... your github-theme config
})
```

<p align="center">
  <img src="https://imgur.com/rHOoyJP.png" alt="Minimal" />
</p>

### Telescope

<p align="center">
  <img src="https://imgur.com/TjoW19w.png" alt="Telescope plugin" />
</p>

## Useful Links

- Terminal: [kitty](https://sw.kovidgoyal.net/kitty)
- Font: [Ubuntu Mono](https://design.ubuntu.com/font/)
- config: [dotfiles](https://github.com/ful1e5/dotfiles)

<!-- Ninja  -->
<p align="center">
  <h3 align="center">|| || ||</h1>
</p>

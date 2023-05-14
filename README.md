![github-nvim-theme](https://imgur.com/S6SlCiV.png)

## Notices

<!-- If you're interested, you can learn more about "sponsor-spotlight" on
 https://dev.to/ful1e5/lets-give-recognition-to-those-supporting-our-work-on-github-sponsors-b00 -->

![shoutout-sponsors](https://sponsor-spotlight.vercel.app/sponsor?login=ful1e5)

Subscribe to this [discussion](https://github.com/projekt0n/github-nvim-theme/discussions/198)
or `:h github-theme-changelog` to receive updates on breaking changes and deprecations.

Fix grammar and make it clear:

- **2022-05-14**: This theme was major refactored with changes to Neovim support and
  codebase, heavily inspired by [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim).
  Credit goes to [EdenEast](https://github.com/EdenEast). For older Neovim versions, use the
  [0.0.x](https://github.com/projekt0n/github-nvim-theme/tree/0.0.x) branch.
- **2022-08-03**: Terminal and other themes have been moved to
  **[github-theme-contrib](https://github.com/projekt0n/github-theme-contrib)**
  git repository and related code have been removed from this repository.

## Features

- Supports the latest Neovim>=0.5 features like Treesitter and LSP
- Resembles GitHub's VSCode themes and follows [primer design guidelines](https://primer.style/primitives/storybook)
- Has Github's colorblind themes
- Support for multiple [plugins](#supported-plugins) and [status lines](#status-lines)
  - And many others should "just work"!
- Minimal inactive Vim's Default statusline
- Vim terminal colors
- Darker background for sidebar-like windows
- Highly configurable with template overriding
- Most elegant lualine theme

## Requirements

- Neovim >= 0.8.0 (for older version use [0.0.x](https://github.com/projekt0n/github-nvim-theme/tree/0.0.x) branch)
- True color support
- Undercurl terminal support (optional)

> Note for MacOS: The default `terminal` does not support `true color`. Use either `Iterm2` or [another] terminal that
> supports true color.

## Installation

Install the theme with your preferred package manager:

Install with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'projekt0n/github-nvim-theme'
```

Or with [dein](https://github.com/Shougo/dein.vim):

```vim
call dein#add('projekt0n/github-nvim-theme')
```

Or with [minpac](https://github.com/k-takata/minpac):

```vim
call minpac#add('projekt0n/github-nvim-theme')
```

Or with [Packer.nvim](https://github.com/wbthomason/packer.nvim):

Add this in your `init.lua` or `plugins.lua`

```lua
-- Install without configuration
use ({ 'projekt0n/github-nvim-theme' })

-- Or with configuration
use({
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark')
  end
})
```

Or with [lazy.nvim](https://github.com/folke/lazy.nvim):

Add this in your `init.lua` or `plugins.lua`

```lua
-- Install without configuration
{ 'projekt0n/github-nvim-theme' }

-- Or with configuration
{
  'projekt0n/github-nvim-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark')
  end,
}
```

## Usage

Simply set the colorscheme with the builtin command `:colorscheme`

```vim
colorscheme github_dark
```

```lua
vim.cmd("colorscheme github_dark")
```

## Configuration

There is no need to call `setup` if you don't want to change the default options and settings.

Fix comments:

```lua
-- Default config
require('github-theme').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. '/github-theme',
    compile_file_suffix = '_compiled', -- Compiled file suffix
    hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
    hide_nc_statusline = true, -- Override the underline style for non-active statuslines
    transparent = false,       -- Disable setting background
    terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,      -- Non focused panes set to alternative background
    module_default = true,     -- Default enable value for modules
    styles = {                 -- Style to be applied to different syntax groups
      comments = 'italic',     -- Value is any valid attr-list value `:help attr-list`
      functions = 'NONE',
      keywords = 'italic',
      variables = 'NONE',
      conditionals = 'NONE',
      constants = 'NONE',
      numbers = 'NONE',
      operators = 'NONE',
      strings = 'NONE',
      types = 'NONE',
    },
    inverse = {                -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    darken = {                 -- Darken floating windows and sidebar-like windows
      floats = false,
      sidebars = {
        enable = true,
        list = {},             -- Apply dark background to specific windows
      },
    },
    modules = {                -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})
```

If you would like to change any of the default options above you only have to define the options that change. If an
option is not present in your options table the default option will be used. For example if changing the styles of
certain syntax is the only desired change then your options table would look like:

```lua
require('github-theme').setup({
  options = {
    styles = {
      comments = "NONE",
      keywords = "NONE",
      types = "italic,bold",
    }
  }
})
```

## Screenshots

- Font:
  [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
- Terminal:
  [kitty](https://sw.kovidgoyal.net/kitty)
- Icon:
  [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- StatusLine: Default
  ([.vimrc](https://github.com/ful1e5/dotfiles/blob/a2777f85b104622dd82f4adfc6ad032e3ff074bf/nvim/.config/nvim/lua/options.lua#L19-L30))
- dotfiles:
  [ful1e5/dotfiles/nvim](https://github.com/ful1e5/dotfiles/tree/main/nvim/.config/nvim)

### Themes

#### Github Dark

```lua
vim.cmd('colorscheme github_dark')
```

![github_dark](https://imgur.com/XWxKWc8.png)

#### Github Dark Dimmed

```lua
vim.cmd('colorscheme github_dark_dimmed')
```

![github_dark_dimmed](https://imgur.com/lMk4ifs.png)

#### Github Dark Default

```lua
vim.cmd('colorscheme github_dark_default')
```

![github_dark_default](https://imgur.com/ZfZcBGN.png)

#### Github Dark Colorblind (Beta)

```lua
vim.cmd('colorscheme github_dark_colorblind')
```

![github_dark_colorblind](https://imgur.com/OIXgRL4.png)

#### Github Light

```lua
vim.cmd('colorscheme github_light')
```

![github_light](https://imgur.com/OPwBDI4.png)

#### Github Light Default

```lua
vim.cmd('colorscheme github_light_default')
```

![github_light_default](https://imgur.com/r9uPo5B.png)

#### Github Light Colorblind (Beta)

```lua
vim.cmd('colorscheme github_light_colorblind')
```

![github_light_colorblind](https://imgur.com/fL4ZOUg.png)

### Syntax Styles

#### Default

![github_default_syntax](https://imgur.com/V0DsNa0.png)

#### Normal

```lua
require("github-theme").setup({
  options = {
    styles = {
      comments = "NONE",
      functions = "NONE",
      keywords = "NONE",
      variables = "NONE"
    }
  },
  -- ...
})
```

![github_normal_syntax](https://imgur.com/aRDXkWp.png)

#### Italic

```lua
require("github-theme").setup({
  options = {
    styles = {
      comments = "italic",
      functions = "italic",
      keywords = "italic",
      variables = "italic"
    }
  },
  -- ...
})
```

![github_italic_syntax](https://imgur.com/5wr3dyQ.png)

### Minimal config

```lua
require('github-theme').setup({
  options = {
    darken = {
      sidebars = {
        enable = true,
      },
      -- ...
    },
    -- ...
  },
  -- ...
})

vim.cmd('colorscheme github_dark')
```

![github_minimal](https://imgur.com/rAsEukW.png)

### Telescope

![github_telescope](https://imgur.com/XX7tixL.png)

## Supported Plugins

- [Builtin lsp diagnostics](https://neovim.io/doc/user/lsp.html)
- [ale](https://github.com/dense-analysis/ale)
- [circles.nvim](https://github.com/projekt0n/circles.nvim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [diffchar.vim](https://github.com/rickhowe/diffchar.vim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [fsread.nvim](https://github.com/nullchilly/fsread.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lsp-trouble.nvim](https://github.com/folke/lsp-trouble.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neogit](https://github.com/TimUntersberger/neogit)
- [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## Status lines

### Lualine

Lualine checks the value of `vim.g.colors_name` (set when using `:colorscheme` command) to determine the theme to load.
Set your colorscheme before calling setup.

```lua
vim.cmd("colorscheme github_dark")
require('lualine').setup({ ... })
```

Screenshots at [LUALINE.md](./LUALINE.md).

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```bash
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## Copying

This project is released under the terms of the MIT license.
See [LICENCE](./LICENSE) for more information or see
[opensource.org](https://opensource.org/licenses/MIT)

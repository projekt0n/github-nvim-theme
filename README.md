![github-nvim-theme](https://imgur.com/S6SlCiV.png)

## Notices

<!-- If you're interested, you can learn more about "sponsor-spotlight" on
 https://dev.to/ful1e5/lets-give-recognition-to-those-supporting-our-work-on-github-sponsors-b00 -->

![shoutout-sponsors](https://sponsor-spotlight.vercel.app/sponsor?login=ful1e5)

> **Note**
> All features and bug fixes are on hold while we focus on a refactor of the theme.
> If you would like to be involved in the
> [discussion](https://github.com/projekt0n/github-nvim-theme/discussions/226)
> or have input to share, please join us as soon as possible. Thank you for your understanding.

Subscribe to this [discussion](https://github.com/projekt0n/github-nvim-theme/discussions/198)
or `:h github-theme-changelog` to receive updates on breaking changes and deprecations.

- **2022-08-03**: Terminal and other themes have been moved to
  **[github-theme-contrib](https://github.com/projekt0n/github-theme-contrib)**
  git repository and related code have been removed from this repository.

## Requirements

- Neovim >= 0.5.0

## Installation

> **Warning**
> Use the latest release [tag](https://github.com/projekt0n/github-nvim-theme/releases/tag/v0.0.7) or
> [0.0.x](https://github.com/projekt0n/github-nvim-theme/tree/0.0.x) branch for updates, not the main branch.

Install the theme with your preferred package manager:

Install with [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }
" or                                { 'branch': '0.0.x' }
```

Or with [dein](https://github.com/Shougo/dein.vim):

```vim
call dein#add('projekt0n/github-nvim-theme', { 'rev': 'v0.0.7' })
" or                                         { 'rev': '0.0.x' }
```

Or with [minpac](https://github.com/k-takata/minpac):

```vim
call minpac#add('projekt0n/github-nvim-theme', { 'rev': 'v0.0.7' })
" or                                           { 'rev': '0.0.x' }
```

Or with [Packer.nvim](https://github.com/wbthomason/packer.nvim):

Add this in your `init.lua` or `plugins.lua`

```lua
-- Install without configuration
use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
-- or                                 branch = '0.0.x'

-- Or with configuration
use({
  'projekt0n/github-nvim-theme', tag = 'v0.0.7',
-- or                            branch = '0.0.x'
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
{ 'projekt0n/github-nvim-theme', version = 'v0.0.7' }
-- or                                 branch = '0.0.x'

-- Or with configuration
{
  'projekt0n/github-nvim-theme', version = 'v0.0.7',
-- or                            branch = '0.0.x'
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark')
  end
}
```

## Usage

Setting the colorscheme:

```lua
require('github-theme').setup()
```

Enable the colorscheme:

```lua
vim.cmd('colorscheme github_dark')
```

## Configuration

```lua
-- Default config
require('github-theme').setup({
  options = {
    compile_file_suffix = '_compiled',
    compile_path = '<neovim-cache-dir>/github-theme',
    hide_end_of_buffer = true,
    hide_nc_statusline = true,
    terminal_colors = true,
    transparent = false,
    module_default = true,
    styles = {
      comments = 'italic',
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
    darken = {
      floats = false,
      sidebars = {
        enable = true,
        list = {},
      },
    },
    modules = {
      coc = {
        background = true,
      },
      diagnostic = {
        -- This is linked to so much that is needs to be enabled. This is here primarily
        -- for the extra options that can be added with modules
        enable = true,
        background = false,
      },
      native_lsp = {
        enable = true,
        background = true,
      },
      treesitter = true,
      lsp_semantic_tokens = true,
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})
```

### Overriding `specs` and `groups` Example:

```lua
require('github-theme').setup({
  specs = {
    -- Change the color of only the 'github_dark' theme's 'hint' color to magenta and make the 'error' color a dim red.
    github_dark = {
      diag = {
        error = '#660000',
        hint = 'magenta.base',
      },
    },
    -- Change the "hint" color to the "orange" color, and make the "error" color bright red.
    all = {
      diag = {
        error = '#ff0000',
        hint = 'orange',
      },
    },
  },

  -- Overwrite the highlight groups for all colorschemes
  groups = {
    all = {
      htmlTag = { fg = 'palette.red', bg = '#282c34', sp = 'diag.hint', style = 'underline,bold' },
      DiagnosticHint = { link = 'LspDiagnosticsDefaultHint' },
      -- this will remove the highlight groups
      TSField = {},
    },
  },
})
```

## Features

- Supports the latest Neovim>=0.5 features like TreeSitter and LSP
- Minimal inactive statusline (only work with Vim's Default StatusLine)
- Vim terminal colors
- Darker background for sidebar-like windows
- Most elegant lualine theme
- Plugin Support
  [Builtin lsp diagnostics](https://neovim.io/doc/user/lsp.html),
  [ale](https://github.com/dense-analysis/ale),
  [circles.nvim](https://github.com/projekt0n/circles.nvim),
  [coc.nvim](https://github.com/neoclide/coc.nvim),
  [dap-ui](https://github.com/rcarriga/nvim-dap-ui),
  [dashboard-nvim](https://github.com/glepnir/dashboard-nvim),
  [diffchar.vim](https://github.com/rickhowe/diffchar.vim),
  [diffview.nvim](https://github.com/sindrets/diffview.nvim),
  [fidget.nvim](https://github.com/j-hui/fidget.nvim),
  [fsread.nvim](https://github.com/nullchilly/fsread.nvim),
  [fzf-lua](https://github.com/ibhagwan/fzf-lua),
  [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim),
  [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim),
  [lsp-trouble.nvim](https://github.com/folke/lsp-trouble.nvim),
  [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim),
  [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim),
  [mini.nvim](https://github.com/echasnovski/mini.nvim),
  [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim),
  [neogit](https://github.com/TimUntersberger/neogit),
  [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua),
  [nvim-cmp](https://github.com/hrsh7th/nvim-cmp),
  [nvim-compe](https://github.com/hrsh7th/nvim-compe),
  [nvim-notify](https://github.com/rcarriga/nvim-notify),
  [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua),
  [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context),
  [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
  [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons),
  [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim),
  [vim-gitgutter](https://github.com/airblade/vim-gitgutter), and
  [which-key.nvim](https://github.com/folke/which-key.nvim)

### Lualine Support

Installation docs and screenshots at [LUALINE.md](./LUALINE.md).

## Terminal Themes

Moved to **[projekt0n/github-theme-contrib](https://github.com/projekt0n/github-theme-contrib)**
git repository

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```bash
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
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

### Theme Styles

#### Dark

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_dark')
```

![github_dark](https://imgur.com/XWxKWc8.png)

#### Dimmed

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_dimmed')
```

![github_dimmed](https://imgur.com/lMk4ifs.png)

#### Dark Default

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_dark_default')
```

![github_dark_default](https://imgur.com/ZfZcBGN.png)

#### Dark Colorblind (Beta)

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_dark_colorblind')
```

![github_dark_colorblind](https://imgur.com/OIXgRL4.png)

#### Light

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_light')
```

![github_light](https://imgur.com/OPwBDI4.png)

#### Light Default

```lua
require("github-theme").setup({
  -- ...
})

vim.cmd('colorscheme github_light_default')
```

![github_light_default](https://imgur.com/r9uPo5B.png)

#### Light Colorblind (Beta)

```lua
require("github-theme").setup({
  -- ...
})

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

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## Copying

This project is released under the terms of the MIT license.
See [LICENCE](./LICENSE) for more information or see
[opensource.org](https://opensource.org/licenses/MIT)

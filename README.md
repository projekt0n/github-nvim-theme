![github-nvim-theme](https://github.com/projekt0n/github-nvim-theme/assets/24286590/d687ee93-43e0-46a5-a69f-a5a9d260c704)

[![Neovim](https://github.com/projekt0n/github-nvim-theme/actions/workflows/neovim.yml/badge.svg)](https://github.com/projekt0n/github-nvim-theme/actions/workflows/neovim.yml)
[![Tests](https://github.com/projekt0n/github-nvim-theme/actions/workflows/test.yml/badge.svg)](https://github.com/projekt0n/github-nvim-theme/actions/workflows/test.yml)

## Notices

> [!WARNING]
> If you customize or configure colors, or if you upgrade the colorscheme and notice that it's not affecting the appearance, please run the `:GithubThemeCompile` command to compile the colorscheme. We are actively addressing this issue and appreciate your patience.

<!-- If you're interested, you can learn more about 'sponsor-spotlight' on
 https://dev.to/ful1e5/lets-give-recognition-to-those-supporting-our-work-on-github-sponsors-b00 -->

![shoutout-sponsors](https://sponsor-spotlight.vercel.app/sponsor?login=ful1e5)

Subscribe to this [discussion](https://github.com/projekt0n/github-nvim-theme/discussions/198)
or `:h github-theme-changelog` to receive updates on breaking changes and deprecations.

-   **2023-12-02**: Reimplemented the `*_default` colorschemes, previously deprecated in the
    [changelog-23042023](https://github.com/projekt0n/github-nvim-theme/discussions/198#discussioncomment-5700014)
-   **2023-05-14**: This theme was major refactored with changes to Neovim support and
    codebase, heavily inspired by [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim).
    Credit goes to [EdenEast](https://github.com/EdenEast). For older Neovim versions, use the
    [0.0.x](https://github.com/projekt0n/github-nvim-theme/tree/0.0.x) branch.
-   **2022-08-03**: Terminal and other themes have been moved to
    **[github-theme-contrib](https://github.com/projekt0n/github-theme-contrib)**
    git repository and related code have been removed from this repository.

## Supported Colorschemes & Comparisons

| github-nvim-theme          | github-vscode-theme            | Github Web UI                   | Primer              |
| :------------------------- | :----------------------------- | :------------------------------ | :------------------ |
| github_dark                | Github Dark                    | -                               | -                   |
| github_light               | Github Light                   | -                               | -                   |
| github_dark_dimmed         | Github Dark Dimmed             | Dark dimmed                     | dark_dimmed         |
| github_dark_default        | Github Dark Default            | Dark default                    | dark                |
| github_light_default       | Github Light Default           | Light default                   | light               |
| github_dark_high_contrast  | Github Dark High Contrast      | Dark high contrast              | dark_high_contrast  |
| github_light_high_contrast | Github Light High Contrast     | Light high contrast             | light_high_contrast |
| github_dark_colorblind     | Github Dark Colorblind (Beta)  | Dark Protanopia & Deuteranopia  | dark_colorblind     |
| github_light_colorblind    | Github Light Colorblind (Beta) | Light Protanopia & Deuteranopia | light_colorblind    |
| github_dark_tritanopia     | -                              | Dark Tritanopia                 | dark_tritanopia     |
| github_light_tritanopia    | -                              | Light Tritanopia                | light_tritanopia    |

## Features

-   Supports the latest Neovim>=0.5 features like Treesitter and LSP
-   Resembles GitHub's VSCode themes and follows [primer design guidelines](https://primer.style/primitives/storybook)
-   Has Github's colorblind themes
-   Support for multiple [plugins](#supported-plugins) and [status lines](#status-lines)
    -   And many others should 'just work'!
-   Minimal inactive Vim's Default statusline
-   Vim terminal colors
-   Darker background for sidebar-like windows
-   Highly configurable with template overriding
-   Most elegant lualine theme
-   [Compile](#compile) user's configuration for fast startup times
-   Export [Color](#color-lib) library utility
-   [Interactive](#interactive) live config re-loading

## Requirements

-   Neovim >= 0.8.0 (for older version use [0.0.x](https://github.com/projekt0n/github-nvim-theme/tree/0.0.x) branch)
-   True color support
-   Undercurl terminal support (optional)

> [!NOTE]
> On macOS, the default terminal (i.e. `Terminal.app`) does not support ***true color*** 24-bit RGB colors. Use either `Iterm2` or [another] terminal which supports ***true color***.

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
{ 'projekt0n/github-nvim-theme', name = 'github-theme' }

-- Or with configuration
{
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
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
vim.cmd('colorscheme github_dark')
```

## Screenshots

-   Font:
    [Iosevka Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)
-   Terminal:
    [kitty](https://sw.kovidgoyal.net/kitty)
-   Icon:
    [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
-   StatusLine: Default
    ([.vimrc](https://github.com/ful1e5/dotfiles/blob/main/nvim/.config/nvim/lua/ful1e5/statusline.lua))
-   dotfiles:
    [ful1e5/dotfiles/nvim](https://github.com/ful1e5/dotfiles/tree/main/nvim/.config/nvim)

### Github Dark

```lua
vim.cmd('colorscheme github_dark')
```

![github_dark](https://github.com/projekt0n/github-nvim-theme/assets/24286590/0e6525ef-8444-4097-855c-c2a9257a6a2f)

### Github Dark Default

```lua
vim.cmd('colorscheme github_dark_default')
```

![github_dark_default](https://github.com/projekt0n/github-nvim-theme/assets/24286590/6df16271-20bc-4fd4-90df-a7477b95f3f8)

### Github Dark Dimmed

```lua
vim.cmd('colorscheme github_dark_dimmed')
```

![github_dark_dimmed](https://github.com/projekt0n/github-nvim-theme/assets/24286590/1b4ac935-ddc8-4bfe-8c01-bccb8bc954f6)

### Github Dark High Contrast

```lua
vim.cmd('colorscheme github_dark_high_contrast')
```

![github_dark_high_contrast](https://github.com/projekt0n/github-nvim-theme/assets/24286590/6df16271-20bc-4fd4-90df-a7477b95f3f8)

### Github Dark Colorblind (Beta)

```lua
vim.cmd('colorscheme github_dark_colorblind')
```

![github_dark_colorblind](https://github.com/projekt0n/github-nvim-theme/assets/24286590/8f69c24b-13d6-4816-90a2-97578f4fd079)

### Github Dark Tritanopia (Beta)

```lua
vim.cmd('colorscheme github_dark_tritanopia')
```

![github_dark_tritanopia](https://github.com/projekt0n/github-nvim-theme/assets/24286590/fb9a566c-b111-46eb-97b2-4b076e89f767)

### Github Light

```lua
vim.cmd('colorscheme github_light')
```

![github_light](https://github.com/projekt0n/github-nvim-theme/assets/24286590/11c6606a-28e4-4126-b687-c84a403bbc57)

### Github Light Default

```lua
vim.cmd('colorscheme github_light_default')
```

![github_light_default](https://github.com/projekt0n/github-nvim-theme/assets/24286590/1a7483e1-b008-42e0-8fab-eeb75e89a3a7)

### Github Light High Contrast

```lua
vim.cmd('colorscheme github_light_high_contrast')
```

![github_light_high_contrast](https://github.com/projekt0n/github-nvim-theme/assets/24286590/1a7483e1-b008-42e0-8fab-eeb75e89a3a7)

### Github Light Colorblind (Beta)

```lua
vim.cmd('colorscheme github_light_colorblind')
```

![github_light_colorblind](https://github.com/projekt0n/github-nvim-theme/assets/24286590/e634671c-9344-4a9f-b20d-420bc2f17f93)

### Github Light Tritanopia (Beta)

```lua
vim.cmd('colorscheme github_light_tritanopia')
```

![github_light_tritanopia](https://github.com/projekt0n/github-nvim-theme/assets/24286590/fce194a3-fa1f-4a9d-a20b-56171aeb38e9)

## Configuration

There is no need to call `setup` if you don't want to change the default options and settings.

```lua
-- Default options
require('github-theme').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath('cache') .. '/github-theme',
    compile_file_suffix = '_compiled', -- Compiled file suffix
    hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
    hide_nc_statusline = true, -- Override the underline style for non-active statuslines
    transparent = false,       -- Disable setting bg (make neovim's background transparent)
    terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,      -- Non focused panes set to alternative background
    module_default = true,     -- Default enable value for modules
    styles = {                 -- Style to be applied to different syntax groups
      comments = 'NONE',       -- Value is any valid attr-list value `:help attr-list`
      functions = 'NONE',
      keywords = 'NONE',
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
      floats = true,
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

-- setup must be called before loading
vim.cmd('colorscheme github_dark')
```

If you would like to change any of the default options above, simply specify the options that you'd like to change. Unspecified options will use their default value. For example, if you only wanted to change the styles of certain syntax items:

```lua
require('github-theme').setup({
  options = {
    styles = {
      comments = 'italic',
      keywords = 'bold',
      types = 'italic,bold',
    }
  }
})
```

To see a detailed explanation of Github Theme's config settings consult either the builtin help `:help github-nvim-theme` or
[Usage](./Usage.md).

### Modules

Github Theme's modules store configuration information for various plugins and other neovim modules. To enable a module
either set the module to `true` or if the module has additional configuration information set `enable` to `true`.

By default modules will be enabled. To change this behaviour change `options.module_default` to `false`.

To see a list of modules check, see [Usage](./Usage.md#module) or `:help` for more information.

### Customize palettes and groups

You can change the color `palette` and the highlight `group` of github-theme. Here is a brief example:

```lua
-- Palettes are the base color defines of a colorscheme.
-- You can override these palettes for each colorscheme defined by github-theme.
local palettes = {
  -- Everything defined under `all` will be applied to each style.
  all = {
    -- Each palette defines these colors:
    --   black, gray, blue, green, magenta, pink, red, white, yellow, cyan
    --
    -- These colors have 2 shades: base, and bright

    -- Passing a string sets the base
    red = '#ff0000',
  },
  github_dark = {
    -- Defining multiple shades is done by passing a table
    red = {
      base = '#8e1519',
      bright = '#ee0000',
    },
  },
  github_dark_dimmed = {
    -- A palette also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    bg1 = '#444c56',

    -- sel is different types of selection colors.
    sel0 = '#adbac7', -- Popup bg, visual selection bg
    sel1 = '#22272e', -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = '#636e7b',
  },
}

-- Spec's (specifications) are a mapping of palettes to logical groups that will be
-- used by the groups. Some examples of the groups that specs map would be:
--   - syntax groups (functions, types, keywords, ...)
--   - diagnostic groups (error, warning, info, hints)
--   - git groups (add, removed, changed)
--
-- You can override these just like palettes
local specs = {
  -- As with palettes, the values defined under `all` will be applied to every style.
  all = {
    syntax = {
      -- Specs allow you to define a value using either a color or template. If the string does
      -- start with `#` the string will be used as the path of the palette table. Defining just
      -- a color uses the base version of that color.
      keyword = 'magenta',

      -- Adding either `.bright` will change the value
      conditional = 'magenta.bright',
      number = 'orange',
    },
    git = {
      -- A color define can also be used
      changed = '#ffa261',
    },
  },
  github_dark = {
    syntax = {
      -- As with palettes, a specific style's value will be used over the `all`'s value.
      operator = 'orange',
    },
  },
}

-- Groups are the highlight group definitions. The keys of this table are the name of the highlight
-- groups that will be overridden. The value is a table with the following keys:
--   - fg, bg, style, sp, link,
--
-- Just like `spec` groups support templates. This time the template is based on a spec object.
local groups = {
  -- As with specs and palettes, the values defined under `all` will be applied to every style.
  all = {
    -- If `link` is defined it will be applied over any other values defined
    Whitespace = { link = 'Comment' },

    -- Specs are used for the template. Specs have their palette's as a field that can be accessed
    IncSearch = { bg = 'palette.cyan' },
  },
  github_dark = {
    -- As with specs and palettes, a specific style's value will be used over the `all`'s value.
    PmenuSel = { bg = '#73daca', fg = 'bg0' },
  },
}

require('github-theme').setup({ palettes = palettes, specs = specs, groups = groups })

-- setup must be called before loading
vim.cmd('colorscheme github_dark')
```

To find the list of syntax highlight groups defined for vim use the help `:help group-name` and `:help nvim-treesitter-highlights` for treesitter. If you would also like to see how Github Theme defines these highlight groups you can see [syntax.lua] for vim's syntax and [treesitter.lua] for treesitter. These files list out all all highlight groups and have a comment describing them. Another file to note is [editor.lua] which is the highlight groups responsible for how vim looks (background, cursorline, tabline, etc...).

To get more information check out [Usage](./Usage.md#configuration) or the help file `:help github-nvim-theme` for more detailed information.

[editor.lua]: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/group/editor.lua
[syntax.lua]: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/group/syntax.lua
[treesitter.lua]: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/group/modules/treesitter.lua

### Custom template values

GitHub Theme's `palettes` and `specs` can be extended with your own values. This is useful for users that want to
distinguish a spec value being used for multiple group definitions. This is best understood with an example.

`bg0` is used as the dark alternative background color. This is used in multiple areas (non-current file, status line,
normal float, etc...). If you would like to have the inactive color different then the float / statusline color you can
define your own value in the `specs` table.

```lua
require('github-theme').setup({
  palettes = {
    -- Custom duskfox with black background
    github_dark = {
      bg1 = '#000000', -- Black background
      bg0 = '#1d1d2b', -- Alt backgrounds (floats, statusline, ...)
      bg3 = '#121820', -- 55% darkened from stock
      sel0 = '#131b24', -- 55% darkened from stock
    },
  },
  specs = {
    all = {
      inactive = 'bg0', -- Default value for other styles
    },
    github_dark_dimmed = {
      inactive = '#090909', -- Slightly lighter then black background
    },
  },
  groups = {
    all = {
      NormalNC = { fg = 'fg1', bg = 'inactive' }, -- Non-current windows
    },
  },
})
```

## Api

Github Theme exposes some Api's and utility classes that let you fetch data from Github Theme.

### Palettes

You can get the palettes used by each colorscheme:

```lua
-- Returns a table with each colorscheme and the palette associated with it
local palettes = require('github-theme.palette').load()

-- Returns the palette of the specified colorscheme
local palette = require('github-theme.palette').load('github_dark_dimmed')

print(vim.inspect(palette.red))
-- {
--   base = '#f47067',
--   bright = '#ff938a'
-- }
```

See [Usage](./Usage.md#palette) for more information on palettes.

### Specs

You can get the spec used by each colorscheme:

```lua
-- Returns a table with each colorscheme and the spec associated with it
local specs = require('github-theme.spec').load()

-- Returns the spec of the specified colorscheme
local spec = require('github-theme.spec').load('github_light')

print(vim.inspect(spec.git))
-- {
--   add = '#1a7f37',
--   changed = '#9a6700',
--   conflict = '#bc4c00',
--   ignored = '#6e7781',
--   removed = '#d1242f'
-- }
```

See [Usage](./Usage.md#spec) for more information on specs.

### Color lib

Github Theme uses a color library internally to manipulate colors. You can use this library as well.

```lua
local palette = require('github-theme.palette').load('github_dark')
local Color = require('github-theme.lib.color')

local bg = Color.from_hex(palette.canvas.default)
local red = Color.from_hex('#ff0000')

-- Blend the bg with red. The blend factor is from 0 to 1
-- with 0 being full bg and 1 being full red
local red_bg = bg:blend(red, 0.2)

print(red_bg:to_css())
-- '#592b31'

-- Brighten bg by adding 10 to the value of the color as a hsv
local alt_bg = bg:brighten(10)
print(vim.inspect(alt_bg:to_hsv()))
-- {
--   hue = 212.30769230769,
--   saturation = 21.311475409836,
--   value = 33.921568627451
-- }
```

There are a lot of useful functions to manipulate and work with colors in different color spaces.

See [Usage](./Usage.md#color) for more information on `Color`.

## Compile

Github Theme is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and execution time.

Github Theme pre-computes the result of your configuration and saves the lua bytecode in a cache to be used on next load.
This significantly speeds up Github theme's execution time. Changes to your configuration will be re-computed and cached automatically.

By default Github theme writes the compiled results into the system's `cache` directory. On unix this is
`$XDG_CACHE_HOME/nvim/github-theme` and on windows this is `%localappdata%\\Temp\\nvim\\github-theme`.

Github Theme provides functions to work with the github-theme compiler.

```vim
:GithubThemeCompile " Manually call github-theme compiler to create/update compiled files
```

```lua
require('github-theme').compile() -- lua api version
```

## Interactive

Github Theme makes it easy to make changes to its config and see the results. For this Github Theme exposes the command:

```
GithubThemeInteractive
```

This command will attach an autocmd to the current buffer that executes on `BufferWritePost`. The autocmd will clear Github Theme's internal state and re-source it's config from the newly saved file. It will then reset the colorscheme.

## Supported Plugins

-   [Builtin lsp diagnostics](https://neovim.io/doc/user/lsp.html)
-   [ale](https://github.com/dense-analysis/ale)
-   [circles.nvim](https://github.com/projekt0n/circles.nvim)
-   [coc.nvim](https://github.com/neoclide/coc.nvim)
-   [dap-ui](https://github.com/rcarriga/nvim-dap-ui)
-   [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
-   [diffchar.vim](https://github.com/rickhowe/diffchar.vim)
-   [diffview.nvim](https://github.com/sindrets/diffview.nvim)
-   [fidget.nvim](https://github.com/j-hui/fidget.nvim)
-   [fsread.nvim](https://github.com/nullchilly/fsread.nvim)
-   [fzf-lua](https://github.com/ibhagwan/fzf-lua)
-   [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
-   [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
-   [lsp-trouble.nvim](https://github.com/folke/lsp-trouble.nvim)
-   [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
-   [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
-   [mini.nvim](https://github.com/echasnovski/mini.nvim)
-   [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
-   [neogit](https://github.com/TimUntersberger/neogit)
-   [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
-   [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
-   [nvim-compe](https://github.com/hrsh7th/nvim-compe)
-   [nvim-notify](https://github.com/rcarriga/nvim-notify)
-   [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
-   [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
-   [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
-   [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
-   [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
-   [vim-airline](https://github.com/vim-airline/vim-airline)
-   [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
-   [which-key.nvim](https://github.com/folke/which-key.nvim)

## Status lines

### Lualine

Lualine checks the value of `vim.g.colors_name` (set when using `:colorscheme` command) to determine the theme to load.
Set your colorscheme before calling setup.

```lua
vim.cmd('colorscheme github_dark')
require('lualine').setup({ ... })
```

### Airline

Set your airline colorscheme with `:AirlineThemes` vim command.

## Syntax highlight groups

This section will help you determine what highlight group is being applied to a piece of syntax. These methods
show which highlight group(s) is in use at the current screen position of the cursor (under the cursor).

> [!TIP]
> On Neovim v0.9.0 and later, you can use the builtin command `:Inspect`, or the Lua function `vim.show_pos()`.

#### Treesitter highlighting

If treesitter is the highlighting method for the language in question you can use the command:
`:TSHighlightCapturesUnderCursor`. This command comes from the treesitter [playground] plugin. Make
sure you have this installed as well as [nvim-treesitter].

[playground]: https://github.com/nvim-treesitter/playground#show-treesitter-and-syntax-highlight-groups-under-the-cursor
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter

## Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```bash
# Undercurl
set -g default-terminal '${TERM}'
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)

## Copying

This project is released under the terms of the MIT license.
See [LICENCE](./LICENSE) for more information or see
[opensource.org](https://opensource.org/licenses/MIT)

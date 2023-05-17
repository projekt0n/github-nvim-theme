## Overview

Highly customizable Github's theme for neovim with support for lsp, treesitter and a variety of plugins.
It comes with multiple different themes and with colorblind themes:

- `github_dark`
- `github_dark_colorblind`
- `github_dark_dimmed`
- `github_dark_high_contrast`
- `github_dark_tritanopia`
- `github_dimmed`
- `github_light`
- `github_light_colorblind`
- `github_light_high_contrast`
- `github_light_tritanopia`

## Usage

At it's core github-theme is simply a colorscheme just like any other. If you just want to use the theme out of the box
simply set the colorscheme with the `:colorscheme` command

```vim
:colorscheme github_dark
```

Github theme is built to be customizable. There are four main components that can be customized. These are [option],
[palette], [spec], and [group].

[option]: #option
[palette]: #palette
[spec]: #spec
[group]: #group
[building]: #building

## Configuration

Github Theme allows you to set individual components separately as apposed to using the default `setup` function.

### Setup

The `setup()` function set github theme's config [options][option].

```lua
require('github-theme').setup({
  options ={
    dim_inactive = true,
  }
})
```

### Overrides

The individual components: [palettes][palette], [specs][spec] and [groups][group] can be set separately.

```lua
local override = require('github-theme').override
override.palettes({
  github_dark = {
    red = '#ff0000',
  },
  github_light = {
    comment = '#636e7b',
  },
})
override.specs({
  github_dark = {
    syntax = {
      keyword = 'magenta'
    }
  }
})
override.groups({
  all = {
    IncSearch = { bg = 'palette.cyan' },
  },
})
```

Overrides for [palettes][palette] and [specs][spec] are defined per style. The purpose of overriding these components is
to change colors. Colors are only relevant to a specific style. [Groups][group] on the other hand are not defined per
style. These mainly use the color defined in the [palette] and [spec] objects in order to set values using
[templates](#templates).

### Setup

The setup function is a convince wrapper for the above components. It takes each component as separate keys and calls
the correct init/override function.

```lua
local options = {
  dim_inactive = true,
}
local palettes = {
  github_dark = {
    red = '#ff0000',
  },
  github_light = {
    comment = '#636e7b',
  },
}
local specs = {
  github_dark = {
    syntax = {
      keyword = 'magenta'
    }
  }
}
local groups = {
  all = {
    IncSearch = { bg = 'palette.cyan' },
  },
}
require('github-theme').setup({
  options = options,
  palettes = palettes,
  specs = specs,
  groups = groups,
})
```

## Templates

Templates allow for referencing of other lower level objects in github theme's config. For example instead of setting an
absolute color value, you can refer to a lower object's value instead. The base of github theme is a [palette]. A palette
does not use a template as it is the base that others built off of. [Palettes][palette] are used as the template source
for [spec] objects. [Specs][spec] objects are used as template source for [group] objects.

If a value does not start with `#` symbol it will be treated as the template path. Everything in lua is a table. This
means that `palettes` and `specs` are just lua tables. A template `path` is the keys to index into the table separated by
`.` characters.

Note: If the resulting value of a template is a [shade] then the `base` value will be used.

**Example:**

```lua
-- Specs use palettes as the template source
local specs = {
  github_dark = {
    syntax = {
      -- Value does not start with `#` so is treated as a template.
      -- Since `magenta` is a `shade` object the `base` value will be used.
      keyword = 'magenta',

      -- Adding either `.bright` or `.dim` will change the value
      conditional = 'magenta.bright',
      number = 'orange.dim',
    },
    git = {
      -- A color define can also be used
      changed = '#f4a261',
    }
  }
}

-- Groups use specs as the template source
local groups = {
  all = {
    -- The template path is parsed to [`syntax`, `string`]. This is like calling into a lua table like:
    -- `spec.syntax.string`.
    String = { fg = 'syntax.string' },

    -- If `link` is defined it will be applied over any other values defined
    Whitespace = { link = 'Comment' }

    -- Specs are used for the template. Specs have their palette's as a field that can be accessed
    IncSearch = { bg = 'palette.cyan' },
  },
}

require('github-theme').setup({ specs = specs, groups = groups })
```

## Option

#### options.compile_path {path}

The output directory {path} where the compiled results will be written to. Default:
`vim.fn.stdpath("cache")/github-theme`.

#### options.compile_file_suffix {suffix}

The string appended to the compiled file. Each `style` outputs to its own file. These files will append the {suffix} to
the end of the file. Default: `_compiled`

#### options.hide_end_of_buffer {bool}

A boolean value that, when set, changes the foreground of the `EndOfBuffer` highlight group. This allows you to
use the color of the colorscheme background to mimic the effect of hiding it. Default: `true`.

#### options.hide_nc_statusline {bool}

A boolean value that, when set, hides the `StatusLineNC` highlight group and makes it minimal. Default: `true`.

#### options.transparent {bool}

A boolean value that if set will disable setting the background of `Normal`, `NormalNC` and other highlight groups. This
lets you use the colors of the colorscheme but use the background of your terminal. Default: `false`.

#### options.terminal_colors {bool}

A boolean value that if set will define the terminal colors for the builtin `terminal` (vim.g.terminal*color*\*).
Default: `true`.

#### options.dim_inactive {bool}

A boolean value that if set will set the background of Non current windows to be darker. See `:h hl-NormalNC`.

#### options.module_default {bool}

The default value of a module that has not been overridden in the modules table.

#### options.styles {table}

`styles` is a table that contains a list of syntax components and their corresponding style. These styles can be any
combination of |highlight-args|. The list of syntax components are:

- comments
- conditionals
- constants
- functions
- keywords
- numbers
- operators
- strings
- types
- variables

Example:

```lua
local options = {
  styles = {
    comments = 'italic',
    functions = 'italic,bold',
  }
}
```

#### options.inverse {table}

`inverse` is a table that contains a list of highlight types. If a highlight type is enabled it will inverse the
foreground and background colors instead of applying the normal highlight group. Thees highlight types are:
`match_paren`, `visual`, `search`. For an example if search is enabled instead of highlighting a search term with the
default search color it will inverse the foreground and background colors.

#### options.darken {table}

The `darken` table contains a list of settings for buffer styles. Enabling `floats` allows floating windows to have
a darkened background. Default: `true`.

Another setting is for sidebars, which is configured in the `sidebars` table.

#### options.darken.sidebars {table}

The `sidebars` table contains a list of settings for sidebar-like windows. It has two configurations: `enabled` is
used to assign a darker background to the listed windows, and `list` specifies the windows to be included in the list.

```lua
local options = {
  darken = {
    sidebars = {
      enabled = true,
      list = {'qf', 'netrw'} -- default is {}
    }
  }
}
```

#### options.modules {table}

`modules` store configuration information for various plugins and other neovim modules. A module can either be a boolean
or a table that contains additional configuration for that module. If the value is a table it also has a field called
`enable` that will tell github theme to load it. See [modules] for more information.

By default modules will be enabled. To change this behaviour change `options.module_default` to `false`.

[modules]: #modules

## Palette

A `palette` is the base color definitions of a style. Each style defines its own palette to be used by the other
components. A palette defines base colors, as well as foreground and background shades. Along with the foreground and
background colors a palette also defines other colors such as selection and comment colors.

The base colors are shade table that define a `base`, `bright` color. These base colors are:
`black`, `red`, `green`, `yellow`, `blue`, `magenta`, `cyan`, `white`, `pink`.

| Key     | Description                            |
| ------- | -------------------------------------- |
| black   | Shade Table (Base, Bright)             |
| red     | Shade Table (Base, Bright)             |
| green   | Shade Table (Base, Bright)             |
| yellow  | Shade Table (Base, Bright)             |
| blue    | Shade Table (Base, Bright)             |
| magenta | Shade Table (Base, Bright)             |
| cyan    | Shade Table (Base, Bright)             |
| white   | Shade Table (Base, Bright)             |
| orange  | Orange Color                           |
| pink    | Shade Table (Base, Bright)             |
| comment | Comment color                          |
| bg0     | Darker bg (status line and float)      |
| bg1     | Default bg                             |
| bg2     | Lighter bg (colorcolumn folds)         |
| bg3     | Lighter bg (cursor line)               |
| bg4     | Lighter bg (Conceal)                   |
| fg0     | Lighter fg                             |
| fg1     | Default fg                             |
| fg2     | Darker fg (status line)                |
| fg3     | Darker fg (line numbers, fold columns) |
| sel0    | visual selection bg                    |
| sel1    | Popup sel bg                           |
| sel2    | search bg                              |

## Spec

A `spec` or specification is a mapping of a palette values to a logical group that is used by the [group].

The base of a `spec` is a re-export of the [palette]'s `fg` `bg` and `sel`. The values that are re-exported are:
`bg0`, `bg1`, `bg2`, `bg3`, `bg4`, `fg0`, `fg1`, `fg2`, `fg3`, `sel0`, `sel1`, `sel2`.

#### spec.syntax

The `syntax` table maps [palette] color values to syntax values to be used by the [group].

| Key         | Description                     |
| ----------- | ------------------------------- |
| bracket     | Brackets and Punctuation        |
| builtin0    | Builtin variable                |
| builtin1    | Builtin type                    |
| builtin2    | Builtin const                   |
| comment     | Comment                         |
| conditional | Conditional and loop            |
| const       | Constants, imports and booleans |
| dep         | Deprecated                      |
| field       | Field                           |
| func        | Functions and Titles            |
| ident       | Identifiers                     |
| keyword     | Keywords                        |
| number      | Numbers                         |
| operator    | Operators                       |
| preproc     | PreProc                         |
| regex       | Regex                           |
| statement   | Statements                      |
| string      | Strings                         |
| type        | Types                           |
| variable    | Variables                       |

#### spec.diag

The `diag` table maps [palette] colors to vim diagnostic colors values.
These values are: `error`, `warn`, `info` and `hint`.

#### spec.diag_bg

The `diag_bg` table maps [palette] colors to vim diagnostic background colors.
These values are: `error`, `warn`, `info` and `hint`.

#### spec.diff

The `diff` table maps [palette] colors to vimdiff highlight colors.
These values are: `add`, `delete`, `change` and `text`.

#### spec.git

The `git` table maps [palette] colors to git colors.
These values are: `add`, `removed`, `changed`, `conflict`, and `ignored`.

## Group

A `group` is the definition of a `highlight-group`. The key of the group table is the `highlight-group` that will be
defined, and the table value is the arguments to the |:highlight| command.

| Key   | Help                | Description                                                |
| ----- | ------------------- | ---------------------------------------------------------- |
| fg    | \|highlight-guifg\| | The color value of the foreground of the highlight group   |
| bg    | \|highlight-guibg\| | The color value of the background of the highlight group   |
| sp    | \|highlight-guisp\| | The color for underlines and undercurls                    |
| style | \|highlight-gui\|   | The style of the highlight group. Ex `italic`, `bold`, etc |
| link  | \|highlight-link\|  | Link one `highlight-group` to another                      |

If the value of `link` is present and is not empty, github theme will link the group to the corresponding value.

## Modules

Modules are a way to adding extra information for various plugins or features. This also allows them to be enabled or
disabled. There are two types of modules, `base` modules and `extended` modules. A `base` modules do not have any other
information and are just a `boolean` denoting if it is enabled. An `extended` module is a module that has extra
customization information. It is a table that contains the additional configuration as well as a field called `enable`
to determine if the module is applied.

Current list of modules are:

- cmp
- coc
- dapui
- dashboard
- diagnostic
- diffchar
- fidget
- fzf
- gitgutter
- gitsigns
- indent_blankline
- lsp_trouble
- mini
- native_lsp
- neogit
- neotree
- notify
- nvimtree
- telescope
- treesitter
- treesitter_context
- whichkey

### Neovim specific modules

The following modules are enabled by default only when on neovim, `diagnostic`, `native_lsp`, `treesitter`. These
modules are part of the core neovim experience and are liked to by other modules. This also means that they will still
be enabled when setting `module_default` to `false`.

### Extended modules

#### modules.coc

This module sets highlight groups from `neoclide/coc.nvim`.

| key        | type    | default | description                       |
| ---------- | ------- | ------- | --------------------------------- |
| enable     | boolean | `true`  | Enable the module to be included  |
| background | boolean | `true`  | Set virtual text background color |

#### modules.diagnostic

This module sets highlight groups from `vim.diagnostic`.

| key        | type    | default | description                       |
| ---------- | ------- | ------- | --------------------------------- |
| enable     | boolean | `true`  | Enable the module to be included  |
| background | boolean | `true`  | Set virtual text background color |

#### modules.native_lsp

This module sets highlight groups from neovim's builtin `lsp`.

| key        | type    | default | description                       |
| ---------- | ------- | ------- | --------------------------------- |
| enable     | boolean | `true`  | Enable the module to be included  |
| background | boolean | `true`  | Set virtual text background color |

## Color

Github Theme exposes a color utility library to help with manipulating colors. This library can be required using the
following module:

```lua
local Color = require('github-theme.lib.color')

```

#### color.from_hex({hex})

Create a `Color` object from either a {hex} number or a `css-style` hex string (`"#RRGGBB[AA]"`).

#### color.from_rgba({red}, {green}, {blue}, {alpha})

Create a `Color` object from a `RGBA` value.
The {red}, {green} and {blue} components ranging from `[0,255]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color.from_hsv({hue}, {sat}, {value}, {alpha})

Create a `Color` object from a `HSV` value.
The {hue} is a float ranging `[0,360]`. {sat} and {value} are floats ranging from `[0,100]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color.from_hsl({hue}, {sat}, {lightness}, {alpha})

Create a `Color` object from a `HSL` value.
The {hue} is a float ranging `[0,360]`. {sat} and {lightness} are floats ranging from `[0,100]`.
{alpha} is optional and defaults to `1`. The {alpha} value's is from `[0,1]`.

#### color:to_hex({with_alpha})

Convert a `Color` object to a integer number. If {with_alpha} is true the hex value will be returned with the alpha
value added. This is defaulted to `false`.

#### color:to_css({with_alpha})

Convert a `Color` object to a `css_style` string (`"#RRGGBB[AA]"`). If {with_alpha} is true the hex value will be
returned with the alpha value added. This is defaulted to `false`.

#### color:to_rgba()

Convert a `Color` object to a `RGBA` table. The resulting table will have `red`, `green`, `blue` and `alpha` components
as keys of the table.

#### color:to_hsv()

Convert a `Color` object to a `HSV` table. The resulting table will have `hue`, `saturation` and `value` components as
keys of the table.

#### color:to_hsl()

Convert a `Color` object to a `HSL` table. The resulting table will have `hue`, `saturation` and `lightness` components as
keys of the table.

#### color:blend({other}, {factor})

Returns a new `Color` that is a linear blend between two colors. {other} is the other color to blend. {factor} is the
percentage of the {other} color that will be blended. This percentage is represented `[0,1]` where `0` is no color
blending and `1` is entirely the {other} color.

#### color:shade({factor})

Returns a new `Color` that has been `shaded` by the {factor}. The factor is a precentage from `[-1,1]` where `-1` is black
and `1` is white.

#### color:brighten({value})

Returns a new `Color` with {value} added to the `value` (`hsv`) of the current color. This returns a lighter version of
of the current color if {value} is positive and a darker color is {value} is negative. {value} is Float [-100, 100].

#### color:lighten({value})

Returns a new `Color` with {value} added to the `lightness` (`hsl`) of the current color. This returns a lighter version of
of the current color if {value} is positive and a darker color is {value} is negative. {value} is Float [-100, 100].

#### color:saturate({value})

Returns a new `Color` with {value} added to the `saturation` (`hsv`) of the current color. This returns either a more
or less saturated version depending of +/- v. {value} is Float [-100, 100].

#### color:rotate({value})

Returns a new `Color` with {value} added to the `hue` (`hsv`) of the current color. The resulting value of `hue` will be
wrapped from `[0,360]`, meaning that if the value exceeds `360` it will be wrapped back to `0`.

## Compile

Github Theme is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and
execution time.

Github Theme pre-computes the result of your configuration and saves the lua bytecode in a cache to be used on next load.
This significantly speeds up github theme's execution time. Changes to your configuration will be re-computed and cached
automatically.

By default github-theme writes the compiled results into the system's `cache` directory. On unix this is
`$XDG_CACHE_HOME/nvim/github-theme` and on windows this is `%localappdata%\\Temp\\nvim\\github-theme`.

### Compile commands

#### compile()

Compile github theme settings for each `style` and write compiled file to [compile_path].

#### :GithubThemeCompile

Compile github theme settings for each `style` and write compiled file to [compile_path].

[compile_path]: #compile_path-%7Bpath%7D

## Interactive

Github Theme makes it easy to make changes to its config and see the results. For this github-theme exposes the command:

```
GithubThemeInteractive
```

This command will attach an autocmd to the current buffer that executes on `BufferWritePost`. The
autocmd will clear Github theme's internal state and re-source it's config from the newly saved file. It will then reset the
colorscheme.

There are a few things to note:

- This requires executing `luafile` on the current file. Any syntax errors will throw errors.
- If you are using packer and have Github theme's config in a `config = function() end` block, this will not work as packer
  would require to be re-compiled and the compiled file sourced.

#### :GithubThemeInteractive

Enable Github Theme configuration reloading on buffer save.

local M = {}

function M.get(spec, config, opts)
  -- TODO: Consider refactoring this out once the primitives are finished
  --       being integrated.
  local primitives = require(
    'github-theme.palette.primitives.'
      .. require('github-theme.config').theme
        :gsub('^github_(.-)_default$', '%1')
        :gsub('^github_(.-)$', '%1')
  )

  local pl = primitives.prettylights
  local syn = spec.syntax
  local stl = config.styles
  local P = spec.palette

  ---Clears nvim's default highlighting for a highlight-group and allows
  ---falling-back to another hl-group when multiple highlights/groups are
  ---assigned/stacked at a particular screen position. This is just an empty
  ---table.
  ---
  ---NOTE: assigning this to a group is different from explicitly setting a
  ---group's foreground color to the global/default foreground color. When
  ---multiple highlights are stacked/assigned to the same screen position, this
  ---will allow the other highlights/groups to take effect, whereas explicitly
  ---setting a hl-group's `fg` will not.
  ---
  ---|                           Setting                            | Fallback |
  ---| ------------------------------------------------------------ | -------- |
  ---| `GROUP = FALLBACK_OR_NONE` (i.e. set to this variable) (Lua) |   true   |
  ---| Link to `@none`, `Fg`, or `NONE`                             |   true   |
  ---| `GROUP = { fg = DEFAULT_FG }` (Lua)                          |   false  |
  ---| `hi! clear GROUP` (Vim command)                              |   false  |
  ---| `hi! GROUP NONE` (Vim command)                               |   false  |
  local FALLBACK_OR_NONE = setmetatable({}, {
    __newindex = function()
      error('attempt to set index of readonly table', 2)
    end,
  })

  if vim.treesitter.highlighter.hl_map then
    require('github-theme.lib.log').warn([[
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the module, or track on 'v0.0.x' branch.
]])
    return {}
  end

  -- stylua: ignore
  return {
    -- Misc
    -- ['@comment']               = { link = 'Comment' },
    ['@error']                    = { link = 'Error' },
    -- ['@preproc']               = { link = 'PreProc' },                             -- Various preprocessor directives & shebangs
    -- ['@define']                = { link = 'Define' },                              -- Preprocessor definition directives
    -- ['@operator']              = { link = 'Operator' },                            -- For any operator: +, but also -> and * in C

    -- Punctuation
    -- ['@punctuation.delimiter'] = { fg = syn.bracket },                             -- For delimiters (e.g. `.`)
    ['@punctuation.bracket']      = { fg = syn.bracket },                             -- For brackets and parenthesis

    -- Literals
    -- ['@string']                = { link = 'String' },                              -- For strings
    ['@string.regexp']            = { fg = syn.regex, style = stl.strings },          -- Regular expression literals
    ['@string.escape']            = { fg = syn.regex, style = 'bold' },               -- Escape characters within a string: `\n`, `\t`, etc.
    ['@string.special.symbol']    = { fg = syn.preproc },

    -- ['@character']             = { link = 'Character' },                           -- character literals
    -- ['@character.special']     = { link = 'SpecialChar' },                         -- special characters (e.g. wildcards)

    -- ['@boolean']               = { link = 'Boolean' },                             -- For booleans
    -- ['@number']                = { link = 'Number' },                              -- For all numbers
    -- ['@number.float']          = { link = 'Float' },                               -- For floats

    -- Functions
    -- ['@function']              = { link = 'Function' },                            -- For function (calls and definitions)
    ['@function.builtin']         = FALLBACK_OR_NONE,                                 -- For builtin functions: table.insert in Lua
    -- ['@function.call']         = { link = '@function' },                           -- Function calls
    -- ['@function.macro']        = { fg = syn.builtin0, style = stl.functions },     -- Macro functions (calls & defs): macro_rules!, println!()
    -- ['@method']                = { link = '@function'},                            -- For method definitions/declarations
    -- ['@method.call']           = { link = '@method' },                             -- Method calls

    ['@constructor']              = { fg = pl.syntax.variable},                       -- Constructor calls & defs: {} in Lua, new Type() (js/php), constructor() {}
    ['@variable.parameter']                = { fg = syn.param, stl.variables },                -- For parameters of a function

    -- Keywords
    -- ['@keyword']               = { link = 'Keyword' },                             -- For keywords that don't fall in previous categories
    ['@keyword.function']         = { fg = syn.keyword, style = stl.functions },      -- Keywords used to def a fn: `function` in Lua, `def` & `lambda` in Python
    ['@keyword.operator']         = { fg = syn.keyword, style = stl.operators },      -- For `new` keyword operator, `sizeof`, etc.
    -- ['@keyword.return']        = { fg = syn.keyword, style = stl.keywords },

    -- ['@conditional']           = { link = 'Conditional' },                         -- For keywords related to conditionals.
    -- ['@repeat']                = { link = 'Repeat' },                              -- For keywords related to loops.
    ['@label']                    = { link = '@tag' },                                -- For labels: `label:` in C, `:label:` in Lua.
    -- ['@include']               = { link = 'Include' },                             -- For includes: #include in C, use or extern crate in Rust, Lua require
    ['@exception']                = { fg = syn.builtin0, style = stl.keywords },      -- Exception related keywords: `try`, `except`, `finally` in Python

    -- Types
    ['@type']                     = { fg = syn.type },                                -- For custom/user/non-builtin types
    ['@type.builtin']             = { fg = syn.builtin1, style = stl.types },         -- For builtin types
    -- ['@type.definition']       = { link = '@type' },                               -- type definitions (e.g. `typedef` in C)
    ['@type.qualifier']           = { fg = syn.keyword },                             -- type qualifiers (e.g. `const`, css's `!important`)

    -- ['@storageclass']          = { link = 'StorageClass' },                        -- Visibility/life-time/etc. modifiers (e.g. `static`)
    ['@attribute']                = { link = 'Constant' },                            -- Attribute annotations (e.g. Python decorators)
    ['@variable.member']          = { fg = syn.field },                               -- For fields
    ['@property']                 = { link = '@variable.member' },                    -- Same as @field

    -- Identifiers
    ['@variable']                 = { fg = syn.variable, style = stl.variables },     -- Any variable name that does not have another highlighC.
    ['@variable.builtin']         = { fg = syn.builtin0, style = stl.variables },     -- Var names defined by the language: this, self, super

    -- ['@constant']              = { link = 'Constant' },                            -- For constants
    ['@constant.builtin']         = { fg = syn.builtin2, style = stl.keywords },      -- For constant that are built in the language: nil in Lua
    ['@constant.macro']           = { link = 'Macro' },                               -- For constants that are defined by macros: NULL in C

    ['@module']                   = { fg = syn.builtin1 },                            -- For identifiers referring to modules and namespaces

    -- Markup
    ['@markup']                   = { fg = spec.fg1 },                                -- For strings considerated text in a markup language
    ['@markup.environment']       = { fg = syn.preproc },                             -- Text environments of markup languages
    ['@markup.environment.name']  = { fg = syn.func },                                -- Text indicating the type of an environment
    ['@markup.list']              = { fg = syn.builtin2, style = stl.operators },     -- For special punctutation that does not fall in the catagories before
    ['@markup.strong']            = { fg = spec.fg1, style = 'bold' },                -- Bold
    ['@markup.emphasis']          = { fg = spec.fg1, style = 'italic' },              -- Italic
    -- ['@markup.underline']         = { link = 'Underlined' },                          -- Underlined text
    ['@markup.strike']            = { fg = spec.fg1, style = 'strikethrough' },       -- Strikethrough text
    -- ['@markup.heading']           = { link = 'Title'},                                -- Titles like: # Example
    ['@markup.raw']               = { fg = syn.ident, style = 'italic' },             -- Used for inline code in markdown and for doc in python (''')
    ['@markup.math']              = { fg = syn.func },                                -- Math environments (e.g. `$ ... $` in LaTeX)
    ['@markup.link']              = { fg = spec.fg1, style = 'underline' },           -- References
    ['@markup.link.uri']          = { fg = syn.const, style = 'italic,underline' },   -- Urls, links and emails
    ['@markup.link.label']        = { link = 'Special' },                             -- Other special strings (e.g. dates)

    ['@text.todo']                = { fg = spec.bg1, bg = spec.diag.hint },           -- Todo notes
    ['@text.note']                = { fg = spec.bg1, bg = spec.diag.info },
    ['@text.warning']             = { fg = spec.bg1, bg = spec.diag.warn },
    ['@text.danger']              = { fg = spec.bg1, bg = spec.diag.error },
    ['@text.todo.unchecked']      = { fg = spec.fg3 },                                -- For brackets and parens
    ['@text.todo.checked']        = { fg = P.green.base },                            -- For brackets and parens

    ['@text.diff.add']            = { link = 'diffAdded' },                           -- Added text (for diff files)
    ['@text.diff.delete']         = { link = 'diffRemoved' },                         -- Deleted text (for diff files)
    ['@diff.plus']                = { link = "diffAdded" },
    ['@diff.minus']               = { link = "diffRemoved" },
    ['@diff.delta']               = { link = "diffChanged" },

    -- Tags
    ['@tag']                      = { fg = syn.tag },                                 -- Tags like html tag names
    ['@tag.attribute']            = { link = '@variable.member' },                    -- Tag attributes (e.g. HTML element attributes)
    ['@tag.delimiter']            = FALLBACK_OR_NONE,                                 -- Tag delimiter like `<`, `>`, `/`, etc.

    -- Language specific -------------------------------------------------------

    -- Bash
    ['@operator.bash']                          = { fg = syn.keyword, style = stl.operators },
    ['@function.builtin.bash']                  = { fg = syn.keyword },                        -- Invocations of builtin commands/functions
    ['@function.call.bash']                     = { fg = syn.const },
    ['@number.bash']                            = FALLBACK_OR_NONE,
    -- ['@punctuation.bracket.bash']            = { fg = syn.string },                         -- $(, (, ), [, ], ((, ))
    ['@punctuation.delimiter.bash']             = { fg = syn.keyword },                        -- ; and ;;
    ['@markup.list.bash']                       = { link = "@punctuation.bash" },              -- $

    -- C
    ['@type.c']                                 = { fg = spec.variable },

    -- CSS
    -- ['@property.css']                        = { link = '@constant' },
    ['@type.css']                               = { link = 'htmlTag' },

    -- C_sharp
    -- ['@type.c_sharp']                        = { link = '@function' },
    ['@module.c_sharp']                         = { fg = pl.syntax.variable },

    -- Go
    -- ['@function.call.go']                    = { link = '@constant' },
    -- ['@function.go']                         = { link = '@variable.member' },
    -- ['@method.call.go']                      = { link = '@constant' },
    ['@module.go']                              = FALLBACK_OR_NONE,

    -- Html
    ['@markup.heading.html']                        = { fg = spec.fg1 },
    ['@constant.html']                          = { link = '@tag' },

    -- Java
    -- ['@type.java']                           = { link = '@function' },

    -- JavaScript
    -- ['@constructor.ecma']                    = { link = '@method' },
    -- ['@property.javascript']                 = { link = '@variable' },
    -- ['@type.ecma']                           = { fg = pl.syntax.variable },
    -- ['@variable.builtin.javascript']         = { link = '@constant' },
    -- ['@operator.ecma']                       = { fg = spec.const, style = stl.operators },
    -- ['@variable.javascript']                 = { link = '@constant' },

    -- JSX/TSX
    ['@tag.javascript']                         = FALLBACK_OR_NONE,
    ['@tag.tsx']                                = FALLBACK_OR_NONE,
    ['@tag.delimiter.javascript']               = { link = '@tag.attribute.javascript' },
    ['@tag.delimiter.tsx']                      = { link = '@tag.attribute.tsx' },

    -- Json
    ['@label.json']                             = { link = '@tag' },

    -- Lua
    ['@lsp.type.variable.lua']                  = { fg = spec.variable },
    ['@constructor.lua']                        = FALLBACK_OR_NONE,                            -- {}
    ['@operator.lua']                           = { fg = syn.keyword, style = stl.operators },
    ['@field.lua']                              = { fg = syn.variable },
    ['@function.call.lua']                      = { fg = syn.const },
    ['@method.call.lua']                        = { link = '@function.call.lua' },
    ['@module.builtin.lua']                     = { fg = syn.const },                          -- `table`, `io`, `_G`
    ['@label.lua']                              = { fg = syn.const },                          -- The `LABEL` in `::LABEL::` and `goto LABEL`
    ['@field.luadoc']                           = { link = '@field.lua' },
    ['@operator.luadoc']                        = { fg = spec.fg1 },                           -- The `|` in `string|number`
    ['@markup.list.luadoc']                    = { fg = spec.fg1 },                           -- The `?` in `string?`

    -- Make
    -- ['@operator.make']                          = { link = '@constant' },
    ['@string.special.symbol.make']             = { link = '@function' },
    ['@function.builtin.make']                  = { link = '@constant' },

    -- Markdown
    ['@punctuation.delimiter.markdown']         = { fg = spec.fg1 },
    ['@punctuation.delimiter.markdown_inline']  = { fg = spec.fg1 },
    ['@markup.quote.markdown']                  = { fg = syn.tag },

    -- Nix
    ['@variable.member.nix']                    = { link = '@variable.member' },
    ['@variable.parameter.nix']                 = { link = '@variable.parameter' },
    ['@string.special.path.nix']                = { link = '@string' },

    -- PHP
    -- ['@type.php']                            = { link = '@function' },
    ['@module.php']                             = { link = '@constructor.php' },

    -- Python
    ['@field.python']                           = { fg = spec.fg1 },
    -- ['@keyword.python']                      = { link = '@constant' },
    ['@type.builtin.python']                    = { link = '@constant' },
    -- ['@type.python']                         = { link = '@function' },
    ['@variable.builtin.python']                = { link = '@constant' },

    -- Ruby
    ['@label.ruby']                             = { fg = syn.const },
    ['@string.special.symbol.ruby']             = { link = '@constant' },

    -- Rust
    -- ['@field.rust']                          = { fg = spec.fg2 },
    ['@constant.builtin.rust']                  = { fg = pl.syntax.variable },
    ['@module.rust']                            = FALLBACK_OR_NONE,
    ['@preproc.rust']                           = { fg = syn.const },
    ['@storageclass.lifetime.rust']             = { link = '@tag.rust' },
    ['@storageclass.lifetime.punctuation.rust'] = { link = '@markup.list.rust' },

    -- SCSS
    ['@property.scss']                          = { link = '@constant' },
    ['@variable.scss']                          = { link = '@variable.parameter' },

    -- SQL
    ['@field.sql']                              = { link = '@constant' },
    ['@type.sql']                               = { link = '@variable' },
    ['@variable.sql']                           = { link = '@constant' },

    -- TypeScript
    -- ['@constructor.typescript']              = { link = '@function' },
    -- ['@property.typescript']                 = { link = '@variable' },
    -- ['@type.typescript']                     = { link = '@function' },
    -- ['@variable.builtin.typescript']         = { link = '@constant' },
    -- ['@variable.typescript']                 = { link = '@constant' },

    -- VimDoc (vim help files/docs)
    ['@variable.parameter.vimdoc']              = { fg = pl.syntax.variable },
    ['@label.vimdoc']                           = { link = '@keyword' },                       -- `*sometag*`
    -- ['@markup.link.label.vimdoc']               = { link = '@variable.parameter.vimdoc' },              -- `CTRL-W`, etc. (unused atm, not well-defined)

    -- Yaml
    ['@field.yaml']                             = { link = '@tag' },
  }
end

return M

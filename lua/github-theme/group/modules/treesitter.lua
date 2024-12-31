local M = {}

---@param spec GhTheme.Spec
---@param config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, config, _opts)
  -- TODO: Consider refactoring this out once the primitives are finished
  --       being integrated.
  local primitives = require(
    'github-theme.palette.primitives.'
      .. spec.palette.meta.name
        :gsub('^github_(.-)_default$', '%1')
        :gsub('^github_(.-)$', '%1')
  )

  local pl = primitives.prettylights
  local syn = spec.syntax
  local stl = config.styles
  local P = spec.palette
  ---@cast stl -?

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

  if not vim.fn.has('nvim-0.8') or vim.fn.has('nvim-0.8') == 0 then
    require('github-theme.lib.log').warn([[
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the module, or track on 'v0.0.x' branch.
]])
    return {}
  end

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {

--- Identifiers --------------------------------------------------------------------------

    ['@variable']                   = { fg = syn.variable, style = stl.variables },             -- Any variable name that does not have another highlight.
    ['@variable.builtin']           = { fg = syn.builtin0, style = stl.variables },             -- Var names defined by the language: this, self, super
    ['@variable.member']            = { fg = syn.field },                                       -- For fields
    ['@variable.parameter']         = { fg = syn.param, style = stl.variables },                -- For parameters of a function
    ['@variable.parameter.builtin'] = { fg = syn.builtin0, style = stl.variables },             -- Special parameters: `...` in Lua, `..` in JavaScript

 -- ['@constant']                   = { link = 'Constant' },                                    -- Constant identifiers
    ['@constant.builtin']           = { fg = syn.builtin2, style = stl.keywords },              -- For constant that are built in the language: nil in Lua
    ['@constant.macro']             = { link = 'Macro' },                                       -- For constants that are defined by macros: NULL in C

    ['@module']                     = { fg = syn.builtin1 },                                    -- For identifiers referring to modules and namespaces
    ['@module.builtin']             = { fg = syn.builtin2 },                                    -- Built-in modules or namespaces
    ['@label']                      = { link = '@tag' },                                        -- For labels: `label:` in C, `:label:` in Lua.


--- Literals -----------------------------------------------------------------------------

 -- ['@string']                   = { link = 'String' },                                        -- For strings
 -- ['@string.documentation']     = { link = 'String' },                                        -- String documenting code (e.g. Python docstrings)
    ['@string.regexp']            = { fg = syn.regex, style = stl.strings },                    -- Regular expression literals
    ['@string.escape']            = { fg = syn.regex, style = 'bold' },                         -- Escape characters within a string: `\n`, `\t`, etc.

 -- ['@string.special']           = { link = 'Special' },                                       -- Other special strings (e.g. dates)
    ['@string.special.symbol']    = { fg = syn.preproc },                                       -- Symbols or atoms
    ['@string.special.url']       = { fg = syn.const, style = 'italic,underline'  },            -- URIs (e.g. hyperlinks)
 -- ['@string.special.path']      = { fg = spec.palette.done.fg  },                             -- Filenames

 -- ['@character']                = { link = 'Character' },                                     -- Character literals
 -- ['@character.special']        = { link = 'SpecialChar' },                                   -- Special characters (e.g. wildcards)

 -- ['@boolean']                  = { link = 'Boolean' },                                       -- For booleans
 -- ['@number']                   = { link = 'Number' },                                        -- For all numbers
 -- ['@number.float']             = { link = 'Float' },                                         -- For floats


--- Types --------------------------------------------------------------------------------

    ['@type']                     = { fg = syn.type },                                          -- For custom/user/non-builtin types
    ['@type.builtin']             = { fg = syn.builtin1, style = stl.types },                   -- For builtin types

 -- ['@type.definition']          = { link = '@type' },                                         -- Type definitions (e.g. `typedef` in C)
    ['@type.qualifier']           = { fg = syn.keyword },                                       -- Type qualifiers (e.g. `const`, css's `!important`)

    ['@attribute']                = { link = 'Constant' },                                      -- Attribute annotations (e.g. Python decorators)
    ['@property']                 = { link = '@variable.member' },                              -- Key-value pairs (e.g. `{ key: val }`), not field access (e.g. `x.key`)


--- Functions ----------------------------------------------------------------------------

 -- ['@function']                 = { link = 'Function' },                                      -- For function (calls and definitions)
    ['@function.builtin']         = FALLBACK_OR_NONE,                                           -- For builtin functions: table.insert in Lua
 -- ['@function.call']            = { link = '@function' },                                     -- Function calls
 -- ['@function.macro']           = { fg = syn.builtin0, style = stl.functions },               -- Macro functions (calls & defs): macro_rules!, println!()

 -- ['@function.method']          = { link = '@function'},                                      -- For method definitions/declarations
 -- ['@function.method.call']     = { link = '@method' },                                       -- Method calls

    ['@constructor']              = { fg = pl.syntax.variable},                                 -- Constructor calls & defs: {} in Lua, new Type() (js/php), constructor() {}
 -- ['@operator']                 = { link = 'Operator' },                                      -- For any operator: +, but also -> and * in C


--- Keywords -----------------------------------------------------------------------------

 -- ['@keyword']                      = { link = 'Keyword' },                                   -- For keywords that don't fall in previous categories
 -- ['@keyword.coroutine']            = { link = 'Keyword' },                                   -- Keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ['@keyword.function']             = { fg = syn.keyword, style = stl.functions },            -- Keywords used to def a fn: `function` in Lua, `def` & `lambda` in Python
    ['@keyword.operator']             = { fg = syn.keyword, style = stl.operators },            -- For `new` keyword operator, `sizeof`, etc.
 -- ['@keyword.import']               = { link = 'Include' },                                   -- For includes: #include in C, use or extern crate in Rust, Lua require
 -- ['@keyword.storage']              = { link = 'StorageClass' },                              -- Visibility/life-time/etc. modifiers (e.g. `static`)
 -- ['@keyword.repeat']               = { link = 'Repeat' },                                    -- For keywords related to loops.
 -- ['@keyword.return']               = { fg   = syn.keyword, style = stl.keywords },
 -- ['@keyword.debug']                = { link = spec.fg1 },                                    -- For keywords related to conditionals.
    ['@keyword.exception']            = { fg = syn.builtin0, style = stl.keywords },            -- Exception related keywords: `try`, `except`, `finally` in Python

 -- ['@keyword.conditional']          = { link = 'Conditional' },                               -- For keywords related to conditionals.
 -- ['@keyword.conditional.ternary']  = { link = 'Keyword' },                                   -- Ternary operator (e.g. `?` / `:`)

 -- ['@keyword.directive']            = { link = 'PreProc' },                                   -- Various preprocessor directives & shebangs
 -- ['@keyword.directive.define']     = { link = 'Define' },                                    -- Preprocessor definition directives


--- Punctuation --------------------------------------------------------------------------

 -- ['@punctuation.delimiter']        = { fg = syn.bracket },                                   -- For delimiters (e.g. `.`)
    ['@punctuation.bracket']          = { fg = syn.bracket },                                   -- For brackets and parenthesis
 -- ['@punctuation.special']          = { link = 'Special' },                                   -- Special symbols (e.g. `{}` in string interpolation)


--- Comment ------------------------------------------------------------------------------

 -- ['@comment']                        = { link = 'Comment' },                                 -- Line and block comments
 -- ['@comment.documentation']          = { link = 'Comment' },                                 -- Comments documenting code
    ['@comment.error']                  = { fg = spec.bg1, bg = spec.diag.error },              -- Error-type comments (e.g., `DEPRECATED:`)
    ['@comment.warning']                = { fg = spec.bg1, bg = spec.diag.warn },               -- Warning-type comments (e.g., `WARNING:`, `FIX:`)
    ['@comment.hint']                   = { fg = spec.bg1, bg = spec.diag.hint },               -- Note-type comments (e.g., `NOTE:`)
    ['@comment.info']                   = { fg = spec.bg1, bg = spec.diag.info },               -- Info-type comments
    ['@comment.todo']                   = { fg = spec.bg1, bg = spec.diag.hint },               -- Todo notes todo-type comments (e.g-, `TODO:`, `WIP:`)


--- Markup -------------------------------------------------------------------------------

    ['@markup.strong']            = { fg = spec.fg1, style = 'bold' },                          -- Bold text
    ['@markup.italic']            = { fg = spec.fg1, style = 'italic' },                        -- Text with emphasis
    ['@markup.strikethrough']     = { fg = spec.fg1, style = 'strikethrough' },                 -- Strikethrough text
 -- ['@markup.underline']         = { link = 'Underlined' },                                    -- Underlined text (only for literal underline markup!)

 -- ['@markup.heading']           = { link = 'Title'},                                          -- Titles like: # Example
 -- ['@markup.quote']             = { fg = syn.tag },                                           -- Block quotes
 -- ['@markup.math']              = { fg = syn.tag },                                           -- Math environments (e.g. `$ ... $` in LaTeX)
    ['@markup.environment']       = { fg = syn.preproc },                                       -- Text environments of markup languages
    ['@markup.environment.name']  = { fg = syn.func },                                          -- Text indicating the type of an environment

    ['@markup.link']              = { fg = spec.fg1, style = 'underline' },                     -- References
    ['@markup.link.uri']          = { fg = syn.const, style = 'italic,underline' },             -- URLs, links and emails
    ['@markup.link.label']        = { link = 'Special' },                                       -- Other special strings (e.g. dates)

    ['@markup.raw']               = { fg = syn.ident, style = 'italic' },                       -- Literal or verbatim text (e.g., inline code)
 -- ['@markup.raw.block']         = { link = '@markup.raw' },                                   -- Literal or verbatim text as a stand-alone block

    ['@markup.list']              = { fg = syn.builtin2, style = stl.operators },               -- For special punctuation that does not fall in the categories before
    ['@markup.list.checked']      = { fg = P.green.base },                                      -- Checked todo-style list markers
    ['@markup.list.unchecked']    = { fg = spec.fg3 },                                          -- Unchecked todo-style list markers

    ['@diff.plus']                = { link = "diffAdded" },                                     -- Added text (for diff files)
    ['@diff.minus']               = { link = "diffRemoved" },                                   -- Deleted text (for diff files)
    ['@diff.delta']               = { link = "diffChanged" },                                   -- Changed text (for diff files)


--- XML Tags -----------------------------------------------------------------------------

    ['@tag']                      = { fg = syn.tag },                                           -- Tags like HTML tag names
    ['@tag.builtin']              = { link = '@tag' },                                          -- Tags, but only non-user-defined ones (e.g. `<a>`)
    ['@tag.attribute']            = { link = '@variable.member' },                              -- Tag attributes (e.g. HTML element attributes)
    ['@tag.delimiter']            = FALLBACK_OR_NONE,                                           -- Tag delimiter like `<`, `>`, `/`, etc.


--- Non-highlighting captures ------------------------------------------------------------

    ['@none']                     = { link = 'NONE' },                                          -- Completely disable the highlight
    ['@conceal']                  = { link = 'Conceal' },                                       -- Captures that are only meant to be concealed


--- [DEPRECATED] -------------------------------------------------------------------------

 -- ['@error']                    = { link = 'Error' },
 -- ['@text.diff.add']            = { link = 'diffAdded' },                                     -- Added text (for diff files)
 -- ['@text.diff.delete']         = { link = 'diffRemoved' },                                   -- Deleted text (for diff files)


--- Language specific --------------------------------------------------------------------

    -- Bash
    ['@operator.bash']                          = { fg = syn.keyword, style = stl.operators },
    ['@function.builtin.bash']                  = { fg = syn.keyword },                         -- Invocations of builtin commands/functions
    ['@function.call.bash']                     = { fg = syn.const },
    ['@number.bash']                            = FALLBACK_OR_NONE,
 -- ['@punctuation.bracket.bash']               = { fg = syn.string },                          -- $(, (, ), [, ], ((, ))
    ['@punctuation.delimiter.bash']             = { fg = syn.keyword },                         -- ; and ;;
    ['@markup.list.bash']                       = { link = "@punctuation.bash" },               -- $

    -- C
    ['@type.c']                                 = { fg = spec.variable },

    -- CSS
 -- ['@property.css']                           = { link = '@constant' },
    ['@type.css']                               = { link = 'htmlTag' },

    -- C_sharp
 -- ['@type.c_sharp']                           = { link = '@function' },
    ['@module.c_sharp']                         = { fg = pl.syntax.variable },

    -- Gitignore
    ['@string.special.path.gitignore']          = { fg = pl.syntax.entity },                    -- Non-special chars in file pattern

    -- Go
 -- ['@function.call.go']                       = { link = '@constant' },
 -- ['@function.go']                            = { link = '@variable.member' },
 -- ['@function.method.call.go']                = { link = '@constant' },
    ['@module.go']                              = FALLBACK_OR_NONE,

    -- Html
    ['@markup.heading.html']                    = { fg = spec.fg1 },
    ['@constant.html']                          = { link = '@tag' },

    -- Java
 -- ['@type.java']                              = { link = '@function' },

    -- JavaScript
 -- ['@constructor.ecma']                       = { link = '@function.method' },
 -- ['@property.javascript']                    = { link = '@variable' },
 -- ['@type.ecma']                              = { fg = pl.syntax.variable },
 -- ['@variable.builtin.javascript']            = { link = '@constant' },
 -- ['@operator.ecma']                          = { fg = spec.const, style = stl.operators },
 -- ['@variable.javascript']                    = { link = '@constant' },

    -- JSX/TSX
    ['@tag.javascript']                         = { link = '@type.javascript' },
    ['@tag.tsx']                                = { link = '@type.tsx' },
    ['@tag.delimiter.javascript']               = { link = '@tag.attribute.javascript' },
    ['@tag.delimiter.tsx']                      = { link = '@tag.attribute.tsx' },

    -- JSON
    ['@property.json']                          = { link = '@tag' },

    -- Lua
    ['@lsp.type.variable.lua']                  = { fg = spec.variable },
    ['@constructor.lua']                        = { fg = syn.bracket },                         -- {}
    ['@operator.lua']                           = { fg = syn.keyword, style = stl.operators },
    ['@property.lua']                           = { fg = syn.ident },
 -- ['@function.call.lua']                      = { fg = syn.const },
 -- ['@function.method.call.lua']               = { link = '@function.call.lua' },
    ['@function.builtin.lua']                   = { fg = syn.builtin0, style = stl.functions },
    ['@module.builtin.lua']                     = { fg = syn.builtin0, style = stl.variables }, -- `table`, `io`, `_G`
 -- ['@label.lua']                              = { fg = syn.string },                          -- The `LABEL` in `::LABEL::` and `goto LABEL`
    ['@property.luadoc']                        = { link = '@property.lua' },
    ['@variable.member.luadoc']                 = { link = '@property.luadoc' },
    ['@operator.luadoc']                        = { fg = spec.fg1 },                            -- The `|` in `string|number`
    ['@markup.list.luadoc']                     = { fg = spec.fg1 },                            -- The `?` in `string?`

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
 -- ['@type.php']                               = { link = '@function' },
    ['@module.php']                             = { link = '@constructor.php' },

    -- Python
    ['@variable.member.python']                 = { fg = spec.fg1 },
 -- ['@keyword.python']                         = { link = '@constant' },
    ['@type.builtin.python']                    = { link = '@constant' },
 -- ['@type.python']                            = { link = '@function' },
    ['@variable.builtin.python']                = { link = '@constant' },
    ['@module.python']                          = FALLBACK_OR_NONE,

    -- Ruby
    ['@label.ruby']                             = { fg = syn.const },
    ['@string.special.symbol.ruby']             = { link = '@constant' },

    -- Rust
    ['@constant.builtin.rust']                     = { fg = pl.syntax.variable },
    ['@module.rust']                               = FALLBACK_OR_NONE,
    ['@keyword.directive.rust']                    = { fg = syn.const },
    ['@keyword.storage.lifetime.rust']             = { link = '@tag.rust' },
    ['@keyword.storage.lifetime.punctuation.rust'] = { link = '@markup.list.rust' },

    -- SCSS
    ['@property.scss']                          = { link = '@constant' },
    ['@variable.scss']                          = { link = '@variable.parameter' },

    -- SQL
    ['@variable.member.sql']                    = { link = '@constant' },
    ['@type.sql']                               = { link = '@variable' },
    ['@variable.sql']                           = { link = '@constant' },

    -- TypeScript
 -- ['@constructor.typescript']                 = { link = '@function' },
 -- ['@property.typescript']                    = { link = '@variable' },
 -- ['@type.typescript']                        = { link = '@function' },
 -- ['@variable.builtin.typescript']            = { link = '@constant' },
 -- ['@variable.typescript']                    = { link = '@constant' },

    -- VimDoc (vim help files/docs)
    ['@variable.parameter.vimdoc']              = { fg = pl.syntax.variable },
    ['@label.vimdoc']                           = { link = '@keyword' },                        -- `*sometag*`
 -- ['@markup.link.label.vimdoc']               = { link = '@variable.parameter.vimdoc' },      -- `CTRL-W`, etc. (unused atm, not well-defined)

    -- YAML
    ['@property.yaml']                          = { link = '@tag' },
  }
end

return M

local M = {}

function M.get(spec, config, opts)
  local syn = spec.syntax
  local stl = config.styles
  local P = spec.palette

  if vim.treesitter.highlighter.hl_map then
    require('github-theme.lib.log').warn([[nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the module, or track on 'v0.0.x' branch.
]])
    return {}
  end

  -- TODO:
  -- (1): Add missing styles using `stl`

  -- stylua: ignore
  return {
    -- Misc
    ['@comment']                = { link = 'Comment' },
    ['@error']                  = { link = 'Error' },
    ['@preproc']                = { link = 'PreProc' }, -- various preprocessor directives & shebangs
    ['@define']                 = { link = 'Define' }, -- preprocessor definition directives
    ['@operator']               = { link = 'Operator' }, -- For any operator: +, but also -> and * in C.

    -- Punctuation
    ['@punctuation.delimiter']  = { fg = syn.bracket }, -- For delimiters ie: .
    ['@punctuation.bracket']    = { fg = syn.bracket }, -- For brackets and parenthesis.
    ['@punctuation.special']    = { fg = syn.builtin2, style = stl.operators }, -- For special punctutation that does not fall in the catagories before.

    -- Literals
    ['@string']                 = { link = 'String' }, -- For strings.
    ['@string.regex']           = { fg = syn.regex, style = stl.strings }, -- Regular expression literals.
    ['@string.escape']          = { fg = syn.regex, style = 'bold' }, -- Escape characters within a string: `\n`, `\t`, etc.
    ['@string.special']         = { link = 'Special' }, -- other special strings (e.g. dates)

    ['@character']              = { link = 'Character' }, -- character literals
    ['@character.special']      = { link = 'SpecialChar' }, -- special characters (e.g. wildcards)

    ['@boolean']                = { link = 'Boolean' }, -- For booleans.
    ['@number']                 = { link = 'Number' }, -- For all numbers
    ['@float']                  = { link = 'Number' }, -- For floats.

    -- Functions
    ['@function']               = { link = 'Function' }, -- For function (calls and definitions).
    ['@function.builtin']       = { fg = syn.builtin2, style = stl.functions }, -- For builtin functions: table.insert in Lua.
    ['@function.call']          = { link = '@function' }, -- function calls
    ['@function.macro']         = { fg = syn.builtin0, style = stl.functions }, -- For macro defined functions (calls and definitions): each macro_rules in RusC.
    ['@method']                 = { link = '@function'}, -- For method calls and definitions.

    ['@method.call']            = { link = '@method' }, -- method calls

    ['@constructor']            = { fg = syn.ident }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
    ['@parameter']              = { fg = syn.param, stl.variables }, -- For parameters of a function.

    -- Keywords
    ['@keyword']                = { link = 'Keyword' }, -- For keywords that don't fall in previous categories.
    ['@keyword.function']       = { fg = syn.keyword, style = stl.functions }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    ['@keyword.operator']       = { fg = syn.operator, style = stl.operators }, -- For new keyword operator
    ['@keyword.return']         = { fg = syn.builtin0, style = stl.keywords },

    ['@conditional']            = { link = 'Conditional' }, -- For keywords related to conditionnals.
    ['@repeat']                 = { link = 'Repeat' }, -- For keywords related to loops.
    ['@label']                  = { link = 'Label' }, -- For labels: label: in C and :label: in Lua.
    ['@include']                = { link = 'Include' }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
    ['@exception']              = { fg = syn.builtin0, style = stl.keywords }, -- Exception related keywords: `try`, `except`, `finally` in Python.

    -- Types
    ['@type']                   = { link = 'Type' }, -- For types.
    ['@type.builtin']           = { fg = syn.builtin1, style = stl.types }, -- For builtin types.
    ['@type.definition']        = { link = '@type' }, -- type definitions (e.g. `typedef` in C)
    ['@type.qualifier']         = { link = '@type' }, -- type qualifiers (e.g. `const`)

    ['@storageclass']           = { link = 'StorageClass' }, -- visibility/life-time/etc. modifiers (e.g. `static`)
    ['@attribute']              = { link = 'Constant' }, -- attribute annotations (e.g. Python decorators)
    ['@field']                  = { fg = syn.field }, -- For fields.
    ['@property']               = { link = '@field' }, -- Same as @field.

    -- Identifiers
    ['@variable']               = { fg = syn.variable, style = stl.variables }, -- Any variable name that does not have another highlighC.
    ['@variable.builtin']       = { fg = syn.builtin0, style = stl.variables }, -- Variable names that are defined by the languages, like this or self.

    ['@constant']               = { link = 'Constant' }, -- For constants
    ['@constant.builtin']       = { fg = syn.builtin2, style = stl.keywords }, -- For constant that are built in the language: nil in Lua.
    ['@constant.macro']         = { link = 'Macro' }, -- For constants that are defined by macros: NULL in C.

    ['@namespace']              = { fg = syn.builtin1 }, -- For identifiers referring to modules and namespaces.
    ['@symbol']                 = { fg = syn.preproc },

    -- Text
    ['@text']                   = { fg = spec.fg1 }, -- For strings considerated text in a markup language.
    ['@text.strong']            = { fg = spec.fg1, style = 'bold' }, -- bold
    ['@text.emphasis']          = { fg = spec.fg1, style = 'italic' }, -- italic
    ['@text.underline']         = { link = 'Underline' }, -- underlined text
    ['@text.strike']            = { fg = spec.fg1, style = 'strikethrough' }, -- strikethrough text
    ['@text.title']             = { link = 'Title'}, -- titles like: # Example
    ['@text.literal']           = { fg = syn.ident, style = 'italic' }, -- used for inline code in markdown and for doc in python (''')
    ['@text.uri']               = { fg = syn.const, style = 'italic,underline' }, -- urls, links and emails
    ['@text.math']              = { fg = syn.func }, -- math environments (e.g. `$ ... $` in LaTeX)
    ['@text.environment']       = { fg = syn.preproc }, -- text environments of markup languages
    ['@text.environment.name']  = { fg = syn.func }, -- text indicating the type of an environment
    ['@text.reference']         = { fg = spec.fg1, style = 'underline' }, -- references

    ['@text.todo']              = { fg = spec.bg1, bg = spec.diag.hint }, -- todo notes
    ['@text.note']              = { fg = spec.bg1, bg = spec.diag.info },
    ['@text.warning']           = { fg = spec.bg1, bg = spec.diag.warn },
    ['@text.danger']            = { fg = spec.bg1, bg = spec.diag.error },
    ['@text.todo.unchecked']    = { fg = spec.fg3 }, -- For brackets and parens.
    ['@text.todo.checked']      = { fg = P.green.base }, -- For brackets and parens.

    ['@text.diff.add']          = { link = 'diffAdded' }, -- added text (for diff files)
    ['@text.diff.delete']       = { link = 'diffRemoved' }, -- deleted text (for diff files)

    -- Tags
    ['@tag']                    = { fg = syn.tag }, -- Tags like html tag names.
    ['@tag.attribute']          = { fg = syn.func, style = 'italic' }, -- Tags like html tag names.
    ['@tag.delimiter']          = { fg = syn.tag }, -- Tag delimiter like < > /

    -- Language specific -------------------------------------------------------

    -- C
    ['@type.c']                                 = { fg = spec.variable },
    ['@label.c']                                = { fg = spec.variable },

    -- CSS
    ['@property.css']                           = { link = '@constant' },
    ['@type.css']                               = { link = 'htmlTag' },

    -- C_sharp
    ['@type.c_sharp']                           = { link = '@function' },

    -- Go
    ['@function.call.go']                       = { link = '@constant' },
    ['@function.go']                            = { link = '@field' },
    ['@method.call.go']                         = { link = '@constant' },
    ['@namespace.go']                           = { link = '@field' },

    -- Html
    ['@text.title.html']                        = { fg = spec.fg1 },
    ['@constant.html']                          = { link = '@tag' },

    -- Java
    ['@type.java']                              = { link = '@function' },

    -- JavaScript
    ['@property.javascript']                    = { link = '@variable' },
    ['@type.javascript']                        = { link = '@variable' },
    ['@variable.builtin.javascript']            = { link = '@constant' },
    ['@variable.javascript']                    = { link = '@constant' },

    -- Json
    ['@label.json']                             = { link = '@constant' },

    -- Lua
    ['@lsp.type.variable.lua']                  = { fg = spec.variable },

    -- Make
    ['@operator.make']                          = { link = '@constant' },
    ['@symbol.make']                            = { link = '@function' },

    -- Markdown
    ['@punctuation.delimiter.markdown']         = { fg = spec.fg1 },
    ['@punctuation.delimiter.markdown_inline']  = { fg = spec.fg1 },
    ['@text.quote.markdown']                    = { fg = syn.tag },

    -- PHP
    ['@type.php']                               = { link = '@function' },

    -- Python
    ['@field.python']                           = { fg = syn.fg1 },
    ['@function.call.python']                   = { fg = syn.fg1 },
    ['@keyword.python']                         = { link = '@constant' },
    ['@method.call.python']                     = { fg = syn.fg1 },
    ['@type.builtin.python']                    = { link = '@constant' },
    ['@type.python']                            = { link = '@function' },
    ['@variable.builtin.python']                = { link = '@constant' },

    -- Ruby
    ['@function.call.ruby']                     = { link = '@constant' },
    ['@label.ruby']                             = { link = '@variable' },
    ['@symbol.ruby']                            = { link = '@constant' },
    ['@type.ruby']                              = { link = '@function' },

    -- Rust
    ['@field.rust']                             = { fg = spec.fg2 },

    -- SCSS
    ['@property.scss']                          = { link = '@constant' },
    ['@variable.scss']                          = { link = '@parameter' },

    -- SQL
    ['@field.sql']                              = { link = '@constant' },
    ['@type.sql']                               = { link = '@variable' },
    ['@variable.sql']                           = { link = '@constant' },

    -- TypeScript
    ['@constructor.typescript']                 = { link = '@function' },
    ['@property.typescript']                    = { link = '@variable' },
    ['@type.typescript']                        = { link = '@function' },
    ['@variable.builtin.typescript']            = { link = '@constant' },
    ['@variable.typescript']                    = { link = '@constant' },

    -- Yaml
    ['@field.yaml']                             = { link = '@tag' },
  }
end

return M

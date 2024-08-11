-- https://github.com/hrsh7th/nvim-cmp

local M = {}

---@param spec GhTheme.Spec
---@param config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, config, _opts)
  local has_ts = config.modules.treesitter == true
    or type(config.modules.treesitter) == 'table' and config.modules.treesitter.enable
  local syn = spec.syntax

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    CmpDocumentation         = { fg = spec.fg1, bg = spec.bg0 },
    CmpDocumentationBorder   = { fg = spec.sel0, bg = spec.bg0 },

    CmpItemAbbr              = { fg = spec.fg1, },
    CmpItemAbbrDeprecated    = { fg = syn.dep, style = 'strikethrough' },
    CmpItemAbbrMatch         = { fg = syn.func, },
    CmpItemAbbrMatchFuzzy    = { fg = syn.func, },

    CmpItemKindDefault       = { fg = spec.fg2, },
    CmpItemMenu              = { link = 'Comment' },

    CmpItemKindKeyword       = { link = 'Keyword' },

    CmpItemKindVariable      = { link = has_ts and '@variable' or  'Identifier' },
    CmpItemKindConstant      = { link = has_ts and '@constant' or 'Constant' },
    CmpItemKindReference     = { link = 'Keyword' },
    CmpItemKindValue         = { link = 'Keyword' },

    CmpItemKindFunction      = { link = 'Function' },
    CmpItemKindMethod        = { link = 'Function' },
    CmpItemKindConstructor   = { link = has_ts and '@constructor' or 'Type' },

    CmpItemKindInterface     = { link = 'Constant' },
    CmpItemKindEvent         = { link = 'Constant' },
    CmpItemKindEnum          = { link = 'Constant' },
    CmpItemKindUnit          = { link = 'Constant' },

    CmpItemKindClass         = { link = 'Type' },
    CmpItemKindStruct        = { link = 'Type' },

    CmpItemKindModule        = { link = has_ts and '@module'  or 'Identifier' },

    CmpItemKindProperty      = { link = has_ts and '@property' or  'Identifier' },
    CmpItemKindField         = { link = has_ts and '@variable.member' or 'Identifier' },
    CmpItemKindTypeParameter = { link = has_ts and '@variable.member' or 'Identifier' },
    CmpItemKindEnumMember    = { link = has_ts and '@variable.member' or 'Identifier' },
    CmpItemKindOperator      = { link = 'Operator' },
    CmpItemKindSnippet       = { fg = spec.fg2 },
  }
end

return M

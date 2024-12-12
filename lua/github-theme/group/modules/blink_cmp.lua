-- https://github.com/Saghen/blink.cmp

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
    BlinkCmpMenu              = { fg = spec.fg1, bg = spec.bg1 },
    BlinkCmpMenuBorder        = { link = 'FloatBorder' },

    BlinkCmpDoc               = { fg = spec.fg1, bg = spec.bg1 },
    BlinkCmpDocBorder         = { link = 'FloatBorder' },
    BlinkCmpDocSeparator      = { link = 'FloatBorder' },

    BlinkCmpSource            = { link = 'Comment' },

    BlinkCmpLabel             = { fg = spec.fg1, },
    BlinkCmpLabelDeprecated   = { fg = syn.dep, style = 'strikethrough' },
    BlinkCmpLabelMatch        = { fg = syn.func, },
    BlinkCmpLabelDetail       = { link = 'Comment' },
    BlinkCmpLabelDescription  = { link = 'Comment' },

    BlinkCmpKind              = { fg = spec.fg2, },
    BlinkCmpKindKeyword       = { link = 'Keyword' },
    BlinkCmpKindVariable      = { link = has_ts and '@variable' or  'Identifier' },
    BlinkCmpKindConstant      = { link = has_ts and '@constant' or 'Constant' },
    BlinkCmpKindReference     = { link = 'Keyword' },
    BlinkCmpKindValue         = { link = 'Keyword' },

    BlinkCmpKindFunction      = { link = 'Function' },
    BlinkCmpKindMethod        = { link = 'Function' },
    BlinkCmpKindConstructor   = { link = has_ts and '@constructor' or 'Type' },
    BlinkCmpKindInterface     = { link = 'Constant' },
    BlinkCmpKindEvent         = { link = 'Constant' },
    BlinkCmpKindEnum          = { link = 'Constant' },
    BlinkCmpKindUnit          = { link = 'Constant' },
    BlinkCmpKindClass         = { link = 'Type' },
    BlinkCmpKindStruct        = { link = 'Type' },
    BlinkCmpKindModule        = { link = has_ts and '@module'  or 'Identifier' },
    BlinkCmpKindProperty      = { link = has_ts and '@property' or  'Identifier' },
    BlinkCmpKindField         = { link = has_ts and '@variable.member' or 'Identifier' },
    BlinkCmpKindTypeParameter = { link = has_ts and '@variable.member' or 'Identifier' },
    BlinkCmpKindEnumMember    = { link = has_ts and '@variable.member' or 'Identifier' },
    BlinkCmpKindOperator      = { link = 'Operator' },
    BlinkCmpKindSnippet       = { fg = spec.fg2 },
  }
end

return M

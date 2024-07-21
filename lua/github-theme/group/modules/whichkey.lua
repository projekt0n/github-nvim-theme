-- https://github.com/folke/which-key.nvim

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts table
function M.get(spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    WhichKey          = { link = 'Identifier' },
    WhichKeyGroup     = { link = 'Function'   },
    WhichKeyDesc      = { link = 'Keyword'    },
    WhichKeySeperator = { link = 'Comment'    },
    WhichKeySeparator = { link = 'Comment'    },
    WhichKeyFloat     = { bg   = spec.bg0     },
    WhichKeyValue     = { link = 'Comment'    },
  }
end

return M

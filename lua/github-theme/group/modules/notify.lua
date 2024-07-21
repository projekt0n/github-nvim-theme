-- https://github.com/rcarriga/nvim-notify

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local c = spec.palette

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    NotifyERRORTitle      = { fg = c.red.base  },
    NotifyWARNTitle       = { fg = c.yellow.base },
    NotifyINFOTitle       = { fg = c.green.base },
    NotifyDEBUGTitle      = { fg = spec.fg1 },
    NotifyTRACETitle      = { fg = c.magenta.bright },

    NotifyERRORIcon       = { link = 'NotifyERRORTitle' },
    NotifyWARNIcon        = { link = 'NotifyWARNTitle' },
    NotifyINFOIcon        = { link = 'NotifyINFOTitle' },
    NotifyDEBUGIcon       = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEIcon       = { link = 'NotifyTRACETitle' },

    NotifyERRORBorder     = { link = 'NotifyERRORTitle' },
    NotifyWARNBorder      = { link = 'NotifyWARNTitle' },
    NotifyINFOBorder      = { link = 'NotifyINFOTitle' },
    NotifyDEBUGBorder     = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEBorder     = { link = 'NotifyTRACETitle' },

    NotifyERRORBody       = { link = 'NotifyERRORTitle' },
    NotifyWARNBody        = { link = 'NotifyWARNTitle' },
    NotifyINFOBody        = { link = 'NotifyINFOTitle' },
    NotifyDEBUGBody       = { link = 'NotifyDEBUGTitle' },
    NotifyTRACEBody       = { link = 'NotifyTRACETitle' },
  }
end

return M

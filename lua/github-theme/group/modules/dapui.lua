-- https://github.com/rcarriga/nvim-dap-ui

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  local c = spec.palette

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    DapUIScope                   = { fg = c.cyan.base },
    DapUIType                    = { fg = c.magenta.base },
    DapUIModifiedValue           = { fg = c.cyan.base, style = 'bold'},
    DapUIDecoration              = { link = 'DapUIScope' },
    DapUIThread                  = { fg = c.green.base, style = 'bold'},
    DapUIStoppedThread           = { link = 'DapUIScope' },
    DapUISource                  = { link = 'DapUIType' },
    DapUILineNumber              = { link = 'DapUIScope' },
    DapUIFloatBorder             = { link = 'DapUIScope' },
    DapUIWatchesEmpty            = { fg = c.red.base },
    DapUIWatchesValue            = { fg = c.green.base },
    DapUIWatchesError            = { link = 'DapUIWatchesEmpty' },
    DapUIBreakpointsPath         = { link = 'DapUIScope' },
    DapUIBreakpointsInfo         = { link = 'DapUIWatchesValue' },
    DapUIBreakpointsCurrentLine  = { link = 'DapUIThread' },
    DapUIBreakpointsDisabledLine = { fg = spec.fg0 },
    DapUIStepOver                = { link = 'DapUIScope' },
    DapUIStepInto                = { link = 'DapUIScope' },
    DapUIStepBack                = { link = 'DapUIScope' },
    DapUIStepOut                 = { link = 'DapUIScope' },
    DapUIStop                    = { link = 'DapUIWatchesEmpty' },
    DapUIPlayPause               = { link = 'DapUIWatchesValue' },
    DapUIRestart                 = { link = 'DapUIWatchesValue' },
    DapUIUnavailable             = { link = 'DapUIBreakpointsDisabledLine' },
    DapUIWinSelect               = { link = 'DapUIModifiedValue' },
  }
end

return M

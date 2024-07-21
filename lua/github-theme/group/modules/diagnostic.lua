local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param opts GhTheme.Config.Module.Diagnostic
function M.get(spec, _config, opts)
  local d = spec.diag
  local dbg = spec.diag_bg

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    DiagnosticError            = { fg = d.error },
    DiagnosticWarn             = { fg = d.warn },
    DiagnosticInfo             = { fg = d.info },
    DiagnosticHint             = { fg = d.hint },

    DiagnosticSignError        = { link = 'DiagnosticError' },
    DiagnosticSignWarn         = { link = 'DiagnosticWarn' },
    DiagnosticSignInfo         = { link = 'DiagnosticInfo' },
    DiagnosticSignHint         = { link = 'DiagnosticHint' },

    DiagnosticVirtualTextError = { fg = d.error, bg = opts.background and dbg.error or 'NONE' },
    DiagnosticVirtualTextWarn  = { fg = d.warn,  bg = opts.background and dbg.warn  or 'NONE' },
    DiagnosticVirtualTextInfo  = { fg = d.info,  bg = opts.background and dbg.info  or 'NONE' },
    DiagnosticVirtualTextHint  = { fg = d.hint,  bg = opts.background and dbg.hint  or 'NONE' },

    DiagnosticUnderlineError   = { style = 'undercurl', sp = d.error },
    DiagnosticUnderlineWarn    = { style = 'undercurl', sp = d.warn },
    DiagnosticUnderlineInfo    = { style = 'undercurl', sp = d.info },
    DiagnosticUnderlineHint    = { style = 'undercurl', sp = d.hint },
  }
end

return M

-- https://github.com/TimUntersberger/neogit

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    NeogitBranch               = { fg = spec.diag.warn },
    NeogitRemote               = { fg = spec.diag.hint },

    NeogitHunkHeader           = { fg = spec.diag.info, bg = spec.bg3 },
    NeogitHunkHeaderHighlight  = { fg = spec.diag.info, bg = spec.sel0 },

    NeogitDiffAdd              = { fg = spec.git.add },
    NeogitDiffDelete           = { fg = spec.git.removed },

    NeogitDiffAddHighlight     = { bg = spec.diff.add },
    NeogitDiffDeleteHighlight  = { bg = spec.diff.delete },
    NeogitDiffContextHighlight = { bg = spec.bg2 },

    NeogitNotificationInfo     = { fg = spec.diag.info },
    NeogitNotificationWarning  = { fg = spec.diag.warn },
    NeogitNotificationError    = { fg = spec.diag.error },
  }
end

return M

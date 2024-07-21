local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param opts GhTheme.Config.Module.NativeLSP
function M.get(spec, _config, opts)
  local syn = spec.syntax

  -- stylua: ignore
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    -- These groups are for the native LSP client. Some other LSP clients may use these
    -- groups, or use their own. Consult your LSP client's documentation.
    LspReferenceText  = { bg = spec.sel0 }, -- used for highlighting 'text' references
    LspReferenceRead  = { bg = spec.sel0 }, -- used for highlighting 'read' references
    LspReferenceWrite = { bg = spec.sel0 }, -- used for highlighting 'write' references

    LspCodeLens                 = { fg = spec.syntax.comment }, -- Used to color the virtual text of the codelens
    LspCodeLensSeparator        = { fg = spec.fg3 }, -- Used to color the separator between two or more code lens
    LspSignatureActiveParameter = { fg = spec.sel1 }, -- Used to highlight the active parameter in the signature help

    LspInlayHint = { fg = syn.comment, bg = opts.background and spec.bg2 or 'NONE' },
  }
end

return M

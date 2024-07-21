-- https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight

local M = {}

---@param _spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(_spec, _config, _opts)
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    -- LSP Semantic token highlight groups
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.type.interface'] = { link = '@interface' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.parameter'] = { link = '@variable.parameter' },
    ['@lsp.type.class'] = { link = '@function' },
    ['@lsp.type.property'] = {}, -- use treesitter styles for regular properties
    ['@lsp.type.variable'] = {}, -- use treesitter styles for regular variables
    ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected'] = { link = '@operator' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
    ['@lsp.typemod.string.injected'] = { link = '@string' },
    ['@lsp.typemod.variable.injected'] = { link = '@variable' },
  }
end

return M

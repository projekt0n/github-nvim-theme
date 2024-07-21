-- https://github.com/weirongxu/coc-explorer

local M = {}

---@param spec GhTheme.Spec
---@param _config GhTheme.Config.Options
---@param _opts GhTheme.Config.Module
function M.get(spec, _config, _opts)
  ---@type table<string, GhTheme.HighlightGroup>
  return {
    CocExplorerNormalFloat = { link = 'NormalSB' },

    CocExplorerFileRootName = { fg = spec.fg1, style = 'bold' },
    CocExplorerFileDirectory = { fg = spec.fg1, style = 'bold' },

    CocExplorerGitPathChange_Internal = { fg = spec.palette.done.fg },
    CocExplorerGitAdded = { fg = spec.git.add },
    CocExplorerGitModified = { fg = spec.git.changed },
    CocExplorerGitContentChange = { fg = spec.git.changed },
    CocExplorerGitPathChange = { fg = spec.palette.done.fg },
    CocExplorerGitIgnored = { fg = spec.syntax.comment },
    CocExplorerGitUntracked = { fg = spec.syntax.comment },
  }
end

return M

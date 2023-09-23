-- https://github.com/weirongxu/coc-explorer

local M = {}

function M.get(spec, config, opts)
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

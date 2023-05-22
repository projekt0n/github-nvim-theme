-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- :help neo-tree-highlights

local C = require('github-theme.lib.color')

local M = {}

function M.get(spec, config, opts)
  local hide_eof = config.hide_end_of_buffer
  local dark_sb = config.darken.sidebars
  local c = spec.palette

  local function blend(color, a)
    return C(spec.bg1):blend(C(color), a):to_css()
  end

  -- stylua: ignore
  return {
    NeoTreeNormal             = { link = 'NormalSB' },
    NeoTreeNormalNC           = { link = 'NeoTreeNormal' },
    NeoTreeTitleBar           = { fg = spec.bg1, bg = blend(c.blue.base, 0.9) },
    NeoTreeEndOfBuffer        = { fg = (hide_eof and dark_sb) and spec.bg0 or spec.fg0 },
    NeoTreeIndentMarker       = { fg = spec.bg4 },

    NeoTreeRootName           = { fg = spec.fg1, style = 'bold' },
    NeoTreeDirectoryName      = { fg = spec.fg1 },
    NeoTreeDirectoryIcon      = { fg = spec.fg1 },
    NeoTreeDotfile            = { fg = blend(c.blue.base, 0.5) },
    NeoTreeSymbolicLinkTarget = { fg = blend(c.pink.base, 0.5) },
    NeoTreeFileName           = { fg = spec.fg1 },
    NeoTreeFileNameOpened     = { fg = c.blue.bright },
    NeoTreeDimText            = { link = 'Conceal' },

    NeoTreeGitModified        = { fg = spec.git.changed },
    NeoTreeGitAdded           = { fg = spec.git.add },
    NeoTreeGitDeleted         = { fg = spec.git.removed },
    NeoTreeGitConflict        = { fg = spec.git.conflict, style = 'italic' },
    NeoTreeGitIgnored         = { fg = spec.git.ignored },
    NeoTreeGitUntracked       = { fg = blend(c.cyan.base, 0.9) }
  }
end

return M

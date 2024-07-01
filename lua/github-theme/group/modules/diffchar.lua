-- https://github.com/rickhowe/diffchar.vim

local M = {}

function M.get(spec, config, opts)
  return {
    DiffAdd = { link = 'diffAdded' },
    DiffChange = { link = 'diffChanged' },
    DiffDelete = { link = 'diffRemoved' },
    DiffText = { fg = 'none', bg = spec.diff.text },
  }
end

return M

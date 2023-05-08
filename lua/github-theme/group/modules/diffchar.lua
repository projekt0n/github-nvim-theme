-- https://github.com/rickhowe/diffchar.vim

local M = {}

function M.get(spec, config, opts)
  return {
    DiffAdd = { link = 'diffAdded' },
    DiffChange = { link = 'diffChanged' },
    DiffDelete = { link = 'diffRemoved' },
    DiffText = { fg = spec.fg1, bg = spec.bg2 },
  }
end

return M

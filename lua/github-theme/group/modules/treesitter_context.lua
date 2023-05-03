local M = {}

function M.get(spec, config, opts)
  -- stylua: ignore
  return {
    ['TreesitterContext']      = { bg = spec.palette.accent.subtle },
  }
end

return M

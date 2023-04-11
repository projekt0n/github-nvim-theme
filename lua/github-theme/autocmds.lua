local config = require('github-theme.config')

---@class gt.Autocmds
local M = {}

---Delete the autocmds when the theme changes to something else
M.on_colorscheme = function()
  if vim.g.colors_name ~= config.theme then
    vim.cmd('silent! autocmd! ' .. config.theme)
    vim.cmd('silent! augroup!' .. config.theme)
  end
end

M.viml_cmds = function()
  vim.cmd(string.format('augroup %s ', config.theme))
  vim.cmd('autocmd!')
  vim.cmd('autocmd ColorScheme * lua require("github-theme.autocmds").on_colorscheme()')
  if config.options.dev then
    vim.cmd(
      string.format(
        'autocmd BufWritePost */lua/github-theme/** nested colorscheme %s',
        config.theme
      )
    )
  end
  for _, sidebar in ipairs(config.options.sidebars) do
    if sidebar == 'terminal' then
      vim.cmd(
        'autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB'
      )
    else
      vim.cmd(
        string.format(
          'autocmd FileType %s setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB',
          sidebar
        )
      )
    end
  end
  vim.cmd('augroup end')
end

M.native_cmds = function()
  local group = vim.api.nvim_create_augroup(config.theme, { clear = false })

  -- Delete the github-theme autocmds when the theme changes to something else
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    group = group,
    callback = function()
      if vim.g.colors_name ~= config.theme then
        pcall(vim.api.nvim_del_augroup_by_id, group)
      end
    end,
  })

  if config.options.dev then
    -- Enables hot-reloading in github-nvim-theme.
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*/lua/github-theme/**',
      nested = true,
      group = group,
      callback = function()
        vim.cmd(string.format('colorscheme %s', config.theme))
      end,
    })
  end

  local func_winhightlight = function()
    vim.wo.winhighlight = 'Normal:NormalSB,SignColumn:SignColumnSB'
  end

  for _, sidebar in ipairs(config.options.sidebars) do
    if sidebar == 'terminal' then
      -- Set dark color for terminal background.,
      vim.api.nvim_create_autocmd('TermOpen', {
        pattern = '*',
        group = group,
        callback = function()
          func_winhightlight()
        end,
      })
    else
      -- Set dark color for custom sidebars background.
      vim.api.nvim_create_autocmd('FileType', {
        pattern = sidebar,
        group = group,
        callback = function()
          func_winhightlight()
        end,
      })
    end
  end
end

M.set = function()
  if vim.fn.has('nvim-0.7') == 1 then
    if not pcall(M.native_cmds) then
      M.viml_cmds()
    end
  else
    M.viml_cmds()
  end
end

return M

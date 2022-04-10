---@class gt.Autocmds
local autocmds = {}

---@type string
autocmds.colors_name = ''

---Delete the autocmds when the theme changes to something else
autocmds.on_colorscheme = function()
  if vim.g.colors_name ~= autocmds.colors_name then
    vim.cmd('silent! autocmd! ' .. autocmds.colors_name)
    vim.cmd('silent! augroup!' .. autocmds.colors_name)
  end
end

---@param config gt.ConfigSchema
---@param colors_name string
autocmds.viml_cmds = function(config, colors_name)
  autocmds.colors_name = colors_name
  vim.cmd(string.format('augroup %s ', autocmds.colors_name))
  vim.cmd('autocmd!')
  vim.cmd('autocmd ColorScheme * lua require("github-theme.autocmds").on_colorscheme()')
  if config.dev then
    vim.cmd(string.format('autocmd BufWritePost */lua/github-theme/** nested colorscheme %s', autocmds.colors_name))
  end
  for _, sidebar in ipairs(config.sidebars) do
    if sidebar == 'terminal' then
      vim.cmd('autocmd TermOpen * setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB')
    else
      vim.cmd(string.format('autocmd FileType %s setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB', sidebar))
    end
  end
  vim.cmd('augroup end')
end

---@param config gt.ConfigSchema
---@param colors_name string
autocmds.native_cmds = function(config, colors_name)
  autocmds.colors_name = colors_name
  local group = vim.api.nvim_create_augroup(autocmds.colors_name, { clear = false })

  -- Delete the github-theme autocmds when the theme changes to something else
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    group = group,
    callback = function()
      if vim.g.colors_name ~= autocmds.colors_name then
          pcall(vim.api.nvim_del_augroup_by_id, group)
      end
    end,
  })

  if config.dev then
    -- Enables hot-reloading in github-nvim-theme.
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*/lua/github-theme/**',
      nested = true,
      group = group,
      callback = function()
        vim.cmd(string.format('colorscheme %s', autocmds.colors_name))
      end,
    })
  end

  local func_winhightlight = function()
    vim.wo.winhighlight = 'Normal:NormalSB,SignColumn:SignColumnSB'
  end

  for _, sidebar in ipairs(config.sidebars) do
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

return autocmds

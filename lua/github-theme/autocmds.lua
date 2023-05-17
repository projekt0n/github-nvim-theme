local config = require('github-theme.config')

local M = {
  checked_autocmds = false,
}

M.set_autocmds = function()
  if M.checked_deprecation then
    return
  end

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

  local func_winhightlight = function()
    vim.wo.winhighlight = 'Normal:NormalSB,SignColumn:SignColumnSB'
  end

  for _, sidebar in ipairs(config.options.darken.sidebars.list) do
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

  M.checked_autocmds = true
end

return M

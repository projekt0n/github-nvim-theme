local api = vim.api
local M = {}

M.set_autocmds = function()
  local config = require('github-theme.config')
  local util = require('github-theme.util')
  local group = api.nvim_create_augroup(config.theme, { clear = true })
  local winhl = { Normal = 'NormalSB', SignColumn = 'SignColumnSB' }

  api.nvim_create_autocmd('ColorSchemePre', {
    desc = 'Cleanup (autocmds, etc.)',
    pattern = '*',
    group = group,
    once = true,
    callback = function(ev)
      pcall(api.nvim_del_augroup_by_id, ev.group)
    end,
  })

  for _, sidebar in ipairs(config.options.darken.sidebars.list) do
    if sidebar == 'terminal' then
      api.nvim_create_autocmd('TermOpen', {
        desc = 'Darken terminal bg',
        pattern = '*',
        group = group,
        callback = function()
          util.set_winhl(0, winhl)
        end,
      })
    else
      api.nvim_create_autocmd('FileType', {
        desc = 'Darken sidebar bg',
        pattern = sidebar,
        group = group,
        callback = function()
          util.set_winhl(0, winhl)
        end,
      })
    end
  end
end

return M

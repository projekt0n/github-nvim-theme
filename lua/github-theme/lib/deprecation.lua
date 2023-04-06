local M = {
  _list = {
    { '[github-nvim-theme]\n', 'Title' },
    { 'The following has been ' },
    { 'Deprecated:\n', 'WarningMsg' },
  },
  _has_registered = false,
}

function M.write(...)
  for _, e in ipairs({ ... }) do
    table.insert(M._list, type(e) == 'string' and { e } or e)
  end

  M._list[#M._list][1] = M._list[#M._list][1] .. '\n'

  if not M._has_registered then
    local gname = 'GithubThemeDeprecationMessage'
    local group = vim.api.nvim_create_augroup(gname, { clear = false })
    vim.api.nvim_create_autocmd('VimEnter', {
      pattern = '*',
      group = group,
      once = true,
      callback = M.flush,
    })
    M._has_registered = true
  end
end

function M.flush()
  M.write(
    'See ',
    { 'https://github.com/projekt0n/github-nvim-theme', 'Underlined' },
    ' for more information.'
  )
  vim.api.nvim_echo(M._list, true, {})
end

return M

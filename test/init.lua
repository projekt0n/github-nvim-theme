local status, error = pcall(function()
  local uv = vim.uv or vim.loop
  local root = vim.fn.fnamemodify('.repro', ':p')
  local lazypath = root .. '/plugins/lazy.nvim'
  for _, name in ipairs({ 'config', 'data', 'state', 'cache' }) do
    vim.env[('XDG_%s_HOME'):format(name:upper())] = root .. '/' .. name
  end

  ---@diagnostic disable-next-line: undefined-field
  if not uv.fs_stat(lazypath) then
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      lazypath,
    })
  end

  vim.opt.runtimepath:prepend(lazypath)

  require('lazy').setup({
    { 'projekt0n/github-nvim-theme' },
  }, {
    root = root .. '/plugins',
    dev = {
      path = debug.getinfo(1).source:sub(2, -29),
    },
  })

  require('github-theme').setup()
  vim.cmd.colorscheme('github_dark')
end)

if error then
  print(error)
end

vim.cmd(status and '0cq' or '1cq')

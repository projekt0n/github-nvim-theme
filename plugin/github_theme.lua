local api = vim.api

api.nvim_create_user_command('GithubThemeCompile', function(_info)
  require('github-theme').compile(true)
end, { desc = 'Forcefully recompile settings and persist to fs', force = true })

api.nvim_create_user_command('GithubThemeInteractive', function(_info)
  require('github-theme.interactive').attach()
end, { desc = 'Reload on buffer save', force = true })

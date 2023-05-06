lua << EOF

if vim.g.github_theme_debug then
  require("github-theme.util.reload")()
end
require('github-theme.config').set_theme('github_dark_dimmed')
require('github-theme').load()

EOF

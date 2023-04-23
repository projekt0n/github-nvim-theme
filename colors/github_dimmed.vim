lua << EOF

local dep = require('github-theme.lib.deprecation')
dep.write(
  ' Colorscheme ',
  { 'github_dimmed', 'WarningMsg' },
  ' has been deprecated.',
  ' Use ',
  { 'github_dark_dimmed', 'WarningMsg' },
  ' Instead. Refer to ',
  { ':h github-theme.changelog-23042023', 'WarningMsg' },
  ' for more info.'
)

require('github-theme.config').set_theme('github_dark_dimmed')
require('github-theme').load()

EOF

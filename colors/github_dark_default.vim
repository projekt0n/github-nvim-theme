lua << EOF

local dep = require('github-theme.lib.deprecation')
dep.write(
  ' Colorscheme ',
  { 'github_dark_default', 'WarningMsg' },
  ' has been deprecated.',
  ' Use ',
  { 'github_dark_high_contrast', 'WarningMsg' },
  ' Instead. Refer to ',
  { ':h github-theme.changelog-23042023', 'WarningMsg' },
  ' for more info.'
)

require('github-theme.config').set_theme('github_dark_high_contrast')
require('github-theme').load()

EOF

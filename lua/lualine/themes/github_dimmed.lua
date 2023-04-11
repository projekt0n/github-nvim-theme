local lualine = require('github-theme.plugins.lualine')

local c = require('github-theme.palette.dimmed')()
return lualine.build_lualine_theme(c)

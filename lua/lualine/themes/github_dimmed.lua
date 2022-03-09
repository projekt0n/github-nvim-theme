local colors = require('github-theme.colors')
local lualine = require('github-theme.plugins.lualine')

local c = colors.setup({ theme_style = 'dimmed' })
return lualine.build_lualine_theme(c)

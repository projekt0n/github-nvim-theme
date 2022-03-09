local colors = require('github-theme.colors')
local lualine = require('github-theme.plugins.lualine')

local c = colors.setup({ theme_style = 'dark_colorblind' })
return lualine.build_lualine_theme(c)

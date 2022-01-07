local config = require('github-theme.config')

local cfg = config.schema
local colors = require('github-theme.colors')(cfg)

return colors.lualine

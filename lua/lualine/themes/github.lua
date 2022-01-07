local config = require('github-theme.config')
local colors = require('github-theme.colors')

local cfg = config.schema
local c = colors.setup(cfg)

return c.lualine

local config_module = require('github-theme.config')

local config = config_module.config
local colors = require('github-theme.colors').setup(config)

return colors.lualine

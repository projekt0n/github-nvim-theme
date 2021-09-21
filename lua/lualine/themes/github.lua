local configModule = require("github-theme.config")

local config = configModule.config
local colors = require("github-theme.colors").setup(config)

return colors.lualine

package.path = './lua/?/init.lua;./lua/?.lua'

local types = require('github-theme.types')

---Write content to file.
---@param str string content of file.
---@param file_name string path of file.
local function write(str, file_name)
  print('[write]' .. file_name)
  local file = io.open(file_name, 'w')
  file:write(str)
  file:close()
end

for _, style in pairs(types.gt.ThemeStyle) do
  local config = { theme_style = style, transform_colors = true }
  for extra, ext in pairs(types.gt.TerminalConf) do
    local theme = require('github-theme.extra.' .. extra)
    local file_name = 'extras/' .. extra .. '/' .. style .. '.' .. ext
    write(theme(config), file_name)
  end
end

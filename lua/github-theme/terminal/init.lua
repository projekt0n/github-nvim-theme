package.path = './lua/?/init.lua;./lua/?.lua'

local types = require('github-theme.types')

---Write content to file.
---@param str string content of file.
---@param file_name string path of file.
local function write(str, file_name)
  print('[write]' .. file_name)
  local f = io.open(file_name, 'w')
  if f ~= nil then
    f:write(str)
    f:close()
  else
    print('[error]' .. file_name)
  end
end

for _, style in pairs(types.gt.ThemeStyle) do
  local config = { theme_style = style }
  for terminal, ext in pairs(types.gt.TerminalConf) do
    local theme = require('github-theme.terminal.' .. terminal)
    local extension = ext ~= '' and '.' .. ext or ''
    local file_name = 'terminal/' .. terminal .. '/github_' .. style .. extension
    write(theme(config), file_name)
  end
end

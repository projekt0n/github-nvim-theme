package.path = "./lua/?/init.lua;./lua/?.lua"

local configModule = require("github-theme.config")

local function write(str, fileName)
  print("[write]" .. fileName)
  local file = io.open(fileName, "w")
  file:write(str)
  file:close()
end

-- map of plugin name to plugin extension
local extras = {
  kitty = "conf",
  alacritty = "yml",
  iterm = "itermcolors",
  konsole = "colorscheme",
  tmux = "tmux"
}

for _, style in ipairs({"dark", "dimmed", "light"}) do
  configModule.themeStyle = style
  for extra, ext in pairs(extras) do
    local plugin = require("github-theme.extra." .. extra)
    local fileName = "extras/" .. extra .. "/" .. style .. "." .. ext
    write(plugin[extra](configModule), fileName)
  end
end

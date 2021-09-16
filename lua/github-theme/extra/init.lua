package.path = "./lua/?/init.lua;./lua/?.lua"

local configModule = require("github-theme.config")

local function write(str, fileName)
  print("[write]" .. fileName)
  local file = io.open(fileName, "w")
  file:write(str)
  file:close()
end

local extras = {kitty = "conf", alacritty = "yml", iterm = "itermcolors", konsole = "colorscheme"}
for _, style in ipairs({"dark", "dimmed", "light", "dark_default", "light_default"}) do
  configModule.theme_style = style
  for extra, ext in pairs(extras) do
    local plugin = require("github-theme.extra." .. extra)
    local fileName = "extras/" .. extra .. "/" .. style .. "." .. ext
    write(plugin[extra](configModule), fileName)
  end
end

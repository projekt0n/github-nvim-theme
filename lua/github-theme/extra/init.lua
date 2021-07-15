package.path = "./lua/?/init.lua;./lua/?.lua"

local configModule = require("github-theme.config")

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

local extras = {kitty = "conf", alacritty = "yml", iterm = "itermcolors"}
for _, style in ipairs({"dark", "dimmed", "light"}) do
  configModule.themeStyle = style
  for extra, ext in pairs(extras) do
    local plugin = require("github-theme.extra." .. extra)
    write(plugin[extra](configModule), extra .. "_github_" .. style .. "." .. ext)
  end
end

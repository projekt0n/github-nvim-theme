package.path = "./lua/?/init.lua;./lua/?.lua"

local config_module = require("github-theme.config")

local function write(str, file_name)
  print("[write]" .. file_name)
  local file = io.open(file_name, "w")
  file:write(str)
  file:close()
end

local extras = {
  kitty = "conf",
  alacritty = "yml",
  iterm = "itermcolors",
  konsole = "colorscheme",
  tmux = "tmux"
}
for _, style in ipairs({"dark", "dimmed", "light", "dark_default", "light_default"}) do
  config_module.theme_style = style
  for extra, ext in pairs(extras) do
    local plugin = require("github-theme.extra." .. extra)
    local file_name = "extras/" .. extra .. "/" .. style .. "." .. ext
    write(plugin[extra](config_module), file_name)
  end
end

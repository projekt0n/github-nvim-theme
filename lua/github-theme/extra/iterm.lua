local util = require("github-theme.util")
local configModule = require("github-theme.config")

local M = {}

---@param hex string
local rgb = function(hex)
  local _, redColor, greenColor, blueColor = hex:match("(.)(..)(..)(..)")
  redColor, greenColor, blueColor =
      string.format("%0.16f", (tonumber(redColor, 16) / 255)),
      string.format("%0.16f", (tonumber(greenColor, 16) / 255)),
      string.format("%0.16f", (tonumber(blueColor, 16) / 255))
  return {r = redColor, g = greenColor, b = blueColor}
end

---@param key string
---@param color string
local keyToXML = function(key, color)
  local xml = util.template([[
	<key>${k} Color</key>
]], {k = key:gsub("__", " ")})

  xml = xml .. util.template([[
	<dict>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Blue Component</key>
		<real>${b}</real>
		<key>Green Component</key>
		<real>${g}</real>
		<key>Red Component</key>
		<real>${r}</real>
	</dict>
]], color)

  return xml
end

---@param config Config
function M.iterm(config)
  config = config or configModule.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  local itermColor = {
    Ansi__0 = rgb(colors.black),
    Ansi__1 = rgb(colors.red),
    Ansi__2 = rgb(colors.green),
    Ansi__3 = rgb(colors.yellow),
    Ansi__4 = rgb(colors.blue),
    Ansi__5 = rgb(colors.magenta),
    Ansi__6 = rgb(colors.cyan),
    Ansi__7 = rgb(colors.fg_dark),
    Ansi__8 = rgb(colors.fg_dark),
    Ansi__9 = rgb(colors.brightRed),
    Ansi__10 = rgb(colors.brightGreen),
    Ansi__11 = rgb(colors.brightYellow),
    Ansi__12 = rgb(colors.brightBlue),
    Ansi__13 = rgb(colors.brightMagenta),
    Ansi__14 = rgb(colors.brightCyan),
    Ansi__15 = rgb(colors.term_fg),
    Background = rgb(colors.bg),
    Foreground = rgb(colors.fg),
    Cursor = rgb(colors.cursor),
    Cursor__Text = rgb(colors.bg),
    Selected__Text = rgb(colors.fg),
    Selection = rgb(colors.bg_visual_selection),
    Bold = rgb(colors.fg)
  }

  local iterm = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
]]

  for k, c in pairs(itermColor) do iterm = iterm .. keyToXML(k, c) end

  iterm = iterm .. [[
</dict>
</plist>
]]

  return iterm
end

return M

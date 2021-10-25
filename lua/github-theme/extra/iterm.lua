local util = require("github-theme.util")
local config_module = require("github-theme.config")

local M = {}

local rgb = function(hex)
  local _, r, g, b = hex:match("(.)(..)(..)(..)")
  r, g, b = string.format("%0.16f", (tonumber(r, 16) / 255)),
            string.format("%0.16f", (tonumber(g, 16) / 255)),
            string.format("%0.16f", (tonumber(b, 16) / 255))
  return {r = r, g = g, b = b}
end

local xml_from_color_group = function(key, color)
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

function M.iterm(config)
  config = config or config_module.config
  config.transform_colors = true
  local colors = require("github-theme.colors").setup(config)

  local groups = {
    Ansi__0 = rgb(colors.black),
    Ansi__1 = rgb(colors.red),
    Ansi__2 = rgb(colors.green),
    Ansi__3 = rgb(colors.yellow),
    Ansi__4 = rgb(colors.blue),
    Ansi__5 = rgb(colors.magenta),
    Ansi__6 = rgb(colors.cyan),
    Ansi__7 = rgb(colors.fg_dark),
    Ansi__8 = rgb(colors.fg_dark),
    Ansi__9 = rgb(colors.bright_red),
    Ansi__10 = rgb(colors.bright_green),
    Ansi__11 = rgb(colors.bright_yellow),
    Ansi__12 = rgb(colors.bright_blue),
    Ansi__13 = rgb(colors.bright_magenta),
    Ansi__14 = rgb(colors.bright_cyan),
    Ansi__15 = rgb(colors.term_fg),
    Background = rgb(colors.bg),
    Foreground = rgb(colors.fg),
    Cursor = rgb(colors.cursor),
    Cursor__Text = rgb(colors.bg),
    Selected__Text = rgb(colors.fg),
    Selection = rgb(colors.bg_visual_selection),
    Bold = rgb(colors.fg)
  }

  -- XML start
  local xml = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
]]

  -- appending color groups to XML
  for k, c in next, groups do xml = xml .. xml_from_color_group(k, c) end

  -- end
  xml = xml .. [[
</dict>
</plist>
]]

  return xml
end

return M

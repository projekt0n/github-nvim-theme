local gt = {}

---@class gt.ColorGroup table<string, string>
---@class gt.Palette table<string, string|gt.ColorGroup>

---@alias gt.ThemeStyle "'dark'" | "'dark_default'" | "'dimmed'" | "'light'" | "'light_default'"
gt.ThemeStyle = {}
gt.ThemeStyle.Dark = "dark"
gt.ThemeStyle.DarkDefault = "dark_default"
gt.ThemeStyle.Dimmed = "dimmed"
gt.ThemeStyle.Light = "light"
gt.ThemeStyle.LightDefault = "light_default"

return gt

---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or {g = {}, o = {}}

vim.g.github_theme_style = "dark"

config = {
  theme_style = vim.g.github_theme_style,
  dark_float = true,
  dark_sidebar = true,
  transparent = false,
  comment_style = "italic",
  keyword_style = "italic",
  function_style = "NONE",
  variable_style = "NONE",
  msg_area_style = "NONE",
  hide_inactive_statusline = false,
  hide_end_of_buffer = true,
  sidebars = {},
  colors = {},
  dev = false,
  transform_colors = false
}

---@param userConfig Config
local function applyConfiguration(userConfig)
  for key, value in pairs(userConfig) do
    if value ~= nil then
      if config[key] ~= nil then
        config[key] = value
        if key == "theme_style" and value ~= vim.g.github_theme_style then vim.g.github_theme_style = value end
      else
        error("projekt0n/github-nvim-theme: Option " .. key .. " does not exist") -- luacheck: ignore
      end
    end
  end
end

return {config = config, applyConfiguration = applyConfiguration}

---@class Config
local config

local vimConfig = false

local themeStyleKey = "github_theme_style"
-- shim vim for kitty and other generators
vim = vim or {g = {}, o = {}}

config = {
  themeStyle = "dark",
  transparent = false,
  commentStyle = "italic",
  keywordStyle = "italic",
  functionStyle = "NONE",
  variableStyle = "NONE",
  hideInactiveStatusline = false,
  sidebars = {},
  colors = {},
  dev = false,
  darkFloat = true,
  darkSidebar = true,
  transform_colors = false
}

---@param userConfig Config
local function applyConfiguration(userConfig)
  for key, value in pairs(userConfig) do
    if value ~= nil then
      if config[key] ~= nil then
        config[key] = value
        -- useful for `lualine`
        if key == "themeStyle" then vim.g[themeStyleKey] = value end
      else
        error("projekt0n/github-nvim-theme: Option " .. key .. " does not exist") -- luacheck: ignore
      end
    end
  end
end

-- @return string
local function getThemeStyle()
  if vim.g[themeStyleKey] == nil then
    return config.themeStyle
  else
    return vim.g[themeStyleKey]
  end

end
return {
  config = config,
  vimConfig = vimConfig,
  applyConfiguration = applyConfiguration,
  getThemeStyle = getThemeStyle
}

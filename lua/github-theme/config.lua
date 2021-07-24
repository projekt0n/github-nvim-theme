---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or {g = {}, o = {}}
vim.g.githubThemeStyle = "dark"

-- @return string
local function getThemeStyle()
  if vim.g.githubThemeStyle == nil then
    return config.themeStyle
  else
    return vim.g.githubThemeStyle
  end
end

config = {
  themeStyle = getThemeStyle(),
  transparent = false,
  commentStyle = "italic",
  keywordStyle = "italic",
  functionStyle = "NONE",
  variableStyle = "NONE",
  hideInactiveStatusline = false,
  hideEndOfBuffer = true,
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
        if key == "themeStyle" and value ~= vim.g.githubThemeStyle then
          vim.g.githubThemeStyle = value
        end
      else
        error("projekt0n/github-nvim-theme: Option " .. key .. " does not exist") -- luacheck: ignore
      end
    end
  end
end

return {
  config = config,
  applyConfiguration = applyConfiguration,
  getThemeStyle = getThemeStyle
}

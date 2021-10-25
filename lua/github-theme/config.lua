---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or {g = {}, o = {}}

local function opt(key, default)
  key = "github_" .. key
  if vim.g[key] == nil then
    vim.g[key] = default
    return default
  else
    if vim.g[key] == 1 then
      return true
    elseif vim.g[key] == 0 then
      return false
    else
      return vim.g[key]
    end
  end
end

config = {
  theme_style = opt("theme_style", "dark"),
  dark_float = opt("dark_float", false),
  dark_sidebar = opt("dark_sidebar", true),
  transparent = opt("transparent", false),
  comment_style = opt("comment_style", "italic"),
  keyword_style = opt("keyword_style", "italic"),
  function_style = opt("function_style", "NONE"),
  variable_style = opt("variable_style", "NONE"),
  msg_area_style = opt("msg_area_style", "NONE"),
  hide_inactive_statusline = opt("hide_inactive_statusline", true),
  hide_end_of_buffer = opt("hide_end_of_buffer", true),
  sidebars = opt("sidebars", {}),
  colors = opt("colors", {}),
  dev = opt("dev", false),
  transform_colors = false
}

-- setting light background
local light_background = {["light"] = true, ["light_default"] = true}

if light_background[config.theme_style] then vim.o.background = "light" end

---@param user_config Config
local function apply_configuration(user_config)
  for key, value in pairs(user_config) do
    if value ~= nil then
      if config[key] ~= nil then
        config[key] = value
      else
        error("projekt0n/github-nvim-theme: Config " .. key .. " does not exist") -- luacheck: ignore
      end
    end
  end
end

return {config = config, apply_configuration = apply_configuration}

local types = require('github-theme.types')

---@class gt.Config
local config = {}

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }
local key_prefix = 'github_'

local function opt(key, default)
  key = key_prefix .. key
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

---@type gt.ConfigSchema
config.schema = {
  colors = opt('colors', {}),
  comment_style = opt('comment_style', types.gt.HighlightStyle.Italic),
  dark_float = opt('dark_float', false),
  dark_sidebar = opt('dark_sidebar', true),
  dev = opt('dev', false),
  function_style = opt('function_style', types.gt.HighlightStyle.None),
  hide_end_of_buffer = opt('hide_end_of_buffer', true),
  hide_inactive_statusline = opt('hide_inactive_statusline', true),
  keyword_style = opt('keyword_style', types.gt.HighlightStyle.Italic),
  msg_area_style = opt('msg_area_style', types.gt.HighlightStyle.None),
  overrides = opt('overrides', function()
    return {}
  end),
  sidebars = opt('sidebars', {}),
  theme_style = opt('theme_style', types.gt.ThemeStyle.Dark),
  transform_colors = false,
  transparent = opt('transparent', false),
  variable_style = opt('variable_style', types.gt.HighlightStyle.None),
}

---Override user's configuration
---@param user_config gt.ConfigSchema
config.apply_configuration = function(user_config)
  --  `set background=light` for these themes
  local light_background = { light = true, light_default = true }
  for key, value in pairs(user_config) do
    if value ~= nil then
      if config.schema[key] ~= nil then
        -- override value
        config.schema[key] = value
        vim.g[key_prefix .. key] = value

        -- background set
        if key == 'theme_style' then
          if light_background[config.schema.theme_style] then
            vim.o.background = 'light'
          end
        end
      else
        error('projekt0n/github-nvim-theme: Config ' .. key .. ' does not exist') -- luacheck: ignore
      end
    end
  end
end

return config

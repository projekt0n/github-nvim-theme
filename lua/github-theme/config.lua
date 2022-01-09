local vim_config = require('github-theme.config.vim_config')
local default_config = require('github-theme.config.default')

---@class gt.Config
---@field schema gt.ConfigSchema
local config = {}

---Accessing global config using vim.g.github_* will help in autocompletion.

config.schema = {
  colors = vim_config.get(vim.g.github_colors, default_config.colors),
  comment_style = vim_config.get(vim.g.github_comment_style, default_config.comment_style),
  dark_float = vim_config.get(vim.g.github_dark_float, default_config.dark_float),
  dark_sidebar = vim_config.get(vim.g.github_dark_sidebar, default_config.dark_sidebar),
  dev = vim_config.get(vim.g.github_dev, default_config.dev),
  function_style = vim_config.get(vim.g.github_function_style, default_config.function_style),
  hide_end_of_buffer = vim_config.get(vim.g.github_hide_end_of_buffer, default_config.hide_end_of_buffer),
  hide_inactive_statusline = vim_config.get(vim.g.github_hide_inactive_statusline, default_config.hide_inactive_statusline),
  keyword_style = vim_config.get(vim.g.github_keyword_style, default_config.keyword_style),
  msg_area_style = vim_config.get(vim.g.github_msg_area_style, default_config.msg_area_style),
  overrides = vim_config.get(vim.g.github_overrides, default_config.overrides),
  sidebars = vim_config.get(vim.g.github_sidebars, default_config.sidebars),
  theme_style = vim_config.get(vim.g.github_theme_style, default_config.theme_style),
  transparent = vim_config.get(vim.g.github_transparent, default_config.transparent),
  variable_style = vim_config.get(vim.g.github_variable_style, default_config.variable_style),
}

---Override user's configuration
---@param user_config gt.ConfigSchema
config.apply_configuration = function(user_config)
  for key, value in pairs(user_config) do
    if value ~= nil then
      if config.schema[key] ~= nil then
        -- override value
        config.schema[key] = value
        vim_config.set(key, value)
      else
        error('config ' .. key .. ' does not exist') -- luacheck: ignore
      end
    end
  end
end

return config

---@class gt.VimConfig
local vim_config = {}

---Get value from vim's global (vim.g) table with 'github_' prefix.
---@return any
vim_config.get = function(value, default_value)
  if value == nil then
    return default_value
  else
    return value
  end
end

---Set value to vim's global (vim.g) table with 'github_' prefix.
---@param key string
---@param value any
vim_config.set = function(key, value)
  vim.g['github_' .. key] = value
end

return vim_config

local api = vim.api

---@class GhTheme.Util
---@field cache_home string
local M = {}

---Rounds a float to the nearest integer.
---@param x number Float
---@return number
function M.round(x)
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

---Clamps `value` between the min and max values.
---@param value number
---@param min number
---@param max number
function M.clamp(value, min, max)
  if value < min then
    return min
  elseif value > max then
    return max
  end
  return value
end

if jit ~= nil then
  M.is_windows = jit.os == 'Windows'
else
  M.is_windows = package.config:sub(1, 1) == '\\'
end

M.is_nvim = vim.fn.has('nvim') == 1
M.use_nvim_api = M.is_nvim and vim.fn.has('nvim-0.7') == 1

function M.get_tmp_dir()
  return M.is_windows and os.getenv('TMP') or '/tmp'
end

function M.get_separator()
  if M.is_windows then
    return '\\'
  end
  return '/'
end

function M.join_paths(...)
  local separator = M.get_separator()
  return table.concat({ ... }, separator)
end

function M.exists(path)
  local f = io.open(path, 'r')
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

function M.ensure_dir(path)
  if vim.fn.isdirectory(path) == 0 then
    vim.fn.mkdir(path, 'p')
  end
end

---Sets `winhl` without clobbering any existing mappings (i.e. of highlight groups not
---in `mappings`). Currently only supports setting `winhl` locally (which is likely what
---you want if the mappings are buffer-specific).
---@param win integer window to set the mappings on; use `0` for the current window
---@param mappings table<string, string|false>|false table of mappings to set (or clear if `false`)
function M.set_winhl(win, mappings)
  api.nvim_win_call(win == 0 and api.nvim_get_current_win() or win, function()
    if not mappings then
      -- Clear local mappings and use global values.
      vim.opt_local.winhl = nil
      return
    end

    local res = {}

    do
      -- NOTE: `lower()` is used here because highlight groups are case-insensitive and
      -- nvim does not account for this (e.g. when doing `vim.opt_local.winhl:append()`)
      local mappings_lower = {}
      for from, to in pairs(mappings) do
        local from_lower = from:lower()

        if mappings_lower[from_lower] then
          error('duplicate mapping: ' .. from)
        end

        -- Coerce false to `nil` (`false` clears a mapping).
        res[from], mappings_lower[from_lower] = to or nil, true
      end

      for old_from, old_to in pairs(vim.opt_local.winhl:get()) do
        if mappings_lower[old_from:lower()] == nil then
          res[old_from] = old_to
        end
      end
    end

    vim.opt_local.winhl = res
  end)
end

setmetatable(M, {
  __index = function(_, k)
    if k == 'cache_home' then
      return vim.fn.stdpath('cache')
    end
  end,
})

return M

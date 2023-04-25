local M = {}

---Round float to nearest int
---@param x number Float
---@return number
function M.round(x)
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

---Clamp value between the min and max values.
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

M.cache_home = vim.fn.stdpath('cache')

return M

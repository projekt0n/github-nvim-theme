local M = {}

---@type table<number, string>
M.used_color = {}

---@type string
M.bg = '#000000'

---@type string
M.fg = '#ffffff'

---Convert HexColor to RGB
---@param hex_str string
---@return table<number, number>
local hex_to_rgb = function(hex_str)
  local hex = '[abcdef0-9][abcdef0-9]'
  local pat = string.format('^#(%s)(%s)(%s)$', hex, hex, hex)
  hex_str = string.lower(hex_str)

  assert(
    string.find(hex_str, pat) ~= nil,
    'hex_to_rgb: invalid hex_str: ' .. tostring(hex_str)
  )

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
---@return string
M.blend = function(fg, bg, alpha)
  local bg_rgb = hex_to_rgb(bg)
  local fg_rgb = hex_to_rgb(fg)

  local blend_channel = function(i)
    local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format(
    '#%02X%02X%02X',
    blend_channel(1),
    blend_channel(2),
    blend_channel(3)
  )
end

---@param hex string Color
---@param amount number number between 0 and 1. 0 results in bg, 1 results in fg
---@param bg string? Background color
---@return string?
M.darken = function(hex, amount, bg)
  return M.blend(hex, bg or M.bg, math.abs(amount))
end

---@param hex string Color
---@param amount number number between 0 and 1. 0 results in bg, 1 results in fg
---@param fg string? Foreground color
---@return string
M.lighten = function(hex, amount, fg)
  return M.blend(hex, fg or M.fg, math.abs(amount))
end

---Dump unused colors
---@param colors gt.ColorPalette
M.debug = function(colors)
  for name, color in pairs(colors) do
    if type(color) == 'table' then
      M.debug(color)
    else
      if M.used_color[color] == nil then
        print(string.format('not used color: %s=%s', name, color))
      end
    end
  end
end

---@param hi_name string
---@param hi
M.highlight = function(hi_name, hi)
  if hi.fg then
    M.used_color[hi.fg] = true
  end
  if hi.bg then
    M.used_color[hi.bg] = true
  end
  if hi.sp then
    M.used_color[hi.sp] = true
  end

  local style = hi.style and 'gui=' .. hi.style or 'gui=NONE'
  local fg = hi.fg and 'guifg=' .. hi.fg or 'guifg=NONE'
  local bg = hi.bg and 'guibg=' .. hi.bg or 'guibg=NONE'
  local sp = hi.sp and 'guisp=' .. hi.sp or ''

  local hi_cmd = string.format('highlight %s %s %s %s %s', hi_name, style, fg, bg, sp)

  if hi.link then
    vim.cmd(string.format('highlight! link %s %s', hi_name, hi.link))
  else
    -- local data = {}
    -- if color.fg then data.foreground = color.fg end
    -- if color.bg then data.background = color.bg end
    -- if color.sp then data.special = color.sp end
    -- if color.style then data[color.style] = true end
    -- vim.api.nvim_set_hl(ns, group, data)
    vim.cmd(hi_cmd)
  end
end

---@param base gt.Highlights.Base|gt.Highlights.Plugins
M.syntax = function(base)
  for hi_name, hi in pairs(base) do
    M.highlight(hi_name, hi)
  end
end

---@param colors gt.ColorPalette
M.terminal = function(colors)
  -- dark
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.bright_black
  -- light
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_15 = colors.bright_white
  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.bright_red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.bright_green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.bright_yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.bright_blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.bright_magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.bright_cyan
end

---Override custom highlights in `group`
---@param group table
---@param overrides table
---@param force boolean
M.apply_overrides = function(group, overrides, force)
  for k, v in pairs(overrides) do
    if type(v) == 'table' and group[k] ~= nil or force then
      group[k] = v
    end
  end
end

---@param colors gt.ColorPalette
---@param oride_colors gt.ColorPalette
---@return gt.ColorPalette
function M.color_overrides(colors, oride_colors)
  if type(oride_colors) == 'table' then
    for key, value in pairs(oride_colors) do
      local err_msg = string.format('color "%s" does not exist', key)

      if not colors[key] then
        error(err_msg)
      end
      -- Patch: https://github.com/ful1e5/onedark.nvim/issues/6
      if type(colors[key]) == 'table' then
        M.color_overrides(colors[key], value)
      else
        if value:lower() == 'none' then
          -- set to none
          colors[key] = 'NONE'
        elseif string.sub(value, 1, 1) == '#' then
          -- hex override
          colors[key] = value
        else
          -- another group
          if not colors[value] then
            error(err_msg)
          end
          colors[key] = colors[value]
        end
      end
    end
  end
  return colors
end

-- TODO: Move to util/init.lua

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

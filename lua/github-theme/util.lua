local types = require('github-theme.types')

---@class gt.Util
local util = {}

---@type string
util.colors_name = ''

---@type table<number, string>
util.used_color = {}

---@type string
util.bg = '#000000'

---@type string
util.fg = '#ffffff'

---Convert HexColor to RGB
---@param hex_str string
---@return table<number, number>
local hex_to_rgb = function(hex_str)
  local hex = '[abcdef0-9][abcdef0-9]'
  local pat = string.format('^#(%s)(%s)(%s)$', hex, hex, hex)
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, 'hex_to_rgb: invalid hex_str: ' .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
---@return string
util.blend = function(fg, bg, alpha)
  bg = hex_to_rgb(bg)
  fg = hex_to_rgb(fg)

  local blend_channel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02X%02X%02X', blend_channel(1), blend_channel(2), blend_channel(3))
end

---@param hex string Color
---@param amount number number between 0 and 1. 0 results in bg, 1 results in fg
---@param bg string? Background color
---@return string?
util.darken = function(hex, amount, bg)
  return util.blend(hex, bg or util.bg, math.abs(amount))
end

---@param hex string Color
---@param amount number number between 0 and 1. 0 results in bg, 1 results in fg
---@param fg string? Foreground color
---@return string
util.lighten = function(hex, amount, fg)
  return util.blend(hex, fg or util.fg, math.abs(amount))
end

---Dump unused colors
---@param colors gt.ColorPalette
util.debug = function(colors)
  for name, color in pairs(colors) do
    if type(color) == 'table' then
      util.debug(color)
    else
      if util.used_color[color] == nil then
        print(string.format('not used color: %s=%s', name, color))
      end
    end
  end
end

---@param hi_name string
---@param hi gt.Highlight|gt.LinkHighlight
util.highlight = function(hi_name, hi)
  if hi.fg then
    util.used_color[hi.fg] = true
  end
  if hi.bg then
    util.used_color[hi.bg] = true
  end
  if hi.sp then
    util.used_color[hi.sp] = true
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

---@param base gt.Highlights.Base
util.syntax = function(base)
  for hi_name, hi in pairs(base) do
    util.highlight(hi_name, hi)
  end
end

---@param colors gt.ColorPalette
util.terminal = function(colors)
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
util.apply_overrides = function(group, overrides, force)
  for k, v in pairs(overrides) do
    if type(v) == 'table' and group[k] ~= nil or force then
      group[k] = v
    end
  end
end

---@param hi gt.Highlights
util.load = function(hi)
  local theme_style = hi.config.theme_style
  util.colors_name = 'github_' .. theme_style

  --Setting
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  if theme_style == 'light' or theme_style == 'light_default' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
  vim.g.colors_name = util.colors_name

  -- override colors
  local overrides = hi.config.overrides(hi.colors)
  util.apply_overrides(hi.base, overrides, hi.config.dev)
  util.apply_overrides(hi.plugins, overrides, hi.config.dev)

  local autocmds = require('github-theme.autocmds')
  --Load ColorScheme
  util.syntax(hi.base)
  autocmds.set(hi.config, util.colors_name)
  util.terminal(hi.colors)
  util.syntax(hi.plugins)
end

---@param colors gt.ColorPalette
---@param oride_colors gt.ColorPalette
---@return gt.ColorPalette
function util.color_overrides(colors, oride_colors)
  if type(oride_colors) == 'table' then
    for key, value in pairs(oride_colors) do
      local err_msg = string.format('color "%s" does not exist', key)

      if not colors[key] then
        error(err_msg)
      end
      -- Patch: https://github.com/ful1e5/onedark.nvim/issues/6
      if type(colors[key]) == 'table' then
        util.color_overrides(colors[key], value)
      else
        if value:lower() == types.gt.HighlightStyle.None:lower() then
          -- set to none
          colors[key] = types.gt.HighlightStyle.None
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

---Simple string interpolation.
---
---Example template: "${name} is ${value}"
---
---@param str string template string
---@param table table key value pairs to replace in the string
util.template = function(str, table)
  return (str:gsub('($%b{})', function(w)
    return table[w:sub(3, -2)] or w
  end))
end

return util

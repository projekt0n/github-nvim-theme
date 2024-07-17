---@param expected string
---@param actual any
---@param lvl? number
---@return any never
local function throw(expected, actual, lvl)
  error(('expected %s but got: %s'):format(expected, vim.inspect(actual)), (lvl or 1) + 1)
end

---Round a float to the nearest integer.
---@param f number Float
---@return number
---@nodiscard
local function round(f)
  return f >= 0 and math.floor(f + 0.5) or math.ceil(f - 0.5)
end

---Clamp a `value` between `min` and `max`.
---@param value number
---@param min number
---@param max number
---@return number
---@nodiscard
local function clamp(value, min, max)
  if value < min then
    return min
  elseif value > max then
    return max
  end
  return value
end

--#region Types ----------------------------------------------------------------

---RGBA color representation stored in float [0,1]
---@class GhTheme.Color.RGBA
---@field red number [0,255]
---@field green number [0,255]
---@field blue number [0,255]
---@field alpha number [0,1]

---@class GhTheme.Color.HSL
---@field hue number Float [0,360)
---@field saturation number Float [0,100]
---@field lightness number Float [0,100]

---@class GhTheme.Color.HSV
---@field hue number Float [0,360)
---@field saturation number Float [0,100]
---@field value number Float [0,100]

--#endregion

--#region Helpers --------------------------------------------------------------
local bitop = _G.bit or _G.bit32

---@param r number
---@param g number
---@param b number
---@nodiscard
local function calc_hue(r, g, b)
  local max = math.max(r, g, b)
  local min = math.min(r, g, b)
  local delta = max - min
  local h = 0

  if max == min then
    h = 0
  elseif max == r then
    h = 60 * ((g - b) / delta)
  elseif max == g then
    h = 60 * ((b - r) / delta + 2)
  elseif max == b then
    h = 60 * ((r - g) / delta + 4)
  end

  if h < 0 then
    h = h + 360
  end

  return { hue = h, max = max, min = min, delta = delta }
end

--#endregion

---@alias GhTheme.Color.CSSHexString string # A CSS hex color string (i.e. `"#RRGGBB[AA]"`)
---@alias GhTheme.ColorDef GhTheme.Color.CSSHexString|number|GhTheme.Color.RGBA|GhTheme.Color.HSV|GhTheme.Color.HSL

---Color instance
---@class GhTheme.Color
---@field WHITE GhTheme.Color
---@field BLACK GhTheme.Color
---@field BG GhTheme.Color
local Color = {}
rawset(Color, '__index', Color)
rawset(Color, '__tostring', function(self)
  return self:to_css()
end)

---Color class
---@class GhTheme.Color.Static
---@overload fun(color: GhTheme.ColorDef): GhTheme.Color
local M = setmetatable(Color --[[@as GhTheme.Color.Static]], {
  __call = function(self, ...)
    return self.new(...)
  end,
})

---@param color GhTheme.ColorDef
---@return GhTheme.Color
---@nodiscard
function M.new(color)
  local ty = type(color)

  if ty == 'string' or ty == 'number' then
    return M.from_hex(color)
  elseif ty == 'table' then
    if color.red then
      return M.from_rgba(color.red, color.green, color.blue, color.alpha)
    elseif color.value then
      return M.from_hsv(color.hue, color.saturation, color.value)
    elseif color.lightness then
      return M.from_hsl(color.hue, color.saturation, color.lightness)
    end
  end

  return throw('color specification', color)
end

---@private
---@param r number
---@param g number
---@param b number
---@param a? number
---@return GhTheme.Color
---@nodiscard
function M.init(r, g, b, a)
  ---@class GhTheme.Color
  local self = setmetatable({}, M --[[@as table]])
  self.red = clamp(r, 0, 1)
  self.green = clamp(g, 0, 1)
  self.blue = clamp(b, 0, 1)
  self.alpha = clamp(a or 1, 0, 1)
  return self
end

--#region from_* ---------------------------------------------------------------

---Construct a Color instance from RGB[A] (0 - 255).
---@param r number Integer [0,255]
---@param g number Integer [0,255]
---@param b number Integer [0,255]
---@param a? number Float [0,1]
---@return GhTheme.Color
---@nodiscard
function M.from_rgba(r, g, b, a)
  return M.init(r / 0xff, g / 0xff, b / 0xff, a or 1)
end

---Construct a Color instance from a hex string or number.
---@param c number|GhTheme.Color.CSSHexString number or CSS hex string (i.e. '"#RRGGBB[AA]"')
---@return GhTheme.Color
---@nodiscard
function M.from_hex(c)
  local n = c

  if type(c) == 'string' then
    local s = c:lower():match('#?([a-f0-9]+)') or throw('number or hex string', c)
    n = tonumber(s, 16)
    if #s <= 6 then
      n = bitop.lshift(n, 8) + 0xff
    end
  elseif type(c) ~= 'number' then
    throw('number or hex string', c)
  end

  ---@cast n -string
  return M.init(
    bitop.rshift(n, 24) / 0xff,
    bitop.band(bitop.rshift(n, 16), 0xff) / 0xff,
    bitop.band(bitop.rshift(n, 8), 0xff) / 0xff,
    bitop.band(n, 0xff) / 0xff
  )
end

---Construct a Color instance from HSV[A].
---@param h number Hue. Float [0,360]
---@param s number Saturation. Float [0,100]
---@param v number Value. Float [0,100]
---@param a number? (Optional) Alpha. Float [0,1]
---@return GhTheme.Color
---@nodiscard
function M.from_hsv(h, s, v, a)
  h = h % 360
  s = clamp(s, 0, 100) / 100
  v = clamp(v, 0, 100) / 100
  a = clamp(a or 1, 0, 1)

  ---@param n number
  ---@return number
  local function f(n)
    local k = (n + h / 60) % 6
    return v - v * s * math.max(math.min(k, 4 - k, 1), 0)
  end

  return M.init(f(5), f(3), f(1), a)
end

---Construct a Color instance from HSL[A].
---@param h number Hue. Float [0,360]
---@param s number Saturation. Float [0,100]
---@param l number Lightness. Float [0,100]
---@param a number? (Optional) Alpha. Float [0,1]
---@return GhTheme.Color
---@nodiscard
function M.from_hsl(h, s, l, a)
  h = h % 360
  s = clamp(s, 0, 100) / 100
  l = clamp(l, 0, 100) / 100
  a = clamp(a or 1, 0, 1)
  local _a = s * math.min(l, 1 - l)

  ---@param n number
  ---@return number
  local function f(n)
    local k = (n + h / 30) % 12
    return l - _a * math.max(math.min(k - 3, 9 - k, 1), -1)
  end

  return M.init(f(0), f(8), f(4), a)
end

--#endregion

--#region to_* -----------------------------------------------------------------

---Convert to RGBA table.
---@return GhTheme.Color.RGBA
---@nodiscard
function Color:to_rgba()
  return {
    red = round(self.red * 0xff),
    green = round(self.green * 0xff),
    blue = round(self.blue * 0xff),
    alpha = self.alpha,
  }
end

---Convert to HSV table.
---@return GhTheme.Color.HSV
---@nodiscard
function Color:to_hsv()
  local res = calc_hue(self.red, self.green, self.blue)
  local h, min, max = res.hue, res.min, res.max
  local s, v = 0, max

  if max ~= 0 then
    s = (max - min) / max
  end

  return { hue = h, saturation = s * 100, value = v * 100 }
end

---Convert to HSL table.
---@return GhTheme.Color.HSL
---@nodiscard
function Color:to_hsl()
  local res = calc_hue(self.red, self.green, self.blue)
  local h, min, max = res.hue, res.min, res.max
  local s, l = 0, (max + min) / 2

  if max ~= 0 and min ~= 1 then
    s = (max - l) / math.min(l, 1 - l)
  end

  return { hue = h, saturation = s * 100, lightness = l * 100 }
end

---Convert to a hex number representation (`0xRRGGBB[AA]`).
---@param with_alpha? boolean Include the alpha component.
---@return integer
---@nodiscard
function Color:to_hex(with_alpha)
  local ls, bor, fl = bitop.lshift, bitop.bor, math.floor
  local n = bor(
    bor(ls(fl((self.red * 0xff) + 0.5), 16), ls(fl((self.green * 0xff) + 0.5), 8)),
    fl((self.blue * 0xff) + 0.5)
  )
  return with_alpha and bitop.lshift(n, 8) + (self.alpha * 0xff) or n
end

---Convert to a css hex color string (i.e. `"#RRGGBB[AA]"`).
---@param with_alpha? boolean Include the alpha component.
---@return GhTheme.Color.CSSHexString
---@nodiscard
function Color:to_css(with_alpha)
  local n = self:to_hex(with_alpha)
  local l = with_alpha and 8 or 6
  return string.format('#%0' .. l .. 'x', n)
end

---Convert to a css hex color string (i.e. `"#RRGGBB"`).
---@return GhTheme.Color.CSSHexString
---@nodiscard
function Color:to_string()
  return tostring(self)
end

---Returns the relative luminance.
---https://www.w3.org/TR/2008/REC-WCAG20-20081211/#relativeluminancedef
---@return number
---@nodiscard
function Color:luminance()
  local r, g, b = self.red, self.green, self.blue
  r = (r > 0.04045) and ((r + 0.055) / 1.055) ^ 2.4 or (r / 12.92)
  g = (g > 0.04045) and ((g + 0.055) / 1.055) ^ 2.4 or (g / 12.92)
  b = (b > 0.04045) and ((b + 0.055) / 1.055) ^ 2.4 or (b / 12.92)

  return 0.2126 * r + 0.7152 * g + 0.0722 * b
end

--#endregion

--#region Manipulate -----------------------------------------------------------

---Returns a new Color that is a linear blend between `self` and `other`.
---@param other GhTheme.Color
---@param f number Float [0,1] where 0 is `self` and 1 is `other`
---@return GhTheme.Color
---@nodiscard
function Color:blend(other, f)
  return M.init(
    (other.red - self.red) * f + self.red,
    (other.green - self.green) * f + self.green,
    (other.blue - self.blue) * f + self.blue,
    self.alpha
  )
end

---Returns a new Color that is a linear blend between `Color.BG` and `self`.
---@param f number Float [0,1] where 0 is `Color.BG` and 1 is `self`
---@return GhTheme.Color
---@nodiscard
function Color:alpha_blend(f)
  return M.init(
    (self.red - self.BG.red) * f + self.BG.red,
    (self.green - self.BG.green) * f + self.BG.green,
    (self.blue - self.BG.blue) * f + self.BG.blue,
    self.alpha
  )
end

---Returns a new Color which is `self` shaded according to `f`.
---@param f number Amount. Float [-1,1]. -1 is black and 1 is white
---@return GhTheme.Color
---@nodiscard
function Color:shade(f)
  local t = f < 0 and 0 or 1.0
  local p = f < 0 and f * -1.0 or f

  return M.init(
    (t - self.red) * p + self.red,
    (t - self.green) * p + self.green,
    (t - self.blue) * p + self.blue,
    self.alpha
  )
end

---Adds value of `v` to the `value` of the current color. Returns a new Color
---that is either a brighter version (v >= 0), or darker (v < 0).
---@param v number Value. Float [-100,100].
---@return GhTheme.Color
---@nodiscard
function Color:brighten(v)
  local hsv = self:to_hsv()
  local value = clamp(hsv.value + v, 0, 100)
  return M.from_hsv(hsv.hue, hsv.saturation, value)
end

---Adds value of `v` to the `lightness` of the current color. Returns a new Color
---that is either a lighter version if +v and darker if -v.
---@param v number Lightness. Float [-100,100].
---@return GhTheme.Color
---@nodiscard
function Color:lighten(v)
  local hsl = self:to_hsl()
  local lightness = clamp(hsl.lightness + v, 0, 100)
  return M.from_hsl(hsl.hue, hsl.saturation, lightness)
end

---Adds value of `v` to the `saturation` of the current color. Returns a new Color
---that is either more or less saturated depending on +/- `v`.
---@param v number Saturation. Float [-100,100].
---@return GhTheme.Color
---@nodiscard
function Color:saturate(v)
  local hsv = self:to_hsv()
  local saturation = clamp(hsv.saturation + v, 0, 100)
  return M.from_hsv(hsv.hue, saturation, hsv.value)
end

---Adds value of `v` to the `hue` of the current color. Returns a new Color where
---the hue is rotated based on +/- of `v`. Resulting `hue` is wrapped [0,360].
---@param v number amount
---@return GhTheme.Color
---@nodiscard
function Color:rotate(v)
  local hsv = self:to_hsv()
  local hue = (hsv.hue + v) % 360
  return M.from_hsv(hue, hsv.saturation, hsv.value)
end

--#endregion

--#region Constants ------------------------------------------------------------

M.WHITE = M.init(1, 1, 1, 1)
M.BLACK = M.init(0, 0, 0, 1)
M.BG = M.init(0, 0, 0, 1)

--#endregion

--#region ty --------------------------------------------------------------

---Returns the contrast ratio of `self` over `other`.
---@param other GhTheme.Color
---@return number
---@nodiscard
function Color:contrast(other)
  local l1 = self:luminance()
  local l2 = other:luminance()
  if l2 > l1 then
    l1, l2 = l2, l1
  end
  return (l1 + 0.05) / (l2 + 0.05)
end

---Returns whether `self` meets the [WCAG Contrast (Minimum) (Level AA)](https://www.w3.org/WAI/WCAG22/Understanding/contrast-minimum.html).
---@param background GhTheme.Color background to check against
---@return boolean, number
---@nodiscard
function Color:valid_wcag_aa(background)
  local ratio = self:contrast(background)
  return ratio >= 4.5, ratio
end

--#endregion

return M

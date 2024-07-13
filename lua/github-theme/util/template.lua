local M = {}

---Walks/resolves keypath (one.two.three) against a table and returns the result.
---@param t table
---@param keypath string
---@return any
local function get_keypath(t, keypath)
  for segment in keypath:gmatch('[^.]+') do
    if type(t) ~= 'table' then
      return t
    end

    t = t[segment]
  end

  return t
end

---Parses and resolves keypath string for configuration template.
---@param str string
---@param spec Spec
---@return any
local function parse_keypath(str, spec)
  if type(str) ~= 'string' or str == '' or str:find('^#') then
    return str
  end

  local path = get_keypath(spec, str)
  return path and (path.base or path) or str
end

---Resolves any and all placeholders in a template (table).
---@param template table a table holding placeholders
---@param spec table a table to resolve placeholders against
---@return table # a new table where all placeholders have been resolved/replaced
function M.parse(template, spec)
  local result = {}

  for group, opts in pairs(template) do
    if type(opts) == 'table' then
      local new = {}

      for key, value in pairs(opts) do
        new[key] = parse_keypath(value, spec)
      end

      result[group] = new
    else
      result[group] = parse_keypath(opts, spec)
    end
  end

  return result
end

function M.parse_template_str(template, spec)
  return (
    template:gsub('($%b{})', function(w)
      local path = w:sub(3, -2)
      local value = get_keypath(spec, path) or w
      if type(value) == 'table' then
        return value.base and value.base or value
      else
        return value or w
      end
    end)
  )
end

return M

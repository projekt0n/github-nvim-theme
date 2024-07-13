local collect = require('github-theme.lib.collect')
local M = {}

function M.reset()
  getmetatable(M).__index =
    { palettes = {}, specs = {}, groups = {}, has_override = false }
  return M
end

function M.hash()
  return require('github-theme.lib.hash')(getmetatable(M).__index) or 0
end

local function check_link(tbl)
  for _, theme in pairs(tbl) do
    for _, opts in pairs(theme) do
      opts.link = opts.link or ''
    end
  end
end

setmetatable(M, {
  __newindex = function(self, k, v)
    local store = getmetatable(self).__index
    if type(store[k]) == 'table' then
      if not v then
        store[k] = {}
        return
      end
      if k == 'groups' then
        check_link(v)
      end
      store[k] = collect.deep_extend(store[k], v)
      store.has_override = true
    end
  end,
})

return M.reset()

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

---Extends `groups` with `overrides`. `groups` is modified in-place.
---@generic T: table<string, table|false>
---@param groups T a table of highlight groups
---@param overrides T | nil
---@param nullval any the marker to use for cleared groups
---@return T groups
function M.extend_groups(groups, overrides, nullval)
  for grp_name, grp in pairs(overrides or {}) do
    if grp == false or next(grp) == nil then
      -- clear the group
      groups[grp_name] = nullval
    else
      -- `link` is not compatible with other settings
      if grp.link then
        groups[grp_name] = { link = grp.link }
      else
        groups[grp_name] = vim.tbl_deep_extend('force', groups[grp_name] or {}, grp)

        -- Clear previous `link`, or `grp.link = false`
        groups[grp_name].link = nil
      end
    end
  end

  return groups
end

setmetatable(M, {
  __newindex = function(self, k, v)
    local store = getmetatable(self).__index

    if type(store[k]) == 'table' then
      if not v then
        store[k] = {}
      elseif k == 'groups' then
        for theme, grps in pairs(v) do
          store.groups[theme] = store.groups[theme] or {}
          M.extend_groups(store.groups[theme], grps, false)
        end
      else
        store[k] = vim.tbl_deep_extend('force', store[k], v)
      end
    end
  end,
})

return M.reset()

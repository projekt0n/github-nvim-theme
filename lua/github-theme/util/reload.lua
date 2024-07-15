---@param force? boolean
local function reload(force)
  for name, _ in pairs(_G.package.loaded) do
    if name:find('^github%-theme') then
      if
        force
        or (
          not name:find('config')
          and not name:find('deprecation')
          and not name:find('override')
        )
      then
        _G.package.loaded[name] = nil
      end
    end
  end
end

return setmetatable({}, {
  __call = function(_, ...)
    reload(...)
  end,
})

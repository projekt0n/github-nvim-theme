---Reloads github-theme Lua modules, skipping those which don't typically need to be
---reloaded. Does not clear config unless `force` is true.
---@param force? boolean reload ALL github-theme Lua modules (also clears config)
return function(force)
  local pat = vim.regex([==[\.config\|\.deprecation\|\.override\|\.interactive]==])

  for name, _ in pairs(_G.package.loaded) do
    if name:find('^github%-theme') and (force or not pat:match_str(name)) then
      _G.package.loaded[name] = nil
    end
  end
end

local collect = require('github-theme.lib.collect')
local template = require('github-theme.util.template')
local override = require('github-theme.override')
local M = {}

function M.from(spec)
  local config = require('github-theme.config').options

  if not spec then
    print('there is no spec')
  end
  local editor = require('github-theme.group.editor').get(spec, config)
  local syntax = require('github-theme.group.syntax').get(spec, config)

  local res = collect.deep_extend(editor, syntax)

  local default_enable_value = config.module_default
  local mod_names = require('github-theme.config').module_names
  for _, name in ipairs(mod_names) do
    local kind = type(config.modules[name])
    local opts = kind == 'boolean' and { enable = config.modules[name] }
      or kind == 'table' and config.modules[name]
      or {}
    opts.enable = opts.enable == nil and default_enable_value or opts.enable

    if opts.enable then
      res = collect.deep_extend(
        res,
        require('github-theme.group.modules.' .. name).get(spec, config, opts)
      )
    end
  end

  local ovr = override.groups

  if ovr.all then
    override.extend_groups(res, template.parse(ovr.all, spec), {})
  end

  if ovr[spec.palette.meta.name] then
    override.extend_groups(res, template.parse(ovr[spec.palette.meta.name], spec), {})
  end

  return res
end

function M.load(name)
  name = name or require('github-theme.config').theme
  return M.from(require('github-theme.spec').load(name))
end

return M

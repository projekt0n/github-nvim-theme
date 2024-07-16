local assert = require('luassert')
local t_util = require('github-theme._test.util')
local uniqgrp = t_util.unique_hlgroup

if vim.fn.has('nvim-0.9.0') == 0 or vim.fn.has('nvim-0.9.0') == false then
  return
end

describe('compiler', function()
  before_each(function()
    require('github-theme.util.reload')(true)
  end)

  it('should consider previously-set overrides (1)', function()
    local same_opts = {}
    require('github-theme').setup(same_opts)
    require('github-theme.override').groups = { all = { Normal = { link = uniqgrp } } }
    require('github-theme').setup(same_opts)
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({ link = uniqgrp }, t_util.get_hl('Normal', true))
  end)

  it('should consider previously-set overrides (2)', function()
    require('github-theme').setup({})
    require('github-theme.override').groups = { all = { Normal = { link = uniqgrp } } }
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({ link = uniqgrp }, t_util.get_hl('Normal', true))
  end)
end)

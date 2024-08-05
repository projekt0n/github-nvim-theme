local assert = require('luassert')
local t_util = require('github-theme._test.util')

if vim.fn.has('nvim-0.9.0') == 0 or vim.fn.has('nvim-0.9.0') == false then
  return
end

describe('config > groups', function()
  before_each(function()
    require('github-theme.util.reload')(true)
  end)

  it('should allow clearing a group via empty table (1)', function()
    require('github-theme').setup({ groups = { all = { Normal = {} } } })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({}, t_util.get_hl('Normal'))
  end)

  it('should allow clearing a group via empty table (2)', function()
    require('github-theme').setup({
      groups = {
        github_dark_dimmed = { Normal = {} },
        all = { Normal = { fg = '#123456', bg = '#654321' } },
      },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({}, t_util.get_hl('Normal'))
  end)

  it('clearing group combines properly with more-specific overrides', function()
    require('github-theme').setup({
      groups = {
        github_dark_dimmed = { Normal = { fg = '#123456', bg = '#654321' } },
        all = { Normal = {} },
      },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same(
      { fg = tonumber('123456', 16), bg = tonumber('654321', 16) },
      t_util.get_hl('Normal')
    )
  end)

  it('should allow overriding a group', function()
    require('github-theme').setup({
      groups = { all = { Normal = { fg = '#123456', bg = '#654321' } } },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same(
      { fg = tonumber('123456', 16), bg = tonumber('654321', 16) },
      t_util.get_hl('Normal')
    )
  end)

  it('overriding group combines properly with more-specific overrides (1)', function()
    require('github-theme').setup({
      groups = {
        github_dark_dimmed = { Normal = { fg = '#123456', bg = '#654321' } },
        all = { Normal = { link = 'NormalNC' } },
      },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('Normal', true).link)
  end)

  it('overriding group combines properly with more-specific overrides (2)', function()
    require('github-theme').setup({
      groups = {
        github_dark_dimmed = { Normal = { link = 'NormalNC' } },
        all = { Normal = { fg = '#123456', bg = '#654321' } },
      },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({ link = 'NormalNC' }, t_util.get_hl('Normal', true))
  end)

  it('should allow linking a group', function()
    require('github-theme').setup({
      groups = { all = { Normal = { link = 'NormalNC' } } },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same({ link = 'NormalNC' }, t_util.get_hl('Normal', true))
  end)

  it('should not be affected by a previous override using `link`', function()
    require('github-theme').setup({
      groups = {
        all = { Normal = { link = 'NormalNC' } },
      },
    })
    require('github-theme').setup({
      groups = {
        all = { Normal = { fg = '#123456', bg = '#654321' } },
      },
    })

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same(
      { fg = '#123456', bg = '#654321' },
      require('github-theme.override').groups.all.Normal
    )
    assert.is_nil(t_util.get_hl('Normal', true).link)
    assert.same(
      { fg = tonumber('123456', 16), bg = tonumber('654321', 16) },
      t_util.get_hl('Normal')
    )
  end)
end)

describe('config > specs', function()
  before_each(function()
    require('github-theme.util.reload')(true)
  end)

  it('should allow overriding the spec', function()
    require('github-theme').setup({
      specs = {
        github_dark_dimmed = { bg1 = '#654321' },
        github_dark = { bg1 = '#652322' },
        all = { bg1 = '#123456' },
      },
    })

    local spec = require('github-theme.spec').load('github_dark_dimmed')
    assert.equals('#654321', spec.bg1)

    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.same(tonumber('654321', 16), t_util.get_hl('Normal').bg)
  end)
end)

local assert = require('luassert')
local t_util = require('github-theme._test.util')

if vim.fn.has('nvim-0.9.0') == 0 or vim.fn.has('nvim-0.9.0') == false then
  return
end

describe('config > transparent', function()
  before_each(function()
    require('github-theme.util.reload')(true)
  end)

  it('should clear `bg` of Normal', function()
    require('github-theme').setup({ options = { transparent = true } })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('Normal').bg)
  end)

  it('should clear `bg` of NormalFloat', function()
    require('github-theme').setup({ options = { transparent = true } })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('NormalFloat').bg)
  end)

  it('should clear `bg` of NormalSB', function()
    require('github-theme').setup({ options = { transparent = true } })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('NormalSB').bg)
  end)

  it('should override `darken.floats`', function()
    require('github-theme').setup({
      options = { transparent = true, darken = { floats = true } },
    })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('NormalFloat').bg)
  end)

  it('should override `darken.sidebars`', function()
    require('github-theme').setup({
      options = { transparent = true, darken = { sidebars = { enable = true } } },
    })
    vim.cmd.colorscheme({ args = { 'github_dark_dimmed' } })
    assert.is_nil(t_util.get_hl('NormalSB').bg)
  end)
end)

local assert = require('luassert')
local t_util = require('github-theme._test.util')
local C = require('github-theme.lib.color')

if vim.fn.has('nvim-0.9.0') == 0 or vim.fn.has('nvim-0.9.0') == false then
  return
end

describe('config > options > darken', function()
  before_each(function()
    require('github-theme.config').reset()
  end)

  describe('> floats', function()
    for _, variant in ipairs(require('github-theme.palette').themes) do
      -- TODO: see #324
      local _it = variant:find('high[-_]*contrast') and pending or it

      _it(('should be enabled by default (%s)'):format(variant), function()
        require('github-theme').setup()
        vim.cmd.colorscheme({ args = { variant } })
        local normal_float = t_util.get_hl('NormalFloat')
        local normal = t_util.get_hl('Normal')

        assert.is_true(require('github-theme.config').options.darken.floats)
        assert.are.not_equal(normal_float.bg, normal.bg)
        assert(
          C(('#%x'):format(normal_float.bg)):luminance()
            < C(('#%x'):format(normal.bg)):luminance(),
          ('expected `bg` of `NormalFloat` (#%x) to be darker than `bg` of `Normal` (#%x)'):format(
            normal_float.bg,
            normal.bg
          )
        )
      end)

      it(('should be disabled when set to `false` (%s)'):format(variant), function()
        require('github-theme').setup({ options = { darken = { floats = false } } })
        vim.cmd.colorscheme({ args = { variant } })
        local normal_float = t_util.get_hl('NormalFloat')
        local normal = t_util.get_hl('Normal')

        assert.is_false(require('github-theme.config').options.darken.floats)
        assert.are.equal(normal_float.bg, normal.bg)
      end)
    end
  end)
end)

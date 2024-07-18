local assert = require('luassert')
local t_util = require('github-theme._test.util')
local C = require('github-theme.lib.color')

if vim.fn.has('nvim-0.9.0') == 0 or vim.fn.has('nvim-0.9.0') == false then
  return
end

describe('config > options > darken', function()
  before_each(function()
    -- Could reset more than just this, but this alone seems to work now that the
    -- compiler is fixed.
    require('github-theme.config').reset()
  end)

  describe('> floats', function()
    for variant in pairs(require('github-theme.palette').themes) do
      -- TODO: see #324
      local it_or_pending = variant:find('high[-_]*contrast') and pending or it

      it_or_pending(('should be enabled by default (%s)'):format(variant), function()
        require('github-theme').setup()
        vim.cmd.colorscheme({ args = { variant } })
        local normal_float = t_util.get_hl('NormalFloat')
        local normal = t_util.get_hl('Normal')

        assert.is_true(require('github-theme.config').options.darken.floats)
        assert.are.not_equal(normal.bg, normal_float.bg)
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
        assert.are.equal(normal.bg, normal_float.bg)
      end)
    end
  end)

  describe('> sidebars', function()
    describe('> enable', function()
      for variant in pairs(require('github-theme.palette').themes) do
        -- TODO: see #324
        local it_or_pending = variant:find('high[-_]*contrast') and pending or it

        it_or_pending(('should be enabled by default (%s)'):format(variant), function()
          require('github-theme').setup()
          vim.cmd.colorscheme({ args = { variant } })
          local normal_sb = t_util.get_hl('NormalSB')
          local normal = t_util.get_hl('Normal')

          assert.is_true(require('github-theme.config').options.darken.sidebars.enable)
          assert.are.not_equal(normal.bg, normal_sb.bg)
          assert(
            C(('#%x'):format(normal_sb.bg)):luminance()
              < C(('#%x'):format(normal.bg)):luminance(),
            ('expected `bg` of `NormalFloat` (#%x) to be darker than `bg` of `Normal` (#%x)'):format(
              normal_sb.bg,
              normal.bg
            )
          )
        end)

        it(('should be disabled when set to `false` (%s)'):format(variant), function()
          require('github-theme').setup({
            options = { darken = { sidebars = { enable = false } } },
          })

          vim.cmd.colorscheme({ args = { variant } })
          local normal_sb = t_util.get_hl('NormalSB')
          local normal = t_util.get_hl('Normal')
          assert.is_false(require('github-theme.config').options.darken.sidebars.enable)
          assert.are.equal(normal.bg, normal_sb.bg)
        end)
      end
    end)
  end)
end)

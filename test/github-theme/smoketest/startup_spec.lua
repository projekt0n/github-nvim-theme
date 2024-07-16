local assert = require('luassert')
local t_util = require('github-theme._test.util')

describe('(smoke test)', function()
  describe('setting colorscheme during startup', function()
    it('should not error', function()
      assert.does_not_error(function()
        vim.cmd('colorscheme github_dark_dimmed')
      end)

      assert.is.equal('', vim.v.errmsg or '')
    end)
  end)

  describe('setting/switching colorscheme post-startup', function()
    it('should not error', function()
      t_util.await_VimEnter()

      for _, cs in ipairs({
        'default',
        'github_dark_dimmed',
        'github_dark_dimmed',
        'github_light',
      }) do
        assert.does_not_error(function()
          vim.cmd('colorscheme ' .. cs)
        end)

        assert.is.equal('', vim.v.errmsg or '')
        assert.is.equal(cs, vim.g.colors_name)
      end
    end)
  end)
end)

local hash = require('github-theme.lib.hash')

describe('hash()', function()
  it('should produce same result with different table order', function()
    local t1 = { Normal = { bg = '#192330', fg = '#cdcecf' } }
    local t2 = { Normal = { fg = '#cdcecf', bg = '#192330' } }
    assert.same(hash(t1), hash(t2))
  end)

  it('should understand booleans', function()
    local t1 = {
      transparent = false,
      terminal_colors = true,
      dim_inactive = false,
      module_default = true,
      inverse = {
        match_paren = false,
        visual = false,
        search = false,
      },
    }
    local t2 = {
      transparent = true,
      terminal_colors = true,
      dim_inactive = false,
      module_default = false,
      inverse = {
        match_paren = true,
        visual = false,
        search = false,
      },
    }
    assert.not_same(hash(t1), hash(t2))
  end)

  it('should handle empty tables within (1)', function()
    assert.not_same(hash({}), hash({ k = {} }))
    assert.not_same(hash({}), hash({ key = {} }))
  end)

  -- TODO: FAILING
  pending('should handle empty tables within (2)', function()
    assert.not_same(hash({ k = 0 }), hash({ k = {} }))
    assert.not_same(hash({ key = 0 }), hash({ key = {} }))
  end)

  it('should handle empty tables within (3)', function()
    assert.not_same(hash({ k = '' }), hash({ k = {} }))
    assert.not_same(hash({ key = '' }), hash({ key = {} }))
  end)

  it('should handle empty tables within (4)', function()
    assert.not_same(hash({ k = false }), hash({ k = {} }))
    assert.not_same(hash({ key = false }), hash({ key = {} }))
  end)
end)

local Color = require('github-theme.lib.color')
local assert = require('luassert')

-- stylua: ignore
local ex = {
  str  = "#3a567d",
  hex  = 0x3a567d,
  rgba = { 58, 86, 125, 1 },
  hsv  = { 214.9, 53.6, 49, 1 },
  hsl  = { 214.9, 36.6, 35.9, 1 },
}

describe('Color', function()
  describe('constructor', function()
    it('should error when given invalid args', function()
      assert.does.match.error(function()
        ---@diagnostic disable-next-line: param-type-mismatch
        local _ = Color(true)
      end, 'expected color specification')

      assert.does.match.error(function()
        ---@diagnostic disable-next-line: param-type-mismatch
        local _ = Color(false)
      end, 'expected color specification')

      assert.does.match.error(function()
        ---@diagnostic disable-next-line: param-type-mismatch
        local _ = Color(nil)
      end, 'expected color specification')

      assert.does.match.error(function()
        ---@diagnostic disable-next-line: missing-parameter
        local _ = Color()
      end, 'expected color specification')

      assert.does.match.error(function()
        ---@diagnostic disable-next-line: missing-fields
        local _ = Color({})
      end, 'expected color specification')

      assert.does.match.error(function()
        ---@diagnostic disable-next-line: missing-fields
        local _ = Color({ val = 0.5 })
      end, 'expected color specification')
    end)

    describe('from_hex()', function()
      it('should construct from a css hex string', function()
        local c = Color.from_hex(ex.str)
        assert.are.same(ex.hex, c:to_hex())
        assert.are.same(ex.str, c:to_css())
      end)

      it('should construct from an integer', function()
        local n = 0x12345630
        local c = Color.from_hex(n)
        assert.are.same(n, c:to_hex(true))
        assert.are.same('#12345630', c:to_css(true))
      end)

      it('should error when given invalid args', function()
        assert.does.match.error(function()
          ---@diagnostic disable-next-line: param-type-mismatch
          local _ = Color.from_hex('#HIJKLM')
        end, 'expected number or hex string')

        assert.does.match.error(function()
          ---@diagnostic disable-next-line: param-type-mismatch
          local _ = Color.from_hex('')
        end, 'expected number or hex string')

        assert.does.match.error(function()
          ---@diagnostic disable-next-line: param-type-mismatch
          local _ = Color.from_hex({ red = 1, green = 1, blue = 1 })
        end, 'expected number or hex string')
      end)
    end)

    describe('from_rgba()', function()
      it('should construct from rgba', function()
        local c = Color.from_rgba(unpack(ex.rgba))
        assert.are.same(ex.hex, c:to_hex())
        assert.are.same(ex.str, c:to_css())
      end)
    end)

    describe('from_hsv()', function()
      it('should construct from hsv', function()
        local c = Color.from_hsv(unpack(ex.hsv))
        assert.are.same(ex.hex, c:to_hex())
        assert.are.same(ex.str, c:to_css())
      end)
    end)

    describe('from_hsl()', function()
      it('should construct from hsl', function()
        local c = Color.from_hsl(unpack(ex.hsl))
        assert.are.same(ex.hex, c:to_hex())
        assert.are.same(ex.str, c:to_css())
      end)
    end)

    it('should infer creation of hex string', function()
      local c = Color(ex.str)
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it('should construct from an integer', function()
      local n = 0x12345630
      local c = Color(n)
      assert.are.same(n, c:to_hex(true))
      assert.are.same('#12345630', c:to_css(true))
    end)

    it('should infer from rgba components', function()
      local c = Color(Color.from_hex(ex.str):to_rgba())
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it('should infer from hsv components', function()
      local c = Color(Color.from_hex(ex.str):to_hsv())
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it('should infer from hsl components', function()
      local c = Color(Color.from_hex(ex.str):to_hsl())
      -- assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it('should be idempotent', function()
      local orig = Color(0x12345630)
      local new = Color(orig --[[@as any]])
      for _, c in ipairs({ orig, new }) do
        for _, k in ipairs({ 'WHITE', 'BLACK', 'BG' }) do
          rawset(c, k, c[k])
        end
      end

      assert.are.same(orig, new)
      assert.are.same(orig:to_css(true), new:to_css(true))
    end)
  end)

  describe('conversion', function()
    it('should output to css_hex', function()
      local c = Color.from_hex(ex.str)
      assert.are.same(ex.str, c:to_css())
      assert.are.same(ex.str .. 'ff', c:to_css(true))
    end)

    it('should output to rgba', function()
      local c = Color.from_hex(ex.str):to_rgba()
      assert.are.same(ex.rgba[1], c.red)
      assert.are.same(ex.rgba[2], c.green)
      assert.are.same(ex.rgba[3], c.blue)
      assert.are.same(ex.rgba[4], c.alpha)
    end)

    it('should output to hsv', function()
      local c = Color.from_hex(ex.str):to_hsv()
      assert.are.near(ex.hsv[1], c.hue, 0.1)
      assert.are.near(ex.hsv[2], c.saturation, 0.1)
      assert.are.near(ex.hsv[3], c.value, 0.1)
    end)

    it('should output to hsl', function()
      local c = Color.from_hex(ex.str):to_hsl()
      assert.are.near(ex.hsl[1], c.hue, 0.1)
      assert.are.near(ex.hsl[2], c.saturation, 0.1)
      assert.are.near(ex.hsl[3], c.lightness, 0.1)
    end)

    it('should coerce to a string', function()
      local c = Color.from_hex(ex.str)
      assert.are.same(ex.str, tostring(c))
    end)
  end)

  describe('manipulation', function()
    it('can blend two colors together', function()
      local one = Color.from_hex(ex.str)
      local two = Color.from_hex('#7d3a65')

      local blend = one:blend(two, 0.5):to_rgba()
      assert.are.same(91, blend.red)
      assert.are.same(72, blend.green)
      assert.are.same(113, blend.blue)
    end)

    it('can shade color', function()
      local c = Color.from_hex(ex.str)
      assert.are.same(Color.WHITE:to_hex(), c:shade(1):to_hex())
      assert.are.same(Color.BLACK:to_hex(), c:shade(-1):to_hex())
      assert.are.same('#617897', c:shade(0.2):to_css())
      assert.are.same('#2e4564', c:shade(-0.2):to_css())
    end)

    it('can brighten color', function()
      local c = Color.from_hex(ex.str)
      assert.are.same('#486b9c', c:brighten(12):to_css())
      assert.are.same('#2c415e', c:brighten(-12):to_css())
    end)

    it('can lighten color', function()
      local c = Color.from_hex(ex.str)
      assert.are.same('#4d73a7', c:lighten(12):to_css())
      assert.are.same('#273953', c:lighten(-12):to_css())
    end)

    it('can saturate color', function()
      local c = Color.from_hex(ex.str)
      assert.are.same('#274b7d', c:saturate(15):to_css())
      assert.are.same('#4d617d', c:saturate(-15):to_css())
    end)

    it('can rotate hue color', function()
      local c = Color.from_hex(ex.str)
      assert.are.same('#3a457d', c:rotate(15):to_css())
      assert.are.same('#3a677d', c:rotate(-15):to_css())
    end)
  end)
end)

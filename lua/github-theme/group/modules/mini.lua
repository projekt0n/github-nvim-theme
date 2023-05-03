-- https://github.com/simrat39/lsp-trouble.nvim

local C = require('github-theme.lib.color')

local M = {}

function M.get(spec, config, opts)
  local c = spec.palette

  local function blend(color, a)
    return C(spec.bg1):blend(C(color), a):to_css()
  end

  -- stylua: ignore
  return {
    MiniCompletionActiveParameter = { style = 'underline' },

    MiniCursorword                = { bg = spec.sel0 },
    MiniCursorwordCurrent         = { bg = spec.sel0 },

    MiniIndentscopeSymbol         = { link = 'Delimiter' },
    MiniIndentscopePrefix         = { style = 'nocombine' }, -- Make it invisible

    MiniJump                      = { link = 'SpellRare' },

    MiniJump2dSpot = {
      fg = vim.o.background == 'light' and c.red.bright or c.magenta.base,
      style = 'bold',
   },

    MiniStarterCurrent             = { style = 'nocombine' },
    MiniStarterFooter              = { fg = c.scale.white, style = 'italic' },
    MiniStarterHeader              = { fg = c.blue.base },
    MiniStarterInactive            = { link = 'Comment' },
    MiniStarterItem                = { link = 'Normal' },
    MiniStarterItemBullet          = { fg = c.border.default },
    MiniStarterItemPrefix          = { fg = spec.diag.warn },
    MiniStarterSection             = { link = 'Special' },
    MiniStarterQuery               = { fg = spec.diag.info },

    MiniStatuslineDevinfo          = { fg = spec.fg1, bg = spec.bg3 },
    MiniStatuslineFileinfo         = { fg = spec.fg1, bg = spec.bg3 },
    MiniStatuslineFilename         = { fg = blend(spec.fg1, 0.5), bg = spec.bg1 },
    MiniStatuslineInactive         = { bg = spec.bg0, fg = blend(spec.fg1, 0.5) },
    MiniStatuslineModeCommand      = { fg = spec.bg1, bg = c.magenta.bright, style = 'bold' },
    MiniStatuslineModeInsert       = { fg = spec.bg1, bg = c.green.base, style = 'bold' },
    MiniStatuslineModeNormal       = { fg = spec.bg1, bg = c.blue.base, style = 'bold' },
    MiniStatuslineModeOther        = { fg = spec.bg1, bg = c.orange.base, style = 'bold' },
    MiniStatuslineModeReplace      = { fg = spec.bg1, bg = c.red.base, style = 'bold' },
    MiniStatuslineModeVisual       = { fg = spec.bg1, bg = c.yellow.base, style = 'bold' },

    MiniSurround                   = { link = 'IncSearch' },

    MiniTablineCurrent = {
      fg = spec.bg0,
      bg = blend(c.blue.bright, 0.75),
      style = 'bold',
    },

    MiniTablineFill                = { link = 'TabLineFill' },
    MiniTablineHidden              = { fg = spec.fg1, bg = spec.bg1 },

    MiniTablineModifiedCurrent = {
      fg = blend(c.blue.bright, 0.75),
      bg = spec.bg0,
      style = 'bold',
    },

    MiniTablineModifiedHidden = { fg = spec.bg1, bg = spec.fg1 },
    MiniTablineModifiedVisible = { fg = blend(c.blue.bright, 0.5), bg = spec.bg0 },
    MiniTablineTabpagesection = { fg = 'NONE', bg = spec.sel1, style = 'bold' },
    MiniTablineVisible = { fg = spec.bg0, bg = blend(c.blue.bright, 0.5) },

    MiniTestEmphasis = { style = 'bold' },
    MiniTestFail = { fg = c.red.base, style = 'bold' },
    MiniTestPass = { fg = c.green.base, style = 'bold' },

    MiniTrailspace = { bg = c.red.base },
  }
end

return M

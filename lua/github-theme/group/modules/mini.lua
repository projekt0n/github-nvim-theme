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
    MiniAnimateCursor      = { style = 'reverse,nocombine' },
    MiniAnimateNormalFloat = { link = 'NormalFloat' },

    MiniClueBorder              = { link = 'FloatBorder' },
    MiniClueDescGroup           = { link = 'DiagnosticFloatingWarn' },
    MiniClueDescSingle          = { link = 'NormalFloat' },
    MiniClueNextKey             = { fg = spec.diag.info },
    MiniClueNextKeyWithPostkeys = { link = 'DiagnosticFloatingError' },
    MiniClueSeparator           = { fg = spec.diag.hint },
    MiniClueTitle               = { link = 'FloatTitle' },

    MiniCompletionActiveParameter = { style = 'underline' },

    MiniCursorword        = { bg = spec.sel0 },
    MiniCursorwordCurrent = { bg = spec.sel0 },

    MiniDepsChangeAdded   = { link = 'diffAdded' },
    MiniDepsChangeRemoved = { link = 'diffRemoved' },
    MiniDepsHint          = { link = 'DiagnosticHint' },
    MiniDepsInfo          = { link = 'DiagnosticInfo' },
    MiniDepsMsgBreaking   = { link = 'DiagnosticWarn' },
    MiniDepsPlaceholder   = { link = 'Comment' },
    MiniDepsTitle         = { link = 'Title' },
    MiniDepsTitleError    = { link = 'DiffDelete' },
    MiniDepsTitleSame     = { link = 'DiffText' },
    MiniDepsTitleUpdate   = { link = 'DiffAdd' },

    MiniDiffSignAdd     = { fg = spec.git.add },
    MiniDiffSignChange  = { fg = spec.git.changed },
    MiniDiffSignDelete  = { fg = spec.git.removed },
    MiniDiffOverAdd     = { link = 'DiffAdd' },
    MiniDiffOverChange  = { fg = spec.fg1, bg = spec.bg3 },
    MiniDiffOverContext = { link = 'DiffChange' },
    MiniDiffOverDelete  = { link = 'DiffDelete' },

    MiniFilesBorder         = { link = 'FloatBorder' },
    MiniFilesBorderModified = { link = 'DiagnosticFloatingWarn' },
    MiniFilesCursorLine     = { link = 'CursorLine' },
    MiniFilesDirectory      = { link = 'Directory' },
    MiniFilesFile           = { fg = spec.fg1 },
    MiniFilesNormal         = { link = 'NormalFloat' },
    MiniFilesTitle          = { link = 'FloatTitle' },
    MiniFilesTitleFocused   = { fg = spec.fg1, style = 'bold' },

    MiniHipatternsFixme = { fg = spec.bg0, bg = spec.diag.error, style = 'bold' },
    MiniHipatternsHack  = { fg = spec.bg0, bg = spec.diag.warn, style = 'bold' },
    MiniHipatternsNote  = { fg = spec.bg0, bg = spec.diag.info, style = 'bold' },
    MiniHipatternsTodo  = { fg = spec.bg0, bg = spec.diag.hint, style = 'bold' },

    MiniIconsAzure  = { fg = c.blue.bright },
    MiniIconsBlue   = { fg = c.blue.base },
    MiniIconsCyan   = { fg = c.cyan.base },
    MiniIconsGreen  = { fg = c.green.bright },
    MiniIconsGrey   = { fg = c.fg.default },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsPurple = { fg = c.magenta.base },
    MiniIconsRed    = { fg = c.red.base },
    MiniIconsYellow = { fg = c.yellow.bright },

    MiniIndentscopeSymbol = { link = 'Delimiter' },
    MiniIndentscopePrefix = { style = 'nocombine' }, -- Make it invisible

    MiniJump = { link = 'SpellRare' },

    MiniJump2dDim        = { link = 'Comment' },
    MiniJump2dSpot       = {
      fg = spec.palette.meta.light and c.red.bright or c.magenta.base,
      style = 'bold',
    },
    MiniJump2dSpotAhead  = { fg = c.accent.fg, bg = c.bg0, style = 'nocombine' },
    MiniJump2dSpotUnique = { fg = c.attention.fg, style = 'bold' },

    MiniMapNormal      = { link = 'NormalFloat' },
    MiniMapSymbolCount = { link = 'Special' },
    MiniMapSymbolLine  = { fg = c.accent.fg },
    MiniMapSymbolView  = { fg = c.accent.muted },

    MiniNotifyBorder = { link = 'FloatBorder' },
    MiniNotifyNormal = { link = 'NormalFloat' },
    MiniNotifyTitle  = { link = 'FloatTitle' },

    MiniOperatorsExchangeFrom = { link = 'IncSearch' },

    MiniPickBorder        = { link = 'FloatBorder' },
    MiniPickBorderBusy    = { link = 'DiagnosticFloatingWarn' },
    MiniPickBorderText    = { link = 'FloatTitle' },
    MiniPickIconDirectory = { link = 'Directory' },
    MiniPickIconFile      = { link = 'MiniPickNormal' },
    MiniPickHeader        = { fg = spec.syntax.builtin2 },
    MiniPickMatchCurrent  = { link = 'CursorLine' },
    MiniPickMatchMarked   = { link = 'Visual' },
    MiniPickMatchRanges   = { fg = c.attention.fg },
    MiniPickNormal        = { link = 'NormalFloat' },
    MiniPickPreviewLine   = { link = 'CursorLine' },
    MiniPickPreviewRegion = { link = 'IncSearch' },
    MiniPickPrompt        = { fg = spec.syntax.field },

    MiniStarterCurrent    = { style = 'nocombine' },
    MiniStarterFooter     = { fg = c.fg.subtle, style = 'italic' },
    MiniStarterHeader     = { fg = c.blue.base },
    MiniStarterInactive   = { link = 'Comment' },
    MiniStarterItem       = { link = 'Normal' },
    MiniStarterItemBullet = { fg = c.border.default },
    MiniStarterItemPrefix = { fg = spec.diag.warn },
    MiniStarterSection    = { link = 'Special' },
    MiniStarterQuery      = { fg = spec.diag.info },

    MiniStatuslineDevinfo     = { fg = spec.fg1, bg = spec.bg3 },
    MiniStatuslineFileinfo    = { fg = spec.fg1, bg = spec.bg3 },
    MiniStatuslineFilename    = { fg = blend(spec.fg1, 0.5), bg = spec.bg1 },
    MiniStatuslineInactive    = { bg = spec.bg0, fg = blend(spec.fg1, 0.5) },
    MiniStatuslineModeCommand = { fg = spec.bg1, bg = c.magenta.bright, style = 'bold' },
    MiniStatuslineModeInsert  = { fg = spec.bg1, bg = c.green.base, style = 'bold' },
    MiniStatuslineModeNormal  = { fg = spec.bg1, bg = c.blue.base, style = 'bold' },
    MiniStatuslineModeOther   = { fg = spec.bg1, bg = c.orange.base, style = 'bold' },
    MiniStatuslineModeReplace = { fg = spec.bg1, bg = c.red.base, style = 'bold' },
    MiniStatuslineModeVisual  = { fg = spec.bg1, bg = c.yellow.base, style = 'bold' },

    MiniSurround = { link = 'IncSearch' },

    MiniTablineCurrent = {
      fg = spec.bg0,
      bg = blend(c.blue.bright, 0.75),
      style = 'bold',
    },

    MiniTablineFill   = { link = 'TabLineFill' },
    MiniTablineHidden = { fg = spec.fg1, bg = spec.bg1 },

    MiniTablineModifiedCurrent = {
      fg = blend(c.blue.bright, 0.75),
      bg = spec.bg0,
      style = 'bold',
    },

    MiniTablineModifiedHidden  = { fg = spec.bg1, bg = spec.fg1 },
    MiniTablineModifiedVisible = { fg = blend(c.blue.bright, 0.5), bg = spec.bg0 },
    MiniTablineTabpagesection  = { fg = 'NONE', bg = spec.sel1, style = 'bold' },
    MiniTablineVisible         = { fg = spec.bg0, bg = blend(c.blue.bright, 0.5) },

    MiniTestEmphasis = { style = 'bold' },
    MiniTestFail     = { fg = c.red.base, style = 'bold' },
    MiniTestPass     = { fg = c.green.base, style = 'bold' },

    MiniTrailspace = { bg = c.red.base },
  }
end

return M

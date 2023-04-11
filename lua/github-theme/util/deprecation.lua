local M = {
  checked_deprecation = false,
}

M.check_deprecation = function(opts)
  if M.checked_deprecation then
    return
  end

  local dep = require('github-theme.lib.deprecation')

  local function check_vim_opts(name, o)
    name = 'github_' .. name
    local help = o.help
    if vim.g[name] then
      dep.write(
        '  ',
        ' The use of ',
        { 'vim.g.' .. name, 'WarningMsg' },
        ' variable for configuration assignment',
        ' has been deprecated.',
        ' Refer to',
        { ' :h ' .. help, 'WarningMsg' },
        ' for more info.'
      )
    end
  end

  check_vim_opts('theme_style', { help = 'github-theme.changelog-06042023' })

  check_vim_opts('colors', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('overrides', { help = 'github-theme.changelog-06042023' })

  check_vim_opts('dark_float', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('dark_sidebar', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('sidebars', { help = 'github-theme.changelog-06042023' })

  check_vim_opts('transparent', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('hide_end_of_buffer', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('hide_inactive_statusline', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('msg_area_style', { help = 'github-theme.changelog-06042023' })

  check_vim_opts('comment_style', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('function_style', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('keyword_style', { help = 'github-theme.changelog-06042023' })
  check_vim_opts('variable_style', { help = 'github-theme.changelog-06042023' })

  check_vim_opts('dev', { help = 'github-theme.changelog-06042023' })

  if opts.theme_style then
    dep.write(
      '  ',
      { 'theme_style', 'WarningMsg' },
      " has been removed. Use vim's builtin ",
      { ':colorscheme', 'WarningMsg' },
      " command to select your github's theme style.",
      ' Refer to',
      { ' :h github-theme.changelog-11042023', 'WarningMsg' },
      ' for more info.'
    )
  end
  M.checked_deprecation = true
end

return M

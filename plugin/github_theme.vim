" Load only once
if exists('g:loaded_github_theme') | finish | endif

command! GithubThemeCompile lua require('github-theme').compile()
command! GithubThemeInteractive lua require('github-theme.interactive').attach()

let g:loaded_github_theme = 1

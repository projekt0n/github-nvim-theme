" Load only once
if exists('g:loaded_github_theme') | finish | endif

command! GithubThemeCompile lua require('github-theme').compile()

let g:loaded_nightfox = 1

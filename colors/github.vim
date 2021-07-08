" clear cache so this reloads changes.
" useful for development
lua package.loaded['github-theme'] = nil
lua package.loaded['github-theme.theme'] = nil
lua package.loaded['github-theme.colors'] = nil
lua package.loaded['github-theme.util'] = nil
lua package.loaded['github-theme.config'] = nil

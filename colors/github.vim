" clear cache so this reloads changes.
" useful for development
lua package.loaded['github'] = nil
lua package.loaded['github.theme'] = nil
lua package.loaded['github.colors'] = nil
lua package.loaded['github.util'] = nil
lua package.loaded['github.config'] = nil

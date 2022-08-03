.DEFAULT_GOAL = lint

src = lua/github-theme

fmt:
	stylua --config-path stylua.toml --glob 'lua/**/*.lua' -- lua

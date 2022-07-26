.DEFAULT_GOAL = lint

src = lua/github-theme

terminal: $(src)/terminal
	lua $(src)/terminal/init.lua

fmt:
	stylua --config-path stylua.toml --glob 'lua/**/*.lua' -- lua

# reload kitty theme
# https://github.com/ful1e5/dotfiles
kitty_theme = ~/.dotfiles/kitty/.config/kitty/themes/github.conf
exts = ./terminal

kitty_pre:
	@rm -rf $(kitty_theme)
	@touch $(kitty_theme)

kitty_dark: kitty_pre
	@cat $(exts)/kitty/github_dark.conf > $(kitty_theme)

kitty_dark_default: kitty_pre
	@cat $(exts)/kitty/github_dark_default.conf > $(kitty_theme)

kitty_dark_colorblind: kitty_pre
	@cat $(exts)/kitty/github_dark_colorblind.conf > $(kitty_theme)

kitty_dimmed: kitty_pre
	@cat $(exts)/kitty/github_dimmed.conf > $(kitty_theme)

kitty_light: kitty_pre
	@cat $(exts)/kitty/github_light.conf > $(kitty_theme)

kitty_light_default: kitty_pre
	@cat $(exts)/kitty/github_light_default.conf > $(kitty_theme)

kitty_light_colorblind: kitty_pre
	@cat $(exts)/kitty/github_light_colorblind.conf > $(kitty_theme)

# reload tmux theme
tmux_theme = ~/.dotfiles/tmux/.github-theme.conf

tmux_pre:
	@rm -rf $(tmux_theme)
	@touch $(tmux_theme)

tmux_dark: tmux_pre
	@cat $(exts)/tmux/github_dark.conf > $(tmux_theme)

tmux_dimmed: tmux_pre
	@cat $(exts).conf/github_dimmed.conf > $.conf_theme)

tmux_dark_default: tmux_pre
	@cat $(exts).conf/github_dark_default.conf > $.conf_theme)

tmux_dark_colorblind: tmux_pre
	@cat $(exts).conf/github_dark_colorblind.conf > $.conf_theme)

tmux_light: tmux_pre
	@cat $(exts).conf/github_light.conf > $.conf_theme)

tmux_light_default: tmux_pre
	@cat $(exts).conf/github_light_default.conf > $.conf_theme)

tmux_light_colorblind: tmux_pre
	@cat $(exts).conf/github_light_colorblind.conf > $.conf_theme)

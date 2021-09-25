.DEFAULT_GOAL = check

github_path = lua/github-theme
extra_path = $(github_path)/extra

extra: $(extra_path)
	@lua $(extra_path)/init.lua

format:
	@for file in `find . -name '*.lua'`;do lua-format $$file -i; done;

lint: $(github_path)
	@luacheck $(github_path)

check: format lint


# reload kitty theme
# https://github.com/ful1e5/dotfiles
kitty_theme = ~/.config/kitty/themes/github.conf
exts = ./extras/

kitty_pre:
	@rm -rf $(kitty_theme)
	@touch $(kitty_theme)

kitty_dark: kitty_pre
	@cat $(exts)/kitty/dark.conf > $(kitty_theme)

kitty_dark_default: kitty_pre
	@cat $(exts)/kitty/dark_default.conf > $(kitty_theme)

kitty_dimmed: kitty_pre
	@cat $(exts)/kitty/dimmed.conf > $(kitty_theme)

kitty_light: kitty_pre
	@cat $(exts)/kitty/light.conf > $(kitty_theme)

kitty_light_default: kitty_pre
	@cat $(exts)/kitty/light_default.conf > $(kitty_theme)

# reload tmux theme
tmux_theme = ~/.github-theme.tmux

tmux_pre:
	@rm -rf $(tmux_theme)
	@touch $(tmux_theme)

tmux_dark: tmux_pre
	@cat $(exts)/tmux/dark.tmux > $(tmux_theme)

tmux_dimmed: tmux_pre
	@cat $(exts)/tmux/dimmed.tmux > $(tmux_theme)

tmux_light: tmux_pre
	@cat $(exts)/tmux/light.tmux > $(tmux_theme)

tmux_dark_default: tmux_pre
	@cat $(exts)/tmux/dark_default.tmux > $(tmux_theme)

tmux_light_default: tmux_pre
	@cat $(exts)/tmux/light_default.tmux > $(tmux_theme)

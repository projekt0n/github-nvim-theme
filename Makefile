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
theme = ~/.config/kitty/themes/github.conf
exts = ./extras/

kitty_pre:
	@rm -rf $(theme)
	@touch $(theme)

kitty_dark: kitty_pre
	@cat $(exts)/kitty_github_dark.conf > $(theme)

kitty_dimmed: kitty_pre
	@cat $(exts)/kitty_github_dimmed.conf > $(theme)

kitty_light: kitty_pre
	@cat $(exts)/kitty_github_light.conf > $(theme)

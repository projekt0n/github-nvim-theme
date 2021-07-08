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

TEST_DIR = test/github-theme
PLENARY_DIR = test/plenary
PLENARY_URL = https://github.com/nvim-lua/plenary.nvim/

root_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY : minimal
minimal:
	sed -i "s|projekt0n/github-nvim-theme|${root_dir}|g" minimal_init.lua
	nvim --clean -u minimal_init.lua minimal_init.lua

.PHONY : test
test: $(PLENARY_DIR)
	nvim \
		--headless \
		--noplugin \
		-u test/minimal_init.vim \
		-c "PlenaryBustedDirectory $(TEST_DIR) { minimal_init = './test/minimal_init.vim' }"

$(PLENARY_DIR):
	git clone --depth=1 --no-single-branch $(PLENARY_URL) $(PLENARY_DIR)
	@rm -rf $(PLENARY_DIR)/.git

.PHONY : check
check :
	stylua --check lua/ test -f ./stylua.toml

.PHONY : fmt
fmt :
	stylua lua/ test/ -f ./stylua.toml

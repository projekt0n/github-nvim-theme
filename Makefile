pandocrepo = https://github.com/kdheepak/panvimdoc
pandocdir = misc/panvimdoc
TEST_DIR = test/github-theme
PLENARY_DIR = test/plenary
PLENARY_URL = https://github.com/nvim-lua/plenary.nvim/

root_dir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY : all
all: docgen test check

.PHONY : docgen
docgen: $(pandocdir)
	@pandoc \
		--metadata=project:github-nvim-theme \
		--metadata="description:Github's Neovim themes" \
		--lua-filter=misc/panvimdoc/scripts/skip-blocks.lua \
		--lua-filter=misc/panvimdoc/scripts/include-files.lua \
		--to=misc/panvimdoc/scripts/panvimdoc.lua \
		-o doc/github-nvim-theme.txt \
		Usage.md

$(pandocdir):
	git clone --depth=1 --no-single-branch $(pandocrepo) $(pandocdir)
	@rm -rf doc/panvimdoc/.git

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

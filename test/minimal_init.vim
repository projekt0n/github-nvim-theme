lua <<
  if vim.fn.has('nvim-0.9.0') == 1 or vim.fn.has('nvim-0.9.0') == true then
    vim.loader.disable()
  end
.
set rtp+=.
set rtp+=./test/plenary
runtime! plugin/plenary.vim

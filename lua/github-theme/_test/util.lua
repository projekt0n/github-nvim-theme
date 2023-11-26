local M = {}
local api = vim.api

function M.await_VimEnter()
  if vim.v.vim_did_enter == 0 then
    local co = assert(coroutine.running(), 'test is not running in coroutine')

    api.nvim_create_autocmd('VimEnter', {
      pattern = '*',
      once = true,
      nested = true,
      callback = vim.schedule_wrap(function()
        coroutine.resume(co)
      end),
    })

    coroutine.yield()
  end
end

return M

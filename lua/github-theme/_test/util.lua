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
        assert(coroutine.resume(co))
      end),
    })

    coroutine.yield()
  end
end

---@param group string
---@param link? boolean
---@return vim.api.keyset.hl_info
function M.get_hl(group, link)
  return api.nvim_get_hl(0, {
    name = group,
    link = not not link,
    create = false,
  })
end

if vim.fn.has('nvim-0.10.0') == false or vim.fn.has('nvim-0.10.0') == 0 then
  function M.get_hl(group, link)
    return api.nvim_get_hl(0, {
      name = group,
      link = not not link,
    })
  end
end

return M

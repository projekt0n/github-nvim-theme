local res = {}

for ln in io.lines() do
  local k, v = ln:match('^%s*%-%-(%w.-)%s*:%s*(.-)%s*;%s*$')

  if k then
    k = k:gsub('%-+', '_')

    if res[k] then
      assert(res[k] == v)
    else
      res[k] = v
    end
  end
end

io.write('local M = {\n')

for k, v in pairs(res) do
  io.write(('  [%q] = %q,\n'):format(k, v))
end

io.write('}\n')

local assert = require('luassert')
local ts = vim.treesitter
local queries_dir = './queries'

local function has_parser(lang)
  local inspect = (ts.language or {}).inspect or ts.inspect
  return pcall(inspect, lang)
end

---@type string[] paths
local local_queries = vim.tbl_map(function(path)
  return path:gsub([[\]], '/'):gsub('^%./', '')
end, vim.fn.glob(queries_dir .. '/**/*.[Ss][Cc][Mm]', true, true, true))

describe('./queries directory', function()
  it('should have the correct structure', function()
    assert.is.equal(
      'dir',
      vim.fn.getftype(queries_dir),
      ('`%s` does not exist or is not a directory'):format(queries_dir)
    )

    local langs = vim.fn.readdir(queries_dir)

    assert(
      #langs > 0,
      ('the queries directory `%s` appears to be empty'):format(queries_dir)
    )

    for _, lang in ipairs(langs) do
      local path = ('%s/%s'):format(queries_dir, lang)

      assert.is.equal(
        'dir',
        vim.fn.getftype(path),
        ('`%s` is not a directory'):format(path)
      )

      for _, file in ipairs(vim.fn.readdir(path)) do
        path = ('%s/%s'):format(path, file)

        assert.is.equal(
          'file',
          vim.fn.getftype(path),
          ('`%s` is not a file'):format(path)
        )

        assert(
          file:lower():find('%.scm$'),
          ('query file `%s` does not end with `.scm` extension'):format(path)
        )
      end
    end
  end)
end)

describe('queries', function()
  if vim.fn.has('nvim-0.9.0') == 1 then
    it('should parse cleanly (no syntax errors, no undefined nodes/symbols)', function()
      local found_query = false

      for _, path in ipairs(local_queries) do
        local lang = path:match('^queries/([^/]+)/[^/]+%.[Ss][Cc][Mm]$')

        if lang then
          found_query = true

          local query

          do
            local f = assert(io.open(path, 'r'))
            query = f:read('*a')
            f:close()
          end

          if has_parser(lang) == false then
            print(
              ([[::warning title=Test skipped::skipped query parsing test because the treesitter parser for `%s` is missing]]):format(
                lang
              )
            )
          else
            local parsed

            assert.does_not_error(function()
              -- This function should error if the query is syntactically invalid
              -- or refers to any nodes not defined by `lang`. Unsure if it also
              -- checks used directives and predicates?
              parsed = ts.query.parse(lang, query)
            end)

            assert.is.truthy(parsed)
            assert.is_not.boolean(parsed)
          end
        end
      end

      assert(found_query, "didn't find any queries")
    end)
  end
end)

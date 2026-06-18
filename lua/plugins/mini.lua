local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'nvim-mini/mini.nvim' }

-- require('mini.ai').setup {
--   mappings = {
--     around_next = 'aa',
--     inside_next = 'ii',
--   },
--   n_lines = 500,
-- }

require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.comment').setup()


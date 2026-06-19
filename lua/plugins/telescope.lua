local gh = function(repo) return 'https://github.com/' .. repo end

local telescope_plugins = {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
  gh 'nvim-telescope/telescope-ui-select.nvim',
}

vim.pack.add(telescope_plugins)

require('telescope').setup {}
pcall(require('telescope').load_extension, 'fzf')

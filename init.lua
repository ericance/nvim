-- Ericance Neovim Configuration
require("options")
require("keymaps")
require("plugins.neo-tree")

vim.lsp.enable('lua_ls')

-- Toggle tab and space visibility
vim.opt.listchars = {
    tab = "→ ",
    trail = "·",
    nbsp = "␣",
}

vim.keymap.set("n", "<leader>t", function()
	vim.opt.list = not vim.opt.list:get()
end, { desc = "Toggle visible tabs/spaces" })

-- Highlighting when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("Visual", {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})

vim.cmd("colorscheme chromatic") -- my custom color theme >:3

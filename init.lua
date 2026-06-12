-- Ericance Neovim Configuration
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.softtabstop = 4 -- tab/backspace moves by 4 columns in insert mode
vim.opt.shiftwidth = 4 -- auto-indent, >> and << by 4 columns in insert mode
vim.opt.tabstop = 4 -- display real tab characters as 4 columns wide

-- Keymaps
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", ";", ":", { desc = "Swap ; with : for quick access" })
vim.opt.clipboard = "unnamedplus" -- One clipboard

-- Toggle tab and space visibility
vim.opt.listchars = {
    tab = "→ ",
    trail = "·",
    nbsp = "␣",
}

vim.keymap.set("n", "<leader>t", function()
	vim.opt.list = not vim.opt.list:get()
end, { desc = "Toggle visible tabs/spaces" })

-- Create splits
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Better split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to below split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right split' })

-- Highlighting when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("Visual", {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})

vim.cmd("colorscheme chromatic") -- my custom color theme >:3


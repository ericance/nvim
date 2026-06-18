-- Keymaps
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", ";", ":", { desc = "Swap ; with : for quick access" })
vim.opt.clipboard = "unnamedplus" -- One clipboard

-- Nvim Tree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer

-- Create splits
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Better split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to below split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to above split' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right split' })

-- Fuzzy find
-- vim.keymap.set('n', '<leader>sk', builtin.keymaps)




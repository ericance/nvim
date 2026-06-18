-- Options
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.expandtab = true -- force the tab to spaces
vim.opt.softtabstop = 4 -- tab/backspace moves by 4 columns in insert mode
vim.opt.shiftwidth = 4 -- auto-indent, >> and << by 4 columns in insert mode
vim.opt.tabstop = 4 -- display real tab characters as 4 columns wide
vim.opt.wrap = false

-- lua/config/options.lua
vim.g.lazyvim_picker = "telescope"

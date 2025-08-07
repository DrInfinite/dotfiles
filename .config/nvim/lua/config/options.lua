-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd([[set colorcolumn=80]])

vim.cmd([[set guicursor=n-v-c-sm-i-ci:block,ve:ver25,r-cr-o:hor20]])

-- Use spaces as default over tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

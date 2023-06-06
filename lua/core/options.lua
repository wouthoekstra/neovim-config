vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

-- spacing configuration
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- font
vim.opt.guifont = { "Hack Nerd Font", ":h12" }

-- commands
vim.cmd("command! Sql  new | set filetype=sql")

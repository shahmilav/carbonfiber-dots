local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ';'

require("lazy").setup("plugins")
require('mini.basics').setup()

require('mini.starter').setup()
require('mini.statusline').setup()
require('mini.hues').setup({ background = '#19213a', foreground = '#c4c6cd' })

require('mini.files').setup()
require('mini.surround').setup()
require('mini.jump2d').setup()
require('mini.git').setup()
require('mini.diff').setup()

vim.cmd('colorscheme randomhue')

local map = vim.keymap.set
map('n', '<Leader>n', ':lua MiniFiles.open()<CR>')
map('n', '<Leader>f', ':LspZeroFormat!<CR>')

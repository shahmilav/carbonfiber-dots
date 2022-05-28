-- This file can be loaded by calling `lua require('plugins')` from your
-- init.vim / init.lua
vim.cmd [[

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'arcticicestudio/nord-vim'
Plug 'navarasu/onedark.nvim'
Plug 'https://github.com/RRethy/nvim-base16'
Plug 'nickeb96/fish.vim'
Plug 'https://github.com/romainl/flattened'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
]]

vim.g.tokyonight_style="night"
vim.g.tokyonight_sidebars = { "nvim-tree", "terminal", "vim-plug" }
vim.cmd[[colorscheme nord]]

require('plugin-config.treesitter')
require('plugin-config.nvim-tree')
require('plugin-config.telescope')
require('plugin-config.indent-blankline')
require('gitsigns').setup()

require('lualine').setup {
  options = {
    theme = 'nord'
  }
}

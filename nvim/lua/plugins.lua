-- This file can be loaded by calling `lua require('plugins')` from your
-- init.vim / init.lua

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Packer can manage itself
  use { 'wbthomason/packer.nvim', run = ':PackerSync' }

  ---< TREESITTER >---
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  require('plugin-config.treesitter')

  ---------------------------------------------------------------------------------
  ---< THEMES >---
  use 'shaunsingh/nord.nvim'
  use 'marko-cerovac/material.nvim'
  use "shahmilav/darkside"
  use 'olimorris/onedarkpro.nvim'
  use 'cocopon/iceberg.vim'
  use 'chriskempson/base16-vim'


  require('plugin-config.material-colo')
  vim.cmd 'colorscheme onedarkpro'
  -------------------------------------------------------------------------------------

    ---< NVIM-TREE >---
    use {
      'kyazdani42/nvim-tree.lua', 
      requires = { 'kyazdani42/nvim-web-devicons' }
    } 
    require('plugin-config.nvim-tree')

    ---< STATUSBAR >---
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    require('lualine').setup()

    ---< TELESCOPE >---
    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    require('plugin-config.tele')

    ---< DASHBOARD >---
    use {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
      config = function()
        require"startup".setup()
      end
    }
    require('plugin-config.dashboard-nvim')

    ---< INDENT BLANKLINE >---
    use "lukas-reineke/indent-blankline.nvim"
    require('plugin-config.indent-blankline')

    ---< COKELINE (TABS) >---
    use {
      'noib3/nvim-cokeline',
      requires = 'kyazdani42/nvim-web-devicons'
    } 
    require('plugin-config.cokeline')

    ---< GIT >---
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('gitsigns').setup()
      end
    }

    ---< COMPLETION >---
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'

    --< LSP >--
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP
    use 'williamboman/nvim-lsp-installer'

  end)

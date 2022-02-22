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

  ---< THEMES >---
  use { 'shaunsingh/nord.nvim' }
  --require('plugin-config.nord-nvim')
  use { 'rose-pine/neovim' }
  use "projekt0n/github-nvim-theme"
  -- To use this theme, uncomment the following line
  -- require('plugin-config.github-theme')
  use "shahmilav/darkside"
  use 'hzchirs/vim-material'
  use 'joshdick/onedark.vim'
  vim.cmd [[colorscheme onedark]]
  use 'cocopon/iceberg.vim'
  --  vim.cmd [[ colorscheme iceberg ]]
  use 'kaicataldo/material.vim'
  --[[ vim.cmd [[
  if (has('termguicolors'))
    set termguicolors
    endif
    let g:material_terminal_italics = 1
    let g:material_theme_style = 'ocean'
    colorscheme material ]]

    ---< NVIM-TREE >---
    use {
      'kyazdani42/nvim-tree.lua', 
      requires = { 'kyazdani42/nvim-web-devicons' }
    } 
    require('plugin-config.nvim-tree')

    ---< LUALINE >---
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    require('plugin-config.lualine')


    ---< TELESCOPE >---
    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    require('plugin-config.tele')
    use {
      'sudormrfbin/cheatsheet.nvim',

      requires = {
        {'nvim-telescope/telescope.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
      }
    }

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
      requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons

    }
    require('plugin-config.cokeline')

    ---< GIT >---
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'

    ---< COMPLETION >---
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'

    --< LSP >--
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP
    use 'williamboman/nvim-lsp-installer'

  end)

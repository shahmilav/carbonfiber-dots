return require('packer').startup(function()
	
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorschemes
	use 'shaunsingh/nord.nvim'
	use 'navarasu/onedark.nvim'
	use 'https://gitlab.com/__tpb/monokai-pro.nvim'
	use 'folke/tokyonight.nvim'
	use 'arzg/vim-colors-xcode'

	-- Statusbar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
	}

	-- Language support 
	use 'https://github.com/dag/vim-fish'
	use 'https://github.com/arzg/vim-swift'


	-- external configs for plugins
	require('configs.treesitter')
	require('configs.colors')
	require('configs.lualine')
	require('configs.nvimtree')

end)

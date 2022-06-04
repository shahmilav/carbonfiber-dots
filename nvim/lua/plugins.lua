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

	-- Colorscheme
	use 'shaunsingh/nord.nvim'
	use 'navarasu/onedark.nvim'
	use 'https://gitlab.com/__tpb/monokai-pro.nvim'

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



	require('configs.treesitter')
	require('configs.colors')
	require('configs.lualine')
	require('configs.nvimtree')

end)

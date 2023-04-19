vim.cmd('packadd packer.nvim')

return require('packer').startup(
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        ---
        -- USELESS
        ---
        use 'eandrju/cellular-automaton.nvim'
        use 'tamton-aquib/zone.nvim'

        ---
        -- Themes
        ---
        use 'navarasu/onedark.nvim'
        use 'shaunsingh/nord.nvim'
        use 'sainnhe/everforest'
        use 'sainnhe/gruvbox-material'
        use 'marko-cerovac/material.nvim'
        use 'folke/tokyonight.nvim'
        use { "catppuccin/nvim", as = "catppuccin" }
        use ({ 'projekt0n/github-nvim-theme' })


        ---
        -- LSP
        ---
        use {
            'neovim/nvim-lspconfig',
            wants = {
                'mason.nvim',
                'mason-lspconfig.nvim',
                'mason-tool-installer.nvim',
            },

            requires = {
                'williamboman/mason.nvim',
                'williamboman/mason-lspconfig.nvim',
                'WhoIsSethDaniel/mason-tool-installer.nvim',
            }
        }

        ---
        -- Completion
        ---
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'
        use 'L3MON4D3/LuaSnip'
        use 'rafamadriz/friendly-snippets'


        -- use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {'nvim-lua/plenary.nvim'}
        }

        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
            }
        }

        use {
            'nvim-lualine/lualine.nvim',
            requires = {
                'kyazdani42/nvim-web-devicons', opt = true
            }
        }
    end
)


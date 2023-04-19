---
-- Source files
---
require('plugins')
require('keymaps')

---
-- Source configs
--
require('configs.lualine')
require('configs.treesitter')
require('configs.nvim-tree')
require('configs.lsp')
require('configs.cmp')

---
-- Settings
---
local set = vim.opt

set.number        = true
set.expandtab     = true
set.shiftwidth    = 4
set.shiftround    = true
set.incsearch     = true
set.autoindent    = true
set.cursorline    = true
set.cmdheight     = 0
set.termguicolors = true

vim.cmd
[[
    set guicursor=
    filetype on
    filetype plugin on
    filetype indent on
]]

--- 
-- Colorscheme
---
require('colorscheme') -- Colorscheme configs
vim.cmd 'colorscheme tokyonight'

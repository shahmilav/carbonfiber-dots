---< API ALIASES >---
local cmd = vim.cmd 		-- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local fn = vim.fn       	-- call Vim functions
local g = vim.g        		-- global variables
local opt = vim.opt        	-- global/buffer/windows-scoped options

---< SETTINGS >---
opt.termguicolors=true
opt.mouse='a'
opt.autoindent=true
opt.incsearch=true
opt.number = true
--vim.cmd 'set guicursor= '

vim.cmd [[
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
highlight Comment cterm=italic gui=italic
]]

-- Helper functions
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

vim.g.mapleader = ';'

nmap("<C-n>", ":NvimTreeToggle<cr>")
nmap("<leader>w", ":w<cr>")

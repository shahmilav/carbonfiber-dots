require("startup").setup({theme = "evil"})
require"startup".create_mappings({
  ["<leader>ff"]="<cmd>Telescope find_files<CR>",
  ["<leader>lg"]="<cmd>Telescope live_grep<CR>",
  ["<leader>of"]="<cmd>Telescope oldfiles<CR>",
})

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  incremental_selection = {
    enable = true,
    disable = {},
  },
  -- keep these parsers installed at all times
  ensure_installed = {
    "lua",
    "rust",
    "java",
    "html",
    "css",
  },
}

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },

  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "darker",
      })
    end,
  },
  { "shaunsingh/nord.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "jesseduffield/lazygit" },
  { "maxmx03/dracula.nvim" },
}

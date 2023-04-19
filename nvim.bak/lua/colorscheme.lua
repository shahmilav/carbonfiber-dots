require('onedark').setup {
    style = 'deep'
}

vim.g.nord_contrast = true
vim.g.nord_borders = true

vim.g.material_style = "darker"
require('material').setup({
    contrast = {
        terminal = true, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    },
    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
    },
    plugins = {
        "nvim-web-devicons",
        "telescope",
    },

    disable = {
        colored_cursor = true,
    },

    lualine_style = "stealth"
})


-- Choose colorscheme in ../init.lua


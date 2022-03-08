require('telescope').setup{
  defaults = {
    layout_config = {
      vertical = { width = 0.5 }
      -- other layout configuration here
    },
    preview_cutoff = 1,
    previewer = true,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  pickers = {
    find_files = {
      theme = "cursor",
    },
    oldfiles = {
      theme="cursor",
    },
    colorscheme = {
      theme="dropdown",
    }
  },
}

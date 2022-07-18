vim.cmd([[source $HOME/.config/nvim/vim-plug/plugins.vim]])
vim.cmd([[source $HOME/.config/nvim/vim/coc-config.vim]])

require "user.options"
require "user.dashboard"
require "user.keymaps"

-- nvim-tree

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "d", action = "dir_down" },
      },
    },
  },
  renderer = {
    group_empty = true,
    -- highlight_git = true,
    highlight_opened_files = "name",
    add_trailing = true,
  },
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  reload_on_bufenter = true,
  open_on_setup = true,
  open_on_setup_file = true,
  open_on_tab = true,
})

-- Telescope ignore node_modules
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }

-- Theme
vim.cmd([[set t_Co=256]])
vim.cmd([[syntax on]])
vim.cmd([[colorscheme onehalfdark]])

vim.cmd([[highlight NvimTreeOpenedFile gui=bold,underline]])

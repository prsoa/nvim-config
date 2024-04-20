vim.cmd([[source $HOME/.config/nvim/vim-plug/plugins.vim]])

require "user.options"
require "user.dashboard"
require "user.keymaps"
require "user.dap"
require "user.lspconfig"
require "user.prettier"

-- nvim-tree
-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "name",
    add_trailing = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  reload_on_bufenter = true,
  open_on_tab = true,
})

-- Telescope ignore node_modules
require('telescope').setup{
  defaults = { file_ignore_patterns = {"node_modules"} },
  pickers = { 
    find_files = { hidden = true }
  }
}

require('nvim_comment').setup()

require("bufferline").setup{
  options = {
    mode = "buffers",
    offsets = {{filetype = "NvimTree", text_align = "left"}},
  }
}

-- Git conflict setup
require('git-conflict').setup()

-- LSP Installer Setup
require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require('neogit').setup()

-- Auto Pairs ()
require("nvim-autopairs").setup {}

-- Theme vim-code-dark
vim.cmd([[set t_Co=256]])
-- vim.cmd([[set t_ut=]])
vim.cmd([[colorscheme onehalfdark]])
vim.cmd([[colorscheme codedark]])

-- Theme onehalfdark
-- vim.cmd([[set t_Co=256]])
vim.cmd([[syntax on]])
-- vim.cmd([[colorscheme onehalfdark]])

vim.cmd([[highlight NvimTreeOpenedFile gui=bold,underline]])

-- Git Gutter to the side of line numbers
vim.cmd([[set signcolumn=yes]])

-- Copy to System clipboard - requirex "xsel" installed for linux
vim.cmd([[set clipboard+=unnamedplus]])

vim.cmd([[let g:airline_powerline_fonts = 1]])

-- Relative line numbers
vim.cmd([[set relativenumber]])

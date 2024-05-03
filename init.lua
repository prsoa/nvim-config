vim.cmd([[source $HOME/.config/nvim/vim-plug/plugins.vim]])

require "user.options"
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

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "jdtls", "tsserver" },
}

require("bufferline").setup{
  options = {
    mode = "buffers",
    offsets = {{filetype = "NvimTree", text_align = "left"}},
  }
}

-- Git conflict setup
require('git-conflict').setup()

-- Treesitter Syntax Highlighting
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html", "css", "tsx", "java" },
  sync_install = false,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = true,
  },
}

require('neogit').setup()

-- Auto Pairs ()
require("nvim-autopairs").setup {}

-- oil.nvim
require("oil").setup()

-- Theme vim-code-dark
vim.cmd([[set t_Co=256]])
vim.cmd([[colorscheme codedark]])

vim.cmd([[highlight NvimTreeOpenedFile gui=bold,underline]])

-- Git Gutter to the side of line numbers
vim.cmd([[set signcolumn=yes]])

-- Copy to System clipboard - requirex "xsel" installed for linux
vim.cmd([[set clipboard+=unnamedplus]])

vim.cmd([[let g:airline_powerline_fonts = 1]])

-- Relative line numbers
vim.cmd([[set relativenumber]])

-- Disable mouse
vim.opt.mouse = ""

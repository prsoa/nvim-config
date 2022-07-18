local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Change <leader> key
--vim.g.mapleader = ","

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<S-t>", "<cmd>NvimTreeToggle<cr>", opts)

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Change <leader> key
--vim.g.mapleader = ","

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

keymap("n", "<S-t>", "<cmd>NvimTreeToggle<cr>", opts)

keymap("n", "<Leader>n", "<cmd>:BufferLineCycleNext<cr>", opts)
keymap("n", "<Leader>m", "<cmd>:BufferLineCyclePrev<cr>", opts)
keymap("n", "<Leader>x", "<cmd>:bd | :bp<cr>", opts)

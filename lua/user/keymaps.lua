local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Change <leader> key
--vim.g.mapleader = ","

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)

keymap("n", "<S-t>", "<cmd>NvimTreeToggle<cr>", opts)

keymap("n", "<Leader>n", "<cmd>:BufferLineCycleNext<cr>", opts)
keymap("n", "<Leader>p", "<cmd>:BufferLineCyclePrev<cr>", opts)
keymap("n", "<Leader>x", "<cmd>:bd | :bp<cr>", opts)

-- Insert new line without leaving normal mode
keymap("n", "<Leader>o", "o<Esc>0\"_D", opts)
keymap("n", "<Leader>O", "O<Esc>0\"_D", opts)

-- DAP
keymap("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<Leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<Leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<Leader>dt", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<Leader>dC", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", opts)
keymap("n", "<Leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", opts)

-- Git
keymap("n", "<Leader>gg", "<cmd>:Neogit<cr>", opts)
keymap("n", "<Leader>gv", "<cmd>:DiffviewOpen<cr>", opts)
keymap("n", "<Leader>gl", "<cmd>:Neogit log<cr>", opts)

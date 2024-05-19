local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Change <leader> key
vim.g.mapleader = " "

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)

keymap("n", "<S-t>", "<cmd>NvimTreeToggle<cr>", opts)

keymap("n", "<Leader>n", "<cmd>:BufferLineCycleNext<cr>", opts)
keymap("n", "<Leader>p", "<cmd>:BufferLineCyclePrev<cr>", opts)
keymap("n", "<Leader>x", "<cmd>:bd | :bp<cr>", opts)

-- Insert new line without leaving normal mode
keymap("n", "<Leader>o", 'o<Esc>0"_D', opts)
keymap("n", "<Leader>O", 'O<Esc>0"_D', opts)

-- DAP

-- Function to disconnect from dap and close dapui
local function dap_disconnect_close()
	require("dap").disconnect()
	require("dapui").close()
end

-- Set this function globally if you want to call it from keybind
_G.dap_disconnect_close = dap_disconnect_close

keymap("n", "<Leader><F1>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<Leader><F2>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<Leader><F3>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<Leader><F4>", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<Leader>dc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", opts)
keymap("n", "<Leader>dd", "<cmd>lua dap_disconnect_close()<cr>", opts)

-- Git - gitsigns & Neogit
keymap("n", "<Leader>gg", "<cmd>:Neogit<cr>", opts)
keymap("n", "<Leader>gv", "<cmd>:DiffviewOpen<cr>", opts)
keymap("n", "<Leader>gl", "<cmd>:Neogit log<cr>", opts)
keymap("n", "<leader>hs", "<cmd>lua require'gitsigns'.stage_hunk()<cr>", opts)
keymap("n", "<leader>hr", "<cmd>lua require'gitsigns'.reset_hunk()<cr>", opts)
keymap(
	"v",
	"<leader>hs",
	'<cmd>lua function() require\'gitsigns\'.stage_hunk { vim.fn.line("."), vim.fn.line("v") } end<cr>',
	opts
)
keymap(
	"v",
	"<leader>hr",
	'<cmd>lua function() require\'gitsigns\'.reset_hunk { vim.fn.line("."), vim.fn.line("v") } end<cr>',
	opts
)
keymap("n", "<leader>hS", "<cmd>lua require'gitsigns'.stage_buffer()<cr>", opts)
keymap("n", "<leader>hu", "<cmd>lua require'gitsigns'.undo_stage_hunk()<cr>", opts)
keymap("n", "<leader>hR", "<cmd>lua require'gitsigns'.reset_buffer()<cr>", opts)
keymap("n", "<leader>hp", "<cmd>lua require'gitsigns'.preview_hunk()<cr>", opts)
keymap("n", "<leader>hb", "<cmd>lua function() require'gitsigns'.blame_line{ full = true } end<cr>", opts)
keymap("n", "<leader>tb", "<cmd>lua require'gitsigns'.toggle_current_line_blame()<cr>", opts)
keymap("n", "<leader>hd", "<cmd>lua require'gitsigns'.diffthis()<cr>", opts)
keymap("n", "<leader>hD", "<cmd>lua function() require'gitsigns'.diffthis(\"~\") end<cr>", opts)
keymap("n", "<leader>td", "<cmd>lua require'gitsigns'.toggle_deleted()<cr>", opts)

-- oil.nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

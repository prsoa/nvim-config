require("user.keymaps")

require("config.lazy")

require("user.options")
require("user.dap")
require("user.lspconfig")
require("user.prettier")

-- nvim-tree
-- setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
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
require("telescope").setup({
	defaults = { file_ignore_patterns = { "node_modules" } },
	pickers = {
		find_files = { hidden = true },
	},
})

require("nvim_comment").setup()

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "jdtls", "ts_ls", "tailwindcss" },
})
require("mason-nvim-dap").setup({
	ensure_installed = { "node2", "javadbg" },
})

require("bufferline").setup({
	options = {
		mode = "buffers",
		offsets = { { filetype = "NvimTree", text_align = "left" } },
	},
})

-- Git conflict setup
require("git-conflict").setup()

-- Treesitter Syntax Highlighting
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"javascript",
		"typescript",
		"html",
		"css",
		"tsx",
		"java",
	},
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
})

require("neogit").setup()

require("gitsigns").setup({
	signs = {
		-- add = { text = "┃" },
		-- change = { text = "┃" },
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		follow_files = true,
	},
	auto_attach = true,
	attach_to_untracked = false,
	current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
		virt_text_priority = 100,
	},
	current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000, -- Disable if file is longer than this (in lines)
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
})

-- Auto Pairs ()
require("nvim-autopairs").setup({})

-- oil.nvim
require("oil").setup()

-- Theme vim-code-dark
vim.cmd([[set t_Co=256]])
vim.cmd([[set termguicolors]])
vim.cmd([[colorscheme codedark]])

-- Git Signs Colors
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#608B4E", bg = "NONE" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#D7BA7D", bg = "NONE" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#F44747", bg = "NONE" })

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

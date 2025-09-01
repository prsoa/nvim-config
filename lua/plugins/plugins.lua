return {
  {"nvim-lua/plenary.nvim"},
  { "kyazdani42/nvim-web-devicons", lazy = true },
{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
{
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
},
{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "neovim/nvim-lspconfig",
    "nvimtools/none-ls.nvim",
    "jay-babu/mason-null-ls.nvim",
},
{
"hrsh7th/cmp-nvim-lsp",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-path",
"hrsh7th/cmp-cmdline",
"hrsh7th/nvim-cmp",
"onsails/lspkind.nvim",
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},
"saadparwaiz1/cmp_luasnip",
"rafamadriz/friendly-snippets",
},
{
"MunifTanjim/prettier.nvim"
},
{
"mfussenegger/nvim-jdtls"
},
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
"stevearc/oil.nvim"
},
{
"tomasiser/vim-code-dark"
},

{ "tpope/vim-surround"},

{ "windwp/nvim-autopairs"},

 {"lewis6991/gitsigns.nvim"},
 {"sindrets/diffview.nvim"},
{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
    "echasnovski/mini.pick",         -- optional
  },
},
{"terrortylor/nvim-comment"},
{"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},
{ "vim-airline/vim-airline",
 "vim-airline/vim-airline-themes"},
{"akinsho/git-conflict.nvim", version = "*", config = true},
{ "nvim-neotest/nvim-nio" },
{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
}


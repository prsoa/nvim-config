" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

" File Tree
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" LSP Config
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" LSP Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" LSP Prettier
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'

" jdtls
Plug 'mfussenegger/nvim-jdtls'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" oil.nvim
Plug 'stevearc/oil.nvim'

" Themes
Plug 'martinsione/darkplus.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'dikiaap/minimalist'
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' } " Vim-Plug
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sainnhe/sonokai'
Plug 'gosukiwi/vim-atom-dark'

" Surround text ()
Plug 'tpope/vim-surround'

" Auto pairs ()
Plug 'windwp/nvim-autopairs'

" Git 
Plug 'airblade/vim-gitgutter' 
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'NeogitOrg/neogit'

" Toggle comments
Plug 'terrortylor/nvim-comment'

" Buffline
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git-conflict
Plug 'akinsho/git-conflict.nvim'

" DAP - Debugger
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

call plug#end()


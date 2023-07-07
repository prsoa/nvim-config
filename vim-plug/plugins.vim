" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" File Tree
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" LSP Config
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" LSP Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.2.1', 'do': 'make install_jsregexp'}
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Themes
Plug 'martinsione/darkplus.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'dikiaap/minimalist'
Plug 'EdenEast/nightfox.nvim', { 'tag': 'v1.0.0' } " Vim-Plug
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sainnhe/sonokai'
Plug 'gosukiwi/vim-atom-dark'

Plug 'glepnir/dashboard-nvim'

" Surround text ()
Plug 'tpope/vim-surround'

" Git 
Plug 'airblade/vim-gitgutter' 
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'TimUntersberger/neogit'

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
Plug 'rcarriga/nvim-dap-ui'

call plug#end()


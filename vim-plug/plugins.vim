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

Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Git status on file lines
Plug 'airblade/vim-gitgutter' 

" Toggle comments
Plug 'terrortylor/nvim-comment'

" Buffline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


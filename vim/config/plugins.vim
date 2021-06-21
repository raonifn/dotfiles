call plug#begin('~/.vim/bundle')

" Themes
" Plug 'kamykn/skyhawk'
" Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'
Plug 'exitface/synthwave.vim'
Plug 'junegunn/seoul256.vim'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'benmills/vimux'
" Plug 'neomake/neomake'

" Dev Tools
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'janko-m/vim-test'
Plug 'sebdah/vim-delve'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'vim-syntastic/syntastic'
" Plug 'junkblocker/patchreview-vim'
" Plug 'codegram/vim-codereview'

" intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'natebosch/vim-lsc'

" Dev Langs support
" Plug 'mxw/vim-jsx'
" Plug 'posva/vim-vue'
" Plug 'pangloss/vim-javascript'
" Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'racer-rust/vim-racer'
" Plug 'udalov/kotlin-vim'

" Presentations
Plug 'sotte/presenting.vim'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim'

call plug#end()
filetype plugin indent on



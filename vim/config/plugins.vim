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
Plug 'dense-analysis/ale'
Plug 'janko-m/vim-test'
Plug 'sebdah/vim-delve'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
" Plug 'puremourning/vimspector', { 'do': ':VimspectorInstall' }
" Plug 'vim-syntastic/syntastic'
" Plug 'junkblocker/patchreview-vim'
" Plug 'codegram/vim-codereview'

" intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'natebosch/vim-lsc'

" Dev Langs support
" Plug 'pangloss/vim-javascript'
" Plug 'dart-lang/dart-vim-plugin'
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go'}
" Plug 'racer-rust/vim-racer'

" Presentations
Plug 'sotte/presenting.vim'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim'

" Arduino
" Plug 'sudar/vim-arduino-syntax'
Plug 'stevearc/vim-arduino'
" Plug 'raonifn/vim-arduino'

call plug#end()
filetype plugin indent on



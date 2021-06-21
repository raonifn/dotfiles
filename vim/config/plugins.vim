" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Themes
" Plugin 'kamykn/skyhawk'
" Plugin 'morhetz/gruvbox'
" Plugin 'tomasr/molokai'
Plugin 'exitface/synthwave.vim'
Plugin 'junegunn/seoul256.vim'

" IDE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'benmills/vimux'
" Plugin 'neomake/neomake'

" Dev Tools
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'janko-m/vim-test'
Plugin 'sebdah/vim-delve'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'junkblocker/patchreview-vim'
" Plugin 'codegram/vim-codereview'

" intellisense engine
Plugin 'neoclide/coc.nvim'
Plugin 'natebosch/vim-lsc'
Plugin 'tpope/vim-markdown'

" Dev Langs support
" Plugin 'mxw/vim-jsx'
" Plugin 'posva/vim-vue'
" Plugin 'pangloss/vim-javascript'
" Plugin 'dart-lang/dart-vim-plugin'
Plugin 'fatih/vim-go'
Plugin 'racer-rust/vim-racer'
" Plugin 'udalov/kotlin-vim'

" Presentations
Plugin 'sotte/presenting.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

call vundle#end()
filetype plugin indent on



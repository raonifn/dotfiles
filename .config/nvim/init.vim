set nocompatible              " be iMproved, required
syntax enable
filetype off                  " required
set path+=**
set wildmenu

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'kamykn/skyhawk'
Plugin 'natebosch/vim-lsc'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'w0rp/ale'
Plugin 'ryanoasis/vim-devicons'
Plugin 'posva/vim-vue'
Plugin 'janko-m/vim-test'
Plugin 'neomake/neomake'
Plugin 'airblade/vim-gitgutter'
Plugin 'racer-rust/vim-racer'
Plugin 'dart-lang/dart-vim-plugin'

call vundle#end()
filetype plugin indent on

" Search highlight and searching as you type
set hlsearch
set incsearch

set updatetime=4000

" Theme
set t_Co=256
colorscheme skyhawk
set background=dark

set encoding=utf8

set expandtab
set tabstop=2
set shiftwidth=2
set ruler
set relativenumber
set nu
set statusline+=%F
set laststatus=2
set autoread
set mouse=a
set autoindent
set cursorline
set pastetoggle=<F2>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

let g:lightline = { 'colorscheme': 'wombat' }

" Window moving
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Resize control
nmap <left> :vertical resize -5<CR>
nmap <up> :resize -5<CR>
nmap <down> :resize +5<CR>
nmap <right> :vertical resize +5<CR>

" Copy/Paste
vmap <C-c> "+y
nmap v<C-v> "+p


" NERDTree
" Autoopen
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" Open shortcut
function MyNerdToggle()
    if @% == "" || &filetype == 'nerdtree'
        :NERDTreeToggle
    else
        :NERDTreeFind
    endif
endfunction
nnoremap <C-\> :call MyNerdToggle()<CR>

" TABS
map <C-t>k :tabr<cr>
map <C-t>j :tabl<cr>
map <C-t>h :tabp<cr>
map <C-t>l :tabn<cr>
map <C-t>1 :tabn1<cr>
map <C-t>2 :tabn2<cr>
map <C-t>3 :tabn3<cr>
map <C-t>4 :tabn4<cr>
map <C-t>5 :tabn5<cr>
map <C-t>6 :tabn6<cr>
map <C-t>7 :tabn7<cr>
map <C-t>8 :tabn8<cr>
map <C-t>t :tabnew<cr>
map <C-t>T :tabnew \| te<cr>

" Reset the listchars
set listchars=""
" a tab should display as " ", trailing whitespace as "."
set listchars=tab:\ \
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ctrlp ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|build|dist|target|gen)$',
  \ 'file': '\v\.(exe|so|dll|class|war)$'
  \ }
" Follow symbolic links
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_map = 'f<C-P>'

" So auto reload works ¯\_(ツ)_/¯
:set backupcopy=yes

" vimgrep ignore
set wildignore+=node_modules/**,dist/**,build/**,.git/**,gen/**,target/**,tags

" Trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Tests
let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
let g:test#strategy = 'neomake'
let g:neomake_open_list = 2
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
" Greps
function FastGrep()
        set ei=all
				exec "vimgrep /" . expand("<cword>") . "/j **"
        set ei&
        cw
endfunction
function FastBoundaryGrep()
        set ei=all
				exec "vimgrep /\\b" . expand("<cword>") . "\\b/j **"
        set ei&
        cw
endfunction
:nnoremap <C-g>r :call FastGrep()<CR>
:nnoremap <C-g>R :call FastBoundaryGrep()<CR>

" lsc
let g:lsc_server_commands = {'javascript': '/home/raoni/opt/javascript-typescript-langserver/lib/language-server-stdio.js'}
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = v:true

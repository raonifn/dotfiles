" Search highlight and searching as you type
set hlsearch
set incsearch

set updatetime=300

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
set autoindent
set autowrite
set cursorline
set pastetoggle=<F12>

set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

set completeopt=longest,menuone

" Reset the listchars
set list
set listchars=""
" Use textmate-style whitespace characters
set listchars=tab:▸\ 
set listchars+=eol:¬
" set listchars+=space:␣
" a tab should display as " ", trailing whitespace as "."
" set listchars=tab:\ \
" show trailing spaces as dots
set listchars+=trail:.
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" Trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Move current line up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gvk

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

au BufNewFile,BufRead Jenkinsfile setf groovy
au BufNewFile,BufRead Jenkinsfile-storage setf groovy

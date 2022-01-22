" Tests
" let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
" let g:test#strategy = 'neomake'
let g:neomake_open_list = 2
let g:test#strategy = 'vimux'

" use <c-space>for trigger completion

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-u> :TestSuite<CR>
nmap <silent> t<C-a> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>aa :cclose<CR>


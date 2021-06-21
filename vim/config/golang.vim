let g:go_def_mode='gopls'
let g:go_highlight_operators = 1
let g:go_highlight_types=1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_jump_to_error = 0

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>n  <Plug>(go-rename)

" Delve Debugger
let g:delve_use_vimux=1
nmap <silent> t<C-n> :TestNearest<CR>
function! DebugNearest()
  let g:test#go#runner = 'delve'
  TestNearest
  unlet g:test#go#runner
endfunction

nmap <silent> t<C-d> :call DebugNearest()<CR>
nmap <silent> t<C-b> :DlvToggleBreakpoint<CR>
nmap <silent> t<C-t> :DlvToggleTracepoint<CR>
nmap <silent> t<F8> :call VimuxRunCommand('c')<CR>
nmap <silent> t<F10> :call VimuxRunCommand('n')<CR>
nmap <silent> t<C-p> :call VimuxRunCommand('p ' . expand('<cWORD>'))<CR>
nmap <silent> t<C-l> :call VimuxRunCommand('locals')<CR>
nmap <silent> t<C-v> :call VimuxRunCommand('vars')<CR>
nmap <silent> t<C-x> :call VimuxRunCommand('exit')<CR>

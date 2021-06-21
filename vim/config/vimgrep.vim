" vimgrep ignore
set wildignore+=node_modules/**,dist/**,build/**,.git/**,gen/**,target/**,coverage/**,tags,debug,coverage.html

" Greps
function! VisualText()
  " Why is this not a built-in Vim script function?!
  let [line_start, column_start] = getpos("'<")[1:2]
  let [line_end, column_end] = getpos("'>")[1:2]
  let lines = getline(line_start, line_end)
  if len(lines) == 0
    return ''
  endif
  let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][column_start - 1:]
  return join(lines, "\r")
endfunction
function! FastGrep(what)
  set ei=all
  exec "vimgrep /" . a:what . "/j **"
  set ei&
  cw
endfunction
function! FastBoundaryGrep()
  set ei=all
  exec "vimgrep /\\b" . expand("<cword>") . "\\b/j **"
  set ei&
  cw
endfunction

:nnoremap <C-g>r :call FastGrep(expand("<cword>"))<CR>
:nnoremap <C-g>R :call FastBoundaryGrep(expand("<cword>"))<CR>
:vnoremap <C-g>r :call FastGrep(VisualText())<CR>
:vnoremap <C-g>R :call FastBoundaryGrep(VisualText())<CR>


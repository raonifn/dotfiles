let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript']
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


nmap zk {k
nmap zj }j
nmap zx :call VimuxRunCommand('node '. @%)<CR>
nmap za :call VimuxRunCommand('node '. expand("<cfile>"))<CR>
nmap zl :call VimuxRunCommand('clear')<CR>

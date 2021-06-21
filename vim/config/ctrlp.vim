" ctrlp ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|coverage|build|dist|target|gen)$',
  \ 'file': '\v\.(exe|so|dll|class|war)$'
  \ }
" Follow symbolic links
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_map = 'f<C-P>'
"
" So auto reload works ¯\_(ツ)_/¯
set backupcopy=yes

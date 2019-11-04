" Vim compiler plugin
" Language:     NPM Jest Test
" Maintainer:   Raoni
" URL:          https://github.com/raonifn/dotfiles

if exists("current_compiler")
  finish
endif
let current_compiler = "npm"

if exists(":CompilerSet") != 2
  command! -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=npm\ test\ --\ --reporters\ jest-vim-reporter\ \;\ npm\ run\ lint\ --\ --format\ unix

" Vim compiler plugin
" Language:     NPM Lint
" Maintainer:   Raoni
" URL:          https://github.com/raonifn/dotfiles

if exists("current_compiler")
  finish
endif
let current_compiler = "npm_lint"

if exists(":CompilerSet") != 2
  command! -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=npm\ run\ lint\ --\ --format\ unix

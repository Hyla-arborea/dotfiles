" Vim powerline specific settings
"
" IMPORTANT: Powerline does require a patched font to work properly! In the
" vim-powerline repository, there is a font patcher utitliy.

" Do actually use the fancy settings. Not much user otherwise.
let g:Powerline_symbols = 'fancy'

set guifont=Inconsolata\ for\ Powerline:h15
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

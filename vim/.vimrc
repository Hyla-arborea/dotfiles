" Nima's personal ``.vimrc``.
" More advanced settings are stored in files in the ``settings`` subfolder.
" Every ``.vim`` file in there will be automatically sourced.


" Use vim settings instead of vi settings. MUST be the first thing in the vimrc.
set nocompatible

" =============================================================================
" === Pathogen initialization ===
" Use pathogen to load all other plugins. Automatically loads all plugins in
" the bundle subfolder.

execute pathogen#infect()

" Now any plugins you wish to install can be extracted to a subdirectory under
" ~/.vim/bundle, and they will be added to the ``runtimepath``.
" If you don't like the directory name bundle, you can pass a runtime relative
" glob as an argument:
" execute pathogen#infect('stuff/{}')

" Generate documentation for all plugins in the bundle subdirectory.
execute pathogen#helptags()

" =============================================================================
" === General configuration ===

set t_Co=256         " Enable 256 color in vim.
set laststatus=2     " Always show the status line.
set encoding=utf-8   " Usually necessary to show unicode glyphs.

syntax on            " Enable syntax highlighting.
set number           " Enable line numbering.
set magic            " Does some magic; Newline characters, ...

set cursorline       " Highlight the current line.
set colorcolumn=80   " Highlight a specific column.
highlight ColorColumn ctermbg=lightgray guibg=lightgray

set scrolloff=5      " Keep 5 lines visible above/below cursor.

" Unix like tab completion.
set wildmenu
set wildmode=longest,list

" Mouse support for ``all``. Another very nice feature of this is that test
" selection with the mouse now does no more select the line numbers.
" Needs a terminal with X mouse support. One possibility for OSX is iTerm.
" Most Linux terminals are fine anyway.
set mouse=a

" =============================================================================
" Autodetect filetype and necessray for some other stuff to work.
filetype plugin on
filetype on

" =============================================================================
" === Tabs and indentation ===
" always use 4 spaces as tabs.

filetype plugin indent on
filetype indent on
set tabstop=4
set shiftwidth=4     " Number of spaces to (auto)indent.
set expandtab        " To insert spaces whenevenr the tab key is pressed
set smartindent      " Smart autoindenting when starting a new line.
set cindent          " cindent
set autoindent       " Always set autoindenting on

" =============================================================================
" === Code folding ===
" Provide a way to collapse (or fold) methods and classes, showing you just the
" class/method definition lines instead of all the code.

set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar instead of typing za
"nnoremap <space> za
nnoremap zz za

" =============================================================================
" === Color scheme and font ===

if has('gui_running')
    set background=dark
    colorscheme solarized
    set guifont=Courier\ 10\ Pitch\ for\ Powerline\ Regular\ 12
else
    set background=dark
    colorscheme gruvbox
endif

" =============================================================================
" === Automatically remove trailing whitespaces upon saving the current buffer

autocmd BufWritePre * :%s/\s\+$//e

" =============================================================================
" === Load settings saved ``.vim`` files in the ``settings`` subdirectory ===

for f in split(glob('$HOME/.vim/settings/*.vim'), '\n')
    exec 'source' f
endfor

" =============================================================================
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
let g:Powerline_fonts = 1

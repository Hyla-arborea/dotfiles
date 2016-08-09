" @author: Lion Krischer
"
" NERDTree specific settings
"
" Close vim if the only buffer left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Toggle NERDTree
" (if 'mapleader' is not set or empty, a backslash is used. In this case type
" \t to toggle NERDTree.
nmap <leader>t :NERDTree<CR>

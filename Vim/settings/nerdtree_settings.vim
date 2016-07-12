" @author: Lion Krischer
"
" NERDTree specific settings
"
" Close vim if the only buffer left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Toggle NERDTree
nmap <leader>t<space> :NERDTreeToggle<CR>

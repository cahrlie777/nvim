""NERDTree
let loaded_matchparen = 1
let g:NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:NERDTreeStatusline = ''
nmap <silent> <C-o> :NERDTreeToggle<CR>
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

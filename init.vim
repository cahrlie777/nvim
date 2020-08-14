       "_                  ____ _                _ _
"__   _(_)_ __ ___        / ___| |__   __ _ _ __| (_) ___
"\ \ / / | '_ ` _ \ _____| |   | '_ \ / _` | '__| | |/ _ \
 "\ V /| | | | | | |_____| |___| | | | (_| | |  | | |  __/
  "\_/ |_|_| |_| |_|      \____|_| |_|\__,_|_|  |_|_|\___|

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


filetype plugin on
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'     "undo history
Plug 'zhou13/vim-easyescape'                        "Easy Escape Plug 'jiangmiao/auto-pairs'                         "auto-pairs
Plug 'neoclide/coc.nvim', { 'branch': 'release' }   "Coc-autocomplete Keeping up to date with master
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'                      "easy-commenter
Plug 'tpope/vim-fugitive'                           "Git support
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim'
Plug 'thaerkh/vim-workspace'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons' "Need nerd-fonts installed in terminal like Fira Code and FiraMono
Plug 'airblade/vim-gitgutter'
Plug 'uiiaoo/java-syntax.vim'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Yggdroot/indentLine'
"Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'altercation/vim-colors-solarized'
call plug#end()

if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=SpaceMono\ Nerd\ Font\ Mono\ Regular\ 15
  elseif has("gui_photon")
    set guifont=Courier\ New:s11
  elseif has("gui_kde")
    set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Courier_New:h11:cDEFAULT
  endif
endif

set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " stop newline continution of comments
if exists('&regexpengine')
  set regexpengine=1
endif

syntax enable                           " Enables syntax highlighing
set number relativenumber               "hybrid line number
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                       " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
"set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set incsearch
set nohlsearch
set clipboard=unnamedplus

set mousem=popup        " Enable the popup men


"set list
let g:workspace_autosave_always = 1

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'

syntax enable
set background=dark
colorscheme gruvbox
let g:solarized_termcolors=256
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

if executable('rg')
let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

hi Comment cterm=italic
"let g:onedark_hide_endofbuffer=1
"let g:onedark_terminal_italics=1
"let g:onedark_termcolors=256

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE
endif

""NERDTree
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeStatusline = ''
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
autocmd VimEnter * NERDTree

" vim-devicons
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:startify_enable_special = 1

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

"let g:lightline = {
      "\ 'colorscheme': 'default',
      "\ 'active': {
      "\   'left': [ [ 'mode', 'paste' ],
      "\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      "\ },
      "\ 'component_function': {
      "\   'gitbranch': 'FugitiveHead'
      "\ },
      "\ }

command! -nargs=0 Prettier :CocCommand prettier.formatFile
set guioptions-=T  "remove menu bar


"___  __
""|  \/  | __ _ _ __  ___
""| |\/| |/ _` | '_ \/ __|
""| |  | | (_| | |_) \__ \
""|_|  |_|\__,_| .__/|___/
       ""|_|
       "


autocmd filetype python nnoremap <F5> :!python3 % <CR>
autocmd filetype javascript nnoremap <F5> :!node % <CR>
autocmd filetype cpp nnoremap <F5> :!g++ -std=c++11 -O2 -Wall % -o %:r && ./%:r <CR>

cnoremap kj <C-C>
cnoremap jk <C-C>
nnoremap <C-b> :bp<CR>
nnoremap <C-m> :bn<CR>
nnoremap <Leader>c :bw!<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
"C"onquer of Completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <C-space> coc#refresh() nnoremap <silent> <Leader>tc :Colors<CR> 
nnoremap <silent> <Leader>fb :Marks<CR> 
nmap <silent> <C-\> :NERDTreeToggle <CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references) 
nmap <leader>rr <Plug>(coc-rename) 
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR> ""Sweet Sweet FuGITive
nmap <leader>gs :G<CR> ""show all diagnostics.
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr> ""manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
inoremap <C-c> <esc> 
inoremap <silent><expr> <TAB> 
\ pumvisible() ? coc#_select_confirm() :
\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'



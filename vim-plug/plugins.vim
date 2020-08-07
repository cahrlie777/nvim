
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'mbbill/undotree'     "undo history
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy search
Plug 'junegunn/fzf.vim'                             "Fuzzy search
Plug 'zhou13/vim-easyescape'                        "Easy Escape
Plug 'jiangmiao/auto-pairs'                         "auto-pairs
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
"Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'vim-airline/vim-airline'
Plug 'frazrepo/vim-rainbow'
Plug 'uiiaoo/java-syntax.vim'
 "_____ _
"|_   _| |__   ___ _ __ ___   ___  ___
  "| | | '_ \ / _ \ '_ ` _ \ / _ \/ __|
  "| | | | | |  __/ | | | | |  __/\__ \
  "|_| |_| |_|\___|_| |_| |_|\___||___/
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'joshdick/onedark.vim'
call plug#end()

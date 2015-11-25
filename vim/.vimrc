set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'flazz/vim-colorschemes'          " All the colors!
Plugin 'kien/ctrlp.vim'                  " Fuzzy Finder
Plugin 'christoomey/vim-tmux-navigator'  " vim/tmux pane navigation
Plugin 'nathanaelkane/vim-indent-guides' " Indent Guides
Plugin 'scrooloose/syntastic'            " Linting
Plugin 'bronson/vim-trailing-whitespace' " Trailing Whitespace

" Languages
Plugin 'groenewege/vim-less'             " Less
Plugin 'tpope/vim-markdown'              " Markdown
Plugin 'pangloss/vim-javascript'         " Javascript
Plugin 'mxw/vim-jsx'                     " JSX

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Settings
let g:ctrlp_show_hidden = 2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Files/Directories to ignore
set wildignore+=*.git,*.swp,*.zip,.DS_Store
set wildignore+=*/tmp/*,*/vendor,*/node_modules,*/bower_components

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set noswapfile                              " Don't create annoying *.swp files
set laststatus=2                            " Always show status bar

" Indent settings
set shiftwidth=2
set expandtab
set autoindent

" Disable vim intro
set shortmess+=I

" Make naughty characters visible...
" (uBB is right double angle, uB7 is middle dot)
exec "set lcs=tab:\uBB\uBB,trail:\uB7,nbsp:~"

" Line Numbers!
set relativenumber
set number

" Colors
set t_Co=256
syntax on
set background=dark
colorscheme iceberg


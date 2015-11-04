set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All the colors!
Plugin 'flazz/vim-colorschemes'
" Fuzzy finder -- absolutely must have.
Plugin 'kien/ctrlp.vim'
" Indent guide
Plugin 'nathanaelkane/vim-indent-guides'
" Linting! yes please.
Plugin 'scrooloose/syntastic'
" Trailing whitespace is root of all evil
Plugin 'bronson/vim-trailing-whitespace'

" Languages
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugin Settings
set wildignore+=*.git,*.swp,*.zip,.DS_Store     " Files to ignore
set wildignore+=*/tmp/*,*/vendor,*/node_modules,*/bower_components " Directories to ignore

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set noswapfile                              " Don't create annoying *.swp files
set laststatus=2                            " Always show status bar

" Set leader
let mapleader=";"

" strip trailing whitespace
nnoremap <leader>v :FixWhitespace<CR>

" Tab switching
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" bindings for easy split nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

" Indent settings
set shiftwidth=2
set expandtab
set autoindent

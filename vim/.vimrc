set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'flazz/vim-colorschemes'             " All the colors!
Plugin 'kien/ctrlp.vim'                     " Fuzzy Finder
Plugin 'itchyny/lightline.vim'              " Vim Status bar
Plugin 'christoomey/vim-tmux-navigator'     " vim/tmux pane navigation
Plugin 'nathanaelkane/vim-indent-guides'    " Indent Guides
Plugin 'scrooloose/syntastic'               " Linting
Plugin 'editorconfig/editorconfig-vim'      " EditorConfig Support
Plugin 'bronson/vim-trailing-whitespace'    " Trailing Whitespace
Plugin 'Valloric/YouCompleteMe'             " Autocomplete
Plugin 'tpope/vim-repeat'                   " Repeat Command Helper
Plugin 'tpope/vim-surround'                 " Surround Helper
Plugin 'tpope/vim-fugitive'                 " Git Wrapper
Plugin 'tpope/vim-commentary'               " Commenting
Plugin 'alvan/vim-closetag'                 " HTML tag completion
Plugin 'tmux-plugins/vim-tmux-focus-events' " Tmux focus events

" Languages
Plugin 'slim-template/vim-slim'           " Slim
Plugin 'groenewege/vim-less'              " Less
Plugin 'tpope/vim-markdown'               " Markdown
Plugin 'pangloss/vim-javascript'          " Javascript
Plugin 'maxmellon/vim-jsx-pretty'         " JSX formatting
Plugin 'mustache/vim-mustache-handlebars' " Handlebars
Plugin 'digitaltoad/vim-jade'             " Jade

call vundle#end()            " required
filetype plugin indent on    " required

" Plugin Settings
let g:ctrlp_show_hidden = 2
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }

let g:xml_syntax_folding = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_jade_checkers = ['jade_lint']
let g:syntastic_perl_checkers = ['perl']
let g:syntastic_mode_map = {'mode': 'active'}

" EditorConfig overrides
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

" Enable syntax for specific filetypes
augroup filetype
  autocmd! BufRead,BufNewFile *.hdbs set filetype=handlebars
  autocmd! BufRead,BufNewFile *.tsx set filetype=typescript.jsx
  autocmd! BufRead,BufNewFile .env* set filetype=sh
augroup END

" Auto update external buffers
set autoread

" Trigger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif

" Notification after file change
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Files/Directories to ignore
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tmp|swp|zip|DS_Store)$'
let g:ctrlp_custom_ignore = {
  \ 'dir' : '\v[\/](node_modules|dist|tmp|vendor|dist)$'
  \ }

set noswapfile   " Don't create annoying *.swp files
set laststatus=2 " Always show status bar

" Indent settings
filetype plugin indent on
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces

" Code Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Disable vim intro
set shortmess+=I

" Make naughty characters visible...
" (uBB is right double angle, uB7 is middle dot)
exec "set lcs=tab:\uBB\uBB,trail:\uB7,nbsp:~"

" Line Numbers and length!
set relativenumber
set number
set colorcolumn=80

" Colors
set t_Co=256
syntax enable
set background=dark
colorscheme solarized


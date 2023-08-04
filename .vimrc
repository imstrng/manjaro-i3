set nocompatible
filetype off

" Pluggins and plugin manager
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" Source vimrc after saving it.
autocmd BufWritePost .vimrc source %

" Visual block indentation.
vnoremap > >gv
vnoremap < <gv

" Spaces as tabs
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Make search case insensitive
set hlsearch
set ignorecase
set incsearch
set smartcase

" Other settings
set autoindent
set background=dark
set history=100
set showcmd
set showmatch
set undolevels=100
set encoding=utf-8
set path+=**
set wildmenu
syntax on
colorscheme pablo

" disable backup and swap file creation
set nobackup
set noswapfile
set nowritebackup

" show line numbers and length
set nu!
set rnu
set cursorline

"splits and navigation:
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-H> <C-W><C-H>
nnoremap <F2> :vs<CR>
nnoremap <F2> <esc>:vs<CR>

" code folding:
set foldmethod=indent
set foldlevel=100
nnoremap <space> za

" mappings:

map  <F9> :w<CR>:!ampy -p /dev/ttyUSB0 put ./% ; picocom -b 115200 /dev/ttyUSB0<CR>machine.reset()<CR>
imap <F9> <esc>:w<CR>:!ampy -p /dev/ttyUSB0 put ./%<CR>

map  <F10> :!picocom -b 115200 /dev/ttyUSB0<CR>
imap <F10> <esc>:!picocom -b 115200 /dev/ttyUSB0<CR>

map  <F11> :w<CR>:!ampy -p /dev/ttyUSB0 put ./%<CR>
imap <F11> <esc>:w<CR>:!ampy -p /dev/ttyUSB0 put ./%<CR>

map  <F12> :w<CR>:!ampy -p /dev/ttyUSB0 run ./%<CR>
imap <F12> <esc>:w<CR>:!ampy -p /dev/ttyUSB0 run ./%<CR>

" commands:
command! MakeTags !ctags -R .

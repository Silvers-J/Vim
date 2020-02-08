filetype plugin indent on
execute pathogen#infect() 
execute pathogen#helptags()

set nocompatible
set encoding=utf-8
set number
syntax enable

set tabstop=4
set shiftwidth=4
"set softtabstop=4
set expandtab
set nowrap
set showcmd
set showmode
set linebreak

set laststatus=2
set wildmenu
set noswapfile
set nobackup
set nowb
set ruler
"set cursorline
"set wildmenu
"set showmatch
set incsearch
set hlsearch
"nnoremap <leader><space> :nohlsearch<CR>
"set foldenable
set backspace=indent,eol,start
set autoindent
filetype plugin indent on

"show status line
set statusline=2
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
let g:airline_powerline_fonts = 1 

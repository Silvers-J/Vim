
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'

Plug 'jiangmiao/auto-pairs'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'honza/vim-snippets'
Plug 'ThePrimeagen/vim-be-good', {'do': '.\install.sh'}
Plug 'tpope/vim-fugitive'
" Plug 'stsewd/fzf-checkout.vim'

Plug 'ap/vim-css-color'
Plug 'vimwiki/vimwiki'
Plug 'wavded/vim-stylus'
Plug 'wellle/targets.vim'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-startify'
Plug 'aquach/vim-http-client'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'ryanoasis/vim-devicons'
Plug 'mikelue/vim-maven-plugin'


Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

echo ">^.^<"

set number
set rnu
set hidden
set nowrap
set nobackup
set nowritebackup
set noswapfile
set cmdheight=2
set shortmess+=c
set backspace=indent,eol,start
set softtabstop=0
set expandtab
set smarttab
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set foldmethod=syntax


"jump to end of line while in insert mode
inoremap <C-e> <C-o>$
nnoremap <space><space> :nohl<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :vs $MYVIMRC<CR>
"Capitalize the word before the cursor
nnoremap <leader><C-u> vawU
inoremap <leader><C-u> <ESC>vawUea
inoremap jk <esc>
vnoremap jk <esc>
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>p "*P
nnoremap <leader>y "*y
" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

if has('termguicolors')
  set termguicolors
endif

" let g:tokyonight_style = "night"
" colorscheme tokyonight
set laststatus=2
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1
colorscheme gruvbox-material

" let g:lightline = { 'colorscheme': 'gruvbox-material' }
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <silent> <leader>fl :NERDTreeFind<CR>

nnoremap <silent> <leader>sl :SClose<CR>

let g:UltiSnipsExpandTrigger = '<c-e>'               

" Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif


augroup filetype_indent
	autocmd!
	autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
	autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
	autocmd FileType html       setlocal shiftwidth=2 tabstop=2
	autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab
	autocmd FileType css 	    setlocal shiftwidth=2 tabstop=2
	autocmd FileType less 	    setlocal shiftwidth=2 tabstop=2
	autocmd FileType java 	    setlocal shiftwidth=4 tabstop=4
augroup END
" autocmd BufRead *.html :normal gg=G

let g:javascript_conceal_function = "ƒ"
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

lua require('slvrs/telescope')

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fgs :Telescope grep_string search=
nnoremap <leader>fk <cmd>Telescope keymaps<cr>

nnoremap <leader>gs :Git<cr>


" lua require('slvrs/cmp')
lua require('slvrs/lsp')
lua require('slvrs/treesitter')


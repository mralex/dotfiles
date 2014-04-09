set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'Yggdroot/indentLine'

filetype plugin indent on
let mapleader = ","
nmap < ,

set t_Co=256
syntax on
set background=dark
set backspace=indent,eol,start
set autoindent
set ruler
set showcmd
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline

set wildmenu

set showmatch

set hlsearch

" set colorcolumn=80

nnoremap <silent> <leader><space> :noh<cr>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>a :Ag<space>
nnoremap <leader>n :NERDTreeToggle<CR>

" Automatically search using the clipboard contents
nnoremap <leader>/ /<C-R>"<CR>

nnoremap <leader>p :bp<CR>
nnoremap <leader>P :bn<CR>

set nolist
set number
set laststatus=2
set noshowmode
set history=1000
set undolevels=1000
set title
set nowrap
set scrolloff=5

map Q qq

set nobackup
set noswapfile
set hidden

set clipboard=unnamed

let g:in_git = system('git rev-parse --show-toplevel 2>/dev/null')
if g:in_git != ''
    cd `=g:in_git`
    let g:ctrlp_user_command = 'cd %s && git ls-files . -co --exclude-standard'
endif

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

cmap Q q
cmap W w
cmap WQ wq
cmap Wq wq

map <C-Up> <C-W>j<C-W>_
map <C-Down> <C-W>k<C-W>_
map <C-Left> <C-W>h<C-W>_
map <C-Right> <C-W>l<C-W>_

augroup configgroup
    autocmd!
    autocmd BufEnter *.handlebars setlocal filetype=html
augroup END


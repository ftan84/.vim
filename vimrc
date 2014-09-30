" =====================
" Reset settings
" =====================

" It changes other options as side effect
set nocompatible

" ==========================================
" Vundle
" ==========================================

" Setup for vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Initialize the vundle plugin
Plugin 'gmarik/Vundle.vim'

Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'mrtazz/simplenote'

call vundle#end()
" ==========================================
" End Vundle
" ==========================================

" This terminal supports colors
" set term=rxvt-256color
set term=xterm-256color

" Color scheme
set t_Co=256
colorscheme monokai

" Sets syntax highlighting to on
syntax on

" Sets line numbers to on
set number

" Set ruler
set ruler

" Sets the indent rules
" set smartindent
filetype indent plugin on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" Wrap settings
" set wrap
" set nolist
" set textwidth=0
" set wrapmargin=0
" set formatoptions+=t

" Ignore case sensitity
set smartcase

" Highlight & incremental search
set hlsearch
set incsearch

" Always display status line
set laststatus=2

" Set large history
set history=200
set undolevels=200

" Custom status line
" set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]
" set stl+=\ Col:\ %c
" set stl+=\ Buf:\ #%n\ [%b][0x%B]
" set stl+=\ %=%{strftime(\"%m/%d/%Y\ %I:%M\ %p\")}

" Operator time out
set timeoutlen=500

" Show the operator command
set showcmd

" No more swap files
set nobackup
set noswapfile

" filetype plugin indent on
autocmd FileType python nmap <F5> :!python %<cr>
autocmd FileType r nmap <F5> :!Rscript %<cr>

" Settings for the modules
source ~/.vim/module_settings

" =============================
" Custom mappings
" =============================
" Set mouse support
" set mouse=a

" Window key mappings
" Using Ctrl
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
" nnoremap <Leader>h <C-W>h
" nnoremap <Leader>j <C-W>j
" nnoremap <Leader>k <C-W>k
" nnoremap <Leader>l <C-W>l

" Change the leader key to spacebar
let mapleader = ","

" Change the save function to leader s
nnoremap <Leader>s :w<CR>

" Change the quit function to leader q
nnoremap <Leader>q :q<CR>

" Trailing whitespaces
" match ErrorMsg '\s\+$'
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Nerdtree Toggle
nnoremap <Leader>nt :NERDTreeToggle<CR>

" Printing options
set popt=number:y

" Vim-notes options
:let g:notes_directories = ['~/Notes/']

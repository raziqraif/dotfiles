 " Basic config

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set textwidth=80
set formatoptions=croqt
set autoindent
set smartindent
set mouse=a
set ruler
set autoread
set backspace=indent,eol,start
set hlsearch
syntax on
set number


" Install plugins

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()          " required
Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'lervag/vimtex'
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
call plug#begin()
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug '907th/vim-auto-save'
call plug#end()


" Python whitespace config

" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix


" Fullstack whitespace config

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" AutoSave config

let g:updatetime = 300
let g:auto_save_events = ["InsertLeave", "TextChanged", "CursorHoldI"]


" Vim Tex Config

let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
set encoding=utf8
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif


" Formatting based on programming language

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype rust setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab


" NERDTree

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Automatically open NERDTree upon launch "
autocmd vimenter * NERDTree
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Move cursor to file instead of NERDTree  upon launching vim "
autocmd VimEnter * NERDTree | wincmd p
" Ignore files in NERDTree 
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Prevent vim from clearing the clipboard after closing
autocmd VimLeave * call system("xsel -ib", getreg('+'))


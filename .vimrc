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
Plug 'preservim/nerdtree'
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


" Formatting based on programming language

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype rust setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab

" Prevent vim from clearing the clipboard after closing
autocmd VimLeave * call system("xsel -ib", getreg('+'))


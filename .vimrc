" Notes on autocomplete
" - You need cmake for YouCompleteMe, and might need to go into where it is in
"   .vim and run `python install.py --all`
" - You need to `cargo install rusty-tags` and ctags for rust

" Prevent vim from clearing the clipboard after closing
autocmd VimLeave * call system("xsel -ib", getreg('+'))

set mouse=a
"set paste
set nocompatible              " be iMproved, required
set ruler
set autoread
filetype off                  " required
set backspace=indent,eol,start

" --- EXPERIMENTAL STUFF HERE
"nnoremap <C-W>s Hmx`` \|:split<CR>`xzt``
" --- DONE WITH EXPERIMENTAL STUFF

set hlsearch
"set wildmenu
syntax on
"set relativenumber
set number

"call plug#begin()
"
"Plug 'rust-lang/rust.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'chemzqm/vim-jsx-improve'
"Plug 'sickill/vim-monokai'
"Plug 'alvan/vim-closetag'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'morhetz/gruvbox'
"call plug#end()
" autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;
" autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

let g:closetag_shortcut = '>'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.js,*.jsx,*.tsx"
let g:airline#extensions#tabline#enabled = 1

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype rust setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab

set autoindent
set smartindent


nnoremap <leader>b :ls<CR>:b 
nnoremap <leader>gb :GoBuild<CR>
nnoremap <leader>gi :GoImports<CR>
nnoremap <leader>gf :GoFmt<CR>
nnoremap <leader>w :w<CR>

nnoremap <C-p> :FZF<CR>

let g:ycm_filetype_whitelist = { 'go': 1 }
setlocal omnifunc=go#complete#Complete

set textwidth=80
set formatoptions=croqt

autocmd VimLeave * call system("xsel -ib", getreg('+'))

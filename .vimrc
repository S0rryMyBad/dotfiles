" vim plug
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
set t_Co=256
syntax on

" colorscheme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

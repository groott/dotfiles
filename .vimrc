" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

let g:pymcd_powerline="py3"

" Base16 like theme
colorscheme peachpuff
let g:airline_theme='base16_ocean'
set guifont=SpaceMono\ Nerd\ Font\ Mono\ 12

" use UTF-8
set encoding=utf-8
let g:airline_powerline_fonts=1
" define tabstops as spaces
set expandtab       " don't use actual tab character (ctrl-v)
set tabstop=4       " tabs are at proper location
set softtabstop=4   " indenting is four spaces
set shiftwidth=4    " indenting is four spaces

" fish shell fix
set shell=/bin/bash

" no word wrap, yuck
set nowrap
set fo=cq
set textwidth=0

" linenumber color
highlight LineNr ctermfg=DarkGrey

" statusline
set nocompatible
set noruler
set statusline=
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
"set statusline +=[%{&fo}]               "show wrap options
set laststatus =2

set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set t_Co=256

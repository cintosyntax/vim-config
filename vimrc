" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Pathogen and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

execute pathogen#infect()

syntax on
filetype plugin indent on

set rtp+=/usr/local/opt/fzf
runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

set wildignore=_build/*,deps/*,*/node_modules/*,tmp/*,vendor/*

au! BufNewFile,BufRead *.svelte set ft=html

let g:rspec_runner = "os_x_iterm2"

map <Leader>T :Rails <CR>
map <Leader>t :.Rails <CR>
map <Leader>f :FZF <CR>


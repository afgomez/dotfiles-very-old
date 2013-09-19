" Disable vi mode
set nocompatible

" Vundle stuff
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

filetype plugin indent on


" Behavior stuff
" ----------------------------------------------------------------------------
let mapleader=","
set clipboard=unnamed           " Use system clipboard
set mouse=a                     " Enable mouse scrolling
set backspace=indent,eol,start  " Allow backspacing over everything


" Interface stuff
" ---------------------------------------------------------------------------
syntax on            " Color all the things!
set cmdheight=2      " I like high command status
set laststatus=2     " Show last command
set number           " Line numbers are cool
set cursorline       " Show me where I am


" Coding stuff
" ---------------------------------------------------------------------------
set tabstop=8     " If there's some mixed indentation I wanna see it
set shiftwidth=2 softtabstop=2 expandtab

set autoindent     " Indent
set smartindent    " Be smart about it

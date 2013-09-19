" Disable vi mode
set nocompatible

" Vundle stuff
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

" Ruby on Rails stuff
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

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
set t_Co=256         " With all the colors in the world!
color vimcobalt      " And use a beautiful theme!

set cmdheight=2      " I like high command status
set laststatus=2     " Show last command
set number           " Line numbers are cool
set cursorline       " Show me where I am

" Show hidden characters
set list
set listchars=tab:▸\ ,eol:¬ " Use textmate invisible characters


" Coding stuff
" ---------------------------------------------------------------------------
set tabstop=8     " If there's some mixed indentation I wanna see it
set shiftwidth=2 softtabstop=2 expandtab

set autoindent     " Indent
set smartindent    " Be smart about it


" Kitchen sink stuff
" ---------------------------------------------------------------------------

" Airline pretty symbols
" let g:airline_powerline_fonts = 1

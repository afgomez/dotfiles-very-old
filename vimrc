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
Bundle 'scrooloose/syntastic'

" Helps debugging colorschemes
Bundle 'gerw/vim-HiLinkTrace'

" Syntax helpers
Bundle 'tpope/vim-endwise'
Bundle 'jiangmiao/auto-pairs'

" Extend % for HTML
Bundle 'tsaleh/vim-matchit'

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

set hidden      " Don't complain when switching unsaved buffers
set visualbell  " STFU Vim!

set autoread    " re-read a file if it has a different timestamp

set selection=exclusive    " Don't include the character under the cursor in
                           " selection

" Splits
"
set splitright
set splitbelow
" Searchs
"
set hlsearch      " Highlight search results"
set incsearch     " ...dynamically as they are typed.
set smartcase     " Insensitive case unless there are some uppercase letters


" Interface stuff
" ---------------------------------------------------------------------------
syntax on            " Color all the things!
set t_Co=256         " With all the colors in the world!
color vimcobalt      " And use a beautiful theme!

set cmdheight=2      " I like high command status
set laststatus=2     " Show last command
set number           " Line numbers are cool
set cursorline       " Show me where I am
set colorcolumn=80   " To write code @rochgs ready

set scrolloff=5      " Show some context when scrolling pages


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

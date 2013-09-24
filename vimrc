" Disable vi mode
set nocompatible

" Vundle stuff
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'kien/ctrlp.vim'
Bundle 'ivalkeen/vim-ctrlp-tjump'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'szw/vim-tags'
" Needed to enable autosave under iTerm2
Bundle 'sjl/vitality.vim'
" Helps debugging colorschemes
Bundle 'gerw/vim-HiLinkTrace'
" Whitespace is a bitch
Bundle 'mmozuras/vim-whitespace'

" Syntax helpers
Bundle 'tpope/vim-endwise'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tsaleh/vim-matchit'

" Ruby on Rails
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'

" HTML/CSS/SASS...
Bundle 'othree/html5.vim'
Bundle 'JulesWang/css.vim'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'othree/javascript-libraries-syntax.vim'

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

" Save files when focus is lost
autocmd BufLeave,FocusLost * silent! wall

" Splits
set splitright      " Vertical splits to the right
" set splitbelow    " Horizontal splits below

" Searchs
set hlsearch      " Highlight search results"
set incsearch     " ...dynamically as they are typed.
set ignorecase    " Don't care about case
set smartcase     " Insensitive case unless there are some uppercase letters

" Clear search highlight when done searching
nnoremap <CR> :noh<CR><CR>

" Live dangerously
set nobackup
set noswapfile

" Wrap stuff
set nowrap
nmap j gj
nmap k gk

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


" Kitchen sink
" ---------------------------------------------------------------------------

" Emacs line movements in insert mode
imap <C-e> <C-o>$
imap <C-a> <C-o>0
imap <C-k> <C-o>d$

" Highlight ruby operators
let ruby_operators=1

" Fast switch between files
nnoremap <leader><leader> <c-^>

" CTRL-P extensions/options
let g:ctrlp_map = '<Leader>gf'
let g:ctrlp_match_window = 'results:30'
" let g:ctrlp_extensions = ['tag']


" Rails Gotofiles
map <Leader>gv :CtrlP app/views<CR>
map <Leader>gm :CtrlP app/models<CR>
map <Leader>gc :CtrlP app/controllers<CR>
map <Leader>ga :CtrlP app/assets<CR>


" Better :tjump
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

" Airline stuff
let g:airline_theme = "powerlineish"
" let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'

" Syntastic stuff
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_error_symbol   = '✖'

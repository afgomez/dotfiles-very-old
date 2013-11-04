" Disable vi mode
set nocompatible

" Vundle stuff
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Interface goodies
Bundle 'vim-scripts/YankRing.vim'
Bundle 'sjl/gundo.vim'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ivalkeen/vim-ctrlp-tjump'
Bundle 'bling/vim-airline'

" Behavior goodies
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'szw/vim-tags'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-endwise'
Bundle 'mmozuras/vim-whitespace'
" Bundle 'sickill/vim-pasta'
Bundle 'vim-scripts/bufkill.vim'

" Needed to enable autosave under iTerm2
if !has('gui_running')
  Bundle 'sjl/vitality.vim'
endif

" Scream with code errors
Bundle 'scrooloose/syntastic'

" Helps debugging colorschemes
Bundle 'gerw/vim-HiLinkTrace'

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

" remember more commands and search history
set history=10000

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
set wrap
nmap j gj
nmap k gk

" Learn vim the hard way
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Easier window movements
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Remember last location in file
function! PositionCursorFromViminfo()
  if !(bufname("%") =~ '\(COMMIT_EDITMSG\)') && line("'\"") > 1 && line("'\"") <= line("$")
    exe "normal! g`\""
  endif
endfunction
if has("autocmd")
  au BufReadPost * call PositionCursorFromViminfo()
endif


" Interface stuff
" ---------------------------------------------------------------------------
syntax on            " Color all the things!
set t_Co=256         " With all the colors in the world!
color vimcobalt      " And use a beautiful theme!

set cmdheight=2      " I like high command status
set laststatus=2     " Always show status line
set cursorline       " Show me where I am

" To write code @rochgs ready
function! EnsureTextWidth()
  if &tw == 0
    setlocal tw=78
  endif
endfunction
au Filetype * call EnsureTextWidth()
set colorcolumn=+1

set scrolloff=5      " Show some context when scrolling pages

" Remove the mode indicator (we are showing it with airline)
set noshowmode

" Show hidden characters
set list
set listchars=tab:▸\ ,eol:¬ " Use textmate invisible characters

" Remove delay in vim-airline when leaving insert mode
set ttimeoutlen=50

" Show available options in Ex mode
set wildmenu
set wildmode=longest:full

" Line numbers
set number

" Toggle absolute and relative line numbers (useful for motions)
map <leader>n :set relativenumber!<CR>



" Coding stuff
" ---------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2 softtabstop=2 expandtab

set autoindent     " Indent
set smartindent    " Be smart about it


" Kitchen sink
" ---------------------------------------------------------------------------

" Emacs line movements in insert mode
imap <C-e> <C-o>$
imap <C-a> <C-o>^
imap <C-k> <C-o>d$

" Highlight ruby operators
let ruby_operators=1

" Fast switch between files
nnoremap <leader><leader> <c-^>

" CTRL-P extensions/options
let g:ctrlp_map = '<Leader>gf'
let g:ctrlp_match_window = 'results:30'
" let g:ctrlp_extensions = ['tag']

" Use pwd as root
map <Leader>gF :CtrlPRoot<CR>

" Goto Buffer
map <Leader>gb :CtrlPBuffer<CR>

" Use ag for ctrl-p
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Rails Gotofiles
map <Leader>gv :CtrlP app/views<CR>
map <Leader>gm :CtrlP app/models<CR>
map <Leader>gc :CtrlP app/controllers<CR>
map <Leader>ga :CtrlP app/assets<CR>
map <Leader>gl :CtrlP lib<CR>

" Better :tjump
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

" Ag.vim
map <Leader>f :Ag<space>

" Airline stuff
let g:airline_theme = "powerlineish"
let g:airline_powerline_fonts = 1

" Disable whitespace warnings in airline, but keep indent warnings.
"
" I don't really care if there are any whitespace errors. They're going to be
" fixed by 'mmozuras/vim-whitespace'
let g:airline#extensions#whitespace#checks = [ 'indent' ]


" Syntastic stuff
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_error_symbol   = '✖'

" Gundo mapping
nmap <leader>u :GundoToggle<CR>

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
Bundle 'afgomez/better-cobalt.vim'
Bundle 'afgomez/vim-foldtext'

" Behavior goodies
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'szw/vim-tags'
Bundle 'jiangmiao/auto-pairs'
Bundle 'vim-scripts/matchit.zip'
Bundle 'tpope/vim-endwise'
Bundle 'mmozuras/vim-whitespace'
" Bundle 'sickill/vim-pasta'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'editorconfig/editorconfig-vim'

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

" Autocomplete awesomess
Plugin 'Shougo/neocomplete.vim'
Plugin 'marijnh/tern_for_vim'

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
set nowrap
noremap j gj
noremap k gk
noremap <Up> gj
noremap <Down> gk
inoremap <Up> <C-o>gj
inoremap <Down> <C-o>gk

" Easier window movements
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Reselect when shifting around
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" Use shift for selections in macvim
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" Remember last location in file
function! PositionCursorFromViminfo()
  if !(bufname("%") =~ '\(COMMIT_EDITMSG\)') && line("'\"") > 1 && line("'\"") <= line("$")
    exe "normal! g`\""
  endif
endfunction
if has("autocmd")
  au BufReadPost * call PositionCursorFromViminfo()
endif

" Fold settings
set foldmethod=syntax
set foldenable
set foldlevelstart=99


" Interface stuff
" ---------------------------------------------------------------------------
set encoding=utf-8   " We are in the 21st century thank you very much
syntax on            " Color all the things!
set t_Co=256         " With all the colors in the world!
color better-cobalt      " And use a beautiful theme!

set cmdheight=2      " I like high command status
set laststatus=2     " Always show status line
set cursorline       " Show me where I am

" To write code @rochgs ready
" if the filetype of the file has some textwidth setting set the color column
" dynamically. If not, set it to a reasonable default
function! EnsureColorColumn()
  if &tw == 0
    setlocal colorcolumn=78
  else
    setlocal colorcolumn=+1
  endif
endfunction
au Filetype * call EnsureColorColumn()

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

" Square up visual selections...
set virtualedit=block

" Coding stuff
" ---------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2 softtabstop=2 expandtab

set autoindent     " Indent
set smartindent    " Be smart about it

" Neocomplete settings
" ---------------------------------------------------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Expand with tab
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Accept completions with the Enter key
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction


" Kitchen sink
" ---------------------------------------------------------------------------

" Togle paste mode
map <Leader>p :set paste!<CR>

" My big fingers constantly open the builtin help
map <F1> <Nop>
map! <F1> <Nop>
map K <Nop>
" Mac specific
map <Help> <Nop>
map! <Help> <Nop>

" Emacs line movements in insert mode
imap <C-e> <C-o>$
imap <C-a> <C-o>^
imap <C-k> <C-o>d$

" Highlight ruby operators
let ruby_operators=1

" Fast switch between files
nnoremap <leader><leader> <c-^>

" .vimrc quick changes
noremap <leader>ev :tabnew $MYVIMRC<CR>
noremap <leader>sv :source $MYVIMRC<CR>

" CTRL-P extensions/options
let g:ctrlp_map = '<Leader>gf'
let g:ctrlp_match_window = 'results:30'
" let g:ctrlp_extensions = ['tag']
let g:ctrlp_working_path_mode = 'rwa'

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

" Edit a file in the same path of the current one
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Local machine configuration
if filereadable("~/.localvimrc")
  source ~/.localvimrc
endif

" Disable vi mode
set nocompatible

" Vundle stuff
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Check if Vundle is installed in this machine
if !filereadable(expand('~/.vim/bundle/Vundle.vim/.git/config'))
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Interface goodies
Plugin 'vim-scripts/YankRing.vim'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'afgomez/better-cobalt.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'afgomez/vim-foldtext'

" Behavior goodies
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-endwise'
Plugin 'mmozuras/vim-whitespace'
" Plugin 'sickill/vim-pasta'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'editorconfig/editorconfig-vim'

" Needed to enable autosave under iTerm2
if !has('gui_running')
  Plugin 'sjl/vitality.vim'
endif

" Scream with code errors
Plugin 'scrooloose/syntastic'

" Helps debugging colorschemes
Plugin 'gerw/vim-HiLinkTrace'

" Ruby on Rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" HTML/CSS/SASS...
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
" Plugin 'JulesWang/css.vim'
Plugin 'mustache/vim-mustache-handlebars'

" Javascript
Plugin 'pangloss/vim-javascript'

" Perl
Plugin 'vim-perl/vim-perl'

" Rust syntax
Plugin 'wting/rust.vim'
Plugin 'cespare/vim-toml'

" Elixir syntax
Plugin 'elixir-lang/vim-elixir'

" Autocomplete awesomess
if has('lua') && (v:version > 703 || v:version == 703 && has('patch885'))
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'marijnh/tern_for_vim'
endif

call vundle#end()
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

" When switching buffers go to an existing window if visible
set switchbuf=useopen

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
noremap <Down> gj
noremap <Up> gk

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
  if &ft != 'gitcommit' && line("'\"") > 1 && line("'\"") <= line("$")
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

" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo


" Interface stuff
" ---------------------------------------------------------------------------
set encoding=utf-8   " We are in the 21st century thank you very much
syntax on            " Color all the things!
set t_Co=256         " With all the colors in the world!

" Set a bright colorscheme for presentations in projectors
if $ITERM_PROFILE == 'Demos'
  set background=light
  colorscheme solarized
  set nolist
else
  color better-cobalt  " And use a beautiful theme!
  let g:airline_theme = "powerlineish"
  set list
endif

" Make vitality work over SSH/tmux
" I always use iTerm anyway so...
if (!has('gui'))
  let g:vitality_always_assume_iterm=1
endif

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
set completeopt=menuone
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Don't open the menu automatically since is distracting.
" Opens the menu with the <TAB> key (see below) and autoselect the first
" occurence in the menu
let g:neocomplete#disable_auto_complete = 1
let g:neocomplete#enable_auto_select = 1

" Tab expansion. Adapted from garyberndhardt dotfiles.
function! InsertTabWrapper()
  let col = col('.') - 1
  if pumvisible()
    return "\<C-n>"
  elseif !col || getline('.')[col - 1] =~ '\s'
    return "\<tab>"
  elseif exists('g:loaded_neocomplete')
    return neocomplete#start_manual_complete()
  else
    return "\<C-n>"
  endif
endfunction
inoremap <silent> <tab> <C-r>=InsertTabWrapper()<CR>

" Accept completions with the Enter key
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>


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

" CTRL-P extensions/options
let g:ctrlp_map = '<Leader>gf'
let g:ctrlp_match_window = 'results:30'
" let g:ctrlp_extensions = ['tag']
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Use pwd as root
map <Leader>gF :CtrlPRoot<CR>

" Goto Buffer
map <Leader>gb :CtrlPBuffer<CR>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'ag %s -l --nocolor --hidden -g ""']

" Rails Gotofiles
map <Leader>gv :CtrlP app/views<CR>
map <Leader>gm :CtrlP app/models<CR>
map <Leader>gc :CtrlP app/controllers<CR>
map <Leader>ga :CtrlP app/assets<CR>
map <Leader>gl :CtrlP lib<CR>

" Better :tjump
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
let g:ctrlp_tjump_only_silent = 1

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
let g:syntastic_warning_symbol = '•'
let g:syntastic_error_symbol   = '•'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['perl', 'html', 'scss'] }

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = ['scss_lint']

" Gundo mapping
nmap <leader>u :GundoToggle<CR>

" Edit a file in the same path of the current one
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Local machine configuration
if filereadable("~/.localvimrc")
  source ~/.localvimrc
endif

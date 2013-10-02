" Remove toolbar
set guioptions-=T

" Remove scrollbars
set guioptions-=R
set guioptions-=L

" Use console dialogs
set guioptions+=c

" Use a pretty font
set guifont=PragmataPro:h14

if has("gui_macvim")

  " Cmd-w closes buffer keeping the splits
  macmenu &File.Close key=<nop>
  map <D-w> :BW<CR>
  imap <D-w> <Esc>:BW<CR>

  " Cmd-f uses /
  macmenu &Edit.Find.Find\.\.\. key=<nop>
  map <D-f> /

  " Cmd-shift-f uses :Ag
  map <D-F> :Ag<space>

  " Comment out things (relies on vim-commentary)
  nmap <D-/> gcc
  vmap <D-/> gc
  imap <D-/> <C-o>gcc

  " Cmd-CR behaves like Textmate/Sublime
  imap <D-CR> <C-o>o

endif

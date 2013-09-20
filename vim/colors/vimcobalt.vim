" Vimcobalt
" Inspired in Cobalt

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Vimcobalt"

" Interface colors
"
hi  Normal        ctermfg=15     ctermbg=NONE  cterm=NONE  guifg=#ffffff  guibg=#050c1e  gui=NONE
hi  NonText       ctermfg=235    ctermbg=NONE  cterm=NONE  guifg=#2b3749  guibg=NONE     gui=NONE
hi  LineNr        ctermfg=102    ctermbg=NONE  cterm=NONE  guifg=#364350  guibg=#10182a  gui=NONE
hi  CursorLine    ctermfg=none   ctermbg=234   cterm=NONE  guifg=NONE     guibg=#030711  gui=NONE
hi  CursorLineNr  ctermfg=white  ctermbg=234   cterm=NONE  guifg=#364350  guibg=#090e18
hi  CursorColumn  ctermfg=NONE   ctermbg=17    cterm=NONE  guifg=#fabada  guibg=#212d40  gui=NONE
hi  ColorColumn   ctermfg=NONE   ctermbg=233   cterm=NONE  guifg=#fabada  guibg=#151c2e  gui=NONE
hi  Visual        ctermfg=NONE   ctermbg=237   cterm=NONE  guifg=NONE     guibg=#533121  gui=NONE


" General coding colors
"
hi  Constant     ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE
hi  String       ctermfg=76   ctermbg=NONE  cterm=NONE  guifg=#3ad900  guibg=NONE  gui=NONE
hi  Function     ctermfg=220  ctermbg=NONE  cterm=NONE  guifg=#ffdd00  guibg=NONE  gui=NONE
hi  Keyword      ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  Define       ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  Conditional  ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  Operator     ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  Statement    ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  PreProc      ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi  Type         ctermfg=220  ctermbg=NONE  cterm=NONE  guifg=#ffdd00  guibg=NONE  gui=NONE

hi  Number  ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE
hi  Float   ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE

hi  Comment  ctermfg=26  ctermbg=NONE  cterm=NONE  guifg=#0066cc  guibg=NONE  gui=italic
hi  Todo     ctermfg=51  ctermbg=NONE  cterm=NONE  guifg=#00FFFF  guibg=NONE  gui=italic


" Diff colors
"
hi DiffAdd     ctermfg=15  ctermbg=64    cterm=bold  guifg=#ffffff  guibg=#40800d  gui=bold
hi DiffDelete  ctermfg=88  ctermbg=NONE  cterm=NONE  guifg=#850409  guibg=NONE     gui=NONE
hi DiffChange  ctermfg=15  ctermbg=23    cterm=NONE  guifg=#ffffff  guibg=#143059  gui=NONE
hi DiffText    ctermfg=15  ctermbg=24    cterm=bold  guifg=#ffffff  guibg=#204a87  gui=bold


" HTML specific
"
hi  htmlTag      ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi  htmlEndTag   ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi  htmlTagName  ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi  htmlArg      ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE


" Ruby specific
"
hi  rubySymbol                  ctermfg=204  ctermbg=NONE  cterm=NONE     guifg=#ff628c  guibg=NONE  gui=NONE
hi  rubyStringDelimiter         ctermfg=76   ctermbg=NONE  cterm=NONE     guifg=#3ad900  guibg=NONE  gui=NONE
hi  rubyInterpolation           ctermfg=120  ctermbg=NONE  cterm=NONE     guifg=#9eff80  guibg=NONE  gui=NONE
hi  rubyInterpolationDelimiter  ctermfg=120  ctermbg=NONE  guifg=#9eff80  guibg=NONE     gui=NONE
hi  rubyInstanceVariable        ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi  rubyClassVariable           ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi  rubyBlockParameter          ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi  rubyConstant                ctermfg=121  ctermbg=NONE  cterm=NONE     guifg=#80ffbb  guibg=NONE  gui=NONE
hi  rubyClassDeclaration        ctermfg=220  ctermbg=NONE  cterm=NONE     guifg=#ffdd00  guibg=NONE  gui=NONE

hi  erubyDelimiter  ctermfg=15  ctermbg=NONE  cterm=NONE  guifg=#e1efff  guibg=NONE  gui=NONE
hi  erubyComment    ctermfg=26  ctermbg=NONE  cterm=NONE  guifg=#0066cc  guibg=NONE  gui=italic

" Rails specific
"
hi railsMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi erubyRailsUserClass ctermfg=121  ctermbg=NONE  cterm=NONE     guifg=#80ffbb  guibg=NONE  gui=NONE

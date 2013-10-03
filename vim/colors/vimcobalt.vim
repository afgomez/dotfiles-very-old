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
hi Normal        ctermfg=15     ctermbg=NONE  cterm=NONE  guifg=#ffffff  guibg=#050c1e  gui=NONE
hi NonText       ctermfg=235    ctermbg=NONE  cterm=NONE  guifg=#2b3749  guibg=NONE     gui=NONE
hi SpecialKey    ctermfg=235    ctermbg=NONE  cterm=NONE  guifg=#2b3749  guibg=NONE     gui=NONE
hi LineNr        ctermfg=102    ctermbg=NONE  cterm=NONE  guifg=#364350  guibg=#10182a  gui=NONE
hi SignColumn    ctermfg=102    ctermbg=NONE  cterm=NONE  guifg=#364350  guibg=#10182a  gui=NONE
hi CursorLine    ctermfg=none   ctermbg=234   cterm=NONE  guifg=NONE     guibg=#000000  gui=NONE
hi CursorLineNr  ctermfg=white  ctermbg=234   cterm=NONE  guifg=#364350  guibg=#090e18
hi CursorColumn  ctermfg=NONE   ctermbg=17    cterm=NONE  guifg=NONE     guibg=#212d40  gui=NONE
hi ColorColumn   ctermfg=NONE   ctermbg=233   cterm=NONE  guifg=NONE     guibg=#151c2e  gui=NONE
hi Visual        ctermfg=NONE   ctermbg=237   cterm=NONE  guifg=NONE     guibg=#533121  gui=NONE


" General coding colors
"
hi Constant      ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE
hi String        ctermfg=76   ctermbg=NONE  cterm=NONE  guifg=#3ad900  guibg=NONE  gui=NONE
hi Character     ctermfg=76   ctermbg=NONE  cterm=NONE  guifg=#3ad900  guibg=NONE  gui=NONE
hi Function      ctermfg=220  ctermbg=NONE  cterm=NONE  guifg=#ffdd00  guibg=NONE  gui=NONE
hi Statement     ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi Keyword       ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi Define        ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi Conditional   ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi Operator      ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi PreProc       ctermfg=208  ctermbg=NONE  cterm=NONE  guifg=#ff9d00  guibg=NONE  gui=NONE
hi Type          ctermfg=220  ctermbg=NONE  cterm=NONE  guifg=#ffdd00  guibg=NONE  gui=NONE
hi StorageClass  ctermfg=221  ctermbg=NONE  cterm=NONE  guifg=#ffee80  guibg=NONE  gui=NONE

hi Number  ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE
hi Float   ctermfg=204  ctermbg=NONE  cterm=NONE  guifg=#ff628c  guibg=NONE  gui=NONE

hi Comment  ctermfg=26  ctermbg=NONE  cterm=NONE  guifg=#0066cc  guibg=NONE  gui=italic
hi Todo     ctermfg=51  ctermbg=NONE  cterm=NONE  guifg=#00FFFF  guibg=NONE  gui=italic


" Diff colors
"
hi DiffAdd     ctermfg=64  ctermbg=NONE  cterm=NONE  guifg=#40800d guibg=NONE      gui=NONE
hi DiffDelete  ctermfg=88  ctermbg=NONE  cterm=NONE  guifg=#850409  guibg=NONE     gui=NONE
hi DiffChange  ctermfg=15  ctermbg=23    cterm=NONE  guifg=#ffffff  guibg=#143059  gui=NONE
hi DiffText    ctermfg=15  ctermbg=24    cterm=bold  guifg=#ffffff  guibg=#204a87  gui=bold
hi link diffAdded DiffAdd
hi link diffRemoved DiffDelete

" Syntastic colors
"
hi SyntasticError        ctermfg=16    ctermbg=160   cterm=NONE  guifg=NONE     guibg=#CC0000  gui=NONE
hi SyntasticWarning      ctermfg=16    ctermbg=166   cterm=NONE  guifg=NONE     guibg=#CC0000  gui=NONE
hi SyntasticErrorSign    ctermfg=160   ctermbg=NONE  cterm=NONE  guifg=#cc0000  guibg=NONE     gui=NONE
hi SyntasticWarningSign  ctermfg=220   ctermbg=NONE  cterm=NONE  guifg=#ffdd00  guibg=NONE     gui=NONE
hi SyntasticErrorLine    ctermfg=NONE  ctermbg=52    cterm=NONE  guifg=NONE     guibg=#660000  gui=NONE
hi SyntasticWarningLine  ctermfg=NONE  ctermbg=52    cterm=NONE  guifg=NONE     guibg=#660000  gui=NONE


" HTML colors
"
hi htmlTag      ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi htmlEndTag   ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi htmlTagName  ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE
hi htmlArg      ctermfg=123  ctermbg=NONE  cterm=NONE  guifg=#9effff  guibg=NONE  gui=NONE


" CSS/SASS colors
"
hi cssBraces     ctermfg=15   ctermbg=NONE  cterm=NONE  guifg=NONE     guibg=NONE  gui=NONE
hi cssClassName  ctermfg=77   ctermbg=NONE  cterm=NONE  guifg=#5fe460  guibg=NONE  gui=NONE
hi cssProp       ctermfg=121  ctermbg=NONE  cterm=NONE  guifg=#80ffbb  guibg=NONE  gui=NONE
hi cssImportant  ctermfg=160  ctermbg=NONE  cterm=NONE  guifg=#CC0000  guibg=NONE  gui=NONE
hi cssVendor     ctermfg=160  ctermbg=NONE  cterm=NONE  guifg=#CC0000  guibg=NONE  gui=NONE
hi link  cssUnitDecorators  Keyword
hi link  cssTagName         htmlTag
hi link  cssIdentifier      Keyword
hi link  cssFontDescriptor  Keyword
hi link  cssFunctionName    Keyword
hi link  cssPseudoClassId   Type
hi link  cssAttr            StorageClass
hi link  cssValueLength     cssAttr
hi link  cssValueNumber     cssAttr
hi link  cssColor           cssAttr

hi sassVariable ctermfg=249 ctermbg=NONE cterm=NONE guifg=#BBBBBB guibg=NONE gui=NONE
hi link  sassMixinName  Type
hi link  sassClassChar  sassClass
hi link  sassClass      cssClassName
hi link  sassAmpersand  Keyword


" Javascript colors
"
hi jsGlobalObjects ctermfg=121 ctermbg=NONE cterm=NONE guifg=#80ffbb guibg=NONE gui=NONE
hi link  jsThis                Constant
hi link  jsPrototype           Constant
hi link  jsNull                Constant
hi link  jsUndefined           Constant
hi link  jsFunction            StorageClass
hi link  jsDocTags             Todo
hi link  javascriptunderscore  Keyword
hi link  javascriptjQuery      Keyword


" Ruby colors
"
hi rubySymbol                  ctermfg=204  ctermbg=NONE  cterm=NONE     guifg=#ff628c  guibg=NONE  gui=NONE
hi rubyStringDelimiter         ctermfg=76   ctermbg=NONE  cterm=NONE     guifg=#3ad900  guibg=NONE  gui=NONE
hi rubyInterpolation           ctermfg=120  ctermbg=NONE  cterm=NONE     guifg=#9eff80  guibg=NONE  gui=NONE
hi rubyInterpolationDelimiter  ctermfg=120  ctermbg=NONE  guifg=#9eff80  guibg=NONE     gui=NONE
hi rubyInstanceVariable        ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi rubyClassVariable           ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi rubyBlockParameter          ctermfg=249  ctermbg=NONE  cterm=NONE     guifg=#bbbbbb  guibg=NONE  gui=NONE
hi rubyConstant                ctermfg=121  ctermbg=NONE  cterm=NONE     guifg=#80ffbb  guibg=NONE  gui=NONE
hi rubyClassDeclaration        ctermfg=220  ctermbg=NONE  cterm=NONE     guifg=#ffdd00  guibg=NONE  gui=NONE

hi erubyDelimiter  ctermfg=15  ctermbg=NONE  cterm=NONE  guifg=#e1efff  guibg=NONE  gui=NONE
hi link erubyComment Comment


" Rails colors
"
hi railsMethod          ctermfg=215  ctermbg=NONE  cterm=NONE  guifg=#ffb054  guibg=NONE  gui=NONE
hi erubyRailsUserClass  ctermfg=121  ctermbg=NONE  cterm=NONE  guifg=#80ffbb  guibg=NONE  gui=NONE


" YAML colors
"
hi link  yamlAnchor             StorageClass
hi link  yamlAlias              StorageClass
hi link  yamlKeyValueDelimiter  Type
hi link  yamlBlockMappingKey    Type
hi link  yamlBlockMappingMerge  Keyword
hi link  yamlPlainScalar        String

" Ctrl-P colors
"
hi CtrlPTabExtra ctermfg=15 ctermbg=NONE cterm=NONE

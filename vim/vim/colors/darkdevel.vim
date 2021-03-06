" Vim color scheme
"
" Name:         darkdevel.vim
" Maintainer:   Hallison Batista <email@hallisonbatista.com> 
" Last Change:  26 Fev 2009 
" License:      Public Domain
" Version:      1.0.0

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "darkdevel"

" General settings
" ================
set background=dark
set cursorline
"set cursorcolumn

" Cursor style
" ============
  highlight Cursor          ctermfg=NONE        guifg=#000000     ctermbg=NONE        guibg=#FFFFFF
 "CursorIM      
  highlight CursorColumn    ctermfg=NONE        guifg=NONE        ctermbg=DarkGray    guibg=#373737
  highlight CursorLine      ctermfg=NONE        guifg=NONE        ctermbg=DarkGray    guibg=#373737

" Directory style
" ===============
 "highlight Directory       ctermbg=NONE        guifg=NONE        ctermbg=NONE        guibg=NONE      cterm=bold    gui=underline

" Diff text style
" ===============
  highlight DiffAdd         ctermfg=DarkGreen   guifg=#32BE32     ctermbg=NONE        guibg=NONE
  "highlight DiffChange  
  highlight DiffDelete      ctermfg=DarkRed     guifg=#BE3232     ctermbg=NONE        guibg=NONE
  "highlight DiffText  

" Text and message style
" ======================
  "highlight ErrorMsg
  "highlight VertSplit
  "highlight Folded
  "highlight FoldColumn
  "highlight SignColumn
  "highlight IncSearch
  highlight LineNr          ctermfg=Gray        guifg=#777777     ctermbg=DarkGray    guibg=#373737 
  "highlight MatchParen
  "highlight ModeMsg
  "highlight MoreMsg
  highlight NonText         ctermfg=Gray        guifg=#777777     ctermbg=NONE        guibg=#000000
  highlight Normal          ctermfg=Gray        guifg=#CCCCCC     ctermbg=NONE        guibg=#000000

" Popup menu style
" ================
  highlight Pmenu           ctermfg=Gray        guifg=#FFFFFF     ctermbg=DarkGray    guibg=#373737
  highlight PmenuSel        ctermfg=White       guifg=#373737     ctermbg=Gray        guibg=#FFFFFF
  highlight PmenuSbar       ctermfg=NONE        guifg=NONE        ctermbg=DarkGray    guibg=#777777
  highlight PmenuThumb      ctermfg=Gray        guifg=#CCCCCC     ctermbg=NONE        guibg=NONE

 "highlight Question
 "highlight Search
 "highlight SpecialKey

" Spelling style
" ==============
 "highlight SpellBad
 "highlight SpellCap
 "highlight SpellLocal
 "highlight SpellRare

" Status style
" ============
  highlight StatusLine      ctermfg=DarkGray    guifg=#373737     ctermbg=Gray        guibg=#777777   cterm=bold  gui=bold
  highlight StatusLineNC    ctermfg=DarkGray    guifg=#777777     ctermbg=DarkGray    guibg=#373737   cterm=bold  gui=bold

 "highlight TabLine
 "highlight TabLineFill
 "highlight TabLineSel

  highlight Title           ctermfg=Gray        guifg=#373737
  highlight Visual          ctermfg=NONE        guifg=NONE        ctermbg=DarkBlue    guibg=#505064
  highlight VisualNOS       ctermfg=NONE        guifg=NONE        ctermbg=DarkGreen   guibg=#506450
  highlight WarningMsg      ctermfg=White       guifg=#FFFFFF     ctermbg=DarkRed     guibg=#964B4B
  highlight WildMenu        ctermfg=NONE        guifg=#777777     ctermbg=DarkGray    guibg=#373737

" Win32 specific style
" --------------------
  "highlight Menu
  "highlight Scrollbar
  "highlight Tooltip

" Syntax style
" ============

" Style for constants
" -------------------
  highlight Constant          ctermfg=DarkRed     guifg=#6496C8
  highlight String            ctermfg=DarkGreen   guifg=#64C896
  highlight Character         ctermfg=DarkBlue    guifg=#6496C8
  highlight Number            ctermfg=DarkGreen   guifg=#64C896
  highlight Boolean           ctermfg=DarkBlue    guifg=#6496C8
  highlight Float             ctermfg=DarkGreen   guifg=#64C896

  highlight Comment           ctermfg=DarkGray    guifg=#646464     ctermbg=NONE      guibg=NONE

" Style for identifier and variable names
" ----------------------------------------
  highlight Identifier        ctermfg=DarkCyan    guifg=#6496C8     gui=NONE
  highlight Function          ctermfg=Yellow      guifg=#FFC864     gui=NONE

" Style for statements
" ---------------------
  "Statement any statement
  highlight Statement         ctermfg=Brown       guifg=#C89664     gui=NONE
  highlight link Conditional  Statement
  highlight link Repeat       Statement
  highlight link Label        Statement
  highlight Operator          ctermfg=Green       guifg=#64C864
  highlight Keyword           ctermfg=DarkRed     guifg=#C86432
  highlight link Exception    Statement

" Style for generic preprocessor
" ------------------------------
  highlight PreProc           ctermfg=Gray        guifg=#DCDCDC     ctermbg=NONE      guibg=NONE
  highlight Include           ctermfg=DarkRed     guifg=#C86432     ctermbg=NONE      guibg=NONE
  highlight link Define       Include
  highlight link Macro        Include
  highlight link PreCondit    Include

" Style for types and objects
" ---------------------------
  highlight Type              ctermfg=DarkRed     guifg=#DC4B32     gui=NONE
  highlight link StorageClass Type
  highlight link Structure    Type
  highlight link Typedef      Type


  highlight Error                     guifg=#FFFFFF   guibg=#990000
  highlight Search                    guibg=#FFFF00

" Style for special symbols
" -------------------------
  "highlight Special         
  "highlight SpecialChar     
  "highlight Tag             
  "highlight Delimiter       
  "highlight SpecialComment  
  "highlight Debug           

" Style for text format
" ---------------------
  "highlight Underlined 
  "highlight Ignore     
  "highlight Error      
  "highlight Todo       

  highlight rubyBlockParameter        guifg=#FFFFFF
  highlight rubyClass                 guifg=#FFFFFF
  highlight rubyConstant              guifg=#DA4939
  highlight rubyInstanceVariable      guifg=#D0D0FF
  highlight rubyInterpolation         guifg=#519F50
  highlight rubyLocalVariableOrMethod guifg=#D0D0FF
  highlight rubyPredefinedConstant    guifg=#DA4939
  highlight rubyPseudoVariable        guifg=#FFC66D
  highlight rubyStringDelimiter       guifg=#A5C261
  
  highlight link htmlTag              xmlTag
  highlight link htmlTagName          xmlTagName
  highlight link htmlEndTag           xmlEndTag

  highlight xmlTag                    guifg=#E8BF6A
  highlight xmlTagName                guifg=#E8BF6A
  highlight xmlEndTag                 guifg=#E8BF6A

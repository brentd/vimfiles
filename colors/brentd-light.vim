" Vim color file
" Maintainer:	Michael Piefel <piefel@informatik.hu-berlin.de>
" Last Change:	2001 Aug 16
" License:	Public Domain

" This color scheme uses a White background. It's based on Bram's
" morning theme, but doesn't try to work for non-GUI editing.
" 
" It's supposed to look like the Emacs standard colors, at least
" for C. But Emacs has different categories, so it's not very good.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "brentd-light"

hi Normal guifg=#222222 guibg=White

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg guibg=Blue guifg=White
hi IncSearch guibg=White guifg=Red
hi ModeMsg gui=bold
hi StatusLineNC gui=reverse,bold guifg=#bbbbbb
hi StatusLine gui=reverse
hi VertSplit gui=reverse
hi Visual gui=reverse guifg=#eeeeee guibg=fg
hi VisualNOS gui=underline,bold
hi DiffText gui=bold guibg=Red
hi Cursor guibg=Black guifg=#cccccc
hi lCursor guibg=Cyan guifg=NONE
hi Directory guifg=Blue
hi LineNr guifg=grey90 guibg=#f9f9f9
hi MoreMsg gui=bold guifg=SeaGreen
hi NonText gui=bold guifg=grey90 guibg=grey96
hi Question gui=bold guifg=SeaGreen
hi Search guibg=lightyellow guifg=NONE
hi SpecialKey guifg=Blue
hi Title gui=bold guifg=Magenta
hi WarningMsg guifg=Blue
hi WildMenu guibg=Yellow guifg=Black
hi Folded guibg=White guifg=DarkBlue
hi FoldColumn guibg=Grey guifg=DarkBlue
hi DiffAdd guibg=LightBlue
hi DiffChange guibg=LightMagenta
hi DiffDelete gui=bold guifg=Blue guibg=LightCyan

" Tab lines
hi IndentGuidesOdd  guibg=grey96
hi IndentGuidesEven guibg=grey96

" Colors for syntax highlighting
hi Comment  guifg=#aaaaaa guibg=White
hi Constant guifg=#0000ff guibg=White
hi PreProc guifg=#c6522b guibg=White
hi Statement gui=NONE guifg=#52c62b guibg=White
hi Type guifg=#522bc6 guibg=White
hi Special guifg=SlateBlue guibg=White
hi Ignore guifg=White

" Some specials (override hilinks)


" vim: sw=2


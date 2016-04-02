" Vim color file
" Maintainer:	Kerupani129
" Last Change:	2015 Aug 1

" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif

" 通常
hi Normal guifg=Black guibg=#fafafa

" Groups used in the 'highlight' and 'guicursor' options default value.
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
" 検索文字列入力中など
hi IncSearch gui=NONE guibg=#c3d2ff
hi ModeMsg term=bold cterm=bold gui=bold
" ステータスライン (カレント)
hi StatusLine gui=bold guibg=Black guifg=White
" ステータスライン
hi StatusLineNC gui=NONE guibg=Black guifg=White
hi VertSplit term=reverse cterm=reverse gui=reverse
" 選択範囲
hi Visual guibg=#c3d2ff
" 選択範囲 (Not Owning the Selection)
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
" カーソル
hi Cursor guibg=#c3d2ff guifg=NONE
" カーソル (全角入力中)
hi CursorIM guibg=#0000ff guifg=White
" カーソル (キーマップ使用中)
hi lCursor guibg=Black guifg=NONE
hi Directory term=bold ctermfg=DarkBlue guifg=Blue
" 行番号
hi LineNr guifg=#96828c guibg=#f0f0f0
hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
" eol や ~ や @ や > < など
hi NonText gui=NONE guifg=#8ca0d2 guibg=NONE
hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
" 検索文字列結果
hi Search guibg=Yellow guifg=NONE
" 制御文字など
hi SpecialKey guifg=#8ca0d2
hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
hi WarningMsg term=standout ctermfg=DarkRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi CursorLine term=underline cterm=underline guibg=grey80
hi CursorColumn term=reverse ctermbg=grey guibg=grey80

" Colors for syntax highlighting
" コメント
hi Comment guifg=#969696
" 定数 (文字列) など
hi Constant guifg=#777700
" プリプロセッサ命令とか
hi PreProc guifg=Blue
hi Special term=bold ctermfg=DarkMagenta guifg=SlateBlue guibg=grey95
" 命令など
hi Statement gui=NONE guifg=Blue
" Boolean とか
hi Boolean guifg=Blue
" 変数型など
hi Type gui=NONE guifg=Blue
hi Ignore ctermfg=LightGrey guifg=grey90

" vim: sw=2

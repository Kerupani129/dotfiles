" 起動時は ft=text
if has('vim_starting')
  set ft=text
endif

" vi 互換モードにしない
set nocompatible

" 内部の文字コード
set encoding=utf-8

" 行番号表示
set number

" 空白文字可視化
set list
set listchars=eol:$,tab:>\ 

" 最後の行表示
set display=lastline

" クリップボード
set clipboard=unnamed,autoselect

" バックアップファイルを作成しない
set nobackup
" アンドゥファイルを作しない
set noundofile
" スワップファイルを作成しない
set noswapfile

"ステータスライン
set statusline=%<%f\ %h%m%r%=\ %Y\ %l行\ %c列\ %{(&fenc!='')?&fenc:&enc}\ %{(&ff=='dos')?'CRLF':(&ff=='mac')?'CR':(&ff=='UNIX')?'LF':'unknown'}

" 処理する改行コード
set ffs=dos,unix,mac

" 矩形選択
set virtualedit+=block

" 日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

" □や○の文字があってもカーソル位置がずれないようにする。
set ambiwidth=double

" 自動改行しない
set tw=0
autocmd FileType text setlocal textwidth=0

" 印刷ヘッダ
set printheader=%<%f%h%m\ (%N\ ページ)

" ランタイムパスの登録
if has('vim_starting')
  set runtimepath+=~/.vim/after/
endif

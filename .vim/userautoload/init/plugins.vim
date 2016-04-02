" 設定
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" 追加
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler.vim')

call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('vim-jp/autofmt')
call dein#add('vim-jp/vim-go-extra')
call dein#add('vim-jp/vimdoc-ja')

call dein#add('itchyny/vim-highlighturl')
call dein#add('vim-scripts/dbext.vim')
call dein#add('vim-scripts/TwitVim')
call dein#add('basyura/TweetVim')

call dein#add('mattn/webapi-vim')
call dein#add('basyura/twibill.vim')
call dein#add('tyru/open-browser.vim')
call dein#add('h1mesuke/unite-outline')
call dein#add('basyura/bitly.vim')

call dein#end()

" 自動インストール
if dein#check_install()
  call dein#install()
endif

" 設定
filetype plugin indent on
filetype indent on
syntax on

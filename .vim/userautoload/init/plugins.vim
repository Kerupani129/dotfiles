" 設定
if &compatible
  set nocompatible
endif

" ディレクトリ・ファイル設定
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml = '~/.vim/rc/dein.toml'
let s:lazy_toml = '~/.vim/rc/dein_lazy.toml'

" dein
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" 追加
if dein#load_state(s:dein_dir)
  
  call dein#begin(expand(s:dein_dir))
  
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  
  call dein#end()
  call dein#save_state()
  
endif

" 自動インストール
if dein#check_install()
  call dein#install()
endif

" 設定
filetype plugin indent on
filetype indent on
syntax on

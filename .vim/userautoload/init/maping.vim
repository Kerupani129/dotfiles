" インデント維持
nnoremap o oX<C-h>
nnoremap O OX<C-h>
inoremap <CR> <CR>X<C-h>

" カーソルを表示行で移動する。物理行移動は <C-n>, <C-p>
"nnoremap j gj
"nnoremap k gk
"nnoremap <Down> gj
"nnoremap <Up>   gk

" カーソルキーで 行末/行頭 の移動可能に設定
set whichwrap=b,s,[,],<,>
nnoremap h <Left>
nnoremap l <Right>

" l を <Right> に置き換えて、折りたたみを l で開くことができるようにする
"if has('folding')
"	nnoremap <expr> l foldlevel(line('.')) ? "\<Right>zo" : "\<Right>"
"endif

" カラースキーム
colorscheme Morning2

" 全角スペースをハイライト表示
function! ZenkakuSpace()
	hi ZenkakuSpace gui=reverse,underline guifg=#8ca0d2
endfunction

if has('syntax')
	augroup ZenkakuSpace
		autocmd!
		autocmd ColorScheme       * call ZenkakuSpace()
		autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
	augroup END
call ZenkakuSpace()
endif

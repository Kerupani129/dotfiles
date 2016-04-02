" ツールバー非表示
set guioptions-=T

" カーソル
set gcr=n-v-c:block-Cursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-lCursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" ウィンドウ位置・サイズ
let g:save_window_file = expand('~/.gvimpos')
augroup SaveWindow
	autocmd!
	autocmd VimLeavePre * call s:save_window()
	function! s:save_window()
		let options = [
			\ 'set columns=' . &columns,
			\ 'set lines=' . &lines,
			\ 'winpos ' . getwinposx() . ' ' . getwinposy(),
		\ ]
		call writefile(options, g:save_window_file)
	endfunction
augroup END

if filereadable(g:save_window_file)
	execute 'source' g:save_window_file
endif

" 設定
let g:tweetvim_display_icon=1

" メニュー表示
nnoremenu Plugin.TweetVim.Post\ from\ cmdline :TweetVimCommandSay<cr>
nnoremenu Plugin.TweetVim.Post\ current\ line :TweetVimCurrentLineSay<cr>

nnoremenu Plugin.TweetVim.-Sep1- :

nnoremenu Plugin.TweetVim.&Home\ Timeline :TweetVimHomeTimeline<cr>
nnoremenu Plugin.TweetVim.&User\ Timeline :TweetVimUserTimeline<cr>
nnoremenu Plugin.TweetVim.&Mentions\ Timeline :TweetVimMentions<cr>

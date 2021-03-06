"
" 挙動の定義
"

" vi との互換モードを無効にする
set nocompatible

" バックアップとスワップを作成しない
set nobackup
set noswapfile

" 挿入モードのキーボードショートカット設定
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-a> <ESC>0i
inoremap <C-e> <ESC>$a

" 表示モードのキーボードショートカット設定
noremap <C-j> <Down>
noremap <C-k> <Up>
noremap <C-h> <Left>
noremap <C-l> <Right>
noremap <C-a> 0
noremap <C-e> $

" どの文字も消せるようにする
set bs=start

"
" 表示の定義
"

" 構文によって色づけする
syntax on
" 行番号表示
set number
" カーソルの位置を表示
set ruler
" 特殊文字の表示
set list
" 特殊文字の表示文字設定
set listchars=tab:>-,extends:<,trail:-
" 全角文字を表示
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
" インデント
set expandtab
set tabstop=4
" マルチバイト対応
set ambiwidth=double

"
" 改行
"
set fileformat=unix

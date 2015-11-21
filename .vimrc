"###表示設定###
set shell=/bin/sh
set number
set title
set ambiwidth=double
set tabstop=4
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu

"insertモードから抜ける
inoremap <silent> <C-j> j
inoremap <silent> <C-k> k


inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

":cnext"
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ

"---------------------------
" Start Neobundle Settings.
"---------------------------
"bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"このあたりに追加のプラグインをどんどん書く"
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'grep.vim'
NeoBundle 'mattn/emmet-vim'



"indent color
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4





"ファイルオープンを便利に
 NeoBundle 'Shougo/unite.vim'
"Unite.vimで最近使ったファイルを表示できるようにする
 NeoBundle 'Shougo/neomru.vim'

"http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
"Unit.vimの設定
""""""""""""""""""""""""""""""
"入力モードで開始する
let g:unite_enable_start_insert=1
"バッファ一覧
noremap <C-P> :Unite buffer<CR>
"ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
"最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
"sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
"ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J>
au FileType unite inoremap <silent> <buffer> <expr> <C-J>
"ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K>
au FileType unite inoremap <silent> <buffer> <expr> <C-K>
"ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""" "

"NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

"Required:
filetype plugin indent on


"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
"毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

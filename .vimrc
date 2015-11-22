"###表示設定#/##
set shell=/bin/sh
set number
syntax on
colorscheme molokai 
set t_Co=256
set title
set fileencoding=utf-8
set encoding=utf-8
set incsearch
set ruler
set ambiwidth=double
set tabstop=2
set shiftwidth=2
set smartindent
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
set showmatch
set autoindent
set expandtab
set list
set backupdir=~/vimfiles/backup "backupdir"
set confirm "保存されていないファイルがある場合確認"
set autoread "外部でファイルに変更が競れた場合は読み直す"
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set infercase
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set noerrorbells
set novisualbell
set ignorecase
set smartcase
set hlsearch
set wrapscan
set gdefault



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
if has('vim_starting')
	set nocompatible "Be iMproved
	"Resuired;
set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif
  "Resuired
call neobundle#begin(expand('~/.vim/bundle/'))

"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"-----------My Bundles here---------------------
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'grep.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'flazz/vim-coorschemes'

"You can specify revision/branch/tag
NeoBunble 'Shougo/vimshell', {'rev' : '3787e5'}
NeoBundle 'Shougo/unite.vim'
"Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'

   
let g:molokai_original = 1

"nerdcommenter用 cc でコメントorコメントアウト
let NERDSpaceDelims = 1
nmap cc NERDCommenterToggle
vmap cc NERDCommenterToggle"


"ファイルオープンを便利に

"----------------------------------各プラグイン設定-------------------------------------------------- 
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
"INSERTから抜けたらIME解除
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>



"NERDTree設定,bookmark at the start of NERDTree,
call neobundle#end()
let g:NERDTreeShowBokmarks=1




" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" ファイル未指定でvim起動時デフォルトでツリーを表示させる
autocmd vimenter * if !argc() | NERDTree | endif

"Required:
filetype plugin on
filetype indent on
filetype on


"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
"毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

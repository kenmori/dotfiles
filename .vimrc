"###表示設定#/##
set shell=/bin/sh
set runtimepath+=./afixapp
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
set backupdir=~/vimfiles/backup
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
set nocompatible
set guicursor=a:blinkon0

filetype off

"---------------------------
" Start Neobundle Settings.
"---------------------------
"bundleで管理するディレクトリを指定

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
endif


NeoBundle 'scrooloose/nerdtree'
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'grep.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'open-browser.vim'
NeoBundle 'Quramy/tsuquyomi'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplcache'

call neobundle#end()


filetype plugin indent on
filetype plugin on
filetype on



"QuikFixウィンドウでもプレビューや絞り込みを有効か
let QFixWin_FnableMode = 1
"QFixHowm/QFixGrepの結果表示にロケーションリストを使用する/しない
let QFix_UseLocationList = 1




inoremap <silent> jj <ESC>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

":cnext" 検索した後のQuickfix移動の際のショートカット
nnoremap [q :cprevious<CR>   " 前へ
nnoremap ]q :cnext<CR>       " 次へ
nnoremap [Q :<C-u>cfirst<CR> " 最初へ
nnoremap ]Q :<C-u>clast<CR>  " 最後へ
nnoremap <silent><C-e> :NERDTreeToggle<CR>




let g:molokai_original = 1

"nerdcommenter用 cc でコメントorコメントアウト
let NERDSpaceDelims = 1
nmap cc NERDCommenterToggle
vmap cc NERDCommenterToggle"

let g:user_emmet_leader_key='<c-i>'

"ファイルオープンを便利に

"----------------------------------各プラグイン設定-------------------- 
 """""""""""""""""
"Unit.vimの設定
""""""""""""""""""
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

let g:NERDTreeShowBokmarks=1


" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" ファイル未指定でvim起動時デフォルトでツリーを表示させる
autocmd vimenter * if !argc() | NERDTree | endif

"-------------------------------------------------
"""" neosnippet設定
"-------------------------------------------------
""" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)








:" SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: "\<TAB>"

 " For snippet_complete marker.
 if has('conceal')
   set conceallevel=2 concealcursor=i
   endif

"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
"毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"----------------------------------------
"" plugin - NeoBundle
"----------------------------------------
set nocompatible
filetype off

" NeoBundleの初期化
if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim.git
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" NeoBundleのプラグインのURL {{{
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-repeat'
"NeoBundle 'Shougo/neocomplcache-snippets-complete'
"NeoBundle 'mattn/zencoding-vim'
"" NeoBundle 'c9s/perlomni.vim'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'othree/eregex.vim'
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'QuickBuf'
"
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}
"NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/neocomplcache'
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'
NeoBundle 'Shougo/neossh.vim'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'ujihisa/vimshell-ssh'
NeoBundle 'hrsh7th/vim-versions'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'basyura/jslint.vim'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
"}}}


filetype plugin on
filetype indent on

"-------------------------------------------------------------------------------
"" 表示設定
"-------------------------------------------------------------------------------
syntax enable
set background=dark
colorscheme solarized
" colorscheme jellybeans
" colorscheme hybrid
" let g:solarized_termcolors=256
" let g:solarized_degrade=1
" let g:solarized_italic=0
" let g:solarized_contrast="high"
" let g:solarized_visibility="low"
" let g:solarized_hitrail=0
" let g:solarized_menu=0
set cursorline

" 文字コードにUTF-8を利用する
set encoding=utf-8
" 利用する文字コード
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
" 利用する改行コード
set fileformats=unix,dos,mac

"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0
"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4
"全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/

"アンドゥファイルを作りディレクトリ (Ver. 7.4)
"set undodir=$HOME/.vim/undo
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/.vim/backup
"スワップファイル用のディレクトリ
set directory=$HOME/.vim/swap
"カーソルを行頭、行末で止まらないようにする
"set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードをMacと連携
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"タブの代わりに空白文字を挿入する
set expandtab
"set noexpandtab
"変更中のファイルでも、保存しないで他のファイルを表示
"set hidden
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
"set listchars=eol:$,tab:>\ ,extends:<
set listchars=tab:>\ ,extends:<
"シフト移動幅
set shiftwidth=4
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=4
"diffの時に左右分割で開く
set diffopt=vertical,filler
"自動で改行をさせない
autocmd FileType text setlocal textwidth=0

"-------------------------------------------------------------------------------
"" 動作設定
"-------------------------------------------------------------------------------
"MacVimやGVimを利用する際にIMEがモードの切替でオフとなる設定
set imdisable

"-------------------------------------------------------------------------------
"" プラグイン
"-------------------------------------------------------------------------------
"" vimshell
"-------------------------------------------------------------------------------
"let g:VimShell_EnableInteractive = 1

"-------------------------------------------------------------------------------
"" neocomplete/neocomplcache
"-------------------------------------------------------------------------------
" if_luaが有効ならneocompleteを使う
if neobundle#is_installed('neocomplete')
    " neocomplete用設定
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_ignore_case = 1
    let g:neocomplete#enable_smart_case = 1
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns._ = '\h\w*'
elseif neobundle#is_installed('neocomplcache')
    " neocomplcache用設定
    let g:NeoComplCache_EnableAtStartup = 1
    " 大文字小文字を区別する
    let g:NeoComplCache_SmartCase = 1
    " キャメルケース補完を有効にする
    let g:NeoComplCache_EnableCamelCaseCompletion = 1
    " アンダーバー補完を有効にする
    let g:NeoComplCache_EnableUnderbarCompletion = 1
    " シンタックスファイルの補完対象キーワードとする最小の長さ
    let g:NeoComplCache_PluginCompletionLength = { 'snipMate_complete' : 1, 'keyword_complete'  : 2, 'syntax_complete'   : 2 }

    let g:neocomplcache_enable_at_startup = 1
    let g:neocomplcache_enable_ignore_case = 1
    let g:neocomplcache_enable_smart_case = 1
    if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns._ = '\h\w*'
    let g:neocomplcache_enable_camel_case_completion = 1
    let g:neocomplcache_enable_underbar_completion = 1
endif
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

"-------------------------------------------------------------------------------
"" VimFilerの設定
"-------------------------------------------------------------------------------
" デフォルトでIDE風のFilerを開く
"autocmd VimEnter * VimFiler -split -winwidth=50 -no-quit
" デフォルトのエクスプローラーをVimFilerに変更
let g:vimfiler_as_default_explorer = 1
" アイコン変更
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

"-------------------------------------------------------------------------------
"" vim-ref {{{
"-------------------------------------------------------------------------------
let g:ref_cache_dir=$HOME.'/.vim/vim-ref/cache'
let g:ref_phpmanual_path=$HOME.'/.vim/vim-ref/php-chunked-xhtml'
" }}}

"-------------------------------------------------------------------------------
"" neosnippet {{{
"-------------------------------------------------------------------------------
imap <C-K> <Plug>(neosnippet_expand_or_jump)
smap <C-K> <Plug>(neosnippet_expand_or_jump)
xmap <C-K> <Plug>(neosnippet_expand_target)

imap <expr> <TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr> <TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
    set conceallevel=2 concealcursor=i
endif
" }}}

"-------------------------------------------------------------------------------
" マップ
"-------------------------------------------------------------------------------
" 検索語が画面中央にくるように
nmap n nzz
nmap N Nzz

" ヤンク、切り取り時にレジスタ"の値をzにもコピーしておく(連続貼付可に使う)
vnoremap <silent> y y:let @z=@"<CR>
vnoremap <silent> d d:let @z=@"<CR>

" ビジュアルモードで選択したテキストを消してレジスタzの内容を貼付ける(連続貼付可)
vnoremap <silent> p x"zP

"-------------------------------------------------------------------------------
" ファイルタイプ
"-------------------------------------------------------------------------------
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au BufRead,BufNewFile *.md set filetype=markdown

"-------------------------------------------------------------------------------
"" jslint.vim
"-------------------------------------------------------------------------------
function! s:javascript_filetype_settings()
  autocmd BufLeave <buffer> call jslint#clear()
  autocmd BufWritePost <buffer> call jslint#check()
  autocmd CursorMoved <buffer> call jslint#message()
endfunction
autocmd FileType javascript call s:javascript_filetype_settings()

"-------------------------------------------------------------------------------
"" vim-jsbeautify
"-------------------------------------------------------------------------------
" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" 拡張子で読み込みタグ変更                                                      
if has('path_extra')
    au BufNewFile,BufRead *.php setlocal tags+=php.tags;$HOME
endif

"set guifont=Ricty-Regular-Powerline\ 10
set guifont=Ricty\ Regular\ for\ Powerline\ 10

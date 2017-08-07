# Vim

Mac上では、[MacVim-KaoriYa](https://github.com/splhack/macvim-kaoriya)または[Neovim](https://neovim.io/)を使っています。
Linux上では、Vim8を使っています。

## インストール

Mac上でのNeovimのインストールは、Homebrewで終わりです。

``` bash
$ brew install neovim/neovim/neovim
```

MacVim-Kaoriyaは、Homebrew Caskで見つからないので、dmgをダウンロードしてインストールしました。

## ターミナルからの起動

ターミナルからMacVimを使えるように設定をします。
ついでに、ctagも使えるようにします。

```
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ctag='/Applications/MacVim.app/Contents/MacOS/ctags "$@"'
```

## 設定

### プラグインマネージャー

Vimのプラグインマネージャーとして、[dein.vim](https://github.com/Shougo/dein.vim)を利用します。
インストールは、下記のとおりです。

``` bash
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2351  100  2351    0     0   4928      0 --:--:-- --:--:-- --:--:--  4939
$ sh ./installer.sh ~/.cache/dein/
Install to "~/.cache/dein//repos/github.com/Shougo/dein.vim"...
```

インストールコマンド実施時に表示される設定内容を.vimrcに記載します。

### カラースキーマ

[Solarized](https://github.com/altercation/vim-colors-solarized)を利用します。

.vimrcに適切な場所に下記を追加します。
```
call dein#add('altercation/vim-colors-solarized')

if !has('gui_running')
    let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized
```

### ステータスライン

[lightline.vim](https://github.com/itchyny/lightline.vim)を使っています。

.vimrcに適切な場所に下記を追加します。
```
call dein#add('itchyny/lightline.vim')

if !has('gui_running')
    set t_Co=256
endif
"let g:lightline = { 'colorscheme': 'solarized' }
```


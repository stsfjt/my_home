# Vim

Mac上では、[MacVim-KaoriYa](https://github.com/splhack/macvim-kaoriya)または[Neovim](https://neovim.io/)を使っています。
Linux上では、Vim8を使っています。

## インストール

### Mac

NeovimにするかVim8にするか決めきれていないため両方インストールしておきます。

Mac上でのNeovimのインストールは、Homebrewで終わりです。

``` bash
$ brew install neovim/neovim/neovim
```

MacVim-Kaoriyaは、Homebrew Caskで見つからないので、dmgをダウンロードしてインストールしました。

### Linux

Linux上では、最新版のVim8をビルドしてインストールします。
以下は、CentOS6.9上で実行しました。

``` bash
# cd /usr/local/src/
# git clone https://github.com/vim/vim.git
# yum -y install ncurses-devel
// 必要ならインストール
# yum -y install libXt-devel libX11-devel atk-devel gtk2-devel
// 必要ならインストール
# yum -y install lua-devel
# ./configure --enable-multibyte --with-features=huge --enable-cscope --enable-gui=gtk2 --disable-selinux --prefix=/usr/local --enable-xim --enable-fontset --enable-gpm --enable-rubyinterp --with-python-config-dir=/usr/lib/python2.6/config --enable-luainterp=yes --with-lua-prefix=/usr
# make
# make install
```

## ターミナルからの起動

ターミナルからMacVimを使えるように設定をします。
ついでに、ctagも使えるようにします。

```
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ctag='/Applications/MacVim.app/Contents/MacOS/ctags "$@"'
```

## 設定

### Neovim

基本的には、Vimと同じ設定で動作するようにします。
プラグインは、neovimでしか動作しないものは、has('nvim')で判定します。

``` bash
$ mkdir -p ~/.config/nvim
$ mkdir -p ~/.cache/dein
$ cd ~/.config/nvim
$ ln -s ~/.vimrc init.vim
```

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

[Solarized 8](https://github.com/lifepillar/vim-solarized8)を利用します。

.vimrcに適切な場所に下記を追加します。
```
call dein#add('lifepillar/vim-solarized8')

set background=dark
colorscheme solarized8_dark
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


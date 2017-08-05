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

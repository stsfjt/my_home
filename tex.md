# Tex

[MacTeX](http://www.tug.org/mactex/)を利用します。

## インストール

``` bash
$ brew install ghostscript
$ brew cask install mactex
```
コマンド実行後、パスワード入力を求められるので、Macのログインパスワードを入力します。

## アップデート

インストールしたMacTeX 2017を最新の状態に更新します。

``` bash
$ sudo tlmgr update --self --all
```
コマンド実行後、パスワード入力を求められるので、Macのログインパスワードを入力します。
更新には時間がかかります。

## 設定

### 日本語フォントの設定

OS X標準のヒラギノフォントを使うため、Terminalから以下のコマンドを実行します。

``` bash
$ sudo cjk-gs-integrate --link-texmf --force
$ sudo mktexlsr
$ sudo kanji-config-updmap-sys hiragino-elcapitan-pron
```

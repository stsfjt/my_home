# Node.js

[Node.js](https://nodejs.org/ja/)を利用した開発環境を構築しています。

## インストール

### Mac

Mac上では、Homebrewでnodebrewをインストールし、nodebrewでnode.jsのバージョンを切り替えられるようにしています。

``` bash
$ brew install nodebrew
$ mkdir -p ~/.nodebrew/src
$ export PATH=$HOME/.nodebrew/current/bin:$PATH
$ nodebrew install-binary v8.3.0
$ nodebrew use v8.3.0
```

### Linux

Linux上では、[ダウンロード](https://nodejs.org/ja/download/current/)ページより直接ダウンロードして、インストールします。

## 追加モジュール

下記のモジュールをグローバルにインストールして、利用しています。
それ以外は、プロジェクトローカルにインストールしています。

``` bash
npm install -g vue-cli
npm install -g eslint-cli
```

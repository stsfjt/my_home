ホーム環境構築
=======

自分用の覚書です。

# GitHub

## SSHでの接続準備

接続用の秘密鍵を設定する。

```
$ cat >> ~/.ssh/config
Host github.com
  User git
  Hostname github.com
  IdentityFile ~/.ssh/github_rsa
```

秘密鍵を認証エージェントに追加する。

```
$ ssh-add
```

# アプリケーション

[利用しているアプリケーションやその設定方法](./Apprication.md)についてまとめる。

# Solarized

## Gnome Terminal

下記よりダウンロードして、set_dark.shをじっこうする。
https://github.com/Anthony25/gnome-terminal-colors-solarized

# Ricty

## Rictyフォントの生成

```
$ yum install fontforge
```

下記よりダウンロードして、以下を実行する。
https://github.com/yascentur/Ricty

```
$ ./ricty_generator.sh Inconsolata.otf migu-1m-regular.ttf migu-1m-bold.ttf
```

Rictyをインストールします。

```
$ cp -f Ricty*.ttf ~/.fonts/
$ fc-cache -vf
```

## GVimへの設定

~/.gvimrcに以下を追加する。

set guifont=Ricty\ Discord\ 12
set guifontwide=Ricty\ Discord\ 12

ホーム環境構築
=======

Configuration files in my home directory.

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

# Vim

## NeoBundleのインストール

```
$ mkdir -p ~/.vim/bundle
$ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

# Solarized

## Gnome Terminal

下記よりダウンロードして、set_dark.shをじっこうする。
https://github.com/Anthony25/gnome-terminal-colors-solarized

# Ricty

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


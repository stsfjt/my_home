# Subversion

## インストール

### Mac

Macでsubversionを利用する時にファイル名やディレクトリ名の文字コードが問題となります。
その問題に対応する[パッチ](https://github.com/tholu/homebrew-tap)が当たったsubversionを利用させていただきます。
バージョンは1.8を利用します。

``` bash
$ brew tap tholu/tap
$ brew tholu/tap/subversion18 --with-unicode-path
```

### Linux

Macのsubversionのバージョンと合わせるため下記のRPMパッケージを利用させていただきます。
http://opensource.wandisco.com/centos/6/svn-1.8/RPMS/x86_64/

## 設定

svnのコマンドを実行する際に利用するコマンドを ~/.subversion/conf に設定します。
editor-cmd は、コミット時等にメッセージを記載するエディタです。
diff-cmd は、diffコマンドを実行する時に呼ばれるコマンドです。スクリプトの実態はnvimにdiff表示させています。

```
[helpers]
editor-cmd = /usr/local/bin/nvim
diff-cmd = /Users/username/.subversion/bin/svnvimdiff.sh
```

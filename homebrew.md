# Homebrew

## インストール

下記でインストールを行います。

``` bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

バージョンを確認します。

``` bash
$ brew -v
Homebrew 1.3.0
Homebrew/homebrew-core (git revision fad4; last commit 2017-08-02)
```

## Cask

Caskを利用してアプリケーションを管理できるようにします。
最初の以下のコマンドでインストールされます。

``` bash
$ brew cask --version
```

バージョンを確認します。

``` bash
$ brew cask --version
Homebrew-Cask 1.3.0
caskroom/homebrew-cask (git revision 4c2d; last commit 2017-08-02)
```

## Homebrew-versions

色々なバージョンでアプリやツールを選択できるように組み込んでおきます。

``` bash
$ brew tap caskroom/versions
```

これにより、アプリケーション等を検索した時に以下のように複数のバージョンが表示されるようになります。

``` bash
$ brew search chrome
chrome-cli
chromedriver
caskroom/cask/google-chrome
caskroom/cask/chrome-devtools
caskroom/versions/google-chrome-beta
caskroom/versions/google-chrome-canary
caskroom/versions/google-chrome-dev
caskroom/cask/dmm-player-for-chrome
caskroom/cask/chrome-remote-desktop-host
```

## Caskでのアプリケーションのインストール

下記のコマンドでアプリケーションをインストールします。

``` bash
$ brew cask install アプリケーション名
```

インストールが終わったら不要なファイルは削除します。

``` bash
$ brew cask cleanup
==> Removing cached downloads
/Users/fujita/Library/Caches/Homebrew/Cask/iterm2--3.0.15.zip
==> This operation has freed approximately 5.4MB of disk space.
```

## Caskでインストールしたアプリケーション

* iterm2
* macvim
* firefox

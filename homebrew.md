# Homebrew

[Homebrew](https://brew.sh/index_ja.html)でアプリケーションの管理を行います。

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

[Cask](https://caskroom.github.io/)を利用してアプリケーションを管理できるようにします。
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

## インストールしたアプリケーション等

[homebrew/homebrew-bundle](https://github.com/Homebrew/homebrew-bundle)のBrewfileとしてまとめます。

```
tap caskroom/cask
tap caskroom/versions
cask 'iterm2'
cask 'firefox'
cask 'google-chrome'
cask 'google-japanese-ime'
tap tholu/tap
brew tholu/tap/subversion18, args: ['with-unicode-path']
cask 'virtualbox'
cask 'alfred'
brew 'jq'
cask 'skype'
brew 'nodebrew'
brew 'python3'
brew 'ghostscript'
cask 'mactex'
cask 'the-unarchiver'
cask 'microsoft-remote-desktop-beta'
brew 'exiftool'
brew 'fzf'
brew 'peco'
brew 'ripgrep'
brew 'w3m'
brew 'homebrew/php/php-cs-fixer'
cask 'keeweb'
cask 'xquartz'
cask 'inkscape'
cask 'osxfuse'
brew 'ext4fuse'
brew 'p7zip'
brew 'httpie'
brew 'sshrc'
brew 'sshfs'
cask 'adobe-acrobat-reader'
cask 'vlc'
brew 'ccat'
brew 'source-highlight'
brew 'ffmpeg', args: ['with-x265']
cask 'sequel-pro'
cask 'keka'
cask 'appcleaner'
cask 'teamviewer'
brew 'homebrew/php/composer'
cask 'palemoon' お試し
brew 'coreutils'
brew 'multitail'
cask 'maczip4win'
cask 'limechat'
cask 'sparkleshare'
cask 'fman'
cask 'docker'
brew tap delphinus/macvim-kaoriya
cask 'macvim-kaoriya'
brew 'vim', args: ['with-python3']
brew 'global', args: ['with-ctags','with-pygments']
cask 'psequel'
brew 'bash-completion'
cask 'caskroom/fonts/font-hack-nerd-font'
cask 'font-cica'
cask 'skim'
brew 'htop'
brew 'nmap'
cask 'amethyst'
```




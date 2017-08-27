利用しているアプリケーション一覧
====

* 開発ツール
    * [Xcode](https://developer.apple.com/jp/xcode/)

* アプリケーション管理
    * [Homebrew](./homebrew.md)

* ターミナル
    * [iTerm2]

* エディタ
    * [MacVim](./vim.md)

* ブラウザ
    * [Firefox](https://www.mozilla.org/ja/firefox/)
    * [Google Chrome](https://www.google.co.jp/chrome/browser/desktop/index.html)

* バージョン管理システム
    * [Git](https://git-scm.com/)
	* [GitHub](https://github.com/)
    * [Subversion](subversion.md)
    * [Mercurial](https://www.mercurial-scm.org/)

* シェル
	* [Bash](./bash.md)

* 仮想化
    * [VirtualBox](https://www.virtualbox.org/)
	    インストール
	    ```
	    brew cask install virtualbox
	    ```

* VPN
    * [FlowVPN](https://www.flowvpn.com/download-mac/)
		macOS SierraでPPTPでのVPNを接続するのに利用します。
		macOS Sierraでもpppdのコマンドがあるため、コマンドを直接叩くことでPPTP接続させることも可能。

* フォント
	* [Ricty Diminished](http://www.rs.tus.ac.jp/yyusa/ricty_diminished.html)
		ターミナル用にフォントを追加します。

* Node.js
	* [Node.js](./nodejs.md)

* Tex
	* [MacTeX](./tex.md)

* ファイルシステム
	* ext4
		インストール
		``` bash
		$ brew cask install osxfuse
		$ brew install ext4fuse
		```
		ユーザにマウント権限を与える。
		``` bash
		sudo dscl . append /Groups/operator GroupMembership <user name>
		```
		マウントする場合は下記のようにする。
		``` bash
		sudo ext4fuse -o allow_other /dev/disk3s1 /mnt
		```

* ユーティリティ

    * [Google 日本語入力](https://www.google.co.jp/ime/)
		Caskでインストールし、再起動が必要です。

    * [Alfred](https://www.alfredapp.com/)
		キーボードランチャー

    * 圧縮解凍ツール
		* The Unarchiver
	        インストール
	        ```
	        brew cask install the-unarchiver
	        ```

	* リモートディスクトップ
		* Microsoft リモートディスクトップ
	        インストール
	        ```
	        brew cask install microsoft-remote-desktop-beta
	        ```

	* [Commander One]
		ファイラー
	        インストール
	        ```
	        brew cask install commander-one
	        ```


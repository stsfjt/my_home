# Bash

シェルは基本的にMacやCentOSで標準となっているbashを利用します。

## ツール

bashを使いやすくするためのツールを追加します。

- [enhancd](https://github.com/b4b4r07/enhancd)

	cd時の履歴を管理し、移動しやすくしてくれるツールです。

	インストールは、下記のとおりです。
	``` bash
	$ git clone https://github.com/b4b4r07/enhancd
	```
	`source init.sh`を.bashrcに記載します。

	ディレクトリ一覧からのフィルタリングは、fzfかpecoを利用します。

- [fzf](https://github.com/junegunn/fzf)

	コンソール上でフィルタリングを簡単に行うためのツールです。
	pecoと被るところがありますが、どちらをメインにするか決めきれていません。

	インストールは、下記のとおりです。
	``` bash
	$ brew install fzf
	/usr/local/opt/fzf/install
	```
	.bashrc等の設定をするために下記を実行します。
	``` bash
	/usr/local/opt/fzf/install
	```

	検索時にripgrepを使う場合の設定です。
    export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,.svn,node_modules,vendor}/*"'

- [peco](https://github.com/peco/peco)

	コンソール上でフィルタリングを簡単に行うためのツールです。

	インストールは、下記のとおりです。
	``` bash
	$ brew install peco
	```

- [ripgrep](https://github.com/BurntSushi/ripgrep)

	高速に曖昧検索を行うツールです。

	インストールは、下記のとおりです。
	``` bash
	$ brew install ripgrep
	```

- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)

    高速に曖昧検索を行うツールです。
	ファイル名を検索する場合は、findより早いので使っています。

	インストールは、下記のとおりです。
	``` bash
	$ brew install the_silver_searcher
	```


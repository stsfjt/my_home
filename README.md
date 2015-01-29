my_home
=======

Configuration files in my home directory.

# セットアップ

## configに登録

`<code>`
$ cat >> ~/.ssh/config
Host github.com
  User git
  Hostname github.com
  IdentityFile ~/.ssh/git_id_rsa
`<code>`

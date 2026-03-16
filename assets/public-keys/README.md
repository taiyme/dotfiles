# public-keys

このディレクトリには、Home Manager が
`~/.ssh/keys/` 配下に配置する公開鍵ファイルを格納します。

- 公開鍵のファイル名は `*.pub` と一致する必要があります。
- 秘密鍵ファイルはこのディレクトリに置かないでください。
- サブディレクトリは処理されません。

次のような構成の場合:

```txt
./assets/public-keys
├── iroha.pub
├── mito.pub
├── notes.txt  <- *.pub と一致しないので無視されます
└── gekidan
    └── denki.pub  <- サブディレクトリなので無視されます
```

生成されるファイル:

```txt
~/.ssh/keys
├── iroha.pub
└── mito.pub
```

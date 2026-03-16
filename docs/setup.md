# セットアップ ガイド

セットアップに進む前に...

- [ ] App Store にサインインしましたか？
  - サインインしていないと、Bitwardenのインストールに失敗します。

## インストール

ターミナルを開いて、インストールスクリプトを実行します。

```sh
curl -fsSL https://raw.githubusercontent.com/taiyme/dotfiles/main/install.sh | bash
```

インストールスクリプトを実行すると...

- [Homebrew](https://brew.sh/) と [Determinate Nix](https://determinate.systems/nix/) をインストールします
- `$HOME/.dotfiles` にリポジトリを展開します
- `darwin-rebuild switch` を実行します

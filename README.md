# taiyme/dotfiles

taiyのためのdotfilesです。

## 使い方

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply taiyme
```

## メンテナンス用のメモ

```sh
# .Brewfile を更新する
brew bundle dump --file="$(chezmoi source-path)/dot_Brewfile" --no-vscode --force
```

## ライセンス

[MIT License](./LICENSE)

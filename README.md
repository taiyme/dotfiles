# taiyme/dotfiles

[![Test](https://github.com/taiyme/dotfiles/actions/workflows/test.yaml/badge.svg)](https://github.com/taiyme/dotfiles/actions/workflows/test.yaml)
[![License](https://img.shields.io/github/license/taiyme/dotfiles?style=flat)](./LICENSE)
[![Donate](https://img.shields.io/badge/donate-%3C3-f96854?style=flat)](https://taiy.me/to/donate)

taiyのためのdotfilesです。

## 使い方

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply taiyme
```

## メモ

```sh
# [Homebrew] .Brewfile を更新する
brew bundle dump --file="$(chezmoi source-path)/dot_Brewfile" --no-vscode --force

# [Homebrew] インストールしたやつ全部更新する
brew upgrade --greedy && brew cleanup && mas upgrade

# [Google日本語入力] 消えずに残った変換ウィンドウを消す
pkill GoogleJapaneseInput
```

## ライセンス

[MIT License](./LICENSE)

# Notes

開発時のメモなど

## 設定が反映されない？と思ったら

- [ ] Git追跡対象外ですか？
  - git add してから、再度ビルドを実施してください
- [ ] nix-darwin or ログインシェルの設定ですか？
  - 再起動を実施してください

## stateVersion について

[state-version.nix](../modules/flakes/base/state-version.nix) で宣言されている stateVersion は、設定の後方互換性を維持するための値です。

既存環境の動作が変わる可能性があるため、特別な理由がない限り変更しないでください。

## modules ディレクトリについて

[modules/README.md](../modules/README.md) を参照してください。

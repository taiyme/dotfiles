{
  # stateVersion は設定の後方互換性を維持するための値です。
  # 特別な理由がない限り変更しないでください。

  flake.modules.darwin.base =
    { ... }:
    {
      system.stateVersion = 6;
    };

  flake.modules.homeManager.base =
    { ... }:
    {
      home.stateVersion = "25.11";
    };
}

{
  flake.modules.homeManager.desktop =
    { pkgs, ... }:
    {
      programs.vivaldi = {
        enable = true;

        # TODO: pkgs.vivaldi が aarch64-darwin に対応していない
        # package = pkgs.vivaldi;
        package = pkgs.brewCasks.vivaldi;
      };
    };
}

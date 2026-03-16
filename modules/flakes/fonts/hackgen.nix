{
  flake.modules.homeManager.fonts =
    { pkgs, ... }:
    {
      home.packages = [
        pkgs.hackgen-font
        pkgs.hackgen-nf-font
      ];
    };
}

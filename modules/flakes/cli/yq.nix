{
  flake.modules.homeManager.cli =
    { pkgs, ... }:
    {
      home.packages = [ pkgs.yq-go ];
    };
}

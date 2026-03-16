{
  flake.modules.homeManager.container =
    { pkgs, ... }:
    {
      home.packages = [ pkgs.devcontainer ];
    };
}

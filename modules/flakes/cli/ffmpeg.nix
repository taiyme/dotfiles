{
  flake.modules.homeManager.cli =
    { pkgs, ... }:
    {
      home.packages = [ pkgs.ffmpeg ];
    };
}

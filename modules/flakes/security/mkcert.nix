{
  flake.modules.homeManager.security =
    { pkgs, ... }:
    {
      home.packages = [ pkgs.mkcert ];
    };
}

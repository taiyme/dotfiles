{
  flake.modules.homeManager.dev =
    { config, pkgs, ... }:
    let
      justfilePath = "${config.xdg.configHome}/just/justfile";
    in
    {
      home.packages = [ pkgs.just ];

      home.file.${justfilePath}.text = ''
        _default:
          @just -g --list
      '';
    };
}

{ config, ... }:
{
  flake.modules.darwin."hosts/m1mba" =
    { ... }:
    let
      darwinModules = config.flake.modules.darwin;
      hmModules = config.flake.modules.homeManager;
    in
    {
      imports = [
        darwinModules.base
        darwinModules.desktop
        darwinModules.security
        darwinModules.taiy
        {
          home-manager.users.taiy.imports = [
            hmModules.base
            hmModules.cli
            hmModules.container
            hmModules.desktop
            hmModules.dev
            hmModules.editor
            hmModules.fonts
            hmModules.security
            hmModules.shell
          ];
        }
      ];

      nixpkgs.hostPlatform = "aarch64-darwin";
    };
}

{
  lib,
  config,
  inputs,
  ...
}:
let
  hostPrefix = "hosts/";
in
{
  flake.darwinConfigurations = lib.pipe config.flake.modules.darwin [
    (lib.filterAttrs (name: _: lib.hasPrefix hostPrefix name))
    (lib.mapAttrs' (
      name: module:
      let
        specialArgs = {
          inherit inputs;
          hostConfig = {
            name = lib.removePrefix hostPrefix name;
          };
        };
      in
      {
        name = specialArgs.hostConfig.name;
        value = inputs.nix-darwin.lib.darwinSystem {
          inherit specialArgs;
          modules = [
            module
            inputs.home-manager.darwinModules.home-manager
            {
              home-manager.extraSpecialArgs = specialArgs;
            }
          ];
        };
      }
    ))
  ];
}

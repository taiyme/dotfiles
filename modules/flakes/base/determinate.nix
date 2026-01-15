top@{ ... }:
{
  flake.modules.darwin.base =
    { inputs, ... }:
    {
      imports = [
        inputs.determinate.darwinModules.default
      ];

      determinateNix = {
        enable = true;
        customSettings = {
          trusted-users = [
            "root"
            "@admin"
            top.config.flake.meta.users.taiy.username # primaryUser
          ];
          extra-substituters = [
            "https://nix-cache.taiy.me"
          ];
          extra-trusted-substituters = [
            "https://nix-cache.taiy.me"
          ];
          extra-trusted-public-keys = [
            "nix-cache.taiy.me:Wv1ThvtQj0/bCIgCGYqWgRb49VGUuFmWtpUcc8Oqi+E="
          ];
          builders-use-substitutes = true;
        };
      };
    };

  flake.modules.homeManager.base =
    { inputs, ... }:
    {
      imports = [
        inputs.determinate.homeManagerModules.default
      ];
    };
}

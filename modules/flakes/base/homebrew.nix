{
  flake.modules.darwin.base =
    { inputs, ... }:
    {
      homebrew.enable = true;

      homebrew.global.autoUpdate = false;

      homebrew.onActivation = {
        cleanup = "zap";
        autoUpdate = true;
        upgrade = true;
      };

      environment.variables = {
        HOMEBREW_NO_ENV_HINTS = "1";
      };

      # TODO: nixpkgs 25.11 の mas が古いので、unstable で上書きしている
      nixpkgs.overlays = [
        (final: prev: {
          mas = inputs.nixpkgs-unstable.legacyPackages.${final.stdenv.hostPlatform.system}.mas;
        })
      ];
    };
}

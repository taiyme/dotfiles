{
  flake.modules.darwin.base =
    { inputs, ... }:
    {
      nixpkgs.overlays = [
        inputs.brew-nix.overlays.default
      ];
    };
}

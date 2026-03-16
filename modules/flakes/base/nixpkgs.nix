{
  flake.modules.darwin.base =
    { ... }:
    {
      home-manager.useGlobalPkgs = true;

      nixpkgs.config.allowUnfree = true;
    };
}

{
  lib,
  config,
  withSystem,
  self,
  ...
}:
let
  inherit (self) outputs;
in
{
  flake.hydraJobs = lib.genAttrs config.systems (
    system:
    (withSystem system (
      { pkgs, ... }:
      (pkgs.releaseTools.aggregate {
        name = "ci-${system}";
        constituents = lib.flatten [
          (lib.collect lib.isDerivation outputs.checks.${system})
          [ outputs.formatter.${system} ]
          (lib.optionals (system == "aarch64-darwin") (
            lib.mapAttrsToList (_: cfg: cfg.config.system.build.toplevel) outputs.darwinConfigurations
          ))
        ];
      })
    ))
  );
}

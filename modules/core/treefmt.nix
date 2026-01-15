{ inputs, ... }:
{
  imports = [
    inputs.treefmt-nix.flakeModule
  ];

  perSystem =
    { ... }:
    {
      treefmt = {
        projectRootFile = "flake.nix";
        programs = {
          nixfmt.enable = true;
          mdformat.enable = true;
          shfmt.enable = true;
          shellcheck.enable = true;
          actionlint.enable = true;
          zizmor.enable = true;
        };
      };
    };
}

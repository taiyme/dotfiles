{
  flake.modules.homeManager.desktop =
    { pkgs, ... }:
    {
      programs.vivaldi = {
        enable = true;

        # TODO: pkgs.vivaldi が aarch64-darwin に対応していない
        # package = pkgs.vivaldi;
        # TODO: brew-nix が .tar.xz の解凍に対応していない
        # package = pkgs.brewCasks.vivaldi;
        package = (
          pkgs.brewCasks.vivaldi.overrideAttrs (oldAttrs: {
            nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ pkgs.gnutar ];
            unpackPhase = "tar -xvJf $src";
          })
        );
      };
    };
}

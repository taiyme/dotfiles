{
  flake.modules.homeManager.security =
    { config, pkgs, ... }:
    {
      programs.gpg = {
        enable = true;

        homedir = "${config.xdg.dataHome}/gnupg";
      };

      services.gpg-agent = {
        enable = true;

        enableSshSupport = false;

        pinentry.package = pkgs.pinentry_mac;
      };
    };
}

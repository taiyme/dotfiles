{
  flake.modules.darwin.base =
    { ... }:
    {
      home-manager.useUserPackages = true;

      home-manager.backupFileExtension = "backup-before-hm";
    };

  flake.modules.homeManager.base =
    { ... }:
    {
      programs.home-manager.enable = true;

      fonts.fontconfig.enable = true;

      targets.darwin = {
        copyApps.enable = true;
        linkApps.enable = false;
      };
    };
}

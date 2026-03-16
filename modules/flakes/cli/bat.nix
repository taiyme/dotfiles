{
  flake.modules.homeManager.cli =
    { ... }:
    {
      catppuccin.bat.enable = true;

      programs.bat.enable = true;
    };
}

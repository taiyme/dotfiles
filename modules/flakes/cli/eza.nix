{
  flake.modules.homeManager.cli =
    { ... }:
    {
      catppuccin.eza.enable = true;

      programs.eza = {
        enable = true;

        enableZshIntegration = true;
      };
    };
}

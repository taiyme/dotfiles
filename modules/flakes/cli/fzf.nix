{
  flake.modules.homeManager.cli =
    { ... }:
    {
      catppuccin.fzf.enable = true;

      programs.fzf = {
        enable = true;

        enableZshIntegration = true;
      };
    };
}

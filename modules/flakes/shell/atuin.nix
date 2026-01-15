{
  flake.modules.homeManager.shell =
    { ... }:
    {
      catppuccin.atuin.enable = true;

      programs.atuin = {
        enable = true;

        enableZshIntegration = true;

        settings = {
          update_check = false;
          search_mode = "fuzzy";
          enter_accept = false;
        };

        forceOverwriteSettings = true;
      };
    };
}

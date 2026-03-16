{
  flake.modules.homeManager.dev =
    { ... }:
    {
      catppuccin.lazygit.enable = true;

      programs.lazygit = {
        enable = true;

        enableZshIntegration = true;

        settings = {
          gui.showIcons = true;
          gui.nerdFontsVersion = "3";
          gui.language = "ja";
          gui.timeFormat = "2006-01-02";
          gui.shortTimeFormat = "15:04";
          gui.showRandomTip = false;
        };
      };
    };
}

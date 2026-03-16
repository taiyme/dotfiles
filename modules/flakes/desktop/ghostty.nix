{
  flake.modules.homeManager.desktop =
    { pkgs, ... }:
    {
      catppuccin.ghostty.enable = true;

      programs.ghostty = {
        enable = true;

        package = pkgs.brewCasks.ghostty;

        enableZshIntegration = true;

        settings = {
          shell-integration-features = [
            "no-cursor"
            "ssh-env"
            "ssh-terminfo"
          ];

          background-opacity = 0.95;

          font-family = "HackGen Console NF";
          font-feature = [
            "-calt"
            "-liga"
            "-dlig"
          ];
          font-size = 14;

          cursor-style = "bar";
          cursor-style-blink = false;

          window-theme = "dark";
          window-width = 96;
          window-height = 32;
          window-padding-x = 8;
          window-padding-y = 4;
          window-padding-balance = true;

          resize-overlay = "never";

          quit-after-last-window-closed = true;

          macos-titlebar-proxy-icon = "hidden";

          auto-update = "off";

          keybind = [
            "ctrl+i=text:\t"
            "ctrl+m=text:\r"
          ];
        };
      };
    };
}

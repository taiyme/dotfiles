{
  flake.modules.homeManager.shell =
    { config, ... }:
    {
      programs.zsh.history = {
        path = "${config.xdg.stateHome}/zsh/history";
        size = 100000;
        save = 100000;
        extended = true;
        share = true;
        ignoreDups = true;
        ignoreAllDups = true;
        ignoreSpace = true;
        saveNoDups = true;
      };

      programs.zsh.setOptions = [
        "EXTENDED_HISTORY"
        "NO_HIST_BEEP"
        "HIST_NO_STORE"
        "HIST_REDUCE_BLANKS"
        "HIST_VERIFY"
      ];
    };
}

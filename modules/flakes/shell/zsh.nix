{
  flake.modules.homeManager.shell =
    { config, ... }:
    {
      programs.zsh = {
        enable = true;

        enableCompletion = true;

        dotDir = "${config.xdg.configHome}/zsh";

        sessionVariables = {
          LANG = "en_US.UTF-8";
          LISTMAX = 0;
          WORDCHARS = "*?_-.[]~=&;!#$%^(){}<>";
        };

        setOptions = [
          "AUTO_CD"
          "AUTO_PUSHD"
          "PUSHD_MINUS"
          "PUSHD_IGNORE_DUPS"
          "NO_LIST_BEEP"
          "LIST_PACKED"
          "NO_LIST_TYPES"
          "NO_BG_NICE"
          "NO_BEEP"
        ];
      };
    };
}

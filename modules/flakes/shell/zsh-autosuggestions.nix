{
  flake.modules.homeManager.shell =
    { lib, pkgs, ... }:
    {
      programs.zsh.initContent = lib.mkOrder 700 ''
        source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
      '';
    };
}

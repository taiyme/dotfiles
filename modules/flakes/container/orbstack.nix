{
  flake.modules.homeManager.container =
    { lib, pkgs, ... }:
    {
      home.packages = [ pkgs.orbstack ];

      programs.zsh.profileExtra = lib.mkAfter ''
        source ~/.orbstack/shell/init.zsh 2>/dev/null || true
      '';

      programs.ssh.includes = [
        "~/.orbstack/ssh/config"
      ];
    };
}

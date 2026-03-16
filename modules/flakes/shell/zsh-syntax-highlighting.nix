{
  flake.modules.homeManager.shell =
    { ... }:
    {
      catppuccin.zsh-syntax-highlighting.enable = true;

      programs.zsh.syntaxHighlighting.enable = true;
    };
}

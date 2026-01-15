{
  flake.modules.homeManager.shell =
    { hostConfig, ... }:
    {
      programs.zsh.sessionVariables = {
        ABBR_SET_EXPANSION_CURSOR = 1;
      };

      programs.zsh.zsh-abbr = {
        enable = true;

        abbreviations = {
          # Git
          g = "git";
          gst = "git status -sb";
          gl = "git log --oneline --graph --decorate";
          gd = "git diff";
          ga = "git add";
          gaa = "git add --all";
          gap = "git add --patch";
          gc = "git commit";
          gca = "git commit --amend";
          gci = "git commit --allow-empty -m \"chore: initial commit\"";
          gs = "git switch";
          gr = "git rebase -i";
          gp = "git push";
          gph = "git push origin HEAD";

          # Neovim
          v = "nvim";
          vi = "nvim";
          vim = "nvim";

          # Nix
          nr = "sudo darwin-rebuild switch --flake .#${hostConfig.name}";
          nu = "nix flake update";
          nf = "nix fmt";
        };

        globalAbbreviations = { };
      };
    };
}

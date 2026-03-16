{
  flake.modules.homeManager.dev =
    { ... }:
    {
      catppuccin.delta.enable = true;

      programs.delta = {
        enable = true;

        enableGitIntegration = true;

        options = {
          side-by-side = true;
          line-numbers = true;
          navigate = true;
          hunk-header-style = "syntax bold";
          file-decoration-style = "none";
          commit-decoration-style = "none";
          commit-style = "raw";
          whitespace-error-style = "22 reverse";
          true-color = "auto";
        };
      };
    };
}

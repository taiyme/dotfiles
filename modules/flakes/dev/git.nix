top@{ ... }:
{
  flake.modules.homeManager.dev =
    { ... }:
    let
      gitConfig = top.config.flake.meta.users.taiy.git;
    in
    {
      programs.git = {
        enable = true;

        settings = {
          user.name = gitConfig.username;
          user.email = gitConfig.email;
          init.defaultBranch = "main";
          core.ignoreCase = false;
          pull.ff = "only";
          rebase.autoStash = true;
          fetch.prune = true;
          commit.verbose = true;
        };

        signing = {
          format = "ssh";
          key = "~/.ssh/keys/github.pub";
          signByDefault = true;
        };

        ignores = [
          ".DS_Store"
        ];
      };
    };
}

top@{ ... }:
{
  flake.modules.homeManager.dev =
    { ... }:
    let
      ghConfig = top.config.flake.meta.users.taiy.github;
    in
    {
      programs.gh = {
        enable = true;

        hosts = {
          "github.com" = {
            users.${ghConfig.username} = null;
            user = ghConfig.username;
          };
        };
      };
    };
}

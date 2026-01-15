top@{ ... }:
{
  flake.meta.users.taiy = rec {
    username = "taiy";
    homedir = "/Users/${username}";

    git.username = "taiyme";
    git.email = "53635909+taiyme@users.noreply.github.com";

    github.username = "taiyme";
  };

  flake.modules.darwin.taiy =
    { ... }:
    let
      userConfig = top.config.flake.meta.users.taiy;
    in
    {
      users.users.${userConfig.username} = {
        description = userConfig.username;
        name = userConfig.username;
        home = userConfig.homedir;
      };

      system.primaryUser = userConfig.username;
    };
}

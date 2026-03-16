{
  flake.modules.homeManager.dev =
    { ... }:
    {
      programs.mise = {
        enable = true;

        enableZshIntegration = true;

        globalConfig = {
          settings = {
            experimental = true;
            idiomatic_version_file_enable_tools = [ "node" ];
            lockfile = false;
            pin = true;
          };

          tools = {
            bun = "1";
            deno = "2";
            node = "24";
            pnpm = "10";
          };
        };
      };
    };
}

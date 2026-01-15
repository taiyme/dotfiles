{
  flake.modules.homeManager.security =
    { ... }:
    {
      programs.ssh = {
        enable = true;

        enableDefaultConfig = false;

        matchBlocks = {
          "*" = {
            addKeysToAgent = "yes";
            serverAliveInterval = 60;
            serverAliveCountMax = 5;
            extraOptions.UseKeychain = "yes";
            extraOptions.TCPKeepAlive = "yes";
          };

          "github.com" = {
            hostname = "github.com";
            user = "git";
            identityFile = "~/.ssh/keys/github.pub";
            identitiesOnly = true;
          };

          "misskey" = {
            hostname = "ec2-35-72-183-158.ap-northeast-1.compute.amazonaws.com";
            user = "taiy";
            identityFile = "~/.ssh/keys/misskey.pub";
            identitiesOnly = true;
          };

          "vaultwarden" = {
            hostname = "ec2-54-250-244-70.ap-northeast-1.compute.amazonaws.com";
            user = "taiy";
            identityFile = "~/.ssh/keys/vaultwarden.pub";
            identitiesOnly = true;
          };
        };
      };
    };
}

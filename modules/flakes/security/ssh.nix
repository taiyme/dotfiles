{
  flake.modules.homeManager.security =
    { lib, ... }:
    {
      programs.ssh = {
        enable = true;

        enableDefaultConfig = false;

        # NOTE: bool は yes/no に置換してくれるみたい
        settings =
          let
            matchBlocks = {
              "Host github.com" = {
                HostName = "github.com";
                User = "git";
                IdentityFile = "~/.ssh/keys/github.pub";
                IdentitiesOnly = true;
              };

              "Host misskey" = {
                HostName = "ec2-35-72-183-158.ap-northeast-1.compute.amazonaws.com";
                User = "taiy";
                IdentityFile = "~/.ssh/keys/misskey.pub";
                IdentitiesOnly = true;
              };

              "Host vaultwarden" = {
                HostName = "ec2-54-250-244-70.ap-northeast-1.compute.amazonaws.com";
                User = "taiy";
                IdentityFile = "~/.ssh/keys/vaultwarden.pub";
                IdentitiesOnly = true;
              };
            };
          in
          matchBlocks
          // {
            # NOTE: これ↓↓が無いと、一番先頭に配置されてしまうので困る
            "Host *" = lib.hm.dag.entryAfter (builtins.attrNames matchBlocks) {
              AddKeysToAgent = true;
              ServerAliveInterval = 60;
              ServerAliveCountMax = 5;
              UseKeychain = true;
              TCPKeepAlive = true;
            };
          };
      };
    };
}

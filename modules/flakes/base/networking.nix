{
  flake.modules.darwin.base =
    { hostConfig, ... }:
    {
      networking.computerName = hostConfig.name;
      networking.hostName = hostConfig.name;
    };
}

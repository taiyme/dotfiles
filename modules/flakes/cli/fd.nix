{
  flake.modules.homeManager.cli =
    { ... }:
    {
      programs.fd.enable = true;
    };
}

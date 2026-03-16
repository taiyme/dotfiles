{
  flake.modules.homeManager.cli =
    { ... }:
    {
      programs.jq.enable = true;
    };
}

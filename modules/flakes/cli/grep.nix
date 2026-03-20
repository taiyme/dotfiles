{
  flake.modules.homeManager.cli =
    { ... }:
    {
      programs.grep.enable = true;
    };
}

{
  flake.modules.homeManager.cli =
    { ... }:
    {
      programs.less.enable = true;
    };
}

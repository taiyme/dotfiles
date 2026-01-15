{
  flake.modules.homeManager.desktop =
    { ... }:
    {
      programs.discord.enable = true;
    };
}

{
  flake.modules.homeManager.desktop =
    { ... }:
    {
      programs.google-chrome.enable = true;
    };
}

{
  flake.modules.darwin.desktop =
    { ... }:
    {
      homebrew.casks = [
        {
          name = "google-japanese-ime";
          greedy = true;
        }
      ];
    };
}

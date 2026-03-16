{
  flake.modules.darwin.desktop =
    { ... }:
    {
      system.defaults.dock = {
        autohide = true;
        autohide-delay = 0.0;
        tilesize = 50;
        show-recents = false;
        orientation = "left";
        mineffect = "scale";
      };
    };
}

{
  flake.modules.homeManager.base =
    { inputs, ... }:
    {
      imports = [
        inputs.catppuccin.homeModules.catppuccin
      ];

      catppuccin.enable = false;
      catppuccin.flavor = "mocha";
      catppuccin.accent = "sapphire";
    };
}

{
  flake.modules.darwin.base =
    { inputs, ... }:
    {
      homebrew.enable = true;

      homebrew.global.autoUpdate = false;

      homebrew.onActivation = {
        cleanup = "zap";
        autoUpdate = true;
        upgrade = true;
      };

      environment.variables = {
        HOMEBREW_NO_ENV_HINTS = "1";
      };
    };
}

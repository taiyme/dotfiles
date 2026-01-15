{
  flake.modules.darwin.base =
    { ... }:
    {
      system.defaults.NSGlobalDomain.KeyRepeat = 2;
      system.defaults.NSGlobalDomain.InitialKeyRepeat = 15;

      system.defaults.CustomUserPreferences."com.apple.desktopservices".DSDontWriteNetworkStores = true;
      system.defaults.CustomUserPreferences."com.apple.desktopservices".DSDontWriteUSBStores = true;

      system.defaults.screencapture.disable-shadow = true;
      system.defaults.screencapture.show-thumbnail = false;
      system.defaults.CustomUserPreferences."com.apple.screencapture".name = "Screenshot";
    };
}

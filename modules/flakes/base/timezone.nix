{
  flake.modules.darwin.base =
    { ... }:
    {
      time.timeZone = "Asia/Tokyo";
    };
}

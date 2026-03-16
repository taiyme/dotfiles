{ lib, ... }:
{
  options.flake.meta = lib.mkOption {
    type = lib.types.lazyAttrsOf lib.types.anything;
  };
}

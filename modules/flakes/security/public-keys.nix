{
  flake.modules.homeManager.security =
    { lib, ... }:
    let
      publicKeysDir = ./../../../assets/public-keys;

      dirEntries = builtins.readDir publicKeysDir;

      publicKeys = (
        lib.filterAttrs (name: type: type == "regular" && lib.hasSuffix ".pub" name) dirEntries
      );

      homeFiles = (
        lib.mapAttrs' (name: _: {
          name = ".ssh/keys/${name}";
          value.source = publicKeysDir + "/${name}";
        }) publicKeys
      );
    in
    {
      home.file = homeFiles;
    };
}

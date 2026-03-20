{
  description = "taiyme/dotfiles";

  nixConfig = {
    extra-substituters = [
      "https://nix-cache.taiy.me"
    ];
    extra-trusted-public-keys = [
      "nix-cache.taiy.me:Wv1ThvtQj0/bCIgCGYqWgRb49VGUuFmWtpUcc8Oqi+E="
    ];
  };

  outputs =
    inputs@{
      import-tree,
      flake-parts,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      debug = true;
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      imports = [ (import-tree ./modules) ];
    };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixpkgs-25.11-darwin";
    };

    nixpkgs-unstable = {
      url = "github:nixos/nixpkgs/nixpkgs-unstable";
    };

    import-tree = {
      url = "github:vic/import-tree";
    };

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    determinate = {
      url = "https://flakehub.com/f/DeterminateSystems/determinate/3";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    brew-api = {
      url = "github:batteredbunny/brew-api";
      flake = false;
    };

    brew-nix = {
      url = "github:batteredbunny/brew-nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nix-darwin.follows = "nix-darwin";
      inputs.brew-api.follows = "brew-api";
    };

    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };

    catppuccin = {
      url = "github:catppuccin/nix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}

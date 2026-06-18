{
  flake.modules.homeManager.editor =
    {
      config,
      inputs,
      pkgs,
      ...
    }:
    {
      imports = [
        inputs.nixvim.homeModules.nixvim
      ];

      programs.zsh.sessionVariables =
        let
          editor = "nvim";
        in
        {
          VISUAL = editor;
          EDITOR = editor;
        };

      programs.nixvim = {
        enable = true;

        nixpkgs.useGlobalPackages = true;

        # TODO: nixpkgs 26.05 の VS Code が v1.123 になったら、nvim を 26.05 に戻す
        # SEE: https://github.com/neovim/neovim/issues/38651
        package = inputs.nixpkgs-nvim-v0_11_6.legacyPackages.${pkgs.hostPlatform.system}.neovim-unwrapped;

        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;

        luaLoader.enable = true;

        performance.byteCompileLua = {
          enable = true;
          nvimRuntime = true;
          configs = true;
          plugins = true;
        };

        colorschemes.catppuccin = {
          enable = true;
          settings = {
            flavour = config.catppuccin.flavor or "mocha";
          };
        };
      };
    };
}

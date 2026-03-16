{
  flake.modules.homeManager.editor =
    { config, inputs, ... }:
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

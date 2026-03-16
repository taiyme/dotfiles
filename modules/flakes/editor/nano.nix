{
  flake.modules.homeManager.editor =
    { config, pkgs, ... }:
    let
      nanorcPath = "${config.xdg.configHome}/nano/nanorc";
    in
    {
      home.packages = [ pkgs.nano ];

      home.file.${nanorcPath}.text = ''
        set linenumbers
        set constantshow
        set autoindent
        set tabsize 4
        set softwrap
        set casesensitive
        set afterends
        set atblanks
        set nohelp
        set titlecolor #89c
        set numbercolor #89c
        set statuscolor #ccd
        set errorcolor #f66
        set promptcolor #fd6
        set selectedcolor #bbb
      '';
    };
}

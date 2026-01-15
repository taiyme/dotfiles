{
  flake.modules.darwin.desktop =
    { ... }:
    {
      homebrew.masApps = {
        Bitwarden = 1352778147;
      };

      environment.variables = {
        SSH_AUTH_SOCK = "$HOME/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock";
      };
    };
}

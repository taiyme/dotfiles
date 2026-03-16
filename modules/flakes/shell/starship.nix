{
  flake.modules.homeManager.shell =
    { lib, config, ... }:
    {
      catppuccin.starship.enable = true;

      programs.starship = {
        enable = true;

        enableZshIntegration = true;

        configPath = "${config.xdg.configHome}/starship/config.toml";

        settings = {
          format = lib.concatStrings [
            "[](fg:red)"
            "[$os$username](bg:red fg:crust)"
            "[](fg:red bg:peach)"
            "[$directory](bg:peach fg:crust)"
            "[](fg:peach bg:yellow)"
            "[$git_branch](bg:yellow fg:crust)"
            "[](fg:yellow bg:green)"
            "[$bun$nodejs](bg:green fg:crust)"
            "[](fg:green bg:sapphire)"
            "[$docker_context](bg:sapphire fg:crust)"
            "[](fg:sapphire bg:lavender)"
            "[$cmd_duration](bg:lavender fg:crust)"
            "[](fg:lavender)"
            "$status"
            "$character"
          ];

          right_format = "";

          os = {
            disabled = false;
            format = "$symbol";
          };

          os.symbols = {
            Macos = "󰀵";
          };

          username = {
            disabled = false;
            show_always = true;
            format = "( $user )";
          };

          directory = {
            format = "( $path( $read_only) )";
            truncation_length = 3;
            truncation_symbol = "…/";
            read_only = "󰌾";
          };

          git_branch = {
            disabled = false;
            symbol = "";
            format = "( $symbol $branch(:$remote_branch) )";
          };

          bun = {
            disabled = false;
            format = "( $symbol( $version) )";
          };

          nodejs = {
            disabled = false;
            symbol = "";
            format = "( $symbol( $version) )";
          };

          docker_context = {
            disabled = false;
            symbol = "";
            format = "( $symbol( $context) )";
            only_with_files = true;
            detect_files = [
              "Dockerfile"
              "compose.yaml"
              "compose.yml"
              "docker-compose.yaml"
              "docker-compose.yml"
              ".devcontainer.json"
              "devcontainer.json"
            ];
            detect_folders = [
              ".devcontainer"
            ];
          };

          cmd_duration = {
            disabled = false;
            min_time = 1000;
            show_milliseconds = false;
            format = "( took $duration )";
          };

          status = {
            disabled = false;
            failure_style = "fg:red";
            format = "( [\\(exit $status\\)]($style))";
          };

          character = {
            disabled = false;
            success_symbol = "[>](bold fg:green)";
            error_symbol = "[>](bold fg:green)";
            vimcmd_symbol = "[<](bold fg:green)";
            vimcmd_replace_one_symbol = "[<](bold fg:lavender)";
            vimcmd_replace_symbol = "[<](bold fg:lavender)";
            vimcmd_visual_symbol = "[<](bold fg:yellow)";
            format = "\n$symbol ";
          };

          aws.disabled = true;
          azure.disabled = true;
          battery.disabled = true;
          buf.disabled = true;
          # bun.disabled = true;
          c.disabled = true;
          # character.disabled = true;
          cmake.disabled = true;
          # cmd_duration.disabled = true;
          cobol.disabled = true;
          conda.disabled = true;
          container.disabled = true;
          cpp.disabled = true;
          crystal.disabled = true;
          daml.disabled = true;
          dart.disabled = true;
          deno.disabled = true;
          direnv.disabled = true;
          # docker_context.disabled = true;
          dotnet.disabled = true;
          elixir.disabled = true;
          elm.disabled = true;
          erlang.disabled = true;
          fennel.disabled = true;
          fill.disabled = true;
          fossil_branch.disabled = true;
          fossil_metrics.disabled = true;
          gcloud.disabled = true;
          # git_branch.disabled = true;
          git_commit.disabled = true;
          git_metrics.disabled = true;
          git_state.disabled = true;
          git_status.disabled = true;
          gleam.disabled = true;
          golang.disabled = true;
          gradle.disabled = true;
          guix_shell.disabled = true;
          haskell.disabled = true;
          haxe.disabled = true;
          helm.disabled = true;
          hg_branch.disabled = true;
          hostname.disabled = true;
          java.disabled = true;
          jobs.disabled = true;
          julia.disabled = true;
          kotlin.disabled = true;
          kubernetes.disabled = true;
          line_break.disabled = true;
          localip.disabled = true;
          lua.disabled = true;
          memory_usage.disabled = true;
          meson.disabled = true;
          mise.disabled = true;
          mojo.disabled = true;
          nats.disabled = true;
          netns.disabled = true;
          nim.disabled = true;
          nix_shell.disabled = true;
          # nodejs.disabled = true;
          ocaml.disabled = true;
          odin.disabled = true;
          opa.disabled = true;
          openstack.disabled = true;
          # os.disabled = true;
          package.disabled = true;
          perl.disabled = true;
          php.disabled = true;
          pijul_channel.disabled = true;
          pixi.disabled = true;
          pulumi.disabled = true;
          purescript.disabled = true;
          python.disabled = true;
          quarto.disabled = true;
          raku.disabled = true;
          red.disabled = true;
          rlang.disabled = true;
          ruby.disabled = true;
          rust.disabled = true;
          scala.disabled = true;
          shell.disabled = true;
          shlvl.disabled = true;
          singularity.disabled = true;
          solidity.disabled = true;
          spack.disabled = true;
          # status.disabled = true;
          sudo.disabled = true;
          swift.disabled = true;
          terraform.disabled = true;
          time.disabled = true;
          typst.disabled = true;
          # username.disabled = true;
          vagrant.disabled = true;
          vcsh.disabled = true;
          vlang.disabled = true;
          zig.disabled = true;
        };
      };
    };
}

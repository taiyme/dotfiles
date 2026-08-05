{
  flake.modules.homeManager.editor =
    { ... }:
    {
      programs.vscode = {
        enable = true;

        profiles.default = {
          enableUpdateCheck = false;
          enableExtensionUpdateCheck = false;
          userSettings = {
            "chat.agent.enabled" = false;
            "chat.commandCenter.enabled" = false;
            "chat.disableAIFeatures" = true;
            "diffEditor.ignoreTrimWhitespace" = false;
            "editor.detectIndentation" = false;
            "editor.fontFamily" = "HackGen, Hackgen Console NF";
            "editor.fontLigatures" = false;
            "editor.fontSize" = 14;
            "editor.minimap.showSlider" = "always";
            "editor.renderLineHighlight" = "all";
            "editor.renderWhitespace" = "all";
            "editor.tabSize" = 2;
            "editor.wordSegmenterLocales" = [ "ja-JP" ];
            "emmet.variables" = {
              charset = "utf-8";
              lang = "ja";
            };
            "explorer.compactFolders" = false;
            "files.associations" = {
              copying = "plaintext";
              copyright = "plaintext";
              license = "plaintext";
            };
            "files.insertFinalNewline" = true;
            "github.copilot.enable" = {
              "*" = false;
              markdown = false;
              plaintext = false;
              scminput = false;
            };
            "inlineChat.lineNaturalLanguageHint" = false;
            "search.showLineNumbers" = true;
            "telemetry.feedback.enabled" = false;
            "terminal.integrated.allowChords" = false;
            "terminal.integrated.cursorBlinking" = true;
            "terminal.integrated.cursorStyle" = "line";
            "terminal.integrated.fontFamily" = "HackGen Console NF";
            "terminal.integrated.persistentSessionReviveProcess" = "never";
            "terminal.integrated.shellIntegration.decorationsEnabled" = "never";
            "terminal.integrated.shellIntegration.enabled" = false;
            "workbench.activityBar.iconClickBehavior" = "focus";
            "workbench.activityBar.location" = "top";
            "workbench.colorTheme" = "Dark Modern";
            "workbench.editor.closeOnFileDelete" = true;
            "workbench.editor.empty.hint" = "hidden";
            "workbench.editor.pinnedTabsOnSeparateRow" = true;
            "workbench.editor.showTabs" = "multiple";
            "workbench.iconTheme" = "material-icon-theme";
            "workbench.secondarySideBar.defaultVisibility" = "hidden";
            "workbench.settings.showAISearchToggle" = false;
            "workbench.view.alwaysShowHeaderActions" = true;
            "docker.extension.dockerEngineAvailabilityPrompt" = false;
            "docker.extension.enableComposeLanguageServer" = false;
            "gitlens.codeLens.enabled" = false;
            "gitlens.views.scm.grouped.hiddenViews" = {
              contributors = true;
              repositories = true;
              worktrees = true;
            };
            "js/ts.updateImportsOnFileMove.enabled" = "never";
            "redhat.telemetry.enabled" = false;
            "vue.updateImportsOnFileMove.enabled" = false;
            "json.schemaDownload.trustedDomains" =
              let
                trustedDomains = [
                  "https://schemastore.azurewebsites.net/"
                  "https://raw.githubusercontent.com/microsoft/vscode/"
                  "https://raw.githubusercontent.com/devcontainers/spec/"
                  "https://www.schemastore.org/"
                  "https://json.schemastore.org/"
                  "https://json-schema.org/"
                  "https://developer.microsoft.com/json-schemas/"
                  "https://raw.githubusercontent.com/DavidAnson/markdownlint/"
                ];
              in
              builtins.listToAttrs (
                map (name: {
                  inherit name;
                  value = true;
                }) trustedDomains
              );
          };
        };
      };
    };
}

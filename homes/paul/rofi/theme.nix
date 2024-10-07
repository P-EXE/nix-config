{ config, ... }:

{
  programs.rofi.theme = with config.colorScheme.palette; let 
    inherit (config.lib.formats.rasi) mkLiteral;
  in {
    "configuration" = {
      modi = "drun,filebrowser,window,run";
      show-icons = true;
      display-drun = "";
      display-run = "";
      display-filebrowser = "";
      display-window = "";
      drun-display-format = "{name}";
      window-format = "{w}{t}";
      font = "JetBrainsMono Nerd Font 10";
      icon-theme = "Tela-circle-dracula";
    };

    "window" = {
      fullscreen = false;
      height = mkLiteral "50%";
      width = mkLiteral "25%";
      border = mkLiteral "1px solid";
      border-radius = mkLiteral "2px";
      border-color = mkLiteral "#${base0B}";
      padding = mkLiteral "0.5em";
      background-color = mkLiteral "#${base00}";
    };
    "mainbox" = {
      enabled = true;
      background-color = mkLiteral "transparent";
      orientation = mkLiteral "horizontal";
      children = [ "mode-switcher" "dummywall"];
    };
    "dummywall" = {
      background-color = mkLiteral "transparent";
      children = [ "inputbar" "listbox" ];
    };

    "mode-switcher" = {
      margin = mkLiteral "0.5em";
      width = mkLiteral "4em";
      orientation = mkLiteral "vertical";
      background-color = mkLiteral "transparent";
    };
    "button" = {
      width = mkLiteral "1em";
      height = mkLiteral "1em";
      text-color = mkLiteral "#${base04}";
      background-color = mkLiteral "transparent";
    };
    "button selected" = {
      text-color = mkLiteral "#${base05}";
      background-color = mkLiteral "transparent";
    };

    "inputbar" = {
      enabled = true;
      margin = mkLiteral "0.5em";
      background-color = mkLiteral "transparent";
      children = [ "entry" ];
    };
    "entry" = {
      enabled = true;
      border-radius = mkLiteral "2px";
      padding = mkLiteral "0.5em";
      background-color = mkLiteral "#${base01}";
      text-color = mkLiteral "#${base05}";
    };

    "listbox" = {
      margin = mkLiteral "0.5em";
      background-color = mkLiteral "#${base00}";
      children = [ "listview" ];
    };
    "listview" = {
      enabled = true;
      
      columns = 1;
      lines = 8;
      cycle = false;
      dynamic = true;
      scrollbar = false;
      layout = mkLiteral "vertical";
      reverse = false;
      expand = true;
      fixed-height = false;
      fixed-columns = true;

      background-color = mkLiteral "transparent";
    };
    "element" = {
      border-radius = mkLiteral "2px";
      padding = mkLiteral "0.25em";
      background-color = mkLiteral "transparent";
    };
    "element-icon" = {
      margin = mkLiteral "0.25em";
      background-color = mkLiteral "transparent";
    };
    "element-text" = {
      margin = mkLiteral "0.25em";
      text-color = mkLiteral "#${base05}";
      background-color = mkLiteral "transparent";
    };
    "element selected.normal" = {
      text-color = mkLiteral "#${base05}";
      background-color = mkLiteral "#${base01}";
    };
  };
}
{ config, ... }:

{
  programs.waybar.enable = true;

  programs.waybar.settings.mainBar = {
    name = "left";
    layer = "top";
    position = "left";

    modules-left = [ "wlr/taskbar" ];
    modules-center = [ "hyprland/workspaces" ];
    modules-right = [ "tray" "hyprland/language" "memory" "cpu" "pulseaudio" "battery" "clock" ];
    
    tray = {
      spacing = 10;
    };

     "hyprland/language" = {
        format = "{}";
        format-de = "DE";
        format-en = "US";
      }; 
  };

  programs.waybar.style = with config.colorScheme.palette; ''
  * {
    font-family: "JetBrainsMono Nerd Font";
    font-size: 12px;
    font-weight: 600;
    color: #${base05};
  }

  #taskbar button {
    margin: 2px;
    border: solid 1px #${base01};
    border-radius: 2px;
    padding: 4px;
    background: #${base00};
  }

  #taskbar button.active {
    border: solid 1px #${base0B};
  }
  
  #workspaces button {
    margin: 2px;
    border: solid 1px #${base01};
    border-radius: 2px;
    padding: 4px;
    background: #${base00};
  }

  #workspaces button.active {
    border: solid 1px #${base0B};
  }

  window#waybar {
    background: none;
  }
  
  window#waybar>box {
    padding: 6px 0px 6px 6px;
  }

  #tray, #language, #memory, #cpu, #network, #pulseaudio, #battery, #clock {
    margin: 2px;
    border: solid 1px #${base01};
    border-radius: 2px;
    padding: 4px;
    background: #${base00};
  }
  '';

}

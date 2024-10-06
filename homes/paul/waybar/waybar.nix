{ config, ... }:

{
  programs.waybar.enable = true;

  programs.waybar.settings.mainBar = {
    name = "left";
    layer = "top";
    position = "left";

    modules-left = [ "wlr/taskbar" ];
    modules-center = [ "hyprland/workspaces" ];
    modules-right = [ "tray" "disk" "memory" "cpu" "network" "pulseaudio" "clock" ];
    
    tray = {
      spacing = 10;
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

  #tray, #disk, #memory, #cpu, #network, #pulseaudio, #clock {
    margin: 2px;
    border: solid 1px #${base01};
    border-radius: 2px;
    padding: 4px;
    background: #${base00};
  }
  '';

}

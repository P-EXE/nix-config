{ config, ... }:

{
  wayland.windowManager.hyprland.settings.general = with config.colorScheme.palette; {
    gaps_in = 4;
    gaps_out = 8;
    border_size = 1;
    layout = "dwindle";

    "col.active_border" = "rgb(${base0B}) rgb(${base0B}) 45deg";
    "col.inactive_border" = "rgb(${base01}) rgb(${base01}) 45deg";
  };

  wayland.windowManager.hyprland.settings.decoration = {
    rounding = 2;
    drop_shadow = false;
    blur = {
        enabled = true;
        size = 32;
        passes = 3;
        new_optimizations = true;
        ignore_opacity = true;
        xray = false;
    };
  };

  wayland.windowManager.hyprland.settings.windowrulev2 = [
    #"opacity 0.80 0.60,class:^(.*)$"
    #"opacity 1.00 1.00,class:^(firefox)$"
    #"opacity 1.00 1.00,class:^(chromium-browser)$"
  ];
  
  wayland.windowManager.hyprland.settings.layerrule = [
    "blur,rofi"
    "blur,notifications"
  ];

  wayland.windowManager.hyprland.settings.animations.enabled = false;
}

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
    rounding = 1;
  };

  wayland.windowManager.hyprland.settings.animations.enabled = false;
}

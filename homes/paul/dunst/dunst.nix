{ ... }:

{
  services.dunst.enable = true;

  services.dunst.settings.global = {
    monitor = 0;
    follow  = "none";
    width = 300;
    height = 300;
    offset = "30x50";
    origin = "top-right";
    transparency = 10;
    frame_color = "#eceff1";
    font = "Droid Sans 9";
  };
}

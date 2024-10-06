{ ... }:

{
  services.hyprpaper.enable = true;

  services.hyprpaper.settings = {
    ipc = "on";
    splash = false;
    splash_offset = 2.0;
    
    preload = [ 
      "~/nixos-config/homes/paul/Wallpapers/nierautomata-amusementpark.jpeg"
    ];
    wallpaper = [
      ",~/nixos-config/homes/paul/Wallpapers/nierautomata-amusementpark.jpeg"
    ];
  };
}

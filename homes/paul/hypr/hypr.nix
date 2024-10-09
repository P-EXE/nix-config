{ ... }:
{

  imports = [
    ./monitors.nix
    ./workspaces.nix
    ./hyprpaper.nix
    ./theme.nix
    ./keybinds.nix
    ./startup.nix
    ./portal.nix
    ./polkit.nix
  ];

  wayland.windowManager.hyprland.enable = true;
}

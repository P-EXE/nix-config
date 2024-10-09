{ pkgs, ... }:

{
  xdg.portal.enable = true;
  xdg.portal.xdgOpenUsePortal = true;
  xdg.portal.config.common.default = [ 
    "hyprland"
#    "gtk"
  ];
  xdg.portal.configPackages = [
    pkgs.xdg-desktop-portal-hyprland
#    pkgs.xdg-desktop-portal-gtk
  ];
}

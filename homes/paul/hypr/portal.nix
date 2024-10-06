{ pkgs, ... }:

{
  xdg.portal.enable = true;
  xdg.portal.xdgOpenUsePortal = true;
  xdg.portal.config.common.default = [ "gtk" "hypr" ];
  xdg.portal.extraPortals = [
    pkgs.xdg-desktop-portal-gtk
    pkgs.xdg-desktop-portal-hyprland
  ];
}

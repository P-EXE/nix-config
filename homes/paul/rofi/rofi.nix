{ pkgs, ... }:

{

  imports = [
    ./theme.nix
  ];

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}

{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    ./hypr/hypr.nix
    ./rofi/rofi.nix
    ./waybar/waybar.nix
    ./eww/eww.nix
    ./dunst/dunst.nix
    ./kitty/kitty.nix
    ./git/git.nix
    ./programs.nix
  ];

  home.username = "paul";
  home.homeDirectory = "/home/paul";

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };

  #colorScheme = inputs.nix-colors.colorSchemes.dracula;
  colorScheme = inputs.nix-colors.lib.schemeFromYAML "Monokai (Filter: Spectrum)" (builtins.readFile ./colors/monokai-spectrum.yaml);
  
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}

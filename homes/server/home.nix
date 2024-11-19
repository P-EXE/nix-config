{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
  ];

  home.username = "server";
  home.homeDirectory = "/home/server";

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = (_: true);
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
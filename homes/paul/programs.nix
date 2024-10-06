{ pkgs, ... }:

{
  home.packages = [

    # Essentials
    pkgs.nerdfonts
    pkgs.htop

    # Tools
    pkgs.lf
    pkgs.kdePackages.ark
    pkgs.xfce.thunar

    # Toys
    pkgs.neofetch
    pkgs.cbonsai
    
    # Desktop
    pkgs.chromium
    pkgs.spotify
    pkgs.discord
    pkgs.steam
    
    # Code
    pkgs.jetbrains.rider
    pkgs.jetbrains.rust-rover

  ];

  # Code
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
    ];
  };

}

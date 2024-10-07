{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # Essentials
    nerdfonts
    htop

    # Tools
    lf
    kdePackages.ark
    xfce.thunar
    wineWowPackages.waylandFull
    winetricks

    # Toys
    neofetch
    cbonsai
    
    # Desktop
    chromium
    spotify
    discord
    steam
    
    # Code
    jetbrains.rider
    jetbrains.rust-rover
    jetbrains.clion
    neovim
    neovim-qt

  ];

  # Code
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
    ];
  };

}

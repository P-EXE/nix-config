{ pkgs, ... }:

{

  imports = [
    ./dev-env/dotnet.nix
  ];

  home.packages = with pkgs; [

    # Essentials
    nerdfonts
    htop
    nvtop
    dconf

    # Tools
    lf
    kdePackages.ark
    xfce.thunar
    wineWowPackages.waylandFull
    winetricks
    pandoc

    # Toys
    swww
    waypaper
    neofetch
    cbonsai
    
    # Desktop
    chromium
    spotify
    discord
    steam
    
    # Code
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
